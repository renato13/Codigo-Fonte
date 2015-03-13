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


unit FVendaExpressa;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Buttons,
   Mask, DBCtrls, Grids, DBGrids, DB,
   Menus,  ActnList,  FFrameBotoes, FFrameBotoes_II,
   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBarra,
     frxClass, frxDBSet,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type

   TFrmVendaExpressa = class(TForm)
      db_view_estoque: TFDQuery;
      db_somar: TFDQuery;
      PopUpFaturas: TPopupMenu;
      Faturas1: TMenuItem;
      ExcluirItem1: TMenuItem;
      Panel1: TPanel;
      PainelDicas: TPanel;
      ProgressBar1: TProgressBar;
      GRPTop: TGroupBox;
      Label7: TLabel;
      Label5: TLabel;
      EditData: TDBEdit;
      EditCodigo: TDBEdit;
      GRPItens: TGroupBox;
      DBGrid_Produtos: TDBGrid;
      PainelBottom: TPanel;
      Label1: TLabel;
      Shape4: TShape;
      Shape3: TShape;
      Label3: TLabel;
      DBEdit2: TDBEdit;
      DBEdit1: TDBEdit;
      DBEdit3: TDBEdit;
      Shape1: TShape;
      Label2: TLabel;
      PopupExcluir: TPopupMenu;
      PopUp_ExcluirItem: TMenuItem;
      FrmFrameBotoes1: TFrmFrameBotoes_II;
      EditCliente: TIDBEditDialog;
      EditNomeCliente: TEdit;
      EditNomeVendedor: TEdit;
      EditVendedor: TIDBEditDialog;
      FrmFrameBarra1: TFrmFrameBarra;
    DS_Vendas: TDataSource;
    DS_VendasItens: TDataSource;
    db_Vendas: TFDQuery;
    db_VendasItens: TFDQuery;
    db_ViewNotaFiscal: TFDQuery;
    frxDB_NotaFiscal: TfrxDBDataset;
    frxImprimirVendaPDV: TfrxReport;
    db_ViewNotaFiscalItens: TFDQuery;
    frxDB_NotaFiscalItens: TfrxDBDataset;
    ds_ViewNotaFiscal: TDataSource;
    ConferenciaProcurar: TIDBEditDialog;
    dbProcurarNFe: TIDBEditDialog;
    ds_PedidosConferencia: TDataSource;
    db_PedidosConferencia: TFDQuery;
    db_PedidosConferenciaItens: TFDQuery;
    db_VendasCODIGO: TIntegerField;
    db_VendasEMPRESA: TIntegerField;
    db_VendasNOTAFISCAL: TIntegerField;
    db_VendasMODELO: TStringField;
    db_VendasSERIE: TStringField;
    db_VendasTIPONF: TStringField;
    db_VendasEMISSAO: TSQLTimeStampField;
    db_VendasOPERACAO: TStringField;
    db_VendasCLIENTE: TIntegerField;
    db_VendasVENDEDOR: TIntegerField;
    db_VendasCFOP: TIntegerField;
    db_VendasTABELA: TIntegerField;
    db_VendasFORMAPAGTO: TIntegerField;
    db_VendasTRANSPORTADORA: TIntegerField;
    db_VendasNOTAFISCALORIGEM: TIntegerField;
    db_VendasDATA_ENTRADASAIDA: TSQLTimeStampField;
    db_VendasTIPOPAGAMENTO: TStringField;
    db_VendasIE_SUBSTITUTO_TRIBUTARIO: TStringField;
    db_VendasICMS_BASECALCULO: TBCDField;
    db_VendasICMS_VALOR: TBCDField;
    db_VendasICMS_BASECALCULO_SUBSTITUICAO: TBCDField;
    db_VendasICMS_BASECALCULO_SUBSTITUICAO_VALOR: TBCDField;
    db_VendasICMS_REDUCAO: TBCDField;
    db_VendasICMS_REDUCAO_VALOR: TBCDField;
    db_VendasIPI_BASECALCULO: TBCDField;
    db_VendasIPI_VALOR: TBCDField;
    db_VendasISS: TBCDField;
    db_VendasISS_BASECALCULO: TBCDField;
    db_VendasISS_VALOR: TBCDField;
    db_VendasSIMPLESNACIONAL_ALIQUOTA: TBCDField;
    db_VendasSIMPLESNACIONAL_VALOR: TBCDField;
    db_VendasVLR_FRETE: TBCDField;
    db_VendasVLR_SEGURO: TBCDField;
    db_VendasVLR_DESPESAS_ASSESSORIAS: TBCDField;
    db_VendasDESCONTO: TBCDField;
    db_VendasVLR_DESCONTO: TBCDField;
    db_VendasVLR_RECEBIDO: TBCDField;
    db_VendasVLR_CARTAO: TBCDField;
    db_VendasTROCO: TBCDField;
    db_VendasVLR_CAIXA: TBCDField;
    db_VendasFRETE: TStringField;
    db_VendasFRETE_QUANTIDADE: TIntegerField;
    db_VendasFRETE_ESPECIE: TStringField;
    db_VendasFRETE_MARCA: TStringField;
    db_VendasFRETE_NUMERO: TStringField;
    db_VendasFRETE_PBRUTO: TBCDField;
    db_VendasFRETE_PLIQUIDO: TBCDField;
    db_VendasOBS1: TStringField;
    db_VendasOBS2: TStringField;
    db_VendasTIPO_DESCONTO: TStringField;
    db_VendasDESCONTO_ACRESCIMO: TStringField;
    db_VendasPEDIDO: TIntegerField;
    db_VendasCONFERENCIA: TIntegerField;
    db_VendasCUPOM: TStringField;
    db_VendasIMPRESSO: TStringField;
    db_VendasQTDE_PRODUTOS: TIntegerField;
    db_VendasVALOR_PRODUTOS: TBCDField;
    db_VendasTOTAL_NF: TBCDField;
    db_VendasREGISTRODIARIO: TIntegerField;
    db_VendasDEVOLUCAOCREDITADA: TStringField;
    db_VendasCREDITOABATIMENTO: TBCDField;
    db_VendasSTATUS: TStringField;
    db_VendasItensCODIGO: TIntegerField;
    db_VendasItensEMPRESA: TIntegerField;
    db_VendasItensNOTAFISCAL: TIntegerField;
    db_VendasItensMODELO: TStringField;
    db_VendasItensSERIE: TStringField;
    db_VendasItensTIPONF: TStringField;
    db_VendasItensEMISSAO: TSQLTimeStampField;
    db_VendasItensOPERACAO: TStringField;
    db_VendasItensCLIENTE: TIntegerField;
    db_VendasItensVENDEDOR: TIntegerField;
    db_VendasItensCFOP: TIntegerField;
    db_VendasItensTABELA: TIntegerField;
    db_VendasItensFORMAPAGTO: TIntegerField;
    db_VendasItensTRANSPORTADORA: TIntegerField;
    db_VendasItensPRODUTO: TStringField;
    db_VendasItensSEQUENCIAITEM: TIntegerField;
    db_VendasItensNCM: TStringField;
    db_VendasItensDESCRICAO: TStringField;
    db_VendasItensUND: TStringField;
    db_VendasItensNCFOP: TIntegerField;
    db_VendasItensCLASSIFICACAO_FISCAL: TStringField;
    db_VendasItensSITUACAO_TRIBUTARIA: TStringField;
    db_VendasItensQUANTIDADE: TBCDField;
    db_VendasItensVLR_UNIT: TBCDField;
    db_VendasItensIPI: TBCDField;
    db_VendasItensVLR_IPI: TBCDField;
    db_VendasItensICMS: TBCDField;
    db_VendasItensVLR_ICMS: TBCDField;
    db_VendasItensISS: TBCDField;
    db_VendasItensISS_BASECALCULO: TBCDField;
    db_VendasItensISS_VALOR: TBCDField;
    db_VendasItensDESCONTO: TBCDField;
    db_VendasItensVLR_DESCONTO: TBCDField;
    db_VendasItensVLR_TOTAL: TBCDField;
    db_VendasItensALIQUOTA: TStringField;
    db_VendasItensTIPOQTDE: TStringField;
    db_VendasItensNATUREZA_DESCONTO: TStringField;
    db_VendasItensCASAS_DECIMAIS: TIntegerField;
    SPNFE_PROCESSAR: TFDStoredProc;
    db_VendasHORA: TTimeField;
      procedure BtnCancelarClick(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
      procedure db_VendasItensAfterScroll(DataSet: TDataSet);
      procedure PopUp_ExcluirItemClick(Sender: TObject);
      procedure EditCodigoChange(Sender: TObject);
      { *********************************************************** }
      { *********  FUNÇÕES ESPECIAIS ****************************** }
      // procedure GerarParcelas;
      // procedure CalculaItens;
      // procedure CalculaTotal;
      procedure AbrirTabelas;
      procedure FecharTabelas;

      procedure Calcular_Venda;
      procedure Calcular_VendaItens;
      procedure TrocoVenda;

      Procedure HabilitarGrid;
      Procedure DesabilitarGrid;

      { *********************************************************** }
      { *********************************************************** }

      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure db_vendasBeforePost(DataSet: TDataSet);
      procedure db_VendasItensBeforePost(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure db_VendasItensPRODUTOChange(Sender: TField);
      procedure db_VendasItensVLR_UNITChange(Sender: TField);
      procedure db_VendasItensDESCONTOChange(Sender: TField);
      procedure db_VendasItensAfterPost(DataSet: TDataSet);
      procedure db_vendasVLR_RECEBIDOChange(Sender: TField);
      procedure GroupBox2Exit(Sender: TObject);
      procedure GroupBox3Exit(Sender: TObject);
      procedure db_vendasCLIENTEChange(Sender: TField);
      procedure db_vendasNewRecord(DataSet: TDataSet);
      procedure DBGrid_ProdutosExit(Sender: TObject);
      procedure DBGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure EditDataEnter(Sender: TObject);
      procedure EditTabelaEnter(Sender: TObject);
      procedure EditVendedorEnter(Sender: TObject);
      procedure EditFpagtoEnter(Sender: TObject);
      procedure DBEdit5Enter(Sender: TObject);
      procedure DBEdit3Enter(Sender: TObject);
      procedure DBMemo1Enter(Sender: TObject);

      procedure ImportarPedido(nlPedido: Integer);
      procedure db_VendasItensAfterDelete(DataSet: TDataSet);
      procedure db_VendasItensQUANTIDADEChange(Sender: TField);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure DBGrid_ProdutosEnter(Sender: TObject);
      procedure db_vendasAfterOpen(DataSet: TDataSet);
      procedure db_vendasAfterPost(DataSet: TDataSet);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExtra1Click(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);

      procedure FecharVenda;
    procedure db_VendasBeforeOpen(DataSet: TDataSet);
    procedure db_VendasDESCONTOChange(Sender: TField);
    procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);

   private
      { Private declarations }
      Novo: Boolean;

   public
      { Public declarations }
   end;

var
   FrmVendaExpressa: TFrmVendaExpressa;

   wOperacao: String;
   nValorInteiro,
   nValorParcial,
   nValorDesconto,
   nTotalNFReal,
   nValorRealPedido   : Real;
   bGerarParcelaExterna   : Boolean;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global,  FBaseDados,
     FOpcaoVenda, FVendaCodigoBarra, FGeraParcelasCupomNaoFiscal, FRelEntregas,
  Classe.Usuarios;

{$R *.dfm}

procedure TFrmVendaExpressa.FormCreate(Sender: TObject);
begin

   wOperacao := '';

   FrmFrameBotoes1.DataSource := ds_vendas;

   // ajustar Captions dos botões
   FrmFrameBotoes1.SpbAdicionar.Caption := FrmFrameBotoes1.SpbAdicionar.Caption
     + #13 + #10 + '(F3)';

   FrmFrameBotoes1.SpbSalvar.Caption := FrmFrameBotoes1.SpbSalvar.Caption + #13
     + #10 + '(F4)';

   FrmFrameBotoes1.SpbImprimir.Caption := FrmFrameBotoes1.SpbImprimir.Caption +
     #13 + #10 + '(F5)';

   FrmFrameBotoes1.SpbProcurar.Caption := FrmFrameBotoes1.SpbProcurar.Caption +
     #13 + #10 + '(F6)';

   FrmFrameBotoes1.SpbCancelar.Caption := FrmFrameBotoes1.SpbCancelar.Caption +
     #13 + #10 + '(F7)';

   FrmFrameBotoes1.SpbExcluir.Caption := FrmFrameBotoes1.SpbExcluir.Caption +
     #13 + #10 + '(F11)';

   FrmFrameBotoes1.SpbSair.Caption := FrmFrameBotoes1.SpbSair.Caption + #13 +
     #10 + '(ESC)';


   FecharTabelas;

   ProgressBar1.Align := alClient;

end;

procedure TFrmVendaExpressa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_vendas.cancel;
   db_VendasItens.cancel;
   FecharTabelas;

   FreeAndNil(FrmVendaExpressa)

end;

procedure TFrmVendaExpressa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = vk_escape then
   Begin

      If (db_vendas.state in [dsEdit, dsInsert]) then
      Begin
         BtnCancelarClick(Sender);
         abort;
      End;

      If (db_VendasItens.state in [dsEdit, dsInsert]) then
      Begin
         BtnCancelarClick(Sender);
         abort;
      End;

      close;
   end;

   IF Key = VK_F3 then
   begin
      // GRPTop.SetFocus;
   end;

   IF Key = VK_F4 then
   begin
      // GRPItens.SetFocus;
   end;

   IF Key = VK_F5 then
   begin
      // GRPBottom.SetFocus;
   end;

end;

procedure TFrmVendaExpressa.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   if (FParametros.Venda.Cliente=0) then
   begin
     AvisoSistema('Antes de usar Venda Expressa, você precisa definir '+
                 'um CLIENTE e VENDEDOR padrão.'+
                 sLineBreak+
                 sLineBreak+
                 'Vá no Menu Arquivo->Parâmetros-> Clique na aba VENDAS e informe os campos CLIENTE e VENDEDOR (padrão).'
                 );
     exit;
   end;


   if (FParametros.Venda.Vendedor=0) then
   begin
     AvisoSistema('Antes de usar Venda Expressa, você precisa definir '+
                 'um VENDEDOR e CLIENTE padrão.'+
                 sLineBreak+
                 sLineBreak+
                 'Vá no Menu Arquivo->Parâmetros-> Clique na aba VENDAS e informe os campos VENDEDOR e CLIENTE (padrão).'
                 );
     exit;
   end;



   OpcaoVenda := 'S'; // Saida de Produtos

   Novo := False;







   FrmOpcaoVenda := TFrmOpcaoVenda.create(self);
   FrmOpcaoVenda.Showmodal;

   // Venda Normal
   If OpcaoVenda = 'N' then
   Begin
      AbrirTabelas;

      FrmFrameBotoes1.SpbAdicionarClick(Sender);

      db_vendas.FieldByName('CLIENTE').AsInteger      := FParametros.Venda.Cliente;
      db_vendas.FieldByName('VENDEDOR').AsInteger     := FParametros.Venda.Vendedor;

      db_vendas.Post;

      Novo := True;

      // abrir leitor de codigo de barras
      EditCliente.Setfocus;

   End;

   wTexto[0] := 'S';
   // Venda Baseado em Pedidos
   If OpcaoVenda = 'P' then
   Begin

     if not ConferenciaProcurar.Execute then
        exit;

     if AvisoQuestao('IMPORTAR PEDIDO ',
        'PEDIDO......: ' + ConferenciaProcurar.ResultFieldAsString('CODIGO')+  #13 + #10 +
        'DATA........: ' + ConferenciaProcurar.ResultFieldAsString('DATA') + #13 + #10 +
        'CLIENTE.....: ' + ConferenciaProcurar.ResultFieldAsString('CLIENTE_NOME') + #13 + #10 +
        'VALOR TOTAL.: ' + FormatFloat('###,##0.00',ConferenciaProcurar.ResultFieldAsFloat('VLR_TOTAL')) ) = False then
        exit;

      if ConferenciaProcurar.ResultFieldAsInteger('CODIGO') = 0 then
      Begin
         exit;
      End;


      Novo := True;

      ImportarPedido(ConferenciaProcurar.ResultFieldAsInteger('CODIGO'));
      EditCliente.Setfocus;

   End;


   // Opcaoes canceladas
   If OpcaoVenda = 'S' then
   Begin
      BtnCancelarClick(Sender);
      abort;
   End;

end;

procedure TFrmVendaExpressa.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmVendaExpressa.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmVendaExpressa.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin

   // FrmFrameBotoes1.SpbExcluirClick(Sender);

   If db_vendas.IsEmpty then
   Begin
      Informar('não há dados para excluir');
      exit;
   end;

   If ds_vendas.DataSet.FieldByName('STATUS').asString = 'S' then
   begin
      Informar('Primeiro você deve Estornar a Venda para depois Excluir');
      exit;
   end;

   if Pergunta('Deseja excluir esta Venda?') = False then
      exit;

   // -------------------------------------------------------------------------
   // ------    Reabir PEDIDO - Status Aberto                             -----
   // -------------------------------------------------------------------------

   // se nao houver numero de nota fiscal, então gere.
   inVenda := db_vendas.FieldByName('CODIGO').AsInteger;

   db_vendas.Close;
   db_vendas.ParamByName('CODIGO').AsInteger := inVenda;
   db_vendas.Open;


   SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
   SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger     := db_vendas.FieldByName('CODIGO').AsInteger;
   SPNFE_PROCESSAR.ParamByName('ACAO').AsString        := 'EXCLUIR';
   SPNFE_PROCESSAR.ExecProc;

   Informar('Venda excluída com sucesso!');
   db_vendas.Refresh;
   GRPItens.Enabled := False;

   FecharTabelas;

end;

procedure TFrmVendaExpressa.FrmFrameBotoes1SpbExtra1Click(Sender: TObject);
begin

   If db_vendas.IsEmpty then
   Begin
      Informar('não há dados para Estornar.' + #13 + #10 +
        ' Clique em "procurar" ');
      exit;
   end;

   If ds_vendas.DataSet.FieldByName('STATUS').asString = 'N' then
   begin
      Informar('Essa Venda ainda não foi concluída');
      exit;
   end;

   if Pergunta('Deseja estornar esta Venda?') = False then
      exit;

   If db_vendas.FieldByName('STATUS').asString = 'S' then
   Begin
      AcaoUserName[0] :=
        'Estornou Venda efetivada. Os itens da mesma foram devolvidos ao estoque. '
        + #13 + #10 + 'Fatura....: ' + db_vendas.FieldByName('NOTAFISCAL')
        .asString + #13 + #10 + 'Vendedor..: ' + db_vendas.FieldByName
        ('NomeVendedor').asString + #13 + #10 + 'Cliente...: ' +
        db_vendas.FieldByName('CLIENTE').asString + '-' +
        EditNomeCliente.text;
   end;


   // -------------------------------------------------------------------------
   // ------    Fechar venda via Stored Procedure do Servidor             -----
   // -------------------------------------------------------------------------

   SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
   SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger     := db_vendas.FieldByName('CODIGO').AsInteger;
   SPNFE_PROCESSAR.ParamByName('ACAO').AsString        := 'ABRIR';
   SPNFE_PROCESSAR.ExecProc;

   // ****************************************************************

   FUsuario.prcLogUsuario('venda expressa',AcaoUserName[0]);

   db_vendas.close;
   db_vendas.open;
   FrmFrameBotoes1.SpbSalvar.Enabled := True;
   Informar('Venda Estornada com sucesso!');

end;

procedure TFrmVendaExpressa.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin
   frxImprimirVendaPDV.ShowReport;
end;

procedure TFrmVendaExpressa.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbProcurarNFe.Execute then
   begin
      FecharTabelas;
      db_vendas.ParamByName('CODIGO').Asinteger := dbProcurarNFe.ResultFieldAsInteger('CODIGO');
      AbrirTabelas;
      FrmFrameBotoes1.SpbSalvar.Enabled := True;
   end;
end;

procedure TFrmVendaExpressa.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);
   FecharTabelas;

