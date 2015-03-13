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


unit FPedidoVenda;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Menus,
   Grids,  DB,
    DBGrids,  ISFEdit,
   ISFEditbtn, ISFdbEditbtn,
   uEstSearchDialogZeos, IDBEdit, FFrameBotoes, frxClass, frxDBSet,
     ComCtrls, FFrameBarra, ImgList, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
   TFrmPedidoVenda = class(TForm)
      AdvGroupBox1: TGroupBox;
    grbTotais: TGroupBox;
      AdvGroupBox2: TGroupBox;
      AdvGroupBox4: TGroupBox;
      dbGrid_Produtos: TDBGrid;
      db_Pedido: TFDQuery;
      db_PedidoItens: TFDQuery;
      ds_Pedido: TDataSource;
      ds_PedidoItens: TDataSource;
      EditCliente: TIDBEditDialog;
      EditPagamento: TIDBEditDialog;
      EditNomeCliente: TEdit;
      EditNomeVendedor: TEdit;
      EditNomeFormaPagto: TEdit;
      EditNomeTrasportadora: TEdit;
      EditData: TDBEdit;
      EditDataEntrega: TDBEdit;
      EditTransportadora: TIDBEditDialog;
      SP_CalculaPedido: TFDStoredProc;
      DBEdit5: TDBEdit;
      DBEdit1: TDBEdit;
      AdvGroupBox5: TGroupBox;
      GroupBox1: TGroupBox;
      Panel1: TPanel;
      Label1: TLabel;
      Label2: TLabel;
      DBMemo1: TDBMemo;
      frx_dsPedido: TfrxDBDataset;
      frx_dsPedidosItens: TfrxDBDataset;
      frx_dsPedidoGrade: TfrxDBDataset;
      db_PedidoGrade: TFDQuery;
      DBRadioGroup2: TDBRadioGroup;
      DBRadioGroup1: TDBRadioGroup;
      DBEdit2: TDBEdit;
      Label3: TLabel;
      db_PedidoCODIGO: TIntegerField;
      db_PedidoDATA: TSQLTimeStampField;
      db_PedidoCLIENTE: TIntegerField;
      db_PedidoVENDEDOR: TIntegerField;
      db_PedidoTABELA: TIntegerField;
      db_PedidoFORMAPAGTO: TIntegerField;
      db_PedidoTRANSPORTADORA: TIntegerField;
      db_PedidoTIPO: TStringField;
      db_PedidoDATA_FATURAMENTO: TSQLTimeStampField;
      db_PedidoDATA_ENTREGA: TSQLTimeStampField;
      db_PedidoPRIORIDADE: TStringField;
      db_PedidoORIGEM: TStringField;
      db_PedidoCONFERENCIA: TIntegerField;
      db_PedidoDOCUMENTO: TStringField;
      db_PedidoQTDE_DISPONIVEL: TIntegerField;
      db_PedidoQTDE_TOTAL: TIntegerField;
      db_PedidoQTDE_PRODUTOS: TIntegerField;
      db_PedidoQTDE_SERVICOS: TIntegerField;
      db_PedidoVLR_DESCONTO: TBCDField;
      db_PedidoVLR_SERVICOS: TBCDField;
      db_PedidoVLR_PRODUTOS: TBCDField;
      db_PedidoVLR_IMPOSTOS: TBCDField;
      db_PedidoVLR_TOTAL: TBCDField;
      db_PedidoFRETE: TStringField;
      db_PedidoIMPRESSO: TStringField;
      db_PedidoOBSERVACAO: TStringField;
      db_PedidoRESPONSAVEL: TStringField;
      db_PedidoAPROVADO: TStringField;
      db_PedidoSTATUS: TStringField;
      db_PedidoITENS_IMPORTADO: TStringField;
    EditTabela: TIDBEditDialog;
    EditTabelaNome: TEdit;
      db_PedidoItensCODIGO: TIntegerField;
      db_PedidoItensDATA: TSQLTimeStampField;
      db_PedidoItensCLIENTE: TIntegerField;
      db_PedidoItensVENDEDOR: TIntegerField;
      db_PedidoItensTABELA: TIntegerField;
      db_PedidoItensFORMAPAGTO: TIntegerField;
      db_PedidoItensTRANSPORTADORA: TIntegerField;
      db_PedidoItensTIPO: TStringField;
      db_PedidoItensDESCRICAO: TStringField;
      db_PedidoItensUND: TStringField;
      db_PedidoItensQTDE: TBCDField;
      db_PedidoItensVLR_UNIT: TBCDField;
      db_PedidoItensDESCONTO: TBCDField;
      db_PedidoItensVLR_DESCONTO: TBCDField;
      db_PedidoItensVLR_IMPOSTOS: TBCDField;
      db_PedidoItensVLR_TOTAL: TBCDField;
      db_PedidoItensQTDE_LIBERADA: TIntegerField;
      db_PedidoItensQTDE_FATURADA: TIntegerField;
      db_PedidoItensQTDE_CANCELADA: TIntegerField;
    EditVendedor: TIDBEditDialog;
    FrxPedidoVenda: TfrxReport;
    db_PedidoItensAPROVADO: TStringField;
    db_PedidoVenda: TFDQuery;
    frx_PedidoVenda: TfrxDBDataset;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    db_PedidoCOMISSAO: TBCDField;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    db_PedidoDESCONTO: TBCDField;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    BtnRecalcular: TBitBtn;
    ProgressBar1: TProgressBar;
    BitBtn1: TBitBtn;
    db_PedidoENTREGAPARCIAL: TStringField;
    db_PedidoENTREGAPARCIALPERCENTUAL: TBCDField;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    dsReferenciaTecidos: TDataSource;
    dbReferenciaTecidos: TFDQuery;
    dbReferenciaTecidosPRODUTO: TStringField;
    dbReferenciaTecidosDESCRICAO: TStringField;
    dbReferenciaTecidosUNIDADE: TStringField;
    dbReferenciaTecidosESTOQUESALDO: TBCDField;
    dbReferenciaTecidosSELECIONADO: TStringField;
    dbReferenciaTecidosREFERENCIA: TStringField;
    dbReferenciaTecidosCONSUMO: TBCDField;
    dbReferenciaTecidosQTDEBAIXAR: TBCDField;
    db_PedidoEMPRESA: TIntegerField;
    FrmFrameBarra1: TFrmFrameBarra;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbeditPedidoProcurar: TIDBEditDialog;
    dbProcurarProduto: TIDBEditDialog;
    db_PedidoItensEMPRESA: TIntegerField;
    db_PedidoItensREFERENCIA: TStringField;
    db_PedidoItensREFERENCIATECIDO: TStringField;
    db_PedidoORDEMPRODUCAO: TIntegerField;
    db_PedidoItensORDEMPRODUCAO: TIntegerField;
    db_PedidoPRODUZINDO: TStringField;
    db_PedidoSELECIONADO: TStringField;
    db_PedidoItensPRODUZINDO: TStringField;
    db_PedidoItensSELECIONADO: TStringField;
    db_PedidoTRANSPORTEVOLUMES: TIntegerField;
    db_PedidoSTATUSPERCENTUAL: TBCDField;
    db_TabelaReferencia: TFDQuery;
    db_TabelaReferenciaCODIGO: TIntegerField;
    db_TabelaReferenciaDATA_ATUALIZADA: TSQLTimeStampField;
    db_TabelaReferenciaREFERENCIA: TStringField;
    db_TabelaReferenciaDESCRICAO: TStringField;
    db_TabelaReferenciaPRC_VENDA: TBCDField;
    EditPedido: TDBEdit;
    Label10: TLabel;
    FrxPedidoVendaSemValores: TfrxReport;
    PopupImprimir: TPopupMenu;
    ImprimirPedidosemvalores1: TMenuItem;
    ImprimirPedidocomvalores1: TMenuItem;
    FrxPedidoServicos: TfrxReport;
    db_PedidoServicos: TFDQuery;
    frx_dsPedidoServicos: TfrxDBDataset;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure CalculaPedido;
      procedure db_PedidoBeforePost(DataSet: TDataSet);
      procedure db_PedidoItensBeforePost(DataSet: TDataSet);
      procedure dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure db_PedidoItensAfterDelete(DataSet: TDataSet);
      procedure db_PedidoItensAfterPost(DataSet: TDataSet);
      procedure db_PedidoNewRecord(DataSet: TDataSet);
      procedure db_PedidoDATAChange(Sender: TField);
      procedure dbGrid_ProdutosEnter(Sender: TObject);
      procedure db_PedidoAfterPost(DataSet: TDataSet);
      procedure dbGrid_ProdutosColEnter(Sender: TObject);
      procedure dbGrid_ProdutosEditButtonClick(Sender: TObject);
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
    procedure db_PedidoAfterScroll(DataSet: TDataSet);
    procedure db_PedidoAfterDelete(DataSet: TDataSet);
    procedure db_PedidoCLIENTEChange(Sender: TField);
    procedure BtnRecalcularClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbReferenciaTecidosAfterPost(DataSet: TDataSet);
    procedure dbReferenciaTecidosQTDEBAIXARChange(Sender: TField);
    procedure db_PedidoBeforeOpen(DataSet: TDataSet);
    procedure db_PedidoItensAfterOpen(DataSet: TDataSet);
    procedure db_PedidoItensREFERENCIAChange(Sender: TField);
    procedure FormResize(Sender: TObject);
    procedure dbGrid_ProdutosExit(Sender: TObject);
    procedure db_PedidoItensBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ImprimirPedidocomvalores1Click(Sender: TObject);
    procedure ImprimirPedidosemvalores1Click(Sender: TObject);

   private
      { Private declarations }
      bCalculoAutomatico : Boolean;
    procedure prcProcurarProduto;
    procedure prcAbriGrade;


   public
      { Public declarations }
      Function ChecarProtecaoPedido : Boolean;

   end;

