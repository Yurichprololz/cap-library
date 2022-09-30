using LibraryService as service from '../../srv/service';

annotate service.Books with @(
    UI        : {
        SelectionFields     : [author_authorUUID],
        Identification      : [{Value : bookUUID}, { $Type : 'UI.DataFieldForAction', Action : 'LibraryService.orderBook', Label : '{i18n>orderBook}'}],
        LineItem            : [
            {
                $Type             : 'UI.DataField',
                Value             : bookID,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : status_ID,
                Criticality       : status.criticality,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : bookName,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : author.firstName,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : author.lastName,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : pageNumber,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : copyQty,
                ![@UI.Importance] : #High
            },
            {
                $Type             : 'UI.DataField',
                Value             : price,
                ![@UI.Importance] : #High
            }
        ],
        PresentationVariant : {SortOrder : [{
            $Type      : 'Common.SortOrderType',
            Property   : bookID,
            Descending : false
        }]},
    },
    UI        : {
        HeaderInfo                     : {
            TypeName       : 'Book',
            TypeNamePlural : 'Books',
            Title          : {Value : bookName},
            Description    : {Value : author.lastName}
        },
        HeaderFacets                   : [{
            $Type             : 'UI.ReferenceFacet',
            Target            : '@UI.FieldGroup#Description',
            ![@UI.Importance] : #High
        }],
        FieldGroup #Description        : {Data : [
            {
                $Type : 'UI.DataField',
                Value : image
            },
            {
                $Type : 'UI.DataField',
                Value : copyQty
            },
            {
                $Type : 'UI.DataField',
                Value : pageNumber
            },
        ]},
        FieldGroup #Details            : {Data : [
            {
                $Type : 'UI.DataField',
                Value : bookID
            },
            {
                $Type       : 'UI.DataField',
                Value       : status_ID,
                Criticality : status.criticality
            },
            {
                $Type : 'UI.DataField',
                Value : bookName
            },
            {
                $Type : 'UI.DataField',
                Value : author_authorUUID
            },
            {
                $Type : 'UI.DataField',
                Value : pageNumber
            },
            {
                $Type : 'UI.DataField',
                Value : copyQty
            },
            {
                $Type : 'UI.DataField',
                Value : price
            }
        ]},
        FieldGroup #AdministrativeData : {Data : [
            {
                $Type : 'UI.DataField',
                Value : createdBy
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt
            }
        ]}
    },
    UI.Facets : [
        {
            $Type  : 'UI.CollectionFacet',
            ID     : 'PODetails',
            Label  : '{i18n>readerInfo}',
            Facets : [{
                $Type  : 'UI.ReferenceFacet',
                Label  : '{i18n>readerinfo}',
                Target : '@UI.FieldGroup#Details'
            }]
        },
        {
            $Type  : 'UI.CollectionFacet',
            ID     : 'POAdmininfo',
            Label  : '{i18n>adminInfo}',
            Facets : [{
                $Type  : 'UI.ReferenceFacet',
                Label  : '{i18n>admininfo}',
                Target : '@UI.FieldGroup#AdministrativeData'
            }]
        }
    ]
);
