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

unit FNotaFiscal;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, FFrameBotoes, ISFEdit, ISFEditbtn, ISFdbEditbtn,
   IDBEdit, uEstSearchDialogZeos, DB, DBCtrls, StdCtrls, Mask, ExtCtrls, Grids,
   DBGrids,     
    Buttons, ACBrNFeDANFEClass,
   ACBrNFe, pcnConversao,  
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmNotaFiscal = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
      Panel1: TPanel;
      GroupBox3: TGroupBox;
      Panel2: TPanel;
      ScrollBoxNF: TScrollBox;
      BoxProdutos: TGroupBox;
      dbGrid_Produtos: TDBGrid;
      BoxCalculo: TGroupBox;
      Label21: TLabel;
      Label17: TLabel;
      Label16: TLabel;
      Label15: TLabel;
      Label20: TLabel;
      Label19: TLabel;
      Label18: TLabel;
      Label13: TLabel;
      Label29: TLabel;
      Label39: TLabel;
      EFrete: TDBEdit;
      ebase: TDBEdit;
      DbEditICMSSubst: TDBEdit;
      eseguro: TDBEdit;
      eoutras: TDBEdit;
      eprod: TDBEdit;
      enota: TDBEdit;
      DBEdit3: TDBEdit;
      DBEdit4: TDBEdit;
      DBEdit5: TDBEdit;
      BoxTransportadora: TGroupBox;
      Label30: TLabel;
      Label31: TLabel;
      Label32: TLabel;
      Label33: TLabel;
      Label34: TLabel;
      Label35: TLabel;
      Eqtde: TDBEdit;
      Eliquido: TDBEdit;
      Eespecie: TDBEdit;
      Emarca: TDBEdit;
      Enumero: TDBEdit;
      Ebruto: TDBEdit;
      DBRadioGroup1: TDBRadioGroup;
      BoxObs_Fisco: TGroupBox;
      DBMemo_Fisco: TDBMemo;
      DBMemo_OBS: TDBMemo;
      GroupBox2: TGroupBox;
      Label4: TLabel;
      Label5: TLabel;
      EditNomeCliente: TEdit;
      EditNomeVendedor: TEdit;
      EditCliente: TIDBEditDialog;
      EstSearchDialogZeos2: TIDBEditDialog;
      EditNomeFormaPagto: TEdit;
      EditPagamento: TIDBEditDialog;
      DBEdit6: TDBEdit;
      DBEdit7: TDBEdit;
      GroupBox1: TGroupBox;
      Label40: TLabel;
      DbEditIESubst: TDBEdit;
      EditCFOP: TIDBEditDialog;
      NomeCFOP: TEdit;
      DBEdit1: TDBEdit;
      Label1: TLabel;
      Panel3: TPanel;
      DbTipoOper: TDBRadioGroup;
      Label2: TLabel;
      DBEdit2: TDBEdit;
      DBEdit8: TDBEdit;
      Label3: TLabel;
      DBEdit9: TDBEdit;
      Label6: TLabel;
      DBEdit10: TDBEdit;
      Label7: TLabel;
      DBEdit11: TDBEdit;
      Label8: TLabel;
      DBEdit12: TDBEdit;
      Label9: TLabel;
      BtnFaturas: TButton;
      Label10: TLabel;
      DBEdit13: TDBEdit;
    ds_PedidosConferencia: TDataSource;
    db_PedidosConferencia: TFDQuery;
    db_PedidosConferenciaItens: TFDQuery;
    IDBEditDialog1: TIDBEditDialog;
    Edit1: TEdit;
    PedidoProcurar: TIDBEditDialog;
    ConferenciaProcurar: TIDBEditDialog;
    dbProcurarProduto: TIDBEditDialog;
    dbProcurarNFe: TIDBEditDialog;
    EditNomeTrasportadora: TEdit;
    EditTransportadora: TIDBEditDialog;
    DBEdit14: TDBEdit;
    Label11: TLabel;
    dbEditPesquisarNCM: TIDBEditDialog;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure dbGrid_ProdutosEditButtonClick(Sender: TObject);
      procedure dbGrid_ProdutosEnter(Sender: TObject);
      procedure dbGrid_ProdutosExit(Sender: TObject);
      procedure BtnFaturasClick(Sender: TObject);
    procedure dbGrid_ProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure dbGrid_ProdutosColEnter(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FrmFrameBotoes1SpbExtraClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);

   private
      { Private declarations }
      procedure ImportarPedido(nlPedido: Integer);
      procedure ExecutarProcedures;
    procedure FinalizarNotaFiscal;
    procedure prcProcurarProduto;

   public
      { Public declarations }
      procedure FecharTabelas;
      procedure AbrirTabelas;
   end;

