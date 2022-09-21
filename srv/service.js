const cpi = require('./cpi');
const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {

    this.on('orderBook', 'Books', cpi.orderBook);

})
