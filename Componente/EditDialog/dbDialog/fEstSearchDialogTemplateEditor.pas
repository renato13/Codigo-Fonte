{
  Unit   : fEstSearchDialogTemplateEditor
  Datum  : 19-9-2004
  Auteur : Erik Stok
  Doel   : Search dialog template designer form
}
unit fEstSearchDialogTemplateEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, ExtCtrls, Buttons, TypInfo,

  fEstSearchDialog,
  IDBEdit,
  {uEstSearchDialog,}
  uEstSearchDialogTypes,
  uEstSearchDialogConst,
  fEstSearchDialogEditorFieldGeneration,
  Menus,
  fEstSearchDialogBaseEditor;

type
  TFrmEstSearchDialogTemplateEditor = class(TFrmEstSearchDialogBaseEditor)
    pnlMain: TPanel;
    pnlButtons: TPanel;
    pnlControls: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    pnlPreset: TPanel;
    pnlPresetHeader: TPanel;
    lblPresets: TLabel;
    btnAddPreset: TSpeedButton;
    btnDeletePreset: TSpeedButton;
    btnMovePresetUp: TSpeedButton;
    btnActMovePresetDown: TSpeedButton;
    pnlPresetList: TPanel;
    lbxPresets: TListBox;
    pnlPresetProperties: TPanel;
    pnlCriteria: TPanel;
    pnlCriteriaProperties: TPanel;
    pnlPresetPropertiesHeader: TPanel;
    lblPresetProperties: TLabel;
    pnlCriteriaHeader: TPanel;
    lblCriteria: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    pnlCriteriaPropertiesHeader: TPanel;
    lblCriteriumProperties: TLabel;
    pnlCriteriaList: TPanel;
    lbxCriteria: TListBox;
    pnlPresetPropertiesDetails: TPanel;
    pnlCriteriaPropertiesDetails: TPanel;
    aclMain: TActionList;
    actAddPreset: TAction;
    actDeletePreset: TAction;
    actMovePresetUp: TAction;
    actMovePresetDown: TAction;
    Label1: TLabel;
    edtName: TEdit;
    lblShortcut: TLabel;
    edtShortCut: TEdit;
    lblField: TLabel;
    cbxField: TComboBox;
    lblComparison: TLabel;
    cbxComparison: TComboBox;
    lblValue: TLabel;
    edtValue: TEdit;
    lblOperator: TLabel;
    cbxOperator: TComboBox;
    actAddCriterium: TAction;
    actDeleteCriterium: TAction;
    actMoveCriteriumUp: TAction;
    actMoveCriteriumDown: TAction;
    btnTest: TButton;
    actTest: TAction;
    actSelectPriorCriterium: TAction;
    actSelectNextCriterium: TAction;
    actSelectPriorPreset: TAction;
    actSelectNextPreset: TAction;
    Label2: TLabel;
    cbxInitialFocus: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure actTestExecute(Sender: TObject);
    procedure actAddPresetExecute(Sender: TObject);
    procedure actDeletePresetExecute(Sender: TObject);
    procedure actMovePresetUpExecute(Sender: TObject);
    procedure actMovePresetDownExecute(Sender: TObject);
    procedure lbxPresetsClick(Sender: TObject);
    procedure edtNameExit(Sender: TObject);
    procedure edtNameKeyPress(Sender: TObject; var Key: Char);
    procedure edtShortCutExit(Sender: TObject);
    procedure edtShortCutKeyPress(Sender: TObject; var Key: Char);
    procedure actAddCriteriumExecute(Sender: TObject);
    procedure actDeleteCriteriumExecute(Sender: TObject);
    procedure actMoveCriteriumUpExecute(Sender: TObject);
    procedure actMoveCriteriumDownExecute(Sender: TObject);
    procedure lbxCriteriaClick(Sender: TObject);
    procedure cbxFieldExit(Sender: TObject);
    procedure cbxFieldKeyPress(Sender: TObject; var Key: Char);
    procedure cbxComparisonExit(Sender: TObject);
    procedure cbxComparisonKeyPress(Sender: TObject; var Key: Char);
    procedure edtValueExit(Sender: TObject);
    procedure edtValueKeyPress(Sender: TObject; var Key: Char);
    procedure cbxOperatorExit(Sender: TObject);
    procedure cbxOperatorKeyPress(Sender: TObject; var Key: Char);
    procedure actSelectPriorCriteriumExecute(Sender: TObject);
    procedure actSelectNextCriteriumExecute(Sender: TObject);
    procedure actSelectPriorPresetExecute(Sender: TObject);
    procedure actSelectNextPresetExecute(Sender: TObject);
    procedure cbxFieldSelect(Sender: TObject);
    procedure cbxComparisonSelect(Sender: TObject);
    procedure cbxOperatorSelect(Sender: TObject);
    procedure cbxInitialFocusExit(Sender: TObject);
    procedure cbxInitialFocusKeyPress(Sender: TObject; var Key: Char);
    procedure cbxInitialFocusSelect(Sender: TObject);
  private
    FSearchDialog: TIDBEdit;
    FSearchDialogClass: TEstSearchDialogClass;
    FInitialFocusItemIndex: Integer;
  private
    procedure ClearListBoxes;

    function AddPreset(AName: String;
                       Shortcut: TShortCut;
                       Criteria: TEstSearchPresetCriteria): Integer;

    procedure SelectPreset;
    procedure SelectCriterium;

    procedure SetPresetName;
    procedure SetPresetShortCut;

    procedure SetCriteriumField;
    procedure SetCriteriumComparison;
    procedure SetCriteriumValue;
    procedure SetCriteriumOperator;
    procedure SetCriteriumInitialFocus;

    procedure ToggleActions;
  protected
    procedure UpdateForm(ASearchDialog: TIDBEdit); virtual;
    procedure UpdateSearchDialog(ASearchDialog: TIDBEdit); virtual;

    procedure SetSearchDialog(const Value: TIDBEdit); virtual;
  public
    property SearchDialog : TIDBEdit read FSearchDialog write SetSearchDialog;
    property SearchDialogClass : TEstSearchDialogClass read FSearchDialogClass write FSearchDialogClass;
  end;

