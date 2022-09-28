using {my.library as library} from '../../db/schema';

annotate library.Books with @title       : '{i18n>bookTitle}' {
    bookUUID     @UI.Hidden;
    bookID       @title                  : '{i18n>bookID}';
    bookName     @title                  : '{i18n>bookName}';
    author       @title                  : '{i18n>AuthorName}'
                 @Common.Text            : author.lastName
                 @Common.TextArrangement : #TextOnly;
    pageNumber   @title                  : '{i18n>pages}';
    copyQty      @title                  : '{i18n>copies}';
    requestedQty @title                  : '{i18n>requestedQuantity}';
    price        @title                  : '{i18n>price}'
                 @Measures.ISOCurrency   : CurrencyCode_code;
    status       @title                  : '{i18n>bookstatus}'
                 @Common.Text            : Status.name
                 @Common.TextArrangement : #TextFirst;
    CurrencyCode @title                  : '{i18n>currency}'
                 @Common.Text            : CurrencyCode.symbol
                 @Common.TextArrangement : #TextLast;
}
