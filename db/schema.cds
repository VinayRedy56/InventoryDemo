namespace inventory.db;

entity InvHeader {
    key ID : Integer;
        Descr : String(100);
        Items : Composition of many InvItems on Items.Order = $self;
}

entity InvItems {
    key Id : String(6);
    key Order : Association to one InvHeader;
        Material:String(40);
}



