{
  Unit   : uEstSearchDialogIntl
  Datum  : 5-5-2004
  Auteur : Erik Stok
  Doel   : Vertalingen van de dialoogvensters
}
unit uEstSearchDialogIntl;

interface

uses
  Classes;

type
  TEstSearchDialogIntl = class(TObject)
  private
    FCaptionDialog: String;
    FLabelField: String;
    FLabelComparison: String;
    FLabelValue: String;
    FLabelOperator: String;

    FButtonMore: String;
    FButtonLess: String;
    FButtonSearch: String;
    FButtonOK: String;
    FButtonCancel: String;
    FButtonSelect: String;
    FButtonClose: String;
    FButtonCustomize: String;

    FHintField: String;
    FHintComparison: String;
    FHintValue: String;
    FHintOperator: String;
    FHintMore: String;
    FHintLess: String;
    FHintSearch: String;
    FHintCustomize: String;
    FHintPreset: String;

    FErrorInvalidDateTimeFormula: String;
    FErrorInvalidDate: String;
    FErrorInvalidTime: String;
    FErrorInvalidDateTime: String;
    FErrorInvalidNumber: String;

    FMessageTooManyRecords: String;

    FDateTimeValueNow: String;
    FDateTimeValueSecond: String;
    FDateTimeValueMinute: String;
    FDateTimeValueHour: String;
    FDateTimeValueDay: String;
    FDateTimeValueWeek: String;
    FDateTimeValueMonth: String;
    FDateTimeValueQuarter: String;
    FDateTimeValueHalfYear: String;
    FDateTimeValueYear: String;

    FDateTimeValueRSecond: String;
    FDateTimeValueRMinute: String;
    FDateTimeValueRHour: String;
    FDateTimeValueRDay: String;
    FDateTimeValueRWeek: String;
    FDateTimeValueRMonth: String;
    FDateTimeValueRQuarter: String;
    FDateTimeValueRYear: String;

    FComparisonContains: String;
    FComparisonBeginsWith: String;
    FComparisonNotBeginsWith: String;
    FComparisonNotContains: String;
    FComparisonEndsWith: String;
    FComparisonNotEndsWith: String;
    FComparisonEmpty: String;
    FComparisonNotEmpty: String;

    FOperatorAnd: String;
    FOperatorOr: String;
    FOperatorAndAll: String;
    FOperatorOrAll: String;

    FCustomPresetAdd: String;
    FCustomPresetRemove: String;
    FCustomPresetDescription: String;
    FCustomPresetShortcut: String;
    FCustomPresetCustomized: String;
    FCustomPresetCaption: String;
    FCustomPresetErrorDescriptionEmpty: String;
    FCustomPresetErrorDescriptionInUse: String;
    FCustomPresetErrorShortcutInUse: String;
  public
    constructor Create;

    procedure DefaultTranslations; virtual;

    property CaptionDialog: String read FCaptionDialog write FCaptionDialog;
    property LabelField: String read FLabelField write FLabelField;
    property LabelComparison: String read FLabelComparison write FLabelComparison;
    property LabelValue: String read FLabelValue write FLabelValue;
    property LabelOperator: String read FLabelOperator write FLabelOperator;

    property ButtonMore: String read FButtonMore write FButtonMore;
    property ButtonLess: String read FButtonLess write FButtonLess;
    property ButtonSearch: String read FButtonSearch write FButtonSearch;
    property ButtonOK: String read FButtonOK write FButtonOK;
    property ButtonCancel: String read FButtonCancel write FButtonCancel;
    property ButtonSelect: String read FButtonSelect write FButtonSelect;
    property ButtonClose: String read FButtonClose write FButtonClose;
    property ButtonCustomize: String read FButtonCustomize write FButtonCustomize;

    property HintField: String read FHintField write FHintField;
    property HintComparison: String read FHintComparison write FHintComparison;
    property HintValue: String read FHintValue write FHintValue;
    property HintOperator: String read FHintOperator write FHintOperator;
    property HintMore: String read FHintMore write FHintMore;
    property HintLess: String read FHintLess write FHintLess;
    property HintSearch: String read FHintSearch write FHintSearch;
    property HintCustomize: String read FHintCustomize write FHintCustomize;
    property HintPreset: String read FHintPreset write FHintPreset;

    property ErrorInvalidDateTimeFormula: String read FErrorInvalidDateTimeFormula write FErrorInvalidDateTimeFormula;
    property ErrorInvalidDate: String read FErrorInvalidDate write FErrorInvalidDate;
    property ErrorInvalidTime: String read FErrorInvalidTime write FErrorInvalidTime;
    property ErrorInvalidDateTime: String read FErrorInvalidDateTime write FErrorInvalidDateTime;
    property ErrorInvalidNumber: String read FErrorInvalidNumber write FErrorInvalidNumber;

    property MessageTooManyRecords: String read FMessageTooManyRecords write FMessageTooManyRecords;

    property DateTimeValueNow: String read FDateTimeValueNow write FDateTimeValueNow;
    property DateTimeValueSecond: String read FDateTimeValueSecond write FDateTimeValueSecond;
    property DateTimeValueMinute: String read FDateTimeValueMinute write FDateTimeValueMinute;
    property DateTimeValueHour: String read FDateTimeValueHour write FDateTimeValueHour;
    property DateTimeValueDay: String read FDateTimeValueDay write FDateTimeValueDay;
    property DateTimeValueWeek: String read FDateTimeValueWeek write FDateTimeValueWeek;
    property DateTimeValueMonth: String read FDateTimeValueMonth write FDateTimeValueMonth;
    property DateTimeValueQuarter: String read FDateTimeValueQuarter write FDateTimeValueQuarter;
    property DateTimeValueHalfYear: String read FDateTimeValueHalfYear write FDateTimeValueHalfYear;
    property DateTimeValueYear: String read FDateTimeValueYear write FDateTimeValueYear;

    property DateTimeValueRSecond: String read FDateTimeValueRSecond write FDateTimeValueRSecond;
    property DateTimeValueRMinute: String read FDateTimeValueRMinute write FDateTimeValueRMinute;
    property DateTimeValueRHour: String read FDateTimeValueRHour write FDateTimeValueRHour;
    property DateTimeValueRDay: String read FDateTimeValueRDay write FDateTimeValueRDay;
    property DateTimeValueRWeek: String read FDateTimeValueRWeek write FDateTimeValueRWeek;
    property DateTimeValueRMonth: String read FDateTimeValueRMonth write FDateTimeValueRMonth;
    property DateTimeValueRQuarter: String read FDateTimeValueRQuarter write FDateTimeValueRQuarter;
    property DateTimeValueRYear: String read FDateTimeValueRYear write FDateTimeValueRYear;

    property ComparisonContains: String read FComparisonContains write FComparisonContains;
    property ComparisonBeginsWith: String read FComparisonBeginsWith write FComparisonBeginsWith;
    property ComparisonNotBeginsWith: String read FComparisonNotBeginsWith write FComparisonNotBeginsWith;
    property ComparisonNotContains: String read FComparisonNotContains write FComparisonNotContains;
    property ComparisonEndsWith: String read FComparisonEndsWith write FComparisonEndsWith;
    property ComparisonNotEndsWith: String read FComparisonNotEndsWith write FComparisonNotEndsWith;
    property ComparisonEmpty: String read FComparisonEmpty write FComparisonEmpty;
    property ComparisonNotEmpty: String read FComparisonNotEmpty write FComparisonNotEmpty;

    property OperatorAnd: String read FOperatorAnd write FOperatorAnd;
    property OperatorOr: String read FOperatorOr write FOperatorOr;
    property OperatorAndAll: String read FOperatorAndAll write FOperatorAndAll;
    property OperatorOrAll: String read FOperatorOrAll write FOperatorOrAll;

    property CustomPresetAdd: String read FCustomPresetAdd write FCustomPresetAdd;
    property CustomPresetRemove: String read FCustomPresetRemove write FCustomPresetRemove;
    property CustomPresetDescription: String read FCustomPresetDescription write FCustomPresetDescription;
    property CustomPresetShortcut: String read FCustomPresetShortcut write FCustomPresetShortcut;
    property CustomPresetCustomized: String read FCustomPresetCustomized write FCustomPresetCustomized;
    property CustomPresetCaption: String read FCustomPresetCaption write FCustomPresetCaption;
    property CustomPresetErrorDescriptionEmpty: String read FCustomPresetErrorDescriptionEmpty write FCustomPresetErrorDescriptionEmpty;
    property CustomPresetErrorDescriptionInUse: String read FCustomPresetErrorDescriptionInUse write FCustomPresetErrorDescriptionInUse;
    property CustomPresetErrorShortcutInUse: String read FCustomPresetErrorShortcutInUse write FCustomPresetErrorShortcutInUse;
  end;

  TEstSearchDialogInternational = class(TComponent)
  private
    FActive: Boolean;

    FCaptionDialog: String;
    FLabelField: String;
    FLabelComparison: String;
    FLabelValue: String;
    FLabelOperator: String;

    FButtonMore: String;
    FButtonLess: String;
    FButtonSearch: String;
    FButtonOK: String;
    FButtonCancel: String;
    FButtonSelect: String;
    FButtonClose: String;
    FButtonCustomize: String;

    FHintField: String;
    FHintComparison: String;
    FHintValue: String;
    FHintOperator: String;
    FHintMore: String;
    FHintLess: String;
    FHintSearch: String;
    FHintCustomize: String;
    FHintPreset: String;

    FErrorInvalidDateTimeFormula: String;
    FErrorInvalidDate: String;
    FErrorInvalidTime: String;
    FErrorInvalidDateTime: String;
    FErrorInvalidNumber: String;

    FMessageTooManyRecords: String;

    FDateTimeValueNow: String;
    FDateTimeValueSecond: String;
    FDateTimeValueMinute: String;
    FDateTimeValueHour: String;
    FDateTimeValueDay: String;
    FDateTimeValueWeek: String;
    FDateTimeValueMonth: String;
    FDateTimeValueQuarter: String;
    FDateTimeValueHalfYear: String;
    FDateTimeValueYear: String;

    FDateTimeValueRSecond: String;
    FDateTimeValueRMinute: String;
    FDateTimeValueRHour: String;
    FDateTimeValueRDay: String;
    FDateTimeValueRWeek: String;
    FDateTimeValueRMonth: String;
    FDateTimeValueRQuarter: String;
    FDateTimeValueRYear: String;

    FComparisonContains: String;
    FComparisonBeginsWith: String;
    FComparisonNotBeginsWith: String;
    FComparisonNotContains: String;
    FComparisonEndsWith: String;
    FComparisonNotEndsWith: String;
    FComparisonEmpty: String;
    FComparisonNotEmpty: String;

    FOperatorAnd: String;
    FOperatorOr: String;
    FOperatorAndAll: String;
    FOperatorOrAll: String;

    FCustomPresetAdd: String;
    FCustomPresetRemove: String;
    FCustomPresetDescription: String;
    FCustomPresetShortcut: String;
    FCustomPresetCustomized: String;
    FCustomPresetCaption: String;
    FCustomPresetErrorDescriptionEmpty: String;
    FCustomPresetErrorDescriptionInUse: String;
    FCustomPresetErrorShortcutInUse: String;
  protected
    procedure SetActive(const Value: Boolean); virtual;

    procedure SetTranslations; virtual;
    procedure DefaultTranslations; virtual;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Active: Boolean read FActive write SetActive;

    property CaptionDialog: String read FCaptionDialog write FCaptionDialog;
    property LabelField: String read FLabelField write FLabelField;
    property LabelComparison: String read FLabelComparison write FLabelComparison;
    property LabelValue: String read FLabelValue write FLabelValue;
    property LabelOperator: String read FLabelOperator write FLabelOperator;

    property ButtonMore: String read FButtonMore write FButtonMore;
    property ButtonLess: String read FButtonLess write FButtonLess;
    property ButtonSearch: String read FButtonSearch write FButtonSearch;
    property ButtonOK: String read FButtonOK write FButtonOK;
    property ButtonCancel: String read FButtonCancel write FButtonCancel;
    property ButtonSelect: String read FButtonSelect write FButtonSelect;
    property ButtonClose: String read FButtonClose write FButtonClose;
    property ButtonCustomize: String read FButtonCustomize write FButtonCustomize;

    property HintField: String read FHintField write FHintField;
    property HintComparison: String read FHintComparison write FHintComparison;
    property HintValue: String read FHintValue write FHintValue;
    property HintOperator: String read FHintOperator write FHintOperator;
    property HintMore: String read FHintMore write FHintMore;
    property HintLess: String read FHintLess write FHintLess;
    property HintSearch: String read FHintSearch write FHintSearch;
    property HintCustomize: String read FHintCustomize write FHintCustomize;
    property HintPreset: String read FHintPreset write FHintPreset;

    property ErrorInvalidDateTimeFormula: String read FErrorInvalidDateTimeFormula write FErrorInvalidDateTimeFormula;
    property ErrorInvalidDate: String read FErrorInvalidDate write FErrorInvalidDate;
    property ErrorInvalidTime: String read FErrorInvalidTime write FErrorInvalidTime;
    property ErrorInvalidDateTime: String read FErrorInvalidDateTime write FErrorInvalidDateTime;
    property ErrorInvalidNumber: String read FErrorInvalidNumber write FErrorInvalidNumber;

    property MessageTooManyRecords: String read FMessageTooManyRecords write FMessageTooManyRecords;

    property DateTimeValueNow: String read FDateTimeValueNow write FDateTimeValueNow;
    property DateTimeValueSecond: String read FDateTimeValueSecond write FDateTimeValueSecond;
    property DateTimeValueMinute: String read FDateTimeValueMinute write FDateTimeValueMinute;
    property DateTimeValueHour: String read FDateTimeValueHour write FDateTimeValueHour;
    property DateTimeValueDay: String read FDateTimeValueDay write FDateTimeValueDay;
    property DateTimeValueWeek: String read FDateTimeValueWeek write FDateTimeValueWeek;
    property DateTimeValueMonth: String read FDateTimeValueMonth write FDateTimeValueMonth;
    property DateTimeValueQuarter: String read FDateTimeValueQuarter write FDateTimeValueQuarter;
    property DateTimeValueHalfYear: String read FDateTimeValueHalfYear write FDateTimeValueHalfYear;
    property DateTimeValueYear: String read FDateTimeValueYear write FDateTimeValueYear;

    property DateTimeValueRSecond: String read FDateTimeValueRSecond write FDateTimeValueRSecond;
    property DateTimeValueRMinute: String read FDateTimeValueRMinute write FDateTimeValueRMinute;
    property DateTimeValueRHour: String read FDateTimeValueRHour write FDateTimeValueRHour;
    property DateTimeValueRDay: String read FDateTimeValueRDay write FDateTimeValueRDay;
    property DateTimeValueRWeek: String read FDateTimeValueRWeek write FDateTimeValueRWeek;
    property DateTimeValueRMonth: String read FDateTimeValueRMonth write FDateTimeValueRMonth;
    property DateTimeValueRQuarter: String read FDateTimeValueRQuarter write FDateTimeValueRQuarter;
    property DateTimeValueRYear: String read FDateTimeValueRYear write FDateTimeValueRYear;

    property ComparisonContains: String read FComparisonContains write FComparisonContains;
    property ComparisonBeginsWith: String read FComparisonBeginsWith write FComparisonBeginsWith;
    property ComparisonNotBeginsWith: String read FComparisonNotBeginsWith write FComparisonNotBeginsWith;
    property ComparisonNotContains: String read FComparisonNotContains write FComparisonNotContains;
    property ComparisonEndsWith: String read FComparisonEndsWith write FComparisonEndsWith;
    property ComparisonNotEndsWith: String read FComparisonNotEndsWith write FComparisonNotEndsWith;
    property ComparisonEmpty: String read FComparisonEmpty write FComparisonEmpty;
    property ComparisonNotEmpty: String read FComparisonNotEmpty write FComparisonNotEmpty;

    property OperatorAnd: String read FOperatorAnd write FOperatorAnd;
    property OperatorOr: String read FOperatorOr write FOperatorOr;
    property OperatorAndAll: String read FOperatorAndAll write FOperatorAndAll;
    property OperatorOrAll: String read FOperatorOrAll write FOperatorOrAll;

    property CustomPresetAdd: String read FCustomPresetAdd write FCustomPresetAdd;
    property CustomPresetRemove: String read FCustomPresetRemove write FCustomPresetRemove;
    property CustomPresetDescription: String read FCustomPresetDescription write FCustomPresetDescription;
    property CustomPresetShortcut: String read FCustomPresetShortcut write FCustomPresetShortcut;
    property CustomPresetCustomized: String read FCustomPresetCustomized write FCustomPresetCustomized;
    property CustomPresetCaption: String read FCustomPresetCaption write FCustomPresetCaption;
    property CustomPresetErrorDescriptionEmpty: String read FCustomPresetErrorDescriptionEmpty write FCustomPresetErrorDescriptionEmpty;
    property CustomPresetErrorDescriptionInUse: String read FCustomPresetErrorDescriptionInUse write FCustomPresetErrorDescriptionInUse;
    property CustomPresetErrorShortcutInUse: String read FCustomPresetErrorShortcutInUse write FCustomPresetErrorShortcutInUse;
  end;

  // EstSearchDialogIntl singleton functie
  function EstSearchDialogIntl: TEstSearchDialogIntl;

