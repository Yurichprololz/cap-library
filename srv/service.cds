using my.library as library from '../db/schema';
using masterdata as masterdata from '../db/master-data';
using sap.common as common from '@sap/cds/common';

service LibraryService {
    entity Booking      as projection on library.Booking;
    entity Books        as projection on library.Books;
    entity Readers      as projection on library.Readers;
    entity Authors      as projection on library.Authors;
    entity Statuses     as projection on masterdata.Statuses;
    entity BookStatuses as projection on masterdata.BookStatuses;
    entity Currencies   as projection on common.Currencies;
}