var
   FrmPedidoVenda: TFrmPedidoVenda;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, FPedidoVendaGrade,
  FPedidoVendaGradePrecos, FPedidoVendaTecidos, FBaseDados, FPedidoVendaParcial,
  FTabelaPrecoValor, FPedidoVendaCodigoBarra, FastReport;

{$R *.dfm}

procedure TFrmPedidoVenda.FormCreate(Sender: TObject);
begin
   //
   FrmPrincipal.MnuVendas_Pedidos.Enabled := False;
   FrmFrameBotoes1.DataSource := ds_Pedido;

   db_Pedido.Open;
   db_PedidoItens.Open;


end;


procedure TFrmPedidoVenda.FormResize(Sender: TObject);
begin

  DimensionarGrid(DBGrid_Produtos,self);

end;

procedure TFrmPedidoVenda.FormShow(Sender: TObject);
begin
   if UpperCase(FSistema.ExeName)<>'VESTISPCP' then
   begin
      FrmFrameBarra1.LblBarraTitulo.Caption :='Ordem de Serviços';
   end;

   if (fncUsuario_retCampo(nUsuario,'PERMISSAO_PEDIDOVENDAVERPRECOS')='N') Then
   begin
      grbTotais.Visible                   :=False;
      dbGrid_Produtos.Columns[3].Visible  :=False;
      dbGrid_Produtos.Columns[4].Visible  :=False;
      dbGrid_Produtos.Columns[5].Visible  :=False;
      FrmFrameBotoes1.SpbImprimir.Visible :=False;
   end;

   if (fncUsuario_retCampo(nUsuario,'PERMISSAO_PEDIDOVENDAALTERARPAGAMENTO')='N') Then
   begin
      EditPagamento.Enabled  :=False;
   end;


