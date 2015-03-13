{
  Unit   : uEstSearchDialogEditorsZeos
  Datum  : 1-1-2004
  Auteur : Erik Stok
  Doel   : Erik Stok search dialog for Zeos design editors 
}


unit uEstSearchDialogEditorsZeos;

interface
                                          
uses
  uEstSearchDialogEditors, fEstSearchDialogEditor, IDBEdit, {uEstSearchDialog,}
  uEstSearchDialogZeos, fEstSearchDialogEditorZeos ;

type

  TEstSearchDialogEditorZeos = class(TEstSearchDialogEditor)
  protected
    function SearchDialogEditorClass: TFrmEstSearchDialogEditorClass; override;
    function SearchDialogClass: TEstSearchDialogClass; override;
  end;

  TEstSearchDialogPropertyEditorZeos = class(TEstSearchDialogPropertyEditor)
  protected
    function SearchDialogEditorClass: TFrmEstSearchDialogEditorClass; override;
    function SearchDialogClass: TEstSearchDialogClass; override;
  end;

implementation

{ TEstSearchDialogEditorZeos }

function TEstSearchDialogEditorZeos.SearchDialogEditorClass: TFrmEstSearchDialogEditorClass;
begin
  Result := TFrmEstSearchDialogEditorZeos;
end;

function TEstSearchDialogEditorZeos.SearchDialogClass: TEstSearchDialogClass;
begin
  Result := TIDBEditDialog;
end;

{ TEstSearchDialogPropertyEditorZeos }

function TEstSearchDialogPropertyEditorZeos.SearchDialogClass: TEstSearchDialogClass;
begin
  Result := TIDBEditDialog;
end;

function TEstSearchDialogPropertyEditorZeos.SearchDialogEditorClass: TFrmEstSearchDialogEditorClass;
begin
  Result := TFrmEstSearchDialogEditorZeos;
end;

end.