end;

procedure TFrmVendaExpressa.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   If db_vendas.IsEmpty then
   Begin
      Informar('não há dados para gerar faturas');
      exit;
   end;

   If (db_vendas.state in [dsEdit, dsInsert]) then
   Begin
      db_vendas.Post;
   End;

   If db_vendas.FieldByName('TOTAL_NF').AsFloat <= 0 then
   begin
      Informar('Não há saldo disponivel para gerar faturas');
      exit;
   end;

   If ds_vendas.DataSet.FieldByName('STATUS').asString = 'S' then
   begin
      Informar('Primeiro você deve Estornar a Venda para depois gerar Faturas');
      exit;
   end;

   wFloat[0] := 0;

   nTotalNFReal  :=db_vendas.FieldByName('TOTAL_NF').AsFloat;

   FrmGeraParcelasCupomNaoFiscal := TFrmGeraParcelasCupomNaoFiscal.create(self);
   FrmGeraParcelasCupomNaoFiscal.Showmodal;

end;

procedure TFrmVendaExpressa.AbrirTabelas;
begin

   Novo := False;

   db_vendas.open;
   db_VendasItens.open;

end;

procedure TFrmVendaExpressa.FecharTabelas;
begin

   Novo := False;
   OpcaoVenda := '';
   db_vendas.close;
   db_VendasItens.close;
   db_view_estoque.close;