end;

procedure TFrmPedidoVenda.CalculaPedido;
begin

   SP_CalculaPedido.ParamByName('NEMPRESA').AsInteger :=  FSistema.Empresa;
   SP_CalculaPedido.ParamByName('CODIGO').AsInteger   :=  db_Pedido.FieldByName('CODIGO').AsInteger;
   SP_CalculaPedido.ExecProc;

   db_Pedido.RefreshRecord;
   db_PedidoItens.RefreshRecord;


end;

Function TFrmPedidoVenda.ChecarProtecaoPedido : Boolean;
begin

   if (db_Pedido.FieldByName('APROVADO').AsString = 'S')     or
      (db_Pedido.FieldByName('APROVADO').AsString = 'SIM' )  then
   begin
      //{incompativel para FireDac} db_Pedido.readonly :=true;
      //{incompativel para FireDac} db_PedidoItens.readonly :=true;
      result :=True;
   end
   else
   begin
      //{incompativel para FireDac} db_Pedido.readonly :=false;
      //{incompativel para FireDac} db_PedidoItens.readonly :=false;
      result :=False;
   end;


end;

procedure TFrmPedidoVenda.dbGrid_ProdutosColEnter(Sender: TObject);
begin

   {
   if (dbGrid_Produtos.SelectedField = db_PedidoItensQTDE) and
     not empty(db_PedidoItens.FieldByName('REFERENCIA').AsString) then
   // if dbGrid_Produtos.SelectedField=db_PedidoItens.FieldByName('REFERENCIA').AsString then
   Begin
      // SALVAR ITENS DO PEDIDO DE VENDA
      If (db_PedidoItens.State in [dsedit, dsinsert]) then
      Begin
         db_PedidoItens.Post;
      End;

      prcAbriGrade;
   End;
   }


end;

procedure TFrmPedidoVenda.prcProcurarProduto;
begin
   if dbProcurarProduto.Execute then
   begin
      If not(db_PedidoItens.state in [dsEdit]) then
         db_PedidoItens.Edit;

      db_PedidoItens.FieldByName('REFERENCIA').AsString := dbProcurarProduto.ResultFieldAsString('REFERENCIA');
      If (db_PedidoItens.state in [dsEdit]) then
         db_PedidoItens.Post;
   end;
end;


