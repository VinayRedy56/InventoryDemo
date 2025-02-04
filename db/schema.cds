namespace inventory.db;

entity InvHeader {
    key ID : Integer;
        Materal:String(10);
        Descr : String(30);
        Quantity:Decimal;
        UoM:String(5);
        LastModified:String(30);
        ExpDate:String(30);
        TrackingDetails:String(10);
        Customer:String(10);
        Status:String(2);
        OrderNumber:String(10);
        StatusCode:String(2);
        SerialNumber:String(10);
        Items : Composition of many InvItems on Items.Order = $self;
}

entity InvItems {
    key Id : String(6);
    key Order : Association to one InvHeader;
        Material:String(40);
}