end;

procedure TFrmVendaExpressa.BitBtn1Click(Sender: TObject);
begin

   FrmRelEntregas := TFrmRelEntregas.create(self);
   FrmRelEntregas.Showmodal;

end;

procedure TFrmVendaExpressa.BtnCancelarClick(Sender: TObject);
begin
   db_vendas.cancel;
   db_VendasItens.cancel;
   FecharTabelas;

end;

procedure TFrmVendaExpressa.FecharVenda;
begin

   // -------------------------------------------------------------------------
   // ------        perguntar                                             -----
   // -------------------------------------------------------------------------
   If db_vendas.FieldByName('STATUS').asString = 'S' then
   Begin

      Informar('Venda já foi concluida');
      exit;
   end;

   If db_vendas.FieldByName('STATUS').asString <> 'N' then
      exit;

   If Pergunta('Deseja concluir esta venda?') = False then
      exit;


   If db_vendas.FieldByName('STATUS').AsString='S' then
      exit;

   if pergunta('Finalizar Nota Fiscal e baixar estoque?')=false then
   begin
      avisosistema('Você cancelou a operação. Para processeguir é necessário finalizar a nota fiscal.');
      abort;
   end;

   // se nao houver numero de nota fiscal, então gere.
   inVenda := db_vendas.FieldByName('CODIGO').AsInteger;
   db_vendas.Close;
   db_vendas.ParamByName('CODIGO').AsInteger := inVenda;
   db_vendas.Open;


   SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
   SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger     := db_vendas.FieldByName('CODIGO').AsInteger;
   SPNFE_PROCESSAR.ParamByName('ACAO').AsString        := 'FECHAR';
   SPNFE_PROCESSAR.ExecProc;


   db_vendas.Close;
   db_vendas.ParamByName('CODIGO').AsInteger := inVenda;
   db_vendas.Open;

   Informar('Venda concluída com sucesso!');

   FrmVendaExpressa.FrmFrameBotoes1.SpbSalvarClick(self);

   db_vendas.close;
   db_VendasItens.close;

   db_vendas.open;
   db_VendasItens.open;

   FrmFrameBotoes1.SpbCancelar.Enabled := True;