implementation

{$R *.dfm}

{ TFrmEstSearchDialogEditor }

procedure TFrmEstSearchDialogTemplateEditor.FormCreate(Sender: TObject);
var
  c : TSearchComparison;
  o : TSearchOperator;
begin
  FSearchDialog := nil;
  FSearchDialogClass := nil;

  // Vul comparison combobox met alle bekende vergelijkingen
  cbxComparison.Items.Clear;
  for c := Low(TSearchComparison) to High(TSearchComparison) do
    cbxComparison.Items.AddObject(GetEnumName(TypeInfo(TSearchComparison), Ord(c)), TObject(c));

  // Vul operator combobox met alle bekende vergelijkingen
  cbxOperator.Items.Clear;
  for o := Low(TSearchOperator) to High(TSearchOperator) do
    cbxOperator.Items.AddObject(GetEnumName(TypeInfo(TSearchOperator), Ord(o)), TObject(o));
end;

procedure TFrmEstSearchDialogTemplateEditor.FormDestroy(Sender: TObject);
begin
  // Wis listboxen zodat eigen gemaakte gekoppelde objecten worden opgeruimd
  ClearListBoxes;
end;

procedure TFrmEstSearchDialogTemplateEditor.SetSearchDialog(const Value: TIDBEdit);
begin
  // Zet private
  FSearchDialog := Value;

  // Zet search dialog in het form
  UpdateForm(FSearchDialog);
end;

{
  Procedure : TFrmEstSearchDialogTemplateEditor.UpdateForm
  Auteur    : Erik Stok
  Doel      : Werk het form bij aan de hand van de instellingen van het searchdialog
}
procedure TFrmEstSearchDialogTemplateEditor.UpdateForm(ASearchDialog: TIDBEdit);
var
  i : Integer;
begin
  // Vul de field combobox
  for i := 0 to ASearchDialog.SearchDialogFieldList.Count - 1 do
    cbxField.Items.AddObject(ASearchDialog.SearchDialogFieldList[i].FieldName,
                               ASearchDialog.SearchDialogFieldList[i]);

  // Geef preset list weer in het form
  for i := 0 to ASearchDialog.SearchPresetList.Count - 1 do
    AddPreset(ASearchDialog.SearchPresetList[i].Name,
              ASearchDialog.SearchPresetList[i].ShortCut,
              ASearchDialog.SearchPresetList[i].Criteria);
