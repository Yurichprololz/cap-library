using LibraryService from '../../srv/service';

annotate LibraryService.Authors with {
    authorID  @readonly;
    firstName @mandatory;
    lastName  @mandatory;
};