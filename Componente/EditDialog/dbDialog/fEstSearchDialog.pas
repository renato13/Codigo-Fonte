unit fEstSearchDialog;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, ExtCtrls, ActnList, ComCtrls,  Registry, Menus,
  uEstSearchDialogTypes, uEstSearchDialogConst, uEstSearchDialogDateUtils,
  uEstSearchDialogProperties, uEstSearchDialogIntl, uEstSearchDialogFunction,
  fEstSearchDialogPresetCustomize, Buttons,
  WideStrings, pngimage, System.Actions;

type
  TFrmEstSearchDialog = class(TForm)
    pnlMain: TPanel;
    pnlCriteria: TPanel;
    pnlGrid: TPanel;
    pnlButtons: TPanel;
    dtsSearch: TDataSource;
    grdResult: TDBGrid;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    pnlInput: TPanel;
    pnlActions: TPanel;
    btnMore: TBitBtn;
    btnLess: TBitBtn;
    btnSearch: TBitBtn;
    pnlCriteriaLine01: TPanel;
    pnlCriterium01: TPanel;
    cbxField01: TComboBox;
    cbxComparison01: TComboBox;
    edtValue01: TEdit;
    aclSearch: TActionList;
    actMore: TAction;
    actLess: TAction;
    actSearch: TAction;
    actOK: TAction;
    actCancel: TAction;
    stbInfo: TStatusBar;
    pnlLabels: TPanel;
    lblField: TLabel;
    lblComparison: TLabel;
    lblValue: TLabel;
    lblOperator: TLabel;
    cbxPreset: TComboBox;
    actPriorValue: TAction;
    actNextValue: TAction;
    actCustomize: TAction;
    btnCustomize: TBitBtn;
    RDGPesquisar_: TRadioGroup;
    pnlOperator01: TPanel;
    cbxOperator01: TComboBox;
    Panel1: TPanel;
    Image3: TImage;
    LblBarraTitulo: TLabel;
    procedure actSearchExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbxFieldChange(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure edtValueChange(Sender: TObject);
    procedure edtValueKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actMoreExecute(Sender: TObject);
    procedure actLessExecute(Sender: TObject);
    procedure cbxComparisonChange(Sender: TObject);
    procedure grdResultDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxPresetChange(Sender: TObject);
    procedure actPriorValueExecute(Sender: TObject);
    procedure actNextValueExecute(Sender: TObject);
    procedure actCustomizeExecute(Sender: TObject);
    procedure RDGPesquisar_Click(Sender: TObject);
    procedure grdResultKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FOnSetup: TEstSearchDialogSetupEvent;
    FMdi: Boolean;

    FMaxMessageSet: Boolean;
    FInitializing: Boolean;

    FMaxCriteria: Integer;
    FCriteriaCount: Integer;

    FSearchQuery: String;
    FCountQuery: String;
    FMax: Integer;
    FSearchDialogFieldList: TEstSearchDialogFieldList;
    FSearchPresetList: TEstSearchPresetList;

    FShowPresets: Boolean;
    FShowPresetsCustomization: Boolean;

    FFieldIndex : Integer;
    FRegistryPath: string;
    FStore: TEstSearchDialogStore;
    FStoreVersion: Integer;

    FSearchDataSet: TDataSet;
    FCountDataSet: TDataSet;

    FOnSetSearchQuery: TEstSearchDialogSetSqlEvent;
    FOnSetCountQuery: TEstSearchDialogSetSqlEvent;

    FResultQuery: String;

    FCompareFormatDate: String;
    FCompareFormatDateTime: String;
    FCompareFormatTime: String;

    FQuoteChar: Char;
    FQuotedDateTime: Boolean;
    FAdditionalWhere: String;
    FStartOpen: Boolean;
    FStartPreset: Integer;
    FTrueExpression: String;
    FDecimalChar: Char;

    FCaseFormatLower: String;
    FCaseFormatUpper: String;

    FSearchStyle : TSearchStyle;
    FOnOK: TNotifyEvent;
    FOnCancel: TNotifyEvent;

    FOnInitControls: TEstSearchDialogInitControlsEvent;
    FIgnoreEmptyValues: Boolean;
    FClearValueOnFieldChange: Boolean;

    FFrmEstSearchDialogPresetCustomizeClass: TFrmEstSearchDialogPresetCustomizeClass;

    function LineNr(Sender: TObject): String;

    function FieldComboBox(Line: String): TComboBox;
    function ComparisonComboBox(Line: String): TComboBox;
    function ValueEdit(Line: String): TEdit;
    function OperatorComboBox(Line: String): TComboBox;

    procedure ShowOperators;

    procedure PresetExecute(Sender: TObject);
  protected
    procedure DoCreate; override;

    procedure DoGridMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure DoGridMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);

    procedure ColorValue(Line: String); virtual;

    procedure InitSearchAgain; virtual;
    procedure InitFound; virtual;

    procedure ToggleActionsAndControls; virtual;
    procedure SetFieldSettings; virtual;

    function DateTimeValue(FormatString: String; Value: TDateTime): String;
    function ValueToDate(Value: String): TDateTime;

    function CaseFormattedField(Field: String; SearchCase: TSearchCase): String; virtual;

    function  BuildQuery(InitialQuery: String): String; virtual;
    function  BuildWhereClause: String; virtual;

    procedure InitControls(Line: String); virtual;
    procedure DoInitControls(Sender: TObject;
                             Field: TEstSearchDialogField;
                             FieldControl: TComboBox;
                             Comparison: TSearchComparison;
                             ComparisonControl: TComboBox;
                             ValueControl: TEdit;
                             UsingOperator: Boolean;
                             OperatorControl: TComboBox); virtual;

    procedure AddCriterium(FieldIndex: Integer = -1); virtual;
    procedure DeleteCriterium; virtual;

    procedure Search; virtual;

    procedure Initialise; virtual;

    procedure SetSearchDialogFieldList(Value: TEstSearchDialogFieldList); virtual;
    procedure AddPreset(Index: Integer); virtual;
    procedure SetSearchPresetList(const Value: TEstSearchPresetList); virtual;

    procedure SetSearchQuery(SQL: String); virtual;
    procedure SetCountQuery(SQL: String); virtual;

    procedure LoadSearchFields(IncludeValues: Boolean); virtual;
    procedure SaveSearchFields(IncludeValues: Boolean); virtual;

    procedure LoadCustomPresets; virtual;
    procedure SaveCustomPresets; virtual;

    procedure PerformOK; virtual;
    procedure PerformCancel; virtual;
  public
    constructor Create(AOwner: TComponent; Mdi: Boolean; OnSetup: TEstSearchDialogSetupEvent); reintroduce;

    property FrmEstSearchDialogPresetCustomizeClass: TFrmEstSearchDialogPresetCustomizeClass
                                  read FFrmEstSearchDialogPresetCustomizeClass
                                  write FFrmEstSearchDialogPresetCustomizeClass;

    property SearchStyle: TSearchStyle read FSearchStyle write FSearchStyle;

    function  GetResultList: String;
    function  GetResultRecord: TEstSearchDialogResultRecord;
    function  GetResultQuery: String;

    property CriteriaCount: Integer read FCriteriaCount write FCriteriaCount;
    property MaxCriteria: Integer read FMaxCriteria write FMaxCriteria;

    property SearchQuery: String read FSearchQuery write FSearchQuery;
    property CountQuery: String read FCountQuery write FCountQuery;
    property Max: Integer read FMax write FMax;

    property RegistryPath: string read FRegistryPath write FRegistryPath;

    property SearchDialogFieldList: TEstSearchDialogFieldList read FSearchDialogFieldList
                                                              write SetSearchDialogFieldList;

    property SearchPresetList: TEstSearchPresetList read FSearchPresetList
                                                    write SetSearchPresetList;

    property ShowPresets: Boolean read FShowPresets write FShowPresets;
    property ShowPresetsCustomization: Boolean read FShowPresetsCustomization
                                               write FShowPresetsCustomization;

    property CaseFormatUpper: String read FCaseFormatUpper write FCaseFormatUpper;
    property CaseFormatLower: String read FCaseFormatLower write FCaseFormatLower;

    property Store: TEstSearchDialogStore read FStore write FStore;
    property StoreVersion: Integer read FStoreVersion write FStoreVersion;

    property SearchDataSet: TDataSet read FSearchDataSet write FSearchDataSet;
    property CountDataSet: TDataSet read FCountDataSet write FCountDataSet;

    property OnSetSearchQuery: TEstSearchDialogSetSqlEvent read FOnSetSearchQuery
                                                           write FOnSetSearchQuery;

    property OnSetCountQuery: TEstSearchDialogSetSqlEvent read FOnSetCountQuery
                                                          write FOnSetCountQuery;

    property OnInitControls: TEstSearchDialogInitControlsEvent read FOnInitControls
                                                               write FOnInitControls;

    property OnOK: TNotifyEvent read FOnOK write FOnOK;
    property OnCancel: TNotifyEvent read FOnCancel write FOnCancel;

    property CompareFormatDate: String read FCompareFormatDate write FCompareFormatDate;
    property CompareFormatTime: String read FCompareFormatTime write FCompareFormatTime;
    property CompareFormatDateTime: String read FCompareFormatDateTime write FCompareFormatDateTime;
    property QuotedDateTime: Boolean read FQuotedDateTime write FQuotedDateTime;

    property QuoteChar: Char read FQuoteChar write FQuoteChar;
    property DecimalChar: Char read FDecimalChar write FDecimalChar;

    property IgnoreEmptyValues: Boolean read FIgnoreEmptyValues write FIgnoreEmptyValues;
    property ClearValueOnFieldChange: Boolean read FClearValueOnFieldChange write FClearValueOnFieldChange default True;

    property AdditionalWhere: String read FAdditionalWhere write FAdditionalWhere;
    property StartOpen: Boolean read FStartOpen write FStartOpen;
    property StartPreset: Integer read FStartPreset write FStartPreset;
    property TrueExpression: String read FTrueExpression write FTrueExpression;
  end;

  TFrmEstSearchDialogClass = class of TFrmEstSearchDialog;

function FieldTypeComparisons(FieldType: TFieldType): TSearchComparisons;
function FieldTypeDefaultComparison(FieldType: TFieldType): TSearchComparison;

implementation

{$R *.DFM}

type
  TDBGridAccessClass = class(TDBGrid)
  published
    property VisibleRowCount;
  end;

  TEditAccessClass = class(TEdit)
  end;

{
  Procedure : FieldTypeComparisons
  Auteur    : Erik Stok
  Doel      : Vind voor een specifiek veldtype de geldige vergelijkingen
}
function FieldTypeComparisons(FieldType: TFieldType): TSearchComparisons;
var
  i : Integer;
begin
  // Standaard resultaat
  Result := VALIDCOMPARISON_NONE;

  // Zoek in de lijst van geldige vergelijking voor velden naar het veldtype
  for i := Low(VALIDCOMPARISONS) to High(VALIDCOMPARISONS) do
  begin

    // Als dit gevonden is, geef dan de bijbehorende vergelijkingen
    if VALIDCOMPARISONS[i].FieldType = FieldType then
    begin
      Result := VALIDCOMPARISONS[i].Comparisons;
      Break;
    end;

  end;

end;

{
  Procedure : FieldTypeDefaultComparison
  Auteur    : Erik Stok
  Doel      : Vind voor een specifiek veldtype de standaard vergelijking
}
function FieldTypeDefaultComparison(FieldType: TFieldType): TSearchComparison;
var
  i : Integer;
