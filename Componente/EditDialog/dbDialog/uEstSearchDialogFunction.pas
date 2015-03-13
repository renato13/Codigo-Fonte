{
  Unit   : uEstSearchDialogFunction
  Datum  : 5-5-2004
  Auteur : Erik Stok
  Doel   : Search dialog functies
}
unit uEstSearchDialogFunction;

interface

uses
  SysUtils,
  uEstSearchDialogConst,
  uEstSearchDialogIntl;

function SearchComparisionText(SearchComparison: TSearchComparison): String;
function OperatorText(SearchOperator: TSearchOperator): String;

implementation

function SearchComparisionText(SearchComparison: TSearchComparison): String;
begin
  case SearchComparison of
    scLess:                  Result := '<';
    scLessEqual:             Result := '<=';
    scEqual:                 Result := '=';
    scGreater:               Result := '>';
    scGreaterEqual:          Result := '>=';
    scNotEqual:              Result := '<>';
    scContains:              Result := EstSearchDialogIntl.ComparisonContains;
    scBeginsWith:            Result := EstSearchDialogIntl.ComparisonBeginsWith;
    scNotBeginsWith:         Result := EstSearchDialogIntl.ComparisonNotBeginsWith;
    scNotContains:           Result := EstSearchDialogIntl.ComparisonNotContains;
    scEndsWith:              Result := EstSearchDialogIntl.ComparisonEndsWith;
    scNotEndsWith:           Result := EstSearchDialogIntl.ComparisonNotEndsWith;
    scLessString:            Result := '<';
    scLessEqualString:       Result := '<=';
    scEqualString:           Result := '=';
    scGreaterString:         Result := '>';
    scGreaterEqualString:    Result := '>=';
    scNotEqualString:        Result := '<>';
    scEmpty:                 Result := EstSearchDialogIntl.ComparisonEmpty;
    scNotEmpty:              Result := EstSearchDialogIntl.ComparisonNotEmpty;
  else
    raise Exception.Create('Unknown SearchComparison');
  end;
end;

function OperatorText(SearchOperator: TSearchOperator): String;
begin
  case SearchOperator of
    soAnd     : Result := 'and';
    soOr      : Result := 'or';
    soAndAll  : Result := 'and all';
    soOrAll   : Result := 'or all';
  else
    raise Exception.Create('Unknown SearchOperator');
  end;
end;

end.
