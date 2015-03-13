{
  Unit   : uEstSearchDialogDateUtils
  Datum  : 6-12-2003
  Auteur : Erik Stok
  Doel   : Zoekdialoog datum/tijd functies
}

unit uEstSearchDialogDateUtils;

interface

uses
  SysUtils, DateUtils, uEstSearchDialogIntl, uEstSearchDialogTypes;

function TryValueToDateTime(Value: String; var aDateTime: TDateTime): Boolean;
function ValueToDateTime(Value: String): TDateTime;

function OffsetForSecond(Offset: Integer): TDateTime;
function OffsetForMinute(OffSet: Integer): TDateTime;
function OffsetForHour(OffSet: Integer): TDateTime;
function OffsetForDay(OffSet: Integer): TDateTime;
function OffsetForWeek(OffSet: Integer): TDateTime;
function OffsetForMonth(OffSet: Integer): TDateTime;
function OffsetForQuarter(OffSet: Integer): TDateTime;
function OffsetForHalfYear(OffSet: Integer): TDateTime;
function OffsetForYear(OffSet: Integer): TDateTime;

function RelateToSecond(Offset: Integer): TDateTime;
function RelateToMinute(OffSet: Integer): TDateTime;
function RelateToHour(OffSet: Integer): TDateTime;
function RelateToDay(OffSet: Integer): TDateTime;
function RelateToWeek(OffSet: Integer): TDateTime;
function RelateToMonth(OffSet: Integer): TDateTime;
function RelateToQuarter(OffSet: Integer): TDateTime;
function RelateToYear(OffSet: Integer): TDateTime;

implementation

function IncQuarter(const DateTime: TDateTime; NumberOfQuarters: Integer): TDateTime;
var
  Year, Month, Day, Quarter: Word;
begin
  DecodeDate(DateTime, Year, Month, Day);
  Quarter := (Month - 1) div 3;
  Result := IncMonth(EncodeDate(Year, (Quarter * 3) + 1, Day), NumberOfQuarters * 3);
  ReplaceTime(Result, DateTime);
end;

function IncHalfYear(const DateTime: TDateTime; NumberOfHalfYears: Integer): TDateTime;
var
  Year, Month, Day, HalfYear: Word;
begin
  DecodeDate(DateTime, Year, Month, Day);
  HalfYear := (Month - 1) div 6;
  Result := IncMonth(EncodeDate(Year, (HalfYear * 6) + 1, Day), NumberOfHalfYears * 6);
  ReplaceTime(Result, DateTime);
end;

function StartOfTheMinute(const AValue: TDateTime): TDateTime;
var
  Year, Month, Day: Word;
  Hour, Minute, Second, Millisecond: Word;
begin
  DecodeDateTime(AValue, Year, Month, Day, Hour, Minute, Second, Millisecond);
  Result := EncodeDateTime(Year, Month, Day, Hour, Minute, 0, 0);
end;

function StartOfTheHour(const AValue: TDateTime): TDateTime;
var
  Year, Month, Day: Word;
  Hour, Minute, Second, Millisecond: Word;
begin
  DecodeDateTime(AValue, Year, Month, Day, Hour, Minute, Second, Millisecond);
  Result := EncodeDateTime(Year, Month, Day, Hour, 0, 0, 0);
end;

function StartOfTheQuarter(const AValue: TDateTime): TDateTime;
var
  Year, Month, Day, Quarter: Word;
begin
  DecodeDate(AValue, Year, Month, Day);
  Quarter := (Month - 1) div 3;
  Result := EncodeDate(Year, (Quarter * 3) + 1, 1);
end;

function OffsetForSecond(Offset: Integer): TDateTime;
begin
  Result := IncSecond(Now, Offset);
end;

function OffsetForMinute(OffSet: Integer): TDateTime;
begin
  Result := IncMinute(StartOfTheMinute(Now), Offset);
end;

function OffsetForHour(OffSet: Integer): TDateTime;
begin
  Result := IncHour(StartOfTheHour(Now), Offset);
end;

function OffsetForDay(OffSet: Integer): TDateTime;
begin
  Result := IncDay(StartOfTheDay(Now), Offset);
end;

function OffsetForWeek(OffSet: Integer): TDateTime;
begin
  Result := IncWeek(StartOfTheWeek(Now), Offset);
end;

function OffsetForMonth(OffSet: Integer): TDateTime;
begin
  Result := IncMonth(StartOfTheMonth(Now), Offset);
end;

function OffsetForQuarter(OffSet: Integer): TDateTime;
begin
  Result := IncQuarter(StartOfTheQuarter(Now), Offset);
end;

function OffsetForHalfYear(OffSet: Integer): TDateTime;
begin
  Result := IncHalfYear(StartOfTheYear(Now), Offset);
end;

