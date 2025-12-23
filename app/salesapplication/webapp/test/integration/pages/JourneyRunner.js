sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"salesappl/salesapplication/test/integration/pages/SalesOrderApprovalList",
	"salesappl/salesapplication/test/integration/pages/SalesOrderApprovalObjectPage",
	"salesappl/salesapplication/test/integration/pages/SalesOrderItemObjectPage"
], function (JourneyRunner, SalesOrderApprovalList, SalesOrderApprovalObjectPage, SalesOrderItemObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('salesappl/salesapplication') + '/test/flp.html#app-preview',
        pages: {
			onTheSalesOrderApprovalList: SalesOrderApprovalList,
			onTheSalesOrderApprovalObjectPage: SalesOrderApprovalObjectPage,
			onTheSalesOrderItemObjectPage: SalesOrderItemObjectPage
        },
        async: true
    });

    return runner;
});

