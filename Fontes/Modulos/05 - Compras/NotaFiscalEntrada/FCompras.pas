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


unit FCompras;

interface

uses
   Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Grids, ExtCtrls, Mask, Buttons, DBGrids, DBCtrls, Db, DBTables,
   Menus, SysUtils, ComCtrls,  ImgList,  
   Variants,    
   ISFEdit, ISFEditbtn, ISFdbEditbtn,
   uEstSearchDialogZeos, IDBEdit, FFrameBotoes_II, FFrameBarra,  
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type

   TFrmCompras = class(TForm)
      PopupMenu: TPopupMenu;
      Mnu_EspelhoNF: TMenuItem;
      DS_CtaPagar: TDataSource;
      db_CtaPagar: TFDQuery;
      db_Compras: TFDQuery;
      ds_Compras: TDataSource;
      ds_ComprasItens: TDataSource;
      db_ComprasItens: TFDQuery;
      db_ComprasPedidos: TFDQuery;
      db_ComprasPedidosItens: TFDQuery;
      db_Estoque: TFDQuery;
      ds_ComprasPedidos: TDataSource;
      N6: TMenuItem;
      SP_CalculaItens: TFDStoredProc;
    SPATUALIZA_COMPRA_PRODUTOS: TFDStoredProc;
    SPDELETA_COMPRA_PRODUTOS: TFDStoredProc;
      Etiquetas1: TMenuItem;
      BoxFornecedor: TGroupBox;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Label15: TLabel;
      Label14: TLabel;
      DBEditData: TDBEdit;
      EditDocumento: TDBEdit;
      DBEdit7: TDBEdit;
      DBEdit16: TDBEdit;
      DBEdit17: TDBEdit;
      EditFornecedor: TIDBEditDialog;
      EditNomeCliente: TEdit;
      EditNomePlanoContas: TEdit;
      Edit1: TEdit;
      DbEditCFOP: TIDBEditDialog;
      Edit2: TEdit;
      EstSearchDialogZeos1: TIDBEditDialog;
      BoxProdutos: TGroupBox;
      DBGrid_Produtos: TDBGrid;
      GroupBox4: TGroupBox;
      DBEdit10: TDBEdit;
      FrmFrameBotoes_II1: TFrmFrameBotoes_II;

      EditPlano: TIDBEditDialog;
      FrmFrameBarra1: TFrmFrameBarra;
      Label5: TLabel;
      db_ComprasItensCODIGO: TIntegerField;
      db_ComprasItensNOTAFISCAL: TStringField;
      db_ComprasItensMODELO: TStringField;
      db_ComprasItensSERIE: TStringField;
      db_ComprasItensFORNECEDOR: TIntegerField;
      db_ComprasItensLOTE: TStringField;
      db_ComprasItensPRODUTO: TStringField;
      db_ComprasItensDESCRICAO: TStringField;
      db_ComprasItensUND: TStringField;
      db_ComprasItensCLASSIFICAO_FISCAL: TStringField;
      db_ComprasItensSITUACAO_TRIBUTARIA: TStringField;
      db_ComprasItensICMS_BASECALCULO: TBCDField;
      db_ComprasItensICMS_REDUCAO: TBCDField;
      db_ComprasItensICMS_REDUCAO_VALOR: TBCDField;
      db_ComprasItensIPI_BASECALCULO: TBCDField;
      db_ComprasItensIPI_VALOR: TBCDField;
      db_ComprasItensVL_UNITARIO: TBCDField;
      db_ComprasItensDESCONTO: TBCDField;
      db_ComprasItensDESCONTO_VLR: TBCDField;
      db_ComprasItensMARKUP: TBCDField;
      db_ComprasItensMG_LUCRO: TBCDField;
      db_ComprasItensPRC_VENDA: TBCDField;
      db_ComprasItensVL_TOTAL: TBCDField;
      db_ComprasCODIGO: TIntegerField;
      db_ComprasMODELO: TStringField;
      db_ComprasSERIE: TStringField;
      db_ComprasFORNECEDOR: TIntegerField;
      db_ComprasTRANSPORTADORA: TIntegerField;
      db_ComprasCENTROCUSTO: TIntegerField;
      db_ComprasPEDIDOINTERNO: TIntegerField;
      db_ComprasFORMAPAGTO: TIntegerField;
      db_ComprasPLANO_CONTAS: TStringField;
      db_ComprasCFOP: TIntegerField;
      db_ComprasLOTE: TStringField;
      db_ComprasICMS_BASECALCULO: TBCDField;
      db_ComprasICMS_BASECALCULO_SUBSTITUICAO: TBCDField;
      db_ComprasICMS_VALOR_SUBSTITUICAO: TBCDField;
      db_ComprasICMS_REDUCAO: TBCDField;
      db_ComprasICMS_REDUCAO_VALOR: TBCDField;
      db_ComprasIPI_BASECALCULO: TBCDField;
      db_ComprasIPI_VALOR: TBCDField;
      db_ComprasISS: TBCDField;
      db_ComprasISS_BASECALCULO: TBCDField;
      db_ComprasISS_VALOR: TBCDField;
      db_ComprasVLR_SEGURO: TBCDField;
      db_ComprasVLR_DESPESAS_ASSESSORIAS: TBCDField;
      db_ComprasDESCONTO: TBCDField;
      db_ComprasVLR_DESCONTO: TBCDField;
      db_ComprasVLR_RECEBIDO: TBCDField;
      db_ComprasTROCO: TBCDField;
      db_ComprasVLR_CAIXA: TBCDField;
      db_ComprasFRETE: TStringField;
      db_ComprasFRETE_QUANTIDADE: TIntegerField;
      db_ComprasFRETE_ESPECIE: TStringField;
      db_ComprasFRETE_MARCA: TStringField;
      db_ComprasFRETE_NUMERO: TStringField;
      db_ComprasFRETE_PBRUTO: TBCDField;
      db_ComprasFRETE_PLIQUIDO: TBCDField;
      db_ComprasQTDE_PRODUTOS: TIntegerField;
      db_ComprasVALOR_PRODUTOS: TBCDField;
      db_ComprasTOTAL_NF: TBCDField;
      db_ComprasATUALIZADO: TStringField;
      BoxCalculo: TGroupBox;
      Label21: TLabel;
      Label17: TLabel;
      Label6: TLabel;
      Label20: TLabel;
      Label19: TLabel;
      Label18: TLabel;
      Label13: TLabel;
      Label39: TLabel;
      EFrete: TDBEdit;
      ebase: TDBEdit;
      eseguro: TDBEdit;
      eoutras: TDBEdit;
      eprod: TDBEdit;
      enota: TDBEdit;
      DBEdit1: TDBEdit;
      db_ComprasDATA: TSQLTimeStampField;
      db_ComprasDATAENTRADA: TSQLTimeStampField;
      db_ComprasVALIDADE: TSQLTimeStampField;
      db_ComprasItensDATA: TSQLTimeStampField;
      db_ComprasItensDATAENTRADA: TSQLTimeStampField;
      db_ComprasItensVALIDADE: TSQLTimeStampField;
      db_ComprasItensQUANTIDADE: TBCDField;
      db_ComprasPFRETE: TBCDField;
      db_ComprasPFRETE_VALOR: TBCDField;
      db_ComprasItensICMS: TBCDField;
      db_ComprasItensICMS_VALOR: TBCDField;
      db_ComprasItensIPI: TBCDField;
      db_ComprasItensPFRETE: TBCDField;
      db_ComprasItensPFRETE_VALOR: TBCDField;
    db_ComprasICMS_VALOR: TBCDField;
    db_CtaPagarCODIGO: TIntegerField;
    db_CtaPagarFORNECEDOR: TIntegerField;
    db_CtaPagarNOTAFISCAL: TIntegerField;
    db_CtaPagarSERIENF: TStringField;
    db_CtaPagarDATA: TSQLTimeStampField;
    db_CtaPagarVENCIMENTO: TSQLTimeStampField;
    db_CtaPagarDATA_PAGTO: TSQLTimeStampField;
    db_CtaPagarDOCUMENTO: TStringField;
    db_CtaPagarPARCELA: TIntegerField;
    db_CtaPagarCFOP: TIntegerField;
    db_CtaPagarESPECIE: TStringField;
    db_CtaPagarTIPO: TStringField;
    db_CtaPagarVALOR: TBCDField;
    db_CtaPagarVALOR_PAGO: TBCDField;
    db_CtaPagarVALOR_SALDO: TBCDField;
    db_CtaPagarDEPARTAMENTO: TIntegerField;
    db_CtaPagarPLANO_CONTAS: TStringField;
    db_CtaPagarHISTORICO: TStringField;
    db_CtaPagarOBSERVACAO: TStringField;
    db_CtaPagarQUITADO: TStringField;
    db_ComprasNOTAFISCAL: TStringField;
    EditTransportadora: TIDBEditDialog;
    EditNomeTrasportadora: TEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    db_ComprasFRETE_VALOR: TBCDField;
    db_CtaPagarFrete: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    DateTimeField1: TSQLTimeStampField;
    DateTimeField2: TSQLTimeStampField;
    DateTimeField3: TSQLTimeStampField;
    StringField2: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TBCDField;
    FloatField2: TBCDField;
    FloatField3: TBCDField;
    IntegerField6: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    ds_CtaPagarFrete: TDataSource;
    SPATUALIZA_COMPRA_GRADE: TFDStoredProc;
    SPPEDIDO_MATERIAPRIMAIMPORTAR: TFDStoredProc;
    db_ComprasEMPRESA: TIntegerField;
    db_CtaPagarEMPRESA: TIntegerField;
    db_CtaPagarFreteEMPRESA: TIntegerField;
    dbProcurarPedido: TIDBEditDialog;
    dbProcurarCompra: TIDBEditDialog;
    db_ComprasFORNECEDORPEDIDO: TIntegerField;
    DBEdit5: TDBEdit;
      procedure Etiquetas1Click(Sender: TObject);
      procedure Mnu_EspelhoNFClick(Sender: TObject);
      procedure db_ComprasItensAfterPost(DataSet: TDataSet);
      procedure db_ComprasItensAfterDelete(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure QryVendaAfterCancel(DataSet: TDataSet);

      procedure DbGrid_ItensKeyPress(Sender: TObject; var Key: Char);
      procedure Sair1Click(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure db_CtaPagarBeforePost(DataSet: TDataSet);
      procedure db_ComprasItensBeforePost(DataSet: TDataSet);
      procedure db_ComprasNewRecord(DataSet: TDataSet);
      procedure BoxProdutosEnter(Sender: TObject);

      procedure Importar_PedidoCompra(idPedidoCompra:Integer);
      procedure CalculaItemCompra;

      procedure db_ComprasPedidosAfterOpen(DataSet: TDataSet);
      procedure db_ComprasPedidosBeforeClose(DataSet: TDataSet);
      procedure DBGrid_ProdutosKeyPress(Sender: TObject; var Key: Char);
      procedure DBGrid_ProdutosEnter(Sender: TObject);
      procedure db_CtaPagarNewRecord(DataSet: TDataSet);
      procedure db_ComprasBeforePost(DataSet: TDataSet);
      procedure db_EstoqueBeforePost(DataSet: TDataSet);
      procedure DBEdit_prcvendaExit(Sender: TObject);
      procedure SpeedButton1Click(Sender: TObject);
      procedure db_ComprasItensQUANTIDADEChange(Sender: TField);
      procedure db_ComprasItensVL_UNITARIOChange(Sender: TField);
      procedure db_ComprasItensMG_LUCROChange(Sender: TField);
      procedure db_ComprasItensPERC_FRETEChange(Sender: TField);
      procedure DBGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure db_ComprasItensPRODUTOChange(Sender: TField);
      procedure FrmFrameBotoes_II1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes_II1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes_II1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes_II1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes_II1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes_II1BtnExtra1Click(Sender: TObject);
      procedure FrmFrameBotoes_II1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes_II1BtnExtra2Click(Sender: TObject);
      procedure FrmFrameBotoes_II1SpbImprimirClick(Sender: TObject);

      Procedure ConfiguraBotaoEstornar;
      procedure FrmFrameBotoes_II1SpbAdicionarClick(Sender: TObject);
      procedure db_ComprasAfterPost(DataSet: TDataSet);
    procedure db_ComprasItensIPIChange(Sender: TField);
    procedure db_ComprasItensICMSChange(Sender: TField);
    procedure db_ComprasItensDESCONTOChange(Sender: TField);
    procedure db_ComprasFORNECEDORChange(Sender: TField);
    procedure db_CtaPagarFreteBeforePost(DataSet: TDataSet);
    procedure db_CtaPagarFreteNewRecord(DataSet: TDataSet);
    procedure db_ComprasBeforeOpen(DataSet: TDataSet);
    procedure db_CtaPagarBeforeOpen(DataSet: TDataSet);
    procedure db_CtaPagarFreteBeforeOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FrmFrameBotoes_II1PainelBotoesDblClick(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }

   end;

var
   FrmCompras: TFrmCompras;
   vlrvar: Integer;
   bImportando : Boolean;
   sOpcao : String;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, FComprasPagar,
  FOpcaoNotaFiscalCompra, FComprasEtiquetas, FComprasImprimir,
  FCompraCodigoBarra, FComprasGradeEditar;

{$R *.DFM}

// calcula itens da nota fiscal
procedure TFrmCompras.FormCreate(Sender: TObject);
begin

   FrmFrameBotoes_II1.DataSource := ds_Compras;

   db_Compras.Close;
   db_Compras.ParamByName('CODIGO').Clear;
   db_Compras.open;

   db_ComprasItens.Close;
   db_ComprasItens.open;

   db_CtaPagar.open;

End;

procedure TFrmCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   db_Compras.Close;
   db_ComprasItens.Close;
   db_CtaPagar.Close;
   db_Estoque.Close;

   FreeAndNil(FrmCompras);

end;

procedure TFrmCompras.QryVendaAfterCancel(DataSet: TDataSet);
begin
   if (db_ComprasItens.state in [dsedit, dsinsert]) then
   begin
      db_ComprasItens.Cancel;
   end;
end;

procedure TFrmCompras.DbGrid_ItensKeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCompras.Sair1Click(Sender: TObject);
begin
   Close;

end;

Procedure TFrmCompras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Begin

   If Key = vk_f12 then
   begin

      wfloat[0] := 0;
      db_ComprasItens.First;
      While not db_ComprasItens.Eof do
      Begin
         wfloat[0] := wfloat[0] + db_ComprasItens.FieldByName
           ('QUANTIDADE').AsFloat;

         db_ComprasItens.next;

      End;
      db_ComprasItens.First;
      If not(db_Compras.state in [dsedit, dsinsert]) then
         db_Compras.edit;

      db_Compras.FieldByName('QTDE_PRODS').AsFloat := wfloat[0];
      db_Compras.Post;
      wfloat[0] := 0;

   end;

   if Key = vk_f5 then
   begin
      db_Compras.Refresh;
      db_ComprasItens.Refresh;
   end;

End;

procedure TFrmCompras.FormResize(Sender: TObject);
begin
  DimensionarGrid(DBGrid_Produtos,self);

end;

procedure TFrmCompras.FrmFrameBotoes_II1BtnExtra1Click(Sender: TObject);
begin

   If db_Compras.IsEmpty then
   Begin
      Informar('Não há dados para Estornar.');
      Exit;
   End;

   IF Pergunta('Deseja realmente Estornar compra?' + #13 + #10 +
     'O Estoque será diminuído (-).') = True Then
   Begin

      db_ComprasItens.First;
      while not db_ComprasItens.Eof do
      Begin
         // atualiza estoque com base nos itens da nota de entrada

         SPATUALIZA_COMPRA_PRODUTOS.ParamByName('NCOMPRA').AsInteger :=            db_Compras.FieldByName('CODIGO').AsInteger;
         SPATUALIZA_COMPRA_PRODUTOS.ParamByName('ACAO').AsString := 'S';

         SPATUALIZA_COMPRA_PRODUTOS.ParamByName('SPRODUTO').AsString :=             db_ComprasItens.FieldByName('PRODUTO').AsString;
         SPATUALIZA_COMPRA_PRODUTOS.ParamByName('NQUANTIDADE').AsFloat :=                db_ComprasItens.FieldByName('QUANTIDADE').AsFloat;

         SPATUALIZA_COMPRA_PRODUTOS.ExecProc;

         db_ComprasItens.next;
      End;
      db_ComprasItens.First;

   SPATUALIZA_COMPRA_GRADE.ParamByName('NEMPRESA').AsInteger :=       FSistema.Empresa;
   SPATUALIZA_COMPRA_GRADE.ParamByName('NCOMPRA').AsInteger :=        db_Compras.FieldByName('CODIGO').AsInteger;
   SPATUALIZA_COMPRA_GRADE.ParamByName('ACAO').AsString := 'S';
   SPATUALIZA_COMPRA_GRADE.ExecProc;
      Informar('Compra foi Estornada');

   End;
   ConfiguraBotaoEstornar;

end;

procedure TFrmCompras.FrmFrameBotoes_II1BtnExtra2Click(Sender: TObject);
begin
   If db_Compras.IsEmpty then
   Begin
      BeepCritica;
      Erro('Não há dados para gerar faturas.');
      Exit;
   End;

   db_CtaPagar.Close;
   db_CtaPagar.open;

   db_CtaPagarFrete.Close;
   db_CtaPagarFrete.open;

   if (db_Compras.FieldByName('FRETE_VALOR').AsFloat>0) Then
   begin
     if db_CtaPagarFrete.IsEmpty then
     begin
        db_CtaPagarFrete.Append;
        db_CtaPagarFrete.FieldByName('EMPRESA').AsInteger   := FSistema.Empresa ;
        db_CtaPagarFrete.FieldByName('DOCUMENTO').AsString     :='***';
        db_CtaPagarFrete.FieldByName('VENCIMENTO').AsDateTime  :=db_Compras.FieldByName('DATA').AsDateTime;
        db_CtaPagarFrete.FieldByName('VALOR').AsFloat          :=db_Compras.FieldByName('FRETE_VALOR').AsFloat;
        db_CtaPagarFrete.post;
     end;
   end;

   FrmComprasPagar := TFrmComprasPagar.create(self);
   FrmComprasPagar.ShowModal;

end;

procedure TFrmCompras.FrmFrameBotoes_II1PainelBotoesDblClick(Sender: TObject);
begin
   CalculaItemCompra;
   db_Compras.Refresh;
   db_ComprasItens.Refresh;

end;

procedure TFrmCompras.FrmFrameBotoes_II1SpbAdicionarClick(Sender: TObject);
begin

   sOpcao := '';
   FrmOpcaoNotaFiscalCompra := TFrmOpcaoNotaFiscalCompra.Create(self);
   FrmOpcaoNotaFiscalCompra.ShowModal;

   if sOpcao='DIGITAR' Then
   begin
      // INSERIR
      FrmFrameBotoes_II1.SpbAdicionarClick(Sender);
      EditDocumento.SetFocus;
   end;

   if sOpcao='IMPORTAR' Then
   begin

      Achar[99] := 'S'; // pode ser qualquer caractere
      if dbProcurarPedido.Execute=false then
         exit;

      Importar_PedidoCompra(dbProcurarPedido.ResultFieldAsInteger('CODIGO'));

      FrmFrameBotoes_II1.SpbEditar.Click;
      EditDocumento.Setfocus;
   end;


end;

procedure TFrmCompras.FrmFrameBotoes_II1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes_II1.SpbCancelarClick(Sender);

   if (db_Compras.state in [dsedit, dsinsert]) then
   begin
      db_Compras.Cancel;
   end;

end;

procedure TFrmCompras.FrmFrameBotoes_II1SpbEditarClick(Sender: TObject);
begin

   FrmFrameBotoes_II1.SpbEditarClick(Sender);

end;

procedure TFrmCompras.FrmFrameBotoes_II1SpbExcluirClick(Sender: TObject);
begin

   if db_Compras.IsEmpty then
   begin
      Informar('Não há dados para excluir');
      Abort;
   end;

   iAchar[0] := db_Compras.FieldByName('PEDIDOINTERNO').AsInteger;

   if db_Compras.FieldByName('ATUALIZADO').AsString = 'S' then
   begin
      BeepCritica;
      Informar('Primeiro você deve estornar a compra' + #13 + #10 +
        'Clique no botão estornar e depois tente excluir novamente.');
      Exit;

   end;

   IF Pergunta('Deseja realmente excluir está compra?') = False Then
      Exit;

   // atualiza estoque com base nos itens da nota de entrada
   SPDELETA_COMPRA_PRODUTOS.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
   SPDELETA_COMPRA_PRODUTOS.ParamByName('NCOMPRA').AsInteger    := db_Compras.FieldByName('CODIGO').AsInteger;
   SPDELETA_COMPRA_PRODUTOS.ParamByName('FORNECEDOR').AsInteger := db_Compras.FieldByName('FORNECEDOR').AsInteger;
   SPDELETA_COMPRA_PRODUTOS.ParamByName('NOTAFISCAL').AsInteger := db_Compras.FieldByName('NOTAFISCAL').AsInteger;
   SPDELETA_COMPRA_PRODUTOS.ExecProc;

   //----------------------------------------------------------

   db_CtaPagarFrete.Close;
   db_CtaPagarFrete.open;
   while not db_CtaPagarFrete.eof do
      db_CtaPagarFrete.delete;

   db_CtaPagarFrete.Close;

   //----------------------------------------------------------

   FrmFrameBotoes_II1.SpbExcluirClick(Sender);


end;

procedure TFrmCompras.FrmFrameBotoes_II1SpbImprimirClick(Sender: TObject);
begin
   PopupMenu.Popup(FrmFrameBotoes_II1.SpbImprimir.left + 100, 595);
end;

procedure TFrmCompras.FrmFrameBotoes_II1SpbProcurarClick(Sender: TObject);
begin
   if dbProcurarCompra.Execute then
   begin
      db_Compras.Close;
      db_Compras.ParamByName('CODIGO').AsInteger := dbProcurarCompra.ResultFieldAsInteger('CODIGO');
      db_Compras.open;
      DimensionarGrid(DBGrid_Produtos,self);
      db_Compras.Refresh;
   end;
end;

procedure TFrmCompras.FrmFrameBotoes_II1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes_II1.SpbSairClick(Sender);

end;

procedure TFrmCompras.FrmFrameBotoes_II1SpbSalvarClick(Sender: TObject);
begin

   FrmFrameBotoes_II1.SpbSalvarClick(Sender);


   iAchar[0] := db_Compras.FieldByName('CODIGO').AsInteger;
   db_Compras.ParamByName('CODIGO').AsInteger := iAchar[0];

   If (db_ComprasItens.state in [dsedit, dsinsert]) then
   Begin
      db_ComprasItens.Post;
   End;

   db_Compras.Close;
   db_Compras.open;


   If db_Compras.FieldByName('ATUALIZADO').AsString = 'S' then
   begin
      Exit;
   End;

   If Pergunta('Deseja fechar compra e atualizar estoque?') = False Then
      Exit;

   db_ComprasItens.First;
   while not db_ComprasItens.Eof do
   Begin
      // atualiza estoque com base nos itens da nota de entrada
      SPATUALIZA_COMPRA_PRODUTOS.ParamByName('NCOMPRA').AsInteger    := db_Compras.FieldByName('CODIGO').AsInteger;
      SPATUALIZA_COMPRA_PRODUTOS.ParamByName('ACAO').AsString        := 'E';
      SPATUALIZA_COMPRA_PRODUTOS.ParamByName('SPRODUTO').AsString    := db_ComprasItens.FieldByName('PRODUTO').AsString;
      SPATUALIZA_COMPRA_PRODUTOS.ParamByName('NQUANTIDADE').AsFloat  := db_ComprasItens.FieldByName('QUANTIDADE').AsFloat;

      SPATUALIZA_COMPRA_PRODUTOS.ExecProc;

      db_ComprasItens.next;
   End;
   db_ComprasItens.Refresh;
   db_ComprasItens.First;


   {
   // db_ComprasItens.Refresh;
   SPATUALIZA_COMPRA_GRADE.ParamByName('NEMPRESA').AsInteger :=       FSistema.Empresa;
   SPATUALIZA_COMPRA_GRADE.ParamByName('NCOMPRA').AsInteger :=        db_Compras.FieldByName('CODIGO').AsInteger;
   SPATUALIZA_COMPRA_GRADE.ParamByName('ACAO').AsString := 'E';
   SPATUALIZA_COMPRA_GRADE.ExecProc;


   SPPEDIDO_MATERIAPRIMAIMPORTAR.ParamByName('ACAO').AsString :=  'INSERT';
   SPPEDIDO_MATERIAPRIMAIMPORTAR.ExecProc;
   }

   ConfiguraBotaoEstornar;
   Aviso(' Os itens desta Nota Fiscal foram atualizados no Estoque! ');

end;

procedure TFrmCompras.db_CtaPagarBeforeOpen(DataSet: TDataSet);
begin
   db_CtaPagar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmCompras.db_CtaPagarBeforePost(DataSet: TDataSet);
begin

   db_CtaPagar.FieldByName('TIPO').AsString := 'PAGAR';

   db_CtaPagar.FieldByName('EMPRESA').AsInteger   := FSistema.Empresa ;

   db_CtaPagar.FieldByName('FORNECEDOR').AsInteger :=
     db_Compras.FieldByName('FORNECEDOR').AsInteger;

   db_CtaPagar.FieldByName('DEPARTAMENTO').AsString :=
     db_Compras.FieldByName('CENTROCUSTO').AsString;

   db_CtaPagar.FieldByName('NOTAFISCAL').AsString :=
     db_Compras.FieldByName('NOTAFISCAL').AsString;

   db_CtaPagar.FieldByName('DATA').AsDateTime :=
     db_Compras.FieldByName('DATA').AsDateTime;

   db_CtaPagar.FieldByName('PLANO_CONTAS').AsString :=
     db_Compras.FieldByName('PLANO_CONTAS').AsString;

   db_CtaPagar.FieldByName('HISTORICO').AsString := 'Proveniente da compra: ' +
     db_Compras.FieldByName('CODIGO').AsString + ' e NF de Entrada nº: ' +
     db_Compras.FieldByName('NOTAFISCAL').AsString;

end;

procedure TFrmCompras.db_CtaPagarFreteBeforeOpen(DataSet: TDataSet);
begin
   db_CtaPagarFrete.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmCompras.db_CtaPagarFreteBeforePost(DataSet: TDataSet);
begin
   db_CtaPagarFrete.FieldByName('TIPO').AsString := 'PAGAR';

   db_CtaPagarFrete.FieldByName('FORNECEDOR').AsInteger :=
     db_Compras.FieldByName('TRANSPORTADORA').AsInteger;

   db_CtaPagarFrete.FieldByName('DEPARTAMENTO').AsInteger :=
     db_Compras.FieldByName('CENTROCUSTO').AsInteger;

   db_CtaPagarFrete.FieldByName('NOTAFISCAL').AsString :=
     db_Compras.FieldByName('NOTAFISCAL').AsString;

   db_CtaPagarFrete.FieldByName('DATA').AsDateTime :=
     db_Compras.FieldByName('DATA').AsDateTime;

   db_CtaPagarFrete.FieldByName('PLANO_CONTAS').AsString :=
     db_Compras.FieldByName('PLANO_CONTAS').AsString;

   db_CtaPagarFrete.FieldByName('HISTORICO').AsString := 'Proveniente da compra: ' +
     db_Compras.FieldByName('CODIGO').AsString + ' e NF de Entrada nº: ' +
     db_Compras.FieldByName('NOTAFISCAL').AsString;


end;

procedure TFrmCompras.db_CtaPagarFreteNewRecord(DataSet: TDataSet);
begin
   db_CtaPagarFrete.FieldByName('QUITADO').AsString := 'N';


end;

procedure TFrmCompras.db_ComprasItensBeforePost(DataSet: TDataSet);
begin

   db_ComprasItens.FieldByName('CODIGO').AsString :=
     db_Compras.FieldByName('CODIGO').AsString;

   db_ComprasItens.FieldByName('DATA').AsDateTime :=
     db_Compras.FieldByName('DATA').AsDateTime;

   db_ComprasItens.FieldByName('DATAENTRADA').AsDateTime :=
     db_Compras.FieldByName('DATAENTRADA').AsDateTime;

   db_ComprasItens.FieldByName('VALIDADE').AsDateTime :=
     db_Compras.FieldByName('VALIDADE').AsDateTime;

   db_ComprasItens.FieldByName('LOTE').AsString :=
     db_Compras.FieldByName('LOTE').AsString;

   db_ComprasItens.FieldByName('FORNECEDOR').AsString :=
     db_Compras.FieldByName('FORNECEDOR').AsString;

   db_ComprasItens.FieldByName('NOTAFISCAL').AsString :=
     db_Compras.FieldByName('NOTAFISCAL').AsString;

   db_ComprasItens.FieldByName('MODELO').AsString :=
     db_Compras.FieldByName('MODELO').AsString;

   db_ComprasItens.FieldByName('SERIE').AsString :=
     db_Compras.FieldByName('SERIE').AsString;

End;

procedure TFrmCompras.db_ComprasItensDESCONTOChange(Sender: TField);
begin
   CalculaItemCompra;
end;

procedure TFrmCompras.db_ComprasItensICMSChange(Sender: TField);
begin
   CalculaItemCompra;
end;

procedure TFrmCompras.db_ComprasItensIPIChange(Sender: TField);
begin
   CalculaItemCompra;
end;

procedure TFrmCompras.db_ComprasNewRecord(DataSet: TDataSet);
begin
   db_Compras.FieldByName('EMPRESA').AsInteger   := FSistema.Empresa ;
   db_Compras.FieldByName('DATA').AsDateTime := Date;
   db_Compras.FieldByName('DATAENTRADA').AsDateTime := Date;
   db_Compras.FieldByName('ATUALIZADO').AsString := 'N';

End;

procedure TFrmCompras.BoxProdutosEnter(Sender: TObject);
begin
   If (db_Compras.state in [dsedit, dsinsert]) then
   Begin
      db_Compras.Post;
   End;

end;

procedure TFrmCompras.Etiquetas1Click(Sender: TObject);
begin

   FrmComprasEtiquetas := TFrmComprasEtiquetas.create(self);
   FrmComprasEtiquetas.ShowModal;

end;

procedure TFrmCompras.Importar_PedidoCompra(idPedidoCompra:Integer);
begin

   // TblCtaReceber.ParamByName('xcliente').Value :=CodigoCliente;
   db_ComprasPedidos.Close;
   db_ComprasPedidos.ParamByName('CODIGO').AsInteger := idPedidoCompra;
   db_ComprasPedidos.open;

   If db_ComprasPedidos.RecordCount < 1 then
   Begin
      Informar('Não foi possivel localizar Pedido de Compra nº: ' + wTexto[1]);
      Exit;
   End;

   db_ComprasPedidosItens.Close;
   db_ComprasPedidosItens.open;
   If db_ComprasPedidosItens.RecordCount < 1 then
   Begin
      Informar('Não foi importar os dados do Pedido de Compra nº: "' + wTexto[1]
        + '"' + #13 + 'Não há itens lançados...');
      Exit;
   End;
   {
     // cabeçalho da nota fiscal
     If not (db_Compras.state in [dsedit,dsinsert]) then
     db_Compras.Edit;
   }

   bImportando :=True;

   db_Compras.Append;
   FrmFrameBotoes_II1.AtivaEdicao;
   db_Compras.FieldByName('NOTAFISCAL').AsString         := '0';
   db_Compras.FieldByName('PEDIDOINTERNO').AsInteger     := db_ComprasPedidos.FieldByName('CODIGO').AsInteger;
   db_Compras.FieldByName('FORNECEDORPEDIDO').AsString   := db_ComprasPedidos.FieldByName('FORNECEDORPEDIDO').AsString;
   db_Compras.FieldByName('FORNECEDOR').AsInteger        := db_ComprasPedidos.FieldByName('FORNECEDOR').AsInteger;
   db_Compras.FieldByName('FRETE_VALOR').AsFloat         := db_ComprasPedidos.FieldByName('FRETE_VALOR').AsFloat;
   db_Compras.FieldByName('TRANSPORTADORA').AsInteger    := BuscaClienteTransportadora(db_Compras.FieldByName('FORNECEDOR').AsInteger);
   db_Compras.FieldByName('CENTROCUSTO').AsInteger       := BuscaClienteCentroCusto(db_Compras.FieldByName('FORNECEDOR').AsInteger);
   db_Compras.FieldByName('CFOP').AsInteger              := fncClienteBuscaCFOP(db_Compras.FieldByName('FORNECEDOR').AsInteger);
   db_Compras.FieldByName('PLANO_CONTAS').AsString       := fncBuscaPlanoContasCliente(db_Compras.FieldByName('FORNECEDOR').AsInteger);

   if db_Compras.FieldByName('CFOP').AsInteger<1 then
      db_Compras.FieldByName('CFOP').AsInteger:=0;

   if db_Compras.FieldByName('PLANO_CONTAS').AsString='' then
      db_Compras.FieldByName('PLANO_CONTAS').AsString:='0';


   // Gravar tabela MASTER
   If (db_Compras.state in [dsedit, dsinsert]) then
   Begin
      db_Compras.Post;
   End;

   bImportando :=False;

   // efetiva a importação
   db_ComprasPedidosItens.First;
   While not db_ComprasPedidosItens.Eof do
   Begin
      db_ComprasItens.Append;

      db_ComprasItens.FieldByName('PRODUTO').AsString :=
        db_ComprasPedidosItens.FieldByName('PRODUTO').AsString;

       db_ComprasItens.FieldByName('DESCRICAO').AsString :=
       db_ComprasPedidosItens.FieldByName('DESCRICAO').AsString;

      db_ComprasItens.FieldByName('QUANTIDADE').AsFloat :=
        db_ComprasPedidosItens.FieldByName('QTDE_PEDIDA').AsFloat;

      db_ComprasItens.FieldByName('VL_UNITARIO').AsFloat :=
        db_ComprasPedidosItens.FieldByName('VALOR_UNIT').AsFloat;

      db_ComprasItens.FieldByName('VL_TOTAL').AsFloat :=
        db_ComprasPedidosItens.FieldByName('VALOR_TOTAL').AsFloat;

      db_ComprasItens.Post;

      db_ComprasPedidosItens.next;
   End;

   EditDocumento.Setfocus;


End;

procedure TFrmCompras.Mnu_EspelhoNFClick(Sender: TObject);
begin
   FrmComprasImprimir := TFrmComprasImprimir.create(self);
end;

procedure TFrmCompras.db_ComprasPedidosAfterOpen(DataSet: TDataSet);
begin
   db_ComprasPedidosItens.open;
end;

procedure TFrmCompras.db_ComprasPedidosBeforeClose(DataSet: TDataSet);
begin
   db_ComprasPedidosItens.open;
end;

procedure TFrmCompras.DBGrid_ProdutosKeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCompras.DBGrid_ProdutosEnter(Sender: TObject);
begin

   If (db_Compras.state in [dsedit, dsinsert]) then
   Begin
      db_Compras.Post;
   End;

end;

procedure TFrmCompras.db_CtaPagarNewRecord(DataSet: TDataSet);
begin
   db_CtaPagar.FieldByName('EMPRESA').AsInteger   := FSistema.Empresa ;
   db_CtaPagar.FieldByName('QUITADO').AsString := 'N';


end;

procedure TFrmCompras.CalculaItemCompra;
begin

   SP_CalculaItens.ParamByName('CODIGO').AsString :=db_Compras.FieldByName('CODIGO').AsString;
   SP_CalculaItens.ExecProc;
   SP_CalculaItens.close;


End;

procedure TFrmCompras.ConfiguraBotaoEstornar;
begin

   db_Compras.Refresh;
   if db_Compras.FieldByName('ATUALIZADO').AsString = 'S' then
   begin
      FrmFrameBotoes_II1.SpbExtra1.enabled := True;
   end
   else
   begin
      FrmFrameBotoes_II1.SpbExtra1.enabled := False;
   end;

end;

procedure TFrmCompras.db_ComprasAfterPost(DataSet: TDataSet);
begin

   if db_Compras.FieldByName('ATUALIZADO').AsString = 'S' then
   begin
      FrmFrameBotoes_II1.SpbExtra1.enabled := True;
   end
   else
   begin
      FrmFrameBotoes_II1.SpbExtra1.enabled := False;
   end;

end;

procedure TFrmCompras.db_ComprasBeforeOpen(DataSet: TDataSet);
begin
   db_Compras.ParamByName('EMPRESA').AsInteger   := FSistema.Empresa ;
end;

procedure TFrmCompras.db_ComprasBeforePost(DataSet: TDataSet);
begin

   // Obrigar o usuário a informar o numero do Documento
   If Empty(db_Compras.FieldByName('NOTAFISCAL').AsString) = True Then
   Begin
      BeepCritica;
      Informar('Informe o numero do Documento');
      EditDocumento.SetFocus;
      Abort;
   End;

   // Obrigar o usuário a informar o CFOP
   If Empty(db_Compras.FieldByName('CFOP').AsString) = True Then
   Begin
      BeepCritica;
      Informar('Informe o CFOP (existente)');
      DbEditCFOP.SetFocus;
      Abort;
   End;

   // Obrigar o usuário a informar o PLANO DE CONTAS
   If Empty(db_Compras.FieldByName('PLANO_CONTAS').AsString) = True Then
   Begin
      BeepCritica;
      Informar('Informe o Plano de Contas ');
      EditPlano.SetFocus;
      Abort;
   End;

end;

procedure TFrmCompras.db_ComprasFORNECEDORChange(Sender: TField);
begin

   if not bImportando Then
   begin
      db_Compras.FieldByName('TRANSPORTADORA').AsInteger := BuscaClienteTransportadora(db_Compras.FieldByName('FORNECEDOR').AsInteger);
      db_Compras.FieldByName('CENTROCUSTO').AsInteger    := BuscaClienteCentroCusto(db_Compras.FieldByName('FORNECEDOR').AsInteger);
      db_Compras.FieldByName('CFOP').AsInteger           := fncClienteBuscaCFOP(db_Compras.FieldByName('FORNECEDOR').AsInteger);
      db_Compras.FieldByName('PLANO_CONTAS').AsString    := fncBuscaPlanoContasCliente(db_Compras.FieldByName('FORNECEDOR').AsInteger);

   end;

end;

procedure TFrmCompras.db_EstoqueBeforePost(DataSet: TDataSet);
begin
   db_Estoque.FieldByName('COMPRAS').AsString :=
     db_Compras.FieldByName('CODIGO').AsString;

end;

procedure TFrmCompras.DBEdit_prcvendaExit(Sender: TObject);
begin

   If (db_ComprasItens.state in [dsedit, dsinsert]) then
   Begin
      db_ComprasItens.Post;
   End;

end;

procedure TFrmCompras.SpeedButton1Click(Sender: TObject);
begin

   if Pergunta('Excluir item selecionado?') = False then
      Exit;

   db_ComprasItens.delete;

end;

procedure TFrmCompras.db_ComprasItensQUANTIDADEChange(Sender: TField);
begin
   db_ComprasItens.FieldByName('VL_TOTAL').AsFloat :=  ( db_ComprasItens.FieldByName('QUANTIDADE').AsFloat * db_ComprasItens.FieldByName('VL_UNITARIO').AsFloat  );
   CalculaItemCompra;
end;

procedure TFrmCompras.db_ComprasItensVL_UNITARIOChange(Sender: TField);
begin
   db_ComprasItens.FieldByName('VL_TOTAL').AsFloat :=  ( db_ComprasItens.FieldByName('QUANTIDADE').AsFloat * db_ComprasItens.FieldByName('VL_UNITARIO').AsFloat  );
   CalculaItemCompra;

end;

procedure TFrmCompras.db_ComprasItensPRODUTOChange(Sender: TField);
begin

   if Empty(db_ComprasItens.FieldByName('PRODUTO').AsString) then
      Exit;

   db_Estoque.Close;
   db_Estoque.ParamByName('REFERENCIA').AsString :=
     db_ComprasItens.FieldByName('PRODUTO').AsString;
   db_Estoque.open;

   db_ComprasItens.FieldByName('UND').AsString :=
     db_Estoque.FieldByName('UNIDADE').AsString;

   if db_Estoque.RecordCount > 0 then
   begin
      db_Estoque.First;
      db_ComprasItens.FieldByName('DESCRICAO').AsString :=
        db_Estoque.FieldByName('DESCRICAO').AsString;
      db_ComprasItens.FieldByName('VL_UNITARIO').AsFloat :=
        db_Estoque.FieldByName('PRC_CUSTO').AsFloat;

      db_ComprasItens.FieldByName('PERC_ICMS').AsFloat :=
        db_Estoque.FieldByName('ICMS').AsFloat;
      db_ComprasItens.FieldByName('PERC_IPI').AsFloat :=
        db_Estoque.FieldByName('IPI').AsFloat;

   end
   else
   begin
      BeepCritica;
      Informar('Produto não cadastrao no estoque');
      Abort;
   end;

end;

procedure TFrmCompras.db_ComprasItensAfterDelete(DataSet: TDataSet);
begin
   CalculaItemCompra;
end;

procedure TFrmCompras.db_ComprasItensAfterPost(DataSet: TDataSet);
begin
   CalculaItemCompra;
   db_ComprasItens.Refresh;
   db_Compras.RefreshRecord;
end;

procedure TFrmCompras.db_ComprasItensMG_LUCROChange(Sender: TField);
begin
   CalculaItemCompra;
end;

procedure TFrmCompras.db_ComprasItensPERC_FRETEChange(Sender: TField);
begin
   CalculaItemCompra;
end;

procedure TFrmCompras.DBGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_F9 then
   Begin
      If (db_Compras.FieldByName('ATUALIZADO').AsString <> 'S') then
      Begin
         FrmCompraCodigoBarra := TFrmCompraCodigoBarra.create(self);
         FrmCompraCodigoBarra.ShowModal;
         DBGrid_Produtos.SetFocus;
      End;
   End;

   If Key = VK_F2 then
   Begin

      // se o cursor estiver posicionado na coluna quantidade
      if (dbGrid_Produtos.SelectedField = db_ComprasItensQUANTIDADE) and
        not empty(db_ComprasItens.FieldByName('PRODUTO').AsString) then
      Begin

        If (db_ComprasItens.state in [dsedit, dsinsert]) then
        Begin
           db_ComprasItens.Post;
         End;
         if ValidarReferenciaCorTamanho(db_ComprasItens.FieldByName('PRODUTO').AsString)=false Then
            exit;

         strProduto :=db_ComprasItens.FieldByName('PRODUTO').AsString;
         FrmComprasGradeEditar := TFrmComprasGradeEditar.create(self);
         FrmComprasGradeEditar.ShowModal;
         strProduto :='';
         DBGrid_Produtos.SetFocus;


      End;

   End;

end;

End.
