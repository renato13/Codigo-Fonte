unit fEstSearchDialogPresetCustomize;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, ActnList, uEstSearchDialogTypes,
  uEstSearchDialogIntl, System.Actions;

type
  TFrmEstSearchDialogPresetCustomize = class(TForm)
    pnlMain: TPanel;
    pnlControls: TPanel;
    pnlButtons: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    radStore: TRadioButton;
    radRemove: TRadioButton;
    lblDescription: TLabel;
    edtDescription: TEdit;
    lblShortcutKey: TLabel;
    edtShortcutKey: THotKey;
    lbxRemove: TListBox;
    lblCustomized: TLabel;
    aclCustomize: TActionList;
    actOK: TAction;
    actCancel: TAction;
    procedure actOKExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  protected
    procedure Loaded; override;

    function IsValidDescription: Boolean; virtual;
    function IsValidShortcut: Boolean; virtual;
  public
    procedure AddCustomPreset(EstSearchPresetItem: TEstSearchPresetItem);
    function AddSelected: Boolean;
    function ItemToRemove: TEstSearchPresetItem;
    function NewName: String;
    function NewShortCut: TShortCut;
  end;

  TFrmEstSearchDialogPresetCustomizeClass = class of TFrmEstSearchDialogPresetCustomize;

implementation

{$R *.dfm}

procedure TFrmEstSearchDialogPresetCustomize.actOKExecute(Sender: TObject);
begin
  if radStore.Checked then
  begin

    if Trim(edtDescription.Text) = '' then
      raise Exception.Create(EstSearchDialogIntl.CustomPresetErrorDescriptionEmpty);

    if not IsValidDescription then
      raise Exception.Create(EstSearchDialogIntl.CustomPresetErrorDescriptionInUse);

    if (edtShortcutKey.HotKey <> 0) and (not IsValidShortcut) then
      raise Exception.Create(EstSearchDialogIntl.CustomPresetErrorShortcutInUse);

  end;

  ModalResult := mrOK;
end;

procedure TFrmEstSearchDialogPresetCustomize.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmEstSearchDialogPresetCustomize.AddCustomPreset(
  EstSearchPresetItem: TEstSearchPresetItem);
begin
  lbxRemove.Items.AddObject(EstSearchPresetItem.Name, EstSearchPresetItem);
  radRemove.Enabled := True;
  lbxRemove.ItemIndex := 0;
end;

function TFrmEstSearchDialogPresetCustomize.AddSelected: Boolean;
begin
  Result := radStore.Checked;
end;

function TFrmEstSearchDialogPresetCustomize.ItemToRemove: TEstSearchPresetItem;
begin
  if lbxRemove.ItemIndex <> -1 then
    Result := TEstSearchPresetItem(lbxRemove.Items.Objects[lbxRemove.ItemIndex])
  else
    Result := nil;
end;

function TFrmEstSearchDialogPresetCustomize.NewName: String;
begin
  Result := Trim(edtDescription.Text);
end;

function TFrmEstSearchDialogPresetCustomize.NewShortCut: TShortCut;
begin
  Result := edtShortcutKey.HotKey;
end;

procedure TFrmEstSearchDialogPresetCustomize.Loaded;
begin
  inherited;

  Caption := EstSearchDialogIntl.CustomPresetCaption;

  radStore.Caption := EstSearchDialogIntl.CustomPresetAdd;
  lblDescription.Caption := EstSearchDialogIntl.CustomPresetDescription;
  lblShortcutKey.Caption := EstSearchDialogIntl.CustomPresetShortcut;
  radRemove.Caption := EstSearchDialogIntl.CustomPresetRemove;
  lblCustomized.Caption := EstSearchDialogIntl.CustomPresetCustomized;
end;

function TFrmEstSearchDialogPresetCustomize.IsValidDescription: Boolean;
var
  i : Integer;
begin
  Result := True;

  for i := 0 to lbxRemove.Items.Count - 1 do
  begin
    if SameText(edtDescription.Text, TEstSearchPresetItem(lbxRemove.Items.Objects[i]).Name) then
    begin
      Result := False;
      Break;
    end;
  end;
end;

function TFrmEstSearchDialogPresetCustomize.IsValidShortcut: Boolean;
var
  i : Integer;
begin
  Result := True;

  for i := 0 to lbxRemove.Items.Count - 1 do
  begin
    if edtShortcutKey.HotKey = TEstSearchPresetItem(lbxRemove.Items.Objects[i]).ShortCut then
    begin
      Result := False;
      Break;
    end;
  end;
end;

end.