end;

{
  Procedure : TFrmEstSearchDialogTemplateEditor.UpdateSearchDialog
  Auteur    : Erik Stok
  Doel      : Werk het searchdialog bij aan de hand van de instellingen in het form
}
procedure TFrmEstSearchDialogTemplateEditor.UpdateSearchDialog(ASearchDialog: TIDBEdit);
var
  i : Integer;
begin
  // Zet preset list
  ASearchDialog.SearchPresetList.Clear;

  for i := 0 to lbxPresets.Items.Count - 1 do
  begin
    with TEstSearchPresetItem(lbxPresets.Items.Objects[i]) do
      ASearchDialog.SearchPresetList.Add(Name, ShortCut, Criteria);
  end;
end;

procedure TFrmEstSearchDialogTemplateEditor.btnOKClick(Sender: TObject);
begin
  // Werk component bij
  UpdateSearchDialog(SearchDialog);

  // Sluit scherm
  ModalResult := mrOK;
end;

procedure TFrmEstSearchDialogTemplateEditor.btnCancelClick(Sender: TObject);
begin
  // Sluit scherm zonder iets bij te werken
  ModalResult := mrCancel;
end;

procedure TFrmEstSearchDialogTemplateEditor.actTestExecute(Sender: TObject);
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

    // Designtime search dialog negeert defaults, is altijd modal en
    // slaat niet op
    s.DefaultSet := [];
    s.SearchStyle := ssModal;
    s.Store := dsNone;

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

procedure TFrmEstSearchDialogTemplateEditor.ClearListBoxes;
var
  i : Integer;
begin
  // Wis listbox inhoud van de criteria listbox
  lbxCriteria.Clear;

  // Ruim alle eigen gemaakte objecten op
  for i := 0 to lbxPresets.Items.Count - 1 do
    lbxPresets.Items.Objects[i].Free;

  // En wis inhoud van de preset listbox
  lbxPresets.Clear;
end;

procedure TFrmEstSearchDialogTemplateEditor.actAddPresetExecute(Sender: TObject);
var
  i : Integer;
begin
  // Zoek unieke naam
  i := 1;

  while lbxPresets.Items.IndexOf(Format('Preset%d', [i])) <> -1 do
    Inc(i);

  // Voeg toe aan de lijst
  lbxPresets.ItemIndex := AddPreset(Format('Preset%d', [i]), 0, nil);

  SelectPreset;
end;

procedure TFrmEstSearchDialogTemplateEditor.actDeletePresetExecute(Sender: TObject);
var
  i : Integer;
begin
  // Als er niets geselecteerd is, breek dan af
  i := lbxPresets.ItemIndex;
  if i = -1 then
    Exit;

  // Verwijder geselecteerd item
  lbxPresets.Items.Objects[i].Free;
  lbxPresets.Items.Delete(i);

  // Selecteer volgend item indien beschikbaar
  if i < lbxPresets.Items.Count then
    lbxPresets.ItemIndex := i
  else
    lbxPresets.ItemIndex := i - 1;

  // Selecteer preset
  SelectPreset;
end;

procedure TFrmEstSearchDialogTemplateEditor.actMovePresetUpExecute(Sender: TObject);
var
  i : Integer;
  p : TEstSearchPresetItem;
begin
  // Controleer voor alle zekerheid of er een geldig item geselecteerd is
  i := lbxPresets.ItemIndex;
  if (i = -1) or (i = 0) then
    Exit;

  // Verkrijg referentie naar field object
  p := TEstSearchPresetItem(lbxPresets.Items.Objects[i]);

  // Verplaats geselecteerd item
  lbxPresets.Items.Move(i, i-1);
  p.Index := i-1;

  // Selecteer item
  lbxPresets.ItemIndex := i-1;

  // En toggle actions
  ToggleActions;
end;

procedure TFrmEstSearchDialogTemplateEditor.actMovePresetDownExecute(Sender: TObject);
var
  i : Integer;
  p : TEstSearchPresetItem;
