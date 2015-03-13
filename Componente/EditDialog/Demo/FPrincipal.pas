unit FPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, uEstSearchDialogIntl, uEstSearchDialogDefaults, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.StdCtrls, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos;

type
  TFrmPrincipal = class(TForm)
    DBConexao: TFDConnection;
    DataSource1: TDataSource;
    ZQuery1: TFDQuery;
    DBAccess1: TFDConnection;
    EstSearchDialogDefaults1: TEstSearchDialogDefaults;
    EstSearchDialogInternational1: TEstSearchDialogInternational;
    IDBEditDialog1: TIDBEditDialog;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation


{$R *.dfm}

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
   ZQuery1.Open;
end;

end.