implementation

var
  InternalEstSearchDialogIntl: TEstSearchDialogIntl;

function EstSearchDialogIntl: TEstSearchDialogIntl;
begin
  // Maak als er nog geen instantie is van InternalEstSearchDialogIntl een
  // nieuwe instantie aan
  if not Assigned(InternalEstSearchDialogIntl) then
    InternalEstSearchDialogIntl := TEstSearchDialogIntl.Create;

  // Geef de gemaakte instantie als resultaat
  Result := InternalEstSearchDialogIntl;
end;

{ TEstSearchDialogIntl }

constructor TEstSearchDialogIntl.Create;
begin
  DefaultTranslations;
end;

{
  Procedure : TEstSearchDialogIntl.DefaultTranslations
  Auteur    : Erik Stok
  Doel      : Stel standaardvertalingen in
}
procedure TEstSearchDialogIntl.DefaultTranslations;
begin
  // Caption
  FCaptionDialog := 'Pesquisa';

  // Labels
  //FLabelField := 'Campos:';
  FLabelField := 'Pesquisar no campo:';

  FLabelComparison := 'O&pção:';
  FLabelValue := 'Procurar por:';
  FLabelOperator := 'Ope&rador:';

  // Buttons
  FButtonMore := 'Mais';
  FButtonLess := 'Menos';
  FButtonSearch := 'Pesquisa';
  FButtonOK := '&Ok';
  FButtonCancel := 'Cancelar';
  FButtonSelect := 'Selecione';
  FButtonClose := 'Fechar';
  FButtonCustomize := 'Personalizar...';

  // Hints
  FHintField := 'Selecionar campo para pesquisar por';
  FHintComparison := 'Selecione a forma de comparar contendo valor';
  FHintValue := 'Digite o que desejea pesquisar';
  FHintOperator := 'Selecione a forma de combinar com outros critérios';
  FHintMore := 'Adicione os critérios de pesquisa';
  FHintLess := 'Remova os critérios de pesquisa';
  FHintSearch := 'Pesquisa (pressione ENTER após digitar)';
  FHintCustomize := 'Personalizar pesquisa pré-definida na lista de critérios';
  FHintPreset := 'Selecione uma lista pré-definida';

  // Errors
  FErrorInvalidDateTimeFormula := 'Forma de data/hora é inválida';
  FErrorInvalidDate := 'Data inválida';
  FErrorInvalidTime := 'Hora inválida';
  FErrorInvalidDateTime := 'data/hora inválida';
  FErrorInvalidNumber := 'Número inválido';

  // Messages
  //FMessageTooManyRecords := 'The nr of result records %0:d exceeds the maximum of %1:d. Use mais critérios específico de pesquisa.';
  FMessageTooManyRecords := 'O número de registros %0:d excedeu o limite maximo de %1:d. Use mais critérios específico de pesquisa.';

  // Speciale datetime waarden
  FDateTimeValueNow := 'NOW';
  FDateTimeValueSecond := 'SECOND';
  FDateTimeValueMinute := 'MINUTE';
  FDateTimeValueHour := 'HOUR';
  FDateTimeValueDay := 'DAY';
  FDateTimeValueWeek := 'WEEK';
  FDateTimeValueMonth := 'MONTH';
  FDateTimeValueQuarter := 'QUARTER';
  FDateTimeValueHalfYear := 'HALFYEAR';
  FDateTimeValueYear := 'YEAR';

  FDateTimeValueRSecond := 'RSECOND';
  FDateTimeValueRMinute := 'RMINUTE';
  FDateTimeValueRHour := 'RHOUR';
  FDateTimeValueRDay := 'RDAY';
  FDateTimeValueRWeek := 'RWEEK';
  FDateTimeValueRMonth := 'RMONTH';
  FDateTimeValueRQuarter := 'RQUARTER';
  FDateTimeValueRYear := 'RYEAR';

  // Comparison text
  FComparisonBeginsWith := 'inície com';
  FComparisonNotBeginsWith := 'não inicia com';
  FComparisonContains := 'contenha';
  FComparisonNotContains := 'não deve conter';
  FComparisonEndsWith := 'termina com';
  FComparisonNotEndsWith := 'não termina com';
  FComparisonEmpty := 'está vazio';
  FComparisonNotEmpty := 'não está vazio';

  // Operator text
  FOperatorAnd := 'and';
  FOperatorOr := 'or';
  FOperatorAndAll := 'and all';
  FOperatorOrAll := 'or all';

  // Custom preset text
  FCustomPresetAdd := 'Store current search criteria';
  FCustomPresetRemove := 'Remove selected predefined search';
  FCustomPresetDescription := 'Description:';
  FCustomPresetShortcut := 'Shortcut key:';
  FCustomPresetCustomized := 'Customized:';
  FCustomPresetCaption := 'Customize';
  FCustomPresetErrorDescriptionEmpty := 'Description must have a value';
  FCustomPresetErrorDescriptionInUse := 'Description is already in use';
  FCustomPresetErrorShortcutInUse := 'Shortcut is already in use';
