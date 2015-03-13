unit fEstSearchDialogEditorQueryResult;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, ExtCtrls, fEstSearchDialogBaseEditor;

type
  TFrmEstSearchDialogEditorQueryResult = class(TFrmEstSearchDialogBaseEditor)
    pnlMain: TPanel;
    pnlButtons: TPanel;
    btnOK: TButton;
    pnlControls: TPanel;
    dtsQueryResult: TDataSource;
    grdDtsQueryResult: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
