namespace sap.cap.productshop;

aspect carbonemission {
    emission: Integer;
    rating: String;
}

type pricecost {
    price: Integer;
    stock: Integer;
}

entity Product : carbonemission
{
    key ID : Integer;
    name : String;
    category : Integer;
    cost: pricecost;
}

entity Supplier
{
    key ID : UUID;
    name : String(100);
    address : String(100);
    phone : String(100);
}
