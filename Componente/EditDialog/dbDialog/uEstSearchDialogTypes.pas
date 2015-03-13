{
  Unit   : uEstSearchDialogTypes
  Datum  : 6-12-2003
  Auteur : Erik Stok
  Doel   : Collection en CollectionItem classes voor de zoekvelddefinities
}

unit uEstSearchDialogTypes;

interface

uses 
  Classes, Controls, StdCtrls, DB, SysUtils, ActnList, uEstSearchDialogConst;

type

  TEstSearchDialogField = class(TCollectionItem)
  private
    FFieldName: String;
    FWhereSyntax: String;
    FDisplayLabel: String;
    FDisplayWidth: Integer;
    FFieldType: TFieldType;
    FSearch: Boolean;
    FEmptyOperation: TSearchEmptyOperation;
    FDisplayFormat: String;
    FDisplayColumnWidth: Integer;
    FDefaultComparison: TSearchComparison;
    FSearchCase: TSearchCase;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
  published
    property FieldName: String read FFieldName write FFieldName;
    property WhereSyntax: String read FWhereSyntax write FWhereSyntax;
    property DisplayLabel: String read FDisplayLabel write FDisplayLabel;
    property DisplayFormat: String read FDisplayFormat write FDisplayFormat;
    property DisplayWidth: Integer read FDisplayWidth write FDisplayWidth;
    property DisplayColumnWidth: Integer read FDisplayColumnWidth write FDisplayColumnWidth;
    property FieldType: TFieldType read FFieldType write FFieldType;
    property Search: Boolean read FSearch write FSearch;
    property EmptyOperation: TSearchEmptyOperation read FEmptyOperation write FEmptyOperation;
    property DefaultComparison: TSearchComparison read FDefaultComparison write FDefaultComparison;
    property SearchCase: TSearchCase read FSearchCase write FSearchCase;
  end;

  TEstSearchDialogFieldList = class(TCollection)
  private
    FOwner: TPersistent;
  protected
    function GetOwner: TPersistent; override;

    function GetEstSearchDialogField(Index: Integer): TEstSearchDialogField; virtual;
    procedure SetEstSearchDialogField(Index: Integer; const Value: TEstSearchDialogField); virtual;
  public
    constructor Create(AOwner: TPersistent);

    procedure Add(FieldName: String;
                  WhereSyntax: String;
                  DisplayLabel: String;
                  DisplayWidth: Integer;
                  DisplayFormat: String;
                  DisplayColumnWidth: Integer;
                  FieldType: TFieldType;
                  Search: Boolean;
                  DefaultComparison: TSearchComparison;
                  SearchCase: TSearchCase); virtual;

    procedure Delete(FieldName: String); overload; virtual;

    function IndexOf(FieldName: String): Integer; virtual;

    function ItemByFieldName(FieldName: String): TEstSearchDialogField;

    property EstSearchDialogFields[Index: Integer]: TEstSearchDialogField
                                                 read GetEstSearchDialogField
                                                 write SetEstSearchDialogField; default;
  end;

  TEstSearchDialogResultField = record
    FieldName: String;
    FieldValue: String;
    IsNull: Boolean;
  end;

  TEstSearchDialogResultRecord = array of TEstSearchDialogResultField;

  TEstSearchDialogStore = (dsNone, dsFields, dsFieldsAndValues);

  TEstSearchDialogDefault = (ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax,
                             ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath,
                             ddDialogCaption, ddDialogWidth, ddDialogHeight,
                             ddStore, ddCompareFormatDate, ddCompareFormatTime,
                             ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar,
                             ddDecimalChar, ddTrueExpression, ddStartOpen,
                             ddIgnoreEmptyValues, ddShowPresets,
                             ddClearValueOnFieldChange, ddShowPresetsCustomization,
                             ddShowHint);

  TEstSearchDialogDefaultSet = set of TEstSearchDialogDefault;

  TEstSearchDialogSetSqlEvent = procedure(Sender: TObject; SQL: String) of object;

  TEstSearchDialogBeforeExecuteQueryEvent = procedure(Sender: TObject; SQL: String) of object;
  TEstSearchDialogAfterExecuteQueryEvent = procedure(Sender: TObject; SQL: String; DataSet: TDataSet) of object;

  TEstSearchDialogSetupEvent = procedure(Sender: TObject) of object;

  TEstSearchDialogInitControlsEvent = procedure(Sender: TObject;
                                                Field: TEstSearchDialogField;
                                                FieldControl: TComboBox;
                                                Comparison: TSearchComparison;
                                                ComparisonControl: TComboBox;
                                                ValueControl: TEdit;
                                                UsingOperator: Boolean;
                                                OperatorControl: TComboBox) of object;

  EEstSearchDialogException = class(Exception);

  TEstSearchDialogCriterium = class(TCollectionItem)
  private
    FFieldName: String;
    FComparison: TSearchComparison;
    FValue: String;
    FOperator: TSearchOperator;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
  published
    property FieldName: String read FFieldName write FFieldName;
    property Comparison: TSearchComparison read FComparison write FComparison;
    property Value: String read FValue write FValue;
    property Operator: TSearchOperator read FOperator write FOperator;
  end;

  TEstSearchPresetCriteria = class(TCollection)
  private
    FOwner: TPersistent;
    FInitialFocusItemIndex: Integer;
  protected
    function GetOwner: TPersistent; override;

    function GetCriteriaItem(Index: Integer): TEstSearchDialogCriterium; virtual;
    procedure SetCriteriaItem(Index: Integer; const Value: TEstSearchDialogCriterium); virtual;
  public
    constructor Create(AOwner: TPersistent);

    procedure Add(FieldName: String;
                  Comparison: TSearchComparison;
                  Value: String;
                  Operator: TSearchOperator); virtual;

    procedure Delete(FieldName: String); overload; virtual;

    function IndexOf(FieldName: String): Integer; virtual;

    function ItemByFieldName(FieldName: String): TEstSearchDialogCriterium;

    property CriteriaItems[Index: Integer]: TEstSearchDialogCriterium
                                              read GetCriteriaItem
                                              write SetCriteriaItem; default;
  published
    property InitialFocusItemIndex: Integer read FInitialFocusItemIndex
                                            write FInitialFocusItemIndex;
  end;

  TEstSearchPresetItem = class(TCollectionItem)
  private
    FName: String;
    FCriteria: TEstSearchPresetCriteria;
    FShortCut: TShortCut;
    FAction: TAction;
    FCustom: Boolean;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;

    property Action: TAction read FAction write FAction;
    property Custom: Boolean read FCustom write FCustom;
  published
    property Name: String read FName write FName;
    property ShortCut: TShortCut read FShortCut write FShortCut;
    property Criteria: TEstSearchPresetCriteria read FCriteria write FCriteria;
  end;

  TEstSearchPresetList = class(TCollection)
  private
    FOwner: TPersistent;
  protected
    function GetOwner: TPersistent; override;

    function GetPresetItem(Index: Integer): TEstSearchPresetItem; virtual;
    procedure SetPresetItem(Index: Integer; const Value: TEstSearchPresetItem); virtual;
  public
    procedure Add(Name: String;
                  ShortCut: TShortCut;
                  Criteria: TEstSearchPresetCriteria); virtual;
    constructor Create(AOwner: TPersistent);
    property PresetItems[Index: Integer]: TEstSearchPresetItem read GetPresetItem write SetPresetItem; default;
  end;

