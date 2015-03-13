{
  Unit    : fEstSearchDialogEditorZeos
  Datum   : 01-01-2004
  Auteur  : Erik Stok
  Doel    : ErikStok search dialog designtime editor for Zeos
}
unit fEstSearchDialogEditorZeos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IDBEdit, uEstSearchDialogZeos, fEstSearchDialogEditor,
  ActnList, StdCtrls, ExtCtrls,
  Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.Actions;





type
  TFrmEstSearchDialogEditorZeos = class(TFrmEstSearchDialogEditor)
    qrySearch: TFDQuery;
    qryCount: TFDQuery;
  protected
    function SearchDataSet: TDataSet; override;
    function CountDataSet: TDataSet; override;
    procedure SetSearchSQL(SQL: String); override;
    procedure SetCountSQL(SQL: String); override;

    //procedure SetSearchDialog(const Value: TEstSearchDialog); override;
    procedure SetSearchDialog(const Value: TIDBEdit); override;

  end;

implementation

{$R *.dfm}

{ TFrmEstSearchDialogEditorZeos }

function TFrmEstSearchDialogEditorZeos.CountDataSet: TDataSet;
begin
  Result := qryCount;
end;

function TFrmEstSearchDialogEditorZeos.SearchDataSet: TDataSet;
begin
  Result := qrySearch;
end;

procedure TFrmEstSearchDialogEditorZeos.SetCountSQL(SQL: String);
begin
  qryCount.Close;
  qryCount.SQL.Text := SQL;
end;

procedure TFrmEstSearchDialogEditorZeos.SetSearchDialog(const Value: TIDBEdit);
begin
  inherited;

  // Stel ook de connection van beide query componenten in
  qrySearch.Connection  := (Value as TIDBEditDialog).Connection;
  qryCount.Connection   := (Value as TIDBEditDialog).Connection;
end;


{
procedure TFrmEstSearchDialogEditorZeos.SetSearchDialog(const Value: TEstSearchDialog);
begin
  inherited;

  // Stel ook de connection van beide query componenten in
  qrySearch.Connection  := (Value as TIDBEditDialog).Connection;
  qryCount.Connection   := (Value as TIDBEditDialog).Connection;
end;
}

procedure TFrmEstSearchDialogEditorZeos.SetSearchSQL(SQL: String);
begin
  qrySearch.Close;
  qrySearch.SQL.Text := SQL;
end;

end.