begin
  // Controleer voor alle zekerheid of er een geldig item geselecteerd is
  i := lbxPresets.ItemIndex;
  if (i = -1) or (i = lbxPresets.Items.Count - 1) then
    Exit;

  // Verkrijg referentie naar field object
  p := TEstSearchPresetItem(lbxPresets.Items.Objects[i]);

  // Verplaats geselecteerd item
  lbxPresets.Items.Move(i, i+1);
  p.Index := i+1;

  // Selecteer item
  lbxPresets.ItemIndex := i+1;

  // En toggle actions
  ToggleActions;
end;

{
  Procedure : TFrmEstSearchDialogTemplateEditor.AddPreset
  Auteur    : Erik Stok
  Doel      : Voeg een preset toe aan de lijst
}
function TFrmEstSearchDialogTemplateEditor.AddPreset(AName: String;
  Shortcut: TShortCut; Criteria: TEstSearchPresetCriteria): Integer;
var
  p : TEstSearchPresetItem;
begin
  // Maak een nieuw item aan
  p := TEstSearchPresetItem.Create(nil);

  // Zet properties aan de hand van de parameters
  p.Name := AName;
  p.ShortCut := ShortCut;

  // Dupliceer alleen de criteria als deze gezet zijn
  if Assigned(Criteria) then
  begin
    p.Criteria.Assign(Criteria);
    p.Criteria.InitialFocusItemIndex := Criteria.InitialFocusItemIndex;
  end;

  // Zet nieuwe preset in de lijst
  Result := lbxPresets.Items.AddObject(p.Name, p);
end;

procedure TFrmEstSearchDialogTemplateEditor.lbxPresetsClick(Sender: TObject);
begin
  SelectPreset;
end;

{
  Procedure : TFrmEstSearchDialogTemplateEditor.SelectPreset
  Auteur    : Erik Stok
  Doel      : Selecteer een preset
}
procedure TFrmEstSearchDialogTemplateEditor.SelectPreset;
var
  p : TEstSearchPresetItem;
  i : Integer;
begin
  // Wis listbox met criteria
  lbxCriteria.Clear;

  // Als er een preset geselecteerd is, geef deze dan weer. Zet anders de controls uit
  if lbxPresets.ItemIndex <> -1 then
  begin
    // Neem referentie naar preset
    p := TEstSearchPresetItem(lbxPresets.Items.Objects[lbxPresets.ItemIndex]);

    // Stel controls in
    edtName.Text := p.Name;
    edtName.Enabled := True;
    edtShortcut.Text := ShortCutToText(p.ShortCut);
    edtShortcut.Enabled := True;

    // Vul criteria listbox
    for i := 0 to p.Criteria.Count - 1 do
      lbxCriteria.Items.AddObject(p.Criteria[i].FieldName, p.Criteria[i]);

    // Stel inital focus item in
    FInitialFocusItemIndex := p.Criteria.InitialFocusItemIndex;

    // Selecteer eerste criterium indien beschikbaar
    if lbxCriteria.Items.Count > 0 then
      lbxCriteria.ItemIndex := 0;
  end
  else
  begin
    // Disable en wis controls
    edtName.Text := '';
    edtName.Enabled := False;
    edtShortcut.Text := '';
    edtShortcut.Enabled := False;
    FInitialFocusItemIndex := -1;
  end;

  // Select eerste criterium
  SelectCriterium;

  // Toggle actions
  ToggleActions;
end;

procedure TFrmEstSearchDialogTemplateEditor.SetPresetName;
var
  p : TEstSearchPresetItem;
begin
  // Als er niets geselecteerd is, stop dan direct
  if lbxPresets.ItemIndex = -1 then
    Exit;

  // Controleer of er geen lege naam is opgegeven
  if Trim(edtName.Text) = '' then
  begin
    // Toon foutmelding
    MessageDlg('Name cannot be empty', mtError, [mbOK], 0);

    // Sta niet toe het control te verlaten
    edtName.SetFocus;
    Abort;
  end;

  // Controleer of de naam niet al voorkomt
  if (lbxPresets.Items.IndexOf(edtName.Text) = -1) or
     (lbxPresets.Items.IndexOf(edtName.Text) = lbxPresets.ItemIndex) then
  begin
    p := TEstSearchPresetItem(lbxPresets.Items.Objects[lbxPresets.ItemIndex]);

    p.Name := edtName.Text;

    // Update listbox ook
    lbxPresets.Items[lbxPresets.ItemIndex] := p.Name;
  end
  else
  begin
    // Toon foutmelding
    MessageDlg(Format('Duplicate Name %s', [edtName.Text]), mtError, [mbOK], 0);

    // Sta niet toe het control te verlaten
    edtName.SetFocus;
    Abort;
  end;