implementation

{ TEstSearchDialogField }

constructor TEstSearchDialogField.Create(Collection: TCollection);
begin
  inherited Create(Collection);

  // Initialiseer privates
  FFieldName := '';
  FWhereSyntax := '';
  FDisplayLabel := '';
  FDisplayFormat := '';
  FDisplayWidth := 0;
  FFieldType := ftUnknown;
  FDefaultComparison := scEqual;
  FDisplayColumnWidth := 0;
  FSearch := True;
  FEmptyOperation := eoNull;
  FSearchCase := scUpper;
end;

destructor TEstSearchDialogField.Destroy;
begin
  inherited;
end;

{
  Procedure : TEstSearchDialogField.AssignTo
  Auteur    : Erik Stok
  Doel      : Assign deze TEstSearchDialogField aan een ander
}
procedure TEstSearchDialogField.AssignTo(Dest: TPersistent);
var
  DestAsEstSearchDialogField: TEstSearchDialogField;
begin
  if Dest is TEstSearchDialogField then
  begin
    DestAsEstSearchDialogField := (Dest as TEstSearchDialogField);

    // Kopieer alle properties naar het dest object
    DestAsEstSearchDialogField.FieldName := FFieldName;
    DestAsEstSearchDialogField.WhereSyntax := FWhereSyntax;
    DestAsEstSearchDialogField.DisplayLabel := FDisplayLabel;
    DestAsEstSearchDialogField.DisplayWidth := FDisplayWidth;
    DestAsEstSearchDialogField.DisplayFormat := FDisplayFormat;
    DestAsEstSearchDialogField.FieldType := FFieldType;
    DestAsEstSearchDialogField.DefaultComparison := FDefaultComparison;
    DestAsEstSearchDialogField.DisplayColumnWidth := FDisplayColumnWidth;
    DestAsEstSearchDialogField.Search := FSearch;
    DestAsEstSearchDialogField.EmptyOperation := FEmptyOperation;
    DestAsEstSearchDialogField.SearchCase := FSearchCase;
  end
  else
  begin
    inherited AssignTo(Dest);
  end;
end;

{ TEstSearchDialogFieldList }

