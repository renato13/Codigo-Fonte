{
  Unit   : uEstSearchDialogEditor
  Datum  : 14-12-2003
  Auteur : Erik Stok
  Doel   : Component- en propertyeditors voor TIDBEdit
}

unit uEstSearchDialogEditors;

interface

uses
  Classes, SysUtils, DesignEditors, DesignIntf, Controls, Dialogs, Forms,

  IDBEdit,

  {uEstSearchDialog,}
  fEstSearchDialogEditor,
  fEstSearchDialogTemplateEditor,
  uEstSearchDialogTypes,
  uEstSearchDialogConst,
  fEstSearchDialogAbout;

type
  TFrmEstSearchDialogEditorClass = class of TFrmEstSearchDialogEditor;

  TEstSearchDialogEditor = class(TComponentEditor)
  private
    procedure Configure;
    procedure Test;
    procedure About;
    function dbEditDialog: TIDBEdit;
  protected
    function SearchDialogEditorClass: TFrmEstSearchDialogEditorClass; virtual; abstract;
    function SearchDialogClass: TEstSearchDialogClass; virtual; abstract;
  public
    function GetVerbCount: Integer; override;
    function GetVerb(Index: Integer): string; override;
    procedure ExecuteVerb(Index: Integer); override;
  end;

  TEstSearchDialogPropertyEditor = class(TPropertyEditor)
  private
    function dbEditDialog: TIDBEdit;
  protected
    function SearchDialogEditorClass: TFrmEstSearchDialogEditorClass; virtual; abstract;
    function SearchDialogClass: TEstSearchDialogClass; virtual; abstract;
  public
    procedure Edit; override;
    function GetValue: String; override;
    procedure SetValue(const Value: String); override;
    function GetAttributes: TPropertyAttributes; override;
  end;

implementation

{ TEstSearchDialogEditor }

{
  Procedure : TEstSearchDialogEditor.GetVerbCount
  Auteur    : Erik Stok
  Doel      : Geef het aantal verbs
}
function TEstSearchDialogEditor.GetVerbCount: Integer;
begin
  Result := 3;
end;

{
  Procedure : TEstSearchDialogEditor.GetVerb
  Auteur    : Erik Stok
  Doel      : Geef de caption voor een verb
}
function TEstSearchDialogEditor.GetVerb(Index: Integer): string;
begin
  case Index of
    0: Result := 'Configure...';
    1: Result := 'Test...';
    2: Result := 'About...';
  end;
end;

{
  Procedure : TEstSearchDialogEditor.ExecuteVerb
  Auteur    : Erik Stok
  Doel      : Voer een verb uit
}
procedure TEstSearchDialogEditor.ExecuteVerb(Index: Integer);
begin
  // Voer geselecteerde verb uit
  case Index of
    0: Configure;
    1: Test;
    2: About;
  end;
end;

{
  Procedure : TEstSearchDialogEditor.dbEditDialog
  Auteur    : Erik Stok
  Doel      : Geef het component waarop de component editor werkt als een
              TIDBEdit (easy access)
}
function TEstSearchDialogEditor.dbEditDialog: TIDBEdit;
begin



  Result := TIDBEdit(Component);




end;

{
  Procedure : TEstSearchDialogEditor.Configure
  Auteur    : Erik Stok
  Doel      : Voer de configuratie van het component uit
}
procedure TEstSearchDialogEditor.Configure;
var
  FrmEstSearchDialogEditor : TFrmEstSearchDialogEditor;
begin

  // Toon editor form
  FrmEstSearchDialogEditor := SearchDialogEditorClass.Create(Application);

  try

    FrmEstSearchDialogEditor.Name := 'EstSearchDialogEditorDesigner';

    FrmEstSearchDialogEditor.SearchDialog := dbEditDialog;

    FrmEstSearchDialogEditor.SearchDialogClass := SearchDialogClass;

    if FrmEstSearchDialogEditor.ShowModal = mrOK then
      Designer.Modified;
  finally
    FrmEstSearchDialogEditor.Free;
  end;

