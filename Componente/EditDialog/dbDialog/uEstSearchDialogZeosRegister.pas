{
  Unit   : uEstSearchDialogZeosRegister
  Datum  : 01-01-2004
  Auteur : Erik Stok
  Doel   : Registreer componenten en editors
}

unit uEstSearchDialogZeosRegister;

interface

uses
  Classes,
  DesignIntf,
  IDBEdit,
  uEstSearchDialogRegister,
  uEstSearchDialogZeos,
  uEstSearchDialogTypes,
  uEstSearchDialogEditorsZeos;

procedure Register;

implementation


procedure Register;
begin
  // Registreer componenten
  RegisterComponents(ESTSEARCHDIALOGTAB, [TIDBEditDialog ]);

  // Registreer component editors
   RegisterComponentEditor(TIDBEditDialog, TEstSearchDialogEditorZeos);

   //RegisterComponentEditor(TIDBEdit,        TEstSearchDialogEditorZeos);

  // Registreer property editors
  RegisterPropertyEditor(TypeInfo(TEstSearchDialogFieldList),
                         TIDBEditDialog,
                         'SearchDialogFieldList',
                         TEstSearchDialogPropertyEditorZeos);

  RegisterPropertyEditor(TypeInfo(TStrings),
                         TIDBEditDialog,
                         'CountQuery',
                         TEstSearchDialogPropertyEditorZeos);

  RegisterPropertyEditor(TypeInfo(TStrings),
                         TIDBEditDialog,
                         'SearchQuery',
                         TEstSearchDialogPropertyEditorZeos);

  RegisterPropertyEditor(TypeInfo(TEstSearchPresetList),
                         TIDBEditDialog,
                         'SearchPresetList',
                         TEstSearchDialogPropertyEditorZeos);
end;

end.
