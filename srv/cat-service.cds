using { inventory.db as db } from '../db/schema';
 
service MyService {
    entity InvHeader as projection on db.InvHeader;
    entity InvItems as projection on db.InvItems;
    
}

annotate MyService.InvHeader with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Id',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Descr',
                Value : Descr,
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
            Label : 'Id',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Descr',
            Value : Descr,
        }
    ],
);

annotate MyService.InvHeader with @(
    UI.SelectionVariant #SelVarSO: {
        $Type        : 'UI.SelectionVariantType',
        Text         : 'Sales Orders',
        SelectOptions: [{
            $Type       : 'UI.SelectOptionType',
            PropertyName: ID,
            Ranges      : [{
                $Type : 'UI.SelectionRangeType',
                Sign  : #I,
                Option: #NE,
                Low   : 0
            }]
        }]
    },   UI.SelectionVariant #SelVarRO: {
        $Type        : 'UI.SelectionVariantType',
        Text         : 'Return Orders',
        SelectOptions: [{
            $Type       : 'UI.SelectOptionType',
            PropertyName: ID,
            Ranges      : [{
                $Type : 'UI.SelectionRangeType',
                Sign  : #I,
                Option: #EQ,
                Low   : 20
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
 

 

 

 

 