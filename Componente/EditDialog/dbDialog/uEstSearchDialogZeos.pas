{
  Unit   : uEstSearchDialogZeos
  Date   : 01-01-2004
  Auteur : Erik Stok
  Doel   : Zeos versie van het search dialog component
}
unit uEstSearchDialogZeos;

interface

uses
  Classes, IDBEdit, uEstSearchDialog,
  WideStrings,

  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type

  TIDBEditDialog = class(TIDBEdit)
  private
    FConnection: TFDConnection;
    FSearchQuery: TFDQuery;
    FcountQuery: TFDQuery;
  protected
    procedure SetConnection(const Value: TFDConnection); virtual;

    function SearchDataSet: TDataSet; override;
    function CountDataSet: TDataSet; override;

    procedure DoSetSearchQuery(Sender: TObject; SQL: String); override;
    procedure DoSetCountQuery(Sender: TObject; SQL: String); override;

    function ValidConnection: Boolean; override;

    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure AssignTo(Dest: TPersistent); override;

  published
    property Connection: TFDConnection read FConnection write SetConnection;
  end;


implementation

{ TIDBEditDialog }

constructor TIDBEditDialog.Create(AOwner: TComponent);
begin
  inherited;

  // Init privates
  FConnection := nil;

  FSearchQuery := TFDQuery.Create(Self);
  FcountQuery  := TFDQuery.Create(Self);

end;

destructor TIDBEditDialog.Destroy;
begin
  // Ruim alles netjes op
  FSearchQuery.Free;
  FcountQuery.Free;

  inherited;
end;

{
  Procedure : TIDBEditDialog.SetConnection
  Auteur    : Erik Stok
  Doel      : Stel de connection van het search dialog component in
}
procedure TIDBEditDialog.SetConnection(const Value: TFDConnection);
begin
  if Value <> FConnection then
  begin
    // Stel connection in op gegeven waarde
    FConnection := Value;

    // Stel van de search en count queries ook de connections in
    FSearchQuery.Connection := FConnection;
    FcountQuery.Connection := FConnection;
  end;
end;

function TIDBEditDialog.CountDataSet: TDataSet;
begin
  Result := FCountQuery;
end;

function TIDBEditDialog.SearchDataSet: TDataSet;
begin
  Result := FSearchQuery;
end;

procedure TIDBEditDialog.DoSetSearchQuery(Sender: TObject; SQL: String);
begin
  inherited;

  // Stel search query in
  FSearchQuery.Close;
  FSearchQuery.SQL.Clear;
  FSearchQuery.SQL.Add( SQL );
end;

procedure TIDBEditDialog.DoSetCountQuery(Sender: TObject; SQL: String);
begin
  inherited;

  // Stel count query in
  FCountQuery.Close;
  FCountQuery.SQL.Clear;
  FCountQuery.SQL.Add( SQL );
end;

{
  Procedure : TIDBEditDialog.AssignTo
  Auteur    : Erik Stok
  Doel      : Assign ook de connection
}
procedure TIDBEditDialog.AssignTo(Dest: TPersistent);
var
  DestSearchDialog : TIDBEditDialog;
begin
  inherited AssignTo(Dest);

  DestSearchDialog := Dest as TIDBEditDialog;
  DestSearchDialog.Connection := Connection;
end;

{
  Procedure : TIDBEditDialog.ValidConnection
  Auteur    : Erik Stok
  Doel      : Controleer of de opgegeven connection geldig is
}
function TIDBEditDialog.ValidConnection: Boolean;
begin
  Result := Assigned(Connection);
end;

procedure TIDBEditDialog.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;

  // Als de connection verwijderd wordt, zet dan de property op nil
  if (AComponent = FConnection) and (Operation = opRemove) then
    Connection := nil;
end;

end.