end;

procedure TFrmVendaExpressa.ImportarPedido(nlPedido: Integer);
Var
   iconta: Integer;

begin

   AbrirTabelas;

   db_PedidosConferencia.Close;
   db_PedidosConferenciaItens.Close;
   db_PedidosConferencia.ParamByName('CODIGO').AsInteger := nlPedido;
   db_PedidosConferencia.Open;
   db_PedidosConferenciaItens.Open;
   db_PedidosConferenciaItens.First;

   inCliente :=db_PedidosConferencia.FieldByName('CLIENTE').AsInteger;
   if ChecarCreditoCliente(inCliente) Then
   begin
      AvisoSistema('Venda não autorizada!'+sLineBreak+
                   'O cliente que você selecionou está com crédito bloqueado');
      db_vendas.Cancel;
      db_VendasItens.Cancel;
      Abort;
   end;

   // -------------------------------------------------------------------
   //
   // -------------------------------------------------------------------

   FrmFrameBotoes1.SpbAdicionarClick(self);



   db_vendas.FieldByName('PEDIDO').AsInteger :=  db_PedidosConferencia.FieldByName('PEDIDO').AsInteger;
   db_vendas.FieldByName('CONFERENCIA').AsInteger :=  db_PedidosConferencia.FieldByName('CODIGO').AsInteger;
   db_vendas.FieldByName('CLIENTE').AsInteger :=  db_PedidosConferencia.FieldByName('CLIENTE').AsInteger;

   if db_vendas.FieldByName('CFOP').AsInteger<=0 then
   begin
      db_vendas.FieldByName('CFOP').AsInteger := 5101;
   end;

   db_vendas.FieldByName('VENDEDOR').AsInteger :=  db_PedidosConferencia.FieldByName('VENDEDOR').AsInteger;
   db_vendas.FieldByName('FORMAPAGTO').AsInteger :=  db_PedidosConferencia.FieldByName('FORMA_PAGTO').AsInteger;
   db_vendas.FieldByName('TRANSPORTADORA').AsInteger :=  db_PedidosConferencia.FieldByName('TRANSPORTADORA').AsInteger;


   db_vendas.FieldByName('FRETE_QUANTIDADE').AsInteger := db_PedidosConferencia.FieldByName('FRETE_VOLUMES').AsInteger;
   db_vendas.FieldByName('FRETE_ESPECIE').AsString := db_PedidosConferencia.FieldByName('FRETE_ESPECIE').AsString;
   db_vendas.FieldByName('FRETE_MARCA').AsString := db_PedidosConferencia.FieldByName('FRETE_MARCA').AsString;
   db_vendas.FieldByName('OBS1').AsString := db_PedidosConferencia.FieldByName('OBSERVACAO').AsString;
   //db_vendas.FieldByName('DESCONTO').AsFloat := db_PedidosConferencia.FieldByName('DESCONTO').AsFloat;

   nTotalNFReal    :=db_PedidosConferencia.FieldByName('VLR_TOTAL').AsFloat;

   if db_vendas.FieldByName('OBS1').AsString='' then
      db_vendas.FieldByName('OBS1').AsString :='.';

   If (db_vendas.state in [dsEdit, dsInsert]) then
   Begin
      db_vendas.Post;
   End;
   iAchar[0] := db_vendas.FieldByName('CODIGO').AsInteger;

   db_vendas.Close;
   db_VendasItens.Close;
   db_vendas.ParamByName('CODIGO').AsInteger := iAchar[0];

   db_vendas.Open;
   db_VendasItens.Open;

   While not db_PedidosConferenciaItens.eof do
   begin

      nValorInteiro  :=0;
      nValorParcial  :=0;
      nValorDesconto :=0;
      db_VendasItens.Append;
      db_VendasItens.FieldByName('PRODUTO').AsString :=           db_PedidosConferenciaItens.FieldByName('REFERENCIA').AsString;
      db_VendasItens.FieldByName('DESCRICAO').AsString :=         db_PedidosConferenciaItens.FieldByName('DESCRICAO').AsString;


      db_VendasItens.FieldByName('QUANTIDADE').AsFloat :=         db_PedidosConferenciaItens.FieldByName('QUANTIDADE').AsFloat;
      nValorInteiro                                              :=         db_PedidosConferenciaItens.FieldByName('VALOR_UNIT').AsFloat;

      If db_PedidosConferencia.FieldByName('ENTREGAPARCIAL').AsString='S' Then
      begin
         nValorParcial := fncGeraPercentual(nValorInteiro, db_PedidosConferencia.FieldByName('VALORPARCIAL').AsFloat);
         db_VendasItens.FieldByName('VLR_UNIT').AsFloat :=        nValorParcial;
      end
      else
      begin
         db_VendasItens.FieldByName('VLR_UNIT').AsFloat :=        nValorInteiro;
      end;

      db_VendasItens.Post;

      inc(iconta);

      db_PedidosConferenciaItens.next;
      Update;
   end;

   //ExecutarProcedures;

   db_vendas.Edit;

   {***********************************************************************
    ** De acordo com o Ministério da Fazenda - 2012:                    ***
    **    1 – Simples Nacional                                          ***
    **    2 – Simples Nacional excesso de sublimite da receita bruta    ***
    **    3 – Regime Normal                                             ***
    ***********************************************************************
    **  se a empresa FOR optante do simples, pegar aliquota do SIMPLES   **
    ***********************************************************************}

   if  (FParametros.Empresa.RegimeTributario=1) Then
   begin
      db_vendas.FieldByName('OBS1').AsString := UpperCase( fnCFOP_DETALHE(db_vendas.FieldByName('CFOP').AsInteger) );
      db_vendas.FieldByName('OBS1').AsString := UpperCase( SubstituirCampoTexto(db_vendas.FieldByName('OBS1').AsString,'%VSIMPLES%', FormatFloat('###,##0.00',db_vendas.FieldByName('SIMPLESNACIONAL_VALOR').AsFloat) ) );
   end;

   DimensionarGrid(dbGrid_Produtos,self);


