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

unit FOrdemServico;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Menus, DB,
   uEstSearchDialogZeos, IDBEdit, FFrameBotoes, frxClass, frxDBSet,
  ComCtrls, FFrameBarra, ImgList, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, ISFEdit,
  ISFEditbtn, ISFdbEditbtn;

type
   TFrmOrdemServico = class(TForm)
      db_Pedido:  TFDQuery;
      db_PedidoItens: TFDQuery;
      ds_Pedido: TDataSource;
      ds_PedidoItens: TDataSource;
    SP_CalculaOrdemServicos: TFDStoredProc;
      frx_dsPedidosItens: TfrxDBDataset;
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
    db_PedidoItensAPROVADO: TStringField;
    db_PedidoVenda: TFDQuery;
    frx_PedidoVenda: TfrxDBDataset;
    db_PedidoCOMISSAO: TBCDField;
    db_PedidoDESCONTO: TBCDField;
    db_PedidoENTREGAPARCIAL: TStringField;
    db_PedidoENTREGAPARCIALPERCENTUAL: TBCDField;
    dsReferenciaTecidos: TDataSource;
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
    PopupImprimir: TPopupMenu;
    ImprimirPedidosemvalores1: TMenuItem;
    ImprimirPedidocomvalores1: TMenuItem;
    FrxPedidoServicos: TfrxReport;
    db_PedidoServicos: TFDQuery;
    frx_dsPedidoServicos: TfrxDBDataset;
    pgcPrincipal: TPageControl;
    tabPrincipal: TTabSheet;
    grpPrincipal: TGroupBox;
    GrupoProdutos: TGroupBox;
    dbGrid_Produtos: TDBGrid;
    ProgressBar1: TProgressBar;
    grpDetalhesOS: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    EditCliente: TIDBEditDialog;
    EditNomeCliente: TEdit;
    EditData: TDBEdit;
    EditNomeVendedor: TEdit;
    EditDataEntrega: TDBEdit;
    EditPagamento: TIDBEditDialog;
    EditNomeFormaPagto: TEdit;
    AdvGroupBox5: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit2: TDBEdit;
    EditVendedor: TIDBEditDialog;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    EditPedido: TDBEdit;
    tabServicos: TTabSheet;
    GrupoServicosExternos: TGroupBox;
    grbTotais: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    GrupoServicosInternos: TGroupBox;
    dbGrid_Servicos: TDBGrid;
    pgcProblemas: TPageControl;
    tabProblemaRelatado: TTabSheet;
    tabSolucaoProblema: TTabSheet;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    frx_dsPedidoTerceiros: TfrxDBDataset;
    db_PedidoTerceiros: TFDQuery;
    db_PedidoPROBLEMARELATADO: TStringField;
    db_PedidoPROBLEMASOLUCAO: TStringField;
    ds_DetalhesServicos: TDataSource;
    db_DetalhesServicos: TFDQuery;
    ds_DetalhesTerceiros: TDataSource;
    db_DetalhesTerceiros: TFDQuery;
    db_DetalhesTerceirosEMPRESA: TIntegerField;
    db_DetalhesTerceirosCODIGO: TIntegerField;
    db_DetalhesTerceirosDATA: TSQLTimeStampField;
    db_DetalhesTerceirosCLIENTE: TIntegerField;
    db_DetalhesTerceirosVENDEDOR: TIntegerField;
    db_DetalhesTerceirosTABELA: TIntegerField;
    db_DetalhesTerceirosFORMAPAGTO: TIntegerField;
    db_DetalhesTerceirosTRANSPORTADORA: TIntegerField;
    db_DetalhesTerceirosTIPO: TStringField;
    db_DetalhesTerceirosAPROVADO: TStringField;
    db_DetalhesTerceirosORDEMPRODUCAO: TIntegerField;
    db_DetalhesTerceirosPRODUZINDO: TStringField;
    db_DetalhesTerceirosSELECIONADO: TStringField;
    db_DetalhesTerceirosSERVICO: TIntegerField;
    db_DetalhesTerceirosDESCRICAO: TStringField;
    db_DetalhesTerceirosUND: TStringField;
    db_DetalhesTerceirosQTDE: TBCDField;
    db_DetalhesTerceirosVLR_UNIT: TBCDField;
    db_DetalhesTerceirosDESCONTO: TBCDField;
    db_DetalhesTerceirosVLR_DESCONTO: TBCDField;
    db_DetalhesTerceirosVLR_TOTAL: TBCDField;
    db_DetalhesTerceirosTERCEIRIZADO: TIntegerField;
    db_DetalhesTerceirosTERCEIRIZADO_NOME: TStringField;
    db_DetalhesServicosEMPRESA: TIntegerField;
    db_DetalhesServicosCODIGO: TIntegerField;
    db_DetalhesServicosDATA: TSQLTimeStampField;
    db_DetalhesServicosCLIENTE: TIntegerField;
    db_DetalhesServicosVENDEDOR: TIntegerField;
    db_DetalhesServicosTABELA: TIntegerField;
    db_DetalhesServicosFORMAPAGTO: TIntegerField;
    db_DetalhesServicosTRANSPORTADORA: TIntegerField;
    db_DetalhesServicosTIPO: TStringField;
    db_DetalhesServicosAPROVADO: TStringField;
    db_DetalhesServicosORDEMPRODUCAO: TIntegerField;
    db_DetalhesServicosPRODUZINDO: TStringField;
    db_DetalhesServicosSELECIONADO: TStringField;
    db_DetalhesServicosSERVICO: TIntegerField;
    db_DetalhesServicosDESCRICAO: TStringField;
    db_DetalhesServicosUND: TStringField;
    db_DetalhesServicosQTDE: TBCDField;
    db_DetalhesServicosVLR_UNIT: TBCDField;
    db_DetalhesServicosDESCONTO: TBCDField;
    db_DetalhesServicosVLR_DESCONTO: TBCDField;
    db_DetalhesServicosVLR_TOTAL: TBCDField;
    db_DetalhesServicosPROFISSIONAL: TIntegerField;
    db_DetalhesServicosPROFISSIONAL_NOME: TStringField;
    BuscaServicoExterno: TIDBEditDialog;
    dbGrid_Terceiros: TDBGrid;
    EditFornecedor: TIDBEditDialog;
    EditVendedorPesquisa: TIDBEditDialog;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    db_PedidoQTDE_TERCEIRIZADOS: TIntegerField;
    db_PedidoVLR_TERCEIRIZADOS: TBCDField;
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
      procedure grpDetalhesOSExit(Sender: TObject);
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
    procedure db_PedidoBeforeOpen(DataSet: TDataSet);
    procedure db_PedidoItensAfterOpen(DataSet: TDataSet);
    procedure db_PedidoItensREFERENCIAChange(Sender: TField);
    procedure FormResize(Sender: TObject);
    procedure dbGrid_ProdutosExit(Sender: TObject);
    procedure db_PedidoItensBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ImprimirPedidocomvalores1Click(Sender: TObject);
    procedure db_DetalhesServicosBeforePost(DataSet: TDataSet);
    procedure db_DetalhesTerceirosBeforePost(DataSet: TDataSet);
    procedure dbGrid_ServicosKeyPress(Sender: TObject; var Key: Char);
    procedure dbGrid_TerceirosKeyPress(Sender: TObject; var Key: Char);
    procedure db_DetalhesServicosAfterPost(DataSet: TDataSet);
    procedure db_DetalhesServicosAfterDelete(DataSet: TDataSet);
    procedure db_DetalhesTerceirosAfterPost(DataSet: TDataSet);
    procedure db_DetalhesTerceirosAfterDelete(DataSet: TDataSet);
    procedure dbGrid_ServicosEnter(Sender: TObject);
    procedure dbGrid_TerceirosEnter(Sender: TObject);
    procedure dbGrid_ServicosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_DetalhesServicosSERVICOChange(Sender: TField);
    procedure db_DetalhesTerceirosSERVICOChange(Sender: TField);
    procedure db_DetalhesServicosPROFISSIONALChange(Sender: TField);
    procedure db_DetalhesTerceirosTERCEIRIZADOChange(Sender: TField);
    procedure dbGrid_TerceirosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo3KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);

   private
      { Private declarations }
      bCalculoAutomatico : Boolean;
    procedure prcProcurarProduto;


   public
      { Public declarations }
      Function ChecarProtecaoPedido : Boolean;

   end;

