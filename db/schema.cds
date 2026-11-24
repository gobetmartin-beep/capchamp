namespace sap.cap.productshop;

aspect carbonemission {
    emission: Integer;
    rating: String;
}

aspect id {
    key ID : UUID;
}

type pricecost {
    price: Integer;
    stock: Integer;
}

entity Product : id,carbonemission
{
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
