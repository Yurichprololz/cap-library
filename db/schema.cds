namespace my.library;

using {

       // Currency,
       managed} from '@sap/cds/common';
using {masterdata} from './master-data';
using {
    sap.common.CodeList,
    Currency
} from './common';

entity Booking : managed {
    key bookingUUID   : UUID;
        readerID      : Association to Readers;
        bookID        : Association to Books;
        bookingStatus : Association to masterdata.Statuses;
        bookingID     : Integer;
        beginDate     : Date;
        beginTime     : Time;
        endDate       : Date;
        endTime       : Time;
        image         : LargeBinary @Core.MediaType : 'image/png';
}

entity Authors : managed {
    key authorUUID : UUID;
        book       : Association to many Books
                         on book.author = $self;
        authorID   : Integer;
        firstName  : String(15);
        lastName   : String(15);
        birthday   : Date;
        country    : String(30);
        image      : LargeBinary @Core.MediaType : 'image/png';
};

entity Books : managed {
    key bookUUID     : UUID;
        author       : Association to Authors;
        Status       : Association to masterdata.BookStatuses;
        bookID       : Integer;
        bookName     : String(60);
        CurrencyCode : Currency;
        pageNumber   : Integer;
        copyQty      : Integer;
        shippedQty   : Integer;
        price        : Decimal(15, 2);
        image        : LargeBinary @Core.MediaType : 'image/png';
}

entity Readers : managed {
    key readerUUID    : UUID;
        readerID      : Integer;
        firstName     : String(15);
        lastName      : String(15);
        readerBithday : Date;
        phonenumber   : String(15);
        image         : LargeBinary @Core.MediaType : 'image/png';
}


// entity Authors {
//     key ID         : UUID;
//         firstName  : String;
//         secondName : String;
//         birthDate  : Date;
//         country    : String;
//         book       : Association to many Books
//                          on book.author = $self;
// }

// entity Books {
//     key bookUUID   : UUID;
//         bookName   : String;
//         author     : Association to Authors;
//         pageNumber : Integer;
//         copyQty    : Integer;
//         shippedQty : Integer;
//         status     : Association to Status;
//         price      : Decimal(15, 2);
//         currency   : Currency;
// }

// entity Booking {
//     key ID               : UUID;
//         bookID           : Association to Books;
//         personID         : Association to Readers;
//         bookingStatus    : String;
//         bookingStartDate : Date;
//         bookingStartTime : Time;
//         bookingEndDate   : Date;
//         bookingEndTime   : Time;
// }

// entity Readers {
//     key ID          : UUID;
//         birthDate   : Date;
//         PhoneNumber : Integer;
// }

// entity Status {
//     key ID     : String;
//         name   : String;
//         bookID : Association to many Books
//                      on bookID.status = $self;
// }
