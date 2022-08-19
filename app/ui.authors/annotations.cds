using LibraryService as service from '../../srv/service';

annotate service.Authors with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'firstName',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'secondName',
            Value : secondName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'birthDate',
            Value : birthDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'country',
            Value : country,
        },
    ]
);
annotate service.Authors with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'secondName',
                Value : secondName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'birthDate',
                Value : birthDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'country',
                Value : country,
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
