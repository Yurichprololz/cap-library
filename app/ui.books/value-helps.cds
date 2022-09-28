using {my.library as library} from '../../db/schema';

annotate library.Books {
  author       @Common.ValueList : {
    CollectionPath  : 'Authors',
    Label           : '',
    Parameters      : [
      {
        $Type             : 'Common.ValueListParameterInOut',
        LocalDataProperty : author_authorUUID,
        ValueListProperty : 'authorUUID'
      },
      {
        $Type             : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty : 'authorID'
      },
      {
        $Type             : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty : 'firstName'
      },
      {
        $Type             : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty : 'lastName'
      },
      {
        $Type             : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty : 'birthday'
      },
      {
        $Type             : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty : 'country'
      }
    ],
    SearchSupported : true
  };

  status       @Common.ValueList : {
    CollectionPath  : 'BookStatuses',
    Label           : '',
    Parameters      : [
      {
        $Type             : 'Common.ValueListParameterInOut',
        LocalDataProperty : Status_ID,
        ValueListProperty : 'ID'
      },
      {
        $Type             : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty : 'name'
      }
    ],
    SearchSupported : true
  };

  CurrencyCode @Common.ValueList : {
    CollectionPath  : 'Currencies',
    Label           : '',
    Parameters      : [
      {
        $Type             : 'Common.ValueListParameterInOut',
        LocalDataProperty : CurrencyCode_code,
        ValueListProperty : 'code'
      },
      {
        $Type             : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty : 'name'
      },
      {
        $Type             : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty : 'descr'
      },
      {
        $Type             : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty : 'symbol'
      },
      {
        $Type             : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty : 'minor'
      }
    ],
    SearchSupported : true
  };
}
