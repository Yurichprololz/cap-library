using LibraryService as service from '../../srv/service';

annotate service.Books with @(UI : {LineItem : [
    {
        $Type : 'UI.DataField',
        Label : 'book name',
        Value : bookName,
    },
    {
        $Type : 'UI.DataField',
        Label : 'author name',
        Value : author.firstName,
    },
    {
        $Type : 'UI.DataField',
        Label : 'author surname',
        Value : author.secondName,
    },
    {
        $Type : 'UI.DataField',
        Label : 'price',
        Value : price,

    },

]}) {
    @Measures.ISOCurrency : currency_code
    price;
};


annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'book name',
                Value : bookName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'сopy quantity',
                Value : copyQty,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'author',
                Value : author_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'page number',
                Value : pageNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'shipped Qty',
                Value : shippedQty,
            },
            {
                $Type  : 'UI.DataFieldForAction',
                Action : 'LibraryService.orderBook',
                Label  : '{i18n>orderBook}'
            },


        ],
    },

    UI.Facets                      : [{
        $Type  : 'UI.ReferenceFacet',
        ID     : 'GeneratedFacet1',
        Label  : 'General Information',
        Target : '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);

annotate service.Books with {

    author @(Common : {
        Text            : author.secondName,
        TextArrangement : #TextOnly,
        ValueList       : {
            Label          : 'Authors',
            CollectionPath : 'Authors',
            Parameters     : [
                {
                    $Type             : 'Common.ValueListParameterInOut',
                    LocalDataProperty : author_ID,
                    ValueListProperty : 'ID'
                },
                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'firstName'
                },
                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'secondName'
                },
            ]
        }
    });

}
