namespace my.library;

using {

    Currency,
    managed
} from '@sap/cds/common';

entity Authors {
    key ID         : UUID;
        firstName  : String;
        secondName : String;
        birthDate  : Date;
        country    : String;
        book       : Association to many Books
                         on book.author = $self;
}

entity Books {
    key bookUUID   : UUID;
        bookName   : String;
        author     : Association to Authors;
        pageNumber : Integer;
        copyQty    : Integer;
        shippedQty : Integer;
        status     : Association to Status;
        price      : Decimal(15, 2);
        currency   : Currency;
}

entity Booking {
    key ID               : UUID;
        bookID           : Association to Books;
        personID         : Association to Readers;
        bookingStatus    : String;
        bookingStartDate : Date;
        bookingStartTime : Time;
        bookingEndDate   : Date;
        bookingEndTime   : Time;
}

entity Readers {
    key ID          : UUID;
        birthDate   : Date;
        PhoneNumber : Integer;
}

entity Status {
    key ID     : String;
        name   : String;
        bookID : Association to many Books
                     on bookID.status = $self;
}
