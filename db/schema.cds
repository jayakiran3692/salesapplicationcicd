namespace sales.ust;
using { cuid, managed } from '@sap/cds/common';

@(restrict: [
     { grant: ['READ'], to: 'Admin' },
     { grant: ['*'], to: 'Viewer' }
  ])

entity SalesOrderApproval: cuid, managed {
    @mandatory
    @Common.Label : 'Sales Order'
    SalesOrder : String(10);
    @mandatory
    @Common.Label : 'Sales Organization'
    SalesOrganization  :String(10);

    @mandatory
    @Comman.Label : 'Distrbution Channel'
    DistributionChannel : String(2);

    @Common.Label : 'Organizational Division'
    OrganizationalDivision : String(2);

    @assert.range: [ 1, 1000000]
    @Common.Label : 'Net Amount'
    NetAmount : Decimal(13,2);

    @assert.enum: ['NEW', 'APPROVED', 'REJECTED']
    Status : String(10) default 'NEW';

    Items : Composition of many SalesOrderItem
            on Items.parent = $self;
}


entity SalesOrderItem : cuid, managed {

  parent : Association to SalesOrderApproval;

  @mandatory
  Material : String(40);

  @assert.range: [1, 10000]
  Quantity : Integer;

  NetPrice : Decimal(13,2);
}