var
   FrmNotaFiscal : TFrmNotaFiscal;
   nValorInteiro,
   nValorParcial,
   nValorDesconto,
   nTotalNFReal,
   nValorRealPedido   : Real;
   bGerarParcelaExterna   : Boolean;



implementation

uses FPrincipal, SQLServer, Biblioteca, Global,  FBaseDados,
  FOpcaoVenda, FNotaFiscalProcessamento, FGeraParcelasVenda, Classe.Usuarios;

{$R *.dfm}


procedure TFrmNotaFiscal.prcProcurarProduto;
begin

   dbProcurarProduto.SearchQuery.Clear;
   dbProcurarProduto.SearchQuery.Add('SELECT *  FROM VIEW_REFERENCIAS');
   dbProcurarProduto.SearchQuery.Add('WHERE');
   dbProcurarProduto.SearchQuery.Add('EMPRESA='+IntToStr(FSistema.Empresa));
   dbProcurarProduto.SearchQuery.Add('AND');
   dbProcurarProduto.SearchQuery.Add('%WHERE%');
   dbProcurarProduto.SearchQuery.Add('');

   if dbProcurarProduto.Execute then
   begin
      If not(BaseDados.db_vendasItens.state in [dsEdit]) then
         BaseDados.db_vendasItens.Edit;
      BaseDados.db_vendasItens.FieldByName('PRODUTO').AsString := dbProcurarProduto.ResultFieldAsString('REFERENCIA');
   end;
end;

procedure TFrmNotaFiscal.FormCreate(Sender: TObject);
begin

   Top := 10;
   Left := 10;
   ScrollBoxNF.VertScrollBar.Position := 0;

   FrmPrincipal.MnuVendasNFe_Emitir.Enabled := False;

   FrmFrameBotoes1.DataSource := BaseDados.DS_Vendas;

   BaseDados.db_vendasItens.Close;

   BaseDados.db_vendas.Close;
   BaseDados.db_vendas.ParamByName('CODIGO').Clear;
   BaseDados.db_vendas.Open;

   BaseDados.db_vendasItens.Open;

end;

procedure TFrmNotaFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_PRIOR THEN
   Begin
      ScrollBoxNF.VertScrollBar.Position :=
        ScrollBoxNF.VertScrollBar.Position - 20;
   End;

   IF Key = VK_NEXT THEN
   Begin
      ScrollBoxNF.VertScrollBar.Position :=
        ScrollBoxNF.VertScrollBar.Position + 20;
   End;

   IF Key = VK_F7 Then
   Begin
      BtnFaturasClick(Sender);
   End;

end;

procedure TFrmNotaFiscal.FormResize(Sender: TObject);
begin
  DimensionarGrid(dbGrid_Produtos,self);

end;

procedure TFrmNotaFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FrmPrincipal.MnuVendasNFe_Emitir.Enabled := True;

   FreeAndNil(FrmNotaFiscal);
end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   BaseDados.db_vendasItens.Close;

   BaseDados.db_vendas.Close;
   BaseDados.db_vendas.ParamByName('CODIGO').Clear;
   BaseDados.db_vendas.Open;

   BaseDados.db_vendasItens.Open;
   OpcaoNumeroFiscal := 'NFE';

   FrmOpcaoVenda := TFrmOpcaoVenda.create(self);
   FrmOpcaoVenda.Showmodal;

   // Venda Normal
   If OpcaoVenda = 'N' then
   Begin
      AbrirTabelas;

      nTotalNFReal :=0;
      FrmFrameBotoes1.SpbAdicionarClick(Sender);

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

      nTotalNFReal :=0;
      ImportarPedido(  ConferenciaProcurar.ResultFieldAsInteger('CODIGO')  );

      EditCliente.Setfocus;

   End;

   If OpcaoVenda = 'D' then
   Begin

      {
        AbrirTabelas;
        FrmFrameBotoes1.SpbAdicionarClick(Sender);

        EditCliente.Setfocus;
      }

      if dbProcurarNFe.Execute then
      begin
        FecharTabelas;
        BaseDados.db_vendas.ParamByName('CODIGO').AsInteger := dbProcurarNFe.ResultFieldAsInteger('CODIGO');
        AbrirTabelas;
        DimensionarGrid(dbGrid_Produtos,self);

         if AvisoQuestao('DEVOLUÇÃO DE PRODUTOS ',
           'Venda.......: ' + IntToStr(iAchar[0]) + #13 + #10 +
           'Data........: ' + Achar[1] + #13 + #10 +
           'Cliente.....: ' + Achar[2] + #13 + #10 +
           'Valor.......: ' + Achar[3]) = False then
            exit;

      End;

      if iAchar[0] = 0 then
      Begin
         AvisoSistema('Você não selecionou venda');
         exit;
      End;



        FecharTabelas;
        BaseDados.db_vendas.ParamByName('CODIGO').Asinteger :=iAchar[0];
        AbrirTabelas;


   End;

   // Opcaoes canceladas
   If OpcaoVenda = 'S' then
   Begin
      FrmFrameBotoes1.SpbCancelarClick(Sender);
      Abort;
   End;

