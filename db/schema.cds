namespace my.library;

using { cuid } from '@sap/cds/common';

entity Authors :cuid
{
    firstName: String;
    secondName: String;
    birthDate : Date;
    country : String;
}

entity Books :cuid
{
    bookName : String;
    author : Association to Authors;
    pageNum : Integer;
    CopyQty : Integer;
}

entity Booking :cuid
{
    bookID : Association to one Books;
    personID : Association to one Readers;
    bookingStatus : String;
    bookingStartDate : Date;
    bookingStartTime : Time;
    bookingEndDate : Date;
    bookingEndTime : Time;
}

entity Readers :cuid
{
    birthDate : Date;
    PhoneNumber : Integer;
}