procedure TFrmPedidoVenda.dbGrid_ProdutosEditButtonClick(Sender: TObject);
begin

  strReferencia := UpperCase( Trim(db_PedidoItens.FieldByName('REFERENCIA').AsString) );
   // coluna produto
   // if ACol=1  then
   if dbGrid_Produtos.SelectedField = db_PedidoItensREFERENCIA then
   begin
      prcProcurarProduto;
   end;

   if (dbGrid_Produtos.SelectedField = db_PedidoItensQTDE) and
     not empty(strReferencia) then
   Begin
      // SALVAR ITENS DO PEDIDO DE VENDA
      If (db_PedidoItens.State in [dsedit, dsinsert]) then
      Begin
         db_PedidoItens.Post;
      End;

      if ValidarReferenciaCorTamanho(strReferencia) Then
      begin
         prcAbriGrade;
      end;
   End;

end;

procedure TFrmPedidoVenda.dbGrid_ProdutosEnter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);


end;

procedure TFrmPedidoVenda.dbGrid_ProdutosExit(Sender: TObject);
begin
   CalculaPedido;
end;

procedure TFrmPedidoVenda.dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  strReferencia := UpperCase( Trim(db_PedidoItens.FieldByName('REFERENCIA').AsString) );
  nPedidoVenda := db_Pedido.FieldByName('CODIGO').AsInteger;
  nTabelaPreco := db_Pedido.FieldByName('TABELA').AsInteger;

   // ativado somente se o cursor estive na coluna QUANTIDADE
   IF Key = VK_F2 Then
   begin

      // se o cursor estiver posicionado na coluna quantidade
      if (dbGrid_Produtos.SelectedField = db_PedidoItensQTDE) and
        not empty(strReferencia) then
      Begin
         if ValidarReferenciaCorTamanho(strReferencia) Then
         begin
            prcAbriGrade;
         end;
      End;


      // se o cursor estiver posicionado na coluna Valor Unitário
      if (dbGrid_Produtos.SelectedField = db_PedidoItensVLR_UNIT) and
        not empty(strReferencia) then
      Begin
         prcAbriGrade;
      End;

   End;

   IF Key = VK_F3 Then
   begin
      // vincular tecidos na referencia
      If (db_PedidoItens.State in [dsedit, dsinsert]) then
      Begin
         db_PedidoItens.Post;
      End;


      dbReferenciaTecidos.close;
      dbReferenciaTecidos.open;

      if not dbReferenciaTecidos.Locate('PRODUTO', db_PedidoItens.FieldByName('REFERENCIATECIDO').AsString, []) then
         dbReferenciaTecidos.First;


      strProduto :=db_PedidoItens.FieldByName('REFERENCIA').AsString;
      FrmPedidoVendaTecidos := TFrmPedidoVendaTecidos.Create(self);
      FrmPedidoVendaTecidos.ShowModal;

      dbReferenciaTecidos.close;

   end;


   IF Key = VK_F8 Then
   begin
      prcProcurarProduto;
   end;

   IF Key = VK_F9 Then
   begin
      // vincular tecidos na referencia
      If (db_PedidoItens.State in [dsedit, dsinsert]) then
      Begin
         db_PedidoItens.Post;
      End;

      nPedidoVenda  := db_Pedido.FieldByName('CODIGO').AsInteger;
      nTabelaPreco  := db_Pedido.FieldByName('TABELA').AsInteger;

      FrmPedidoVendaCodigoBarra := TFrmPedidoVendaCodigoBarra.Create(self);
      FrmPedidoVendaCodigoBarra.ShowModal;

      CalculaPedido;

   end;



end;

procedure TFrmPedidoVenda.dbGrid_ProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmPedidoVenda.dbReferenciaTecidosAfterPost(DataSet: TDataSet);
begin

   If not (db_PedidoItens.State in [dsedit, dsinsert]) then
      db_PedidoItens.edit;

   if (dbReferenciaTecidos.FieldByName('SELECIONADO').AsString='S') then
      db_PedidoItens.FieldByName('REFERENCIATECIDO').AsString  := dbReferenciaTecidos.FieldByName('PRODUTO').AsString
    else
      db_PedidoItens.FieldByName('REFERENCIATECIDO').AsString  := '';

   If (db_PedidoItens.State in [dsedit, dsinsert]) then
      db_PedidoItens.Post;



end;

procedure TFrmPedidoVenda.dbReferenciaTecidosQTDEBAIXARChange(Sender: TField);
begin
   if (dbReferenciaTecidos.FieldByName('QTDEBAIXAR').AsFloat>dbReferenciaTecidos.FieldByName('ESTOQUESALDO').AsFloat) then
   begin
       aviso('A quantidade que você esta tentando baixar é maior que o saldo em estoque.');
       dbReferenciaTecidos.cancel;

   end;

end;

procedure TFrmPedidoVenda.db_PedidoAfterDelete(DataSet: TDataSet);
begin
   //ChecarProtecaoPedido;
   if ChecarProtecaoPedido then
   begin
      dbGrid_Produtos.Options := dbGrid_Produtos.Options - [dgEditing];
   end
   else
   begin
      dbGrid_Produtos.Options := dbGrid_Produtos.Options + [dgEditing];
   end;