function OffsetForYear(OffSet: Integer): TDateTime;
begin
  Result := IncYear(StartOfTheYear(Now), Offset);
end;

function RelateToSecond(Offset: Integer): TDateTime;
begin
  Result := IncSecond(Now, Offset);
end;

function RelateToMinute(OffSet: Integer): TDateTime;
begin
  Result := IncMinute(Now, Offset);
end;

function RelateToHour(OffSet: Integer): TDateTime;
begin
  Result := IncHour(Now, Offset);
end;

function RelateToDay(OffSet: Integer): TDateTime;
begin
  Result := IncDay(Date, Offset);
end;

function RelateToWeek(OffSet: Integer): TDateTime;
begin
  Result := IncDay(Date, (Offset * 7));
end;

function RelateToMonth(OffSet: Integer): TDateTime;
begin
  Result := IncMonth(Date, Offset);
end;

function RelateToQuarter(OffSet: Integer): TDateTime;
begin
  Result := IncMonth(Date, (Offset * 3));
end;

function RelateToYear(OffSet: Integer): TDateTime;
begin
  Result := IncYear(Date, Offset);
end;

function TryValueToDateTime(Value: String; var aDateTime: TDateTime): Boolean;
var
  ValueWithoutSpaces : String;
  ValueOffset : Integer;

  function DetermineDateTime(SpecialValue: String;
                         ValueToCheck: String;
                         var Offset: Integer): Boolean;
  begin
    // Standaard resultaat
    Result := False;

    // Controleer of het begin overeenkomt
    if Copy(ValueToCheck, 1, Length(SpecialValue)) = SpecialValue then
    begin
      // Zo ja, bepaal dan de offset
      if Length(ValueToCheck) <> Length(SpecialValue) then
        Offset := StrToInt(Copy(ValueToCheck, Length(SpecialValue) + 1, Length(ValueToCheck)))
      else
        Offset := 0;

      // En geef terug dat er een match is geweest
      Result := True;
    end;

  end;

begin
  // Veronderstel dat de conversie slaagt
  Result := True;
  
  // Controleer of de waarde zonder spaties begint met een speciale waarde
  ValueWithoutSpaces := UpperCase(StringReplace(Value, ' ', '', [rfReplaceAll]));

  try

    // Relatieve datum tijd
    if DetermineDateTime(EstSearchDialogIntl.DateTimeValueRSecond, ValueWithoutSpaces, ValueOffset) then
      aDateTime := RelateToSecond(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueRMinute, ValueWithoutSpaces, ValueOffset) then
      aDateTime := RelateToMinute(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueRHour, ValueWithoutSpaces, ValueOffset) then
      aDateTime := RelateToHour(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueRDay, ValueWithoutSpaces, ValueOffset) then
      aDateTime := RelateToDay(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueRWeek, ValueWithoutSpaces, ValueOffset) then
      aDateTime := RelateToWeek(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueRMonth, ValueWithoutSpaces, ValueOffset) then
      aDateTime := RelateToMonth(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueRQuarter, ValueWithoutSpaces, ValueOffset) then
      aDateTime := RelateToQuarter(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueRYear, ValueWithoutSpaces, ValueOffset) then
      aDateTime := RelateToYear(ValueOffset)

    // Absolute datum tijd
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueSecond, ValueWithoutSpaces, ValueOffset) then
      aDateTime := OffsetForSecond(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueMinute, ValueWithoutSpaces, ValueOffset) then
      aDateTime := OffsetForMinute(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueHour, ValueWithoutSpaces, ValueOffset) then
      aDateTime := OffsetForHour(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueDay, ValueWithoutSpaces, ValueOffset) then
      aDateTime := OffsetForDay(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueWeek, ValueWithoutSpaces, ValueOffset) then
      aDateTime := OffsetForWeek(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueMonth, ValueWithoutSpaces, ValueOffset) then
      aDateTime := OffsetForMonth(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueQuarter, ValueWithoutSpaces, ValueOffset) then
      aDateTime := OffsetForQuarter(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueHalfYear, ValueWithoutSpaces, ValueOffset) then
      aDateTime := OffsetForHalfYear(ValueOffset)
    else if DetermineDateTime(EstSearchDialogIntl.DateTimeValueYear, ValueWithoutSpaces, ValueOffset) then
      aDateTime := OffsetForYear(ValueOffset)
    else if EstSearchDialogIntl.DateTimeValueNow = ValueWithoutSpaces then
      aDateTime := Now
    else
      aDateTime := StrToDate(Value);

  except
    Result := False;
  end;

end;

function ValueToDateTime(Value: String): TDateTime;
begin
  if not TryValueToDateTime(Value, Result) then
    raise EEstSearchDialogException.Create(EstSearchDialogIntl.ErrorInvalidDateTimeFormula);
end;

end.