end;

procedure TFrmEstSearchDialogTemplateEditor.edtNameExit(Sender: TObject);
begin
  SetPresetName;
end;

procedure TFrmEstSearchDialogTemplateEditor.edtNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetPresetName;
  end;
end;

procedure TFrmEstSearchDialogTemplateEditor.SetPresetShortCut;
var
  p : TEstSearchPresetItem;
begin
  // Als er niets geselecteerd is, stop dan direct
  if lbxPresets.ItemIndex = -1 then
    Exit;

  // Stel shortcut in
  p := TEstSearchPresetItem(lbxPresets.Items.Objects[lbxPresets.ItemIndex]);
  p.ShortCut := TextToShortCut(edtShortCut.Text);
end;

procedure TFrmEstSearchDialogTemplateEditor.edtShortCutExit(Sender: TObject);
begin
  SetPresetShortCut;
end;

procedure TFrmEstSearchDialogTemplateEditor.edtShortCutKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetPresetShortCut;
  end;
end;

procedure TFrmEstSearchDialogTemplateEditor.actAddCriteriumExecute(Sender: TObject);
var
  p : TEstSearchPresetItem;
  c : TEstSearchDialogCriterium;
  f : TEstSearchDialogField;
begin
  // Als er geen preset geselecteerd is, breek dan af
  if lbxPresets.ItemIndex = -1 then
    Exit;

  // Als er geen fields zijn, breek dan af
  if cbxField.Items.Count = 0 then
    Exit;

  // Bepaal preset
  p := TEstSearchPresetItem(lbxPresets.Items.Objects[lbxPresets.ItemIndex]);

  // Bepaal eerste veld
  f := TEstSearchDialogField(cbxField.Items.Objects[0]);

  // Voeg criterium toe
  p.Criteria.Add(f.FieldName, f.DefaultComparison, '', soAnd);

  // Bepaal laatst toegevoegd criterium
  c := p.Criteria[p.Criteria.Count - 1];

  // Plaats in lijst
  lbxCriteria.ItemIndex := lbxCriteria.Items.AddObject(c.FieldName, c);

  // En selecteer
  SelectCriterium;
end;

procedure TFrmEstSearchDialogTemplateEditor.actDeleteCriteriumExecute(Sender: TObject);
var
  i : Integer;
begin
  // Als er niets geselecteerd is, breek dan af
  i := lbxCriteria.ItemIndex;
  if i = -1 then
    Exit;

  // Verwijder geselecteerd item
  lbxCriteria.Items.Objects[i].Free;
  lbxCriteria.Items.Delete(i);

  // Selecteer volgend item indien beschikbaar
  if i < lbxCriteria.Items.Count then
    lbxCriteria.ItemIndex := i
  else
    lbxCriteria.ItemIndex := i - 1;

  // Selecteer criterium
  SelectCriterium
end;

procedure TFrmEstSearchDialogTemplateEditor.actMoveCriteriumUpExecute(Sender: TObject);
var
  i : Integer;
  c : TEstSearchDialogCriterium;
  p : TEstSearchPresetItem;
begin
  // Controleer voor alle zekerheid of er een geldig item geselecteerd is
  i := lbxCriteria.ItemIndex;
  if (i = -1) or (i = 0) then
    Exit;

  // Stel initial focus item opnieuw in indien noodzakelijk
  if FInitialFocusItemIndex = i then
  begin
    FInitialFocusItemIndex := FInitialFocusItemIndex - 1;
    p := TEstSearchPresetItem(lbxPresets.Items.Objects[lbxPresets.ItemIndex]);
    p.Criteria.InitialFocusItemIndex := FInitialFocusItemIndex;
  end;

  // Verkrijg referentie naar field object
  c := TEstSearchDialogCriterium(lbxCriteria.Items.Objects[i]);

  // Verplaats geselecteerd item
  lbxCriteria.Items.Move(i, i-1);
  c.Index := i-1;

  // Selecteer item
  lbxCriteria.ItemIndex := i-1;

  // En toggle actions
  ToggleActions;
