using LibraryService as service from '../../srv/service';

annotate service.Books with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'bookName',
            Value : bookName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'pageNum',
            Value : pageNum,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CopyQty',
            Value : CopyQty,
        },
    ]
);
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'bookName',
                Value : bookName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'pageNum',
                Value : pageNum,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CopyQty',
                Value : CopyQty,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
