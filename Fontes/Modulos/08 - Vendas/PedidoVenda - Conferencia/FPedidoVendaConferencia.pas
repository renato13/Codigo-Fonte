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

unit FPedidoVendaConferencia;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Menus, DB,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Stan.Intf, frxClass,
  frxDBSet, FFrameBotoes, FFrameBarra, ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, Vcl.Grids, Vcl.DBGrids;

type
   TFrmPedidoVendaConferencia = class(TForm)
      AdvGroupBox1: TGroupBox;
      AdvGroupBox3: TGroupBox;
      AdvGroupBox2: TGroupBox;
      AdvGroupBox4: TGroupBox;
      db_PedidoConferencia:  TFDQuery;
      db_PedidoConferenciaItens: TFDQuery;
      dS_PedidoConferencia: TDataSource;
      ds_PedidoConferenciaItens: TDataSource;
      EditCliente: TIDBEditDialog;
      EditNomeCliente: TEdit;
      EditNomeVendedor: TEdit;
      EditNomeFormaPagto: TEdit;
      EditNomeTrasportadora: TEdit;
      EditData: TDBEdit;
      EditCodigo: TDBEdit;
      EditTransportadora: TIDBEditDialog;
      SP_CalculaConferencia: TFDStoredProc;
      DBEdit5: TDBEdit;
      DBEdit1: TDBEdit;
      Label1: TLabel;
    frx_dsPedidoConferenciaGrade: TfrxDBDataset;
    db_ViewConferenciaGrade: TFDQuery;
    EditVendedor: TIDBEditDialog;
    FrxPedidoConferencia: TfrxReport;
    db_ViewConferencia: TFDQuery;
    frx_PedidoVenda: TfrxDBDataset;
    Label7: TLabel;
    Label8: TLabel;
    FrmFrameBarra1: TFrmFrameBarra;
    EditPagamento: TIDBEditDialog;
    GroupBox1: TGroupBox;
    db_PedidoConferenciaCODIGO: TIntegerField;
    db_PedidoConferenciaPEDIDO: TIntegerField;
    db_PedidoConferenciaDATA: TSQLTimeStampField;
    db_PedidoConferenciaCLIENTE: TIntegerField;
    db_PedidoConferenciaVENDEDOR: TIntegerField;
    db_PedidoConferenciaFORMAPAGTO: TIntegerField;
    db_PedidoConferenciaTRANSPORTADORA: TIntegerField;
    db_PedidoConferenciaHORA: TTimeField;
    db_PedidoConferenciaQTDE_TOTAL: TIntegerField;
    db_PedidoConferenciaVLR_TOTAL: TBCDField;
    db_PedidoConferenciaOBSERVACAO: TStringField;
    db_PedidoConferenciaItensCODIGO: TIntegerField;
    db_PedidoConferenciaItensPEDIDO: TIntegerField;
    db_PedidoConferenciaItensREFERENCIA: TStringField;
    db_PedidoConferenciaItensIDENTIFICADOR: TStringField;
    db_PedidoConferenciaItensGRADE_ID: TIntegerField;
    db_PedidoConferenciaItensCELULA: TStringField;
    db_PedidoConferenciaItensCOR_ID: TIntegerField;
    db_PedidoConferenciaItensCOR: TStringField;
    db_PedidoConferenciaItensTAMANHO_ID: TIntegerField;
    db_PedidoConferenciaItensTAMANHO: TStringField;
    db_PedidoConferenciaItensORDEM_GRADE: TStringField;
    db_PedidoConferenciaItensCELULA_COL: TIntegerField;
    db_PedidoConferenciaItensCOLUNA_ROW: TIntegerField;
    db_PedidoConferenciaItensQUANTIDADE: TIntegerField;
    db_PedidoConferenciaItensVALOR_UNIT: TBCDField;
    EditCaixas: TDBEdit;
    Label32: TLabel;
    EditMarca: TDBEdit;
    Label31: TLabel;
    EditEspecie: TDBEdit;
    Label30: TLabel;
    db_PedidoConferenciaFATURADO: TStringField;
    db_PedidoConferenciaFRETE_VOLUMES: TIntegerField;
    db_PedidoConferenciaFRETE_ESPECIE: TStringField;
    db_PedidoConferenciaFRETE_MARCA: TStringField;
    dbGrid_Produtos: TDBGrid;
    db_PedidoConferenciaItensDESCRICAO: TStringField;
    frxDBEtiquetasTestes: TfrxDBDataset;
    db_EtiquetasTestes: TFDQuery;
    frxEtiquetasTestes: TfrxReport;
    SPOP_CONFERENCIA_IMPORTAR_ITENS: TFDStoredProc;
    EditPedido: TIDBEditDialog;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    db_PedidoConferenciaVLR_DESCONTOPEDIDO: TBCDField;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    FrmFrameBotoes1: TFrmFrameBotoes;
    ConferenciaProcurar: TIDBEditDialog;
    db_CtaReceber: TFDQuery;
    db_ViewConferenciaCODIGO: TIntegerField;
    db_ViewConferenciaPEDIDO: TIntegerField;
    db_ViewConferenciaTITULO: TStringField;
    db_ViewConferenciaDATA: TSQLTimeStampField;
    db_ViewConferenciaDATAFATURAMENTO: TSQLTimeStampField;
    db_ViewConferenciaNOTAFISCAL: TIntegerField;
    db_ViewConferenciaCLIENTE: TIntegerField;
    db_ViewConferenciaCLIENTE_NOME: TStringField;
    db_ViewConferenciaCNPJ: TStringField;
    db_ViewConferenciaIE: TStringField;
    db_ViewConferenciaENDERECO: TStringField;
    db_ViewConferenciaNUMERO: TStringField;
    db_ViewConferenciaBAIRRO: TStringField;
    db_ViewConferenciaCEP: TStringField;
    db_ViewConferenciaNOMECIDADE: TStringField;
    db_ViewConferenciaUF: TStringField;
    db_ViewConferenciaDDD: TIntegerField;
    db_ViewConferenciaFONE: TStringField;
    db_ViewConferenciaFAX: TStringField;
    db_ViewConferenciaCONTATO: TStringField;
    db_ViewConferenciaEMAIL: TStringField;
    db_ViewConferenciaVENDEDOR: TIntegerField;
    db_ViewConferenciaVENDEDOR_NOME: TStringField;
    db_ViewConferenciaTRANSPORTADORA: TIntegerField;
    db_ViewConferenciaTRANSPORTADORA_NOME: TStringField;
    db_ViewConferenciaFORMA_PAGTO: TIntegerField;
    db_ViewConferenciaFORMA_PAGTO_NOME: TStringField;
    db_ViewConferenciaTIPOPAGAMENTO: TStringField;
    db_ViewConferenciaQTDE_TOTAL: TIntegerField;
    db_ViewConferenciaVLR_TOTAL: TBCDField;
    db_ViewConferenciaFATURADO: TStringField;
    db_ViewConferenciaFRETE_VOLUMES: TIntegerField;
    db_ViewConferenciaFRETE_ESPECIE: TStringField;
    db_ViewConferenciaFRETE_MARCA: TStringField;
    db_ViewConferenciaOBSERVACAO: TStringField;
    db_ViewConferenciaENTREGAPARCIAL: TStringField;
    db_ViewConferenciaVALORPARCIAL: TBCDField;
    ds_ViewConferencia: TDataSource;
    frx_dbCtaReceber: TfrxDBDataset;
    GroupBox3: TGroupBox;
    GridEmbalagens: TDBGrid;
    db_PedidoConferenciaEmbalagens: TFDQuery;
    ds_PedidoConferenciaEmbalagens: TDataSource;
    db_PedidoConferenciaEmbalagensCODIGO: TIntegerField;
    db_PedidoConferenciaEmbalagensPEDIDO: TIntegerField;
    db_PedidoConferenciaEmbalagensPRODUTO: TStringField;
    db_PedidoConferenciaEmbalagensDESCRICAO: TStringField;
    db_PedidoConferenciaEmbalagensQUANTIDADE: TIntegerField;
    dbProcurarMateriaPrima: TIDBEditDialog;
    btnQuitarPedido: TBitBtn;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure CalculaConferencia;
      procedure db_PedidoConferenciaBeforePost(DataSet: TDataSet);
      procedure db_PedidoConferenciaItensAfterDelete(DataSet: TDataSet);
      procedure db_PedidoConferenciaItensAfterPost(DataSet: TDataSet);
      procedure db_PedidoConferenciaNewRecord(DataSet: TDataSet);
      procedure dbGrid_ProdutosEnter(Sender: TObject);
      procedure db_PedidoConferenciaAfterPost(DataSet: TDataSet);
      procedure dbGrid_ProdutosKeyPress(Sender: TObject; var Key: Char);
      procedure AdvGroupBox4Exit(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
    procedure db_PedidoConferenciaPEDIDOChange(Sender: TField);
    procedure dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GroupBox1Enter(Sender: TObject);
    procedure db_PedidoConferenciaAfterOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure db_PedidoConferenciaEmbalagensBeforePost(DataSet: TDataSet);
    procedure GridEmbalagensEnter(Sender: TObject);
    procedure db_PedidoConferenciaEmbalagensAfterPost(DataSet: TDataSet);
    procedure db_PedidoConferenciaEmbalagensAfterOpen(DataSet: TDataSet);
    procedure GridEmbalagensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_PedidoConferenciaEmbalagensPRODUTOChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure btnQuitarPedidoClick(Sender: TObject);
    procedure db_PedidoConferenciaAfterScroll(DataSet: TDataSet);

   private
      { Private declarations }
      procedure AtualizarGrade;


   public
      { Public declarations }

   end;

var
   FrmPedidoVendaConferencia: TFrmPedidoVendaConferencia;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global,
  FPedidoVendaConferenciaGrade, FPedidoVendaConferenciaCodigoBarra,
  FOpcaoConferencia, FastReport, Classe.Global;

{$R *.dfm}

procedure TFrmPedidoVendaConferencia.FormCreate(Sender: TObject);
begin
   //
   FrmFrameBotoes1.DataSource := dS_PedidoConferencia;
   FrmPrincipal.MnuVendas_PedidosConferencia.Enabled := False;

   db_PedidoConferencia.Open;
   db_PedidoConferenciaItens.Open;
   //db_PedidoConferenciaEmbalagens.Open;

end;

procedure TFrmPedidoVendaConferencia.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   FrmPrincipal.MnuVendas_PedidosConferencia.Enabled := True;
   db_PedidoConferencia.close;
   db_PedidoConferenciaItens.close;
   db_PedidoConferenciaEmbalagens.close;

   Action := caFree;

end;


procedure TFrmPedidoVendaConferencia.FormResize(Sender: TObject);
begin
  DimensionarGrid(dbGrid_Produtos,self);
  DimensionarGrid(GridEmbalagens,self);

end;

procedure TFrmPedidoVendaConferencia.FormShow(Sender: TObject);
begin
     if UpperCase(FSistema.ExeName)<>'VESTISPCP' then
        FrmFrameBarra1.LblBarraTitulo.Caption :='Conferência | Ordem de Serviço';

end;

procedure TFrmPedidoVendaConferencia.CalculaConferencia;
begin

   SP_CalculaConferencia.ParamByName('CODIGO').AsInteger :=  db_PedidoConferencia.FieldByName('CODIGO').AsInteger;
   SP_CalculaConferencia.ExecProc;

   db_PedidoConferenciaItens.refresh;
   db_PedidoConferencia.refresh;
   DimensionarGrid(dbGrid_Produtos,self);

end;

procedure TFrmPedidoVendaConferencia.GridEmbalagensEnter(Sender: TObject);
begin
   if db_PedidoConferencia.IsEmpty then
   begin
      AvisoSistemaErro('Por favor, primeiro informe uma Conferencia');
      EditPedido.SetFocus;
      exit;
   end;


   If (db_PedidoConferencia.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoConferencia.Post;
   End;




end;

procedure TFrmPedidoVendaConferencia.GridEmbalagensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   if key=VK_F8 then
   begin
      if dbProcurarMateriaPrima.Execute then
      begin

         If not(db_PedidoConferenciaEmbalagens.State in [dsEdit]) then
            db_PedidoConferenciaEmbalagens.Edit;

         db_PedidoConferenciaEmbalagens.FieldByname('PRODUTO').AsString             := dbProcurarMateriaPrima.ResultFieldAsString('REFERENCIA');
         db_PedidoConferenciaEmbalagens.Post;

      end;
   end;

end;

procedure TFrmPedidoVendaConferencia.dbGrid_ProdutosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   if key=VK_F2 then
   begin
     strReferencia :=FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('REFERENCIA').AsString;

     If empty(strReferencia) then
     begin
        BeepCritica;
        AvisoSistemaErro('Referência não definida para montar grade ');
        Abort;
     end;

      FrmPedidoVendaConferenciaGrade := TFrmPedidoVendaConferenciaGrade.Create(Self);
      FrmPedidoVendaConferenciaGrade.ShowModal;
      CalculaConferencia;
   end;

   if key=VK_F9 then
   begin
      FrmPedidoVendaConferenciaCodigoBarra := TFrmPedidoVendaConferenciaCodigoBarra.Create(Self);
      FrmPedidoVendaConferenciaCodigoBarra.ShowModal;
   end;

end;

procedure TFrmPedidoVendaConferencia.dbGrid_ProdutosEnter(Sender: TObject);
begin
   // SALVAR ITENS DO PEDIDO DE VENDA
   If (db_PedidoConferencia.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoConferencia.Post;
   End;

end;

procedure TFrmPedidoVendaConferencia.dbGrid_ProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmPedidoVendaConferencia.db_PedidoConferenciaAfterOpen(
  DataSet: TDataSet);
begin
  DimensionarGrid(dbGrid_Produtos,self);
end;

procedure TFrmPedidoVendaConferencia.db_PedidoConferenciaAfterPost(DataSet: TDataSet);
begin

   db_PedidoConferencia.Open;
   db_PedidoConferencia.ParamByName('CODIGO').AsInteger := db_PedidoConferencia.FieldByName('CODIGO').AsInteger;
   db_PedidoConferenciaItens.Open;
   db_PedidoConferenciaItens.refresh;


   CalculaConferencia;

   if db_PedidoConferencia.FieldByName('FATURADO').AsString='N' then
      btnQuitarPedido.Enabled := True
   else
      btnQuitarPedido.Enabled := False;

end;

procedure TFrmPedidoVendaConferencia.db_PedidoConferenciaAfterScroll(
  DataSet: TDataSet);
begin
   if db_PedidoConferencia.FieldByName('FATURADO').AsString='N' then
      btnQuitarPedido.Enabled := True
   else
      btnQuitarPedido.Enabled := False;
end;

procedure TFrmPedidoVendaConferencia.db_PedidoConferenciaBeforePost(DataSet: TDataSet);
begin

   if (sOpcao='QUITAR') then
      db_PedidoConferencia.FieldByName('FATURADO').AsString := 'Q';

   if db_PedidoConferencia.FieldByName('PEDIDO').AsInteger<=0 then
   begin
      AvisoSistema('O pedido é obrigatório');
      EditPedido.SetFocus;
      Abort;
   end;


end;

procedure TFrmPedidoVendaConferencia.db_PedidoConferenciaEmbalagensAfterOpen(
  DataSet: TDataSet);
begin
  DimensionarGrid(GridEmbalagens,self);

end;

procedure TFrmPedidoVendaConferencia.db_PedidoConferenciaEmbalagensAfterPost(
  DataSet: TDataSet);
begin
  DimensionarGrid(GridEmbalagens,self);

end;

procedure TFrmPedidoVendaConferencia.db_PedidoConferenciaEmbalagensBeforePost(
  DataSet: TDataSet);
begin
   db_PedidoConferenciaEmbalagens.FieldByName('CODIGO').AsInteger   :=db_PedidoConferencia.FieldByName('CODIGO').AsInteger;
   db_PedidoConferenciaEmbalagens.FieldByName('PEDIDO').AsInteger   :=db_PedidoConferencia.FieldByName('PEDIDO').AsInteger;
end;

procedure TFrmPedidoVendaConferencia.db_PedidoConferenciaEmbalagensPRODUTOChange(
  Sender: TField);
begin

   db_PedidoConferenciaEmbalagens.FieldByName('DESCRICAO').AsString := fncReferenciaNome(db_PedidoConferenciaEmbalagens.FieldByName('PRODUTO').AsString);


end;

procedure TFrmPedidoVendaConferencia.db_PedidoConferenciaItensAfterDelete(DataSet: TDataSet);
begin
   AtualizarGrade;
   CalculaConferencia;
end;

procedure TFrmPedidoVendaConferencia.db_PedidoConferenciaItensAfterPost(DataSet: TDataSet);
begin
   AtualizarGrade;
   CalculaConferencia;
end;

procedure TFrmPedidoVendaConferencia.db_PedidoConferenciaNewRecord(DataSet: TDataSet);
begin
   db_PedidoConferencia.FieldByName('DATA').AsDateTime   := Date;
   db_PedidoConferencia.FieldByName('FATURADO').AsString :='N';

end;

procedure TFrmPedidoVendaConferencia.db_PedidoConferenciaPEDIDOChange(
  Sender: TField);
begin

   if db_PedidoConferencia.FieldByName('PEDIDO').AsInteger<=0 then
      exit;

   if ValidaPedido(db_PedidoConferencia.FieldByName('PEDIDO').AsInteger)=False then
   begin
      AvisoSistema('O pedido que você digitou não existe');
      EditPedido.SetFocus;
      Abort;
   end;

   db_PedidoConferencia.FieldByName('CLIENTE').AsInteger        :=RetornaPedidoCliente(db_PedidoConferencia.FieldByName('PEDIDO').AsInteger);
   db_PedidoConferencia.FieldByName('VENDEDOR').AsInteger       :=RetornaPedidoVendedor(db_PedidoConferencia.FieldByName('PEDIDO').AsInteger);
   db_PedidoConferencia.FieldByName('FORMAPAGTO').AsInteger     :=RetornaPedidoFormaPagamento(db_PedidoConferencia.FieldByName('PEDIDO').AsInteger);
   db_PedidoConferencia.FieldByName('TRANSPORTADORA').AsInteger :=RetornaPedidoTransportadora(db_PedidoConferencia.FieldByName('PEDIDO').AsInteger);

end;

procedure TFrmPedidoVendaConferencia.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   db_PedidoConferencia.close;
   db_PedidoConferenciaItens.close;

   db_PedidoConferencia.ParamByName('CODIGO').Clear;

   db_PedidoConferencia.Open;
   db_PedidoConferenciaItens.Open;

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   db_PedidoConferencia.ParamByName('CODIGO').Clear;

   EditPedido.SetFocus;

end;

procedure TFrmPedidoVendaConferencia.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbCancelarClick(Sender);
   db_PedidoConferencia.Cancel;

end;

procedure TFrmPedidoVendaConferencia.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin

   If (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'F') or
     (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'S') then
   begin
      AvisoSistema('Esta Conferencia de Pedido já foi faturada e não pederá ser alterada');
      exit;
   end;

   If (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'C') or
     (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'CANCELADO') then
   begin
      AvisoSistemaErro('Esta Conferencia de Pedido foi cancelada não pederá ser alterada');
      abort;
   End;

   If (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'Q') or
     (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'QUITADO') then
   begin
      AvisoSistemaErro('Esta Conferencia de Pedido foi quitada não pederá ser alterada');
      abort;
   End;

   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmPedidoVendaConferencia.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin

   If (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'F') or
     (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'S') then
   begin
      AvisoSistemaErro('Esta Conferencia de Pedido já foi faturada e não pederá ser excluida');
      exit;
   end;

   If (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'C') or
     (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'CANCELADO') then
   begin
      AvisoSistemaErro('Esta Conferencia de Pedido foi cancelada não pederá ser excluida');
      abort;
   End;


   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmPedidoVendaConferencia.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   If (db_PedidoConferencia.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoConferencia.Post;
   End;

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   db_ViewConferenciaGrade.close;
   db_ViewConferenciaGrade.ParamByName('CODIGO').AsInteger := db_PedidoConferencia.FieldByName('CODIGO').AsInteger;
   db_ViewConferenciaGrade.Open;

   prcFastReportEmailConfigurar( fncBuscaClienteEmail(db_PedidoConferencia.FieldByName('CLIENTE').AsInteger) );

   FrxPedidoConferencia.ShowReport;

end;

procedure TFrmPedidoVendaConferencia.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if ConferenciaProcurar.Execute then
   begin
      db_PedidoConferencia.close;
      db_PedidoConferencia.ParamByName('CODIGO').AsInteger :=ConferenciaProcurar.ResultFieldAsInteger('CODIGO');
      db_PedidoConferencia.open;

      db_PedidoConferenciaItens.close;
      db_PedidoConferenciaItens.open;
      AtualizarGrade;
      DimensionarGrid(GridEmbalagens,self);
   end;


end;

procedure TFrmPedidoVendaConferencia.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmPedidoVendaConferencia.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);
   {
   If (db_PedidoConferencia.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoConferencia.Post;
   End;
   }

end;

procedure TFrmPedidoVendaConferencia.GroupBox1Enter(Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);


   if db_PedidoConferencia.IsEmpty then
      exit;

   if not db_PedidoConferenciaItens.IsEmpty then
      exit;

   FrmOpcaoConferencia := tFrmOpcaoConferencia.Create(self);
   FrmOpcaoConferencia.ShowModal;

   if sOpcao='IMPORTAR' Then
   begin
      SPOP_CONFERENCIA_IMPORTAR_ITENS.ParamByName('NCONFERENCIA').AsInteger :=  db_PedidoConferencia.FieldByName('CODIGO').AsInteger;
      SPOP_CONFERENCIA_IMPORTAR_ITENS.ParamByName('NPEDIDO').AsInteger      :=  db_PedidoConferencia.FieldByName('PEDIDO').AsInteger;
      SPOP_CONFERENCIA_IMPORTAR_ITENS.ParamByName('ACAO').AsString          :=  'IMPORTAR';
      SPOP_CONFERENCIA_IMPORTAR_ITENS.ExecProc;
      CalculaConferencia;

   end;

   if sOpcao='DIGITAR' Then
   begin
      SPOP_CONFERENCIA_IMPORTAR_ITENS.ParamByName('NCONFERENCIA').AsInteger :=  db_PedidoConferencia.FieldByName('CODIGO').AsInteger;
      SPOP_CONFERENCIA_IMPORTAR_ITENS.ParamByName('NPEDIDO').AsInteger      :=  db_PedidoConferencia.FieldByName('PEDIDO').AsInteger;
      SPOP_CONFERENCIA_IMPORTAR_ITENS.ParamByName('ACAO').AsString          :=  'DIGITAR';
      SPOP_CONFERENCIA_IMPORTAR_ITENS.ExecProc;
      CalculaConferencia;


      FrmPedidoVendaConferenciaGrade := TFrmPedidoVendaConferenciaGrade.Create(Self);
      FrmPedidoVendaConferenciaGrade.ShowModal;
      CalculaConferencia;


   end;


   if sOpcao='QUITAR' Then
   begin
      SPOP_CONFERENCIA_IMPORTAR_ITENS.ParamByName('NCONFERENCIA').AsInteger :=  db_PedidoConferencia.FieldByName('CODIGO').AsInteger;
      SPOP_CONFERENCIA_IMPORTAR_ITENS.ParamByName('NPEDIDO').AsInteger      :=  db_PedidoConferencia.FieldByName('PEDIDO').AsInteger;
      SPOP_CONFERENCIA_IMPORTAR_ITENS.ParamByName('ACAO').AsString          :=  'QUITAR';
      SPOP_CONFERENCIA_IMPORTAR_ITENS.ExecProc;
      CalculaConferencia;

      {
      FrmPedidoVendaConferenciaGrade := TFrmPedidoVendaConferenciaGrade.Create(Self);
      FrmPedidoVendaConferenciaGrade.ShowModal;
      CalculaConferencia;
      }

   end;

   CalculaConferencia;
   dbGrid_Produtos.SetFocus;


end;

procedure TFrmPedidoVendaConferencia.AdvGroupBox4Exit(Sender: TObject);
begin

   // SALVAR ITENS DO PEDIDO DE VENDA
   If (db_PedidoConferencia.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoConferencia.Post;
   End;

end;



procedure TFrmPedidoVendaConferencia.AtualizarGrade;
begin
   {
   GradeProdutoConferencia_Montar(db_PedidoConferencia.FieldByName('CODIGO').AsInteger,    StringGridOpcoes);
   GradeProdutoConferencia_Carregar(db_PedidoConferencia.FieldByName('CODIGO').AsInteger,  StringGridOpcoes);
   }
end;


procedure TFrmPedidoVendaConferencia.btnQuitarPedidoClick(Sender: TObject);
begin
   if db_PedidoConferencia.IsEmpty then
   begin
      AvisoSistemaErro('Informe uma Conferencia.');
      exit;
   end;

   if db_PedidoConferenciaItens.IsEmpty then
   begin
      AvisoSistemaErro('Não há itens informados na grade para quitar.');
      exit;
   end;


   If (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'F') or
     (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'S') then
   begin
      AvisoSistemaErro('Esta Conferencia de Pedido já foi faturada.');
      exit;
   end;

   If (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'C') or
     (db_PedidoConferencia.FieldByName('FATURADO').AsString = 'CANCELADO') then
   begin
      AvisoSistemaErro('Esta Conferencia de Pedido foi cancelada.');
      abort;
   End;



   if pergunta('Confirma quitar as quantidades informadas')=false then
      exit;

   If not (db_PedidoConferencia.State in [dsedit, dsinsert]) then
      db_PedidoConferencia.Edit;

   If  (db_PedidoConferencia.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoConferencia.FieldByName('FATURADO').AsString := 'Q';
      db_PedidoConferencia.Post;
   End;

end;

end.
