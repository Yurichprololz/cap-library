using LibraryService from '../../srv/service';

annotate LibraryService.Readers with {
    readerID @readonly;
    firstName @mandatory;
    lastName @mandatory;
};
