{
  Unit   : uEstSearchDialogConst
  Datum  : 6-12-2003
  Auteur : Erik Stok
  Doel   : Searchdialog constanten.
}           

unit uEstSearchDialogConst;

interface

uses
  DB;

type
  TSearchComparison = (scLess, scLessEqual, scEqual, scGreater, scGreaterEqual, scNotEqual,
                       scBeginsWith, scNotBeginsWith, scContains, scNotContains, scEndsWith, scNotEndsWith,
                       scLessString, scLessEqualString, scEqualString, scGreaterString, scGreaterEqualString, scNotEqualString,
                       scEmpty, scNotEmpty);

  TSearchComparisons = set of TSearchComparison;

  TSearchComparisonRecord = record
    FieldType         : TFieldType;
    Comparisons       : TSearchComparisons;
    DefaultComparison : TSearchComparison;
  end;

  TSearchOperator = (soAnd, soOr, soAndAll, soOrAll);

  TSearchEmptyOperation = (eoNull, eoEmptyString, eoBoth);

  TSearchStyle = (ssModal, ssNormal, ssMDIChild);

  TSearchCase = (scMixed, scUpper, scLower);

  TArrowAction = (aaField, aaComparison, aaOperator, aaGrid);

const

  REG_SDL_COUNT = 'CriteriaCount';
  REG_SDL_FIELD = 'Field';
  REG_SDL_COMPARISON = 'Comparison';
  REG_SDL_OPERATOR = 'Operator';
  REG_SDL_VALUE = 'Value';
  REG_SDL_VERSION = 'StoreVersion';
  REG_SDL_CUSTOMPRESETS = 'Presets';
  REG_SDL_CUSTOMPRESETCOUNT = 'PresetCount';
  REG_SDL_PRESETNAME = 'Name';
  REG_SDL_PRESETSHORTCUT = 'Shortcut';

  WHERE_TAG = '%WHERE%';

  EMPTYCOMPARISON: array[eoNull..eoBoth] of String =
                     ('%s IS NULL', '%s = ""', '(%s IS NULL) OR (%s = "")');

  NOTEMPTYCOMPARISON: array[eoNull..eoBoth] of String =
                      ('%s IS NOT NULL', '%s <> ""', '(%s IS NOT NULL) OR (%s <> "")');

  SEARCH_COMPARISON: array[scLess..scNotEmpty] of String =
                       ('< %s',
                        '<= %s',
                        '= %s',
                        '> %s',
                        '>= %s',
                        '<> %s',
                        'LIKE "%s%%"',
                        'NOT LIKE "%s%%"',
                        'LIKE "%%%s%%"',
                        'NOT LIKE "%%%s%%"',
                        'LIKE "%%%s"',
                        'NOT LIKE "%%%s"',
                        '< "%s"',
                        '<= "%s"',
                        '= "%s"',
                        '> "%s"',
                        '>= "%s"',
                        '<> "%s"',
                        '<determined by field empty operation setting>',
                        '<determined by field empty operation setting>');

{ Alle veldtypen:
  TFieldType = ftUnknown, ftString, ftSmallint, ftInteger, ftWord,
    ftBoolean, ftFloat, ftCurrency, ftBCD, ftDate, ftTime, ftDateTime,
    ftBytes, ftVarBytes, ftAutoInc, ftBlob, ftMemo, ftGraphic, ftFmtMemo,
    ftParadoxOle, ftDBaseOle, ftTypedBinary, ftCursor, ftFixedChar, ftWideString,
    ftLargeint, ftADT, ftArray, ftReference, ftDataSet, ftOraBlob, ftOraClob,
    ftVariant, ftInterface, ftIDispatch, ftGuid, ftTimeStamp, ftFMTBcd);
}

  VALIDCOMPARISON_NONE = [];
  VALIDCOMPARISON_NUMBER = [scLess, scLessEqual, scEqual, scGreater, scGreaterEqual, scNotEqual, scEmpty, scNotEmpty];
  VALIDCOMPARISON_BOOLEAN = [scEqual, scNotEqual, scEmpty, scNotEmpty];
  VALIDCOMPARISON_DATETIME = VALIDCOMPARISON_NUMBER;

  VALIDCOMPARISON_STRING = [scLessString, scLessEqualString, scEqualString, scGreaterString, scGreaterEqualString,
                            scBeginsWith, scNotBeginsWith, scContains, scNotContains, scEndsWith, scNotEndsWith,
                            scEmpty, scNotEmpty];

  QUOTEDFIELDTYPES = [ftString, ftFixedChar, ftWideString];

  VALIDCOMPARISONS: array[0..37] of TSearchComparisonRecord = (
                        (FieldType:             ftUnknown;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftString;
                         Comparisons:           VALIDCOMPARISON_STRING;
                         DefaultComparison:     scBeginsWith),
                        (FieldType:             ftSmallint;
                         Comparisons:           VALIDCOMPARISON_NUMBER;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftInteger;
                         Comparisons:           VALIDCOMPARISON_NUMBER;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftWord;
                         Comparisons:           VALIDCOMPARISON_NUMBER;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftBoolean;
                         Comparisons:           VALIDCOMPARISON_BOOLEAN;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftFloat;
                         Comparisons:           VALIDCOMPARISON_NUMBER;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftCurrency;
                         Comparisons:           VALIDCOMPARISON_NUMBER;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftBCD;
                         Comparisons:           VALIDCOMPARISON_NUMBER;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftDate;
                         Comparisons:           VALIDCOMPARISON_DATETIME;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftTime;
                         Comparisons:           VALIDCOMPARISON_DATETIME;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftDateTime;
                         Comparisons:           VALIDCOMPARISON_DATETIME;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftBytes;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftVarBytes;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftAutoInc;
                         Comparisons:           VALIDCOMPARISON_NUMBER;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftBlob;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftMemo;
                         Comparisons:           VALIDCOMPARISON_STRING;
                         DefaultComparison:     scBeginsWith),
                        (FieldType:             ftGraphic;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftFmtMemo;
                         Comparisons:           VALIDCOMPARISON_STRING;
                         DefaultComparison:     scBeginsWith),
                        (FieldType:             ftParadoxOle;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftDBaseOle;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftTypedBinary;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftCursor;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftFixedChar;
                         Comparisons:           VALIDCOMPARISON_STRING;
                         DefaultComparison:     scBeginsWith),
                        (FieldType:             ftWideString;
                         Comparisons:           VALIDCOMPARISON_STRING;
                         DefaultComparison:     scBeginsWith),
                        (FieldType:             ftLargeint;
                         Comparisons:           VALIDCOMPARISON_NUMBER;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftADT;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftArray;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftReference;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftDataSet;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftOraBlob;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftOraClob;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftVariant;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftInterface;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftIDispatch;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftGuid;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftTimeStamp;
                         Comparisons:           VALIDCOMPARISON_DATETIME;
                         DefaultComparison:     scEqual),
                        (FieldType:             ftFMTBcd;
                         Comparisons:           VALIDCOMPARISON_NONE;
                         DefaultComparison:     scEqual));

  OPERATOR_SQL: array[soAnd..soOrAll] of String =
                   ('AND',
                    'OR',
                    'AND',
                    'OR');

implementation

end.