begin
  // Standaard resultaat
  Result := scEqual;

  // Zoek in de lijst van standaard vergelijkingen voor velden naar het veldtype
  for i := Low(VALIDCOMPARISONS) to High(VALIDCOMPARISONS) do
  begin

    // Als dit gevonden is, geef dan de bijbehorende vergelijkingen
    if VALIDCOMPARISONS[i].FieldType = FieldType then
    begin
      Result := VALIDCOMPARISONS[i].DefaultComparison;
      Break;
    end;

  end;

end;

{
  Procedure : TFrmEstSearchDialog.DateTimeValue
  Auteur    : Erik Stok
  Doel      : Formatteer datum/tijd naar zoekwaarde die in where clausule
              gebruikt kan worden
}
function TFrmEstSearchDialog.DateTimeValue(FormatString: String; Value: TDateTime): String;
begin
  // Bepaal datum tijd volgens gegeven format, met of zonder quotes
  if FQuotedDateTime then
    Result := AnsiQuotedStr(FormatDateTime(FormatString, Value), FQuoteChar)
  else
    Result := FormatDateTime(FormatString, Value);

end;

{
  Procedure : TFrmEstSearchDialog.ValueToDate
  Author    : Erik Stok
  Purpose   : Converteer string naar datum/tijd rekening houdend met de speciale
              waarden die een gebruiker mag invoeren
}
function TFrmEstSearchDialog.ValueToDate(Value: String): TDateTime;
begin
  Result := ValueToDateTime(Value);
end;

{
  Procedure : TFrmEstSearchDialog.CaseFormattedField
  Auteur    : Erik Stok
  Doel      : Pas case formatting toe op het gegeven veld volgens de opgegeven
              formatting strings
}
function TFrmEstSearchDialog.CaseFormattedField(Field: String; SearchCase: TSearchCase): String;
begin
  // Standaard resultaat
  Result := Field;

  // Format
  case SearchCase of
    scMixed:
      begin
        // Doe niets, resultaat is al goed
      end;
    scUpper:
      begin
        // Pas upper formatting string toe indien van toepassing
        if FCaseFormatUpper <> '' then
          Result := Format(FCaseFormatUpper, [Field]);
      end;
    scLower:
      begin
        // Pas upper formatting string toe indien van toepassing
        if FCaseFormatLower <> '' then
          Result := Format(FCaseFormatLower, [Field]);
      end;
  else
    raise EEstSearchDialogException.Create('Invalid case value');
  end;

end;

{
  Procedure : TfrmSearchDialog.BuildQuery
  Auteur    : Erik Stok
  Doel      : Bouw SQL statement op basis van algemeen SQL statement en de
              opgegeven zoekcriteria
}
function TFrmEstSearchDialog.BuildQuery(InitialQuery: String): String;
var
  WhereClause : String;
begin
  // Maak basis query
  Result := InitialQuery;

  // Bouw de WHERE clausule en voeg deze toe aan de query. Tijdens initialisatie
  // wordt de where clausule slechts bepaald door de additionalwhere en de
  // eventueel de trueexpression, behalve als er reeds een preset geselecteerd is
  if (not FInitializing) or (cbxPreset.ItemIndex <> -1) then
    WhereClause := BuildWhereClause
  else
    WhereClause := FAdditionalWhere;

  if WhereClause = '' then
    WhereClause := FTrueExpression;

  // Vervang de WHERE tag door de clausule
  Result := StringReplace(Result, WHERE_TAG, WhereClause, [rfIgnoreCase]);
end;

{
  Procedure : TfrmSearchDialog.BuildWhereClause
  Auteur    : Erik Stok
  Doel      : Bouw een WHERE clausule op basis van de opgegeven zoekcriteria
}
function TFrmEstSearchDialog.BuildWhereClause: String;
var
  i                  : Integer;
  sc                 : TSearchComparison;
  Line               : String;
  Field              : String;
  FieldObject        : TEstSearchDialogField;
  NrCriteriaIncluded : Integer;
  Comparison         : String;
  Value              : String;
  WhereComparison    : String;
  OperatorIndex      : Integer;
  Operator           : TSearchOperator;
  BracketsToClose    : Integer;
  FloatValue         : Extended;
  IntegerValue       : Int64;
  OldSeparator       : Char;
begin
  // Default resultaat
  Result := '';

  // Tot dusverre geen haakjes te sluiten
  BracketsToClose := 0;

  // Tot dusverre zijn er nog geen criteria toegevoegd
  NrCriteriaIncluded := 0;

  // Doorloop alle criteria
  for i := 1 to FCriteriaCount do
  begin

    // Bepaal regelnummer
    Line := Format('%.2d', [i]);

    // Bepaal veld
    with FieldComboBox(Line) do
    begin

      if ItemIndex <> -1 then
      begin
        FieldObject := TEstSearchDialogField(Items.Objects[ItemIndex]);
        Field := FieldObject.WhereSyntax
      end
      else
      begin
        FieldObject := nil;
        Field := '';
      end;

    end;

    if Field <> '' then
    begin

      // Bepaal vergelijking
      with ComparisonComboBox(Line) do
      begin
        if ItemIndex <> -1 then
        begin
          sc := TSearchComparison(Items.Objects[ItemIndex]);

          // Als er geen empty vergelijking gedaan wordt, gebruik dan de
          // vergelijking volgens constante lijst. Anders, bouw de empty
          // comparison op volgens opgegeven veldinstelling
          if not (sc in [scEmpty, scNotEmpty]) then
          begin
            Comparison := StringReplace(SEARCH_COMPARISON[sc], '"', FQuoteChar, [rfReplaceAll])
          end
          else
          begin

            if sc = scEmpty then
            begin

              case FieldObject.EmptyOperation of
                eoEmptyString : Comparison := StringReplace(EMPTYCOMPARISON[FieldObject.EmptyOperation], '"', FQuoteChar, [rfReplaceAll]);
                eoBoth        : Comparison := StringReplace(EMPTYCOMPARISON[FieldObject.EmptyOperation], '"', FQuoteChar, [rfReplaceAll]);
              else
                Comparison := StringReplace(EMPTYCOMPARISON[FieldObject.EmptyOperation], '"', FQuoteChar, [rfReplaceAll]);
              end;

            end
            else
            begin

              case FieldObject.EmptyOperation of
                eoEmptyString : Comparison := StringReplace(NOTEMPTYCOMPARISON[FieldObject.EmptyOperation], '"', FQuoteChar, [rfReplaceAll]);
                eoBoth        : Comparison := StringReplace(NOTEMPTYCOMPARISON[FieldObject.EmptyOperation], '"', FQuoteChar, [rfReplaceAll]);
              else
                Comparison := StringReplace(NOTEMPTYCOMPARISON[FieldObject.EmptyOperation], '"', FQuoteChar, [rfReplaceAll]);
              end;

            end;

          end;

        end
        else
        begin
          sc := scEmpty;
          Comparison := '';
        end;
      end;

      if Comparison <> '' then
      begin

        // Bepaal waarde indien nodig
        with ValueEdit(Line) do
        begin

          if (not (sc in [scEmpty, scNotEmpty])) and ((Text <> '') or (not FIgnoreEmptyValues)) then
          begin
            // Voor niet datetime velden wordt geen conversie gedaan
            if FieldObject.FieldType in [ftDate, ftTime, ftDateTime] then
            begin

              try

                case FieldObject.FieldType of
                  ftDate: Value := DateTimeValue(FCompareFormatDate, ValueToDate(Text));
                  ftTime: Value := DateTimeValue(FCompareFormatTime, ValueToDate(Text));
                  ftDateTime: Value := DateTimeValue(FCompareFormatDateTime, ValueToDate(Text));
                end;

              except

                // Zet focus op de edit box met de ongeldige waarde
                SetFocus;

                // Geef een foutmelding
                case FieldObject.FieldType of
                  ftDate: raise EEstSearchDialogException.Create(EstSearchDialogIntl.ErrorInvalidDate);
                  ftTime: raise EEstSearchDialogException.Create(EstSearchDialogIntl.ErrorInvalidTime);
                  ftDateTime: raise EEstSearchDialogException.Create(EstSearchDialogIntl.ErrorInvalidDateTime);
                end;

              end;

            end
            else
            begin

              //if sc < scBeginsWith then
              if sc < scContains then
              begin

                try
                  case FieldObject.FieldType of
                    ftSmallint, ftInteger, ftWord, ftAutoInc, ftLargeint:
                      begin
                        IntegerValue := StrToInt(Text);
                        Value := IntToStr(IntegerValue);
                      end;
                    ftFloat, ftCurrency, ftBCD:
                      begin
                        FloatValue := StrToFloat(Text);
                        OldSeparator := FormatSettings.DecimalSeparator;
                        try
                          FormatSettings.DecimalSeparator := FDecimalChar;
                          Value := FloatToStr(FloatValue);
                        finally
                          FormatSettings.DecimalSeparator := OldSeparator;
                        end;
                      end;
                  else
                    begin
                      case FieldObject.SearchCase of
                        scMixed: Value := Text;
                        scUpper: Value := AnsiUpperCase(Text);
                        scLower: Value := AnsiLowerCase(Text);
                      else
                        raise EEstSearchDialogException.CreateFmt(
                                'Invalid case value for search field %s',
                                [FieldObject.FieldName]);
                      end;

                      Field := CaseFormattedField(Field, FieldObject.SearchCase);
                    end;
                  end;
                except
                  SetFocus;
                  raise EEstSearchDialogException.Create(EstSearchDialogIntl.ErrorInvalidNumber);
                end;

              end
              else
              begin
                case FieldObject.SearchCase of
                  scMixed: Value := StringReplace(Text, FQuoteChar, FQuoteChar+FQuoteChar, [rfReplaceAll]);
                  scUpper: Value := StringReplace(AnsiUpperCase(Text), FQuoteChar, FQuoteChar+FQuoteChar, [rfReplaceAll]);
                  scLower: Value := StringReplace(AnsiLowerCase(Text), FQuoteChar, FQuoteChar+FQuoteChar, [rfReplaceAll]);
                else
                  raise EEstSearchDialogException.CreateFmt(
                          'Invalid case value for search field %s',
                          [FieldObject.FieldName]);
                end;

                Field := CaseFormattedField(Field, FieldObject.SearchCase);

              end;

            end;

          end
          else
          begin
            Value := '';
          end;


        end;

        // Bouw alleen een vergelijking op als lege waarden niet genegeerd moeten
        // worden en de waarde is niet leeg
        if (not FIgnoreEmptyValues) or (Value <> '') or (FIgnoreEmptyValues and (sc in [scEmpty, scNotEmpty])) then
        begin

          // Bouw de vergelijking zoals deze in de where clausule tussen de
          // haken geplaatst zal worden. Voor empty wordt een aparte format
          // gebruikt, aangezien het veld daar meerdere keren in voor kan komen en
          // de value geheel ontbreekt.
          if not (sc in [scEmpty, scNotEmpty]) then
          begin

            WhereComparison := Field + ' ' + Format(Comparison, [Value]);

          end
          else
          begin

            case FieldObject.EmptyOperation of
              eoEmptyString : WhereComparison := Format(Comparison, [Field]);
              eoBoth        : WhereComparison := Format(Comparison, [Field, Field]);
            else
              WhereComparison := Format(Comparison, [Field]);
            end;

          end;

          // Geef aan dat er een criterium is toegevoegd
          NrCriteriaIncluded := NrCriteriaIncluded + 1;

          // Als er een vorige regel is, bepaal dan de operator daarvan
          if NrCriteriaIncluded > 1 then
          begin

            OperatorIndex := OperatorComboBox(Format('%.2d', [i - 1])).ItemIndex;

            if OperatorIndex <> -1 then
              Operator := TSearchOperator(OperatorComboBox(Format('%.2d', [i - 1])).Items.Objects[OperatorIndex])
            else
              Operator := soAnd;


            // Als er vorige operator was en het betrof een ...All, vorm dan
            // haakjes om de nog komende vergelijkingen.
            // Anders zijn haakjes om de vergelijking voldoende.
            if (OperatorIndex <> -1) and
               (Operator in [soAndAll, soOrAll]) then
            begin
              Result := Result + OPERATOR_SQL[Operator]  +
                                 ' ('#13#10'(' + WhereComparison + ') '
                                 + #13#10;
              BracketsToClose := BracketsToClose + 1;
            end
            else
            begin
              Result := Result + OPERATOR_SQL[Operator]  +
                                 ' (' + WhereComparison + ') '
                                 + #13#10;
            end;

          end
          else
          begin
            // Er was geen operator van de vorige regel, dus haakjes zijn voldoende
            Result := Result + '(' + WhereComparison + ') ' + #13#10;
          end;

        end;

      end;

    end;

  end;

  Result := Result + StringOfChar(')', BracketsToClose);

  // Als er een resultaat is en een additionele where clausule, pas die dan ook
  // nog toe
  if FAdditionalWhere <> '' then
  begin

    if Result <> '' then
      Result := Format('(%s) AND (%s)', [Result, FAdditionalWhere])
    else
      Result := FAdditionalWhere;

  end;
