const cds = require('@sap/cds');
const constants = require('./constants');

module.exports = {
    orderBook: orderBook
}


const { Books, Authors } = cds.entities('my.library')


async function orderBook(req) {
    try {
        const { bookUUID } = req.params[0];
        const quantity = req.data.Quantity;
        console.log('quantity ' +  quantity)
        const orderInfo = await SELECT.from(Books).where({ bookUUID: bookUUID });
        if (quantity > 0) {
            const authorInfo = await SELECT.from(Authors).where({ ID: orderInfo[0].author_ID });
            const payload = JSON.stringify({
                bookUUID: orderInfo[0].bookUUID,
                authorUUID: orderInfo[0].author_ID,
                authorfirstName: authorInfo[0].firstName,
                authorlastName: authorInfo[0].secondName,
                bookName: orderInfo[0].bookName,
                quantity: quantity,
                price: orderInfo[0].price,
                CurrencyCode_code: orderInfo[0].currency_code,
                status_ID: "1"
            });
            const cpi = await cds.connect.to('CPIDestination');
            
            const b = await cpi.tx(req).post('/book', payload);
            console.log('first req ' + b)
            await cpi.tx(req).post('/order', payload);
            await UPDATE(Books, { bookUUID: bookUUID }).with({ status_ID: "1" });
        } else return req.error(400, constants.genericErrors.quantityNotApplicable);
    }
    catch (error) {
        console.log("Dispatch to CPI was not successful. Rejected with error: ", error)
    }
}