end;

procedure TFrmVendaExpressa.Calcular_Venda;
Begin

   If not(db_vendas.state in [dsEdit, dsInsert]) then
   begin
      db_VendasItens.Refresh;
      db_vendas.Refresh;
   end;

   db_somar.close;

   wFloat[0] := 0; // VALOR TOTAL
   wFloat[1] := 0; // PRODUTOS
   wFloat[2] := 0; // VALOR DESCONTO

   db_somar.open;
   wFloat[0] := db_somar.FieldByName('Valor_Total').AsFloat;
   wFloat[1] := db_somar.FieldByName('QTDE_Produtos').AsFloat;

   // calcula desconto
   wFloat[2] := fncGeraPercentual(wFloat[0], db_vendas.FieldByName('DESCONTO').AsFloat);

   wFloat[0] := wFloat[0] - wFloat[2];

   {
     if not (db_vendas.State in [dsedit,dsinsert]) then
     db_vendas.Edit;
   }

   If not(db_vendas.state in [dsEdit, dsInsert]) then
      db_vendas.Edit;

   db_vendas.FieldByName('TOTAL_NF').AsFloat := wFloat[0];
   db_vendas.FieldByName('QTDE_PRODUTOS').AsFloat := wFloat[1];
   db_vendas.FieldByName('VLR_DESCONTO').AsFloat := wFloat[2];

   If db_vendas.FieldByName('TOTAL_NF').AsFloat <= 0 then
   begin
      db_vendas.FieldByName('TROCO').AsFloat := 0;
   end;

   db_somar.close;

