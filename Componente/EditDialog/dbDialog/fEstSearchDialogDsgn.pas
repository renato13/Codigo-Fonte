{
  Unit   : fEstSearchDialogDsgn
  Datum  : 20-9-2004
  Auteur : Erik Stok
  Doel   : Designtime versie van het zoekscherm
}
unit fEstSearchDialogDsgn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEstSearchDialog, ActnList, DB, ComCtrls, Grids, DBGrids,
  StdCtrls, ExtCtrls, Menus, fEstSearchDialogEditor, uEstSearchDialog, Buttons;

type
  TFrmEstSearchDialogDsgn = class(TFrmEstSearchDialog)
    pumStore: TPopupMenu;
    mniStoreCurrentSize: TMenuItem;
    mniStoreCurrentDisplayWidths: TMenuItem;
    mniStoreCurrentColumnDisplayWidth: TMenuItem;
    mniSeparator: TMenuItem;
    mniStoreTotalCurrentAppearance: TMenuItem;
    mniStoreCurrentColumnOrder: TMenuItem;
    procedure mniStoreCurrentSizeClick(Sender: TObject);
    procedure mniStoreCurrentDisplayWidthsClick(Sender: TObject);
    procedure mniStoreCurrentColumnDisplayWidthClick(Sender: TObject);
    procedure mniStoreCurrentColumnOrderClick(Sender: TObject);
    procedure mniStoreTotalCurrentAppearanceClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function FrmEstSearchDialogEditor: TFrmEstSearchDialogEditor;
  end;

implementation

{$R *.dfm}

procedure TFrmEstSearchDialogDsgn.FormShow(Sender: TObject);
begin
  inherited;
   cbxComparison01.ItemIndex :=2;

   Caption := Caption+' - '+Screen.FocusedForm.Caption;
   
end;

function TFrmEstSearchDialogDsgn.FrmEstSearchDialogEditor: TFrmEstSearchDialogEditor;
var
  c : TComponent;
begin
  // Zoek editor form
  c := Application.FindComponent('EstSearchDialogEditorDesigner');

  // Indien gevonden, geef instantie terug.
  if Assigned(c) and (c is TFrmEstSearchDialogEditor) then
    Result := TFrmEstSearchDialogEditor(c)
  else
    Result := nil;
end;

procedure TFrmEstSearchDialogDsgn.mniStoreCurrentSizeClick(Sender: TObject);
begin
  if FrmEstSearchDialogEditor <> nil then
    FrmEstSearchDialogEditor.SetDialogSize(Width, Height);
end;

procedure TFrmEstSearchDialogDsgn.mniStoreCurrentDisplayWidthsClick(Sender: TObject);
var
  i : Integer;
  FieldName : String;
  ColumnWidth : Integer;
  DisplayWidth : Integer;
  tm : TTextMetric;
begin
  if FrmEstSearchDialogEditor <> nil then
  begin

    for i := 0 to grdResult.Columns.Count - 1 do
    begin
      FieldName := grdResult.Columns.Items[i].FieldName;
      ColumnWidth := grdResult.Columns.Items[i].Width;

      GetTextMetrics(grdResult.Canvas.Handle, tm);
      DisplayWidth := (ColumnWidth - tm.tmOverhang - 4) div (grdResult.Canvas.TextWidth('0') - tm.tmOverhang);

      FrmEstSearchDialogEditor.SetFieldDisplayWidth(FieldName, DisplayWidth);
    end;

  end;
end;

procedure TFrmEstSearchDialogDsgn.mniStoreCurrentColumnDisplayWidthClick(Sender: TObject);
var
  i : Integer;
  FieldName : String;
  ColumnWidth : Integer;
begin
  if FrmEstSearchDialogEditor <> nil then
  begin

    for i := 0 to grdResult.Columns.Count - 1 do
    begin
      FieldName := grdResult.Columns.Items[i].FieldName;
      ColumnWidth := grdResult.Columns.Items[i].Width;

      FrmEstSearchDialogEditor.SetFieldDisplayColumnWidth(FieldName, ColumnWidth);
    end;

  end;
end;

procedure TFrmEstSearchDialogDsgn.mniStoreCurrentColumnOrderClick(
  Sender: TObject);
var
  i : Integer;
  FieldName : String;
begin
  if FrmEstSearchDialogEditor <> nil then
  begin

    for i := 0 to grdResult.Columns.Count - 1 do
    begin
      FieldName := grdResult.Columns.Items[i].FieldName;

      FrmEstSearchDialogEditor.SetFieldOrder(FieldName, i);
    end;

  end;
end;

procedure TFrmEstSearchDialogDsgn.mniStoreTotalCurrentAppearanceClick(Sender: TObject);
begin
  mniStoreCurrentSize.Click;
  mniStoreCurrentDisplayWidths.Click;
  mniStoreCurrentColumnDisplayWidth.Click;
  mniStoreCurrentColumnOrder.Click;
end;

initialization
  RegisterSearchDialogFormClass(TFrmEstSearchDialogDsgn);

end.
