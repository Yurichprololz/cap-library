using LibraryService as service from '../../srv/service';

annotate service.Booking with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'booking status',
            Value : bookingStatus,
        },
        {
            $Type : 'UI.DataField',
            Label : 'booking start date',
            Value : bookingStartDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'booking start time',
            Value : bookingStartTime,
        },
        {
            $Type : 'UI.DataField',
            Label : 'booking end date',
            Value : bookingEndDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'booking end time',
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
                Label : 'booking status',
                Value : bookingStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'booking start date',
                Value : bookingStartDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'booking start time',
                Value : bookingStartTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'booking end date',
                Value : bookingEndDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'booking end time',
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