end;

procedure TFrmNotaFiscal.ImportarPedido(nlPedido: Integer);
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
      BaseDados.db_Vendas.Cancel;
      BaseDados.db_VendasItens.Cancel;
      Abort;
   end;

   // -------------------------------------------------------------------
   //
   // -------------------------------------------------------------------

   FrmFrameBotoes1.SpbAdicionarClick(self);

   BaseDados.db_vendas.FieldByName('PEDIDO').AsInteger :=  db_PedidosConferencia.FieldByName('PEDIDO').AsInteger;
   BaseDados.db_vendas.FieldByName('CONFERENCIA').AsInteger :=  db_PedidosConferencia.FieldByName('CODIGO').AsInteger;
   BaseDados.db_vendas.FieldByName('CLIENTE').AsInteger :=  db_PedidosConferencia.FieldByName('CLIENTE').AsInteger;

   if BaseDados.db_vendas.FieldByName('CFOP').AsInteger<=0 then
   begin
      BaseDados.db_vendas.FieldByName('CFOP').AsInteger := 5101;
   end;

   BaseDados.db_vendas.FieldByName('VENDEDOR').AsInteger :=  db_PedidosConferencia.FieldByName('VENDEDOR').AsInteger;
   BaseDados.db_vendas.FieldByName('FORMAPAGTO').AsInteger :=  db_PedidosConferencia.FieldByName('FORMA_PAGTO').AsInteger;
   BaseDados.db_vendas.FieldByName('TRANSPORTADORA').AsInteger :=  db_PedidosConferencia.FieldByName('TRANSPORTADORA').AsInteger;


   BaseDados.db_vendas.FieldByName('FRETE_QUANTIDADE').AsInteger := db_PedidosConferencia.FieldByName('FRETE_VOLUMES').AsInteger;
   BaseDados.db_vendas.FieldByName('FRETE_ESPECIE').AsString := db_PedidosConferencia.FieldByName('FRETE_ESPECIE').AsString;
   BaseDados.db_vendas.FieldByName('FRETE_MARCA').AsString := db_PedidosConferencia.FieldByName('FRETE_MARCA').AsString;
   BaseDados.db_vendas.FieldByName('OBS1').AsString := db_PedidosConferencia.FieldByName('OBSERVACAO').AsString;
   //BaseDados.db_vendas.FieldByName('DESCONTO').AsFloat := db_PedidosConferencia.FieldByName('DESCONTO').AsFloat;

   nTotalNFReal    :=db_PedidosConferencia.FieldByName('VLR_TOTAL').AsFloat;

   if BaseDados.db_vendas.FieldByName('OBS1').AsString='' then
      BaseDados.db_vendas.FieldByName('OBS1').AsString :='.';

   If (BaseDados.db_vendas.state in [dsEdit, dsInsert]) then
   Begin
      BaseDados.db_vendas.Post;
   End;
   iAchar[0] := BaseDados.db_vendas.FieldByName('CODIGO').AsInteger;

   BaseDados.db_vendas.Close;
   BaseDados.db_vendasItens.Close;
   BaseDados.db_vendas.ParamByName('CODIGO').AsInteger := iAchar[0];

   BaseDados.db_vendas.Open;
   BaseDados.db_vendasItens.Open;

   While not db_PedidosConferenciaItens.eof do
   begin

      nValorInteiro  :=0;
      nValorParcial  :=0;
      nValorDesconto :=0;
      strReferencia  :=db_PedidosConferenciaItens.FieldByName('REFERENCIA').AsString;

      BaseDados.db_vendasItens.Append;
      BaseDados.db_vendasItens.FieldByName('PRODUTO').AsString   := db_PedidosConferenciaItens.FieldByName('REFERENCIA').AsString;
      BaseDados.db_vendasItens.FieldByName('DESCRICAO').AsString := db_PedidosConferenciaItens.FieldByName('DESCRICAO').AsString;
      BaseDados.db_vendasItens.FieldByName('NCM').AsString       := fncProduto_retCampo(strReferencia,'NCM');

      If db_PedidosConferencia.FieldByName('ENTREGAPARCIAL').AsString='S' Then
      begin
         if fncProduto_retCampo(db_PedidosConferenciaItens.FieldByName('REFERENCIA').AsString,'REFERENCIAREDUZIDA')>'' then
            BaseDados.db_vendasItens.FieldByName('PRODUTO').AsString :=           fncProduto_retCampo(db_PedidosConferenciaItens.FieldByName('REFERENCIA').AsString,'REFERENCIAREDUZIDA');

         if fncProduto_retCampo(db_PedidosConferenciaItens.FieldByName('REFERENCIA').AsString,'DESCRICAOREDUZIDA')>'' then
            BaseDados.db_vendasItens.FieldByName('DESCRICAO').AsString :=         fncProduto_retCampo(db_PedidosConferenciaItens.FieldByName('REFERENCIA').AsString,'DESCRICAOREDUZIDA');
      end;

      BaseDados.db_vendasItens.FieldByName('QUANTIDADE').AsFloat :=         db_PedidosConferenciaItens.FieldByName('QUANTIDADE').AsFloat;
      nValorInteiro                                              :=         db_PedidosConferenciaItens.FieldByName('VALOR_UNIT').AsFloat;

      If db_PedidosConferencia.FieldByName('ENTREGAPARCIAL').AsString='S' Then
      begin
         nValorParcial := fncGeraPercentual(nValorInteiro, db_PedidosConferencia.FieldByName('VALORPARCIAL').AsFloat);
         BaseDados.db_vendasItens.FieldByName('VLR_UNIT').AsFloat :=        nValorParcial;
      end
      else
      begin
         BaseDados.db_vendasItens.FieldByName('VLR_UNIT').AsFloat :=        nValorInteiro;
      end;

      inCFOP        :=0;
      inCliente     :=BaseDados.db_vendas.FieldByName('CLIENTE') .AsInteger;
      strReferencia :=db_PedidosConferenciaItens.FieldByName('REFERENCIA').AsString;
      inCFOP        :=BaseDados.db_vendas.FieldByName('CFOP') .AsInteger;

      // SE O ESTADO DO CLIENTE FOR O MESMO DA EMPRESA EMISSORA DA NFE,
      // INFORMAR O CFOP INTERNO (DENTRO DO ESTADO)


      if (FParametros.Empresa.UF=fncCliente_retCampo(inCliente,'UF')) and ( StrToIntDef( fncProduto_retCampo(strReferencia,'CFOPDENTROESTADO'),0 ) >0 ) Then
           BaseDados.db_vendasItens.FieldByName('NCFOP').AsInteger := StrToIntDef( fncProduto_retCampo(strReferencia,'CFOPDENTROESTADO'),inCFOP );

      // SE O ESTADO DO CLIENTE FOR DIFERENTE DA EMPRESA EMISSORA DA NFE,
      // INFORMAR O CFOP EXTERNO (FORA DO ESTADO)
      if (FParametros.Empresa.UF<>fncCliente_retCampo(inCliente,'UF'))  and ( StrToIntDef( fncProduto_retCampo(strReferencia,'CFOPFORAESTADO'),0 ) >0 ) Then
           BaseDados.db_vendasItens.FieldByName('NCFOP').AsInteger := StrToIntDef( fncProduto_retCampo(strReferencia,'CFOPFORAESTADO'),inCFOP );

      BaseDados.db_vendasItens.Post;

      inc(iconta);

      db_PedidosConferenciaItens.next;
      Update;
   end;

   DimensionarGrid(dbGrid_Produtos,self);

   ExecutarProcedures;
   BaseDados.db_Parametros.Refresh;

   BaseDados.db_vendas.Edit;

   {***********************************************************************
    ** De acordo com o Ministério da Fazenda - 2012:                    ***
    **    1 – Simples Nacional                                          ***
    **    2 – Simples Nacional excesso de sublimite da receita bruta    ***
    **    3 – Regime Normal                                             ***
    ***********************************************************************
    **  se a empresa FOR optante do simples, pegar aliquota do SIMPLES   **
    ***********************************************************************}
   if BaseDados.db_Parametros.FieldByName('EMPRESA_REGIMETRIBUTARIO').AsInteger=1 Then
   begin
      BaseDados.db_Vendas.FieldByName('OBS1').AsString := UpperCase( fnCFOP_DETALHE(BaseDados.db_Vendas.FieldByName('CFOP').AsInteger) );
      BaseDados.db_Vendas.FieldByName('OBS1').AsString := UpperCase( SubstituirCampoTexto(BaseDados.db_Vendas.FieldByName('OBS1').AsString,'%VSIMPLES%', FormatFloat('###,##0.00',BaseDados.db_Vendas.FieldByName('SIMPLESNACIONAL_VALOR').AsFloat) ) );
   end;

   DimensionarGrid(dbGrid_Produtos,self);


