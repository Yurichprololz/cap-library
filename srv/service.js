const cpi = require('./cpi');
const cds = require('@sap/cds');
const constants = require('./constants');

module.exports = cds.service.impl(async function () {

    let { Books, Readers, Authors, Booking } = this.entities;

    this.before('NEW', 'Books', async (req) => {
        const { maxID } = await SELECT.one`max(bookID) as maxID`.from(Books) || 0;
        req.data.bookID = maxID + 1;
        req.data.Status_ID = '0'
    });

    this.before('NEW', 'Readers', async (req) => {
        const { maxID } = await SELECT.one`max(readerID) as maxID`.from(Readers) || 0;
        req.data.readerID = maxID + 1;
    });

    this.before('NEW', 'Authors', async (req) => {
        const { maxID } = await SELECT.one`max(authorID) as maxID`.from(Authors) || 0;
        req.data.authorID = maxID + 1;
    });

    this.before('NEW', 'Booking', async (req) => {
        const { maxID } = await SELECT.one`max(bookingID) as maxID`.from(Booking) || 0;
        req.data.bookingID = maxID + 1;
        req.data.bookingStatus_ID = '2'
    });

    this.before('SAVE', 'Booking', async (req) => {
        const { bookID_bookUUID } = req.data;
        let { copiesBook } = await SELECT.one`copyQty as copiesBook`.from(Books).where({
            bookUUID:
                bookID_bookUUID
        });
        let { takenBooks } = await SELECT.one`count(bookingStatus_ID) as takenBooks`.from(Booking).where(
            { bookId_bookUUID: bookID_bookUUID, bookingStatus_ID: '2' });
        if (copiesBook <= takenBooks) {
            return req.error(400, constants.genericErrors.bookNotAvailable);
        }
    });

    this.after('READ', 'Booking', (each) => {
        if (each.bookingStatus_ID == '2') {
            each.returnTheBookEnabled = true;
        }
    })


    this.before('CREATE', 'Books', async (req) => {
        const book = req.data;
        if (book.pageNumber < 0)
            return req.error(400, constants.genericErrors.wrongPagesInput);
        if (book.copyQty < 0)
            return req.error(400, constants.genericErrors.wrongCopiesInput);
    });

    this.before('CREATE', 'Booking', async (req) => {
        req.data.beginDate = (new Date).toISOString().slice(0, 10);
        req.data.beginTime = (new Date).toISOString().slice(11, 19);
    })



    this.on('returnTheBook', 'Booking', async (req) => {
        const { bookingUUID } = req.params[0];
        return UPDATE(Booking, bookingUUID).with({
            bookingStatus_ID: '1',
            endDate: (new Date).toISOString().slice(0, 10),
            endTime: (new Date).toISOString().slice(11, 19)
        });
    });

    this.on('orderBook', 'Books', cpi.orderBook);

})