End;

procedure TFrmVendaExpressa.Calcular_VendaItens;
Begin

   Quantidade := 0;
   Vlr_Unit := 0;
   SubTotal := 0;
   wFloat[0] := 0;
   wFloat[1] := 0;

   Quantidade := db_VendasItens.FieldByName('QUANTIDADE').AsFloat;
   Vlr_Unit := db_VendasItens.FieldByName('VLR_UNIT').AsFloat;
   wFloat[0] := db_VendasItens.FieldByName('DESCONTO').AsFloat;

   // checar no parametros do sistema se o mesm permite desconto acima da
   // margem de lucro do produto.

   // quantidade X valor Unitário=subtotal
   SubTotal := (Quantidade * Vlr_Unit);
   wFloat[1] := fncGeraPercentual(SubTotal, wFloat[0]);
   SubTotal := (SubTotal - wFloat[1]);

   wTexto[0] := FormatFloat('##0.00', SubTotal);
   wTexto[1] := FormatFloat('##0.00', wFloat[1]);
   SubTotal := StrToFloat(wTexto[0]);
   wFloat[1] := StrToFloat(wTexto[1]);

   db_VendasItens.FieldByName('VLR_DESCONTO').AsFloat := wFloat[1];
   db_VendasItens.FieldByName('VLR_TOTAL').AsFloat := SubTotal;

   Quantidade := 0;
   Vlr_Unit := 0;
   SubTotal := 0;
   wFloat[0] := 0;
   wFloat[1] := 0;

End;

procedure TFrmVendaExpressa.TrocoVenda;
begin

   Calcular_Venda;

   if db_vendas.FieldByName('TOTAL_NF').AsFloat <= 0 then
   begin
      db_vendas.FieldByName('TROCO').AsFloat := 0;

      exit;
   end;

   // valor recebido - Total da Nota
   db_vendas.FieldByName('TROCO').AsFloat :=
     (db_vendas.FieldByName('VLR_RECEBIDO').AsFloat - db_vendas.FieldByName
     ('TOTAL_NF').AsFloat);

   // se valor for negativo, mostrar como 0 (zero)
   If db_vendas.FieldByName('TROCO').AsFloat < 0 then
      db_vendas.FieldByName('TROCO').AsFloat := 0;

   // valor recebido - Total da Nota
   db_vendas.FieldByName('VLR_CAIXA').AsFloat :=
     (db_vendas.FieldByName('VLR_RECEBIDO').AsFloat - db_vendas.FieldByName
     ('TROCO').AsFloat);

   If db_vendas.FieldByName('VLR_CAIXA').AsFloat = 0 then
      db_vendas.FieldByName('VLR_RECEBIDO').AsFloat;

   // se valor for negativo, mostrar como 0 (zero)
   If db_vendas.FieldByName('VLR_CAIXA').AsFloat < 0 then
      db_vendas.FieldByName('VLR_CAIXA').AsFloat := 0;

end;

procedure TFrmVendaExpressa.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmVendaExpressa.db_vendasAfterOpen(DataSet: TDataSet);
begin
   FrmFrameBotoes1.SpbCancelar.Enabled := True;
end;

procedure TFrmVendaExpressa.db_vendasAfterPost(DataSet: TDataSet);
begin
   FrmFrameBotoes1.SpbCancelar.Enabled := True;
end;

procedure TFrmVendaExpressa.db_VendasBeforeOpen(DataSet: TDataSet);
begin
   db_Vendas.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmVendaExpressa.db_vendasBeforePost(DataSet: TDataSet);
begin

   if db_vendas.FieldByName('NOTAFISCAL').Asinteger = 0 then
   begin
      db_vendas.FieldByName('NOTAFISCAL').Asinteger :=
        db_vendas.FieldByName('CODIGO').Asinteger;
   end;

   If db_vendas.FieldByName('VLR_CAIXA').AsFloat = 0 then
      db_vendas.FieldByName('VLR_RECEBIDO').AsFloat;

end;

procedure TFrmVendaExpressa.db_VendasItensBeforePost(DataSet: TDataSet);
begin

   db_VendasItens.FieldByName('CODIGO').AsInteger :=
     db_Vendas.FieldByName('CODIGO').AsInteger;

   db_VendasItens.FieldByName('EMPRESA').AsInteger :=
     db_Vendas.FieldByName('EMPRESA').AsInteger;

   db_VendasItens.FieldByName('NOTAFISCAL').AsInteger :=
     db_Vendas.FieldByName('NOTAFISCAL').AsInteger;

   db_VendasItens.FieldByName('MODELO').AsString :=
     db_Vendas.FieldByName('MODELO').AsString;

   db_VendasItens.FieldByName('SERIE').AsString :=
     db_Vendas.FieldByName('SERIE').AsString;

   db_VendasItens.FieldByName('TIPONF').AsString :=
     db_Vendas.FieldByName('TIPONF').AsString;

   db_VendasItens.FieldByName('EMISSAO').AsDateTime :=
     db_Vendas.FieldByName('EMISSAO').AsDateTime;

   db_VendasItens.FieldByName('OPERACAO').AsString :=
     db_Vendas.FieldByName('OPERACAO').AsString;

   db_VendasItens.FieldByName('CLIENTE').AsInteger :=
     db_Vendas.FieldByName('CLIENTE').AsInteger;

   db_VendasItens.FieldByName('VENDEDOR').AsInteger :=
     db_Vendas.FieldByName('VENDEDOR').AsInteger;

   db_VendasItens.FieldByName('CFOP').AsInteger := db_Vendas.FieldByName('CFOP') .AsInteger;

   if db_VendasItens.FieldByName('NCFOP').AsInteger<0 then
     db_VendasItens.FieldByName('NCFOP').AsInteger := db_Vendas.FieldByName('CFOP') .AsInteger;

   db_VendasItens.FieldByName('TABELA').AsInteger :=
     db_Vendas.FieldByName('TABELA').AsInteger;

   db_VendasItens.FieldByName('FORMAPAGTO').AsInteger :=
     db_Vendas.FieldByName('FORMAPAGTO').AsInteger;

   db_VendasItens.FieldByName('TRANSPORTADORA').AsInteger :=
     db_Vendas.FieldByName('TRANSPORTADORA').AsInteger;

   if db_VendasItens.FieldByName('UND').AsString='' then
      db_VendasItens.FieldByName('UND').AsString:='PC' ;