end;

procedure TFrmPedidoVenda.db_PedidoAfterPost(DataSet: TDataSet);
begin


   //db_Pedido.Open;
   //db_Pedido.ParamByName('CODIGO').AsInteger := db_Pedido.FieldByName('CODIGO').AsInteger;
   //db_PedidoItens.Open;
   //db_PedidoItens.refresh;


   CalculaPedido;
   db_Pedido.RefreshRecord;
   db_PedidoItens.RefreshRecord;

   prcRegistrarUltimaVenda(db_Pedido.FieldByName('CLIENTE').AsInteger,'PEDIDO');
   //db_PedidoItens.Last;

end;

procedure TFrmPedidoVenda.db_PedidoAfterScroll(DataSet: TDataSet);
begin
   //ChecarProtecaoPedido;
   if ChecarProtecaoPedido then
   begin
      dbGrid_Produtos.Options := dbGrid_Produtos.Options - [dgEditing];
   end
   else
   begin
      dbGrid_Produtos.Options := dbGrid_Produtos.Options + [dgEditing];
   end;

end;

procedure TFrmPedidoVenda.db_PedidoBeforeOpen(DataSet: TDataSet);
begin
   db_Pedido.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmPedidoVenda.db_PedidoBeforePost(DataSet: TDataSet);
begin

   if db_Pedido.FieldByName('DOCUMENTO').AsString = '' then
   begin
      db_Pedido.FieldByName('DOCUMENTO').AsString :=
        IntTostr(db_Pedido.FieldByName('CODIGO').AsInteger);
   end;

   if db_Pedido.FieldByName('CLIENTE').AsInteger <1 then
   begin
      aviso('Campo Cliente é obrigatório');
      Abort;
   end;

   if db_Pedido.FieldByName('FORMAPAGTO').AsInteger <1 then
   begin
      aviso('Campo Forma de Pagamento é obrigatório');
      Abort;
   end;



end;

procedure TFrmPedidoVenda.db_PedidoCLIENTEChange(Sender: TField);
begin

   db_Pedido.FieldByName('VENDEDOR').AsInteger := BuscaClienteVendedor(db_Pedido.FieldByName('CLIENTE').AsInteger);
   db_Pedido.FieldByName('TRANSPORTADORA').AsInteger := BuscaClienteTransportadora(db_Pedido.FieldByName('CLIENTE').AsInteger);

   if ChecarCreditoCliente(db_Pedido.FieldByName('CLIENTE').AsInteger) Then
   begin
      AvisoSistema('Venda não autorizada!'+ sLineBreak +
                   'O cliente que você selecionou está com crédito bloqueado');
      db_Pedido.Cancel;
      db_PedidoItens.Cancel;
      Abort;
   end;

  if fncCliente_retCampo(db_Pedido.FieldByName('CLIENTE').AsInteger,'OBSERVACAO')>'' Then
  Begin
     AvisoSistema(fncCliente_retCampo(db_Pedido.FieldByName('CLIENTE').AsInteger,'OBSERVACAO'));
  End;


end;

procedure TFrmPedidoVenda.db_PedidoDATAChange(Sender: TField);
begin

   db_Pedido.FieldByName('DATA_ENTREGA').AsDateTime :=
     db_Pedido.FieldByName('DATA').AsDateTime +
     (BaseDados.db_Parametros.FieldByName('PEDIDO_ENTREGA').AsInteger);
end;

procedure TFrmPedidoVenda.db_PedidoItensAfterDelete(DataSet: TDataSet);
begin
   CalculaPedido;
end;

procedure TFrmPedidoVenda.db_PedidoItensAfterOpen(DataSet: TDataSet);
begin
  DimensionarGrid(DBGrid_Produtos,self);

end;

procedure TFrmPedidoVenda.db_PedidoItensAfterPost(DataSet: TDataSet);
begin

   CalculaPedido;
end;

procedure TFrmPedidoVenda.db_PedidoItensBeforeInsert(DataSet: TDataSet);
begin
   if (db_Pedido.IsEmpty) then
   begin
      db_PedidoItens.Cancel;
      Informar('Primeiro você deve preencher os Dados Principais do Pedido.');
      abort;
   end;


end;