end;


procedure TFrmEstSearchDialogTemplateEditor.actMoveCriteriumDownExecute(Sender: TObject);
var
  i : Integer;
  c : TEstSearchDialogCriterium;
  p : TEstSearchPresetItem;
begin
  // Controleer voor alle zekerheid of er een geldig item geselecteerd is
  i := lbxCriteria.ItemIndex;
  if (i = -1) or (i = lbxCriteria.Items.Count - 1) then
    Exit;

  // Stel initial focus item opnieuw in indien noodzakelijk
  if FInitialFocusItemIndex = i then
  begin
    FInitialFocusItemIndex := FInitialFocusItemIndex + 1;
    p := TEstSearchPresetItem(lbxPresets.Items.Objects[lbxPresets.ItemIndex]);
    p.Criteria.InitialFocusItemIndex := FInitialFocusItemIndex;
  end;

  // Verkrijg referentie naar field object
  c := TEstSearchDialogCriterium(lbxCriteria.Items.Objects[i]);

  // Verplaats geselecteerd item
  lbxCriteria.Items.Move(i, i+1);
  c.Index := i+1;

  // Selecteer item
  lbxCriteria.ItemIndex := i+1;

  // En toggle actions
  ToggleActions;
end;

{
  Procedure : TFrmEstSearchDialogTemplateEditor.ToggleActions
  Auteur    : Erik Stok
  Doel      : Schakel actions aan of uit afhankelijk van de selectie
}
procedure TFrmEstSearchDialogTemplateEditor.ToggleActions;
begin
  actDeletePreset.Enabled := (lbxPresets.ItemIndex <> -1);
  actMovePresetUp.Enabled := (lbxPresets.ItemIndex > 0);
  actMovePresetDown.Enabled := (lbxPresets.ItemIndex < lbxPresets.Items.Count - 1);

  actDeleteCriterium.Enabled := (lbxCriteria.ItemIndex <> -1);
  actMoveCriteriumUp.Enabled := (lbxCriteria.ItemIndex > 0);
  actMoveCriteriumDown.Enabled := (lbxCriteria.ItemIndex < lbxCriteria.Items.Count - 1);
end;

{
  Procedure : TFrmEstSearchDialogTemplateEditor.SelectCriterium
  Auteur    : Erik Stok
  Doel      : Selecteer een criterium
}
procedure TFrmEstSearchDialogTemplateEditor.SelectCriterium;
var
  c : TEstSearchDialogCriterium;
begin
  // Als er een criterium geselecteerd is, geef deze dan weer. Zet anders de controls uit
  if lbxCriteria.ItemIndex <> -1 then
  begin
    // Verkrijg referentie naar criterium
    c := TEstSearchDialogCriterium(lbxCriteria.Items.Objects[lbxCriteria.ItemIndex]);

    // Stel controls in
    cbxField.ItemIndex := cbxField.Items.IndexOf(c.FieldName);
    cbxField.Enabled := True;
    cbxComparison.ItemIndex := Ord(c.Comparison);
    cbxComparison.Enabled := True;
    edtValue.Text := c.Value;
    edtValue.Enabled := True;
    cbxOperator.ItemIndex := Ord(c.Operator);
    cbxOperator.Enabled := True;
    cbxInitialFocus.ItemIndex := Ord(lbxCriteria.ItemIndex = FInitialFocusItemIndex);
    cbxInitialFocus.Enabled := True;
  end
  else
  begin
    // Wis en disable controls
    cbxField.ItemIndex := -1;
    cbxField.Text := '';
    cbxField.Enabled := False;
    cbxComparison.ItemIndex := -1;
    cbxComparison.Text := '';
    cbxComparison.Enabled := False;
    edtValue.Text := '';
    edtValue.Enabled := False;
    cbxOperator.ItemIndex := -1;
    cbxOperator.Text := '';
    cbxOperator.Enabled := False;
    cbxInitialFocus.ItemIndex := -1;
    cbxInitialFocus.Text := '';
    cbxInitialFocus.Enabled := False;
  end;

  // Toggle actions
  ToggleActions;
