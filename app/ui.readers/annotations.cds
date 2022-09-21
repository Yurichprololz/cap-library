using LibraryService as service from '../../srv/service';

annotate service.Readers with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'birth Date',
            Value : birthDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Phone Number',
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
                Label : 'birth date',
                Value : birthDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Phone Number',
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