procedure TFrmPedidoVenda.db_PedidoItensBeforePost(DataSet: TDataSet);
begin

   db_PedidoItens.FieldByName('EMPRESA').AsInteger         := db_Pedido.FieldByName('EMPRESA').AsInteger;
   db_PedidoItens.FieldByName('CODIGO').AsInteger          := db_Pedido.FieldByName('CODIGO').AsInteger;
   db_PedidoItens.FieldByName('DATA').AsDateTime           := db_Pedido.FieldByName('DATA').AsDateTime;
   db_PedidoItens.FieldByName('CLIENTE').AsInteger         := db_Pedido.FieldByName('CLIENTE').AsInteger;
   db_PedidoItens.FieldByName('VENDEDOR').AsInteger        := db_Pedido.FieldByName('VENDEDOR').AsInteger;
   db_PedidoItens.FieldByName('TABELA').AsInteger          := db_Pedido.FieldByName('TABELA').AsInteger;
   db_PedidoItens.FieldByName('FORMAPAGTO').AsInteger      := db_Pedido.FieldByName('FORMAPAGTO').AsInteger;
   db_PedidoItens.FieldByName('TRANSPORTADORA').AsInteger  := db_Pedido.FieldByName('TRANSPORTADORA').AsInteger;
   db_PedidoItens.FieldByName('TIPO').AsString             := db_Pedido.FieldByName('TIPO').AsString;
   db_PedidoItens.FieldByName('APROVADO').AsString         := db_Pedido.FieldByName('APROVADO').AsString;
   db_PedidoItens.FieldByName('ORDEMPRODUCAO').AsInteger   := db_Pedido.FieldByName('ORDEMPRODUCAO').AsInteger;
   db_PedidoItens.FieldByName('PRODUZINDO').AsString       := db_Pedido.FieldByName('PRODUZINDO').AsString;
   db_PedidoItens.FieldByName('SELECIONADO').AsString      := db_Pedido.FieldByName('SELECIONADO').AsString;

end;


procedure TFrmPedidoVenda.db_PedidoItensREFERENCIAChange(Sender: TField);
begin

   strReferencia := UpperCase( Trim(db_PedidoItens.FieldByName('REFERENCIA').AsString) );

   if fncPedidoVendaExisteProduto(db_Pedido.FieldByName('CODIGO').AsInteger,strReferencia)  Then
   begin
      Aviso('Ja existe nesta grade produto com a mesma referência.');
      db_PedidoItens.Cancel;
      Abort;
   end;

   if ValidaReferencia(strReferencia)=false Then
   begin
      Aviso('Produto não existe no cadastro de produtos acabados [verifique na ficha técnica]');
      db_PedidoItens.Cancel;
      Abort;
   end;

   db_PedidoItens.FieldByName('DESCRICAO').AsString := fncReferenciaNome(strReferencia);

   // Se foi informado tabela de preço, buscar na tabela de preço.
   if (db_Pedido.FieldByName('TABELA').AsInteger>0) and (bCalculoAutomatico=false) then
   begin

      // se o produto não existe na tebela de preços, avisar o usuário
      if ValidaReferenciaTabela(db_Pedido.FieldByName('TABELA').AsInteger,strReferencia)=false then
      begin
         If pergunta('A Referência '+strReferencia + ' não existe na Tabela de Preço '+EditTabelaNome.text +
                     sLineBreak+
                     sLineBreak+
                     'Deseja inserir automaticamente?'  )=True then
         Begin
            FrmTabelaPrecoValor := TFrmTabelaPrecoValor.Create(Self);
            FrmTabelaPrecoValor.EditTabela.Text         :=EditTabela.Text;
            FrmTabelaPrecoValor.EditTabelaNome.Text     :=EditTabelaNome.Text;
            FrmTabelaPrecoValor.EditReferencia.Text     :=strReferencia;
            FrmTabelaPrecoValor.EditReferenciaNome.Text :=fncReferenciaNome(strReferencia);

            if FrmTabelaPrecoValor.ShowModal=mrOk then
            begin
               db_TabelaReferencia.Close;
               db_TabelaReferencia.ParamByName('CODIGO').AsInteger :=db_Pedido.FieldByName('TABELA').AsInteger;
               db_TabelaReferencia.Open;

               db_TabelaReferencia.Append;
               db_TabelaReferencia.FieldByName('CODIGO').AsInteger    :=db_Pedido.FieldByName('TABELA').AsInteger;
               db_TabelaReferencia.FieldByName('REFERENCIA').AsString :=strReferencia;
               db_TabelaReferencia.FieldByName('DESCRICAO').AsString  :=fncReferenciaNome(strReferencia);
               db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   :=nValorDigitado;
               db_TabelaReferencia.Post;
               db_TabelaReferencia.Close;

               db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoTabela(db_Pedido.FieldByName('TABELA').AsInteger,db_PedidoItens.FieldByName('REFERENCIA').AsString);
            end;
         End
      end
      else
         db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoTabela(db_Pedido.FieldByName('TABELA').AsInteger,db_PedidoItens.FieldByName('REFERENCIA').AsString);


   end
   else
   begin
      db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoVenda(strReferencia);
   end;


   if ValidarReferenciaCorTamanho(strReferencia) Then
   Begin
      // SALVAR ITENS DO PEDIDO DE VENDA
      If (db_PedidoItens.State in [dsedit, dsinsert]) then
      Begin
         db_PedidoItens.Post;
      End;

      prcAbriGrade;
   End;