end;

{ TEstSearchDialogInternational }

constructor TEstSearchDialogInternational.Create(AOwner: TComponent);
begin
  inherited;

  // Stel in op de standaard
  FCaptionDialog := EstSearchDialogIntl.CaptionDialog;

  FLabelField := EstSearchDialogIntl.LabelField;
  FLabelComparison := EstSearchDialogIntl.LabelComparison;
  FLabelValue := EstSearchDialogIntl.LabelValue;
  FLabelOperator := EstSearchDialogIntl.LabelOperator;

  FButtonMore := EstSearchDialogIntl.ButtonMore;
  FButtonLess := EstSearchDialogIntl.ButtonLess;
  FButtonSearch := EstSearchDialogIntl.ButtonSearch;
  FButtonOK := EstSearchDialogIntl.ButtonOK;
  FButtonCancel := EstSearchDialogIntl.ButtonCancel;
  FButtonSelect := EstSearchDialogIntl.ButtonSelect;
  FButtonClose := EstSearchDialogIntl.ButtonClose;
  FButtonCustomize := EstSearchDialogIntl.ButtonCustomize;

  FHintField := EstSearchDialogIntl.HintField;
  FHintComparison := EstSearchDialogIntl.HintComparison;
  FHintValue := EstSearchDialogIntl.HintValue;
  FHintOperator := EstSearchDialogIntl.HintOperator;
  FHintMore := EstSearchDialogIntl.HintMore;
  FHintLess := EstSearchDialogIntl.HintLess;
  FHintSearch := EstSearchDialogIntl.HintSearch;
  FHintCustomize := EstSearchDialogIntl.HintCustomize;
  FHintPreset := EstSearchDialogIntl.HintPreset;

  FErrorInvalidDateTimeFormula := EstSearchDialogIntl.ErrorInvalidDateTimeFormula;
  FErrorInvalidDate := EstSearchDialogIntl.ErrorInvalidDate;
  FErrorInvalidTime := EstSearchDialogIntl.ErrorInvalidTime;
  FErrorInvalidDateTime := EstSearchDialogIntl.ErrorInvalidDateTime;
  FErrorInvalidNumber := EstSearchDialogIntl.ErrorInvalidNumber;

  FMessageTooManyRecords := EstSearchDialogIntl.MessageTooManyRecords;

  FDateTimeValueNow := EstSearchDialogIntl.DateTimeValueNow;
  FDateTimeValueSecond := EstSearchDialogIntl.DateTimeValueSecond;
  FDateTimeValueMinute := EstSearchDialogIntl.DateTimeValueMinute;
  FDateTimeValueHour := EstSearchDialogIntl.DateTimeValueHour;
  FDateTimeValueDay := EstSearchDialogIntl.DateTimeValueDay;
  FDateTimeValueWeek := EstSearchDialogIntl.DateTimeValueWeek;
  FDateTimeValueMonth := EstSearchDialogIntl.DateTimeValueMonth;
  FDateTimeValueQuarter := EstSearchDialogIntl.DateTimeValueQuarter;
  FDateTimeValueHalfYear := EstSearchDialogIntl.DateTimeValueHalfYear;
  FDateTimeValueYear := EstSearchDialogIntl.DateTimeValueYear;

  FDateTimeValueRSecond := EstSearchDialogIntl.DateTimeValueRSecond;
  FDateTimeValueRMinute := EstSearchDialogIntl.DateTimeValueRMinute;
  FDateTimeValueRHour := EstSearchDialogIntl.DateTimeValueRHour;
  FDateTimeValueRDay := EstSearchDialogIntl.DateTimeValueRDay;
  FDateTimeValueRWeek := EstSearchDialogIntl.DateTimeValueRWeek;
  FDateTimeValueRMonth := EstSearchDialogIntl.DateTimeValueRMonth;
  FDateTimeValueRQuarter := EstSearchDialogIntl.DateTimeValueRQuarter;
  FDateTimeValueRYear := EstSearchDialogIntl.DateTimeValueRYear;

  FComparisonContains := EstSearchDialogIntl.ComparisonContains;
  FComparisonBeginsWith := EstSearchDialogIntl.ComparisonBeginsWith;
  FComparisonNotBeginsWith := EstSearchDialogIntl.ComparisonNotBeginsWith;
  FComparisonNotContains := EstSearchDialogIntl.ComparisonNotContains;
  FComparisonEndsWith := EstSearchDialogIntl.ComparisonEndsWith;
  FComparisonNotEndsWith := EstSearchDialogIntl.ComparisonNotEndsWith;
  FComparisonEmpty := EstSearchDialogIntl.ComparisonEmpty;
  FComparisonNotEmpty := EstSearchDialogIntl.ComparisonNotEmpty;

  FOperatorAnd := EstSearchDialogIntl.OperatorAnd;
  FOperatorOr := EstSearchDialogIntl.OperatorOr;
  FOperatorAndAll := EstSearchDialogIntl.OperatorAndAll;
  FOperatorOrAll := EstSearchDialogIntl.OperatorOrAll;

  FCustomPresetAdd := EstSearchDialogIntl.CustomPresetAdd;
  FCustomPresetRemove := EstSearchDialogIntl.CustomPresetRemove;
  FCustomPresetDescription := EstSearchDialogIntl.CustomPresetDescription;
  FCustomPresetShortcut := EstSearchDialogIntl.CustomPresetShortcut;
  FCustomPresetCustomized := EstSearchDialogIntl.CustomPresetCustomized;
  FCustomPresetCaption := EstSearchDialogIntl.CustomPresetCaption;
  FCustomPresetErrorDescriptionEmpty := EstSearchDialogIntl.CustomPresetErrorDescriptionEmpty;
  FCustomPresetErrorDescriptionInUse := EstSearchDialogIntl.CustomPresetErrorDescriptionInUse;
  FCustomPresetErrorShortcutInUse := EstSearchDialogIntl.CustomPresetErrorShortcutInUse;
