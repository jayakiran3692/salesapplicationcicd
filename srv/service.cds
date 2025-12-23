using { sales.ust as so } from '../db/schema';
using {Northwind} from './external/northwind';

@path:'/approval'

  @(restrict: [
     { grant: ['READ'], to: 'Admin' },
     { grant: ['*'], to: 'Viewer' }
   ])

service SalesService  { 
    @odata.draft.enabled
    entity SalesOrderApproval as projection on so.SalesOrderApproval;

    entity NorthwindProducts as projection on Northwind.Products;
}