end;

procedure TFrmPedidoVenda.BitBtn1Click(Sender: TObject);
begin

   If  not (db_Pedido.State in [dsedit, dsinsert]) then
   Begin
      informar('Não está em modo de edição');
      exit;
   End;


   FrmPedidoVendaParcial:=TFrmPedidoVendaParcial.Create(Self);
   FrmPedidoVendaParcial.ShowModal;

end;

procedure TFrmPedidoVenda.BtnRecalcularClick(Sender: TObject);
begin

   bCalculoAutomatico:=True;

   if pergunta('Deseja refazer todos os valores?')=false then
      exit;

   Try
      ProgressBar1.Max        :=0;
      ProgressBar1.Position   :=0;

      ProgressBar1.Max        :=db_PedidoItens.RecordCount;
      db_PedidoItens.First;

      While not db_PedidoItens.eof do
      begin
         db_PedidoItens.Edit;
         // Se foi informado tabela de preço, buscar na tabela de preço.
         if (db_Pedido.FieldByName('TABELA').AsInteger>0) then
         begin
            db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoTabela(db_Pedido.FieldByName('TABELA').AsInteger,db_PedidoItens.FieldByName('REFERENCIA').AsString);
         end
         else
         begin
            db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoVenda(db_PedidoItens.FieldByName('REFERENCIA').AsString);
         end;
         db_PedidoItens.Post;

         ProgressBar1.Position   := ProgressBar1.Position + 1;
         Application.ProcessMessages;
         db_PedidoItens.Next;

      end;

   Finally
      ProgressBar1.Position   :=0;
      bCalculoAutomatico:=False;
      AvisoSistema('Recalculo efetuado com sucesso');
   End;

end;

procedure TFrmPedidoVenda.db_PedidoNewRecord(DataSet: TDataSet);
begin

   db_Pedido.FieldByName('DATA').AsDateTime              := Date;
   db_Pedido.FieldByName('CLIENTE').AsInteger            := 0;
   db_Pedido.FieldByName('VENDEDOR').AsInteger           := 0;
   db_Pedido.FieldByName('TABELA').AsInteger             := 0;
   db_Pedido.FieldByName('FORMAPAGTO').AsInteger         := 0;
   db_Pedido.FieldByName('ORDEMPRODUCAO').AsInteger      := 0;
   db_Pedido.FieldByName('TRANSPORTADORA').AsInteger     := 0;
   db_Pedido.FieldByName('TIPO').AsString                := 'VENDA';
   db_Pedido.FieldByName('DATA_ENTREGA').AsDateTime      := db_Pedido.FieldByName('DATA').AsDateTime +     (BaseDados.db_Parametros.FieldByName('PEDIDO_ENTREGA').AsInteger);
   db_Pedido.FieldByName('STATUS').AsString              := 'N';
   db_Pedido.FieldByName('APROVADO').AsString            := 'N';
   db_Pedido.FieldByName('PRODUZINDO').AsString          := 'N';
   db_Pedido.FieldByName('SELECIONADO').AsString         := 'N';
   db_Pedido.FieldByName('IMPRESSO').AsString            := 'N';
   db_Pedido.FieldByName('OBSERVACAO').AsString          := BaseDados.db_Parametros.FieldByName('PEDIDO_MENSAGEM').AsString;

end;