end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   if (BaseDados.db_vendasItens.state in [dsEdit, dsInsert]) then
      BaseDados.db_vendasItens.Post;


   ExecutarProcedures;

   BaseDados.db_vendas.Refresh;

end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin

   // -------------------------------------------------------------------------
   // ------        perguntar                                             -----
   // -------------------------------------------------------------------------
   //If BaseDados.db_vendas.FieldByName('STATUS').AsString = 'S' then
   if (BaseDados.db_Vendas.FieldByName('NOTAFISCAL').AsInteger > 0) Then
   Begin
      Informar('Venda já foi concluida. Não é permitido alterar.');
      exit;
   end;

   FrmFrameBotoes1.SpbEditarClick(Sender);
   BaseDados.db_vendasItens.Edit;

end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   BaseDados.db_vendasItens.Cancel;

end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin


   If BaseDados.db_vendas.FieldByName('STATUS').AsString = 'C' then
   Begin
      Informar('Venda já foi Cancelada. ');
      exit;
   end;

   if (BaseDados.db_Vendas.FieldByName('NOTAFISCAL').AsInteger > 0) and
      (BaseDados.db_vendas.FieldByName('STATUS').AsString = 'S')    then
   Begin
      AvisoSistemaErro('Venda já foi faturada. Não é permitido excluir.'+
                       sLineBreak+
                       sLineBreak+
                       'Você poderá somente cancelar a NF-e.' );
      exit;
   End;

   If (BaseDados.db_vendas.FieldByName('NFE_TRANSMITIDO').AsString = 'SIM') then
   begin
      AvisoSistema('Esta Nota Fiscal Eletrônica já foi enviada para a SEFAZ. ' +
                   sLineBreak+
                   sLineBreak+
                   'Não é permitido excluir. Somente "Cancelar".');
      Exit;
   end;


   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   if pergunta('Tem certeza que deseja excluir este registro?')=false then
      exit;

   BaseDados.SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
   BaseDados.SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger     := BaseDados.db_vendas.FieldByName('CODIGO').AsInteger;
   BaseDados.SPNFE_PROCESSAR.ParamByName('ACAO').AsString        := 'EXCLUIR';
   BaseDados.SPNFE_PROCESSAR.ExecProc;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   FecharTabelas;
   Informar('Nota Fiscal foi Excluída!');
   AbrirTabelas;

