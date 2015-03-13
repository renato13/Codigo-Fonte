{**********************************************************************************}
{ VESTIS PCP  - SISTEMA PARA INDUSTRIAS DE CONFECÇÕES.                             } 
{                                                                                  } 
{ Este arquivo é parte do codigo-fonte do sistema VESTIS PCP, é um software livre; }
{ você pode redistribuí-lo e/ou modificá-lo dentro dos termos da GNU LGPL versão 3 }
{ como publicada pela Fundação do Software Livre (FSF).                            }
{                                                                                  }
{ Este programa é distribuído na esperança que possa ser útil, mas SEM NENHUMA     }
{ GARANTIA; sem uma garantia implícita de ADEQUAÇÃO a qualquer MERCADO ou          }
{ APLICAÇÃO EM PARTICULAR. Veja a Licença Pública Geral GNU/LGPL em português      }
{ para maiores detalhes.                                                           }
{                                                                                  }
{ Você deve ter recebido uma cópia da GNU LGPL versão 3, sob o título              }
{ "LICENCA.txt", junto com esse programa.                                          }
{ Se não, acesse <http://www.gnu.org/licenses/>                                    }
{ ou escreva para a Fundação do Software Livre (FSF) Inc.,                         }
{ 51 Franklin St, Fifth Floor, Boston, MA 02111-1301, USA.                         }
{                                                                                  }
{                                                                                  }
{ Autor: Adriano Zanini -  zanini@r7.com                                           }
{                                                                                  }
{**********************************************************************************}


{***********************************************************************************
**  SISTEMA...............: VESTIS PCP                                            **
**  DESCRIÇÃO.............: SISTEMA ERP PARA INDUSTRIAS DE CONFECÇÕES             **
**  LINGUAGEM.............: DELPHI XE7                                            ** 
**  BANCO DE DADOS........: SQL SERVER 2014                                       ** 
**                                                                                **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  ANALISTA/PROGRAMADOR..: ADRIANO ZANINI                                        **
**  AUTORIA...............: ADRIANO ZANINI                                        **
**  E-MAIL................: zanini@r7.com                                         **
**  ANO...................: 2012 - 2015                                           **
**                                                                                **
** -----------------------------------------------------------------------------  **
**                                                                                **
**  OBSERVAÇÃO............: CÓDIGO-FONTE LIVRE. E NÃO PODE SER COMERCIALIZADO.    **
**                          QUALQUER PESSOA FISICA OU JURIDICA (EMPRESA) PODE     **
**                          COPIAR E UTILIZAR SEM FINS COMERCIAIS.                **
**                                                                                **
***********************************************************************************}

unit FPedidoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, FFrameBotoes, FFrameBarra,
  DBCtrls, Buttons,    Mask, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, Menus, DB,  
  frxClass, frxDBSet, Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmPedidoCompra = class(TForm)
    Panel1: TPanel;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    EditCliente: TIDBEditDialog;
    EditData: TDBEdit;
    EditPedido: TDBEdit;
    EditDataEntrega: TDBEdit;
    EditPagamento: TIDBEditDialog;
    EditNomeFormaPagto: TEdit;
    EditNomeTrasportadora: TEdit;
    EditTransportadora: TIDBEditDialog;
    EditClienteNome: TEdit;
    EstSearchDialogZeos1: TIDBEditDialog;
    EditNomeCentroCusto: TEdit;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Panel6: TPanel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    EditQTDETotal: TDBEdit;
    Label5: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label6: TLabel;
    EditValorTotal: TDBEdit;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    dbProcurarPedido: TIDBEditDialog;
    dbfp_PedidCompra: TfrxDBDataset;
    frx_PedidoCompra: TfrxReport;
    ds_PedidoCompra: TDataSource;
    db_PedidoCompra:  TFDQuery;
    db_PedidoCompraItens: TFDQuery;
    dbfp_PedidCompraItens: TfrxDBDataset;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbProcurarProdutos: TIDBEditDialog;
    db_PedidoCompraEMPRESA: TIntegerField;
    db_PedidoCompraCODIGO: TIntegerField;
    db_PedidoCompraDATA: TSQLTimeStampField;
    db_PedidoCompraDATA_ENTREGA: TSQLTimeStampField;
    db_PedidoCompraREQUISICAO: TIntegerField;
    db_PedidoCompraFORNECEDOR: TIntegerField;
    db_PedidoCompraFORNECEDOR_NOME: TStringField;
    db_PedidoCompraFORNECEDORPEDIDO: TStringField;
    db_PedidoCompraTRANSPORTADORA: TIntegerField;
    db_PedidoCompraTRANSPORTADORA_NOME: TStringField;
    db_PedidoCompraFORMAPAGTO: TIntegerField;
    db_PedidoCompraFORMAPAGTO_NOME: TStringField;
    db_PedidoCompraDEPARTAMENTO: TIntegerField;
    db_PedidoCompraDEPARTAMENTO_NOME: TStringField;
    db_PedidoCompraUSUARIO: TIntegerField;
    db_PedidoCompraQTDE_PEDIDA: TBCDField;
    db_PedidoCompraQTDE_ENTREGUE: TBCDField;
    db_PedidoCompraQTDE_PENDENTE: TBCDField;
    db_PedidoCompraVLR_TOTAL: TBCDField;
    db_PedidoCompraFRETE_VALOR: TBCDField;
    db_PedidoCompraFRETE_TIPO: TStringField;
    db_PedidoCompraFRETE_TIPO_STATUS: TStringField;
    db_PedidoCompraEFETIVADO: TStringField;
    db_PedidoCompraAPROVADO: TStringField;
    db_PedidoCompraItensEMPRESA: TIntegerField;
    db_PedidoCompraItensCODIGO: TIntegerField;
    db_PedidoCompraItensPRODUTO: TStringField;
    db_PedidoCompraItensDESCRICAO: TStringField;
    db_PedidoCompraItensUNIDADE: TStringField;
    db_PedidoCompraItensQTDE_PEDIDA: TBCDField;
    db_PedidoCompraItensQTDE_ENTREGUE: TBCDField;
    db_PedidoCompraItensQTDE_RESTANTE: TBCDField;
    db_PedidoCompraItensVALOR_UNIT: TBCDField;
    db_PedidoCompraItensDESCONTO: TBCDField;
    db_PedidoCompraItensVLR_DESCONTO: TBCDField;
    db_PedidoCompraItensVALOR_TOTAL: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid1Enter(Sender: TObject);
    procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidoCompra: TFrmPedidoCompra;

implementation

uses FPrincipal, Biblioteca, Global, SQLServer, FBaseDados, FastReport;

{$R *.dfm}

procedure TFrmPedidoCompra.DBGrid1EditButtonClick(Sender: TObject);
begin

   if dbGrid1.SelectedField = BaseDados.db_PedidoCompraItensPRODUTO then
   begin

     if dbProcurarProdutos.Execute then
     begin

        If not (BaseDados.db_PedidoCompraItens.State in [dsinsert,dsedit]) then
           BaseDados.db_PedidoCompraItens.edit;

        // x0
        strReferencia := dbProcurarProdutos.ResultFieldAsString('REFERENCIA');
        BaseDados.db_PedidoCompraItens.FieldByName('PRODUTO').AsString := strReferencia;

        If (BaseDados.db_PedidoCompraItens.State in [dsinsert,dsedit]) then
           BaseDados.db_PedidoCompraItens.Post;
     end;
   end;

end;


procedure TFrmPedidoCompra.DBGrid1Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmPedidoCompra.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if key=vk_f8 then
   begin
     if dbProcurarProdutos.Execute then
     begin

        If not (BaseDados.db_PedidoCompraItens.State in [dsedit]) then
           BaseDados.db_PedidoCompraItens.edit;
        // x1
        strReferencia := dbProcurarProdutos.ResultFieldAsString('REFERENCIA');
        BaseDados.db_PedidoCompraItens.FieldByName('PRODUTO').AsString := strReferencia;

        If (BaseDados.db_PedidoCompraItens.State in [dsedit]) then
           BaseDados.db_PedidoCompraItens.Post;
     end;
   end;

end;

procedure TFrmPedidoCompra.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

Procedure TFrmPedidoCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BaseDados.db_PedidoCompraItens.close;
  BaseDados.db_PedidoCompra.close;
  FreeAndNil(FrmPedidoCompra);
end;

procedure TFrmPedidoCompra.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  BaseDados.db_PedidoCompraItens.Cancel;
  BaseDados.db_PedidoCompra.Cancel;
end;

procedure TFrmPedidoCompra.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := BaseDados.ds_PedidoCompra;
   BaseDados.db_PedidoCompra.Open;
   BaseDados.db_PedidoCompraItens.Open;

end;

procedure TFrmPedidoCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#27 then
   begin
      close;
   end;
end;

procedure TFrmPedidoCompra.FormResize(Sender: TObject);
begin
  DimensionarGrid(DBGrid1,self);

end;



procedure TFrmPedidoCompra.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  EditData.SetFocus;

end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
  BaseDados.db_PedidoCompraItens.Cancel;
  FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   db_PedidoCompraItens.close;
   db_PedidoCompra.close;
   db_PedidoCompra.ParamByName('EMPRESA').AsInteger  := FSistema.Empresa;
   db_PedidoCompra.ParamByName('CODIGO').AsInteger   := BaseDados.db_PedidoCompra.FieldByName('CODIGO').AsInteger;

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   prcFastReportEmailConfigurar( fncBuscaClienteEmail(BaseDados.db_PedidoCompra.FieldByName('FORNECEDOR').AsInteger) );

   frx_PedidoCompra.ShowReport;

end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if dbProcurarPedido.Execute then
   begin
      FrmFrameBotoes1.SpbCancelarClick(Sender);

      BaseDados.db_PedidoCompra.close;
      BaseDados.db_PedidoCompra.ParamByName('CODIGO').AsInteger := dbProcurarPedido.ResultFieldAsInteger('CODIGO');
      BaseDados.db_PedidoCompra.Open;

      BaseDados.db_PedidoCompraItens.close;
      BaseDados.db_PedidoCompraItens.Open;
      DimensionarGrid(DBGrid1,self);

   end;

end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmPedidoCompra.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

  FrmFrameBotoes1.SpbSalvarClick(Sender);

  If (BaseDados.db_PedidoCompraItens.State in [dsedit]) then
     BaseDados.db_PedidoCompraItens.Post;

end;

end.