end;

{
  Procedure : TfrmSearchDialog.LineNr
  Auteur    : Erik Stok
  Doel      : Geef het nummer van een control. Dit wordt gebruikt om controls
              uit dezelfde criteriumregels te kunnen selecteren.
}
function TFrmEstSearchDialog.LineNr(Sender: TObject): String;
var
  s : String;
begin
  s := (Sender as TComponent).Name;

  Result := Copy(s, Length(s) - 1, 2);
end;

{
  Procedure : TfrmSearchDialog.FieldComboBox
  Auteur    : Erik Stok
  Doel      : Bepaald voor een specifieke criteriumregel de veldcombobox
}
function TFrmEstSearchDialog.FieldComboBox(Line: String): TComboBox;
var
  c : TComponent;
begin
  c := FindComponent('cbxField' + Line);

  if Assigned(c) then
    Result := TComboBox(c)
  else
    raise EEstSearchDialogException.CreateFmt('Cannot find field combobox for line %s', [Line]);
end;

{
  Procedure : TfrmSearchDialog.ComparisonComboBox
  Auteur    : Erik Stok
  Doel      : Bepaald voor een specifieke criteriumregel de vergelijkingcombobox
}
function TFrmEstSearchDialog.ComparisonComboBox(Line: String): TComboBox;
var
  c : TComponent;
begin
  c := FindComponent('cbxComparison' + Line);

  if Assigned(c) then
    Result := TComboBox(c)
  else
    raise EEstSearchDialogException.CreateFmt('Cannot find comparison combobox for line %s', [Line]);
end;

{
  Procedure : TfrmSearchDialog.ValueEdit
  Auteur    : Erik Stok
  Doel      : Bepaald voor een specifieke criteriumregel de waardeedit
}
function TFrmEstSearchDialog.ValueEdit(Line: String): TEdit;
var
  c : TComponent;
begin
  c := FindComponent('edtValue' + Line);

  if Assigned(c) then
    Result := TEdit(c)
  else
    raise EEstSearchDialogException.CreateFmt('Cannot find value edit for line %s', [Line]);
end;

{
  Procedure : TfrmSearchDialog.OperatorComboBox
  Auteur    : Erik Stok
  Doel      : Bepaald voor een specifieke criteriumregel de operatorcombobox
}
function TFrmEstSearchDialog.OperatorComboBox(Line: String): TComboBox;
var
  c : TComponent;
begin
  c := FindComponent('cbxOperator' + Line);

  if Assigned(c) then
    Result := TComboBox(c)
  else
    raise EEstSearchDialogException.CreateFmt('Cannot find operator combobox for line %s', [Line]);
end;

{
  Procedure : TfrmSearchDialog.ToggleActionsAndControls
  Auteur    : Erik Stok
  Doel      : Schakel de actions aan en uit volgens de status van het form
}
procedure TFrmEstSearchDialog.ToggleActionsAndControls;
begin
  actLess.Enabled := FCriteriaCount > 1;
  actMore.Enabled := FCriteriaCount < FMaxCriteria;
end;

{
  Procedure : TfrmSearchDialog.DeleteCriterium
  Auteur    : Erik Stok
  Doel      : Verwijder zoekcriterium uit lijst van criteria
}
procedure TFrmEstSearchDialog.DeleteCriterium;
var
  c : TComponent;
begin
  // Voorkom verwijderen regel 1
  if FCriteriaCount = 1 then
    Exit;

  // Verlaag criteriapanel met 1 criteriumhoogte
  pnlCriteria.Height := pnlCriteria.Height - pnlCriteriaLine01.Height;

  // Ruim hoogst genummerd criteriumpanel op
  c := FindComponent(Format('pnlCriteriaLine%.2d', [FCriteriaCount]));

  if Assigned(c) then
    c.Free
  else
    raise EEstSearchDialogException.Create('Cannot decrease nr of criteria');

  // Verlaag het aantal aanwezige criteria
  FCriteriaCount := FCriteriaCount - 1;

  // Werk de operators bij
  ShowOperators;

  // Stel knoppen in
  ToggleActionsAndControls;
end;

{
  Procedure : TfrmSearchDialog.AddCriterium
  Auteur    : Erik Stok
  Doel      : Voeg criterium toe aan lijst van criteria
}
procedure TFrmEstSearchDialog.AddCriterium(FieldIndex: Integer);
var
  PriorLine       : String;
  pnlCriteriaLine : TPanel;
  pnlCriterium    : TPanel;
  cbxField        : TComboBox;
  cbxComparison   : TComboBox;
  edtValue        : TEdit;
  pnlOperator     : TPanel;
  cbxOperator     : TComboBox;
begin
  // Voorkom overschrijden maximum
  if FCriteriaCount = FMaxCriteria then
    Exit;

  // Lock window om knipperen te voorkomen
  LockWindowUpdate(Handle);

  try
    // Bepaal vorige regel index
    PriorLine := Format('%.2d', [FCriteriaCount]);

    // Verhoog criteriapanel met 1 criteriumhoogte
    pnlCriteria.Height := pnlCriteria.Height + pnlCriteriaLine01.Height;

    // Maak nieuw criteriumpanel aan met alle componenten erin
    FCriteriaCount := FCriteriaCount + 1;

    pnlCriteriaLine := TPanel.Create(Self);
    with pnlCriteriaLine do
    begin
      Name := Format('pnlCriteriaLine%.2d', [FCriteriaCount]);
      Parent := pnlInput;
      Top := FCriteriaCount * pnlCriteriaLine01.Height;
      Height := pnlCriteriaLine01.Height;
      Align := pnlCriteriaLine01.Align;
      BevelOuter := pnlCriteriaLine01.BevelOuter;
      Caption := pnlCriteriaLine01.Caption;
      ParentShowHint := pnlCriteriaLine01.ParentShowHint;
      ParentColor := True;
    end;

    pnlCriterium := TPanel.Create(Self);
    with pnlCriterium do
    begin
      Name := Format('pnlCriterium%.2d', [FCriteriaCount]);
      Parent := pnlCriteriaLine;
      Align := pnlCriterium01.Align;
      BevelOuter := pnlCriterium01.BevelOuter;
      Caption := pnlCriterium01.Caption;
      ParentShowHint := pnlCriterium01.ParentShowHint;
      Hint := pnlCriterium01.Hint;
      ParentColor := True;
    end;

    pnlOperator := TPanel.Create(Self);
    with pnlOperator do
    begin
      Name := Format('pnlOperator%.2d', [FCriteriaCount]);
      Parent := pnlCriteriaLine;
      Width := pnlOperator01.Width;
      Height := pnlOperator01.Height;
      Align := pnlOperator01.Align;
      BevelOuter := pnlOperator01.BevelOuter;
      Caption := pnlOperator01.Caption;
      ParentShowHint := pnlOperator01.ParentShowHint;
      Hint := pnlOperator01.Hint;
      ParentColor := True;
    end;

    cbxField := TComboBox.Create(Self);
    with cbxField do
    begin
      Name := Format('cbxField%.2d', [FCriteriaCount]);
      Parent := pnlCriterium;
      Left := cbxField01.Left;
      Top := cbxField01.Top;
      Width := cbxField01.Width;
      Height := cbxField01.Height;
      Style := csDropDownList;
      Items := cbxField01.Items;
      Color := cbxField01.Color;
      ParentShowHint := cbxField01.ParentShowHint;
      Hint := cbxField01.Hint;

      // Als er geen veld is opgegeven of het veld met de betreffende index
      // bestaat niet, neem dan het veld van het vorige criterium. Neem anders
      // het veld met de betreffende index.
      if (FieldIndex = -1) or (FieldIndex >= FSearchDialogFieldList.Count) then
        ItemIndex := FieldComboBox(PriorLine).ItemIndex
      else
        ItemIndex := Items.IndexOfObject(FSearchDialogFieldList.Items[FieldIndex]);

      OnChange := cbxField01.OnChange;

      // Kopieer horizontale focuslocatie
      if Assigned(ActiveControl) and
         (Copy(ActiveControl.Name, 1, Length('cbxField')) = 'cbxField') then
        SetFocus;

    end;

    cbxComparison := TComboBox.Create(Self);
    with cbxComparison do
    begin
      Name := Format('cbxComparison%.2d', [FCriteriaCount]);
      Parent := pnlCriterium;
      Left := cbxComparison01.Left;
      Top := cbxComparison01.Top;
      Width := cbxComparison01.Width;
      Height := cbxComparison01.Height;
      Style := csDropDownList;

      Items     := ComparisonComboBox(PriorLine).Items;

      ItemIndex := 2;
      //ItemIndex := ComparisonComboBox(PriorLine).ItemIndex;

      Color := cbxComparison01.Color;
      ParentShowHint := cbxComparison01.ParentShowHint;
      Hint := cbxComparison01.Hint;
      OnChange := cbxComparison01.OnChange;

      // Kopieer horizontale focuslocatie
      if Assigned(ActiveControl) and
         (Copy(ActiveControl.Name, 1, Length('cbxComparison')) = 'cbxComparison') then
        SetFocus;

    end;

    edtValue := TEdit.Create(Self);
    with edtValue do
    begin
      Name := Format('edtValue%.2d', [FCriteriaCount]);
      Parent := pnlCriterium;
      Left := edtValue01.Left;
      Top := edtValue01.Top;
      Width := edtValue01.Width;
      Height := edtValue01.Height;
      Anchors := edtValue01.Anchors;
      Text := '';
      Color := edtValue01.Color;
      ParentShowHint := edtValue01.ParentShowHint;
      Hint := edtValue01.Hint;
      OnChange := edtValue01.OnChange;
      OnKeyDown := edtValue01.OnKeyDown;

      // Kopieer horizontale focuslocatie
      if Assigned(ActiveControl) and
         (Copy(ActiveControl.Name, 1, Length('edtValue')) = 'edtValue') then
        SetFocus;
    end;

    // Koppel mouse wheel events
    TEditAccessClass(edtValue).OnMouseWheelUp := DoGridMouseWheelUp;
    TEditAccessClass(edtValue).OnMouseWheelDown := DoGridMouseWheelDown;

    cbxOperator := TComboBox.Create(Self);
    with cbxOperator do
    begin
      Name := Format('cbxOperator%.2d', [FCriteriaCount]);
      Parent := pnlOperator;
      Left := cbxOperator01.Left;
      Top := cbxOperator01.Top;
      Width := cbxOperator01.Width;
      Height := cbxOperator01.Height;
      Style := csDropDownList;
      Items := cbxOperator01.Items;
      //ItemIndex := OperatorComboBox(PriorLine).ItemIndex;
      ItemIndex := 2;

      Color := cbxOperator01.Color;
      ParentShowHint := cbxOperator01.ParentShowHint;
      Hint := cbxOperator01.Hint;

      // Kopieer horizontale focuslocatie
      if Assigned(ActiveControl) and
         (Copy(ActiveControl.Name, 1, Length('cbxOperator')) = 'cbxOperator') then
        SetFocus;

      // Stel operators in
      ShowOperators;

      // Stel knoppen in
      ToggleActionsAndControls;
    end;

    // Initialiseer controls
    InitControls(LineNr(cbxField));

  finally
    LockWindowUpdate(0);
  end;