constructor TEstSearchDialogFieldList.Create(AOwner: TPersistent);
begin
  inherited Create(TEstSearchDialogField);

  // Onthoud owner
  FOwner := AOwner;
end;

{
  Procedure : TEstSearchDialogFieldList.GetOwner
  Auteur    : Erik Stok
  Doel      : Owner wordt anders teruggegeven vanwege alternatieve constructor
}
function TEstSearchDialogFieldList.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

{
  Procedure : TEstSearchDialogFieldList.Add
  Auteur    : Erik Stok
  Doel      : Voeg een nieuw veld toe aan de lijst volgens opgegeven parameters
}
procedure TEstSearchDialogFieldList.Add(FieldName: String;
                                        WhereSyntax: String;
                                        DisplayLabel: String;
                                        DisplayWidth: Integer;
                                        DisplayFormat: String;
                                        DisplayColumnWidth: Integer;
                                        FieldType: TFieldType;
                                        Search: Boolean;
                                        DefaultComparison: TSearchComparison;
                                        SearchCase: TSearchCase);
var
  f : TEstSearchDialogField;
begin
  // Controleer of het betreffende veld niet reeds in de lijst aanwezig is
  if IndexOf(FieldName) <> -1 then
    raise Exception.Create('Duplicate searchdialog field');

  // Maak een nieuw searchdialog field aan
  f := (inherited Add) as TEstSearchDialogField;

  // Vul alle properties volgens opgegevens parameters
  f.FieldName := FieldName;
  f.WhereSyntax := WhereSyntax;
  f.DisplayLabel := DisplayLabel;
  f.DisplayWidth := DisplayWidth;
  f.DisplayFormat := DisplayFormat;
  f.DisplayColumnWidth := DisplayColumnWidth;
  f.FieldType := FieldType;
  f.Search := Search;
  f.DefaultComparison := DefaultComparison;
  f.SearchCase := SearchCase;
end;

{
  Procedure : TEstSearchDialogFieldList.Delete
  Auteur    : Erik Stok
  Doel      : Gooi een bepaald veld uit de lijst
}
procedure TEstSearchDialogFieldList.Delete(FieldName: String);
var
  o : TObject;
begin
  o := ItemByFieldName(FieldName);
  if Assigned(o) then
    o.Free
  else
    raise Exception.CreateFmt('Item with fieldname %s not found', [FieldName]);
end;

{
  Procedure : TEstSearchDialogFieldList.IndexOf
  Auteur    : Erik Stok
  Doel      : Bepaal de index van een zeker veld in de lijst
}
function TEstSearchDialogFieldList.IndexOf(FieldName: String): Integer;
var
  i : Integer;
begin
  // Standaard resultaat
  Result := -1;

  // Loop door de lijst
  for i := 0 to Count - 1 do
  begin

    // Als de veldnaam overeenkomt, geef dan de huidige index terug
    if SameText(TEstSearchDialogField(Items[i]).FieldName, FieldName) then
    begin
      Result := i;
      Break;
    end;

  end;
end;

{
  Procedure : TEstSearchDialogFieldList.ItemByFieldName
  Auteur    : Erik Stok
  Doel      : Geef een specifiek item uit de lijst terug op basis van veldnaam
}
function TEstSearchDialogFieldList.ItemByFieldName(FieldName: String): TEstSearchDialogField;
var
  i : Integer;
begin
  // Zoek item
  i := IndexOf(FieldName);

  // Indien gevonden, geef dan het item terug. Anders nil.
  if i <> -1 then
    Result := TEstSearchDialogField(Items[i])
  else
    Result := nil;
end;

function TEstSearchDialogFieldList.GetEstSearchDialogField(Index: Integer): TEstSearchDialogField;
begin
  Result := TEstSearchDialogField(Items[Index]);
end;

procedure TEstSearchDialogFieldList.SetEstSearchDialogField(Index: Integer;
  const Value: TEstSearchDialogField);
begin
  Items[Index] := Value;
end;

{ TEstSearchDialogCriterium }

constructor TEstSearchDialogCriterium.Create(Collection: TCollection);
begin
  inherited;

  FFieldName := '';
  FComparison := scLess;
  FValue := '';
  FOperator := soAnd;
end;

procedure TEstSearchDialogCriterium.AssignTo(Dest: TPersistent);
var
  DestSearchDialogCriterium: TEstSearchDialogCriterium;
begin
  if Dest is TEstSearchDialogCriterium then
  begin
    DestSearchDialogCriterium := (Dest as TEstSearchDialogCriterium);

    // Kopieer alle properties naar het dest object
    DestSearchDialogCriterium.FieldName := FFieldName;
    DestSearchDialogCriterium.FComparison := FComparison;
    DestSearchDialogCriterium.FValue := FValue;
    DestSearchDialogCriterium.FOperator := FOperator;
  end
  else
  begin
    inherited AssignTo(Dest);
  end;