var
   FrmOrdemServico: TFrmOrdemServico;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global,
   FBaseDados, FastReport;

{$R *.dfm}

procedure TFrmOrdemServico.FormCreate(Sender: TObject);
begin
   //
   FrmPrincipal.MnuVendas_OrdemServicos.Enabled := False;
   FrmFrameBotoes1.DataSource := ds_Pedido;

   pgcPrincipal.ActivePageIndex  :=0;
   pgcProblemas.ActivePageIndex  :=0;

   db_Pedido.Open;
   db_PedidoItens.Open;
   db_DetalhesServicos.Open;
   db_DetalhesTerceiros.Open;


end;


procedure TFrmOrdemServico.FormClose(Sender: TObject; var Action: TCloseAction);
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

   db_Pedido.close;
   db_PedidoItens.close;
   db_DetalhesServicos.close;
   db_DetalhesTerceiros.close;

   FrmPrincipal.MnuVendas_OrdemServicos.Enabled := True;

   FreeAndNil(FrmOrdemServico);

end;


procedure TFrmOrdemServico.FormResize(Sender: TObject);
begin

  DimensionarGrid(DBGrid_Produtos,self);
  DimensionarGrid(dbGrid_Servicos,self);
  DimensionarGrid(dbGrid_Terceiros,self);