end;

procedure TFrmEstSearchDialogTemplateEditor.lbxCriteriaClick(Sender: TObject);
begin
  SelectCriterium;
end;

procedure TFrmEstSearchDialogTemplateEditor.SetCriteriumField;
var
  c : TEstSearchDialogCriterium;
begin
  // Als er geen criterium geselecteerd is, breek dan af
  if lbxCriteria.ItemIndex = -1 then
    Exit;

  // Als er geen fieldname geselecteerd is, breek dan af
  if cbxField.ItemIndex = -1 then
    Exit;

  // Stel fieldname in
  c := TEstSearchDialogCriterium(lbxCriteria.Items.Objects[lbxCriteria.ItemIndex]);
  c.FieldName := cbxField.Items[cbxField.ItemIndex];

  // Update listbox ook
  lbxCriteria.Items[lbxCriteria.ItemIndex] := c.FieldName;

  // Selecteer default comparison
  cbxComparison.ItemIndex := Ord(TEstSearchDialogField(cbxField.Items.Objects[cbxField.ItemIndex]).DefaultComparison);
  SetCriteriumComparison;
end;

procedure TFrmEstSearchDialogTemplateEditor.cbxFieldExit(Sender: TObject);
begin
  SetCriteriumField;
end;

procedure TFrmEstSearchDialogTemplateEditor.cbxFieldKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetCriteriumField;
  end;
end;

procedure TFrmEstSearchDialogTemplateEditor.SetCriteriumComparison;
var
  c : TEstSearchDialogCriterium;
begin
  // Als er geen criterium geselecteerd is, breek dan af
  if lbxCriteria.ItemIndex = -1 then
    Exit;

  // Als er geen comparison geselecteerd is, breek dan af
  if cbxComparison.ItemIndex = -1 then
    Exit;

  // Stel comparison in
  c := TEstSearchDialogCriterium(lbxCriteria.Items.Objects[lbxCriteria.ItemIndex]);
  c.Comparison := TSearchComparison(cbxComparison.Items.Objects[cbxComparison.ItemIndex]);
end;

procedure TFrmEstSearchDialogTemplateEditor.cbxComparisonExit(
  Sender: TObject);
begin
  SetCriteriumComparison;
end;

procedure TFrmEstSearchDialogTemplateEditor.cbxComparisonKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetCriteriumComparison;
  end;
end;

procedure TFrmEstSearchDialogTemplateEditor.SetCriteriumValue;
var
  c : TEstSearchDialogCriterium;
begin
  // Als er geen criterium geselecteerd is, breek dan af
  if lbxCriteria.ItemIndex = -1 then
    Exit;

  // Stel value in
  c := TEstSearchDialogCriterium(lbxCriteria.Items.Objects[lbxCriteria.ItemIndex]);
  c.Value := edtValue.Text;
end;

procedure TFrmEstSearchDialogTemplateEditor.edtValueExit(Sender: TObject);
begin
  SetCriteriumValue;
end;

procedure TFrmEstSearchDialogTemplateEditor.edtValueKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetCriteriumValue;
  end;
end;

procedure TFrmEstSearchDialogTemplateEditor.SetCriteriumOperator;
var
  c : TEstSearchDialogCriterium;
begin
  // Als er geen criterium geselecteerd is, breek dan af
  if lbxCriteria.ItemIndex = -1 then
    Exit;

  // Als er geen comparison geselecteerd is, breek dan af
  if cbxOperator.ItemIndex = -1 then
    Exit;

  // Stel operator in
  c := TEstSearchDialogCriterium(lbxCriteria.Items.Objects[lbxCriteria.ItemIndex]);
  c.Operator := TSearchOperator(cbxOperator.Items.Objects[cbxOperator.ItemIndex]);
end;

procedure TFrmEstSearchDialogTemplateEditor.SetCriteriumInitialFocus;
var
  p : TEstSearchPresetItem;
