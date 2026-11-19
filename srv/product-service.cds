using { sap.cap.productshop as my } from '../db/schema';

service productshop
{
    entity Product as
        projection on my.Product;

    @cds.redirection.target
    entity Supplier as
        projection on my.Supplier;
}