end;

procedure TFrmOrdemServico.FormShow(Sender: TObject);
begin
     if UpperCase(FSistema.ExeName)<>'VESTISPCP' then
     begin
        FrmFrameBarra1.LblBarraTitulo.Caption :='Ordem de Serviços';
        GrupoServicosExternos.Visible :=True;
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

procedure TFrmOrdemServico.CalculaPedido;
begin

   SP_CalculaOrdemServicos.ParamByName('NEMPRESA').AsInteger :=  FSistema.Empresa;
   SP_CalculaOrdemServicos.ParamByName('CODIGO').AsInteger   :=  db_Pedido.FieldByName('CODIGO').AsInteger;
   SP_CalculaOrdemServicos.ExecProc;

   db_Pedido.RefreshRecord;
   db_PedidoItens.RefreshRecord;

   db_DetalhesServicos.Refresh;
   db_DetalhesTerceiros.Refresh;


end;

Function TFrmOrdemServico.ChecarProtecaoPedido : Boolean;
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

procedure TFrmOrdemServico.dbGrid_ProdutosColEnter(Sender: TObject);
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

procedure TFrmOrdemServico.prcProcurarProduto;
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


procedure TFrmOrdemServico.dbGrid_ProdutosEditButtonClick(Sender: TObject);
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

   End;

end;

procedure TFrmOrdemServico.dbGrid_ProdutosEnter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);


end;

procedure TFrmOrdemServico.dbGrid_ProdutosExit(Sender: TObject);
begin
   CalculaPedido;
end;

procedure TFrmOrdemServico.dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  strReferencia := UpperCase( Trim(db_PedidoItens.FieldByName('REFERENCIA').AsString) );
  nPedidoVenda := db_Pedido.FieldByName('CODIGO').AsInteger;
  nTabelaPreco := db_Pedido.FieldByName('TABELA').AsInteger;

   IF Key = VK_F3 Then
   begin
      // vincular tecidos na referencia
      If (db_PedidoItens.State in [dsedit, dsinsert]) then
      Begin
         db_PedidoItens.Post;
      End;
      strProduto :=db_PedidoItens.FieldByName('REFERENCIA').AsString;

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

      CalculaPedido;

   end;