end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbExtraClick(Sender: TObject);
begin

   if BaseDados.db_Vendas.IsEmpty then
   begin
      avisosistema('Selecione uma NFe para enviar a SEFAZ.');
      exit;
   end;


   If (BaseDados.db_vendas.state in [dsEdit, dsInsert]) then
      BaseDados.db_vendas.Post;

   inVenda := 0;
   inVenda := BaseDados.db_vendas.FieldByName('CODIGO').AsInteger;
   BaseDados.GerarNumeroNotaFiscal(inVenda);
   FrmFrameBotoes1.SpbSalvarClick(Sender);

   FinalizarNotaFiscal;

   // -------------------------------------------------------------------------
   // transferencia de comoandos
   // VALIDAR
   // -------------------------------------------------------------------------

   IF (BaseDados.db_vendas.IsEmpty) or (BaseDados.db_vendas.RecordCount<1) Then
      FrmFrameBotoes1SpbProcurarClick(Sender);

   IF (BaseDados.db_vendas.IsEmpty) or (BaseDados.db_vendas.RecordCount<1) Then
   begin
     Informar('Primeiro localize a NF (F7) para depois Validar');
     exit;
   end;


   FecharTabelas;
   BaseDados.db_Vendas.ParamByName('CODIGO').AsInteger :=inVenda;
   AbrirTabelas;

   BaseDados.ACBrNFe1.NotasFiscais.Clear;

   /// gerar XML da NF-e
   BaseDados.GerarNFe(BaseDados.db_vendas.FieldByName('NOTAFISCAL').AsInteger);


   BaseDados.ACBrNFe1.Configuracoes.Certificados.NumeroSerie :=       BaseDados.ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
   BaseDados.ACBrNFe1.NotasFiscais.Valida;
   BaseDados.ACBrNFe1.NotasFiscais.Items[0].SaveToFile;


   BaseDados.db_Vendas.Edit;
   BaseDados.db_Vendas.FieldByName('NFE_CERTIFICADO').AsString := BaseDados.ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
   BaseDados.db_Vendas.FieldByName('NFE_VALIDADO').AsString := 'SIM';
   BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString  := BaseDados.ACBrNFe1.NotasFiscais.Items[0].NomeArq;
   BaseDados.db_Vendas.Post;
   BaseDados.db_vendas.Refresh;



   AcaoUserName[0] := 'Validou Nota Fiscal Eletrônica '+BaseDados.db_Vendas.FieldByName('NOTAFISCAL').AsString;
   FUsuario.prcLogUsuario('Processamento de Nota Fiscal Eletrônica',AcaoUserName[0]);


   // -------------------------------------------------------------------------
   // transferencia de comoandos
   // ASSINAR
   // -------------------------------------------------------------------------
   If (BaseDados.db_vendas.FieldByName('NFE_VALIDADO').AsString <> 'SIM') then
   Begin
      AvisoSistema('Primeiro você precisa Validar a ' +
        'Nota Fiscal Eletrônica... Depois você assina.');

      Exit;
   End;

   BaseDados.ACBrNFe1.NotasFiscais.Assinar;
   BaseDados.ACBrNFe1.NotasFiscais.Items[0].SaveToFile;

   BaseDados.db_Vendas.Edit;
   BaseDados.db_Vendas.FieldByName('NFE_ASSINADO').AsString := 'SIM';
   BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString  := BaseDados.ACBrNFe1.NotasFiscais.Items[0].NomeArq;
   BaseDados.db_Vendas.Post;

   BaseDados.db_vendas.Refresh;

   AcaoUserName[0] := 'Assinou Nota Fiscal Eletrônica '+BaseDados.db_Vendas.FieldByName('NOTAFISCAL').AsString;
   FUsuario.prcLogUsuario('Processamento de Nota Fiscal Eletrônica',AcaoUserName[0]);

   // -------------------------------------------------------------------------
   // transferencia de comoandos
   // ENVIAR PARA A RECEITA
   // -------------------------------------------------------------------------

   If (BaseDados.db_vendas.FieldByName('NFE_ASSINADO').AsString <> 'SIM') then
   Begin
      AvisoSistema('Primeiro você precisa Assinar a ' +
        'Nota Fiscal Eletrônica... Depois você envia para a SEFAZ.');
      Exit;
   End;

   If (BaseDados.db_vendas.FieldByName('NFE_TRANSMITIDO').AsString = 'SIM') then
   begin
      AvisoSistema('Esta Nota Fiscal Eletrônica já foi enviada para a SEFAZ. ' +
        'Para mais detalhes, clique no botão "Situação na SEFAZ".');
      Exit;
   end;


   if pergunta('Esse processo irá gerar dados reais no servidor da SEFAZ'+sLineBreak+
               'Deseja realmente enviar para a SEFAZ ?') = False then
      Exit;

   BaseDados.ACBrNFe1.Enviar(BaseDados.GerarLote);

   //BaseDados.ACBrNFe1.Enviar( BaseDados.db_vendas.FieldByName('CODIGO').AsInteger );

   BaseDados.db_Vendas.Edit;
   BaseDados.db_Vendas.FieldByName('NFE_RECIBO').AsString :=          BaseDados.ACBrNFe1.WebServices.Retorno.Recibo;
   BaseDados.db_Vendas.FieldByName('NFE_CHAVEACESSO').AsString :=     BaseDados.ACBrNFe1.WebServices.Retorno.ChaveNFe;
   BaseDados.db_Vendas.FieldByName('NFE_PROTOCOLOUSO').AsString :=     BaseDados.ACBrNFe1.WebServices.Retorno.Protocolo;
   BaseDados.db_Vendas.FieldByName('NFE_SITUACAOCODIGO').AsInteger :=     BaseDados.ACBrNFe1.WebServices.Retorno.cStat;
   BaseDados.db_Vendas.FieldByName('NFE_SITUACAOSEFAZ').AsString :=       BaseDados.ACBrNFe1.WebServices.Retorno.xMotivo;
   BaseDados.db_Vendas.FieldByName('NFE_TRANSMITIDO').AsString := 'SIM';
   BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString  := BaseDados.ACBrNFe1.NotasFiscais.Items[0].NomeArq;
   BaseDados.db_Vendas.Post;
   BaseDados.db_vendas.Refresh;



   prcStatusMessage('NF-e','Validando arquivo XML',True);

   BaseDados.ACBrNFe1.NotasFiscais.Clear;
   BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString);
   BaseDados.ACBrNFe1.Consultar;

   prcStatusMessage('NF-e','',False);


   AcaoUserName[0] := 'Transmitiu para o servidor da SEFAZ a Nota Fiscal Eletrônica '+BaseDados.db_Vendas.FieldByName('NOTAFISCAL').AsString;
   FUsuario.prcLogUsuario('Processamento de Nota Fiscal Eletrônica',AcaoUserName[0]);