begin
  // Als er niets geselecteerd is, stop dan direct
  if lbxPresets.ItemIndex = -1 then
    Exit;

  // Als er geen criterium geselecteerd is, breek dan af
  if lbxCriteria.ItemIndex = -1 then
    Exit;

  // Als er geen initial focus geselecteerd is, breek dan af
  if cbxInitialFocus.ItemIndex = -1 then
    Exit;

  // Stel initial focus item in
  p := TEstSearchPresetItem(lbxPresets.Items.Objects[lbxPresets.ItemIndex]);
  if cbxInitialFocus.ItemIndex = Ord(True) then
  begin
    p.Criteria.InitialFocusItemIndex := lbxCriteria.ItemIndex;
  end
  else
  begin
    if p.Criteria.InitialFocusItemIndex = lbxCriteria.ItemIndex then
      p.Criteria.InitialFocusItemIndex := -1;
  end;

  FInitialFocusItemIndex := p.Criteria.InitialFocusItemIndex;
end;

procedure TFrmEstSearchDialogTemplateEditor.cbxOperatorExit(
  Sender: TObject);
begin
  SetCriteriumOperator;
end;

procedure TFrmEstSearchDialogTemplateEditor.cbxOperatorKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SetCriteriumOperator;
  end;
end;

procedure TFrmEstSearchDialogTemplateEditor.actSelectPriorCriteriumExecute(Sender: TObject);
begin
  // Als er geen criterium geselecteerd is, of als de eerste criterium geselecteerd is,
  // breek dan af
  if lbxCriteria.ItemIndex < 1 then
    Exit;

  lbxCriteria.ItemIndex := lbxCriteria.ItemIndex - 1;
  lbxCriteriaClick(lbxCriteria);
end;

procedure TFrmEstSearchDialogTemplateEditor.actSelectNextCriteriumExecute(Sender: TObject);
begin
  // Als er geen criterium geselecteerd is, of als de laatste criterium geselecteerd is,
  // breek dan af
  if (lbxCriteria.ItemIndex = -1) or (lbxCriteria.ItemIndex = (lbxCriteria.Items.Count - 1)) then
    Exit;

  lbxCriteria.ItemIndex := lbxCriteria.ItemIndex + 1;
  lbxCriteriaClick(lbxCriteria);
end;

procedure TFrmEstSearchDialogTemplateEditor.actSelectPriorPresetExecute(Sender: TObject);
begin
  // Als er geen preset geselecteerd is, of als de eerste preset geselecteerd is,
  // breek dan af
  if lbxPresets.ItemIndex < 1 then
    Exit;

  lbxPresets.ItemIndex := lbxPresets.ItemIndex - 1;
  lbxPresetsClick(lbxPresets);
end;

procedure TFrmEstSearchDialogTemplateEditor.actSelectNextPresetExecute(Sender: TObject);
begin
  // Als er geen preset geselecteerd is, of als de laatste preset geselecteerd is,
  // breek dan af
  if (lbxPresets.ItemIndex = -1) or (lbxPresets.ItemIndex = (lbxPresets.Items.Count - 1)) then
    Exit;

  lbxPresets.ItemIndex := lbxPresets.ItemIndex + 1;
  lbxPresetsClick(lbxPresets);
end;

procedure TFrmEstSearchDialogTemplateEditor.cbxFieldSelect(Sender: TObject);
begin
  SetCriteriumField;
end;

procedure TFrmEstSearchDialogTemplateEditor.cbxComparisonSelect(Sender: TObject);
begin
  SetCriteriumComparison;
end;

procedure TFrmEstSearchDialogTemplateEditor.cbxOperatorSelect(Sender: TObject);
begin
  SetCriteriumField;
end;

procedure TFrmEstSearchDialogTemplateEditor.cbxInitialFocusExit(Sender: TObject);
begin
  SetCriteriumInitialFocus;
end;

procedure TFrmEstSearchDialogTemplateEditor.cbxInitialFocusKeyPress(Sender: TObject; var Key: Char);
begin
  SetCriteriumInitialFocus;
end;

procedure TFrmEstSearchDialogTemplateEditor.cbxInitialFocusSelect(Sender: TObject);
begin
  SetCriteriumInitialFocus;
end;

end.
