const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	const { BTPPROMO } = this.entities;
	const service = await cds.connect.to('SapIbp');
	this.on('READ', BTPPROMO, request => {
		return service.tx(request).run(request.query);
	});
});