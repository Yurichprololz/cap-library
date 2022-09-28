using {LibraryService} from '../../srv/service';

annotate LibraryService.Books with @odata.draft.enabled;

annotate LibraryService.Books with @Capabilities : {
    Deletable  : true,
    Insertable : true
};