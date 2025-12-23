using SalesService as service from '../../srv/service';
annotate service.SalesOrderApproval with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : SalesOrder,
            },
            {
                $Type : 'UI.DataField',
                Value : SalesOrganization,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DistributionChannel',
                Value : DistributionChannel,
            },
            {
                $Type : 'UI.DataField',
                Value : OrganizationalDivision,
            },
            {
                $Type : 'UI.DataField',
                Value : NetAmount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.LineItem',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : SalesOrder,
        },
        {
            $Type : 'UI.DataField',
            Value : SalesOrganization,
        },
        {
            $Type : 'UI.DataField',
            Label : 'DistributionChannel',
            Value : DistributionChannel,
        },
        {
            $Type : 'UI.DataField',
            Value : OrganizationalDivision,
        },
        {
            $Type : 'UI.DataField',
            Value : NetAmount,
        },
    ],
);

annotate service.SalesOrderItem with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Material,
        },
        {
            $Type : 'UI.DataField',
            Value : Quantity,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Net Price',
            Value : NetPrice,
        },
    ]
)