end;

procedure TEstSearchDialogInternational.SetActive(const Value: Boolean);
begin
  FActive := Value;

  if FActive then
    SetTranslations;
end;

{
  Procedure : TEstSearchDialogInternational.SetTranslations
  Auteur    : Erik Stok
  Doel      : Stel vertalingen in
}
procedure TEstSearchDialogInternational.SetTranslations;
begin
  // Stel singleton in op waarden van het component
  EstSearchDialogIntl.CaptionDialog := FCaptionDialog;

  EstSearchDialogIntl.LabelField := FLabelField;
  EstSearchDialogIntl.LabelComparison := FLabelComparison;
  EstSearchDialogIntl.LabelValue := FLabelValue;
  EstSearchDialogIntl.LabelOperator := FLabelOperator;

  EstSearchDialogIntl.ButtonMore := FButtonMore;
  EstSearchDialogIntl.ButtonLess := FButtonLess;
  EstSearchDialogIntl.ButtonSearch := FButtonSearch;
  EstSearchDialogIntl.ButtonOK := FButtonOK;
  EstSearchDialogIntl.ButtonCancel := FButtonCancel;
  EstSearchDialogIntl.ButtonSelect := FButtonSelect;
  EstSearchDialogIntl.ButtonClose := FButtonClose;
  EstSearchDialogIntl.ButtonCustomize := FButtonCustomize;

  EstSearchDialogIntl.HintField := FHintField;
  EstSearchDialogIntl.HintComparison := FHintComparison;
  EstSearchDialogIntl.HintValue := FHintValue;
  EstSearchDialogIntl.HintOperator := FHintOperator;
  EstSearchDialogIntl.HintMore := FHintMore;
  EstSearchDialogIntl.HintLess := FHintLess;
  EstSearchDialogIntl.HintSearch := FHintSearch;
  EstSearchDialogIntl.HintCustomize := FHintCustomize;
  EstSearchDialogIntl.HintPreset := FHintPreset;

  EstSearchDialogIntl.ErrorInvalidDateTimeFormula := FErrorInvalidDateTimeFormula;
  EstSearchDialogIntl.ErrorInvalidDate := FErrorInvalidDate;
  EstSearchDialogIntl.ErrorInvalidTime := FErrorInvalidTime;
  EstSearchDialogIntl.ErrorInvalidDateTime := FErrorInvalidDateTime;
  EstSearchDialogIntl.ErrorInvalidNumber := FErrorInvalidNumber;

  EstSearchDialogIntl.MessageTooManyRecords := FMessageTooManyRecords;

  EstSearchDialogIntl.DateTimeValueNow := FDateTimeValueNow;
  EstSearchDialogIntl.DateTimeValueSecond := FDateTimeValueSecond;
  EstSearchDialogIntl.DateTimeValueMinute := FDateTimeValueMinute;
  EstSearchDialogIntl.DateTimeValueHour := FDateTimeValueHour;
  EstSearchDialogIntl.DateTimeValueDay := FDateTimeValueDay;
  EstSearchDialogIntl.DateTimeValueWeek := FDateTimeValueWeek;
  EstSearchDialogIntl.DateTimeValueMonth := FDateTimeValueMonth;
  EstSearchDialogIntl.DateTimeValueQuarter := FDateTimeValueQuarter;
  EstSearchDialogIntl.DateTimeValueHalfYear := FDateTimeValueHalfYear;
  EstSearchDialogIntl.DateTimeValueYear := FDateTimeValueYear;

  EstSearchDialogIntl.DateTimeValueRSecond := FDateTimeValueRSecond;
  EstSearchDialogIntl.DateTimeValueRMinute := FDateTimeValueRMinute;
  EstSearchDialogIntl.DateTimeValueRHour := FDateTimeValueRHour;
  EstSearchDialogIntl.DateTimeValueRDay := FDateTimeValueRDay;
  EstSearchDialogIntl.DateTimeValueRWeek := FDateTimeValueRWeek;
  EstSearchDialogIntl.DateTimeValueRMonth := FDateTimeValueRMonth;
  EstSearchDialogIntl.DateTimeValueRQuarter := FDateTimeValueRQuarter;
  EstSearchDialogIntl.DateTimeValueRYear := FDateTimeValueRYear;

  EstSearchDialogIntl.ComparisonContains := FComparisonContains;
  EstSearchDialogIntl.ComparisonBeginsWith := FComparisonBeginsWith;
  EstSearchDialogIntl.ComparisonNotBeginsWith := FComparisonNotBeginsWith;
  EstSearchDialogIntl.ComparisonNotContains := FComparisonNotContains;
  EstSearchDialogIntl.ComparisonEndsWith := FComparisonEndsWith;
  EstSearchDialogIntl.ComparisonNotEndsWith := FComparisonNotEndsWith;
  EstSearchDialogIntl.ComparisonEmpty := FComparisonEmpty;
  EstSearchDialogIntl.ComparisonNotEmpty := FComparisonNotEmpty;

  EstSearchDialogIntl.OperatorAnd := FOperatorAnd;
  EstSearchDialogIntl.OperatorOr := FOperatorOr;
  EstSearchDialogIntl.OperatorAndAll := FOperatorAndAll;
  EstSearchDialogIntl.OperatorOrAll := FOperatorOrAll;

  EstSearchDialogIntl.CustomPresetAdd := FCustomPresetAdd;
  EstSearchDialogIntl.CustomPresetRemove := FCustomPresetRemove;

  EstSearchDialogIntl.CustomPresetDescription := FCustomPresetDescription;
  EstSearchDialogIntl.CustomPresetShortcut := FCustomPresetShortcut;
  EstSearchDialogIntl.CustomPresetCustomized := FCustomPresetCustomized;
  EstSearchDialogIntl.CustomPresetCaption := FCustomPresetCaption;
  EstSearchDialogIntl.CustomPresetErrorDescriptionEmpty := FCustomPresetErrorDescriptionEmpty;
  EstSearchDialogIntl.CustomPresetErrorDescriptionInUse := FCustomPresetErrorDescriptionInUse;
  EstSearchDialogIntl.CustomPresetErrorShortcutInUse := FCustomPresetErrorShortcutInUse;
end;

{
  Procedure : TEstSearchDialogInternational.DefaultTranslations
  Auteur    : Erik Stok
  Doel      : Stel vertalingen op standaard waarden in
}

procedure TEstSearchDialogInternational.DefaultTranslations;
begin
  InternalEstSearchDialogIntl.DefaultTranslations;
end;

initialization
  // Initialiseer singleton interne variabele op leeg
  InternalEstSearchDialogIntl := nil;

finalization
  // Ruim eventuele singleton instantie op
  if Assigned(InternalEstSearchDialogIntl) then
    InternalEstSearchDialogIntl.Free;

end.
