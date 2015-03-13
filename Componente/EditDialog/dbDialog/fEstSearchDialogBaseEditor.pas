{
  Unit    : fEstSearchDialogBaseEditor
  Date    : 20-9-2004
  Author  : Erik Stok
  Purpose : Basis designtime form voor design editor forms
}

unit fEstSearchDialogBaseEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry;

type
  TFrmEstSearchDialogBaseEditor = class(TForm)
  protected
    procedure DoCreate; override;
    procedure DoDestroy; override;

    procedure ReadValuesFromRegistry(Registry: TRegistry); virtual;
    procedure WriteValuesToRegistry(Registry: TRegistry); virtual;
  end;

implementation

{$R *.dfm}

{ TFrmEstSearchDialogBaseEditor }

procedure TFrmEstSearchDialogBaseEditor.DoCreate;
var
  Registry: TRegistry;
begin
  inherited;

  // Lees positie en formaat uit de registry
  Registry := TRegistry.Create;

  try
    Registry.Access := KEY_READ;
    Registry.RootKey := HKEY_CURRENT_USER;

    if Registry.OpenKeyReadOnly('Software\ErikStok\EstSearchDialog\' + ClassName) then
      ReadValuesFromRegistry(Registry)
    else
      Position := poScreenCenter;

  finally
    Registry.Free;
  end;
end;

procedure TFrmEstSearchDialogBaseEditor.DoDestroy;
var
  Registry: TRegistry;
begin
  // Schrijf positie en formaat naar de registry
  Registry := TRegistry.Create;

  try
    Registry.Access := KEY_WRITE;
    Registry.RootKey := HKEY_CURRENT_USER;

    if Registry.OpenKey('Software\ErikStok\EstSearchDialog\' + ClassName, True) then
      WriteValuesToRegistry(Registry);

  finally
    Registry.Free;
  end;
  inherited;
end;

procedure TFrmEstSearchDialogBaseEditor.ReadValuesFromRegistry(Registry: TRegistry);
begin
  // Lees positie
  if Registry.ValueExists('Left') then
    Left := Registry.ReadInteger('Left');

  if Registry.ValueExists('Top') then
    Top := Registry.ReadInteger('Top');

  // Lees hoogte breedte
  if Registry.ValueExists('Width') then
    Width := Registry.ReadInteger('Width');

  if Registry.ValueExists('Height') then
    Height := Registry.ReadInteger('Height');
end;

procedure TFrmEstSearchDialogBaseEditor.WriteValuesToRegistry(Registry: TRegistry);
begin
  // Schrijf positie
  Registry.WriteInteger('Left', Left);
  Registry.WriteInteger('Top', Top);

  // Schrijf hoogte breedte
  Registry.WriteInteger('Width', Width);
  Registry.WriteInteger('Height', Height);
end;

end.