end;

{
  Procedure : TfrmSearchDialog.Search
  Auteur    : Erik Stok
  Doel      : Voer de zoekopdracht uit volgens opgegeven input waarden
}
procedure TFrmEstSearchDialog.Search;
var
  Query : String;
begin
  // Wis eventuele vorige boodschap
  if FMaxMessageSet then
    stbInfo.SimpleText := '';

  // Controleer of max aantal is ingesteld. Indien dit het geval is, controleer
  // dan eerst het aantal.
  if FMax > 0 then
  begin
    // Stel statement samen
    Query := BuildQuery(FCountQuery);
    SetCountQuery(Query);

    try

      try
        // Open de query
        FCountDataSet.Open;
      except
        // Als dit misgaat, communiceer dan duidelijke melding naar de
        // gebruiker
        on e:Exception do
          raise EEstSearchDialogException.CreateFmt('Não foi determinado um contador, ' +
                                                    'invalid count query (%s)'#13#10'%s',
                                                    [e.Message, Query]);
      end;

      // Veronderstel dat het eerste veld het aantal bevat. Als er geen
      // eerste veld is, koppel dat dan terug
      if FCountDataSet.Fields.Count > 0 then
      begin

        // Bepaal aantal
        try

          // Als aantal het maximum overschrijdt, toon dan een melding
          if FCountDataSet.Fields[0].AsInteger > FMax then
          begin
            stbInfo.SimpleText := Format(EstSearchDialogIntl.MessageTooManyRecords,
                                         [FCountDataSet.Fields[0].AsInteger,
                                          FMax]);

            FMaxMessageSet := True;

            // Sluit aantal query
            FCountDataSet.Close;

            // Stop verdere zoekactie
            Exit;
          end;

        except
          // Koppel onjuist aantal veldtype terug
          on e:Exception do
            raise EEstSearchDialogException.CreateFmt('Cannot determine count, invalid ' +
                                                      'count fieldtype (%s)', [e.Message]);
        end;

      end
      else
      begin
        // Koppel fout terug dat aantal veld mist
        raise EEstSearchDialogException.Create('Cannot find count field, search count ' +
                                               'query has an invalid format');
      end;

    finally
      // Sluit aantal query
      FCountDataSet.Close;
    end;

  end;

  // Bevries controls
  FSearchDataSet.DisableControls;

  try

    // Sluit eventueel vorig openstaand resultaat
    FSearchDataSet.Close;

    // Stel statement samen
    Query := BuildQuery(FSearchQuery);
    SetSearchQuery(Query);

    try

      // Open de query
      FSearchDataSet.Open;

      // Stel de velden in volgens specificatie
      SetFieldSettings;

      // Onthoud deze query als resultaat query
      FResultQuery := Query;

    except
      // Als dit misgaat, communiceer dan duidelijke melding naar de
      // gebruiker
      on e:Exception do
      begin

        raise EEstSearchDialogException.CreateFmt('Cannot determine result, invalid ' +
                                                  'search query (%s)'#13#10'%s',
                                                  [e.Message, Query]);

      end;

    end;

  finally
    // Ontdooi controls
    FSearchDataSet.EnableControls;
  end;

  // Stel knoppen in voor gevonden
  if not FSearchDataSet.IsEmpty then
    InitFound
  else
    InitSearchAgain;
end;

procedure TFrmEstSearchDialog.actSearchExecute(Sender: TObject);
var
  OldCursor : TCursor;
begin
  // Onthoud oude cursor
  OldCursor := Screen.Cursor;

  // Stel zandloper in
  Screen.Cursor := crHourGlass;

  try

    // Voer zoekopdracht uit
    Search;

  finally
    // Herstel oude cursor
    Screen.Cursor := OldCursor;
    edtValue01.SetFocus;
  end;

end;