end;

procedure TFrmOrdemServico.dbGrid_ProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmOrdemServico.dbGrid_ServicosEnter(Sender: TObject);
begin
   if db_Pedido.FieldByName('CLIENTE').AsInteger <1 then
   begin
      aviso('Campo Cliente é obrigatório');
      EditCliente.SetFocus;
      pgcPrincipal.ActivePageIndex  :=0;
      pgcProblemas.ActivePageIndex  :=0;
      Abort;
   end;

   if db_Pedido.FieldByName('FORMAPAGTO').AsInteger <1 then
   begin
      aviso('Campo Forma de Pagamento é obrigatório');
      EditPagamento.SetFocus;
      pgcPrincipal.ActivePageIndex  :=0;
      pgcProblemas.ActivePageIndex  :=0;
      Abort;
   end;

end;

procedure TFrmOrdemServico.dbGrid_ServicosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   if key=VK_F8 then
   begin

     if dbGrid_Servicos.SelectedField = db_DetalhesServicosSERVICO then
     begin
        if BuscaServicoExterno.Execute then
        begin
           If not(db_DetalhesServicos.state in [dsEdit]) then
              db_DetalhesServicos.Edit;
           db_DetalhesServicos.FieldByName('SERVICO').AsInteger := BuscaServicoExterno.ResultFieldAsInteger('CODIGO');
           If (db_DetalhesServicos.state in [dsEdit]) then
              db_DetalhesServicos.Post;
        end;
     end;

     if dbGrid_Servicos.SelectedField = db_DetalhesServicosPROFISSIONAL then
     begin
        if EditVendedorPesquisa.Execute then
        begin
           If not(db_DetalhesServicos.state in [dsEdit]) then
              db_DetalhesServicos.Edit;
           db_DetalhesServicos.FieldByName('PROFISSIONAL').AsInteger := EditVendedorPesquisa.ResultFieldAsInteger('CODIGO');
           If (db_DetalhesServicos.state in [dsEdit]) then
              db_DetalhesServicos.Post;
        end;
     end;

   end;

end;

procedure TFrmOrdemServico.dbGrid_ServicosKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmOrdemServico.dbGrid_TerceirosEnter(Sender: TObject);
begin
   if db_Pedido.FieldByName('CLIENTE').AsInteger <1 then
   begin
      aviso('Campo Cliente é obrigatório');
      EditCliente.SetFocus;
      pgcPrincipal.ActivePageIndex  :=0;
      pgcProblemas.ActivePageIndex  :=0;
      Abort;
   end;

   if db_Pedido.FieldByName('FORMAPAGTO').AsInteger <1 then
   begin
      aviso('Campo Forma de Pagamento é obrigatório');
      EditPagamento.SetFocus;
      pgcPrincipal.ActivePageIndex  :=0;
      pgcProblemas.ActivePageIndex  :=0;
      Abort;
   end;

end;

procedure TFrmOrdemServico.dbGrid_TerceirosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=VK_F8 then
   begin

     if dbGrid_Terceiros.SelectedField = db_DetalhesTerceirosSERVICO then
     begin
        if BuscaServicoExterno.Execute then
        begin
           If not(db_DetalhesTerceiros.state in [dsEdit]) then
              db_DetalhesTerceiros.Edit;
           db_DetalhesTerceiros.FieldByName('SERVICO').AsInteger := BuscaServicoExterno.ResultFieldAsInteger('CODIGO');
           If (db_DetalhesTerceiros.state in [dsEdit]) then
              db_DetalhesTerceiros.Post;
        end;
     end;

     if dbGrid_Terceiros.SelectedField = db_DetalhesTerceirosTERCEIRIZADO then
     begin
        if EditFornecedor.Execute then
        begin
           If not(db_DetalhesTerceiros.state in [dsEdit]) then
              db_DetalhesTerceiros.Edit;
           db_DetalhesTerceiros.FieldByName('TERCEIRIZADO').AsInteger := EditFornecedor.ResultFieldAsInteger('CODIGO');
           If (db_DetalhesTerceiros.state in [dsEdit]) then
              db_DetalhesTerceiros.Post;
        end;
     end;

   end;