end;

procedure TFrmVendaExpressa.db_VendasItensPRODUTOChange(Sender: TField);
begin

   if empty(db_VendasItens.FieldByName('PRODUTO').asString) then
      exit;

   if db_vendas.FieldByName('TABELA').Asinteger = 0 then
   begin

      db_view_estoque.close;
      db_view_estoque.ParamByName('REFERENCIA').asString :=        db_VendasItens.FieldByName('PRODUTO').asString;
      db_view_estoque.open;
      db_view_estoque.first;


      // Passou, o produto existe no estoque. Continua...
      db_view_estoque.first;
      wTexto[0] := db_view_estoque.FieldByName('DESCRICAO').asString;
      wTexto[1] := db_view_estoque.FieldByName('UND').asString;
      wFloat[0] := db_view_estoque.FieldByName('PRC_VENDA').AsFloat;
   end
   else
   begin
      {
      db_TabelaPreco.close;
      db_TabelaPreco.ParamByName('TABELA').Asinteger :=
        db_vendas.FieldByName('TABELA').Asinteger;
      db_TabelaPreco.ParamByName('Produto').asString :=
        db_VendasItens.FieldByName('PRODUTO').asString;;
      db_TabelaPreco.open;

      db_TabelaPreco.first;
      if db_TabelaPreco.RecordCount < 1 then
      begin
         Erro('Produto ' + db_VendasItens.FieldByName('PRODUTO').asString +
           ' não cadastrato na Tabela de Preco ');
         abort;
      end;

      // Passou, o produto existe no estoque. Continua...
      db_TabelaPreco.first;
      wTexto[0] := db_TabelaPreco.FieldByName('DESCRICAO').asString;
      wTexto[1] := db_TabelaPreco.FieldByName('UND').asString;
      wFloat[0] := db_TabelaPreco.FieldByName('VALOR').AsFloat;
      }

   end;
   db_view_estoque.close;

   db_VendasItens.FieldByName('DESCRICAO').asString := wTexto[0];
   db_VendasItens.FieldByName('UND').asString := wTexto[1];
   db_VendasItens.FieldByName('VLR_UNIT').AsFloat := wFloat[0];

end;

procedure TFrmVendaExpressa.db_VendasItensQUANTIDADEChange(Sender: TField);
begin

   db_view_estoque.close;
   db_view_estoque.ParamByName('REFERENCIA').asString :=
     db_VendasItens.FieldByName('PRODUTO').asString;
   db_view_estoque.open;

   if (FParametros.Produto.EstoqueNegativo= 'S') Then
   Begin

      // checar quantidade
      if db_VendasItens.FieldByName('QUANTIDADE').AsFloat >
        db_view_estoque.FieldByName('QTD_ESTOQUE').AsFloat then
      begin
         AvisoSistema('Quantidade insuficiente' + #13 + #10 + 'Produto......: '
           + db_VendasItens.FieldByName('PRODUTO').asString + #13 + #10 +
           'Descrição....: ' + db_VendasItens.FieldByName('DESCRICAO').asString
           + #13 + #10 + #13 + #10 + 'Solicitados..: ' + FormatFloat('###,##0',
           db_VendasItens.FieldByName('QUANTIDADE').AsFloat) + ' mas há apenas '
           + FormatFloat('###,##0', db_view_estoque.FieldByName('QTD_ESTOQUE')
           .AsFloat) + ' no estoque' + #13 + #10 +
           'O PRODUTO FICARÁ COM QUANTIDADE ZERADA NA VENDA');
         // db_VendasItens.FieldByName('QUANTIDADE').AsFloat :=0;
         db_view_estoque.close;
      end;

   End;

   Calcular_VendaItens;

end;

procedure TFrmVendaExpressa.db_VendasItensVLR_UNITChange(Sender: TField);
begin
   Calcular_VendaItens;
end;

procedure TFrmVendaExpressa.db_VendasItensDESCONTOChange(Sender: TField);
begin
   Calcular_VendaItens;

end;

procedure TFrmVendaExpressa.db_VendasItensAfterPost(DataSet: TDataSet);
begin

   Calcular_Venda;
   db_vendas.Post;


end;

procedure TFrmVendaExpressa.db_VendasItensAfterScroll(DataSet: TDataSet);
begin

   PopUp_ExcluirItem.visible := False;
   if db_VendasItens.IsEmpty then
   begin
      PopUp_ExcluirItem.visible := False;
   end
   else
   begin
      If db_vendas.FieldByName('STATUS').asString = 'N' then
      begin
         PopUp_ExcluirItem.visible := True;
      end;
   end;

end;

procedure TFrmVendaExpressa.db_vendasVLR_RECEBIDOChange(Sender: TField);
begin
   TrocoVenda;
end;

procedure TFrmVendaExpressa.GroupBox2Exit(Sender: TObject);
begin
   If (db_vendas.state in [dsEdit, dsInsert]) then
   Begin
      db_vendas.Post;
   End;

end;

procedure TFrmVendaExpressa.GroupBox3Exit(Sender: TObject);
begin
   If (db_vendas.state in [dsEdit, dsInsert]) then
   Begin
      db_vendas.Post;
   End;

end;

procedure TFrmVendaExpressa.db_vendasCLIENTEChange(Sender: TField);

begin

   If db_vendas.FieldByName('RestricaoCliente').asString = 'S' then
   begin
      BeepCritica;
      AvisoSistema('Cliente com crédito bloqueado' + #13 + #10 + 'Código...: ' +
        db_vendas.FieldByName('CLIENTE').asString + #13 + #10 + 'Nome.....: ' +
        EditNomeCliente.text);

      abort;

   end;

   db_vendas.FieldByName('VENDEDOR').asString :=
     db_vendas.FieldByName('VendedorCliente').asString;

end;

