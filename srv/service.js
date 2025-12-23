const cds = require('@sap/cds');

module.exports = cds.service.impl(async function (srv) {

    const { SalesOrderApproval } = srv.entities;
    const northwind = await cds.connect.to('Northwind')


    srv.before('CREATE', SalesOrderApproval, (req) => {
        req.data.Status = 'NEW';
    });

    srv.before('DELETE', SalesOrderApproval, async (req) => {
        const exists = await SELECT.one.from(SalesOrderApproval).where(req.data);
        if (!exists) {
            req.error(404, 'Record not found');
        }
    });

    srv.on('READ', 'NorthwindProducts', async () => {
        return northwind.run(
        SELECT.from('Products').columns('ProductID', 'ProductName', 'UnitPrice')
    );
  });

})