end;

procedure TFrmOrdemServico.dbGrid_TerceirosKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmOrdemServico.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmOrdemServico.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmOrdemServico.DBMemo3KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmOrdemServico.db_DetalhesServicosAfterDelete(DataSet: TDataSet);
begin
   CalculaPedido;

end;

procedure TFrmOrdemServico.db_DetalhesServicosAfterPost(DataSet: TDataSet);
begin
   CalculaPedido;

end;

procedure TFrmOrdemServico.db_DetalhesServicosBeforePost(DataSet: TDataSet);
begin

   db_DetalhesServicos.FieldByName('EMPRESA').AsInteger         := db_Pedido.FieldByName('EMPRESA').AsInteger;
   db_DetalhesServicos.FieldByName('CODIGO').AsInteger          := db_Pedido.FieldByName('CODIGO').AsInteger;
   db_DetalhesServicos.FieldByName('DATA').AsDateTime           := db_Pedido.FieldByName('DATA').AsDateTime;
   db_DetalhesServicos.FieldByName('CLIENTE').AsInteger         := db_Pedido.FieldByName('CLIENTE').AsInteger;
   db_DetalhesServicos.FieldByName('VENDEDOR').AsInteger        := db_Pedido.FieldByName('VENDEDOR').AsInteger;
   db_DetalhesServicos.FieldByName('TABELA').AsInteger          := db_Pedido.FieldByName('TABELA').AsInteger;
   db_DetalhesServicos.FieldByName('FORMAPAGTO').AsInteger      := db_Pedido.FieldByName('FORMAPAGTO').AsInteger;
   db_DetalhesServicos.FieldByName('TRANSPORTADORA').AsInteger  := db_Pedido.FieldByName('TRANSPORTADORA').AsInteger;
   db_DetalhesServicos.FieldByName('TIPO').AsString             := db_Pedido.FieldByName('TIPO').AsString;
   db_DetalhesServicos.FieldByName('APROVADO').AsString         := db_Pedido.FieldByName('APROVADO').AsString;
   db_DetalhesServicos.FieldByName('ORDEMPRODUCAO').AsInteger   := db_Pedido.FieldByName('ORDEMPRODUCAO').AsInteger;
   db_DetalhesServicos.FieldByName('PRODUZINDO').AsString       := db_Pedido.FieldByName('PRODUZINDO').AsString;
   db_DetalhesServicos.FieldByName('SELECIONADO').AsString      := db_Pedido.FieldByName('SELECIONADO').AsString;

end;

procedure TFrmOrdemServico.db_DetalhesServicosPROFISSIONALChange(
  Sender: TField);
begin
  db_DetalhesServicos.FieldByName('PROFISSIONAL_NOME').AsString := fncCliente_retCampo(db_DetalhesServicos.FieldByName('PROFISSIONAL').AsInteger,'NOME');
end;

procedure TFrmOrdemServico.db_DetalhesServicosSERVICOChange(Sender: TField);
begin

  db_DetalhesServicos.FieldByName('DESCRICAO').AsString :=
     CustoExternoRetornaNome(db_DetalhesServicos.FieldByName('SERVICO').AsInteger);

  db_DetalhesServicos.FieldByName('VLR_UNIT').AsFloat   :=
     CustoExternoRetornaValor(db_DetalhesServicos.FieldByName('SERVICO').AsInteger);

end;