procedure TFrmVendaExpressa.db_vendasNewRecord(DataSet: TDataSet);
begin

   db_Vendas.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_Vendas.FieldByName('FRETE').AsInteger := FParametros.Frete.Padrao;
   db_Vendas.FieldByName('FRETE_ESPECIE').AsString := 'CAIXA';
   db_Vendas.FieldByName('EMISSAO').AsDateTime := Date;
   db_Vendas.FieldByName('DATA_ENTRADASAIDA').AsDateTime := Date;
   db_Vendas.FieldByName('HORA').AsDateTime := Time;
   db_Vendas.FieldByName('NOTAFISCAL').AsInteger := 0;
   db_Vendas.FieldByName('VENDEDOR').AsInteger := 0;
   db_Vendas.FieldByName('CLIENTE').AsInteger := 0;
   db_Vendas.FieldByName('OPERACAO').AsString := 'S';


   db_Vendas.FieldByName('MODELO').AsString  :=  '1';
   db_Vendas.FieldByName('SERIE').AsString   :=  '1';
   db_Vendas.FieldByName('TIPONF').AsString  := 'PEDIDO';

   db_Vendas.FieldByName('CFOP').AsInteger := 0;
   db_Vendas.FieldByName('TABELA').AsInteger := 0;
   db_Vendas.FieldByName('FORMAPAGTO').AsInteger := 0;
   db_Vendas.FieldByName('TRANSPORTADORA').AsInteger := 0;
   db_Vendas.FieldByName('CUPOM').AsString := 'N';
   db_Vendas.FieldByName('STATUS').AsString := 'N';
   db_Vendas.FieldByName('OBS1').AsString := '';

end;

Procedure TFrmVendaExpressa.HabilitarGrid;
begin
   DBGrid_Produtos.color := clWindow;
   DBGrid_Produtos.ReadOnly := False;
   DBGrid_Produtos.Enabled := True;

end;

Procedure TFrmVendaExpressa.DesabilitarGrid;
begin
   DBGrid_Produtos.color := clBtnFace;
   DBGrid_Produtos.ReadOnly := True;
   DBGrid_Produtos.Enabled := False;

end;

procedure TFrmVendaExpressa.DBGrid_ProdutosEnter(Sender: TObject);
begin

   PainelDicas.Caption := 'Pressione F9 para incluir produtos' +
     ' / Shift+Delete excluir item da grade';

   If (db_vendas.state in [dsEdit, dsInsert]) then
   Begin
      db_vendas.Post;
   End;

   iAchar[0] := db_vendas.FieldByName('CODIGO').Asinteger;

   db_vendas.close;
   db_VendasItens.close;
   db_vendas.ParamByName('CODIGO').Asinteger := iAchar[0];

   db_vendas.open;
   db_VendasItens.open;

   If (db_vendas.FieldByName('STATUS').asString <> 'S') then
   Begin
      FrmVendaCodigoBarra := TFrmVendaCodigoBarra.create(self);
      FrmVendaCodigoBarra.Showmodal;
   End;

end;

procedure TFrmVendaExpressa.DBGrid_ProdutosExit(Sender: TObject);
begin

   If (db_vendas.state in [dsEdit, dsInsert]) then
   Begin
      db_vendas.Post;
   End;

   If (db_VendasItens.state in [dsEdit, dsInsert]) then
   Begin
      db_VendasItens.Post;
   End;

end;

procedure TFrmVendaExpressa.DBGrid_ProdutosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   If Key = VK_F9 then
   Begin
      If (db_vendas.FieldByName('STATUS').asString = 'S') then
      begin
         Informar('Venda já foi concluída');
         exit;
      end;

      FrmVendaCodigoBarra := TFrmVendaCodigoBarra.create(self);
      FrmVendaCodigoBarra.Showmodal;
      DBGrid_Produtos.Setfocus;

   End;

end;

procedure TFrmVendaExpressa.EditCodigoChange(Sender: TObject);
begin
   GRPItens.Enabled := True;
end;

procedure TFrmVendaExpressa.EditDataEnter(Sender: TObject);
begin
   PainelDicas.Caption := 'Informe a data da venda';
end;

procedure TFrmVendaExpressa.EditTabelaEnter(Sender: TObject);
begin
   PainelDicas.Caption :=
     'Digite o código da tabela de preço ou tecle F8 para pesquisar';
end;

procedure TFrmVendaExpressa.EditVendedorEnter(Sender: TObject);
begin
   PainelDicas.Caption :=
     'Digite o código do Vendedor ou tecle F8 para pesquisar';
end;

procedure TFrmVendaExpressa.EditFpagtoEnter(Sender: TObject);
begin
   PainelDicas.Caption :=
     'Código da Forma de Pagamento ou tecle F8 para pesquisar. Logo após, pressione CTRL+F para gerar parcelas';

end;

procedure TFrmVendaExpressa.DBEdit5Enter(Sender: TObject);
begin
   PainelDicas.Caption := 'Informe o Desconto sobre o total da venda';
end;

procedure TFrmVendaExpressa.DBEdit3Enter(Sender: TObject);
begin
   PainelDicas.Caption := 'Informe o Valor Recebido em dinheiro';
end;

procedure TFrmVendaExpressa.DBMemo1Enter(Sender: TObject);
begin
   PainelDicas.Caption :=
     'Caso seja necessário, informe alguma Observação importante sobre a venda.';
end;

procedure TFrmVendaExpressa.db_VendasDESCONTOChange(Sender: TField);
begin
   TrocoVenda;

end;

procedure TFrmVendaExpressa.db_VendasItensAfterDelete(DataSet: TDataSet);
begin
   // Calcular_VendaItens;
   Calcular_Venda;
end;

procedure TFrmVendaExpressa.PopUp_ExcluirItemClick(Sender: TObject);
begin

   If (db_vendas.FieldByName('STATUS').asString = 'S') then
   begin
      Informar('Venda já foi concluída');
      exit;
   end;

   if db_VendasItens.IsEmpty then
   begin
      BeepCritica;
      Aviso('Não há itens para excluir');
      exit;
   end;

   if Pergunta('Excluir item selecionado?') = False then
      exit;

   db_VendasItens.delete;
   db_VendasItens.close;
   db_VendasItens.open;

end;

end.


