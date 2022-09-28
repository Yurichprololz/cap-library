using LibraryService from '../../srv/service';

annotate LibraryService.Booking with {
    bookingID     @readonly;
    readerID      @mandatory;
    bookID        @mandatory;
    bookingStatus @readonly;
    beginDate     @readonly;
    beginTime     @readonly;
    endDate       @readonly;
    endTime       @readonly;
};