end;

{ TEstSearchPresetCriteria }

constructor TEstSearchPresetCriteria.Create(AOwner: TPersistent);
begin
  inherited Create(TEstSearchDialogCriterium);

  FOwner := AOwner;
  FInitialFocusItemIndex := -1;
end;

function TEstSearchPresetCriteria.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TEstSearchPresetCriteria.Add(FieldName: String;
  Comparison: TSearchComparison; Value: String; Operator: TSearchOperator);
var
  c : TEstSearchDialogCriterium;
begin
  // Maak een nieuw criterium aan
  c := (inherited Add) as TEstSearchDialogCriterium;

  // Vul alle properties volgens opgegevens parameters
  c.FieldName := FieldName;
  c.Comparison := Comparison;
  c.Value := Value;
  c.Operator := Operator;
end;

function TEstSearchPresetCriteria.IndexOf(FieldName: String): Integer;
var
  i : Integer;
begin
  // Standaard resultaat
  Result := -1;

  // Loop door de lijst
  for i := 0 to Count - 1 do
  begin

    // Als de veldnaam overeenkomt, geef dan de huidige index terug
    if SameText(TEstSearchDialogCriterium(Items[i]).FieldName, FieldName) then
    begin
      Result := i;
      Break;
    end;

  end;
end;

procedure TEstSearchPresetCriteria.Delete(FieldName: String);
var
  o : TObject;
begin
  o := ItemByFieldName(FieldName);
  if Assigned(o) then
    o.Free
  else
    raise Exception.CreateFmt('Item with fieldname %s not found', [FieldName]);
end;

function TEstSearchPresetCriteria.ItemByFieldName(FieldName: String): TEstSearchDialogCriterium;
var
  i : Integer;
begin
  // Zoek item
  i := IndexOf(FieldName);

  // Indien gevonden, geef dan het item terug. Anders nil.
  if i <> -1 then
    Result := TEstSearchDialogCriterium(Items[i])
  else
    Result := nil;
end;


function TEstSearchPresetCriteria.GetCriteriaItem(
  Index: Integer): TEstSearchDialogCriterium;
begin
  Result := TEstSearchDialogCriterium(Items[Index]);
end;

procedure TEstSearchPresetCriteria.setCriteriaItem(Index: Integer;
  const Value: TEstSearchDialogCriterium);
begin
  Items[Index] := Value;
end;

{ TEstSearchPresetItem }

constructor TEstSearchPresetItem.Create(Collection: TCollection);
begin
  inherited Create(Collection);

  // Initialiseer privates
  if Assigned(Collection) then
    FCriteria := TEstSearchPresetCriteria.Create(Collection.Owner)
  else
    FCriteria := TEstSearchPresetCriteria.Create(nil);

  FAction := nil;
  FCustom := False;
end;

destructor TEstSearchPresetItem.Destroy;
begin
  // Ruim privates op
  FCriteria.Free;

  inherited;
end;

procedure TEstSearchPresetItem.AssignTo(Dest: TPersistent);
var
  DestSearchPresetItem: TEstSearchPresetItem;
begin
  if Dest is TEstSearchPresetItem then
  begin
    DestSearchPresetItem := (Dest as TEstSearchPresetItem);

    // Kopieer alle properties naar het dest object
    DestSearchPresetItem.Name := FName;
    DestSearchPresetItem.ShortCut := FShortCut;
    DestSearchPresetItem.Criteria.Assign(FCriteria);
    DestSearchPresetItem.Criteria.InitialFocusItemIndex := FCriteria.InitialFocusItemIndex;
  end
  else
  begin
    inherited AssignTo(Dest);
  end;
end;

{ TEstSearchPresetList }

constructor TEstSearchPresetList.Create(AOwner: TPersistent);
begin
  inherited Create(TEstSearchPresetItem);

  FOwner := AOwner;
end;

function TEstSearchPresetList.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TEstSearchPresetList.Add(Name: String; ShortCut: TShortCut;
  Criteria: TEstSearchPresetCriteria);
var
  p : TEstSearchPresetItem;
begin
  // Maak een nieuwe preset aan
  p := (inherited Add) as TEstSearchPresetItem;

  // Vul alle properties volgens opgegevens parameters
  p.Name := Name;
  p.ShortCut := ShortCut;
  p.Criteria.Assign(Criteria);
  p.Criteria.InitialFocusItemIndex := Criteria.InitialFocusItemIndex;
end;

function TEstSearchPresetList.GetPresetItem(Index: Integer): TEstSearchPresetItem;
begin
  Result := TEstSearchPresetItem(Items[Index]);
end;

procedure TEstSearchPresetList.SetPresetItem(Index: Integer;
  const Value: TEstSearchPresetItem);
begin
  Items[Index] := Value;
end;

end.

