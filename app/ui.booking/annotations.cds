using LibraryService as service from '../../srv/service';

annotate service.Booking with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'bookingStatus',
            Value : bookingStatus,
        },
        {
            $Type : 'UI.DataField',
            Label : 'bookingStartDate',
            Value : bookingStartDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'bookingStartTime',
            Value : bookingStartTime,
        },
        {
            $Type : 'UI.DataField',
            Label : 'bookingEndDate',
            Value : bookingEndDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'bookingEndTime',
            Value : bookingEndTime,
        },
    ]
);
annotate service.Booking with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'bookingStatus',
                Value : bookingStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'bookingStartDate',
                Value : bookingStartDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'bookingStartTime',
                Value : bookingStartTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'bookingEndDate',
                Value : bookingEndDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'bookingEndTime',
                Value : bookingEndTime,
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
