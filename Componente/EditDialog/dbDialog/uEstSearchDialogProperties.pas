{
  Unit   : uEstSearchDialogProperties
  Datum  : 12-1-2003
  Auteur : Erik Stok
  Doel   : Property functies om via rtti properties te zetten 
}
unit uEstSearchDialogProperties;

interface

uses
  TypInfo;

procedure SetStringPropertyByName(Obj: TObject; Prop: String; Value: String);

implementation

procedure SetStringPropertyByName(Obj: TObject; Prop: String; Value: String);
var
  PropInfo : PPropInfo;
begin
  PropInfo := GetPropInfo(Obj.ClassInfo, Prop);
  if PropInfo <> nil then
    SetStrProp(Obj, PropInfo, Value);
end;

end.
