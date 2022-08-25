using my.library as my from '../db/schema';

service LibraryService {

    entity Books   as projection on my.Books;
    entity Authors as projection on my.Authors;
    entity Booking as projection on my.Booking;
    entity Readers as projection on my.Readers;

};

annotate LibraryService.Books with @odata.draft.enabled;
annotate LibraryService.Authors with @odata.draft.enabled;
annotate LibraryService.Booking with @odata.draft.enabled;
annotate LibraryService.Readers with @odata.draft.enabled;
annotate LibraryService.Books with @cds.odata.valuelist;
annotate LibraryService.Authors with @cds.odata.valuelist;
annotate LibraryService.Readers with @cds.odata.valuelist;
