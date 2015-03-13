{
  Unit   : uEstSearchDialogDefaults
  Datum  : 12-9-2004
  Auteur : Erik Stok
  Doel   : Defaults voor searchdialogs
}
unit uEstSearchDialogDefaults;

interface

uses
  Classes, uEstSearchDialogTypes, uEstSearchDialogConst, uEstSearchDialogIntl;

type

  TEstSearchDialogDefaults = class(TComponent)
  private
    FStartOpen: Boolean;
    FQuotedDateTime: Boolean;
    FDecimalChar: Char;
    FQuoteChar: Char;
    FDialogHeight: Integer;
    FMaxCriteria: Integer;
    FCriteriaCount: Integer;
    FMax: Integer;
    FDialogWidth: Integer;
    FTrueExpression: String;
    FCaseFormatLower: String;
    FRegistryPath: string;
    FCaseFormatUpper: String;
    FCompareFormatTime: String;
    FCompareFormatDateTime: String;
    FCompareFormatDate: String;
    FDialogCaption: String;
    FStore: TEstSearchDialogStore;
    FSearchStyle: TSearchStyle;
    FClearValueOnFieldChange: Boolean;
    FShowPresets: Boolean;
    FShowPresetsCustomization: Boolean;
    FShowHint: Boolean;
    FIgnoreEmptyValues: Boolean;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property SearchStyle: TSearchStyle read FSearchStyle write FSearchStyle default ssModal;

    property CriteriaCount: Integer read FCriteriaCount write FCriteriaCount default 1;
    property MaxCriteria: Integer read FMaxCriteria write FMaxCriteria default 1;

    property Max: Integer read FMax write FMax default 0;

    property CaseFormatUpper: String read FCaseFormatUpper write FCaseFormatUpper;
    property CaseFormatLower: String read FCaseFormatLower write FCaseFormatLower;

    property RegistryPath: string read FRegistryPath write FRegistryPath;

    property DialogCaption: String read FDialogCaption write FDialogCaption;
    property DialogWidth: Integer read FDialogWidth write FDialogWidth;
    property DialogHeight: Integer read FDialogHeight write FDialogHeight;

    property Store: TEstSearchDialogStore read FStore write FStore;

    property CompareFormatDate: String read FCompareFormatDate write FCompareFormatDate;
    property CompareFormatTime: String read FCompareFormatTime write FCompareFormatTime;
    property CompareFormatDateTime: String read FCompareFormatDateTime write FCompareFormatDateTime;
    property QuotedDateTime: Boolean read FQuotedDateTime write FQuotedDateTime default True;

    property QuoteChar: Char read FQuoteChar write FQuoteChar default '''';
    property DecimalChar: Char read FDecimalChar write FDecimalChar default '.';

    property TrueExpression: String read FTrueExpression write FTrueExpression;
    property StartOpen: Boolean read FStartOpen write FStartOpen default False;

    property IgnoreEmptyValues: Boolean read FIgnoreEmptyValues write FIgnoreEmptyValues default True;
    property ClearValueOnFieldChange: Boolean read FClearValueOnFieldChange write FClearValueOnFieldChange default True;

    property ShowHint: Boolean read FShowHint write FShowHint default False;

    property ShowPresets: Boolean read FShowPresets write FShowPresets default True;
    property ShowPresetsCustomization: Boolean read FShowPresetsCustomization
                                               write FShowPresetsCustomization;
  end;

implementation

{ TEstSearchDialogDefaults }

constructor TEstSearchDialogDefaults.Create(AOwner: TComponent);
begin
  inherited;

  // Init privates
  FMaxCriteria := 1;
  FCriteriaCount := 1;
  FMax := 0;

  FStore := dsFields;

  FRegistryPath := '';

  FDialogCaption := EstSearchDialogIntl.CaptionDialog;
  FDialogWidth := 0;
  FDialogHeight := 0;

  FCompareFormatDate := 'DDMMYYYY';
  FCompareFormatTime := 'HHMMSS';
  FCompareFormatDateTime := 'DDMMYYYY';
  FQuotedDateTime := True;

  FQuoteChar := '''';
  FDecimalChar := '.';

  FTrueExpression := '1=1';
  FStartOpen := False;
  FSearchStyle := ssModal;

  FClearValueOnFieldChange := True;
  FShowPresets := True;
  FShowPresetsCustomization := False;
  FShowHint := False;
  FIgnoreEmptyValues := True;

  FCaseFormatLower := '';
  FCaseFormatUpper := '';
end;

end.
