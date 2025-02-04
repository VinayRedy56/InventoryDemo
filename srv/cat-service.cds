using { inventory.db as db } from '../db/schema';
 
service MyService {
    entity InvHeader as projection on db.InvHeader;
    entity InvItems as projection on db.InvItems;
    
}

annotate MyService.InvHeader with @(
    UI.HeaderInfo :{
        TypeName:'',
        TypeNamePlural:'',
        Title:{Value:Status}
    },
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label : 'Material',
            Value : Materal,
            
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : Descr,
        },
          {
            $Type : 'UI.DataField',
            Label : 'Serial Number',
            Value : SerialNumber,
            
        },
          {
            $Type : 'UI.DataField',
            Label : 'Quantity',
            Value : Quantity,
            
        },
        {
            $Type : 'UI.DataField',
            Label : 'UoM',
            Value : UoM,
            
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last Modified Date',
            Value : LastModified,
        },
          {
            $Type : 'UI.DataField',
            Label : 'Expiration Date',
            Value : ExpDate,
            
        },
        {
            $Type : 'UI.DataField',
            Label : 'Tracking Details',
            Value : TrackingDetails,
        },
          {
            $Type : 'UI.DataField',
            Label : 'Customer',
            Value : Customer,
            
        },
         {
            $Type : 'UI.DataField',
            Label : 'Order Number',
            Value : OrderNumber,
        },
          {
            $Type : 'UI.DataField',
            Label : 'Status',
            Value : Status,
            
        }
           
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Items',
            ID    : 'Items',
            Target: 'Items/@UI.LineItem#Items1',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Product Name',
            Value : Materal,
            
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : Descr,
        },
          {
            $Type : 'UI.DataField',
            Label : 'Quantity',
            Value : Quantity,
            
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last Modified Date',
            Value : LastModified,
        },
          {
            $Type : 'UI.DataField',
            Label : 'Expiration Date',
            Value : ExpDate,
            
        },
        {
            $Type : 'UI.DataField',
            Label : 'Tracking Details',
            Value : TrackingDetails,
        },
          {
            $Type : 'UI.DataField',
            Label : 'Customer',
            Value : Customer,
            
        }
    ],
);

annotate MyService.InvHeader with @(
    UI.SelectionVariant #SelVarSO: {
        $Type        : 'UI.SelectionVariantType',
        Text         : 'All',
        SelectOptions: [{
            $Type       : 'UI.SelectOptionType',
            PropertyName: StatusCode,
            Ranges      : [{
                $Type : 'UI.SelectionRangeType',
                Sign  : #I,
                Option: #NE,
                Low   : '03'
            }]
        }]
    },   UI.SelectionVariant #SelVarRO: {
        $Type        : 'UI.SelectionVariantType',
        Text         : 'In-Transit',
        SelectOptions: [{
            $Type       : 'UI.SelectOptionType',
            PropertyName: StatusCode,
            Ranges      : [{
                $Type : 'UI.SelectionRangeType',
                Sign  : #I,
                Option: #EQ,
                Low   : '02'
            }]
        }]
    }
 
);

annotate MyService.InvItems with @(
   
    UI.LineItem #Items1: [
    {
        $Type: 'UI.DataField',
        Value: Id,
        Label: 'ID',
    },
    {
        $Type: 'UI.DataField',
        Value: Material,
        Label: 'Product',
    }],
   
    UI.FieldGroup #FieldGroup1 :{
        $Type : 'UI.FieldGroupType',
        Data :[{
            $Type : 'UI.DataField',
            Value : Id,
            Label : 'ID'
        },
        {
            $Type : 'UI.DataField',
            Value : Material,
            Label : 'Product'
        }]
    },
     UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#FieldGroup1',
        }
    ]
    );
 

 

 

 

 