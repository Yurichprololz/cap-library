using LibraryService as service from '../../srv/service';

annotate service.Readers with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'birthDate',
            Value : birthDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PhoneNumber',
            Value : PhoneNumber,
        },
    ]
);
annotate service.Readers with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'birthDate',
                Value : birthDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PhoneNumber',
                Value : PhoneNumber,
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