end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin
   BaseDados.prcDANFELogo;

   if BaseDados.db_Vendas.IsEmpty then
   begin
      avisosistema('Selecione uma NFe para imprimir DANFE');
      exit;
   end;


   // -------------------------------------------------------------------------
   // transferencia de comoandos
   // IMPRIMIR DANFE
   // -------------------------------------------------------------------------

   BaseDados.ACBrNFe1.NotasFiscais.Clear;
   if not FileExists(Trim(BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString)) then
   begin
     Informar('Arquivo XML não foi gerado para visualização da DANFE');
     exit;
   end;
   BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString));

   if BaseDados.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
   begin
      BaseDados.ACBrNFe1.WebServices.ConsultaDPEC.NFeChave  :=     BaseDados.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
      BaseDados.ACBrNFe1.WebServices.ConsultaDPEC.Executar;
      BaseDados.ACBrNFe1.DANFE.ProtocoloNFe                  := BaseDados.ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC + ' ' + DateTimeToStr(BaseDados.ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
   end
   else
   begin

         BaseDados.ACBrNFe1.DANFE.ProtocoloNFe            := BaseDados.db_Vendas.FieldByName('NFE_PROTOCOLOUSO').AsString;

         BaseDados.ACBrNFe1.WebServices.Retorno.Recibo    := BaseDados.db_Vendas.FieldByName('NFE_RECIBO').AsString;

         BaseDados.ACBrNFe1.WebServices.Retorno.ChaveNFe  := BaseDados.db_Vendas.FieldByName('NFE_CHAVEACESSO').AsString;

   end;

   BaseDados.ACBrNFe1.NotasFiscais.Imprimir;
   //end;

   BaseDados.db_Vendas.Edit;
   BaseDados.db_Vendas.FieldByName('NFE_DANFEIMPRESSA').AsString := 'SIM';
   BaseDados.db_Vendas.Post;
   BaseDados.db_vendas.Refresh;

   AcaoUserName[0] := 'Imprimiu DANFE da Nota Fiscal Eletrônica '+BaseDados.db_Vendas.FieldByName('NOTAFISCAL').AsString;
   FUsuario.prcLogUsuario('Processamento de Nota Fiscal Eletrônica',AcaoUserName[0]);

end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   dbProcurarNFe.SearchQuery.Clear;
   dbProcurarNFe.SearchQuery.Add('SELECT * FROM VIEW_NOTAFISCAL');
   dbProcurarNFe.SearchQuery.Add('WHERE');
   dbProcurarNFe.SearchQuery.Add('EMPRESA='+IntToStr(FSistema.Empresa));
   dbProcurarNFe.SearchQuery.Add('AND');
   dbProcurarNFe.SearchQuery.Add('%WHERE%');
   dbProcurarNFe.SearchQuery.Add('ORDER BY EMISSAO');
   dbProcurarNFe.SearchQuery.Add('');

   if dbProcurarNFe.Execute then
   begin
      FecharTabelas;
      BaseDados.db_vendas.ParamByName('CODIGO').AsInteger := dbProcurarNFe.ResultFieldAsInteger('CODIGO');
      AbrirTabelas;
      DimensionarGrid(dbGrid_Produtos,self);
   end;

end;

procedure TFrmNotaFiscal.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmNotaFiscal.AbrirTabelas;
begin
   BaseDados.db_vendas.Open;
   BaseDados.db_vendasItens.Open;
end;

procedure TFrmNotaFiscal.BtnFaturasClick(Sender: TObject);
Var
   nVenda: Integer;

begin

   nValorInteiro  :=0;
   nValorParcial  :=0;

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   FinalizarNotaFiscal;
   nVenda := BaseDados.db_vendas.FieldByName('CODIGO').AsInteger;

   nTotalNFReal      := BaseDados.db_Vendas.FieldByName('TOTAL_NF').asFloat;


   db_PedidosConferencia.close;
   db_PedidosConferencia.ParamByName('CODIGO').AsInteger := BaseDados.db_vendas.FieldByName('CONFERENCIA').AsInteger;
   db_PedidosConferencia.open;

   nValorRealPedido  := db_PedidosConferencia.FieldByName('VLR_TOTAL').asFloat;
   db_PedidosConferencia.close;

   bGerarParcelaExterna := False;

   FrmGeraParcelasVenda := TFrmGeraParcelasVenda.create(self);
   FrmGeraParcelasVenda.Showmodal;

   nValorInteiro  :=0;
   nValorParcial  :=0;

end;

procedure TFrmNotaFiscal.dbGrid_ProdutosColEnter(Sender: TObject);
begin

   {
   // GRADE DE DEVOLUÇÃO DE PRODUTOS
   if (dbGrid_Produtos.SelectedField = BaseDados.db_VendasDevolucaoItensQUANTIDADE) and
     not empty(BaseDados.db_vendasItens.FieldByName('PRODUTO').AsString) then
   Begin
      If (BaseDados.db_vendasItens.State in [dsedit, dsinsert]) then
      Begin
         BaseDados.db_vendasItens.Post;
      End;

      FrmVendasDevolucaoGradeEditar := TFrmVendasDevolucaoGradeEditar.Create(self);
      FrmVendasDevolucaoGradeEditar.ShowModal;
   End;
   }

end;

procedure TFrmNotaFiscal.dbGrid_ProdutosEditButtonClick(Sender: TObject);
begin

   if dbGrid_Produtos.SelectedField.FieldName = 'PRODUTO' then
      prcProcurarProduto;

end;

procedure TFrmNotaFiscal.dbGrid_ProdutosEnter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

procedure TFrmNotaFiscal.dbGrid_ProdutosExit(Sender: TObject);
begin

   inVenda := BaseDados.db_vendas.FieldByName('CODIGO').AsInteger;
   BaseDados.SP_NFE_CALCULA.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
   BaseDados.SP_NFE_CALCULA.ParamByName('NCODIGO').AsInteger     := inVenda;
   BaseDados.SP_NFE_CALCULA.ParamByName('ACAO').AsString        := 'SAIDA';
   BaseDados.SP_NFE_CALCULA.ExecProc;

   BaseDados.db_vendas.Refresh;

end;

procedure TFrmNotaFiscal.dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_F8 Then
   begin
     if dbGrid_Produtos.SelectedField = BaseDados.db_VendasItensNCM then
     begin
        if dbEditPesquisarNCM.Execute then
        begin
           If not(BaseDados.db_vendasItens.state in [dsEdit]) then
              BaseDados.db_vendasItens.Edit;
           BaseDados.db_vendasItens.FieldByName('NCM').AsInteger := dbEditPesquisarNCM.ResultFieldAsInteger('CODIGO');
           If (BaseDados.db_vendasItens.state in [dsEdit]) then
              BaseDados.db_vendasItens.Post;
        end;
     end;


     if dbGrid_Produtos.SelectedField = BaseDados.db_VendasItensPRODUTO then
         prcProcurarProduto;
   end;

end;

procedure TFrmNotaFiscal.dbGrid_ProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmNotaFiscal.FecharTabelas;
begin

   BaseDados.db_vendas.Close;
   BaseDados.db_vendasItens.Close;

end;

procedure TFrmNotaFiscal.ExecutarProcedures;
begin


   inVenda := BaseDados.db_vendas.FieldByName('CODIGO').AsInteger;

   BaseDados.db_vendas.Close;
   BaseDados.db_vendas.ParamByName('CODIGO').AsInteger := inVenda;
   BaseDados.db_vendas.Open;

   inVenda := BaseDados.db_vendas.FieldByName('CODIGO').AsInteger;
   BaseDados.SP_NFE_CALCULA.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
   BaseDados.SP_NFE_CALCULA.ParamByName('NCODIGO').AsInteger     := inVenda;
   BaseDados.SP_NFE_CALCULA.ParamByName('ACAO').AsString        := 'SAIDA';
   BaseDados.SP_NFE_CALCULA.ExecProc;


end;

procedure TFrmNotaFiscal.FinalizarNotaFiscal;
begin

   If BaseDados.db_vendas.FieldByName('STATUS').AsString='S' then
      exit;

   if pergunta('Finalizar Nota Fiscal e baixar estoque?')=false then
   begin
      avisosistema('Você cancelou a operação. Para processeguir é necessário finalizar a nota fiscal.');
      abort;
   end;

   // se nao houver numero de nota fiscal, então gere.
   inVenda := BaseDados.db_vendas.FieldByName('CODIGO').AsInteger;
   BaseDados.GerarNumeroNotaFiscal(inVenda);

   BaseDados.db_vendas.Close;
   BaseDados.db_vendas.ParamByName('CODIGO').AsInteger := inVenda;
   BaseDados.db_vendas.Open;


   BaseDados.SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
   BaseDados.SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger     := BaseDados.db_vendas.FieldByName('CODIGO').AsInteger;
   BaseDados.SPNFE_PROCESSAR.ParamByName('ACAO').AsString        := 'FECHAR';
   BaseDados.SPNFE_PROCESSAR.ExecProc;


   BaseDados.db_vendas.Close;
   BaseDados.db_vendas.ParamByName('CODIGO').AsInteger := inVenda;
   BaseDados.db_vendas.Open;

end;

end.