procedure TFrmEstSearchDialog.FormCreate(Sender: TObject);
begin
  // Initialiseer privates
  FSearchStyle := ssModal;

  FMaxCriteria := 1;
  FCriteriaCount := 1;

  FSearchQuery := '';
  FCountQuery := '';
  FMax := 0;

  FCaseFormatUpper := '';
  FCaseFormatLower := '';

  FregistryPath := '';

  FStore := dsNone;
  FStoreVersion := 0;

  FFieldIndex := -1;

  FSearchDataSet := nil;
  FCountDataSet := nil;

  FOnSetSearchQuery := nil;
  FOnSetCountQuery := nil;

  FOnInitControls := nil;

  FOnOK := nil;
  FOnCancel := nil;

  FInitializing := False;
  FMaxMessageSet := False;

  FRegistryPath := '';

  FResultQuery := '';

  FCompareFormatDate := '';
  FCompareFormatDateTime := '';
  FCompareFormatTime := '';

  FQuoteChar := '''';
  FDecimalChar := '.';
  FQuotedDateTime := True;
  FAdditionalWhere := '';
  FStartOpen := False;
  FStartPreset := -1;
  FTrueExpression := '1=1';

  FIgnoreEmptyValues := True;
  FClearValueOnFieldChange := True;

  FShowPresets := True;
  FShowPresetsCustomization := False;

  // Creeer privates
  FSearchDialogFieldList := TEstSearchDialogFieldList.Create(Self);
  FSearchPresetList := TEstSearchPresetList.Create(Self);

  // Stel dialog properties in
  if Assigned(FOnSetup) then
    FOnSetup(Self);

  // Stel captions in
  if FSearchStyle = ssModal then
  begin
    actOK.Caption := EstSearchDialogIntl.ButtonOK;
    actCancel.Caption := EstSearchDialogIntl.ButtonCancel;
  end
  else
  begin
    actOK.Caption := EstSearchDialogIntl.ButtonSelect;
    actCancel.Caption := EstSearchDialogIntl.ButtonClose;
  end;

  actMore.Caption := EstSearchDialogIntl.ButtonMore;
  actLess.Caption := EstSearchDialogIntl.ButtonLess;
  actSearch.Caption := EstSearchDialogIntl.ButtonSearch;
  actCustomize.Caption := EstSearchDialogIntl.ButtonCustomize;                  

  lblField.Caption := EstSearchDialogIntl.LabelField;
  lblComparison.Caption := EstSearchDialogIntl.LabelComparison;
  lblValue.Caption := EstSearchDialogIntl.LabelValue;
  lblOperator.Caption := EstSearchDialogIntl.LabelOperator;

  // Stel hints in
  cbxField01.Hint := EstSearchDialogIntl.HintField;
  cbxComparison01.Hint := EstSearchDialogIntl.HintComparison;
  edtValue01.Hint := EstSearchDialogIntl.HintValue;
  cbxOperator01.Hint := EstSearchDialogIntl.HintOperator;
  actMore.Hint := EstSearchDialogIntl.HintMore;
  actLess.Hint := EstSearchDialogIntl.HintLess;
  actSearch.Hint := EstSearchDialogIntl.HintSearch;
  actCustomize.Hint := EstSearchDialogIntl.HintCustomize;
  cbxPreset.Hint := EstSearchDialogIntl.HintPreset;

  // Koppel mouse wheel events
  TDBGridAccessClass(grdResult).OnMouseWheelUp := DoGridMouseWheelUp;
  TDBGridAccessClass(grdResult).OnMouseWheelDown := DoGridMouseWheelDown;

  TEditAccessClass(edtValue01).OnMouseWheelUp := DoGridMouseWheelUp;
  TEditAccessClass(edtValue01).OnMouseWheelDown := DoGridMouseWheelDown;

  btnOK.Caption :='(F2) - &Selecionar';

end;

procedure TFrmEstSearchDialog.FormDestroy(Sender: TObject);
begin
  // Ruim privates op
  FSearchDialogFieldList.Free;
  FSearchPresetList.Free;
end;

procedure TFrmEstSearchDialog.FormShow(Sender: TObject);
begin

   //Caption := Caption+' - '+Screen.FocusedForm.Caption;
  // Zodra het scherm getoond word kan het worden geinitialiseerd
  Initialise;
end;

{
  Procedure : TfrmSearchDialog.SetFieldSettings
  Auteur    : Erik Stok
  Doel      : Stel velden in volgens opgegeven SearchDialogFieldList
}
procedure TFrmEstSearchDialog.SetFieldSettings;
var
  i : Integer;
  f : TEstSearchDialogField;
  d : TField;
begin

  // Loop door alle velden
  for i := 0 to FSearchDataSet.FieldCount - 1 do
  begin

    // Controleer of er voor het veld instellingen zijn gedaan. Zo niet,
    // verberg het dan.
    f := FSearchDialogFieldList.ItemByFieldName(FSearchDataSet.Fields[i].FieldName);

    if Assigned(f) then
    begin

      // Stel veld in volgens specificaties
      FSearchDataSet.Fields[i].DisplayLabel := f.DisplayLabel;

      if f.DisplayWidth <> 0 then
        FSearchDataSet.Fields[i].DisplayWidth := f.DisplayWidth;

      SetStringPropertyByName(FSearchDataSet.Fields[i], 'DisplayFormat', f.DisplayFormat);

      FSearchDataSet.Fields[i].Visible := True;

    end
    else
    begin

      // Verberg veld
      FSearchDataSet.Fields[i].Visible := False;

    end;

  end;

  // Stel de veldvolgorde in
  for i := 0 to FSearchDialogFieldList.Count - 1 do
  begin
    f := TEstSearchDialogField(FSearchDialogFieldList.Items[i]);
    d := FSearchDataSet.FindField(f.FieldName);
    if Assigned(d) then
      d.Index := i;
  end;
end;

{
  Procedure : TfrmSearchDialog.SetSearchDialogFieldList
  Auteur    : Erik Stok
  Doel      : Neem opgegeven zoekveldinstellingen over
}
procedure TFrmEstSearchDialog.SetSearchDialogFieldList(Value: TEstSearchDialogFieldList);
begin
  FSearchDialogFieldList.Assign(Value);
end;

{
  Procedure : TFrmEstSearchDialog.AddPreset
  Auteur    : Erik Stok
  Doel      : Voeg preset uit de lijst toe aan de combobox
}

procedure TFrmEstSearchDialog.AddPreset(Index: Integer);
var
  Preset: String;
begin
  // Alleen toevoegen als er criteria ingesteld zijn
  if FSearchPresetList[Index].Criteria.Count > 0 then
  begin

    if FSearchPresetList[Index].ShortCut <> 0 then
    begin
      Preset := Format('%s (%s)', [FSearchPresetList[Index].Name,
                                   ShortCutToText(FSearchPresetList[Index].ShortCut)]);

      FSearchPresetList[Index].Action := TAction.Create(Self);
      FSearchPresetList[Index].Action.ActionList := aclSearch;
      FSearchPresetList[Index].Action.ShortCut := FSearchPresetList[Index].ShortCut;
      FSearchPresetList[Index].Action.OnExecute := PresetExecute;

    end
    else
    begin
      Preset := FSearchPresetList[Index].Name;
    end;

    cbxPreset.Items.AddObject(Preset, FSearchPresetList[Index]);

    // Corrigeer eventueel maxcriteria
    if FMaxCriteria < FSearchPresetList[Index].Criteria.Count then
      FMaxCriteria := FSearchPresetList[Index].Criteria.Count;
  end;
end;

{
  Procedure : TFrmEstSearchDialog.SetSearchPresetList
  Auteur    : Erik Stok
  Doel      : Neem opgegeven presets over
}
procedure TFrmEstSearchDialog.SetSearchPresetList(const Value: TEstSearchPresetList);
var
  i : Integer;
begin
  // Stel lijst in
  FSearchPresetList.Assign(Value);

  // Zet presets in combobox
  for i := 0 to FSearchPresetList.Count - 1 do
    AddPreset(i);
end;

{
  Procedure : TfrmSearchDialog.Initialise
  Auteur    : Erik Stok
  Doel      : Initialiseer alle scherminstellingen op basis van de properties
}
procedure TFrmEstSearchDialog.Initialise;
var
  i                : Integer;
  f                : TEstSearchDialogField;
  FirstSearchIndex : TEstSearchDialogField;
  so               : TSearchOperator;
  tm               : TTextMetric;
  PresetToSelect   : Integer;
begin
  // Geef aan dat initalisatie bezig is
  FInitializing := True;

  try
    // Controleer instellingen van dataset
    if not Assigned(FSearchDataSet) then
      raise EEstSearchDialogException.Create('Search dataset not set');

    if not Assigned(FCountDataSet) then
      raise EEstSearchDialogException.Create('Count dataset not set');

    if not Assigned(FOnSetSearchQuery) then
      raise EEstSearchDialogException.Create('Search query set event not set');

    if not Assigned(FOnSetCountQuery) then
      raise EEstSearchDialogException.Create('Count query set event not set');

    // Stel datasource van het grid in
    dtsSearch.DataSet := FSearchDataSet;

    // Tot dusverre is er nog geem maximum boodschap getoond
    FMaxMessageSet := False;

    // Vul de combobox met velden waarop gezocht kan worden
    FirstSearchIndex := nil;
    for i := 0 to FSearchDialogFieldList.Count - 1 do
    begin
      f := TEstSearchDialogField(FSearchDialogFieldList.Items[i]);
      if f.Search then
      begin
        cbxField01.Items.AddObject(f.DisplayLabel, f);
        if not Assigned(FirstSearchIndex) then
          FirstSearchIndex := f;
      end;

      // Voeg kolom toe aan het grid
      with grdResult.Columns.Add do
      begin
         FieldName := f.FieldName;
         Title.Caption := f.DisplayLabel;

         // Als er een ColumnDisplayWidth gezet is, gebruik deze dan. Anders,
         // gebruik de DisplayWidth van het veld (door: Marc Geldon)
         if (f.DisplayColumnWidth  > 0) then
           Width := f.DisplayColumnWidth
         else
         begin
           GetTextMetrics(grdResult.Canvas.Handle, tm);
           Width := f.DisplayWidth * (grdResult.Canvas.TextWidth('0') - tm.tmOverhang) + tm.tmOverhang + 4;
         end;
      end;

    end;

    // Stel als standaard het eerste veld in
    if (cbxField01.Items.Count > 0) and Assigned(FirstSearchIndex) then
      cbxField01.ItemIndex := cbxField01.Items.IndexOfObject(FirstSearchIndex);

    // Forceer change
    cbxFieldChange(cbxField01);

    // Wis zoekcriterium
    edtValue01.Text := '';

    // Vul operator combobox
    for so := Low(TSearchOperator) to High(TSearchOperator) do
      cbxOperator01.Items.AddObject(OperatorText(so), Pointer(so));

    // En selecteer 'and' standaard
    cbxOperator01.ItemIndex := 0;

    // Als er een initieel aantal criteria is, stel dat dan in
    if FCriteriaCount <> 1 then
    begin
      i := FCriteriaCount;
      FCriteriaCount := 1;
      while FCriteriaCount < i do
        AddCriterium(FCriteriaCount);
    end;

    // Toon operator alleen als er meerdere criteria mogelijk zijn. Idem voor
    // de meer en minder criteria actions.
    if FMaxCriteria > 1 then
    begin
      lblOperator.Visible := True;
      ShowOperators;
    end
    else
    begin
      lblOperator.Visible := False;
      pnlOperator01.Visible := False;
    end;

    actMore.Visible := FMaxCriteria > 1;
    actMore.Enabled := FMaxCriteria > 1;
    actLess.Visible := FMaxCriteria > 1;
    actLess.Enabled := FMaxCriteria > 1;

    // Stel knoppen in
    actOK.Enabled := False;
    ToggleActionsAndControls;

    // Selecteer een eventueel initeel te kiezen preset
    if (FStartPreset >= 0) and (FStartPreset < FSearchPresetList.Count) then
    begin
      PresetToSelect := cbxPreset.Items.IndexOfObject(FSearchPresetList[FStartPreset]);

      if PresetToSelect <> -1 then
      begin
        cbxPreset.ItemIndex := PresetToSelect;
        cbxPresetChange(cbxPreset);
      end;

    end;

    // Toon preset selectie combobox alleen als er presets zijn en als deze
    // getoond moeten worden
    cbxPreset.Visible := (cbxPreset.Items.Count > 0) and (FShowPresets);

    // Toon customize button alleen als de preset combobx er staat en het
    // in de instellingen staat aangegeven
    actCustomize.Visible := FShowPresets and FShowPresetsCustomization;
    actCustomize.Enabled := actCustomize.Visible;

    if not (csDesigning	in ComponentState) then
    begin
      // Herstel laatste zoekopdracht indien aangegeven
      if FStore <> dsNone then
        LoadSearchFields(FStore = dsFieldsAndValues);

      // Laad custom presets
      LoadCustomPresets;
    end;

    // Zet focus op waarde veld
    edtValue01.SetFocus;

    // Initialiseer basis controls
    InitControls(LineNr(cbxField01));

    // Start met zoekresultaat open indien aangegeven. Anders zet search
    // button als default wanneer lege waarden genegeerd mogen worden.
    if FStartOpen then
    begin
      Search;
    end
    else
    begin
      if FIgnoreEmptyValues then
        InitSearchAgain;
    end;

  finally
    // Geef aan dat initialisatie voorbij is
    FInitializing := False;
  end;
end;

procedure TFrmEstSearchDialog.cbxFieldChange(Sender: TObject);
var
  Line        : String;
  FieldType   : TFieldType;
  FieldObject : TEstSearchDialogField;
  n           : Integer;
  Comparison  : TSearchComparison;
  cbx         : TComboBox;
begin
  // Bepaal welke criteriaregel gebruik wordt
  cbx  := Sender as TComboBox;
  Line := LineNr(Sender);

  // Bepaal veld
  FieldObject := TEstSearchDialogField(cbx.Items.Objects[cbx.ItemIndex]);
  FieldType   := ftUnknown;

  with ComparisonComboBox(Line) do
  begin
    // Wis de combobox met vergelijkingen
    Items.Clear;

    // Bepaal veldtype van huidige selectie
    if cbx.ItemIndex <> -1 then
    begin
      FieldType := FieldObject.FieldType;

      // Vul met de voor dit veldtype geldige vergelijkingen
      for Comparison := Low(TSearchComparison) to High(TSearchComparison) do
      begin

        // Kijk of vergelijking geldig is voor dit veldtype. Zo ja, voeg deze dan
        // toe aan de combobox
        if Comparison in FieldTypeComparisons(FieldType) then
        begin
          // Voeg toe

          Items.AddObject(SearchComparisionText(Comparison), Pointer(Comparison));
        end;

      end;

    end;

    // Kies de standaard selectie. Als die niet geldig is probeer dan de
    // algemene regel
    if FieldObject.DefaultComparison in FieldTypeComparisons(FieldType) then
    begin
      n := Items.IndexOfObject(Pointer(FieldObject.DefaultComparison));
      ItemIndex := n;  // aqui
    end
    else
    begin
      n := Items.IndexOfObject(Pointer(FieldTypeDefaultComparison(FieldType)));
      if n <> -1 then
        ItemIndex := n;    // aqui
    end;

  end;

  // Wis waarde indien aangegeven
  if FClearValueOnFieldChange then
    ValueEdit(Line).Text := '';

  // Stel kleur in
  ColorValue(Line);

  // Initialiseer controls
  InitControls(Line);

  edtValue01.Setfocus;

end;


procedure TFrmEstSearchDialog.actOKExecute(Sender: TObject);
begin
  PerformOK;
end;

procedure TFrmEstSearchDialog.actCancelExecute(Sender: TObject);
begin
  PerformCancel;
end;

{
  Procedure : TfrmSearchDialog.InitOpnieuwZoeken
  Auteur    : Erik Stok
  Doel      : Initialiseer knoppen voor opnieuw zoeken
}
procedure TFrmEstSearchDialog.InitSearchAgain;
begin
  // Zet zoek knop als default
  btnSearch.Default := True;
  btnOK.Default := False;

  // Toggle OK aan de hand van het resultaat
  actOK.Enabled := (FSearchDataSet.Active) and (not FSearchDataSet.IsEmpty);

  // se for SIM... pesquisa ao digitar
  //if RDGPesquisar.ItemIndex=0 then
  //begin
  //   Search;
  //end;

end;

{
  Procedure : TfrmSearchDialog.InitFound
  Auteur    : Erik Stok
  Doel      : Initialiseer knoppen voor gevonden en selecteren
}
procedure TFrmEstSearchDialog.InitFound;
begin
  // Toggle OK aan de hand van het resultaat
  actOK.Enabled := (FSearchDataSet.Active) and (not FSearchDataSet.IsEmpty);

  // Zet OK knop als default en focussed als er data is
  if actOK.Enabled then
  begin
    btnSearch.Default := False;
    btnOK.Default := True;

    if btnSearch.Focused then
      btnOK.Focused;
  end;
end;

procedure TFrmEstSearchDialog.edtValueChange(Sender: TObject);
begin
  InitSearchAgain;
end;

procedure TFrmEstSearchDialog.edtValueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

  procedure PriorRecord;
  begin
    if not FSearchDataSet.Bof then
      FSearchDataSet.Prior;
  end;

  procedure NextRecord;
  begin
    if not FSearchDataSet.Eof then
      FSearchDataSet.Next;
  end;

  procedure PriorField;
  var
    cbx : TComboBox;
    i   : Integer;
  begin
    // Bepaal combobox
    cbx := FieldComboBox(LineNr(Sender));

    // Bepaal vorige item
    i := cbx.ItemIndex - 1;
    if i < 0 then
      i := cbx.Items.Count - 1;

    // Selecteer item
    cbx.ItemIndex := i;                // aqui

    // Forceer change
    cbxFieldChange(cbx);
  end;

  procedure NextField;
  var
    cbx : TComboBox;
    i   : Integer;
  begin
    // Bepaal combobox
    cbx := FieldComboBox(LineNr(Sender));

    // Bepaal volgend item
    i := cbx.ItemIndex + 1;
    if i > (cbx.Items.Count - 1) then
      i := 0;

    // Selecteer item
    cbx.ItemIndex := i;                   // aqui

    // Forceer change
    cbxFieldChange(cbx);
  end;

  procedure PriorComparison;
  var
    cbx : TComboBox;
    i   : Integer;
  begin
    // Bepaal combobox
    cbx := ComparisonComboBox(LineNr(Sender));

    // Bepaal vorige item
    i := cbx.ItemIndex - 1;
    if i < 0 then
      i := cbx.Items.Count - 1;

    // Selecteer item
    cbx.ItemIndex := i;                 // aqui

    // Forceer change
    cbxComparisonChange(cbx);
  end;

  procedure NextComparison;
  var
    cbx : TComboBox;
    i   : Integer;
  begin
    // Bepaal combobox
    cbx := ComparisonComboBox(LineNr(Sender));

    // Bepaal volgend item
    i := cbx.ItemIndex + 1;
    if i > (cbx.Items.Count - 1) then
      i := 0;

    // Selecteer item
    cbx.ItemIndex := i;               // aqui

    // Forceer change
    cbxComparisonChange(cbx);
  end;

  procedure PriorOperator;
  var
    cbx : TComboBox;
    i   : Integer;
  begin
    if StrToIntDef(LineNr(Sender), FCriteriaCount) < FCriteriaCount then
    begin

      // Bepaal combobox
      cbx := OperatorComboBox(LineNr(Sender));

      // Bepaal vorige item
      i := cbx.ItemIndex - 1;
      if i < 0 then
        i := cbx.Items.Count - 1;

      // Selecteer item
      cbx.ItemIndex := i;                // aqui

    end;
  end;

  procedure NextOperator;
  var
    cbx : TComboBox;
    i   : Integer;
  begin
    if StrToIntDef(LineNr(Sender), FCriteriaCount) < FCriteriaCount then
    begin

      // Bepaal combobox
      cbx := OperatorComboBox(LineNr(Sender));

      // Bepaal volgend item
      i := cbx.ItemIndex + 1;
      if i > (cbx.Items.Count - 1) then
        i := 0;

      // Selecteer item
      cbx.ItemIndex := i;               // aqui

    end;
  end;

var
  ArrowAction : TArrowAction;
begin
  // Als er met pijltjestoetsen of page up/down genavigeerd wordt in de
  // waarde editbox, navigeer dan in het grid of in de combo's.
  // Bepaal de te ondernemen actie met pijltjestoetsen op basis van de shiftstate.

  ArrowAction := aaGrid;

  if Shift = [ssCtrl] then
    ArrowAction := aaField;

  if Shift = [ssShift] then
    ArrowAction := aaComparison;

  if Shift = [ssCtrl, ssShift] then
    ArrowAction := aaOperator;

  case Key of
    VK_UP:
      begin
        Key := 0;

        case ArrowAction of
          aaField: PriorField;
          aaComparison: PriorComparison;
          aaOperator: PriorOperator;
          aaGrid: PriorRecord;
        end;

      end;

    VK_DOWN:
      begin
        Key := 0;

        case ArrowAction of
          aaField: NextField;
          aaComparison: NextComparison;
          aaOperator: NextOperator;
          aaGrid: NextRecord;
        end;

      end;

    VK_PRIOR:
      begin
        Key := 0;
        if not FSearchDataSet.Bof then
          FSearchDataSet.MoveBy(-1 * TDBGridAccessClass(grdResult).VisibleRowCount);
      end;

    VK_NEXT:
      begin
        Key := 0;
        if not FSearchDataSet.Eof then
          FSearchDataSet.MoveBy(TDBGridAccessClass(grdResult).VisibleRowCount);
      end;

  end;
end;

procedure TFrmEstSearchDialog.actMoreExecute(Sender: TObject);
begin
  AddCriterium;
end;

procedure TFrmEstSearchDialog.actLessExecute(Sender: TObject);
begin
  DeleteCriterium;
end;

{
  Procedure : TfrmEstSearchDialog.ShowOperators
  Auteur    : Erik Stok
  Doel      : Toon de operator comboboxen overeenkomstig het aantal criterium
              regels, waarbij op de laatste regel natuurlijk geen operator
              gekozen moet kunnen worden.
}
procedure TFrmEstSearchDialog.ShowOperators;
var
  i : Integer;
begin
  // Doe niets als er maar 1 criterium getoond mag worden
  if FMaxCriteria <= 1 then
    Exit;

  // Verberg label als er maar 1 criterium is (door: Marc Geldon)
  if (FCriteriaCount = 1) then
     lblOperator.Hide
  else
     lblOperator.Show;

  // Loop anders door de operators en toon deze, behalve de laatste
  for i := 1 to FCriteriaCount - 1 do
    OperatorComboBox(Format('%.2d', [i])).Visible := True;

  OperatorComboBox(Format('%.2d', [FCriteriaCount])).Visible := False;

end;

{
  Procedure : TfrmEstSearchDialog.GetResultList
  Auteur    : Erik Stok
  Doel      : Geef resultaatrecord in stringlist
}
function TFrmEstSearchDialog.GetResultList: String;
var
  i : Integer;
  l : TStringList;
begin
  // Alleen als er resultaat is wordt dat teruggegeven
  if (FSearchDataSet.Active) and (not FSearchDataSet.IsEmpty) then
  begin

    // Maak lijst om resultaat in op te bouwen
    l := TStringList.Create;

    try

      // Loop door fields en vis alle stringwaarden er uit
      for i := 0 to FSearchDataSet.Fields.Count - 1 do
        l.Add(Format('%s=%s', [FSearchDataSet.Fields[i].FieldName,
                               FSearchDataSet.Fields[i].AsString]));

      // En geef dat terug
      Result := l.Text;

    finally
      // Ruim de lijst op
      l.Free;
    end;

  end
  else
  begin
    // Geef niet terug bij geen resultaat
    Result := '';
  end;
end;

{
  Procedure : TfrmEstSearchDialog.GetResultRecord
  Auteur    : Erik Stok
  Doel      : Geef resultaatrecord in array formaat terug
}
function TFrmEstSearchDialog.GetResultRecord: TEstSearchDialogResultRecord;
var
  i : Integer;
  f : TEstSearchDialogResultField;
begin
  // Alleen als er resultaat is wordt dat teruggegeven
  if (FSearchDataSet.Active) and (not FSearchDataSet.IsEmpty) then
  begin

    // Stel lengte in op aantal velden
    SetLength(Result, FSearchDataSet.Fields.Count);

    // Loop door fields en vis alle stringwaarden er uit . Zet deze in
    // stringlists in de resultaatstringlist
    for i := 0 to FSearchDataSet.Fields.Count - 1 do
    begin
      f.FieldName := FSearchDataSet.Fields[i].FieldName;
      f.FieldValue := FSearchDataSet.Fields[i].AsString;
      f.IsNull := FSearchDataSet.Fields[i].IsNull;

      Result[i] := f;
    end;
  end;
end;


{
  Procedure : TfrmEstSearchDialog.GetResultQuery
  Auteur    : Erik Stok
  Doel      : Geef query waarmee het resultaat bepaald is
}
function TFrmEstSearchDialog.GetResultQuery: String;
begin
  Result := FResultQuery;
end;

{
  Procedure : TfrmEstSearchDialog.LoadSearchFields
  Auteur    : Erik Stok
  Doel      : Laad instellingen laatste zoekactie
}
procedure TFrmEstSearchDialog.LoadSearchFields(IncludeValues: Boolean);
var
  r : TRegistry;
  i : Integer;
  Line : String;
  Count : Integer;
  Version : Integer;

  function ReadItemIndexFromRegistry(ValueName: String; MaxValue: Integer): Integer;
  begin
    // Lees index
    if r.ValueExists(ValueName) then
      Result := r.ReadInteger(ValueName)
    else
      Result := -1;

    // Als index meer dan de maximaal toegstane waarde is, geef dan ook -1
    if Result > MaxValue then
      Result := -1;
  end;

begin

  // Maak referentie naar registry aan
  r := TRegistry.Create;

  try

    // Lees uit current Username
    r.RootKey := HKEY_CURRENT_USER;
    r.Access := KEY_READ;

    // Alleen als sleutel bestaat hoeft gelezen te worden
    if r.OpenKeyReadOnly(FRegistryPath) then
    begin
      // Lees versie nummer. Als dit niet hetzelfde is, beschouw dan alsof er
      // niets opgeslagen was.
      if r.ValueExists(REG_SDL_VERSION) then
        Version := r.ReadInteger(REG_SDL_VERSION)
      else
        Version := FStoreVersion;

      if Version = FStoreVersion then
      begin
        // Lees aantal criteria
        if r.ValueExists(REG_SDL_COUNT) then
          Count := r.ReadInteger(REG_SDL_COUNT)
        else
          Exit;

        // Ga niet over het maximum
        if Count > FMaxCriteria then
          Count := FMaxCriteria;

        // Maak regels aan indien deze niet reeds bestaan
        while not Assigned(FindComponent(Format('pnlCriteriaLine%.2d', [Count]))) do
          AddCriterium;

        // Ruim een eventueel teveel aan regels op
        while Assigned(FindComponent(Format('pnlCriteriaLine%.2d', [Count + 1]))) do
          DeleteCriterium;

        // Lees de criteria instellingen
        for i := 1 to FCriteriaCount do
        begin

          // Bepaal regelnummer
          Line := Format('%.2d', [i]);

          // Lees veld
          with FieldComboBox(Line) do
          begin
            ItemIndex := ReadItemIndexFromRegistry(REG_SDL_FIELD + Line, Items.Count - 1);

            // Forceer change
            if ItemIndex <> -1 then
              cbxFieldChange(FieldComboBox(Line));
          end;

          // Lees comparison
          with ComparisonComboBox(Line) do
          begin
            ItemIndex := ReadItemIndexFromRegistry(REG_SDL_COMPARISON + Line, Items.Count - 1); // ver aqui

            // Forceer change
            if ItemIndex <> -1 then
              cbxComparisonChange(ComparisonComboBox(Line));
          end;

          // Lees value indien aangegeven
          if IncludeValues then
            ValueEdit(Line).Text := r.ReadString(REG_SDL_VALUE + Line);

          // Lees operator als het niet de laatste regel is
          if i < FCriteriaCount then
          begin
            with OperatorComboBox(Line) do
              ItemIndex := ReadItemIndexFromRegistry(REG_SDL_OPERATOR + Line, Items.Count - 1); // ver aqui
          end;

        end;

      end;

    end;

  finally
    r.Free;
  end;
end;

{
  Procedure : TfrmEstSearchDialog.SaveSearchFields
  Auteur    : Erik Stok
  Doel      : Sla deze zoekactie op als laatste zoekactie
}
procedure TFrmEstSearchDialog.SaveSearchFields(IncludeValues: Boolean);
var
  r : TRegistry;
  i : Integer;
  Line : String;
  l : TStringList;
begin
  // Maak referentie naar registry aan
  r := TRegistry.Create;

  try

    // Lees uit current Username
    r.RootKey := HKEY_CURRENT_USER;
    r.Access := KEY_ALL_ACCESS;

    // Alleen als sleutel aangemaakt kan worden wordt er weggeschreven
    if r.OpenKey(FRegistryPath, True) then
    begin

      // Gooi alle values uit de key
      l := TStringList.Create;
      try
        r.GetValueNames(l);
        while l.Count > 0 do
        begin
          r.DeleteValue(l[0]);
          l.Delete(0);
        end;
      finally
        l.Free;
      end;

      // Schrijf versie van opslag
      r.WriteInteger(REG_SDL_VERSION, FStoreVersion);

      // Schrijf aantal criteria
      r.WriteInteger(REG_SDL_COUNT, FCriteriaCount);

      // Schrijf de criteria instellingen
      for i := 1 to FCriteriaCount do
      begin

        // Bepaal regelnummer
        Line := Format('%.2d', [i]);

        // Schrijf veld
        with FieldComboBox(Line) do
          r.WriteInteger(REG_SDL_FIELD + Line, ItemIndex);

        // Schrijf comparison
        with ComparisonComboBox(Line) do
          r.WriteInteger(REG_SDL_COMPARISON + Line, ItemIndex);

        // Schrijf value indien aangegeven
        if IncludeValues then
          r.writeString(REG_SDL_VALUE + Line, ValueEdit(Line).Text);

        // Schrijf operator als het niet de laatste regel is
        if i < FCriteriaCount then
        begin
          with OperatorComboBox(Line) do
            r.WriteInteger(REG_SDL_OPERATOR + Line, ItemIndex);
        end;

      end;

    end;

  finally
    r.Free;
  end;
end;

{
  Procedure : TFrmEstSearchDialog.LoadCustomPresets
  Auteur    : Erik Stok
  Doel      : Laad aangepaste presets uit de registry
}
procedure TFrmEstSearchDialog.LoadCustomPresets;
var
  r : TRegistry;
  i : Integer;
  n : Integer;
  Count : Integer;
  Version : Integer;
  Preset : String;
  PresetName : String;
  PresetShortCut : TShortCut;
  CriteriaCount : Integer;
  Criteria : TEstSearchPresetCriteria;
  Criterium : String;
  FieldName : String;
  SearchComparison : TSearchComparison;
  Value : String;
  Operator : TSearchOperator;
begin
  // Maak referentie naar registry aan
  r := TRegistry.Create;

  try

    // Lees uit current Username
    r.RootKey := HKEY_CURRENT_USER;
    r.Access := KEY_READ;

    // Alleen als sleutel bestaat hoeft gelezen te worden
    if r.OpenKeyReadOnly(FRegistryPath + '\' + REG_SDL_CUSTOMPRESETS) then
    begin
      // Lees versie nummer. Als dit niet hetzelfde is, beschouw dan alsof er
      // niets opgeslagen was.
      if r.ValueExists(REG_SDL_VERSION) then
        Version := r.ReadInteger(REG_SDL_VERSION)
      else
        Version := FStoreVersion;

      if Version = FStoreVersion then
      begin
        // Lees aantal presets
        if r.ValueExists(REG_SDL_CUSTOMPRESETCOUNT) then
          Count := r.ReadInteger(REG_SDL_CUSTOMPRESETCOUNT)
        else
          Exit;

        // Open preset keys 1 voor 1
        for i := 0 to Count - 1 do
        begin
          // Open preset key
          Preset := Format('Preset%.2d', [i + 1]);
          if r.OpenKey(Preset, False) then
          begin

            // Lees de naam en shortcut
            PresetName := r.ReadString(REG_SDL_PRESETNAME);
            PresetShortCut := r.ReadInteger(REG_SDL_PRESETSHORTCUT);

            // Lees aantal criteria
            CriteriaCount := r.ReadInteger(REG_SDL_COUNT);

            // Lees preset criteria
            Criteria := TEstSearchPresetCriteria.Create(nil);
            try
              for n := 1 to CriteriaCount do
              begin
                Criterium := Format('%.2d', [n]);

                FieldName := r.ReadString(REG_SDL_FIELD + Criterium);
                SearchComparison := TSearchComparison(r.ReadInteger(REG_SDL_COMPARISON + Criterium));
                Value := r.ReadString(REG_SDL_VALUE + Criterium);
                Operator := TSearchOperator(r.ReadInteger(REG_SDL_OPERATOR + Criterium));

                Criteria.Add(FieldName, SearchComparison, Value, Operator);
              end;

              // Voeg preset aan de lijst toe
              FSearchPresetList.Add(PresetName, PresetShortCut, Criteria);
              FSearchPresetList[FSearchPresetList.Count - 1].Custom := True;
              AddPreset(FSearchPresetList.Count - 1);
            finally
              Criteria.Free;
            end;

            // Sluit key en open parent
            r.CloseKey;
            r.OpenKeyReadOnly(FRegistryPath + '\' + REG_SDL_CUSTOMPRESETS);
          end;

        end;
      end;

    end;

  finally
    r.Free;
  end;
end;

{
  Procedure : TFrmEstSearchDialog.SaveCustomPresets
  Auteur    : Erik Stok
  Doel      : Sla aangepaste presets op in de registry
}
procedure TFrmEstSearchDialog.SaveCustomPresets;
var
  r : TRegistry;
  i : Integer;
  n : Integer;
  l : TStringList;
  PresetCount : Integer;
  Preset : String;
  Criterium : String;
begin
  // Maak referentie naar registry aan
  r := TRegistry.Create;

  try

    // Lees uit current Username
    r.RootKey := HKEY_CURRENT_USER;
    r.Access := KEY_ALL_ACCESS;

    // Alleen als sleutel aangemaakt kan worden wordt er weggeschreven
    if r.OpenKey(FRegistryPath + '\' + REG_SDL_CUSTOMPRESETS, True) then
    begin

      // Gooi alle values uit de key
      l := TStringList.Create;
      try
        r.GetValueNames(l);
        while l.Count > 0 do
        begin
          r.DeleteValue(l[0]);
          l.Delete(0);
        end;
      finally
        l.Free;
      end;

      // Gooi alle keys uit de key
      l := TStringList.Create;
      try
        r.GetKeyNames(l);
        while l.Count > 0 do
        begin
          r.DeleteKey(l[0]);
          l.Delete(0);
        end;
      finally
        l.Free;
      end;

      // Schrijf versie van opslag
      r.WriteInteger(REG_SDL_VERSION, FStoreVersion);

      // Veronderstel 0 custom presets
      PresetCount := 0;

      // Schrijf de presets
      for i := 0 to FSearchPresetList.Count - 1 do
      begin

        // Alleen custom presets wegschrijven
        if FSearchPresetList[i].Custom then
        begin
          // Bepaal presetnummer
          PresetCount := PresetCount + 1;
          Preset := Format('Preset%.2d', [PresetCount]);

          // Maak preset sleutel aan
          if r.OpenKey(Preset, True) then
          begin

            // Schrijf de naam en shortcut weg
            r.WriteString(REG_SDL_PRESETNAME, FSearchPresetList[i].Name);
            r.WriteInteger(REG_SDL_PRESETSHORTCUT, FSearchPresetList[i].ShortCut);

            // Shrijf het aantal criteria weg
            r.WriteInteger(REG_SDL_COUNT, FSearchPresetList[i].Criteria.Count);

            for n := 0 to FSearchPresetList[i].Criteria.Count - 1do
            begin
              // Bepaal criterium naam
              Criterium := Format('%.2d', [n + 1]);

              r.WriteString(REG_SDL_FIELD + Criterium, FSearchPresetList[i].Criteria[n].FieldName);
              r.WriteInteger(REG_SDL_COMPARISON + Criterium, Ord(FSearchPresetList[i].Criteria[n].Comparison));
              r.WriteString(REG_SDL_VALUE + Criterium, FSearchPresetList[i].Criteria[n].Value);
              r.WriteInteger(REG_SDL_OPERATOR + Criterium, ORd(FSearchPresetList[i].Criteria[n].Operator));
            end;

            // Sluit preset sleutel en open parent
            r.CloseKey;
            r.OpenKey(FRegistryPath + '\' + REG_SDL_CUSTOMPRESETS, True)
          end;
          
        end;

      end;

      // Schrijf aantal presets
      r.WriteInteger(REG_SDL_CUSTOMPRESETCOUNT, PresetCount);

    end;

  finally
    r.Free;
  end;
end;

{
  Procedure : TFrmEstSearchDialog.SetSearchQuery
  Auteur    : Erik Stok
  Doel      : Stel search query in op aanroepen component
}
procedure TFrmEstSearchDialog.SetSearchQuery(SQL: String);
begin
  if Assigned(FOnSetSearchQuery) then
    FOnSetSearchQuery(Self, SQL);
end;

{
  Procedure : TFrmEstSearchDialog.SetCountQuery
  Auteur    : Erik Stok
  Doel      : Stel count query in op aanroepen component
}
procedure TFrmEstSearchDialog.SetCountQuery(SQL: String);
begin
  if Assigned(FOnSetCountQuery) then
    FOnSetCountQuery(Self, SQL);
end;

procedure TFrmEstSearchDialog.cbxComparisonChange(Sender: TObject);
begin
  // Als de operation wordt gewijzigd, controleer dan of dit naar empty
  // is. Zo ja, geef dan door de tekst in de edit box te dimmen aan dat
  // de waarde genegeerd wordt
  ColorValue(LineNr(Sender));

  // Initialiseer controls
  InitControls(LineNr(Sender));
end;

procedure TFrmEstSearchDialog.grdResultDblClick(Sender: TObject);
var
  p : TPoint;
  g : TGridCoord;
begin
  // Bepaal muiscoordinaat waar dubbelklik plaatsvond
  p := grdResult.ScreenToClient(Mouse.CursorPos);

  // Bepaal cel onder muis
  g := grdResult.MouseCoord(p.x, p.y);

  // Dubbelklik was geldig als er een rij staat en OK is enabled
  if (g.Y <> -1) and (actOK.Enabled) then
    PerformOK;

end;

procedure TFrmEstSearchDialog.grdResultKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if KEY=VK_RETURN then
  begin
     grdResultDblClick(Sender);
  end;

end;

{
  Procedure : TFrmEstSearchDialog.PerformOK
  Auteur    : Erik Stok
  Doel      : Voer OK uit (OK knop of dubbelklik)
}
procedure TFrmEstSearchDialog.PerformOK;
begin

  // Geef OK als resultaat voor modal form. Anders voer OnOK uit.
  if FSearchStyle = ssModal then
  begin
    ModalResult := mrOK;
  end
  else
  begin
    if Assigned(FOnOK) then
      FOnOK(Self);
  end;

end;

{
  Procedure : TFrmEstSearchDialog.PerformCancel
  Auteur    : Erik Stok
  Doel      : Voer Cancel uit (alleen knop)
}
procedure TFrmEstSearchDialog.PerformCancel;
begin
  // Geef cancel als resultaat voor modal form. Sluit anders het form.
  if FSearchStyle = ssModal then
    ModalResult := mrCancel
  else
    Close;
end;

constructor TFrmEstSearchDialog.Create(AOwner: TComponent; Mdi: Boolean; OnSetup: TEstSearchDialogSetupEvent);
begin
  FOnSetup := OnSetup;
  FMdi := Mdi;
  FFrmEstSearchDialogPresetCustomizeClass := TFrmEstSearchDialogPresetCustomize;

  inherited Create(AOwner);
end;

procedure TFrmEstSearchDialog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Als het een niet modaal scherm betreft en er is een oncancel event
  // gekoppeld, trigger dan de oncancel
  if (FSearchStyle <> ssModal) and Assigned(FOnCancel) then
    FOnCancel(Self);

  if (FSearchStyle = ssModal) and (not (ModalResult in [mrOK, mrCancel])) then
    ModalResult := mrCancel;

  if not (csDesigning	in ComponentState) then
  begin
    // Sla zoekopdracht op indien opgegeven en niet designtime
    if FStore <> dsNone then
      SaveSearchFields(FStore = dsFieldsAndValues);

    // Sla custom presets op
    SaveCustomPresets;
  end;

  // Ruim non modal form zelf op
  if FSearchStyle <> ssModal then
    Action := caFree;

end;

{
  Procedure : TFrmEstSearchDialog.ColorValue
  Auteur    : Erik Stok
  Doel      : Stel de tekstkleur van de value editbox in aan de hand van de
              vergelijking voor de huidige regel
}
procedure TFrmEstSearchDialog.ColorValue(Line: String);
begin
  with ComparisonComboBox(Line) do
  begin
    if TSearchComparison(Items.Objects[ItemIndex]) in [scEmpty, scNotempty] then
      ValueEdit(Line).Font.Color := clGrayText
    else
      ValueEdit(Line).Font.Color := clWindowText;
  end;
end;

{
  Procedure : TFrmEstSearchDialog.InitControls
  Auteur    : Erik Stok
  Doel      : Initialiseer de controls gebaseerd op de huidige selectie
}

procedure TFrmEstSearchDialog.InitControls(Line: String);
var
  cbxField        : TComboBox;
  cbxComparison   : TComboBox;
  edtValue        : TEdit;
  cbxOperator     : TComboBox;
begin
  cbxField := FieldComboBox(Line);
  cbxComparison := ComparisonComboBox(Line);
  edtValue := ValueEdit(Line);
  cbxOperator := OperatorComboBox(Line);

  DoInitControls(Self, TEstSearchDialogField(cbxField.Items.Objects[cbxField.ItemIndex]),
    cbxField, TSearchComparison(cbxComparison.Items.Objects[cbxComparison.ItemIndex]),
    cbxComparison, edtValue, cbxOperator.Visible, cbxOperator);

end;

{
  Procedure : TFrmEstSearchDialog.DoInitControls
  Auteur    : Erik Stok
  Doel      : Roep de InitControls event handler aan
}

procedure TFrmEstSearchDialog.DoInitControls(Sender: TObject;
  Field: TEstSearchDialogField; FieldControl: TComboBox;
  Comparison: TSearchComparison; ComparisonControl: TComboBox;
  ValueControl: TEdit; UsingOperator: Boolean; OperatorControl: TComboBox);
begin
  // Als de init controls event handler is gekoppeld, roep die dan aan
  // met de betreffende controls en waarden
  if Assigned(FOnInitControls) then
  begin
    FOnInitControls(Self, Field, FieldControl, Comparison, ComparisonControl,
      ValueControl, UsingOperator, OperatorControl);
  end;
end;

procedure TFrmEstSearchDialog.DoCreate;
begin
  inherited;

  // Zet formstyle op mdi indien van toepassing
  if FMdi then
    FormStyle := fsMDIChild;
end;

procedure TFrmEstSearchDialog.PresetExecute(Sender: TObject);
var
  i : Integer;
begin
  // Pak item met gegeven tag uit de lijst van presets
  for i := 0 to FSearchPresetList.Count - 1 do
  begin
    if FSearchPresetList[i].Action = (Sender as TAction) then
    begin
      cbxPreset.ItemIndex := cbxPreset.Items.IndexOfObject(FSearchPresetList[i]);
      Break;
    end;
  end;
  
  // Forceer change
  cbxPresetChange(cbxPreset);
end;

procedure TFrmEstSearchDialog.RDGPesquisar_Click(Sender: TObject);
begin
   edtValue01.Setfocus;
end;

procedure TFrmEstSearchDialog.cbxPresetChange(Sender: TObject);

  function IndexOfField(Items: TStrings; FieldName: String): Integer;
  var
    i : Integer;
  begin
    Result := -1;

    for i := 0 to Items.Count - 1 do
    begin

      if SameText(TEstSearchDialogField(Items.Objects[i]).FieldName, FieldName) then
      begin
        Result := i;
        Break;
      end;

    end;
  end;

var
  p : TEstSearchPresetItem;
  i : Integer;
  Line : String;
  ComboBoxHasFocus: Boolean;
  ValueToFocus: Integer;
begin
  // Als er niets geselecteerd is, breek dan af
  if cbxPreset.ItemIndex = -1 then
    Exit;

  // Onthoud of de combobox focus heeft
  ComboBoxHasFocus := ActiveControl = cbxPreset;

  // Selecteer preset
  p := TEstSearchPresetItem(cbxPreset.Items.Objects[cbxPreset.ItemIndex]);

  // Wis overbodige criteria
  while CriteriaCount > p.Criteria.Count do
    DeleteCriterium;

  // Voeg extra criteria toe
  while CriteriaCount < p.Criteria.Count do
    AddCriterium;

  // Maak criteria aan volgens preset
  for i := 0 to p.Criteria.Count - 1 do
  begin
    // Bepaal regelnummer
    Line := Format('%.2d', [i + 1]);

    // Stel criterium in volgens definitie
    FieldComboBox(Line).ItemIndex := IndexOfField(FieldComboBox(Line).Items, p.Criteria[i].FieldName);

    if FieldComboBox(Line).ItemIndex <> -1 then
      cbxFieldChange(FieldComboBox(Line));

    ComparisonComboBox(Line).ItemIndex := ComparisonComboBox(Line).Items.IndexOfObject(Pointer(p.Criteria[i].Comparison));

    if ComparisonComboBox(Line).ItemIndex = -1 then
      ComparisonComboBox(Line).ItemIndex := 0;

    cbxComparisonChange(ComparisonComboBox(Line));

    ValueEdit(Line).Text := p.Criteria[i].Value;
    ColorValue(Line);

    // Als het niet het laatste criterium is, stel dan de operator in
    if i < (p.Criteria.Count - 1) then
    begin
      // Stel operator in
      OperatorComboBox(Line).ItemIndex := OperatorComboBox(Line).Items.IndexOfObject(Pointer(p.Criteria[i].Operator));
    end;
  end;

  // Sluit combo om rare effecten te voorkomen. Als de combobox zelf geen focus
  // had, spring dan naar de aangewezen initiele value
  if ComboBoxHasFocus then
  begin
    cbxPreset.DroppedDown := False;
  end
  else
  begin
    ValueToFocus := p.Criteria.InitialFocusItemIndex;
    if (ValueToFocus = -1) or (ValueToFocus > (p.Criteria.Count - 1)) then
      ValueToFocus := 0;

    Line := Format('%.2d', [ValueToFocus + 1]);
    ValueEdit(Line).SetFocus;
  end;
end;

procedure TFrmEstSearchDialog.DoGridMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  grdResult.Perform(WM_KeyDown, VK_DOWN, 0);
  Handled := True;
end;

procedure TFrmEstSearchDialog.DoGridMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  grdResult.Perform(WM_KeyDown, VK_UP, 0);
  Handled := True;
end;

procedure TFrmEstSearchDialog.actPriorValueExecute(Sender: TObject);
begin
//
end;

procedure TFrmEstSearchDialog.actNextValueExecute(Sender: TObject);
begin
//
end;

procedure TFrmEstSearchDialog.actCustomizeExecute(Sender: TObject);
var
  i                  : Integer;
  FrmPresetCustomize : TFrmEstSearchDialogPresetCustomize;
  Preset             : TEstSearchPresetItem;
  Criteria           : TEstSearchPresetCriteria;
  FieldObject        : TEstSearchDialogField;
  SearchComparison   : TSearchComparison;
  Value              : String;
  Operator           : TSearchOperator;
  Line               : String;
begin
  // Maak customize form aan
  FrmPresetCustomize := FFrmEstSearchDialogPresetCustomizeClass.Create(nil);
  try
    // Hevel alle custom presets over
    for i := 0 to FSearchPresetList.Count - 1 do
    begin
      if FSearchPresetList[i].Custom then
        FrmPresetCustomize.AddCustomPreset(FSearchPresetList[i]);
    end;

    // Als scherm met OK afgesloten wordt, ga dan aan de slag
    if FrmPresetCustomize.ShowModal = mrOK then
    begin

      // Kijk of er toevoegen gekozen is
      if FrmPresetCustomize.AddSelected then
      begin

        // Maak nieuwe criterialijst aan
        Criteria := TEstSearchPresetCriteria.Create(nil);

        try
          // Vul deze met de huidige zoekopdracht
          for i := 1 to FCriteriaCount do
          begin

            // Bepaal regelnummer
            Line := Format('%.2d', [i]);

            // Bepaal veld
            FieldObject := nil;
            with FieldComboBox(Line) do
            begin
              if ItemIndex <> -1 then
                FieldObject := TEstSearchDialogField(Items.Objects[ItemIndex]);
            end;

            // Bepaal vergelijking
            SearchComparison := scEqual;
            with ComparisonComboBox(Line) do
            begin
              if ItemIndex <> -1 then
                SearchComparison := TSearchComparison(Items.Objects[ItemIndex]);
            end;

            // Bepaal waarde
            with ValueEdit(Line) do
              Value := Text;

            // Bepaal operator
            with OperatorComboBox(Line) do
            begin
              if ItemIndex <> -1 then
                Operator := TSearchOperator(Items.Objects[ItemIndex])
              else
                Operator := soAnd;
            end;

            // Voeg criterium toe als er een veld gekozen is
            if Assigned(FieldObject) then
              Criteria.Add(FieldObject.FieldName, SearchComparison, Value, Operator);

          end;

          // Voeg een nieuwe preset toe met de zojuist gemaakte criteria
          FSearchPresetList.Add(FrmPresetCustomize.NewName,
                                FrmPresetCustomize.NewShortCut,
                                Criteria);
        finally
          Criteria.Free;
        end;

        // Stel in dat het een custom preset is
        Preset := FSearchPresetList[FSearchPresetList.Count - 1];
        Preset.Custom := True;

        // Voeg preset aan de combobox toe
        AddPreset(FSearchPresetList.Count - 1);
      end
      else
      begin
        // Verwijder geselecteerde preset
        i := cbxPreset.Items.IndexOfObject(FrmPresetCustomize.ItemToRemove);
        cbxPreset.Items.Delete(i);
        if Assigned(FrmPresetCustomize.ItemToRemove.Action) then
          FrmPresetCustomize.ItemToRemove.Action.Free;
        FSearchPresetList.Delete(FrmPresetCustomize.ItemToRemove.Index);
      end;

    end;

  finally
    FrmPresetCustomize.Free;
  end;
end;

end.
