{
  Unit   : fEstSearchDialogEditor
  Datum  : 19-9-2004
  Auteur : Erik Stok
  Doel   : Search dialog field designer form
}
unit fEstSearchDialogEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, ExtCtrls, Buttons, Db, TypInfo, Registry,

  fEstSearchDialog,
  {uEstSearchDialog,}
  IDBEdit,
  uEstSearchDialogTypes,
  uEstSearchDialogConst,
  fEstSearchDialogEditorFieldGeneration,
  fEstSearchDialogEditorQueryResult,
  fEstSearchDialogBaseEditor, System.Actions;

type
  TFrmEstSearchDialogEditor = class(TFrmEstSearchDialogBaseEditor)
    pnlMain: TPanel;
    pnlButtons: TPanel;
    pnlControls: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    pnlProperties: TPanel;
    pnlFields: TPanel;
    pnlData: TPanel;
    pnlFieldsHeader: TPanel;
    pnlFieldsList: TPanel;
    lbxFields: TListBox;
    lblFields: TLabel;
    btnAddField: TSpeedButton;
    pnlDataHeader: TPanel;
    pnlDataSearchQuery: TPanel;
    pnlDataCountQuery: TPanel;
    splQuery: TSplitter;
    mmoSearchQuery: TMemo;
    mmoCountQuery: TMemo;
    Label1: TLabel;
    btnGenerateFields: TSpeedButton;
    btnTestSearchQuery: TSpeedButton;
    btnTestCountQuery: TSpeedButton;
    btnDeleteField: TSpeedButton;
    btnMoveFieldUp: TSpeedButton;
    pnlPropertiesHeader: TPanel;
    Label2: TLabel;
    pnlPropertiesDetails: TPanel;
    aclMain: TActionList;
    actGenerateFields: TAction;
    actTestSearchQuery: TAction;
    actTestCountQuery: TAction;
    actAddField: TAction;
    actDeleteField: TAction;
    actMoveFieldUp: TAction;
    actMoveFieldDown: TAction;
    btnMoveFieldDown: TSpeedButton;
    lblFieldName: TLabel;
    lblWhereSyntax: TLabel;
    lblDisplayLabel: TLabel;
    lblDisplayWidth: TLabel;
    lblFieldType: TLabel;
    lblWhenEmpty: TLabel;
    lblDisplayFormat: TLabel;
    lblDefaultComparison: TLabel;
    lblSearch: TLabel;
    lblColumnWidth: TLabel;
    lblSearchCase: TLabel;
    edtFieldName: TEdit;
    edtWhereSyntax: TEdit;
    edtDisplayLabel: TEdit;
    edtDisplayWidth: TEdit;
    cbxFieldType: TComboBox;
    cbxEmptyOperation: TComboBox;
    edtDisplayFormat: TEdit;
    cbxDefaultComparison: TComboBox;
    cbxSearch: TComboBox;
    edtDisplayColumnWidth: TEdit;
    cbxSearchCase: TComboBox;
    pnlDataQueries: TPanel;
    actTest: TAction;
    btnTest: TButton;
    actPriorField: TAction;
    actNextField: TAction;
    actSelectAll: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lbxFieldsClick(Sender: TObject);
    procedure edtFieldNameExit(Sender: TObject);
    procedure edtFieldNameKeyPress(Sender: TObject; var Key: Char);
    procedure edtWhereSyntaxExit(Sender: TObject);
    procedure edtWhereSyntaxKeyPress(Sender: TObject; var Key: Char);
    procedure edtDisplayLabelExit(Sender: TObject);
    procedure edtDisplayLabelKeyPress(Sender: TObject; var Key: Char);
    procedure edtDisplayWidthExit(Sender: TObject);
    procedure edtDisplayWidthKeyPress(Sender: TObject; var Key: Char);
    procedure edtDisplayColumnWidthExit(Sender: TObject);
    procedure edtDisplayColumnWidthKeyPress(Sender: TObject; var Key: Char);
    procedure edtDisplayFormatExit(Sender: TObject);
    procedure edtDisplayFormatKeyPress(Sender: TObject; var Key: Char);
    procedure cbxFieldTypeExit(Sender: TObject);
    procedure cbxFieldTypeKeyPress(Sender: TObject; var Key: Char);
    procedure cbxEmptyOperationExit(Sender: TObject);
    procedure cbxEmptyOperationKeyPress(Sender: TObject; var Key: Char);
    procedure cbxDefaultComparisonExit(Sender: TObject);
    procedure cbxDefaultComparisonKeyPress(Sender: TObject; var Key: Char);
    procedure cbxSearchCaseExit(Sender: TObject);
    procedure cbxSearchCaseKeyPress(Sender: TObject; var Key: Char);
    procedure cbxSearchExit(Sender: TObject);
    procedure cbxSearchKeyPress(Sender: TObject; var Key: Char);
    procedure actTestSearchQueryExecute(Sender: TObject);
    procedure actTestCountQueryExecute(Sender: TObject);
    procedure actGenerateFieldsExecute(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure actTestExecute(Sender: TObject);
    procedure actAddFieldExecute(Sender: TObject);
    procedure actDeleteFieldExecute(Sender: TObject);
    procedure actMoveFieldUpExecute(Sender: TObject);
    procedure actMoveFieldDownExecute(Sender: TObject);
    procedure actPriorFieldExecute(Sender: TObject);
    procedure actNextFieldExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
  private
    FMultiSelectProperties: TList;
    FSearchDialog: TIDBEdit;
    FSearchDialogClass: TEstSearchDialogClass;
    FDisplayWidthList: TStringList;
    FDisplayColumnWidthList: TStringList;
    FDisplayFormatList: TStringList;
    FFieldTypeList: TStringList;
    FEmptyOperationList: TStringList;
    FDefaultComparisonList: TStringList;
    FSearchCaseList: TStringList;
    FSearchList: TStringList;
    FDialogWidth: Integer;
    FDialogHeight: Integer;
  private
    procedure ToggleActions;
    procedure ValidateSearchQuery;
    procedure ValidateCountQuery;
    procedure ValidateDefaultSearch;

    function AddField(FieldName: String;
                      WhereSyntax: String;
                      DisplayLabel: String;
                      DisplayWidth: Integer;
                      DisplayColumnWidth: Integer;
                      DisplayFormat: String;
                      FieldType: TFieldType;
                      EmptyOperation: TSearchEmptyOperation;
                      DefaultComparison: TSearchComparison;
                      SearchCase: TSearchCase;
                      Search: Boolean): Integer;

    procedure ClearProperties;
    procedure ToggleProperties;

    procedure SetFieldName;
    procedure SetWhereSyntax;
    procedure SetDisplayLabel;
    procedure SetDisplayWidth;
    procedure SetDisplayColumnWidth;
    procedure SetDisplayFormat;
    procedure SetFieldType;
    procedure SetEmptyOperation;
    procedure SetDefaultComparision;
    procedure SetSearchCase;
    procedure SetSearch;

    procedure SelectField;

    procedure ClearFieldListBox; 
  protected

    procedure UpdateForm(ASearchDialog: TIDBEdit); virtual;
    procedure UpdateSearchDialog(ASearchDialog: TIDBEdit); virtual;

    procedure SetSearchDialog(const Value: TIDBEdit); virtual;

    function SearchDataSet: TDataSet; virtual; abstract;
    function CountDataSet: TDataSet; virtual; abstract;
    procedure SetSearchSQL(SQL: String); virtual; abstract;
    procedure SetCountSQL(SQL: String); virtual; abstract;

    procedure ReadValuesFromRegistry(Registry: TRegistry); override;
    procedure WriteValuesToRegistry(Registry: TRegistry); override;
  public
    procedure SetDialogSize(DialogWidth: Integer; DialogHeight: Integer); virtual;
    procedure SetFieldDisplayWidth(FieldName: String; DisplayWidth: Integer); virtual;
    procedure SetFieldDisplayColumnWidth(FieldName: String; DisplayColumnWidth: Integer); virtual;
    procedure SetFieldOrder(FieldName: String; Index: Integer); virtual;

    //property SearchDialog : TIDBEdit read FSearchDialog write SetSearchDialog;
    property SearchDialog : TIDBEdit read FSearchDialog write SetSearchDialog;
    property SearchDialogClass : TEstSearchDialogClass read FSearchDialogClass write FSearchDialogClass;
  end;

implementation

{$R *.dfm}

{ TFrmEstSearchDialogEditor }

function TFrmEstSearchDialogEditor.AddField(FieldName: String;
                                            WhereSyntax: String;
                                            DisplayLabel: String;
                                            DisplayWidth: Integer;
                                            DisplayColumnWidth: Integer;
                                            DisplayFormat: String;
                                            FieldType: TFieldType;
                                            EmptyOperation: TSearchEmptyOperation;
                                            DefaultComparison: TSearchComparison;
                                            SearchCase: TSearchCase;
                                            Search: Boolean): Integer;
var
  f : TEstSearchDialogField;
begin
  // Maak item aan
  f := TEstSearchDialogField.Create(nil);

  f.FieldName := FieldName;
  f.WhereSyntax := WhereSyntax;
  f.DisplayLabel := DisplayLabel;
  f.DisplayWidth := DisplayWidth;
  f.DisplayColumnWidth := DisplayColumnWidth;
  f.DisplayFormat := DisplayFormat;
  f.FieldType := FieldType;
  f.EmptyOperation := EmptyOperation;
  f.DefaultComparison := DefaultComparison;
  f.SearchCase := SearchCase;
  f.Search := Search;

  // Voeg item toe
  Result := lbxFields.Items.AddObject(f.FieldName, f);
end;

procedure TFrmEstSearchDialogEditor.FormCreate(Sender: TObject);
var
  t : TFieldType;
  s : TSearchComparison;
  c : TSearchCase;
  e : TSearchEmptyOperation;
begin
  // Stel de lijst van multi select property controls in
  FMultiSelectProperties := TList.Create;

  with FMultiSelectProperties do
  begin
    Add(edtDisplayWidth);
    Add(edtDisplayColumnWidth);
    Add(edtDisplayFormat);
    Add(cbxFieldType);
    Add(cbxEmptyOperation);
    Add(cbxDefaultComparison);
    Add(cbxSearchCase);
    Add(cbxSearch);
  end;

  FSearchDialog := nil;
  FSearchDialogClass := nil;

  // Maak property stringlists aan
  FDisplayWidthList := TStringList.Create;
  FDisplayColumnWidthList := TStringList.Create;
  FDisplayFormatList := TStringList.Create;
  FFieldTypeList := TStringList.Create;
  FEmptyOperationList := TStringList.Create;
  FDefaultComparisonList := TStringList.Create;
  FSearchCaseList := TStringList.Create;
  FSearchList := TStringList.Create;

  // Stel property stringlists in
  FDisplayWidthList.Sorted := True;
  FDisplayWidthList.Duplicates := dupIgnore;
  FDisplayColumnWidthList.Sorted := True;
  FDisplayColumnWidthList.Duplicates := dupIgnore;
  FDisplayFormatList.Sorted := True;
  FDisplayFormatList.Duplicates := dupIgnore;
  FFieldTypeList.Sorted := True;
  FFieldTypeList.Duplicates := dupIgnore;
  FEmptyOperationList.Sorted := True;
  FEmptyOperationList.Duplicates := dupIgnore;
  FDefaultComparisonList.Sorted := True;
  FDefaultComparisonList.Duplicates := dupIgnore;
  FSearchCaseList.Sorted := True;
  FSearchCaseList.Duplicates := dupIgnore;
  FSearchList.Sorted := True;
  FSearchList.Duplicates := dupIgnore;

  // Vul fieldtype combobox met alle bekende fieldtypes
  cbxFieldType.Items.Clear;
  for t := Low(TFieldType) to High(TFieldType) do
    cbxFieldType.Items.AddObject(GetEnumName(TypeInfo(TFieldType), Ord(t)), TObject(t));

  // Vul default comparison combobox met alle bekende vergelijkingen
  cbxDefaultComparison.Items.Clear;
  for s := Low(TSearchComparison) to High(TSearchComparison) do
    cbxDefaultComparison.Items.AddObject(GetEnumName(TypeInfo(TSearchComparison), Ord(s)), TObject(s));

  // Vul empty operation combobox met alle bekende operations
  cbxEmptyOperation.Items.Clear;
  for e := Low(TSearchEmptyOperation) to High(TSearchEmptyOperation) do
    cbxEmptyOperation.Items.AddObject(GetEnumName(TypeInfo(TSearchEmptyOperation), Ord(e)), TObject(e));

  // Vul search case combobox met alle bekende cases
  cbxSearchCase.Items.Clear;
  for c := Low(TSearchCase) to High(TSearchCase) do
    cbxSearchCase.Items.AddObject(GetEnumName(TypeInfo(TSearchCase), Ord(c)), TObject(c));
end;

procedure TFrmEstSearchDialogEditor.FormDestroy(Sender: TObject);
begin
  // Wis inhoud van de field listbox zodat alle zelf aangemaakte
  // objecten netjes worden opgeruimd
  ClearFieldListBox;

  // Ruim privates op
  FMultiSelectProperties.Free;

  FDisplayWidthList.Free;
  FDisplayColumnWidthList.Free;
  FDisplayFormatList.Free;
  FFieldTypeList.Free;
  FEmptyOperationList.Free;
  FDefaultComparisonList.Free;
  FSearchCaseList.Free;
  FSearchList.Free;
end;

procedure TFrmEstSearchDialogEditor.SetSearchDialog(const Value: TIDBEdit);
begin
  // Zet private
  FSearchDialog := Value;

  // Zet search dialog in het form
  UpdateForm(FSearchDialog);

  // Stel actions in
  ToggleActions;
end;

procedure TFrmEstSearchDialogEditor.UpdateForm(ASearchDialog: TIDBEdit);
var
  i : Integer;
begin
  // Zet queries
  mmoSearchQuery.Lines.Assign(ASearchDialog.SearchQuery);
  mmoCountQuery.Lines.Assign(ASearchDialog.CountQuery);

  // Zet fields
  for i := 0 to ASearchDialog.SearchDialogFieldList.Count - 1 do
  begin
    with FSearchDialog.SearchDialogFieldList[i] do
      AddField(FieldName, WhereSyntax, DisplayLabel, DisplayWidth,
                 DisplayColumnWidth, DisplayFormat, FieldType, EmptyOperation,
                 DefaultComparison, SearchCase, Search);
  end;

  // Kopieer afmetingen
  FDialogWidth := ASearchDialog.DialogWidth;
  FDialogHeight := ASearchDialog.DialogHeight;
end;

procedure TFrmEstSearchDialogEditor.UpdateSearchDialog(ASearchDialog: TIDBEdit);
var
  i : Integer;
begin
  // Stel afmetingen in
  ASearchDialog.DialogWidth := FDialogWidth;
  ASearchDialog.DialogHeight := FDialogHeight;

  // Zet queries
  ASearchDialog.SearchQuery.Text := mmoSearchQuery.Lines.Text;
  ASearchDialog.CountQuery.Text := mmoCountQuery.Lines.Text;

  // Zet fieldlist
  ASearchDialog.SearchDialogFieldList.Clear;

  for i := 0 to lbxFields.Items.Count - 1 do
  begin
    with TEstSearchDialogField(lbxFields.Items.Objects[i]) do
      ASearchDialog.SearchDialogFieldList.Add(FieldName, WhereSyntax, DisplayLabel,
                                                DisplayWidth, DisplayFormat,
                                                DisplayColumnWidth, FieldType,
                                                Search, DefaultComparison, SearchCase);
  end;
end;

procedure TFrmEstSearchDialogEditor.lbxFieldsClick(Sender: TObject);
begin
  SelectField;
  ToggleActions;
end;

procedure TFrmEstSearchDialogEditor.ClearProperties;
begin
  // Wis inhoud edit controls
  edtFieldname.Text := '';
  edtWhereSyntax.Text := '';
  edtDisplayLabel.Text := '';
  edtDisplayWidth.Text := '';
  edtDisplayColumnWidth.Text := '';
  edtDisplayFormat.Text := '';

  // Wis inhoud en selectie combo's
  cbxFieldType.ItemIndex := -1;
  cbxFieldType.Text := '';
  cbxEmptyOperation.ItemIndex := -1;
  cbxEmptyOperation.Text := '';
  cbxDefaultComparison.ItemIndex := -1;
  cbxDefaultComparison.Text := '';
  cbxSearchCase.ItemIndex := -1;
  cbxSearchCase.Text := '';
  cbxSearch.ItemIndex := -1;
  cbxSearch.Text := '';
end;

procedure TFrmEstSearchDialogEditor.ToggleProperties;
var
  Select: Boolean;
  MultiSelect : Boolean;
begin
  // Bepaal type selectie
  Select := lbxFields.SelCount = 1;
  MultiSelect := lbxFields.SelCount > 1;

  // Stel controls overeenkomstig in
  edtFieldname.Enabled := Select;
  edtWhereSyntax.Enabled := Select;
  edtDisplayLabel.Enabled := Select;

  edtDisplayWidth.Enabled := Select or MultiSelect;
  edtDisplayColumnWidth.Enabled := Select or MultiSelect;
  edtDisplayFormat.Enabled := Select or MultiSelect;
  cbxFieldType.Enabled := Select or MultiSelect;
  cbxEmptyOperation.Enabled := Select or MultiSelect;
  cbxDefaultComparison.Enabled := Select or MultiSelect;
  cbxSearchCase.Enabled := Select or MultiSelect;
  cbxSearch.Enabled := Select or MultiSelect;
end;

procedure TFrmEstSearchDialogEditor.SelectField;
var
  i : Integer;
  f : TEstSearchDialogField;
begin
  // Initialiseer
  f := nil;

  // Wis alle vorige property waarden
  ClearProperties;

  // Enable/disable voor multiselect
  ToggleProperties;

  FDisplayWidthList.Clear;
  FDisplayColumnWidthList.Clear;
  FDisplayFormatList.Clear;
  FFieldTypeList.Clear;
  FEmptyOperationList.Clear;
  FDefaultComparisonList.Clear;
  FSearchCaseList.Clear;
  FSearchList.Clear;

  // Loop door de geselecteerde velden
  for i := 0 to lbxFields.Items.Count - 1 do
  begin

    if lbxFields.Selected[i] then
    begin
      f := TEstSearchDialogField(lbxFields.Items.Objects[i]);

      // Zet waarden van veld in stringlists
      FDisplayWidthList.Add(IntToStr(f.DisplayWidth));
      FDisplayColumnWidthList.Add(IntToStr(f.DisplayColumnWidth));
      FDisplayFormatList.Add(f.DisplayFormat);
      FFieldTypeList.Add(IntToStr(Ord(f.FieldType)));
      FEmptyOperationList.Add(IntToStr(Ord(f.EmptyOperation)));
      FDefaultComparisonList.Add(IntToStr(Ord(f.DefaultComparison)));
      FSearchCaseList.Add(IntToStr(Ord(f.SearchCase)));
      FSearchList.Add(IntToStr(Ord(f.Search)));
    end;

  end;

  // Zet alleen voor de properties waarvoor geen verschillende waarden
  // gevonden zijn de waarde in de controls
  if Assigned(f) then
  begin
    if lbxFields.SelCount = 1 then
    begin
      edtFieldName.Text := f.FieldName;
      edtWhereSyntax.Text := f.WhereSyntax;
      edtDisplayLabel.Text := f.DisplayLabel;
    end;

    if FDisplayWidthList.Count = 1 then
      edtDisplayWidth.Text := IntToStr(f.DisplayWidth);

    if FDisplayColumnWidthList.Count = 1 then
      edtDisplayColumnWidth.Text := IntToStr(f.DisplayColumnWidth);

    if FDisplayFormatList.Count = 1 then
      edtDisplayFormat.Text := f.DisplayFormat;

    if FFieldTypeList.Count = 1 then
      cbxFieldType.ItemIndex := Ord(f.FieldType);

    if FEmptyOperationList.Count = 1 then
      cbxEmptyOperation.ItemIndex := Ord(f.EmptyOperation);

    if FDefaultComparisonList.Count = 1 then
      cbxDefaultComparison.ItemIndex := Ord(f.DefaultComparison);

    if FSearchCaseList.Count = 1 then
      cbxSearchCase.ItemIndex := Ord(f.SearchCase);

    if FSearchList.Count = 1 then
      cbxSearch.ItemIndex := Ord(f.Search);
  end;
end;

procedure TFrmEstSearchDialogEditor.SetFieldName;
var
  i : Integer;
  f : TEstSearchDialogField;
begin
  // Als er geen geselecteerd field is, breek dan af
  if lbxFields.Items.Count = 0 then
    Exit;

  // Controleer of er geen lege veldnaam is opgegeven
  if Trim(edtFieldName.Text) = '' then
  begin
    // Toon foutmelding
    MessageDlg('FieldName cannot be empty', mtError, [mbOK], 0);

    // Sta niet toe het control te verlaten
    edtFieldName.SetFocus;
    Abort;
  end;

  // Controleer of de veldnaam niet reeds gebruikt wordt. Zo niet, werk dan het
  // object bij
  if (lbxFields.Items.IndexOf(edtFieldName.Text) = -1) or
     (lbxFields.Items.IndexOf(edtFieldName.Text) = lbxFields.ItemIndex) then
  begin

    // Loop door de geselecteerde velden
    for i := 0 to lbxFields.Items.Count - 1 do
    begin

      // Indien geselecteerd, zet dan waarde
      if lbxFields.Selected[i] then
      begin
        f := TEstSearchDialogField(lbxFields.Items.Objects[i]);
        f.FieldName := edtFieldName.Text;
        lbxFields.Items[i] := edtFieldName.Text;
        lbxFields.Selected[i] := True;
      end;

    end;

  end
  else
  begin
    // Toon foutmelding
    MessageDlg(Format('Duplicate FieldName %s', [edtFieldName.Text]), mtError, [mbOK], 0);

    // Sta niet toe het control te verlaten
    edtFieldName.SetFocus;
    Abort;
  end;
end;

procedure TFrmEstSearchDialogEditor.edtFieldNameExit(Sender: TObject);
begin
  SetFieldName;
end;

procedure TFrmEstSearchDialogEditor.edtFieldNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetFieldName;
  end;
end;

procedure TFrmEstSearchDialogEditor.SetWhereSyntax;
var
  i : Integer;
  f : TEstSearchDialogField;
begin
  // Als er geen geselecteerd field is, breek dan af
  if lbxFields.Items.Count = 0 then
    Exit;

  // Controleer of er geen lege where syntax is opgegeven
  if Trim(edtWhereSyntax.Text) = '' then
  begin
    // Toon foutmelding
    MessageDlg('WhereSyntax cannot be empty', mtError, [mbOK], 0);

    // Sta niet toe het control te verlaten
    edtWhereSyntax.SetFocus;
    Abort;
  end;

  // Loop door de geselecteerde velden
  for i := 0 to lbxFields.Items.Count - 1 do
  begin

    // Indien geselecteerd, zet dan waarde
    if lbxFields.Selected[i] then
    begin
      f := TEstSearchDialogField(lbxFields.Items.Objects[i]);
      f.WhereSyntax := edtWhereSyntax.Text;
    end;

  end;
end;

procedure TFrmEstSearchDialogEditor.edtWhereSyntaxExit(Sender: TObject);
begin
  SetWhereSyntax;
end;

procedure TFrmEstSearchDialogEditor.edtWhereSyntaxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetWhereSyntax;
  end;
end;

procedure TFrmEstSearchDialogEditor.SetDisplayLabel;
var
  i : Integer;
  f : TEstSearchDialogField;
begin
  // Als er geen geselecteerd field is, breek dan af
  if lbxFields.Items.Count = 0 then
    Exit;

  // Loop door de geselecteerde velden
  for i := 0 to lbxFields.Items.Count - 1 do
  begin

    // Indien geselecteerd, zet dan waarde
    if lbxFields.Selected[i] then
    begin
      f := TEstSearchDialogField(lbxFields.Items.Objects[i]);
      f.DisplayLabel := edtDisplayLabel.Text;
    end;

  end;
end;

procedure TFrmEstSearchDialogEditor.edtDisplayLabelExit(Sender: TObject);
begin
  SetDisplayLabel;
end;

procedure TFrmEstSearchDialogEditor.edtDisplayLabelKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetDisplayLabel;
  end;
end;

procedure TFrmEstSearchDialogEditor.SetDisplayWidth;
var
  i : Integer;
  n : Integer;
  f : TEstSearchDialogField;
begin
  // Als er geen geselecteerd field is, breek dan af
  if lbxFields.Items.Count = 0 then
    Exit;

  // Negeer lege waarde bij multi select
  if (lbxFields.SelCount > 1) and (edtDisplayWidth.Text = '') then
    Exit;

  // Controleer of er een geldige waarde is ingevuld. Zo ja, werk dan het
  // object bij
  n := StrToIntDef(edtDisplayWidth.Text, -MAXINT);
  if n >= 0 then
  begin

    // Loop door de geselecteerde velden
    for i := 0 to lbxFields.Items.Count - 1 do
    begin

      // Indien geselecteerd, zet dan waarde
      if lbxFields.Selected[i] then
      begin
        f := TEstSearchDialogField(lbxFields.Items.Objects[i]);
        f.DisplayWidth := n;
      end;

    end;

  end
  else
  begin
    // Toon foutmelding
    MessageDlg(Format('Invalid DisplayWidth %s', [edtDisplayWidth.Text]), mtError, [mbOK], 0);

    // Sta niet toe het control te verlaten
    edtDisplayWidth.SetFocus;
    Abort;
  end;

end;

procedure TFrmEstSearchDialogEditor.edtDisplayWidthExit(Sender: TObject);
begin
  SetDisplayWidth;
end;

procedure TFrmEstSearchDialogEditor.edtDisplayWidthKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetDisplayWidth;
  end;
end;

procedure TFrmEstSearchDialogEditor.SetDisplayColumnWidth;
var
  i : Integer;
  n : Integer;
  f : TEstSearchDialogField;
begin
  // Als er geen geselecteerd field is, breek dan af
  if lbxFields.Items.Count = 0 then
    Exit;

  // Negeer lege waarde bij multi select
  if (lbxFields.SelCount > 1) and (edtDisplayColumnWidth.Text = '') then
    Exit;

  // Controleer of er een geldige waarde is ingevuld. Zo ja, werk dan het
  // object bij
  n := StrToIntDef(edtDisplayColumnWidth.Text, -MAXINT);
  if n >= 0 then
  begin

    // Loop door de geselecteerde velden
    for i := 0 to lbxFields.Items.Count - 1 do
    begin

      // Indien geselecteerd, zet dan waarde
      if lbxFields.Selected[i] then
      begin
        f := TEstSearchDialogField(lbxFields.Items.Objects[i]);
        f.DisplayColumnWidth := n;
      end;

    end;

  end
  else
  begin
    // Toon foutmelding
    MessageDlg(Format('Invalid DisplayColumnWidth %s', [edtDisplayColumnWidth.Text]), mtError, [mbOK], 0);

    // Sta niet toe het control te verlaten
    edtDisplayColumnWidth.SetFocus;
    Abort;
  end;

end;

procedure TFrmEstSearchDialogEditor.edtDisplayColumnWidthExit(
  Sender: TObject);
begin
  SetDisplayColumnWidth;
end;

procedure TFrmEstSearchDialogEditor.edtDisplayColumnWidthKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetDisplayColumnWidth;
  end;
end;

procedure TFrmEstSearchDialogEditor.SetDisplayFormat;
var
  i : Integer;
  f : TEstSearchDialogField;
begin
  // Als er geen geselecteerd field is, breek dan af
  if lbxFields.Items.Count = 0 then
    Exit;

  // Negeer lege waarde bij multi select,
  if (lbxFields.SelCount > 1) and (edtDisplayFormat.Text = '') then
    Exit;

  // Loop door de geselecteerde velden
  for i := 0 to lbxFields.Items.Count - 1 do
  begin

    // Indien geselecteerd, zet dan waarde
    if lbxFields.Selected[i] then
    begin
      f := TEstSearchDialogField(lbxFields.Items.Objects[i]);
      f.DisplayFormat := edtDisplayFormat.Text;
    end;

  end;
end;

procedure TFrmEstSearchDialogEditor.edtDisplayFormatExit(Sender: TObject);
begin
  SetDisplayFormat;
end;

procedure TFrmEstSearchDialogEditor.edtDisplayFormatKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetDisplayFormat;
  end;
end;

procedure TFrmEstSearchDialogEditor.SetFieldType;
var
  i : Integer;
  f : TEstSearchDialogField;
begin
  // Als er geen geselecteerd field is, breek dan af
  if lbxFields.Items.Count = 0 then
    Exit;

  // Zet fieldtype als dat geselecteerd is
  if cbxFieldType.ItemIndex <> -1 then
  begin

    // Loop door de geselecteerde velden
    for i := 0 to lbxFields.Items.Count - 1 do
    begin

      // Indien geselecteerd, zet dan waarde
      if lbxFields.Selected[i] then
      begin
        f := TEstSearchDialogField(lbxFields.Items.Objects[i]);
        f.FieldType := TFieldType(cbxFieldType.Items.Objects[cbxFieldType.ItemIndex]);
      end;

    end;

  end;
end;

procedure TFrmEstSearchDialogEditor.cbxFieldTypeExit(Sender: TObject);
begin
  SetFieldType;
end;

procedure TFrmEstSearchDialogEditor.cbxFieldTypeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetFieldType;
  end;
end;

procedure TFrmEstSearchDialogEditor.SetEmptyOperation;
var
  i : Integer;
  f : TEstSearchDialogField;
begin
  // Als er geen geselecteerd field is, breek dan af
  if lbxFields.Items.Count = 0 then
    Exit;

  // Zet fieldtype als dat geselecteerd is
  if cbxEmptyOperation.ItemIndex <> -1 then
  begin

    // Loop door de geselecteerde velden
    for i := 0 to lbxFields.Items.Count - 1 do
    begin

      // Indien geselecteerd, zet dan waarde
      if lbxFields.Selected[i] then
      begin
        f := TEstSearchDialogField(lbxFields.Items.Objects[i]);
        f.EmptyOperation := TSearchEmptyOperation(cbxEmptyOperation.Items.Objects[cbxEmptyOperation.ItemIndex]);
      end;

    end;

  end;
end;

procedure TFrmEstSearchDialogEditor.cbxEmptyOperationExit(Sender: TObject);
begin
  SetEmptyOperation;
end;

procedure TFrmEstSearchDialogEditor.cbxEmptyOperationKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetEmptyOperation;
  end;
end;

procedure TFrmEstSearchDialogEditor.SetDefaultComparision;
var
  i : Integer;
  f : TEstSearchDialogField;
begin
  // Als er geen geselecteerd field is, breek dan af
  if lbxFields.Items.Count = 0 then
    Exit;

  // Zet fieldtype als dat geselecteerd is
  if cbxFieldType.ItemIndex <> -1 then
  begin

    // Loop door de geselecteerde velden
    for i := 0 to lbxFields.Items.Count - 1 do
    begin

      // Indien geselecteerd, zet dan waarde
      if lbxFields.Selected[i] then
      begin
        f := TEstSearchDialogField(lbxFields.Items.Objects[i]);
        f.DefaultComparison := TSearchComparison(cbxDefaultComparison.Items.Objects[cbxDefaultComparison.ItemIndex]);
      end;

    end;

  end;
end;

procedure TFrmEstSearchDialogEditor.cbxDefaultComparisonExit(
  Sender: TObject);
begin
  SetDefaultComparision;
end;

procedure TFrmEstSearchDialogEditor.cbxDefaultComparisonKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetDefaultComparision;
  end;
end;

procedure TFrmEstSearchDialogEditor.SetSearchCase;
var
  i : Integer;
  f : TEstSearchDialogField;
begin
  // Als er geen geselecteerd field is, breek dan af
  if lbxFields.Items.Count = 0 then
    Exit;

  // Zet fieldtype als dat geselecteerd is
  if cbxFieldType.ItemIndex <> -1 then
  begin

    // Loop door de geselecteerde velden
    for i := 0 to lbxFields.Items.Count - 1 do
    begin

      // Indien geselecteerd, zet dan waarde
      if lbxFields.Selected[i] then
      begin
        f := TEstSearchDialogField(lbxFields.Items.Objects[i]);
        f.SearchCase := TSearchCase(cbxSearchCase.Items.Objects[cbxSearchCase.ItemIndex]);
      end;

    end;

  end;
end;

procedure TFrmEstSearchDialogEditor.cbxSearchCaseExit(Sender: TObject);
begin
  SetSearchCase;
end;

procedure TFrmEstSearchDialogEditor.cbxSearchCaseKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetSearchCase;
  end;
end;

procedure TFrmEstSearchDialogEditor.SetSearch;
var
  i : Integer;
  f : TEstSearchDialogField;
begin
  // Als er geen geselecteerd field is, breek dan af
  if lbxFields.Items.Count = 0 then
    Exit;

  // Zet fieldtype als dat geselecteerd is
  if cbxFieldType.ItemIndex <> -1 then
  begin

    // Loop door de geselecteerde velden
    for i := 0 to lbxFields.Items.Count - 1 do
    begin

      // Indien geselecteerd, zet dan waarde
      if lbxFields.Selected[i] then
      begin
        f := TEstSearchDialogField(lbxFields.Items.Objects[i]);
        f.Search := (cbxSearch.ItemIndex = Ord(True));
      end;

    end;

  end;
end;

procedure TFrmEstSearchDialogEditor.cbxSearchExit(Sender: TObject);
begin
  SetSearch;
end;

procedure TFrmEstSearchDialogEditor.cbxSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetSearch;
  end;
end;

{
  Procedure : TFrmEstSearchDialogEditor.ValidateSearchQuery
  Auteur    : Erik Stok
  Doel      : Controleer of de search query de where tag bevat
}
procedure TFrmEstSearchDialogEditor.ValidateSearchQuery;
begin
  if (Trim(mmoSearchQuery.Lines.Text) <> '') and
     (Pos(WHERE_TAG, UpperCase(mmoSearchQuery.Lines.Text)) = 0) then
  begin
    raise Exception.CreateFmt('Search query does not contain required %s tag', [WHERE_TAG]);
  end;
end;

{
  Procedure : TFrmEstSearchDialogEditor.ValidateCountQuery
  Auteur    : Erik Stok
  Doel      : Controleer of de count query de where tag bevat
}
procedure TFrmEstSearchDialogEditor.ValidateCountQuery;
begin
  if (Trim(mmoCountQuery.Lines.Text) <> '') and
     (Pos(WHERE_TAG, UpperCase(mmoCountQuery.Lines.Text)) = 0) then
  begin
    raise Exception.CreateFmt('Count query does not contain required %s tag', [WHERE_TAG]);
  end;
end;

{
  Procedure : TFrmEstSearchDialogEditor.ValidateDefaultSearch
  Auteur    : Erik Stok
  Doel      : Controleer of er geldige instellingen gedaan zijn voor de default
              vergelijkingen
}
procedure TFrmEstSearchDialogEditor.ValidateDefaultSearch;
var
  i      : Integer;
  Answer : TModalResult;
begin
  // Loop door de field objecten die zijn ingesteld
  for i := 0 to lbxFields.Items.Count - 1 do
  begin

    with TEstSearchDialogField(lbxFields.Items.Objects[i]) do
    begin

      // Kijk of de default comparison geldig is
      if not (DefaultComparison in FieldTypeComparisons(FieldType)) then
      begin
        // Vraag de gebruiker wat te doen
        Answer := MessageDlg(Format('The default comparison of field ''%s'' is not ' +
                                    'valid for the indicated fieldtype. Correct ' +
                                    'it to the default value?', [FieldName]),
                             mtConfirmation, mbYesNoCancel, 0);

        // Fix?
        if Answer = mrYes then
        begin
          DefaultComparison := FieldTypeDefaultComparison(FieldType);
        end
        else
        begin
          // Stop?
          if Answer = mrCancel then
            Abort;
        end;

      end;

    end;

  end;

end;

procedure TFrmEstSearchDialogEditor.actTestSearchQueryExecute(
  Sender: TObject);
var
  FrmEstSearchDialogEditorQueryResult: TFrmEstSearchDialogEditorQueryResult;
begin
  // Valideer query
  ValidateSearchQuery;

  // Sluit een eventueel vorig resultaat
  SearchDataSet.Close;

  // Stel query in
  SetSearchSQL(StringReplace(mmoSearchQuery.Lines.Text,
                             WHERE_TAG,
                             SearchDialog.TrueExpression,
                             [rfIgnoreCase]));

  // Probeer nieuwe query te openen
  try
    SearchDataSet.Open;

    FrmEstSearchDialogEditorQueryResult := TFrmEstSearchDialogEditorQueryResult.Create(nil);
    try
      FrmEstSearchDialogEditorQueryResult.dtsQueryResult.DataSet := SearchDataSet;
      FrmEstSearchDialogEditorQueryResult.ShowModal;
    finally
      FrmEstSearchDialogEditorQueryResult.Free;
    end;
  except
    on e: Exception do
      MessageDlg(Format('Unable to execute query (%s)', [e.Message]), mtError, [mbOK], 0);
  end;
end;

procedure TFrmEstSearchDialogEditor.actTestCountQueryExecute(
  Sender: TObject);
var
  FrmEstSearchDialogEditorQueryResult: TFrmEstSearchDialogEditorQueryResult;
begin
  // Valideer query
  ValidateCountQuery;

  // Sluit een eventueel vorig resultaat
  CountDataSet.Close;

  // Stel query in
  SetCountSQL(StringReplace(mmoCountQuery.Lines.Text,
                            WHERE_TAG,
                            SearchDialog.TrueExpression,
                            [rfIgnoreCase]));

  // Probeer nieuwe query te openen
  try
    CountDataSet.Open;

    FrmEstSearchDialogEditorQueryResult := TFrmEstSearchDialogEditorQueryResult.Create(nil);
    try
      FrmEstSearchDialogEditorQueryResult.dtsQueryResult.DataSet := SearchDataSet;
      FrmEstSearchDialogEditorQueryResult.ShowModal;
    finally
      FrmEstSearchDialogEditorQueryResult.Free;
    end;

  except
    on e: Exception do
      MessageDlg(Format('Unable to execute query (%s)', [e.Message]), mtError, [mbOK], 0);
  end;
end;

procedure TFrmEstSearchDialogEditor.actGenerateFieldsExecute(
  Sender: TObject);
var
  i : Integer;
  GenerationStyle : Integer;
  f : TFrmEstSearchDialogEditorFieldGeneration;
  s : String;
begin
  // Bepaal stijl van aanmaken velden
  f := TFrmEstSearchDialogEditorFieldGeneration.Create(nil);

  try
    if f.ShowModal = mrOK then
      GenerationStyle := f.rgpWhereSyntaxStyle.ItemIndex
    else
      GenerationStyle := -1;
  finally
    f.Free;
  end;

  if GenerationStyle <> -1 then
  begin

    // Sluit een eventueel vorig resultaat
    SearchDataSet.Close;

    // Stel query in
    SetSearchSQL(StringReplace(mmoSearchQuery.Lines.Text,
                               WHERE_TAG,
                               SearchDialog.TrueExpression,
                               [rfIgnoreCase]));

    // Probeer nieuwe query te openen
    try
      SearchDataSet.Open;
    except
      on e: Exception do
      begin
        MessageDlg(Format('Unable to execute query (%s)', [e.Message]), mtError, [mbOK], 0);
        Exit;
      end;
    end;

    // Loop door de fieldlist van de query
    for i := 0 to SearchDataSet.Fields.Count - 1 do
    begin

      // Kijk of er niet reeds een SearchField is. Zo ja, doe dan niets, zo nee
      // maak dan een nieuwe
      if lbxFields.Items.IndexOf(SearchDataSet.Fields[i].FieldName) = -1 then
      begin
        // Maak item aan
        with SearchDataSet.Fields[i] do
        begin
          case GenerationStyle of
            0 : s := '%s';
            1 : s := '''%s''';
            2 : s := '"%s"';
            3 : s := '[%s]';
          end;

          AddField(FieldName, Format(s, [FieldName]), FieldName,
                     DisplayWidth, 0, '', DataType, eoNull,
                     FieldTypeDefaultComparison(DataType), scMixed, True);
        end;
        
      end;

    end;

    // Als er niets geselecteerd was, en er valt nu wel iets te selecteren,
    // selecteer dan het eerste item
    if (lbxFields.ItemIndex = -1) and (lbxFields.Items.Count > 0) then
      lbxFields.ItemIndex := 0;

    // Voer selectie uit
    SelectField;

  end;

  ToggleActions;
end;

procedure TFrmEstSearchDialogEditor.btnOKClick(Sender: TObject);
begin
  // Check queries
  ValidateSearchQuery;
  ValidateCountQuery;
  ValidateDefaultSearch;

  // Werk component bij
  UpdateSearchDialog(SearchDialog);

  // Sluit scherm
  ModalResult := mrOK;
end;

procedure TFrmEstSearchDialogEditor.btnCancelClick(Sender: TObject);
begin
  // Sluit scherm zonder iets bij te werken
  ModalResult := mrCancel;
end;

procedure TFrmEstSearchDialogEditor.actTestExecute(Sender: TObject);
var
  s : TIDBEdit;
begin
  // Maak tijdelijk search dialog component aan van het juiste type
  s := FSearchDialogClass.Create(Self);

  try
    // Kopieer origineel searchdialog
    s.Assign(SearchDialog);

    // Werk bij aan de hand van het scherm
    UpdateSearchDialog(s);

    // Designtime search dialog negeert defaults, is altijd modal,
    // slaat niet op en toont geen customize knop
    s.DefaultSet := [];
    s.SearchStyle := ssModal;
    s.Store := dsNone;
    s.ShowPresetsCustomization := False;

    // Test dialog
    try
      s.Execute;
    except
      on e:Exception do
        MessageDlg(Format('Cannot execute search dialog (%s)', [e.Message]), mtError, [mbOK], 0);
    end;

  finally
    s.Free;
  end;
end;

procedure TFrmEstSearchDialogEditor.actAddFieldExecute(Sender: TObject);
var
  i : Integer;
  n : Integer;
begin
  // Bepaal velnaam
  i := 1;

  while lbxFields.Items.IndexOf(Format('Field%d', [i])) <> -1 do
    Inc(i);

  // Voeg veld toe
  n := AddField(Format('Field%d', [i]), Format('Field%d', [i]), Format('Field%d', [i]),
                  0, 0, '', ftUnknown, eoNull, FieldTypeDefaultComparison(ftUnknown),
                  scMixed, True);

  // Selecteer field listbox
  lbxFields.SetFocus;

  // Wis selectie
  lbxFields.ClearSelection;

  // Selecteer nieuw item
  lbxFields.ItemIndex := n;
  lbxFields.Selected[n] := True;

  // Selecteer field
  SelectField;

  ToggleActions;
end;

procedure TFrmEstSearchDialogEditor.actDeleteFieldExecute(Sender: TObject);
var
  i : Integer;
  n : Integer;
begin
  // Breek af als er niets geselecteerd is
  if lbxFields.SelCount = 0 then
    Exit;

  // Initialiseer
  n := -1;

  // Verwijder velden van achteren naar voren
  for i := lbxFields.Items.Count - 1 downto 0 do
  begin

    // Indien geslecteerd, ruim dan op
    if lbxFields.Selected[i] then
    begin
      // Onthoud laatst verwijderd item
      n := i;

      lbxFields.Items.Objects[i].Free;
      lbxFields.Items.Delete(i);
    end;

  end;

  // Stel selectie in op item na laatst verwijderd item
  if n < lbxFields.Items.Count then
    lbxFields.ItemIndex := n
  else
    lbxFields.ItemIndex := n - 1;

  if lbxFields.ItemIndex <> -1 then
    lbxFields.Selected[lbxFields.ItemIndex] := True;
    
  SelectField;

  ToggleActions;
end;

procedure TFrmEstSearchDialogEditor.ClearFieldListBox;
var
  i : Integer;
begin
  // Verwijder velden van achteren naar voren
  for i := lbxFields.Items.Count - 1 downto 0 do
  begin
    lbxFields.Items.Objects[i].Free;
    lbxFields.Items.Delete(i);
  end;
end;

procedure TFrmEstSearchDialogEditor.SetDialogSize(DialogWidth: Integer; DialogHeight: Integer);
begin
  // Stel afmetingen in op binnegkomen waarden
  FDialogWidth := DialogWidth;
  FDialogHeight := DialogHeight;
end;

procedure TFrmEstSearchDialogEditor.SetFieldDisplayWidth(FieldName: String;
  DisplayWidth: Integer);
var
  i : integer;
  f : TEstSearchDialogField;
begin
  i := lbxFields.Items.IndexOf(FieldName);

  if i <> -1 then
  begin
    f := TEstSearchDialogField(lbxFields.Items.Objects[i]);

    f.DisplayWidth := DisplayWidth;

    SelectField;
  end;
end;

procedure TFrmEstSearchDialogEditor.SetFieldDisplayColumnWidth(
  FieldName: String; DisplayColumnWidth: Integer);
var
  i : integer;
  f : TEstSearchDialogField;
begin
  i := lbxFields.Items.IndexOf(FieldName);

  if i <> -1 then
  begin
    f := TEstSearchDialogField(lbxFields.Items.Objects[i]);

    f.DisplayColumnWidth := DisplayColumnWidth;

    SelectField;
  end;
end;

procedure TFrmEstSearchDialogEditor.SetFieldOrder(FieldName: String;
  Index: Integer);
var
  i : integer;
  f : TEstSearchDialogField;
begin
  i := lbxFields.Items.IndexOf(FieldName);

  if i <> -1 then
  begin
    f := TEstSearchDialogField(lbxFields.Items.Objects[i]);

    lbxFields.Items.Move(i, Index);
    f.Index := Index;
  end;
end;

procedure TFrmEstSearchDialogEditor.actMoveFieldUpExecute(Sender: TObject);
var
  i : Integer;
  f : TEstSearchDialogField;
begin
  // Controleer voor alle zekerheid of er een geldig item geselecteerd is
  if (lbxFields.SelCount <> 1) or (lbxFields.Selected[0]) then
    Exit;

  for i := 0 to lbxFields.Items.Count - 1 do
  begin

    // Indien geselecteerd, zet dan waarde en stop
    if lbxFields.Selected[i] then
    begin
      // Wis huidige selectie
      lbxFields.ClearSelection;

      // Verkrijg referentie naar field object
      f := TEstSearchDialogField(lbxFields.Items.Objects[i]);

      // Verplaats geselecteerd item
      lbxFields.Items.Move(i, i-1);
      f.Index := i-1;

      // Selecteer item
      lbxFields.ItemIndex := i-1;
      lbxFields.Selected[lbxFields.ItemIndex] := True;

      // Stop bij eerste item
      Break;
    end;

  end;

  ToggleActions;
end;

procedure TFrmEstSearchDialogEditor.actMoveFieldDownExecute(Sender: TObject);
var
  i : Integer;
  f : TEstSearchDialogField;
begin
  // Controleer voor alle zekerheid of er een geldig item geselecteerd is
  if (lbxFields.SelCount <> 1) or (lbxFields.Selected[lbxFields.Items.Count - 1]) then
    Exit;

  for i := 0 to lbxFields.Items.Count - 1 do
  begin

    // Indien geselecteerd, zet dan waarde en stop
    if lbxFields.Selected[i] then
    begin                  
      // Wis huidige selectie
      lbxFields.ClearSelection;

      // Verkrijg referentie naar field object
      f := TEstSearchDialogField(lbxFields.Items.Objects[i]);

      // Verplaats geselecteerd item
      lbxFields.Items.Move(i, i+1);
      f.Index := i+1;

      // Selecteer item
      lbxFields.ItemIndex := i+1;
      lbxFields.Selected[lbxFields.ItemIndex] := True;

      // Stop bij eerste item
      Break;
    end;

  end;

  ToggleActions;
end;

procedure TFrmEstSearchDialogEditor.ToggleActions;
begin
  actDeleteField.Enabled := lbxFields.SelCount > 0;
  actMoveFieldUp.Enabled := (lbxFields.SelCount = 1) and
                            (lbxFields.Items.Count > 1) and
                            (not lbxFields.Selected[0]);
  actMoveFieldDown.Enabled := (lbxFields.SelCount = 1) and
                              (lbxFields.Items.Count > 1) and
                              (not lbxFields.Selected[lbxFields.Items.Count - 1]);
end;

procedure TFrmEstSearchDialogEditor.actPriorFieldExecute(Sender: TObject);
var
  PriorControl: TWinControl;
  i : Integer;
begin
  // Als er meer of minder dan 1 item geselecteerd is, breek dan af
  if lbxFields.SelCount <> 1  then
    Exit;

  // Als het eerste item geselecteerd is, breek dan af
  if lbxFields.Selected[0] then
    Exit;

  // Onthoud actief control
  PriorControl := ActiveControl;

  try
    // Zet focus op listbox
    ActiveControl := lbxFields;

    // Verschuif selectie
    for i := 0 to lbxFields.Items.Count - 1 do
    begin

      if lbxFields.Selected[i] then
      begin
        lbxFields.ClearSelection;

        lbxFields.Selected[i - 1] := True;
        lbxFields.ItemIndex := i - 1;

        SelectField;

        Break;
      end;
    end;

  finally
    // Herstel focus
    ActiveControl := PriorControl;
  end;
end;

procedure TFrmEstSearchDialogEditor.actNextFieldExecute(Sender: TObject);
var
  PriorControl: TWinControl;
  i : Integer;
begin
  // Als er meer of minder dan 1 item geselecteerd is, breek dan af
  if lbxFields.SelCount <> 1  then
    Exit;

  // Als het laatste item geselecteerd is, breek dan af
  if lbxFields.Selected[lbxFields.Items.Count - 1] then
    Exit;

  // Onthoud actief control
  PriorControl := ActiveControl;

  try
    // Zet focus op listbox
    ActiveControl := lbxFields;

    // Verschuif selectie
    for i := 0 to lbxFields.Items.Count - 1 do
    begin

      if lbxFields.Selected[i] then
      begin
        lbxFields.ClearSelection;

        lbxFields.Selected[i + 1] := True;
        lbxFields.ItemIndex := i + 1;

        SelectField;

        Break;
      end;
    end;

  finally
    // Herstel focus
    ActiveControl := PriorControl;
  end;
end;

procedure TFrmEstSearchDialogEditor.ReadValuesFromRegistry(Registry: TRegistry);
begin
  inherited;

  if Registry.ValueExists('DataSearchQueryHeight') then
    pnlDataSearchQuery.Height := Registry.ReadInteger('DataSearchQueryHeight')
end;

procedure TFrmEstSearchDialogEditor.WriteValuesToRegistry(Registry: TRegistry);
begin
  inherited;

  Registry.WriteInteger('DataSearchQueryHeight', pnlDataSearchQuery.Height);
end;

procedure TFrmEstSearchDialogEditor.actSelectAllExecute(Sender: TObject);
begin
  inherited;

  if mmoSearchQuery.Focused then
    mmoSearchQuery.SelectAll;

  if mmoCountQuery.Focused then
    mmoCountQuery.SelectAll;
end;

end.
