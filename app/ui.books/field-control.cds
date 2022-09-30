using LibraryService from '../../srv/service';

annotate LibraryService.Books with {
    bookID       @readonly;
    author       @mandatory;
    bookName     @mandatory;
    copyQty      @mandatory;
    price        @mandatory;
    CurrencyCode @mandatory;
    status       @readonly;
};