end;

procedure TEstSearchDialogEditor.Test;
var
  s : TIDBEdit;
begin
  // Maak tijdelijk search dialog component aan van het juiste type
  s := SearchDialogClass.Create(nil);

  try
    // Kopieer origineel searchdialog
    s.Assign(dbEditDialog);

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

{ TEstSearchDialogPropertyEditor }

function TEstSearchDialogPropertyEditor.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog];
end;

procedure TEstSearchDialogPropertyEditor.Edit;
var
  FrmEstSearchDialogEditor : TFrmEstSearchDialogEditor;
  FrmEstSearchDialogTemplateEditor : TFrmEstSearchDialogTemplateEditor;
  PropertyName : String;
begin
  inherited;

  // Bepaal naam van de property
  PropertyName := GetPropInfo.Name;

  // Start de juiste editor
  if (PropertyName = 'SearchDialogFieldList') or
     (PropertyName = 'SearchQuery') or
     (PropertyName = 'CountQuery') then
  begin

    // Toon editor form
    FrmEstSearchDialogEditor := SearchDialogEditorClass.Create(Application);

    try
      FrmEstSearchDialogEditor.Name := 'EstSearchDialogEditorDesigner';
      FrmEstSearchDialogEditor.SearchDialog := dbEditDialog;
      FrmEstSearchDialogEditor.SearchDialogClass := SearchDialogClass;

      if FrmEstSearchDialogEditor.ShowModal = mrOK then
        Designer.Modified;
    finally
      FrmEstSearchDialogEditor.Free;
    end;

  end;

  if (PropertyName = 'SearchPresetList') then
  begin

    // Toon editor form
    FrmEstSearchDialogTemplateEditor := TFrmEstSearchDialogTemplateEditor.Create(Application);

    try
      FrmEstSearchDialogTemplateEditor.SearchDialog       := dbEditDialog;
      FrmEstSearchDialogTemplateEditor.SearchDialogClass  := SearchDialogClass;

      if FrmEstSearchDialogTemplateEditor.ShowModal = mrOK then
        Designer.Modified;
    finally
      FrmEstSearchDialogTemplateEditor.Free;
    end;

  end;
end;

{
  Procedure : TEstSearchDialogPropertyEditor.dbEditDialog
  Auteur    : Erik Stok
  Doel      : Geef het component waarop de component editor werkt als een
              TIDBEdit (easy access)
}
function TEstSearchDialogPropertyEditor.dbEditDialog: TIDBEdit;
begin

  Result := TIDBEdit(GetComponent(0));
end;

function TEstSearchDialogPropertyEditor.GetValue: String;
begin
  // Geef de count query
  if GetName = 'CountQuery' then
    Result := dbEditDialog.CountQuery.Text;

  // Geef de search query
  if GetName = 'SearchQuery' then
    Result := dbEditDialog.SearchQuery.Text;

  // Geef het aantal items in de field list
  if GetName = 'SearchDialogFieldList' then
    Result := Format('<%d items>', [dbEditDialog.SearchDialogFieldList.Count]);

  // Geef het aantal items in preset list
  if GetName = 'SearchPresetList' then
    Result := Format('<%d items>', [dbEditDialog.SearchPresetList.Count]);
end;

procedure TEstSearchDialogPropertyEditor.SetValue(const Value: String);
begin
  // Sla niets op
end;

procedure TEstSearchDialogEditor.About;
var
  FrmEstSearchDialogAbout: TFrmEstSearchDialogAbout;
begin
  FrmEstSearchDialogAbout := TFrmEstSearchDialogAbout.Create(nil);
  try
    FrmEstSearchDialogAbout.ShowModal;
  finally
    FrmEstSearchDialogAbout.Free;
  end;
end;

end.