procedure TFrmOrdemServico.db_DetalhesTerceirosAfterDelete(DataSet: TDataSet);
begin
   CalculaPedido;

end;

procedure TFrmOrdemServico.db_DetalhesTerceirosAfterPost(DataSet: TDataSet);
begin
   CalculaPedido;

end;

procedure TFrmOrdemServico.db_DetalhesTerceirosBeforePost(DataSet: TDataSet);
begin
   db_DetalhesTerceiros.FieldByName('EMPRESA').AsInteger         := db_Pedido.FieldByName('EMPRESA').AsInteger;
   db_DetalhesTerceiros.FieldByName('CODIGO').AsInteger          := db_Pedido.FieldByName('CODIGO').AsInteger;
   db_DetalhesTerceiros.FieldByName('DATA').AsDateTime           := db_Pedido.FieldByName('DATA').AsDateTime;
   db_DetalhesTerceiros.FieldByName('CLIENTE').AsInteger         := db_Pedido.FieldByName('CLIENTE').AsInteger;
   db_DetalhesTerceiros.FieldByName('VENDEDOR').AsInteger        := db_Pedido.FieldByName('VENDEDOR').AsInteger;
   db_DetalhesTerceiros.FieldByName('TABELA').AsInteger          := db_Pedido.FieldByName('TABELA').AsInteger;
   db_DetalhesTerceiros.FieldByName('FORMAPAGTO').AsInteger      := db_Pedido.FieldByName('FORMAPAGTO').AsInteger;
   db_DetalhesTerceiros.FieldByName('TRANSPORTADORA').AsInteger  := db_Pedido.FieldByName('TRANSPORTADORA').AsInteger;
   db_DetalhesTerceiros.FieldByName('TIPO').AsString             := db_Pedido.FieldByName('TIPO').AsString;
   db_DetalhesTerceiros.FieldByName('APROVADO').AsString         := db_Pedido.FieldByName('APROVADO').AsString;
   db_DetalhesTerceiros.FieldByName('ORDEMPRODUCAO').AsInteger   := db_Pedido.FieldByName('ORDEMPRODUCAO').AsInteger;
   db_DetalhesTerceiros.FieldByName('PRODUZINDO').AsString       := db_Pedido.FieldByName('PRODUZINDO').AsString;
   db_DetalhesTerceiros.FieldByName('SELECIONADO').AsString      := db_Pedido.FieldByName('SELECIONADO').AsString;

end;

procedure TFrmOrdemServico.db_DetalhesTerceirosSERVICOChange(Sender: TField);
begin
  db_DetalhesTerceiros.FieldByName('DESCRICAO').AsString :=
     CustoExternoRetornaNome(db_DetalhesTerceiros.FieldByName('SERVICO').AsInteger);

  db_DetalhesTerceiros.FieldByName('VLR_UNIT').AsFloat   :=
     CustoExternoRetornaValor(db_DetalhesTerceiros.FieldByName('SERVICO').AsInteger);

end;

procedure TFrmOrdemServico.db_DetalhesTerceirosTERCEIRIZADOChange(
  Sender: TField);
begin
  db_DetalhesTerceiros.FieldByName('TERCEIRIZADO_NOME').AsString := fncCliente_retCampo(db_DetalhesTerceiros.FieldByName('TERCEIRIZADO').AsInteger,'NOME');

end;

procedure TFrmOrdemServico.db_PedidoAfterDelete(DataSet: TDataSet);
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

procedure TFrmOrdemServico.db_PedidoAfterPost(DataSet: TDataSet);
begin


   //db_Pedido.Open;
   //db_Pedido.ParamByName('CODIGO').AsInteger := db_Pedido.FieldByName('CODIGO').AsInteger;
   //db_PedidoItens.Open;
   //db_PedidoItens.refresh;


   CalculaPedido;
   db_Pedido.RefreshRecord;
   db_PedidoItens.RefreshRecord;

   db_DetalhesServicos.close;
   db_DetalhesServicos.open;

   db_DetalhesTerceiros.close;
   db_DetalhesTerceiros.open;

   prcRegistrarUltimaVenda(db_Pedido.FieldByName('CLIENTE').AsInteger,'PEDIDO');
   //db_PedidoItens.Last;