procedure TFrmPedidoVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   if db_Pedido.FieldByName('QTDE_TOTAL').AsInteger<=0 Then
   begin
      if (db_Pedido.active) and not (db_Pedido.IsEmpty)  then
        db_Pedido.delete;
   end;


   if (db_PedidoItens.active) and (db_PedidoItens.IsEmpty) then
   begin
         if (db_Pedido.active) and not (db_Pedido.IsEmpty)  then
           db_Pedido.delete;
   end;


   FrmPrincipal.MnuVendas_Pedidos.Enabled := True;

   FreeAndNil(FrmPedidoVenda);

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   db_Pedido.close;
   db_PedidoItens.close;

   db_Pedido.ParamByName('CODIGO').Clear;

   db_Pedido.Open;
   db_PedidoItens.Open;

   ChecarProtecaoPedido;

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   db_Pedido.ParamByName('CODIGO').Clear;
   EditCliente.SetFocus;

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin

   db_PedidoItens.Cancel;
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin

   if (db_Pedido.FieldByName('PRODUZINDO').AsString = 'S') or
     (db_Pedido.FieldByName('PRODUZINDO').AsString = 'SIM') then
   Begin
      AvisoSistema('Pedido já foi enviado para Produção e não pode ser editado. ');
      abort;
   End;

   if (db_Pedido.FieldByName('STATUS').AsString = 'S') or
     (db_Pedido.FieldByName('STATUS').AsString = 'SIM') then
   Begin
      AvisoSistema('Pedido já foi faturado e não pode ser editado. ');
      abort;
   End;

   if ChecarProtecaoPedido then
   begin

      AvisoSistema('Pedido não pode ser alterado. Está aprovado para faturamento!'+sLineBreak+
                   'Para alterar, é necessário que o responsavel desaprove (reabra) o pedido '+
                   'para que voce possa alterar os dados.');
      Exit;
   end;

   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin

   if (db_Pedido.FieldByName('PRODUZINDO').AsString = 'S') or
     (db_Pedido.FieldByName('PRODUZINDO').AsString = 'SIM') then
   Begin
      AvisoSistema('Pedido já foi enviado para Produção e não pode ser excluido. ');
      abort;
   End;

   if (db_Pedido.FieldByName('STATUS').AsString = 'S') or
     (db_Pedido.FieldByName('STATUS').AsString = 'SIM') then
   Begin
      AvisoSistema('Pedido já foi faturado e não pode ser excluido. ');
      abort;
   End;

   if ChecarProtecaoPedido then
   begin

      AvisoSistema('Pedido não pode ser deletado. Está aprovado para faturamento!'+sLineBreak+
                   'Para alterar, é necessário que o responsavel desaprove (reabra) o pedido '+
                   'para que voce possa alterar os dados.');
      Exit;
   end;

   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   If (db_PedidoItens.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoItens.Post;
   End;

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   prcFastReportEmailConfigurar( fncBuscaClienteEmail(db_Pedido.FieldByName('CLIENTE').AsInteger) );


   if UpperCase(FSistema.ExeName)='VESTISPCP' then
   begin
      db_PedidoVenda.Close;
      db_PedidoGrade.close;
      db_PedidoGrade.ParamByName('CODIGO').AsInteger := db_PedidoItens.FieldByName('CODIGO').AsInteger;
      db_PedidoGrade.Open;
      FrxPedidoVenda.ShowReport;
   end;

   if UpperCase(FSistema.ExeName)<>'VESTISPCP' then
   begin
      db_PedidoVenda.close;
      db_PedidoServicos.close;

      FrxPedidoServicos.ShowReport;
   end;


end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if dbeditPedidoProcurar.Execute then
   begin
      db_Pedido.Cancel;
      db_PedidoItens.Cancel;

      db_PedidoItens.close;
      db_Pedido.close;
      db_Pedido.ParamByName('CODIGO').Clear;
      db_Pedido.ParamByName('CODIGO').AsInteger := 0;
      db_Pedido.ParamByName('CODIGO').AsInteger := dbeditPedidoProcurar.ResultFieldAsInteger('CODIGO');
      db_Pedido.Open;

      db_PedidoItens.Open;

      ds_Pedido.AutoEdit := False;
      FrmFrameBotoes1.SpbCancelarClick(Sender);
   end;

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   If (db_PedidoItens.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoItens.Post;
   End;

   CalculaPedido;

end;

procedure TFrmPedidoVenda.ImprimirPedidocomvalores1Click(Sender: TObject);
begin
   FrmFrameBotoes1SpbImprimirClick(Sender);
end;

procedure TFrmPedidoVenda.ImprimirPedidosemvalores1Click(Sender: TObject);
begin
   If (db_PedidoItens.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoItens.Post;
   End;

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   db_PedidoVenda.Close;
   db_PedidoGrade.close;
   db_PedidoGrade.ParamByName('CODIGO').AsInteger := db_PedidoItens.FieldByName('CODIGO').AsInteger;
   db_PedidoGrade.Open;

   prcFastReportEmailConfigurar( fncBuscaClienteEmail(db_Pedido.FieldByName('CLIENTE').AsInteger) );

   FrxPedidoVendaSemValores.ShowReport;

end;

procedure TFrmPedidoVenda.AdvGroupBox4Exit(Sender: TObject);
begin
   if db_Pedido.FieldByName('CLIENTE').AsInteger <1 then
   begin
      aviso('Campo Cliente é obrigatório');
      EditCliente.SetFocus;
      Abort;
   end;

   if db_Pedido.FieldByName('FORMAPAGTO').AsInteger <1 then
   begin
      aviso('Campo Forma de Pagamento é obrigatório');
      EditPagamento.SetFocus;
      Abort;
   end;

   // SALVAR ITENS DO PEDIDO DE VENDA
   If (db_PedidoItens.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoItens.Post;
   End;

end;

procedure TFrmPedidoVenda.prcAbriGrade;
begin

   strReferencia :=db_PedidoItens.FieldByName('REFERENCIA').AsString;

   if (db_PedidoItens.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoItens.Post;
   End;

   if blProdutoViaLeitor=False then
   begin
      FrmPedidoVendaGrade := TFrmPedidoVendaGrade.Create(self);
      FrmPedidoVendaGrade.ShowModal;
   end;
end;


end.




