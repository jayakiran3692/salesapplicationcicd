sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'salesappl.salesapplication',
            componentId: 'SalesOrderItemObjectPage',
            contextPath: '/SalesOrderApproval/Items'
        },
        CustomPageDefinitions
    );
});