end;

procedure TFrmOrdemServico.db_PedidoAfterScroll(DataSet: TDataSet);
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

procedure TFrmOrdemServico.db_PedidoBeforeOpen(DataSet: TDataSet);
begin
   db_Pedido.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmOrdemServico.db_PedidoBeforePost(DataSet: TDataSet);
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

procedure TFrmOrdemServico.db_PedidoCLIENTEChange(Sender: TField);
begin

   db_Pedido.FieldByName('VENDEDOR').AsInteger := BuscaClienteVendedor(db_Pedido.FieldByName('CLIENTE').AsInteger);
   db_Pedido.FieldByName('TRANSPORTADORA').AsInteger := BuscaClienteTransportadora(db_Pedido.FieldByName('CLIENTE').AsInteger);

   if ChecarCreditoCliente(db_Pedido.FieldByName('CLIENTE').AsInteger) Then
   begin
      AvisoSistema('Venda não autorizada!'+sLineBreak+
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

procedure TFrmOrdemServico.db_PedidoDATAChange(Sender: TField);
begin

   db_Pedido.FieldByName('DATA_ENTREGA').AsDateTime :=
     db_Pedido.FieldByName('DATA').AsDateTime +
     (BaseDados.db_Parametros.FieldByName('PEDIDO_ENTREGA').AsInteger);
end;

procedure TFrmOrdemServico.db_PedidoItensAfterDelete(DataSet: TDataSet);
begin
   CalculaPedido;
end;

procedure TFrmOrdemServico.db_PedidoItensAfterOpen(DataSet: TDataSet);
begin
  DimensionarGrid(DBGrid_Produtos,self);
  DimensionarGrid(dbGrid_Servicos,self);
  DimensionarGrid(dbGrid_Terceiros,self);

end;

procedure TFrmOrdemServico.db_PedidoItensAfterPost(DataSet: TDataSet);
begin
   CalculaPedido;
end;

procedure TFrmOrdemServico.db_PedidoItensBeforeInsert(DataSet: TDataSet);
begin
   if (db_Pedido.IsEmpty) then
   begin
      db_PedidoItens.Cancel;
      Informar('Primeiro você deve preencher os Dados Principais do Pedido.');
      abort;
   end;


end;

procedure TFrmOrdemServico.db_PedidoItensBeforePost(DataSet: TDataSet);
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


procedure TFrmOrdemServico.db_PedidoItensREFERENCIAChange(Sender: TField);
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

   db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoVenda(strReferencia);


   if ValidarReferenciaCorTamanho(strReferencia) Then
   Begin
      // SALVAR ITENS DO PEDIDO DE VENDA
      If (db_PedidoItens.State in [dsedit, dsinsert]) then
      Begin
         db_PedidoItens.Post;
      End;

   End;

end;

procedure TFrmOrdemServico.db_PedidoNewRecord(DataSet: TDataSet);
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

procedure TFrmOrdemServico.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   db_Pedido.close;
   db_PedidoItens.close;
   db_DetalhesServicos.close;
   db_DetalhesTerceiros.close;

   db_Pedido.ParamByName('CODIGO').Clear;

   db_Pedido.Open;
   db_PedidoItens.Open;
   db_DetalhesServicos.Open;
   db_DetalhesTerceiros.Open;


   ChecarProtecaoPedido;

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   db_Pedido.ParamByName('CODIGO').Clear;
   EditCliente.SetFocus;

end;

procedure TFrmOrdemServico.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin

   db_PedidoItens.Cancel;
   db_DetalhesServicos.Cancel;
   db_DetalhesTerceiros.Cancel;
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmOrdemServico.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
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

procedure TFrmOrdemServico.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
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

procedure TFrmOrdemServico.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   nPedidoVenda   :=db_Pedido.FieldByName('CODIGO').AsInteger;


   If (db_PedidoItens.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoItens.Post;
   End;

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   prcFastReportEmailConfigurar( fncBuscaClienteEmail(db_Pedido.FieldByName('CLIENTE').AsInteger) );

   db_PedidoVenda.close;
   db_PedidoServicos.close;
   db_PedidoTerceiros.close;

   db_PedidoVenda.ParamByName('EMPRESA').AsInteger   :=FSistema.Empresa;
   db_PedidoVenda.ParamByName('CODIGO').AsInteger    :=nPedidoVenda;

   db_PedidoServicos.ParamByName('EMPRESA').AsInteger   :=FSistema.Empresa;
   db_PedidoServicos.ParamByName('CODIGO').AsInteger    :=nPedidoVenda;


   db_PedidoTerceiros.ParamByName('EMPRESA').AsInteger   :=FSistema.Empresa;
   db_PedidoTerceiros.ParamByName('CODIGO').AsInteger    :=nPedidoVenda;

   db_PedidoServicos.open;
   db_PedidoTerceiros.open;

   FrxPedidoServicos.ShowReport;


end;

procedure TFrmOrdemServico.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if dbeditPedidoProcurar.Execute then
   begin
      db_Pedido.Cancel;
      db_PedidoItens.Cancel;
      db_DetalhesServicos.Cancel;
      db_DetalhesTerceiros.Cancel;

      db_PedidoItens.close;
      db_DetalhesServicos.close;
      db_DetalhesTerceiros.close;

      db_Pedido.close;
      db_Pedido.ParamByName('CODIGO').Clear;
      db_Pedido.ParamByName('CODIGO').AsInteger := 0;
      db_Pedido.ParamByName('CODIGO').AsInteger := dbeditPedidoProcurar.ResultFieldAsInteger('CODIGO');
      db_Pedido.Open;
      db_PedidoItens.Open;
      db_DetalhesServicos.Open;
      db_DetalhesTerceiros.Open;

      ds_Pedido.AutoEdit := False;
      FrmFrameBotoes1.SpbCancelarClick(Sender);
   end;

end;

procedure TFrmOrdemServico.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmOrdemServico.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   If (db_PedidoItens.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoItens.Post;
   End;

   If (db_DetalhesServicos.State in [dsedit, dsinsert]) then
   Begin
      db_DetalhesServicos.Post;
   End;

   If (db_DetalhesTerceiros.State in [dsedit, dsinsert]) then
   Begin
      db_DetalhesTerceiros.Post;
   End;


   CalculaPedido;

end;

procedure TFrmOrdemServico.ImprimirPedidocomvalores1Click(Sender: TObject);
begin
   FrmFrameBotoes1SpbImprimirClick(Sender);
end;

procedure TFrmOrdemServico.grpDetalhesOSExit(Sender: TObject);
begin
   if db_Pedido.FieldByName('CLIENTE').AsInteger <1 then
   begin
      pgcPrincipal.ActivePageIndex  :=0;
      pgcProblemas.ActivePageIndex  :=0;
      aviso('Campo Cliente é obrigatório');
      EditCliente.SetFocus;
      Abort;
   end;

   if db_Pedido.FieldByName('FORMAPAGTO').AsInteger <1 then
   begin
      pgcPrincipal.ActivePageIndex  :=0;
      pgcProblemas.ActivePageIndex  :=0;
      aviso('Campo Forma de Pagamento é obrigatório');
      EditPagamento.SetFocus;
      Abort;
   end;

   // SALVAR ITENS DO PEDIDO DE VENDA
   FrmFrameBotoes1SpbSalvarClick(Sender);
   {
   If (db_PedidoItens.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoItens.Post;
   End;
   }

end;

end.


