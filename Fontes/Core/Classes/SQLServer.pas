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

unit SQLServer;

interface

uses
   DBTables, Forms, Classes, Windows, Controls, Variants, ComCtrls,
   WinTypes, WinProcs, Tabs, ExtCtrls, DBCtrls, StrUtils,
   Dialogs, StdCtrls, Messages, Graphics, shellapi, Sysutils,
   FMTBcd,  WideStrings, DBCommon,

   FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
   FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
   FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
   FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,

   Classe.Parametros,
   Global,
   Classe.Global;

Procedure prcQueryCriar(var tdbQuery);
Procedure prcQueryDeletar(var tdbQuery);

Procedure prcContasReceberDescontato(ncodigo, ncontabanco,ncontacaixa,ncarteira: Integer; stacao: String);

Procedure pContasReceber(ncodigo, ncliente: Integer; acao: String);

Procedure pContasReceberBaixaParcial(ncliente, nVendedor: Integer;
  nData, nVencimento: TDate; nNotafiscal, nDocumento: String; nNovoValor: Real;
  nPlanoConta: String; nforma_pagto: Integer; wAcao: String);

Procedure pContasPagarBaixaParcial(nfornecedor: integer;
  nData, nVencimento: TDate; nNotafiscal, nDocumento: String; nNovoValor: Real;
  nPlanoConta: String; nforma_pagto: integer; shitorico, wAcao: String);


Procedure pContasReceberLancar(ncliente, nVendedor: integer;
  nData, nVencimento: TDate; nNotafiscal, nDocumento: String; nNovoValor: Real;
  stEspecie, wAcao: String);

Procedure prcComissaoPagarPedidos(ncliente, nVendedor, nPedido: integer; nValor:Currency;wAcao: String);

Function ValidaReferencia(sReferencia: String): Boolean;
Function fncValidaReferenciaGrade(sReferencia: String): Boolean;

Function fncValidaAndamentoReferenciaGrade(lnOrdemProducao:integer;sReferencia: String): Boolean;

Function fncValidaAndamentoReferenciaGradeQualidade(sReferencia: String): Boolean;

Function fncValidaReferenciaQuantidadeGrade(sReferencia: String): Boolean;

Function fncValidaReferenciaQuantidadeGradeQualidade(sReferencia: String): Boolean;

Function fncValidaReferenciaGradeQuantidade(sReferencia: String): Boolean;

Function RetornaReferenciaCodigoID(sReferencia: String): Integer;

Function fncReferenciaNome(sReferencia: String): String;

Function RetornaReferenciaReduzido(sReferencia: String): String;

Function RetornaReferenciaNomeReduzido(sReferencia: String): String;

Function RetornaReferenciaPrecoVenda(sReferencia: String): Real;

Function fncReferenciaPrecoCusto(sReferencia: String): Real;

Function RetornaReferenciaQuantidade(sReferencia: String): Real;

Function fncCliente_retCampo(nCliente: Integer;slCampo:String): String;

Function fncProduto_retCampo(sReferencia,slCampo:String): String;

Function fncProdutoGrade_retCampo(sReferencia,slCampo:String): String;

Function prcOrdemProducao_retCampo(lnOrdemProducao:integer;slCampo:String) : String;

Function prcOrdemProducaoAndamento_retCampo(lnOrdemProducao:integer;slIdentificador,slCampo:String) : String;

Function GetParametros : TParametros;

Function fncUsuario_retCampo(lnUsuario:integer;slCampo:String) : String;

Function prcOrdemProducaoItens_retCampo(lnOrdemProducao:integer;slCampo:String) : String;

Function fncPedidoItens_retCampo(lnPedido:integer;slCampo:String) : String;

Function fncFinReceber_retCampo(lnReceber:integer;slCampo:String) : String;

Function fncFaseReferencia_valor(lnOrdemProucao,lnterceirizado:integer) : Real;

Function fncFaseCadastro_Validar(nFase:Integer): Boolean;

Function fncFase_Validar(nFase:Integer): Boolean;

Function fncFase_Nome(nFase:Integer): String;

Function fncLote_Nome(nLote:Integer): String;

Function ValidarReferenciaProducao(nOrdemProucao:Integer;sReferencia: String): Boolean;

Function fncOrdemProducaoSomar(nOrdemProucao:Integer): Real;

Function ValidarDistribuicaoRemessa(nRemessa:Integer): Boolean;

Function RetornaReferenciaPrecoTabela(nTabela:Integer;sReferencia: String): Real;

Function ValidaReferenciaTabela(nTabela:Integer;sReferencia: String): Boolean;

Function RetornaDistribuicaoOrdemProducao(nRemessa:Integer): Integer;

Function RetornaDistribuicaoTerceirizado(nRemessa:Integer): Integer;

Function ValidarOrdemProducao(nOrdemProucao:Integer): Boolean;

Function fncOrdemProducaoEncerrado(nOrdemProucao:Integer): Boolean;

Function ValidarOrdemProducaoAutorizada(nOrdemProucao:Integer): Boolean;

Function ValidarStatusOrdemProducao(nOrdemProucao:Integer): Boolean;

Procedure prcFaseAndamento(lOficina,lnOP,lnFaseTransferencia, lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer;blultimafase:boolean);

Procedure prcFaseAndamentoTransferirEstoque(lOficina,lnOP,lnFaseTransferencia, lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);

Procedure prcFaseAndamentoBaixar(lnFaseTransferencia, lnFaseOrigem,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);

Procedure prcFaseDefeito(lnOP,lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);

Procedure prcFaseDefeitoEstornar(lnOP,lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);

Procedure prcFaseDefeitoAndamento(lnOP,lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);

Procedure prcFasePerda(lnOP,lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);

Procedure prcFasePerdaEstornar(lnOP,lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);

Procedure prcFasePerdaAndamento(lnOP,lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);

Function fncFaseValidarQuantidade(sReferencia:String;lnOP,lnFase,lnCor,lnTamanho,lQuantidade:Integer) : Boolean;

Function fncIdentificadorReferencia(sReferencia: String;IDCor, IDTamanho : Integer): String;

Function fncIdentificadorReferenciaTXT(sReferencia, IDCor, IDTamanho : String): String;

Function fncMontarIdentificador(sReferencia: String; IDCor, IDTamanho : Integer): String;

Function RetornaIdentificadorIDCor(sReferencia: String ): Integer;

Function RetornaIdentificadorIDTamanho(sReferencia: String ): Integer;

Function RetornaIdentificadorReferencia(sReferencia: String ): String;

Function RetornaPedidoCliente(nPedido:Integer): Integer;

Function RetornaPedidoVendedor(nPedido:Integer): Integer;

Function RetornaPedidoFormaPagamento(nPedido:Integer): Integer;

Function RetornaPedidoTransportadora(nPedido:Integer): Integer;

Function RetornaPedidoReferenciaNome(nPedido:Integer;sReferencia: String): String;

Function RetornaPedidoferenciaPrecoVenda(nPedido:Integer;sReferencia: String): Real;


Function ExisteTamanho(sTamanho: String): Boolean;

Function ExisteTamanhoGrade(ncodigo: Integer; sTamanho: String): Boolean;

Function ExisteCor(ncodigo, NCOR: Integer): Boolean;

Function ExisteProcessoMaquina(ncodigo, NPROCESSO: Integer): Boolean;

Function ExisteMateriaPrimaTecido(ncodigo: Integer;
  sREFERENCIA: String): Boolean;

Function ExisteMateriaPrima(ncodigo: Integer; REFERENCIA: String): Boolean;

Function OPExisteProduto(ncodigo: Integer; REFERENCIA: String): Boolean;

Function fncPedidoCompraExisteProduto(nlPedido: Integer; REFERENCIA: String): Boolean;

Function fncPedidoVendaExisteProduto(nlPedido: Integer; lsreferencia: String): Boolean;

Function fncPedidoVendaExisteProdutoGrade(nlPedido: Integer; lsreferencia: String): Boolean;

Function ExisteMaquina(ncodigo { ,NMAQUINA } : Integer): Boolean;


Function CustoExternoChecarGrade(ncodigo, NCUSTO: Integer): Boolean;

Function CustoExternoExiste(ncodigo : Integer): Boolean;

Function CustoExternoRetornaNome(nCodigo: Integer): String;

Function CustoExternoRetornaValor(nCodigo: Integer): Real;

Function fncCustoFornecedorRetornaValor(nCodigo: Integer): Real;

Function ExisteCustoProcesso(ncodigo, NCUSTO: Integer): Boolean;

Function BuscaNomeProcesso(ncodigo: Integer): TVariantResultArray;

Function BuscaMateriaPrima(sREFERENCIA, sTIPOPRODUTO: String)
  : TVariantResultArray;

Function BuscaNomeCor(ncodigo: Integer): String;

Function fncBuscaNomeCorGrade(nCodigoProduto,ngradeid,ncor: Integer;wreferencia:String): String;

Function BuscaNomeTamanho(ncodigo: Integer): String;

Function BuscaIDTamanho(sTamanho: String): Integer;

Function BuscaNomeMaquina(ncodigo: Integer): TVariantResultArray;

Function fncBuscaPlanoContasCliente(ncodigo: Integer): String;

Function BuscaNCMPadrao : String;

Function fncDataBase : TDate;

Function fncParamCFOP_VendaUF(slUF :string): Integer;

Function ChecarCreditoCliente(nCliente:Integer) : Boolean;

Function ChecarCreditoDisponivel(nCliente:Integer) : Real;

Function ChecarCreditoUtilizado(nCliente:Integer) : Real;

Function ChecarCreditoSaldo(nCliente:Integer) : Real;

Function BuscaClienteVendedor(nCliente: Integer): Integer;

Function BuscaClienteTransportadora(nCliente: Integer): Integer;

Function BuscaClienteCentroCusto(nCliente: Integer): Integer;

function fncCliente_Validar(nCliente: Integer): Boolean;

function fncCliente_cnpj(sCNPJ: String): Boolean;

function fncCliente_ID_CNPJ(sCNPJ: String): Integer;


Function fncClienteBuscaCFOP(nCliente: Integer): Integer;

Function fncBuscaClienteEmail(ncodigo: Integer): String;

Function fncBuscaVendedorRegiao(ncodigo: Integer): Integer;

Function BuscaNomeTransportadora(nTransportadora: Integer): String;


// --------------------------------------------------------------------------
// CEP
// --------------------------------------------------------------------------

Function CEPTipo(nCEP: String): String;
Function CEPEndereco(nCEP: String): String;
Function CEPBairro(nCEP: String): String;
Function CEPCidade(nCEP: String): String;
Function CEPCidadeIBGE(nCEP: String): String;
Function CEPUF(nCEP: String): String;
Function CEPUFIBGE(nCEP: String): String;

Function ExisteGradeCor(ncodigo: Integer): Boolean;
Function ExisteGradeTamanhos(ncodigo: Integer): Boolean;

Function ValidarReferenciaCorTamanho(sReferencia: String): Boolean;
Function ValidaPedido(nCodigo: Integer): Boolean;
Function fncChecarPedidosProduzir : Boolean;
Function fncChecarPeriodoPedidosProduzir(ldtDataIni, dtDataFim : TDate; lncliente, lnvendedor : Integer  ) : Boolean;


Function ValidaPedidoConferenciaProduto(nPedido: Integer; sIdentificador: String): Boolean;
Function ValidaPedidoVendida(nPedido: Integer; sIdentificador: String): integer;

Function ValidaConferenciaRestante(nPedido: Integer; sReferecia, sCor, sTamanho: String): integer;
Function ValidaPedidoRestante(nPedido: Integer; sIdentificador: String): integer;

Function ValidaPedidoConferido(nPedido: Integer; sIdentificador: String): integer;


Function RetornaConferenciaQuantidade(sReferencia,sCor,sTamanho: String): Integer;

Function ValidaPedidoDisponivel(nPedido: Integer; sIdentificador: String): Boolean;

Function RetornaTaxaDolar : Real;
Function RetornaTaxaEuro : Real;

Function BuscaPlanoContasTipo(sPlanoContas: String): String;
Function BuscaPlanoContasID(sPlanoContas: String): Integer;

Function DistribuirReferenciaValor(nCodigo, nPedido: Integer; REFERENCIA: String): Real;
Procedure MateriaPrimaGradeTamanhos(strReferencia : String; nCodigoGrade: Integer);

Function RetornaGradeReferencia(sReferencia: String): Integer;

Function RetornaIDRegistroDiario(sStatusCaixa: String): Integer;

Function PDV_RetornaValorComparar(sTipoPagto, sFormaPagto : String; DataFechamento : TDate  ): Real;
Function PDV_SomaValorCaixa(nEmpresa, nCodigo : Integer; DataAbertura : TDate  ): Real;
Procedure PDV_SalvaValorFechameto(nValor : real  );


///--------------------------------------------------------------------------
///      CFOP
///--------------------------------------------------------------------------
function fnCFOP_VALIDAR(nCFOP: integer): Boolean;
function fnCFOP_UFVALIDAR(nCFOP: integer;UFEmpresa, UFCliente:String): Boolean;
function fnCFOP_NOME(nCFOP: integer): WideString;
function fnCFOP_DETALHE(nCFOP: integer): WideString;
function fnCFOP_FISCO(nCFOP: integer): WideString;
function fnCFOP_REDUCAOICMS(nCFOP: integer): Real;
function fnCFOP_OPERACAO(nCFOP: integer): String;
function fnCFOP_ICMS_CALCULA(nCFOP: integer): Boolean;
function fnCFOP_IPI_CALCULA(nCFOP: integer): Boolean;
function fnCFOP_ISS_CALCULA(nCFOP: integer): Boolean;

///--------------------------------------------------------------------------
///      TABELA DE IMPOSTOS POR ESTADO
///--------------------------------------------------------------------------
function fnUFImposto_VALIDAR(stUF: String): Boolean;
Function fnUFImposto_ICMS_PJ(stUF: String): Real;
Function fnUFImposto_ICMS_PF(stUF: String): Real;
Function fnUFImposto_IPI(stUF: String): Real;
Function fnUFImposto_ISS(stUF: String): Real;
Function fnUFImposto_IR(stUF: String): Real;


Procedure prcViewFaturas(dbQueryView: TFDQuery;nCliente,nNFe:Integer);

Procedure prcRegistrarUltimaVenda(lnCliente:Integer;lsOrigem:String);

Procedure prcProdutoLancaGrade(nPedido:Integer;sReferencia: String);


// --------------------------------------------------------------------------

Var

   TabelaPK_Validar { primaria } , TabelaFK_Validar { estrangeira } ,
   TabelaDiversa, TabelaReset, TabelaMaxCodigo { para uso diverso } ,
   TblVenda, TblCtaReceber, TblCtaPagar, TblCaixa,  TblPedido,
   TblCompra, TblClientes, FTBLOutrasFuncoes,
   TblValidarFuncoes : TFDQuery;

   xTStrings: TStrings;

   Localizado: Boolean;
   tTabelaNome, tTabelaMestre, tTabelaDependente, tCampoMestre,
     tCampoDependente, tVarTemp: String;
   tID: Integer;

implementation

uses Biblioteca, FPrincipal;

///--------------------------------------------------------------------------
///      CRIAR E DESTRUIR OBJETOS QUERY
///--------------------------------------------------------------------------

//Procedure prcQueryCriar(tdbQuery: TFDQuery);
Procedure prcQueryCriar(var tdbQuery);
begin
   if (TFDQuery(tdbQuery) <> nil) then
      FreeAndNil(TFDQuery(tdbQuery));

   TFDQuery(tdbQuery) := TFDQuery.Create(Application);
   TFDQuery(tdbQuery).Connection := FrmPrincipal.DBConexao;
   TFDQuery(tdbQuery).Close;

end;

Procedure prcQueryDeletar(var tdbQuery);
begin
   if TFDQuery(tdbQuery)=Nil then   // se NÃO foi criado, nao presseguir.
      exit;

   TFDQuery(tdbQuery).Close;
   FreeAndNil(TFDQuery(tdbQuery));
end;


Procedure prcContasReceberDescontato(ncodigo, ncontabanco,ncontacaixa,ncarteira: Integer; stacao: String);
begin
   stacao :=trim(stacao);
   stacao :=UpperCase(stacao);

   prcQueryCriar(TblCtaReceber);
   TblCtaReceber.SQL.Clear;
   TblCtaReceber.SQL.Add(' update FIN_CTARECEBER  set          ');
   TblCtaReceber.SQL.Add('     DESCONTADO=' + QuotedStr(stacao));
   TblCtaReceber.SQL.Add('    ,CONTA_CREDITO=' + inttostr(ncontabanco) );
   TblCtaReceber.SQL.Add('    ,CONTACAIXA=' + inttostr(ncontacaixa) );
   TblCtaReceber.SQL.Add('    ,CARTEIRA=' + inttostr(ncarteira) );
   TblCtaReceber.SQL.Add('      ');
   TblCtaReceber.SQL.Add(' where     ');
   TblCtaReceber.SQL.Add('    EMPRESA=:NEMPRESA     ');
   TblCtaReceber.SQL.Add(' and     ');
   TblCtaReceber.SQL.Add('    CODIGO=:nCODIGO     ');
   TblCtaReceber.ParamByName('NEMPRESA').AsInteger := FSistema.Empresa;
   TblCtaReceber.ParamByName('nCODIGO').AsInteger  := ncodigo;
   TblCtaReceber.ExecSQL;
   prcQueryDeletar(TblCtaReceber);
end;



///--------------------------------------------------------------------------
///
///--------------------------------------------------------------------------

Procedure pContasReceber(ncodigo, ncliente: Integer; acao: String);
begin

   // Criar uma Query virtual
   prcQueryCriar(TblCtaReceber);

   // --------------- BAIXAR CONTAS A RECEBER --------------------------------------
   if acao = 'BAIXAR' then
   begin

      // -----------------------------------------------

      /// baixar contas a receber
      TblCtaReceber.SQL.Clear;
      TblCtaReceber.SQL.Add(' update FIN_CTARECEBER  set          ');

      TblCtaReceber.SQL.Add('    quitado=' + QuotedStr('S'));

      TblCtaReceber.SQL.Add('    ,VALOR_SALDO = (valor - valor_pago)     ');
      TblCtaReceber.SQL.Add('      ');
      TblCtaReceber.SQL.Add(' where     ');
      TblCtaReceber.SQL.Add('    CODIGO=:nCODIGO     ');
      TblCtaReceber.SQL.Add('    and     ');
      TblCtaReceber.SQL.Add('    CLIENTE=:nCLIENTE;     ');

      TblCtaReceber.ParamByName('nCODIGO').AsInteger := ncodigo;
      TblCtaReceber.ParamByName('nCLIENTE').AsInteger := ncliente;

      TblCtaReceber.ExecSQL;


      // -----------------------------------------------

      // -----------------------------------------------
      {
        /// baixar contas a receber
        TblCtaReceber.SQL.Clear;
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');

        TblCtaReceber.ParamByName('nCODIGO').AsInteger  :=nCODIGO;
        TblCtaReceber.ParamByName('nCLIENTE').AsInteger :=nCLIENTE;
        TblCtaReceber.ExecSQL;

        //-----------------------------------------------

        /// baixar contas a receber
        TblCtaReceber.SQL.Clear;
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');

        TblCtaReceber.ParamByName('nCODIGO').AsInteger  :=nCODIGO;
        TblCtaReceber.ParamByName('nCLIENTE').AsInteger :=nCLIENTE;
        TblCtaReceber.ExecSQL;


        //-----------------------------------------------

        /// baixar contas a receber
        TblCtaReceber.SQL.Clear;
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');
        TblCtaReceber.SQL.Add('      ');

        TblCtaReceber.ParamByName('nCODIGO').AsInteger  :=nCODIGO;
        TblCtaReceber.ParamByName('nCLIENTE').AsInteger :=nCLIENTE;
        TblCtaReceber.ExecSQL;
      }

   end;

   // --------------- ESTORNAR CONTAS A RECEBER --------------------------------------
   if acao = 'ESTORNAR' then
   begin

      //
      /// baixar contas a receber
      TblCtaReceber.SQL.Clear;
      TblCtaReceber.SQL.Add(' update FIN_CTARECEBER  set                     ');
      TblCtaReceber.SQL.Add('    /* Quitado=[S]sim */                     ');
      TblCtaReceber.SQL.Add('    quitado        = ' + QuotedStr('N'));
      TblCtaReceber.SQL.Add('    ,data_pagto     = null,                     ');
      TblCtaReceber.SQL.Add('    valor_pago     = 0,                     ');
      TblCtaReceber.SQL.Add('    VALOR_SALDO = 0                     ');
      TblCtaReceber.SQL.Add('                      ');
      TblCtaReceber.SQL.Add(' where                     ');
      TblCtaReceber.SQL.Add('    CODIGO=:nCODIGO                     ');
      TblCtaReceber.SQL.Add('    and                     ');
      TblCtaReceber.SQL.Add('    CLIENTE=:nCLIENTE;                     ');

      TblCtaReceber.ParamByName('nCODIGO').AsInteger := ncodigo;
      TblCtaReceber.ParamByName('nCLIENTE').AsInteger := ncliente;

      TblCtaReceber.ExecSQL;

   end;

   prcQueryDeletar(TblCtaReceber);

end;

///
/// Criar recebimento parcial
///

Procedure pContasReceberBaixaParcial(ncliente, nVendedor: integer;
  nData, nVencimento: TDate; nNotafiscal, nDocumento: String; nNovoValor: Real;
  nPlanoConta: String; nforma_pagto: integer; wAcao: String);
begin

   // Criar uma Query virtual
   prcQueryCriar(TblCtaReceber);

   wAcao := UpperCase(wAcao);

   if (wAcao = 'D') { deletar } then
   begin

      TblCtaReceber.SQL.Clear;
      TblCtaReceber.SQL.Add(' delete from fin_ctareceber                         ');
      TblCtaReceber.SQL.Add(' where                                              ');
      TblCtaReceber.SQL.Add(' data=:data                                         ');
      TblCtaReceber.SQL.Add(' and                                                ');
      TblCtaReceber.SQL.Add(' cliente=:cliente                                   ');
      TblCtaReceber.SQL.Add(' and                                                ');
      TblCtaReceber.SQL.Add(' vendedor=:vendedor                                 ');
      TblCtaReceber.SQL.Add(' and                                                ');
      TblCtaReceber.SQL.Add(' documento=:documento                               ');

      TblCtaReceber.ParamByName('data').AsDate := nData;
      TblCtaReceber.ParamByName('cliente').AsInteger := ncliente;
      TblCtaReceber.ParamByName('vendedor').AsInteger := nVendedor;
      TblCtaReceber.ParamByName('documento').AsString := nDocumento + '-(P)';

      TblCtaReceber.ExecSQL;

      prcQueryDeletar(TblCtaReceber);

      Exit; // nao deixar prosseguir. Ação de exclusão foi concluida.

   end;

   // -----------------------------------------------
   // -----------------------------------------------
   /// baixar contas a receber
   TblCtaReceber.SQL.Clear;
   TblCtaReceber.SQL.Add     (' insert into fin_ctareceber                         ');
   TblCtaReceber.SQL.Add     ('                                                    ');
   TblCtaReceber.SQL.Add     (' (                                                  ');
   TblCtaReceber.SQL.Add     ('                                                    ');
   TblCtaReceber.SQL.Add     (' cliente,                                           ');
   TblCtaReceber.SQL.Add     (' vendedor,                                          ');
   TblCtaReceber.SQL.Add     (' data,                                              ');
   TblCtaReceber.SQL.Add     (' vencimento,                                        ');
   TblCtaReceber.SQL.Add     (' notafiscal,                                        ');
   TblCtaReceber.SQL.Add     (' documento,                                         ');
   TblCtaReceber.SQL.Add     (' valor,                                             ');
   TblCtaReceber.SQL.Add     (' PLANO_CONTAS,                                         ');
   TblCtaReceber.SQL.Add     (' forma_pagto,                                       ');
   TblCtaReceber.SQL.Add     (' historico,                                         ');
   TblCtaReceber.SQL.Add     (' complementar                                       ');
   TblCtaReceber.SQL.Add     ('                                                    ');
   TblCtaReceber.SQL.Add     (' )                                                  ');
   TblCtaReceber.SQL.Add     ('                                                    ');
   TblCtaReceber.SQL.Add     (' values                                             ');
   TblCtaReceber.SQL.Add     ('                                                    ');
   TblCtaReceber.SQL.Add     (' (                                                  ');
   TblCtaReceber.SQL.Add     ('                                                    ');
   TblCtaReceber.SQL.Add     (' :cliente,                                          ');
   TblCtaReceber.SQL.Add     (' :vendedor,                                         ');
   TblCtaReceber.SQL.Add     (' :data,                                             ');
   TblCtaReceber.SQL.Add     (' :vencimento,                                       ');
   TblCtaReceber.SQL.Add     (' :notafiscal,                                       ');
   TblCtaReceber.SQL.Add     (' :documento,                                        ');
   TblCtaReceber.SQL.Add     (' :valor,                                            ');
   TblCtaReceber.SQL.Add     (' :PLANO_CONTAS,                                        ');
   TblCtaReceber.SQL.Add     (' :forma_pagto,                                      ');
   TblCtaReceber.SQL.Add     (' :historico,                                        ');
   TblCtaReceber.SQL.Add     (' :complementar                                      ');
   TblCtaReceber.SQL.Add     ('                                                    ');
   TblCtaReceber.SQL.Add     (' )                                                  ');

   TblCtaReceber.ParamByName('cliente').AsInteger := ncliente;
   TblCtaReceber.ParamByName('vendedor').AsInteger := nVendedor;
   TblCtaReceber.ParamByName('data').AsDate := nData;
   TblCtaReceber.ParamByName('vencimento').AsDate := nVencimento;
   TblCtaReceber.ParamByName('notafiscal').AsString := nNotafiscal;
   TblCtaReceber.ParamByName('documento').AsString := nDocumento + '-(P)';
   TblCtaReceber.ParamByName('valor').AsFloat := nNovoValor;
   TblCtaReceber.ParamByName('PLANO_CONTAS').AsString := nPlanoConta;
   TblCtaReceber.ParamByName('forma_pagto').AsInteger := nforma_pagto;
   TblCtaReceber.ParamByName('historico').AsString := '(PARCELA COMPLEMENTAR) ' + nDocumento;
   TblCtaReceber.ParamByName('complementar').AsString := 'S';

   TblCtaReceber.ExecSQL;

   prcQueryDeletar(TblCtaReceber);

end;


Procedure pContasPagarBaixaParcial(nfornecedor: integer;
  nData, nVencimento: TDate; nNotafiscal, nDocumento: String; nNovoValor: Real;
  nPlanoConta: String; nforma_pagto: integer; shitorico, wAcao: String);
begin

   // Criar uma Query virtual
   prcQueryCriar(TblCtaReceber);

   wAcao := UpperCase(wAcao);

   if (wAcao = 'D') { deletar } then
   begin

      TblCtaReceber.SQL.Clear;
      TblCtaReceber.SQL.Add(' delete from fin_ctapagar                           ');
      TblCtaReceber.SQL.Add(' where                                              ');
      TblCtaReceber.SQL.Add(' data=:data                                         ');
      TblCtaReceber.SQL.Add(' and                                                ');
      TblCtaReceber.SQL.Add(' fornecedor=:fornecedor                             ');
      TblCtaReceber.SQL.Add(' and                                                ');
      TblCtaReceber.SQL.Add(' documento=:documento                               ');

      TblCtaReceber.ParamByName('data').AsDate := nData;
      TblCtaReceber.ParamByName('fornecedor').AsInteger := nfornecedor;
      TblCtaReceber.ParamByName('documento').AsString := nDocumento;

      TblCtaReceber.ExecSQL;

      prcQueryDeletar(TblCtaReceber);

      Exit; // nao deixar prosseguir. Ação de exclusão foi concluida.

   end;

   // -----------------------------------------------
   // -----------------------------------------------
   /// baixar contas a receber
   TblCtaReceber.SQL.Clear;
   TblCtaReceber.SQL.Add     (' insert into fin_ctapagar                           ');
   TblCtaReceber.SQL.Add     ('                                                    ');
   TblCtaReceber.SQL.Add     (' (                                                  ');
   TblCtaReceber.SQL.Add     (' empresa,                                           ');
   TblCtaReceber.SQL.Add     (' fornecedor,                                        ');
   TblCtaReceber.SQL.Add     (' data,                                              ');
   TblCtaReceber.SQL.Add     (' vencimento,                                        ');
   TblCtaReceber.SQL.Add     (' notafiscal,                                        ');
   TblCtaReceber.SQL.Add     (' documento,                                         ');
   TblCtaReceber.SQL.Add     (' valor,                                             ');
   TblCtaReceber.SQL.Add     (' PLANO_CONTAS,                                      ');
   TblCtaReceber.SQL.Add     (' forma_pagto,                                       ');
   TblCtaReceber.SQL.Add     (' historico,                                         ');
   TblCtaReceber.SQL.Add     (' complementar                                       ');
   TblCtaReceber.SQL.Add     ('                                                    ');
   TblCtaReceber.SQL.Add     (' )                                                  ');
   TblCtaReceber.SQL.Add     ('                                                    ');
   TblCtaReceber.SQL.Add     (' values                                             ');
   TblCtaReceber.SQL.Add     ('                                                    ');
   TblCtaReceber.SQL.Add     (' (                                                  ');
   TblCtaReceber.SQL.Add     ('                                                    ');
   TblCtaReceber.SQL.Add     (' :empresa,                                          ');
   TblCtaReceber.SQL.Add     (' :fornecedor,                                       ');
   TblCtaReceber.SQL.Add     (' :data,                                             ');
   TblCtaReceber.SQL.Add     (' :vencimento,                                       ');
   TblCtaReceber.SQL.Add     (' :notafiscal,                                       ');
   TblCtaReceber.SQL.Add     (' :documento,                                        ');
   TblCtaReceber.SQL.Add     (' :valor,                                            ');
   TblCtaReceber.SQL.Add     (' :PLANO_CONTAS,                                     ');
   TblCtaReceber.SQL.Add     (' :forma_pagto,                                      ');
   TblCtaReceber.SQL.Add     (' :historico,                                        ');
   TblCtaReceber.SQL.Add     (' :complementar                                      ');
   TblCtaReceber.SQL.Add     ('                                                    ');
   TblCtaReceber.SQL.Add     (' )                                                  ');

   TblCtaReceber.ParamByName('empresa').AsInteger := FSistema.Empresa;
   TblCtaReceber.ParamByName('fornecedor').AsInteger := nfornecedor;
   TblCtaReceber.ParamByName('data').AsDate := nData;
   TblCtaReceber.ParamByName('vencimento').AsDate := nVencimento;
   TblCtaReceber.ParamByName('notafiscal').AsString := nNotafiscal;
   TblCtaReceber.ParamByName('documento').AsString := nDocumento;
   TblCtaReceber.ParamByName('valor').AsFloat := nNovoValor;
   TblCtaReceber.ParamByName('PLANO_CONTAS').AsString := nPlanoConta;
   TblCtaReceber.ParamByName('forma_pagto').AsInteger := nforma_pagto;
   TblCtaReceber.ParamByName('historico').AsString := shitorico;
   TblCtaReceber.ParamByName('complementar').AsString := 'S';

   TblCtaReceber.ExecSQL;

   prcQueryDeletar(TblCtaReceber);

end;


// -----------------------------------------------------------------------------




Procedure pContasReceberLancar(ncliente, nVendedor: integer;
  nData, nVencimento: TDate; nNotafiscal, nDocumento: String; nNovoValor: Real;
  stEspecie, wAcao: String);
begin

   // Criar uma Query virtual
   prcQueryCriar(TblCtaReceber);

   wAcao := UpperCase(wAcao);

   if (wAcao = 'D') { deletar } then
   begin

      TblCtaReceber.SQL.Clear;
      TblCtaReceber.SQL.Add(' delete from fin_ctareceber                         ');
      TblCtaReceber.SQL.Add(' where                                              ');
      TblCtaReceber.SQL.Add(' data=:data                                         ');
      TblCtaReceber.SQL.Add(' and                                                ');
      TblCtaReceber.SQL.Add(' cliente=:cliente                                   ');
      TblCtaReceber.SQL.Add(' and                                                ');
      TblCtaReceber.SQL.Add(' vendedor=:vendedor                                 ');
      TblCtaReceber.SQL.Add(' and                                                ');
      TblCtaReceber.SQL.Add(' documento=:documento                               ');

      TblCtaReceber.ParamByName('data').AsDate := nData;
      TblCtaReceber.ParamByName('cliente').AsInteger := ncliente;
      TblCtaReceber.ParamByName('vendedor').AsInteger := nVendedor;
      TblCtaReceber.ParamByName('documento').AsString := nDocumento + '-(P)';

      TblCtaReceber.ExecSQL;

   end;

   // -----------------------------------------------
   // -----------------------------------------------
   /// baixar contas a receber
   if (wAcao = 'I') { inserir } then
   begin
     TblCtaReceber.SQL.Clear;
     TblCtaReceber.SQL.Add     (' insert into fin_ctareceber                         ');
     TblCtaReceber.SQL.Add     ('                                                    ');
     TblCtaReceber.SQL.Add     (' (                                                  ');
     TblCtaReceber.SQL.Add     ('                                                    ');
     TblCtaReceber.SQL.Add     (' empresa,                                           ');
     TblCtaReceber.SQL.Add     (' cliente,                                           ');
     TblCtaReceber.SQL.Add     (' vendedor,                                          ');
     TblCtaReceber.SQL.Add     (' data,                                              ');
     TblCtaReceber.SQL.Add     (' vencimento,                                        ');
     TblCtaReceber.SQL.Add     (' notafiscal,                                        ');
     TblCtaReceber.SQL.Add     (' documento,                                         ');
     TblCtaReceber.SQL.Add     (' valor,                                             ');
     TblCtaReceber.SQL.Add     (' especie,                                           ');
     TblCtaReceber.SQL.Add     (' historico,                                         ');
     TblCtaReceber.SQL.Add     (' complementar,                                      ');
     TblCtaReceber.SQL.Add     (' quitado                                            ');
     TblCtaReceber.SQL.Add     ('                                                    ');
     TblCtaReceber.SQL.Add     (' )                                                  ');
     TblCtaReceber.SQL.Add     ('                                                    ');
     TblCtaReceber.SQL.Add     (' values                                             ');
     TblCtaReceber.SQL.Add     ('                                                    ');
     TblCtaReceber.SQL.Add     (' (                                                  ');
     TblCtaReceber.SQL.Add     ('                                                    ');
     TblCtaReceber.SQL.Add     (' :empresa,                                           ');
     TblCtaReceber.SQL.Add     (' :cliente,                                          ');
     TblCtaReceber.SQL.Add     (' :vendedor,                                         ');
     TblCtaReceber.SQL.Add     (' :data,                                             ');
     TblCtaReceber.SQL.Add     (' :vencimento,                                       ');
     TblCtaReceber.SQL.Add     (' :notafiscal,                                       ');
     TblCtaReceber.SQL.Add     (' :documento,                                        ');
     TblCtaReceber.SQL.Add     (' :valor,                                            ');
     TblCtaReceber.SQL.Add     (' :especie,                                         ');
     TblCtaReceber.SQL.Add     (' :historico,                                        ');
     TblCtaReceber.SQL.Add     (' :complementar,                                      ');
     TblCtaReceber.SQL.Add     (' :quitado                                           ');
     TblCtaReceber.SQL.Add     ('                                                    ');
     TblCtaReceber.SQL.Add     (' )                                                  ');

     TblCtaReceber.ParamByName('empresa').AsInteger := FSistema.Empresa;
     TblCtaReceber.ParamByName('cliente').AsInteger := ncliente;
     TblCtaReceber.ParamByName('vendedor').AsInteger := nVendedor;
     TblCtaReceber.ParamByName('data').AsDate := nData;
     TblCtaReceber.ParamByName('vencimento').AsDate := nVencimento;
     TblCtaReceber.ParamByName('notafiscal').AsString := nNotafiscal;
     TblCtaReceber.ParamByName('documento').AsString := nDocumento + '-DN';
     TblCtaReceber.ParamByName('valor').AsFloat := nNovoValor;
     TblCtaReceber.ParamByName('especie').AsString := stEspecie;
     TblCtaReceber.ParamByName('historico').AsString := 'Proveniente de PDV: ' + nDocumento;
     TblCtaReceber.ParamByName('complementar').AsString := 'N';
     TblCtaReceber.ParamByName('quitado').AsString := 'S';
     TblCtaReceber.ExecSQL;

   end;


   prcQueryDeletar(TblCtaReceber);

end;

Procedure prcComissaoPagarPedidos(ncliente, nVendedor, nPedido: integer; nValor:Currency;wAcao: String);
begin

   // Criar uma Query virtual
   prcQueryCriar(TblCtaPagar);
   wAcao      := UpperCase(wAcao);

   nvComissao      := StrToFloatDef(fncCliente_retCampo(nVendedor,'COMISSAO'),0);
   nVlrComissao    := fncGeraPercentual(nValor, nvComissao);

   // -----------------------------------------------
   // -----------------------------------------------
   /// baixar contas a receber
   if (wAcao = 'INCLUIR') { inserir } then
   begin
     TblCtaPagar.SQL.Clear;
     TblCtaPagar.SQL.Add     ('                                             ');
     TblCtaPagar.SQL.Add     ('   insert into FIN_COMISSOES (               ');
     TblCtaPagar.SQL.Add     ('              EMPRESA,                       ');
     TblCtaPagar.SQL.Add     ('              DATA,                          ');
     TblCtaPagar.SQL.Add     ('              VENCIMENTO,                    ');
     TblCtaPagar.SQL.Add     ('              CLIENTE,                       ');
     TblCtaPagar.SQL.Add     ('              VENDEDOR,                      ');
     TblCtaPagar.SQL.Add     ('              NOTAFISCAL,                    ');
     TblCtaPagar.SQL.Add     ('              CONFERENCIA,                   ');
     TblCtaPagar.SQL.Add     ('              PEDIDO,                        ');
     TblCtaPagar.SQL.Add     ('              PEDIDOPARALELO,                ');
     TblCtaPagar.SQL.Add     ('              DOCUMENTO,                     ');
     TblCtaPagar.SQL.Add     ('              FORMA_PAGTO,                   ');
     TblCtaPagar.SQL.Add     ('              CONTACORRENTE,                 ');
     TblCtaPagar.SQL.Add     ('              CONTACAIXA,                    ');
     TblCtaPagar.SQL.Add     ('              DEPARTAMENTO,                  ');
     TblCtaPagar.SQL.Add     ('              PLANO_CONTAS,                  ');
     TblCtaPagar.SQL.Add     ('              ORIGEM,                        ');
     TblCtaPagar.SQL.Add     ('              NATUREZA,                      ');
     TblCtaPagar.SQL.Add     ('              DC,                            ');
     TblCtaPagar.SQL.Add     ('              VALOR_VENDA,                   ');
     TblCtaPagar.SQL.Add     ('              COMISSAO,                      ');
     TblCtaPagar.SQL.Add     ('              VALOR,                         ');
     TblCtaPagar.SQL.Add     ('              QUITADO,                       ');
     TblCtaPagar.SQL.Add     ('              SELECIONADO,                   ');
     TblCtaPagar.SQL.Add     ('              HISTORICO                      ');
     TblCtaPagar.SQL.Add     ('              )                              ');
     TblCtaPagar.SQL.Add     ('      values (                               ');
     TblCtaPagar.SQL.Add     ('             :NEMPRESA,                      ');
     TblCtaPagar.SQL.Add     ('              GETDATE(),                                                                                                                                             ');
     TblCtaPagar.SQL.Add     ('              GETDATE() + 30,                                                                                                                                            ');
     TblCtaPagar.SQL.Add     ('             :NCLIENTE,                                                                                                                                              ');
     TblCtaPagar.SQL.Add     ('             :NVENDEDOR,                                                                                                                                             ');
     TblCtaPagar.SQL.Add     ('             0,                                                                                                                                                      ');
     TblCtaPagar.SQL.Add     ('             (select                  CONFERENCIA                    from PEDIDOS           where  codigo=:NPEDIDO),                                                 ');
     TblCtaPagar.SQL.Add     ('             :NPEDIDO,                                                                                                                                               ');
     TblCtaPagar.SQL.Add     ('             (select                  DOCUMENTO                       from PEDIDOS           where  codigo=:NPEDIDO),                                                 ');
     TblCtaPagar.SQL.Add     (              QuotedStr('PEDIDO-'+IntToStr(nPedido))+','                                                                                                             );
     TblCtaPagar.SQL.Add     ('             (select                  FORMAPAGTO                     from vendas            where  codigo=:NPEDIDO),                                                 ');
     TblCtaPagar.SQL.Add     ('             (select                  CONTACORRENTE                  from CAD_CLIENTES      where  CODIGO=:NCLIENTE),                                                 ');
     TblCtaPagar.SQL.Add     ('             (SELECT FINANCEIRO_PAGAR_COMISSAOCONTACAIXA             FROM CONFIG_PARAMETROS WHERE EMPRESA=:NEMPRESA),                                               ');
     TblCtaPagar.SQL.Add     ('             (SELECT FINANCEIRO_PAGAR_COMISSAOCENTROCUSTO            FROM CONFIG_PARAMETROS WHERE EMPRESA=:NEMPRESA),                                               ');
     TblCtaPagar.SQL.Add     ('             (SELECT FINANCEIRO_PAGAR_COMISSAOPLANOCONTA             FROM CONFIG_PARAMETROS WHERE EMPRESA=:NEMPRESA),                                               ');
     TblCtaPagar.SQL.Add     (              QuotedStr('PEDIDO')+','                                                                                                                                 );
     TblCtaPagar.SQL.Add     (              QuotedStr('VENDA')+','                                                                                                                                      );
     TblCtaPagar.SQL.Add     (              QuotedStr('CREDITO')+','                                                                                                                                      );
     TblCtaPagar.SQL.Add     ('             :NVALOR,                                                                                                                                                ');
     TblCtaPagar.SQL.Add     ('             :NCOMISSAO,                                                                                                                                                ');
     TblCtaPagar.SQL.Add     ('             :NVALORCOMISSAO,                                                                                                                                                ');
     TblCtaPagar.SQL.Add     (              QuotedStr('N')+','                                                                                                                                          );
     TblCtaPagar.SQL.Add     (              QuotedStr('N')+','                                                                                                                                           );
     TblCtaPagar.SQL.Add     (              QuotedStr('COMISSÃO PROVENIENTE DO PEDIDO:'+IntToStr(nPedido)   )                                                                                  );
     TblCtaPagar.SQL.Add     ('                                                                                                                                                                    ');
     TblCtaPagar.SQL.Add     ('             )                                                                                                                                                      ');

     TblCtaPagar.ParamByName('NEMPRESA').AsInteger  := FSistema.Empresa;
     TblCtaPagar.ParamByName('NCLIENTE').AsInteger  := ncliente;
     TblCtaPagar.ParamByName('NVENDEDOR').AsInteger := nVendedor;
     TblCtaPagar.ParamByName('NPEDIDO').AsInteger   := nPedido;
     TblCtaPagar.ParamByName('NVALOR').AsCurrency   := nValor;
     TblCtaPagar.ParamByName('NCOMISSAO').AsCurrency        := nvComissao;
     TblCtaPagar.ParamByName('NVALORCOMISSAO').AsCurrency   := nVlrComissao;


     //Aviso(TblCtaPagar.SQL.text);

     TblCtaPagar.ExecSQL;


   end;

   if (wAcao = 'DELETAR') { deletar } then
   begin
      TblCtaPagar.SQL.Clear;
      TblCtaPagar.SQL.Add(' delete from FIN_COMISSOES                   ');
      TblCtaPagar.SQL.Add(' where                                       ');
      TblCtaPagar.SQL.Add(' empresa=:NEMPRESA                           ');
      TblCtaPagar.SQL.Add(' and                                         ');
      TblCtaPagar.SQL.Add(' cliente=:NCLIENTE                           ');
      TblCtaPagar.SQL.Add(' and                                         ');
      TblCtaPagar.SQL.Add(' vendedor=:NVENDEDOR                         ');
      TblCtaPagar.SQL.Add(' and                                         ');
      TblCtaPagar.SQL.Add(' pedido=:NPEDIDO                             ');
      TblCtaPagar.ParamByName('NEMPRESA').AsInteger  := FSistema.Empresa;
      TblCtaPagar.ParamByName('NCLIENTE').AsInteger  := ncliente;
      TblCtaPagar.ParamByName('NVENDEDOR').AsInteger := nVendedor;
      TblCtaPagar.ParamByName('NPEDIDO').AsInteger   := nPedido;
      TblCtaPagar.ExecSQL;

   end;

   prcQueryDeletar(TblCtaPagar);

end;



// -----------------------------------------------------------------------------

Function ExisteTamanho(sTamanho: String): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add
     (' select COUNT(tamanho) AS RETORNO from CAD_TAMANHOS');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     TAMANHO=:TAMANHO     ');
   FTBLOutrasFuncoes.ParamByName('TAMANHO').AsString := sTamanho;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;



Function ExisteTamanhoGrade(ncodigo: Integer; sTamanho: String): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select COUNT(tamanho) AS RETORNO from CAD_GRADELISTA');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('      TAMANHO=:TAMANHO     ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.ParamByName('TAMANHO').AsString := sTamanho;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function ExisteProcessoMaquina(ncodigo, NPROCESSO: Integer): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add
     (' select COUNT(PROCESSO) AS RETORNO  from CAD_PROCESSO_MAQUINA_DETALHE');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('      PROCESSO=:NPROCESSO     ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.ParamByName('NPROCESSO').AsInteger := NPROCESSO;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ExisteMateriaPrimaTecido(ncodigo: Integer;
  sREFERENCIA: String): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add
     (' select COUNT(REFERENCIA) AS RETORNO   from PCP_MATERIAPRIMA_TECIDOS');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA     ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString := sREFERENCIA;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ExisteMateriaPrima(ncodigo: Integer; REFERENCIA: String): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add
     (' select COUNT(REFERENCIA) AS RETORNO   from PCP_MATERIAPRIMA');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA     ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString := REFERENCIA;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function OPExisteProduto(ncodigo: Integer; REFERENCIA: String): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  select COUNT(REFERENCIA) AS RETORNO   from  PCP_ORDEMPRODUCAO_ITENS');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA     ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString := REFERENCIA;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncPedidoCompraExisteProduto(nlPedido: Integer; REFERENCIA: String): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);

   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  select  COUNT(PRODUTO) AS RETORNO    from  COMPRA_PEDIDOS_ITENS');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     EMPRESA=:NEMPRESA     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     PRODUTO=:REFERENCIA     ');
   FTBLOutrasFuncoes.ParamByName('NEMPRESA').AsInteger  := FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger   := nlPedido;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString := REFERENCIA;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncPedidoVendaExisteProduto(nlPedido: Integer; lsreferencia: String): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  select  COUNT(REFERENCIA) AS RETORNO    from  pedidos_itens');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     EMPRESA=:NEMPRESA     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA     ');
   FTBLOutrasFuncoes.ParamByName('NEMPRESA').AsInteger  := FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger   := nlPedido;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString := lsreferencia;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncValidaReferenciaGradeQuantidade(sReferencia: String): Boolean;
begin
   Result := False;
   sReferencia :=UpperCase( Trim(sReferencia) );
   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT SUM(QUANTIDADE) AS RETORNO FROM CAD_PRODUTOS_GRADES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:SREFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('SREFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function fncPedidoVendaExisteProdutoGrade(nlPedido: Integer; lsreferencia: String): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  select  COUNT(REFERENCIA) AS RETORNO    from  PEDIDOS_ITENS_GRADE');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     EMPRESA=:NEMPRESA     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA     ');
   FTBLOutrasFuncoes.ParamByName('NEMPRESA').AsInteger  := FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger   := nlPedido;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString := lsreferencia;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ValidaPedidoConferenciaProduto(nPedido: Integer; sIdentificador: String): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  select  COUNT(IDENTIFICADOR) AS RETORNO    from  VIEW_PEDIDOS_VENDIDOS');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:SREFERENCIA     ');
//   TblOutrasFuncoes.SQL.Add('  and                         ');
//   TblOutrasFuncoes.SQL.Add('  QUANTIDADE>0           ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := nPedido;
   FTBLOutrasFuncoes.ParamByName('SREFERENCIA').AsString := sIdentificador;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ValidaPedidoRestante(nPedido: Integer; sIdentificador: String): integer;
begin

   Result := 0;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add
     ('  select QTDEVENDIDA, QTDERESTANTE   from  VIEW_PEDIDO_QTDERESTANTE ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     PEDIDO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:IDENTIFICADOR     ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := nPedido;
   FTBLOutrasFuncoes.ParamByName('IDENTIFICADOR').AsString := sIdentificador;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('QTDERESTANTE').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ValidaConferenciaRestante(nPedido: Integer; sReferecia, sCor, sTamanho: String): integer;
begin

   Result := 0;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  select *   from  VIEW_PEDIDO_QTDERESTANTE ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  AND                         ');
   FTBLOutrasFuncoes.SQL.Add('  REFERENCIA=:REFERENCIA     ');
   FTBLOutrasFuncoes.SQL.Add('  AND                         ');
   FTBLOutrasFuncoes.SQL.Add('  TAMANHO=:TAMANHO     ');
   FTBLOutrasFuncoes.SQL.Add('  AND                         ');
   FTBLOutrasFuncoes.SQL.Add('  COR=:COR     ');


   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := nPedido;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString := sReferecia;
   FTBLOutrasFuncoes.ParamByName('COR').AsString := sCor;
   FTBLOutrasFuncoes.ParamByName('TAMANHO').AsString := sTamanho;
   FTBLOutrasFuncoes.Open;

      Result := FTBLOutrasFuncoes.FieldByName('QTDERESTANTE').AsInteger;
   {
   if TblOutrasFuncoes.FieldByName('QTDERESTANTE').AsInteger>0 then
      Result := TblOutrasFuncoes.FieldByName('QTDERESTANTE').AsInteger
   else
      Result := TblOutrasFuncoes.FieldByName('QTDECONFERIDA').AsInteger;
   }


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ValidaPedidoVendida(nPedido: Integer; sIdentificador: String): integer;
begin

   Result := 0;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  select QTDEVENDIDA, QTDERESTANTE   from  VIEW_PEDIDO_QTDERESTANTE ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:SREFERENCIA     ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := nPedido;
   FTBLOutrasFuncoes.ParamByName('SREFERENCIA').AsString := sIdentificador;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('QTDEVENDIDA').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ValidaPedidoDisponivel(nPedido: Integer; sIdentificador: String): Boolean;
begin
{
   Result := 0;

   // Criar uma Query virtual
   prcQueryCriar(TblOutrasFuncoes);


   TblOutrasFuncoes.SQL.Clear;
   TblOutrasFuncoes.SQL.Add('  select *  from  VIEW_PEDIDO_QTDERESTANTE ');
   TblOutrasFuncoes.SQL.Add('  where                         ');
   TblOutrasFuncoes.SQL.Add('     PEDIDO=:NCODIGO     ');
   TblOutrasFuncoes.SQL.Add('  and                         ');
   TblOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:IDENTIFICADOR     ');
   TblOutrasFuncoes.ParamByName('NCODIGO').AsInteger := nPedido;
   TblOutrasFuncoes.ParamByName('IDENTIFICADOR').AsString := sIdentificador;
   TblOutrasFuncoes.Open;

   Result := TblOutrasFuncoes.FieldByName('QTDERESTANTE').AsInteger>0;


   prcQueryDeletar(TblOutrasFuncoes);
}

end;


Function ExisteMaquina(ncodigo { ,NMAQUINA } : Integer): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add
     (' select COUNT(ID_MAQUINA) AS RETORNO   from PCP_MAQUINAS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   // TblOutrasFuncoes.SQL.Add('  and                         ');
   // TblOutrasFuncoes.SQL.Add('      ID_MAQUINA=:NMAQUINA     ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   // TblOutrasFuncoes.ParamByName('NMAQUINA').AsInteger     :=NMAQUINA;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function CustoExternoChecarGrade(ncodigo, NCUSTO: Integer): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select COUNT(CODIGOCUSTO) AS RETORNO   from PCP_CUSTOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('      CODIGOCUSTO=:NCUSTO     ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.ParamByName('NCUSTO').AsInteger := NCUSTO;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function CustoExternoExiste(ncodigo : Integer): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select COUNT(CODIGO) AS RETORNO   from TPRECOSERVICO ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function CustoExternoRetornaNome(nCodigo: Integer): String;
begin

   Result :='';

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM TPRECOSERVICO ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                 ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger :=  nCodigo;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('NOME').AsString;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function CustoExternoRetornaValor(nCodigo: Integer): Real;
begin

   Result :=0;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM TPRECOSERVICO ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                 ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger :=  nCodigo;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('VLR_UNIT').AsFloat;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncCustoFornecedorRetornaValor(nCodigo: Integer): Real;
begin

   Result :=0;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                 ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger :=  nCodigo;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('VALOR_SERVICOS').AsFloat;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function ExisteCustoProcesso(ncodigo, NCUSTO: Integer): Boolean;
begin

   Result := False;

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select COUNT(ID_PROCESSO) AS RETORNO   from PCP_PROCESSOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('      ID_PROCESSO=:ID_PROCESSO     ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.ParamByName('ID_PROCESSO').AsInteger := NCUSTO;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function fncIdentificadorReferencia(sReferencia: String; IDCor, IDTamanho : Integer): String;
begin

   Result :='';
   sReferencia :=UpperCase( Trim(sReferencia) );

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);

   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM  VIEW_CADPRODUTOS_GRADES ');
   FTBLOutrasFuncoes.SQL.Add('  Where                          ');
   FTBLOutrasFuncoes.SQL.Add('  REFERENCIA=:REFERENCIA        ');
   FTBLOutrasFuncoes.SQL.Add('  AND        ');
   FTBLOutrasFuncoes.SQL.Add('  COR_ID=:IDCOR    ');
   FTBLOutrasFuncoes.SQL.Add('  AND        ');
   FTBLOutrasFuncoes.SQL.Add('  TAMANHO_ID=:IDTAMANHO    ');

   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('IDCOR').AsInteger     :=  IDCor;
   FTBLOutrasFuncoes.ParamByName('IDTAMANHO').AsInteger :=  IDTamanho;
   FTBLOutrasFuncoes.Open;

   Result := TRIM(FTBLOutrasFuncoes.FieldByName('IDENTIFICADOR').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);


end;

Function fncIdentificadorReferenciaTXT(sReferencia, IDCor, IDTamanho : String): String;
begin

   Result :='';
   sReferencia :=UpperCase( Trim(sReferencia) );

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);

   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM  VIEW_CADPRODUTOS_GRADES ');
   FTBLOutrasFuncoes.SQL.Add('  Where                          ');
   FTBLOutrasFuncoes.SQL.Add('  REFERENCIA=:SREFERENCIA        ');
   FTBLOutrasFuncoes.SQL.Add('  AND        ');
   FTBLOutrasFuncoes.SQL.Add('  COR LIKE :SCOR    ');
   FTBLOutrasFuncoes.SQL.Add('  AND        ');
   FTBLOutrasFuncoes.SQL.Add('  TAMANHO=:STAMANHO    ');

   FTBLOutrasFuncoes.ParamByName('SREFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('SCOR').AsString        :=  copy(IDCor,1,29)+'%';
   FTBLOutrasFuncoes.ParamByName('STAMANHO').AsString    :=  IDTamanho;
   FTBLOutrasFuncoes.Open;

   Result := TRIM(FTBLOutrasFuncoes.FieldByName('IDENTIFICADOR').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);


end;

Function fncMontarIdentificador(sReferencia: String; IDCor, IDTamanho : Integer): String;
begin

   Result :='***';
   sReferencia :=UpperCase( Trim(sReferencia) );

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);

   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  select dbo.FNC_IDENTIFICADOR(:SREFERENCIA, :IDCOR, :IDTAMANHO ) AS IDENTIFICADOR ');
   FTBLOutrasFuncoes.ParamByName('SREFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('IDCOR').AsInteger      :=  IDCor;
   FTBLOutrasFuncoes.ParamByName('IDTAMANHO').AsInteger  :=  IDTamanho;
   FTBLOutrasFuncoes.Open;

   Result := TRIM(FTBLOutrasFuncoes.FieldByName('IDENTIFICADOR').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);


end;


Function RetornaIdentificadorIDCor(sReferencia: String ): Integer;
begin

   Result :=0;
   sReferencia :=UpperCase( Trim(sReferencia) );

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM VIEW_GRADEREFERENCIA ');
   FTBLOutrasFuncoes.SQL.Add('  Where                          ');
   FTBLOutrasFuncoes.SQL.Add('  IDENTIFICADOR=:IDENTIFICADOR        ');

   FTBLOutrasFuncoes.ParamByName('IDENTIFICADOR').AsString :=   sReferencia;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('COR_CODIGO').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);


end;


Function RetornaIdentificadorReferencia(sReferencia: String ): String;
begin

   Result :='';
   sReferencia :=UpperCase( Trim(sReferencia) );

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM VIEW_CADPRODUTOS_GRADES ');
   FTBLOutrasFuncoes.SQL.Add('  Where                          ');
   FTBLOutrasFuncoes.SQL.Add('  IDENTIFICADOR=:IDENTIFICADOR        ');

   FTBLOutrasFuncoes.ParamByName('IDENTIFICADOR').AsString :=   sReferencia;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('REFERENCIA').AsString>'' then
      Result := FTBLOutrasFuncoes.FieldByName('REFERENCIA').AsString
   else
      Result := sReferencia;

   prcQueryDeletar(FTBLOutrasFuncoes);


end;

Function RetornaIdentificadorIDTamanho(sReferencia: String ): Integer;
begin

   Result :=0;
   sReferencia :=UpperCase( Trim(sReferencia) );

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM VIEW_GRADEREFERENCIA ');
   FTBLOutrasFuncoes.SQL.Add('  Where                          ');
   FTBLOutrasFuncoes.SQL.Add('  IDENTIFICADOR=:IDENTIFICADOR        ');

   FTBLOutrasFuncoes.ParamByName('IDENTIFICADOR').AsString :=   sReferencia;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('TAMANHO_CODIGO').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);


end;

Function ValidaReferencia(sReferencia: String): Boolean;
begin

   Result := False;

   sReferencia :=UpperCase( Trim(sReferencia) );

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM CAD_PRODUTOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;



   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncValidaReferenciaGrade(sReferencia: String): Boolean;
begin
   Result := False;
   sReferencia :=UpperCase( Trim(sReferencia) );
   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM VIEW_CADPRODUTOS_GRADES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:SREFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('SREFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncValidaAndamentoReferenciaGrade(lnOrdemProducao:integer;sReferencia: String): Boolean;
begin
   Result := False;
   sReferencia :=UpperCase( Trim(sReferencia) );
   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM PCP_ORDEMPRODUCAO_ANDAMENTO ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:SREFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('SREFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function fncValidaReferenciaQuantidadeGrade(sReferencia: String): Boolean;
begin
   Result := False;
   sReferencia :=UpperCase( Trim(sReferencia) );
   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM CAD_PRODUTOS_GRADES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:SREFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('SREFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncValidaReferenciaQuantidadeGradeQualidade(sReferencia: String): Boolean;
begin
   Result := False;
   sReferencia :=UpperCase( Trim(sReferencia) );
   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM CAD_PRODUTOS_GRADESQUALIDADES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:SREFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('SREFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function fncValidaAndamentoReferenciaGradeQualidade(sReferencia: String): Boolean;
begin
   Result := False;
   sReferencia :=UpperCase( Trim(sReferencia) );
   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM CAD_PRODUTOS_GRADESQUALIDADES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:SREFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('SREFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function RetornaReferenciaCodigoID(sReferencia: String): Integer;
begin
   Result :=0;

   sReferencia :=UpperCase( Trim(sReferencia) );

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_PRODUTOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     EMPRESA=:EMPRESA    ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('CODIGO').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function fncReferenciaNome(sReferencia: String): String;
begin
   Result :='';

   sReferencia :=UpperCase( Trim(sReferencia) );

   // Criar uma Query virtual
   prcQueryCriar(FTBLOutrasFuncoes);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_PRODUTOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   Result :=TRIM(FTBLOutrasFuncoes.FieldByName('DESCRICAO').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function RetornaReferenciaReduzido(sReferencia: String): String;
Var
  svarReferencia  : String;
begin
   Result         :='';
   sReferencia    :=UpperCase( Trim(sReferencia) );
   svarReferencia :=fncProduto_retCampo(strReferencia,'REFERENCIAREDUZIDA');
   Result         :=  IfThen(svarReferencia<>'',svarReferencia,fncProduto_retCampo(strReferencia,'REFERENCIA'));
end;

Function RetornaReferenciaNomeReduzido(sReferencia: String): String;
Var
  svarDescricao  : String;
begin
   Result         := '';
   sReferencia    := UpperCase( Trim(sReferencia) );
   svarDescricao  := fncProduto_retCampo(strReferencia,'DESCRICAOREDUZIDA');
   Result         := IfThen(svarDescricao<>'',svarDescricao,fncProduto_retCampo(strReferencia,'DESCRICAO'));
end;



Function RetornaReferenciaPrecoVenda(sReferencia: String): Real;
begin

   Result :=0;
   sReferencia :=UpperCase( Trim(sReferencia) );
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_PRODUTOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;
   Result :=FTBLOutrasFuncoes.FieldByName('PRC_VENDA').AsFloat;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ValidaReferenciaTabela(nTabela:Integer;sReferencia: String): Boolean;
begin

   Result := False;

   sReferencia :=UpperCase( Trim(sReferencia) );

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM TPRECO_REFERENCIAS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.SQL.Add('  AND                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA    ');

   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger   :=  nTabela;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;



   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function RetornaReferenciaPrecoTabela(nTabela:Integer;sReferencia: String): Real;
begin

   Result :=0;

   sReferencia :=UpperCase( Trim(sReferencia) );

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM TPRECO_REFERENCIAS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.SQL.Add('  AND                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA    ');

   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger   :=  nTabela;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('PRC_VENDA').AsFloat;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function RetornaTaxaDolar : Real;
begin
   Result :=0;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM FIN_COTACAOMOEDA ');
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('DOLAR').AsFloat;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function RetornaTaxaEuro : Real;
begin
   Result :=0;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM FIN_COTACAOMOEDA ');
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('EURO').AsFloat;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function fncReferenciaPrecoCusto(sReferencia: String): Real;
begin

   Result :=0;
   sReferencia :=UpperCase( Trim(sReferencia) );
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_PRODUTOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;
   Result :=FTBLOutrasFuncoes.FieldByName('PRC_CUSTO').AsFloat;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function RetornaPedidoReferenciaNome(nPedido:Integer;sReferencia: String): String;
begin
   Result :='';

   sReferencia :=UpperCase( Trim(sReferencia) );

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM PEDIDOS_ITENS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('  REFERENCIA=:REFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger :=  nPedido;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   Result :=TRIM(FTBLOutrasFuncoes.FieldByName('DESCRICAO').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function RetornaPedidoferenciaPrecoVenda(nPedido:Integer;sReferencia: String): Real;
begin
   Result :=0;

   sReferencia :=UpperCase( Trim(sReferencia) );

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM PEDIDOS_ITENS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('  REFERENCIA=:REFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger :=  nPedido;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('VLR_UNIT').AsFloat;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function RetornaPedidoCliente(nPedido:Integer): Integer;
begin
   Result :=0;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM PEDIDOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger :=  nPedido;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('CLIENTE').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function RetornaPedidoVendedor(nPedido:Integer): Integer;
begin
   Result :=0;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM PEDIDOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger :=  nPedido;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('VENDEDOR').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function RetornaPedidoFormaPagamento(nPedido:Integer): Integer;
begin
   Result :=0;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM PEDIDOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger :=  nPedido;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('FORMAPAGTO').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function RetornaPedidoTransportadora(nPedido:Integer): Integer;
begin
   Result :=0;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM PEDIDOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger :=  nPedido;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('TRANSPORTADORA').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ValidarReferenciaProducao(nOrdemProucao:Integer;sReferencia: String): Boolean;
begin

   Result := False;

   sReferencia :=UpperCase( Trim(sReferencia) );

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM PCP_ORDEMPRODUCAO_ITENS ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add('     ORDEMPRODUCAO=:CODIGO             ');
   FTBLOutrasFuncoes.SQL.Add('  AND                           ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA     ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger    :=  nOrdemProucao;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncOrdemProducaoSomar(nOrdemProucao:Integer): Real;
begin

   Result := 0;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT SUM(QUANTIDADE) AS QUANTIDADE FROM PCP_ORDEMPRODUCAO_ITENS ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add('     EMPRESA=:EMPRESA             ');
   FTBLOutrasFuncoes.SQL.Add('  AND                           ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO             ');
   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger    :=  nOrdemProucao;
   FTBLOutrasFuncoes.Open;
   Result := FTBLOutrasFuncoes.FieldByName('QUANTIDADE').AsFloat;
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function ValidarOrdemProducao(nOrdemProucao:Integer): Boolean;
begin

   Result := False;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM PCP_ORDEMPRODUCAO ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO             ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger    :=  nOrdemProucao;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncOrdemProducaoEncerrado(nOrdemProucao:Integer): Boolean;
begin

   Result := False;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM PCP_ORDEMPRODUCAO ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                            ');
   FTBLOutrasFuncoes.SQL.Add('     EMPRESA=:EMPRESA              ');
   FTBLOutrasFuncoes.SQL.Add('  AND                              ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO                ');
    FTBLOutrasFuncoes.SQL.Add('  AND                             ');
   FTBLOutrasFuncoes.SQL.Add('     ENCERRADO IN (''S'',''SIM'')  ');
   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger    :=  nOrdemProucao;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function ValidarOrdemProducaoAutorizada(nOrdemProucao:Integer): Boolean;
begin

   Result := False;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM PCP_ORDEMPRODUCAO  ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                            ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO                ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger    :=  nOrdemProucao;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('AUTORIZADO').AsString='S' then
   begin
      Result := True;
   end;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function ValidarDistribuicaoRemessa(nRemessa:Integer): Boolean;
begin

   Result := False;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM PCP_DISTRIBUIR ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO             ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger    :=  nRemessa;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function RetornaDistribuicaoOrdemProducao(nRemessa:Integer): Integer;
begin

   Result := 0;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM PCP_DISTRIBUIR ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO             ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger    :=  nRemessa;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('ORDEMPRODUCAO').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function RetornaDistribuicaoTerceirizado(nRemessa:Integer): Integer;
begin

   Result := 0;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM PCP_DISTRIBUIR ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO             ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger    :=  nRemessa;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('FORNECEDOR').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ValidarStatusOrdemProducao(nOrdemProucao:Integer): Boolean;
begin

   Result := False;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM PCP_ORDEMPRODUCAO  ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                            ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO                ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger    :=  nOrdemProucao;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('ENCERRADO').AsString='S' then
   begin
      Result := True;
   end;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Procedure prcFaseAndamento(lOficina,lnOP,lnFaseTransferencia, lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer;blultimafase:boolean);
begin

   prcQueryCriar(FTBLOutrasFuncoes);

   if lQuantidade=Null then
      lQuantidade:=0;

   // Atualizar Fase Destino
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET   ');
   FTBLOutrasFuncoes.SQL.Add(' TERCEIRIZADO=:NTERCEIRIZADO,             ');
   FTBLOutrasFuncoes.SQL.Add(' FASETRANSFERENCIA=:NFASETRANSF,   ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_PRODUZIR=QTDE_PRODUZIR+:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' ,QTDE_TRANSFERIDA=QTDE_TRANSFERIDA+:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEDESTINO                   ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger       :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger        :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString     :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEDESTINO').AsInteger   :=  lnFaseDestino;
   FTBLOutrasFuncoes.ParamByName('NTERCEIRIZADO').AsInteger :=  lOficina;
   FTBLOutrasFuncoes.ParamByName('NFASETRANSF').AsInteger   :=  lnFaseTransferencia;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger   :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger       :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger   :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;

   // Atualizar Fase Origem
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');

      FTBLOutrasFuncoes.SQL.Add(' QTDE_PRODUZIR=QTDE_PRODUZIR-:NQUANTIDADE ');
      FTBLOutrasFuncoes.SQL.Add(' ,QTDE_TRANSFERIDA=QTDE_TRANSFERIDA-:NQUANTIDADE ');

   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEORIGEM                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEORIGEM').AsInteger   :=  lnFaseOrigem;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Procedure prcFaseAndamentoTransferirEstoque(lOficina,lnOP,lnFaseTransferencia, lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);
begin

   prcQueryCriar(FTBLOutrasFuncoes);

   if lQuantidade=Null then
      lQuantidade:=0;

   // Atualizar Fase Origem
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_PRODUZIR=QTDE_PRODUZIR-:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEORIGEM                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEORIGEM').AsInteger   :=  lnFaseOrigem;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;

      // Atualizar PCP_ORDEMPRODUCAO_MOVIMENTO
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_MOVIMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_PRODUZIDA=QTDE_PRODUZIDA+:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;

   // Atualizar PCP_ORDEMPRODUCAO_MOVIMENTO
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_MOVIMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_RESTANTE=QTDE_RESTANTE-:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;

   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Procedure prcFaseAndamentoBaixar(lnFaseTransferencia, lnFaseOrigem,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);
begin

   prcQueryCriar(FTBLOutrasFuncoes);

   if lQuantidade=Null then
      lQuantidade:=0;

   // Atualizar Fase Destino
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_FASETRANSFERENCIA_REFERENCIAS   SET   ');
   FTBLOutrasFuncoes.SQL.Add(' FASECONCLUIDA=''S''                 ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEORIGEM                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger       :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger        :=  lnFaseTransferencia;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString     :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEORIGEM').AsInteger    :=  lnFaseOrigem;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger       :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger   :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Procedure prcFaseDefeito(lnOP,lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);
begin

   prcQueryCriar(FTBLOutrasFuncoes);

   if lQuantidade=Null then
      lQuantidade:=0;

   // Atualizar Fase Destino
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_DEFEITO=QTDE_DEFEITO+:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEDESTINO                   ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEDESTINO').AsInteger  :=  lnFaseDestino;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;

   // Atualizar Fase Origem
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_PRODUZIR=QTDE_PRODUZIR-:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEORIGEM                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEORIGEM').AsInteger   :=  lnFaseOrigem;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Procedure prcFaseDefeitoEstornar(lnOP,lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);
begin

   prcQueryCriar(FTBLOutrasFuncoes);

   if lQuantidade=Null then
      lQuantidade:=0;

   // Atualizar Fase Destino
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_DEFEITO=QTDE_DEFEITO-:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEDESTINO                   ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEDESTINO').AsInteger  :=  lnFaseDestino;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;

   // Atualizar Fase Origem
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_PRODUZIR=QTDE_PRODUZIR+:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEORIGEM                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEORIGEM').AsInteger   :=  lnFaseOrigem;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;


   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Procedure prcFaseDefeitoAndamento(lnOP,lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);
begin

   prcQueryCriar(FTBLOutrasFuncoes);

   if lQuantidade=Null then
      lQuantidade:=0;

   // Atualizar Fase Destino
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_DEFEITO=:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEDESTINO                   ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEDESTINO').AsInteger  :=  lnFaseDestino;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;


   // Atualizar Fase Origem
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_PRODUZIR=QTDE_PRODUZIR-:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEORIGEM                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEORIGEM').AsInteger   :=  lnFaseOrigem;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Procedure prcFasePerda(lnOP,lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);
begin

   prcQueryCriar(FTBLOutrasFuncoes);

   if lQuantidade=Null then
      lQuantidade:=0;

   // Atualizar Fase Destino
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_PERDA=QTDE_PERDA+:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEDESTINO                   ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEDESTINO').AsInteger  :=  lnFaseDestino;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;

   // Atualizar Fase Origem
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_PRODUZIR=QTDE_PRODUZIR-:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEORIGEM                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEORIGEM').AsInteger   :=  lnFaseOrigem;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Procedure prcFasePerdaEstornar(lnOP,lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);
begin

   prcQueryCriar(FTBLOutrasFuncoes);

   if lQuantidade=Null then
      lQuantidade:=0;

   // Atualizar Fase Destino
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_PERDA=QTDE_PERDA-:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEDESTINO                   ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEDESTINO').AsInteger  :=  lnFaseDestino;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;

   // Atualizar Fase Origem
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_PRODUZIR=QTDE_PRODUZIR+:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEORIGEM                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEORIGEM').AsInteger   :=  lnFaseOrigem;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Procedure prcFasePerdaAndamento(lnOP,lnFaseOrigem,lnFaseDestino,lnCor,lnTamanho:Integer;sReferencia:String;lQuantidade:Integer);
begin

   prcQueryCriar(FTBLOutrasFuncoes);

   if lQuantidade=Null then
      lQuantidade:=0;

   // Atualizar Fase Destino
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_PERDA=:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEDESTINO                   ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEDESTINO').AsInteger  :=  lnFaseDestino;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;


   // Atualizar Fase Origem
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE PCP_ORDEMPRODUCAO_ANDAMENTO SET  ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_PRODUZIR=QTDE_PRODUZIR-:NQUANTIDADE ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASEORIGEM                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASEORIGEM').AsInteger   :=  lnFaseOrigem;
   FTBLOutrasFuncoes.ParamByName('NQUANTIDADE').AsInteger  :=  lQuantidade;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;
  
   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function fncFaseValidarQuantidade(sReferencia:String;lnOP,lnFase,lnCor,lnTamanho,lQuantidade:Integer) : Boolean;
begin

   Result :=False;

   prcQueryCriar(FTBLOutrasFuncoes);

   if lQuantidade=Null then
      lQuantidade:=0;

   // Atualizar Fase Destino
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT QTDE_PRODUZIR   ');
   FTBLOutrasFuncoes.SQL.Add(' FROM PCP_ORDEMPRODUCAO_ANDAMENTO ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                               ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO                      ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' REFERENCIA=:REFERENCIA              ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' FASE=:FASE                          ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID=:NCOR_ID                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID=:NTAMANHO_ID             ');
   FTBLOutrasFuncoes.SQL.Add(' AND                                 ');
   FTBLOutrasFuncoes.SQL.Add(' QTDE_PRODUZIR>0                     ');



   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger      :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger       :=  lnOP;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.ParamByName('FASE').AsInteger         :=  lnFase;
   FTBLOutrasFuncoes.ParamByName('NCOR_ID').AsInteger      :=  lnCor;
   FTBLOutrasFuncoes.ParamByName('NTAMANHO_ID').AsInteger  :=  lnTamanho;
   FTBLOutrasFuncoes.Open;

   // se a quantidade digitada for maior que a disponivel, retornar como "True"
   if lQuantidade>FTBLOutrasFuncoes.FieldByName('QTDE_PRODUZIR').AsInteger then
      Result :=True;

   FTBLOutrasFuncoes.Close;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function RetornaReferenciaQuantidade(sReferencia: String): Real;
begin
   Result :=0;

   sReferencia :=UpperCase( Trim(sReferencia) );

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_PRODUTOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('ESTOQUESALDO').AsFloat;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncProduto_retCampo(sReferencia,slCampo:String): String;
begin

   Result :='';
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM CAD_PRODUTOS  ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;
   Result := UpperCase( FTBLOutrasFuncoes.FieldByName(slCampo).AsString );
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function fncProdutoGrade_retCampo(sReferencia,slCampo:String): String;
begin

   Result :='';
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM CAD_PRODUTOS_GRADES  ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:IDENTIFICADOR    ');
   FTBLOutrasFuncoes.ParamByName('IDENTIFICADOR').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;
   Result := UpperCase( FTBLOutrasFuncoes.FieldByName(slCampo).AsString );
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function prcOrdemProducao_retCampo(lnOrdemProducao:integer;slCampo:String) : String;
begin

   Result :='';
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM PCP_ORDEMPRODUCAO  ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                         ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger  :=  lnOrdemProducao;
   FTBLOutrasFuncoes.Open;
   Result := UpperCase( FTBLOutrasFuncoes.FieldByName(slCampo).AsString );
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function prcOrdemProducaoAndamento_retCampo(lnOrdemProducao:integer;slIdentificador,slCampo:String) : String;
begin
   Result :='';
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM PCP_ORDEMPRODUCAO_ANDAMENTO  ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                         ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                         ');
   FTBLOutrasFuncoes.SQL.Add(' IDENTIFICADOR=:IDENTIFICADOR    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                         ');
   FTBLOutrasFuncoes.SQL.Add(' COR_ID>0                    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                         ');
   FTBLOutrasFuncoes.SQL.Add(' TAMANHO_ID>0                ');
   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger       :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger        :=  lnOrdemProducao;
   FTBLOutrasFuncoes.ParamByName('IDENTIFICADOR').AsString  :=  slIdentificador;
   FTBLOutrasFuncoes.Open;
   Result := UpperCase( FTBLOutrasFuncoes.FieldByName(slCampo).AsString );
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function GetParametros : TParametros;
begin
   Result := nil;
   Result := TParametros.Create;
   prcQueryCriar(FTBLOutrasFuncoes);
   Try
      FTBLOutrasFuncoes.SQL.Clear;
      FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM CONFIG_PARAMETROS  ');
      FTBLOutrasFuncoes.SQL.Add(' WHERE                         ');
      FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA    ');
      FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger :=  FSistema.Empresa;
      FTBLOutrasFuncoes.Open;

      Result.Empresa.Codigo                              := FTBLOutrasFuncoes.FieldByName('EMPRESA').AsInteger;
      Result.Empresa.DataAtividade                       := FTBLOutrasFuncoes.FieldByName('SISTEMA_DATABASE').AsDateTime;
      Result.Empresa.Nome                                := FTBLOutrasFuncoes.FieldByName('EMPRESA_NOME').AsString;
      Result.Empresa.NomeFantasia                        := FTBLOutrasFuncoes.FieldByName('EMPRESA_NOME_FANTASIA').AsString;
      Result.Empresa.CNPJ                                := FTBLOutrasFuncoes.FieldByName('EMPRESA_CNPJ').AsString;
      Result.Empresa.IE                                  := FTBLOutrasFuncoes.FieldByName('EMPRESA_IE').AsString;
      Result.Empresa.IEmunicipal                         := FTBLOutrasFuncoes.FieldByName('EMPRESA_IEMUNICIPAL').AsString;
      Result.Empresa.Endereco                            := FTBLOutrasFuncoes.FieldByName('EMPRESA_ENDERECO').AsString;
      Result.Empresa.Numero                              := FTBLOutrasFuncoes.FieldByName('EMPRESA_NUMERO').AsString;
      Result.Empresa.Bairro                              := FTBLOutrasFuncoes.FieldByName('EMPRESA_BAIRRO').AsString;
      Result.Empresa.Complemento                         := FTBLOutrasFuncoes.FieldByName('EMPRESA_COMPLEMENTO').AsString;
      Result.Empresa.Cep                                 := FTBLOutrasFuncoes.FieldByName('EMPRESA_CEP').AsString;
      Result.Empresa.Fone                                := FTBLOutrasFuncoes.FieldByName('EMPRESA_FONE').AsString;
      Result.Empresa.Fax                                 := FTBLOutrasFuncoes.FieldByName('EMPRESA_FAX').AsString;
      Result.Empresa.Email                               := FTBLOutrasFuncoes.FieldByName('EMPRESA_EMAIL').AsString;
      Result.Empresa.Site                                := FTBLOutrasFuncoes.FieldByName('EMPRESA_SITE').AsString;
      Result.Empresa.Contato                             := FTBLOutrasFuncoes.FieldByName('EMPRESA_CONTATO').AsString;
      Result.Empresa.CodigoCidade                        := FTBLOutrasFuncoes.FieldByName('EMPRESA_CODIGOCIDADE').AsInteger;
      Result.Empresa.Cidade                              := FTBLOutrasFuncoes.FieldByName('EMPRESA_CIDADE').AsString;
      Result.Empresa.UF                                  := FTBLOutrasFuncoes.FieldByName('EMPRESA_UF').AsString;
      Result.Empresa.CodigoPais                          := FTBLOutrasFuncoes.FieldByName('EMPRESA_CODIGOPAIS').AsInteger;
      Result.Empresa.NomePais                            := FTBLOutrasFuncoes.FieldByName('EMPRESA_NOMEPAIS').AsString;
      Result.Empresa.RegimeTributario                    := FTBLOutrasFuncoes.FieldByName('EMPRESA_REGIMETRIBUTARIO').AsInteger;
      Result.Empresa.RegimeTributarioAliquota            := FTBLOutrasFuncoes.FieldByName('EMPRESA_REGIMETRIBUTARIOALIQUOTA').AsFloat;

      Result.Produto.Codificacao                         := FTBLOutrasFuncoes.FieldByName('PRODUTO_CODIFICACAO').AsString;
      Result.Produto.Separador                           := FTBLOutrasFuncoes.FieldByName('PRODUTO_SEPARADOR').AsString;
      Result.Produto.Grupo                               := FTBLOutrasFuncoes.FieldByName('PRODUTO_GRUPO').AsInteger;
      Result.Produto.Subgrupo                            := FTBLOutrasFuncoes.FieldByName('PRODUTO_SUBGRUPO').AsInteger;
      Result.Produto.Produto                             := FTBLOutrasFuncoes.FieldByName('PRODUTO_PRODUTO').AsInteger;
      Result.Produto.EstoqueNegativo                     := FTBLOutrasFuncoes.FieldByName('PRODUTO_ESTOQUENEGATIVO').AsString;
      Result.Produto.SituacaoTributaria                  := FTBLOutrasFuncoes.FieldByName('PRODUTO_SITUACAO_TRIBUTARIA').AsString;
      Result.Produto.ClassificacaoFiscal                 := FTBLOutrasFuncoes.FieldByName('PRODUTO_CLASSIFICACAO_FISCAL').AsString;
      Result.Produto.NCM                                 := FTBLOutrasFuncoes.FieldByName('PRODUTO_NCM').AsString;

      Result.Producao.QualidadePadrao                    := FTBLOutrasFuncoes.FieldByName('PRODUTO_QUALIDADEPADRAO').AsInteger;
      Result.Producao.ProducaoFinalizar                  := FTBLOutrasFuncoes.FieldByName('PRODUCAOFINALIZAR').AsString;

      Result.Financeiro.Juros                            := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_JUROS').AsFloat;
      Result.Financeiro.Cartorio                         := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_CARTORIO').AsFloat;
      Result.Financeiro.CobrancaDias                     := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_COBRANCADIAS').AsInteger;
      Result.Financeiro.VendaVistaBaixar                 := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_VENDAVISTABAIXAR').AsString;
      Result.Financeiro.DiasBloqueio                     := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_DIASBLOQUEIO').AsInteger;
      Result.Financeiro.PagarLancarCaixa                 := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_PAGAR_LANCARCAIXA').AsString;
      Result.Financeiro.PagarLancarBanco                 := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_PAGAR_LANCARBANCO').AsString;
      Result.Financeiro.PagarComissao                    := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_PAGAR_COMISSAO').AsString;
      Result.Financeiro.PagarContaCaixa                  := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_PAGAR_CONTACAIXA').AsInteger;
      Result.Financeiro.PagarPlanoContas                 := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_PAGAR_PLANOCONTAS').AsString;
      Result.Financeiro.PagarComissaoVencimento          := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_PAGAR_COMISSAOVENCIMENTO').AsInteger;
      Result.Financeiro.PagarComissaoContaCaixa          := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_PAGAR_COMISSAOCONTACAIXA').AsInteger;
      Result.Financeiro.PagarComissaoCentroCusto         := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_PAGAR_COMISSAOCENTROCUSTO').AsInteger;
      Result.Financeiro.PagarComissaoPlanoconta          := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_PAGAR_COMISSAOPLANOCONTA').AsString;
      Result.Financeiro.ReceberLancarCaixa               := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_RECEBER_LANCARCAIXA').AsString;
      Result.Financeiro.ReceberLancarBanco               := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_RECEBER_LANCARBANCO').AsString;
      Result.Financeiro.ReceberContaCaixa                := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_RECEBER_CONTACAIXA').AsInteger;
      Result.Financeiro.ReceberPlanoContas               := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_RECEBER_PLANOCONTAS').AsString;
      Result.Financeiro.BalcaoLancarCaixa                := FTBLOutrasFuncoes.FieldByName('FINANCEIRO_BALCAO_LANCARCAIXA').AsString;

      Result.Compra.PlanoContas                          := FTBLOutrasFuncoes.FieldByName('COMPRAS_PLANOCONTAS').AsString;
      Result.Compra.CFOP                                 := FTBLOutrasFuncoes.FieldByName('COMPRAS_CFOP').AsInteger;
      Result.Compra.Fornecedor                           := FTBLOutrasFuncoes.FieldByName('COMPRAS_FORNECEDOR').AsInteger;

      Result.Alerta.Estoque                              := FTBLOutrasFuncoes.FieldByName('ALERTA_ESTOQUE').AsString;
      Result.Alerta.Ctareceber                           := FTBLOutrasFuncoes.FieldByName('ALERTA_CTARECEBER').AsString;
      Result.Alerta.CtareceberDias                       := FTBLOutrasFuncoes.FieldByName('ALERTA_CTARECEBER_DIAS').AsInteger;
      Result.Alerta.Ctapagar                             := FTBLOutrasFuncoes.FieldByName('ALERTA_CTAPAGAR').AsString;
      Result.Alerta.CtapagarDias                         := FTBLOutrasFuncoes.FieldByName('ALERTA_CTAPAGAR_DIAS').AsInteger;
      Result.Alerta.Pedidos                              := FTBLOutrasFuncoes.FieldByName('ALERTA_PEDIDOS').AsString;
      Result.Alerta.Cobranca                             := FTBLOutrasFuncoes.FieldByName('ALERTA_COBRANCA').AsString;
      Result.Alerta.Validade                             := FTBLOutrasFuncoes.FieldByName('ALERTA_VALIDADE').AsString;
      Result.Alerta.ValidadeDias                         := FTBLOutrasFuncoes.FieldByName('ALERTA_VALIDADE_DIAS').AsInteger;
      Result.Alerta.PedidosCompras                       := FTBLOutrasFuncoes.FieldByName('ALERTA_PEDIDOSCOMPRAS').AsString;

      Result.CFOP.VendaUFLocal                           := FTBLOutrasFuncoes.FieldByName('CFOP_VENDA_UF_INTERNO').AsInteger;
      Result.CFOP.VendaUFFora                            := FTBLOutrasFuncoes.FieldByName('CFOP_VENDA_UF_EXTERNO').AsInteger;
      Result.CFOP.DevolucaoUFLocal                       := FTBLOutrasFuncoes.FieldByName('CFOP_DEVOLUCAO_UF_INTERNO').AsInteger;
      Result.CFOP.DevolucaoUFFora                        := FTBLOutrasFuncoes.FieldByName('CFOP_DEVOLUCAO_UF_EXTERNO').AsInteger;
      Result.CFOP.CompraUFLocal                          := FTBLOutrasFuncoes.FieldByName('CFOP_COMPRA_UF_INTERNO').AsInteger;
      Result.CFOP.CompraUFFora                           := FTBLOutrasFuncoes.FieldByName('CFOP_COMPRA_UF_EXTERNO').AsInteger;

      Result.NFE.Ambiente                                := FTBLOutrasFuncoes.FieldByName('NFE_AMBIENTE').AsString;
      Result.NFE.TipoDANFE                               := FTBLOutrasFuncoes.FieldByName('NFE_TIPODANFE').AsString;
      Result.NFE.FormaEmissao                            := FTBLOutrasFuncoes.FieldByName('NFE_FORMAEMISSAO').AsString;
      Result.NFE.Modelo                                  := FTBLOutrasFuncoes.FieldByName('NFE_MODELO').AsString;
      Result.NFE.Serie                                   := FTBLOutrasFuncoes.FieldByName('NFE_SERIE').AsString;
      Result.NFE.Sequencia                               := FTBLOutrasFuncoes.FieldByName('NFE_SEQUENCIA').AsInteger;
      Result.NFE.Lote                                    := FTBLOutrasFuncoes.FieldByName('NFE_LOTE').AsInteger;

      Result.Configuracao.LogoPrincipal                  := FTBLOutrasFuncoes.FieldByName('SISTEMA_LOGO_PRINCIPAL').AsString;
      Result.Configuracao.LogoRelatorios                 := FTBLOutrasFuncoes.FieldByName('SISTEMA_LOGO_RELATORIOS').AsString;

      Result.Cliente.Inatividade                         := FTBLOutrasFuncoes.FieldByName('CLIENTE_INATIVIDADE').AsInteger;
      Result.Cliente.Atrasopermitido                     := FTBLOutrasFuncoes.FieldByName('CLIENTE_ATRASOPERMITIDO').AsInteger;

      Result.Venda.Vendedor                              := FTBLOutrasFuncoes.FieldByName('VENDA_VENDEDOR').AsInteger;
      Result.Venda.Cliente                               := FTBLOutrasFuncoes.FieldByName('VENDA_CLIENTE').AsInteger;
      Result.Venda.Imprimefatura                         := FTBLOutrasFuncoes.FieldByName('VENDA_IMPRIMEFATURA').AsString;

      Result.Pedido.Entrega                              := FTBLOutrasFuncoes.FieldByName('PEDIDO_ENTREGA').AsInteger;
      Result.Pedido.Baixaestoque                         := FTBLOutrasFuncoes.FieldByName('PEDIDO_BAIXAESTOQUE').AsString;
      Result.Pedido.Mensagem                             := FTBLOutrasFuncoes.FieldByName('PEDIDO_MENSAGEM').AsWideString;

      Result.Frete.Padrao                                := FTBLOutrasFuncoes.FieldByName('FRETEPADRAO').AsInteger;
      Result.Terceirizado.DiaVencimento                  := FTBLOutrasFuncoes.FieldByName('TERCEIRIZADO_DIAVENCIMENTO').AsInteger;
      Result.Terceirizado.DiaVencimento                  := FTBLOutrasFuncoes.FieldByName('TERCEIRIZADO_DIAVENCIMENTO').AsInteger;

   Finally
      prcQueryDeletar(FTBLOutrasFuncoes);
   End;
end;


Function fncUsuario_retCampo(lnUsuario:integer;slCampo:String) : String;
begin
   Result :='';
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM USUARIOS  ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger :=  lnUsuario;
   FTBLOutrasFuncoes.Open;
   Result := UpperCase( FTBLOutrasFuncoes.FieldByName(slCampo).AsString );
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function prcOrdemProducaoItens_retCampo(lnOrdemProducao:integer;slCampo:String) : String;
begin
   Result :='';
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM PCP_ORDEMPRODUCAO_ITENS  ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                         ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger  :=  lnOrdemProducao;
   FTBLOutrasFuncoes.Open;
   Result := UpperCase( FTBLOutrasFuncoes.FieldByName(slCampo).AsString );
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function fncPedidoItens_retCampo(lnPedido:integer;slCampo:String) : String;
begin
   Result :='';
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM PEDIDOS_ITENS  ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                         ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger  :=  lnPedido;
   FTBLOutrasFuncoes.Open;
   Result := UpperCase( FTBLOutrasFuncoes.FieldByName(slCampo).AsString );
   prcQueryDeletar(FTBLOutrasFuncoes);
end;


Function fncFinReceber_retCampo(lnReceber:integer;slCampo:String) : String;
begin
   Result :='';
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM FIN_CTARECEBER  ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                         ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger  :=  lnReceber;
   FTBLOutrasFuncoes.Open;
   Result := UpperCase( FTBLOutrasFuncoes.FieldByName(slCampo).AsString );
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function fncFaseReferencia_valor(lnOrdemProucao,lnterceirizado:integer) : Real;
begin
   Result :=0;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM PCP_FASETRANSFERENCIA  ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add(' EMPRESA=:EMPRESA    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                         ');
   FTBLOutrasFuncoes.SQL.Add(' ORDEMPRODUCAO=:NORDEMPRODUCAO    ');
   FTBLOutrasFuncoes.SQL.Add(' AND                         ');
   FTBLOutrasFuncoes.SQL.Add(' TERCEIRIZADO=:NTERCEIRIZADO    ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger         :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('NORDEMPRODUCAO').AsInteger  :=  lnOrdemProucao;
   FTBLOutrasFuncoes.ParamByName('NTERCEIRIZADO').AsInteger   :=  lnterceirizado;
   FTBLOutrasFuncoes.Open;
   Result := FTBLOutrasFuncoes.FieldByName('VLR_UNITARIO').AsFloat;
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function fncFaseCadastro_Validar(nFase:Integer): Boolean;
begin
   Result := False;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM CAD_FASES ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO             ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger    :=  nFase;
   FTBLOutrasFuncoes.Open;
   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;
   prcQueryDeletar(FTBLOutrasFuncoes);
end;


Function fncFase_Validar(nFase:Integer): Boolean;
begin
   Result := False;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(*) AS RETORNO FROM CAD_FASESGRADE ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO             ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger    :=  nFase;
   FTBLOutrasFuncoes.Open;
   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function fncFase_Nome(nFase:Integer): String;
begin
   Result :='';
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM CAD_FASES  ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger :=  nFase;
   FTBLOutrasFuncoes.Open;
   Result := UpperCase( FTBLOutrasFuncoes.FieldByName('NOME').AsString );
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncLote_Nome(nLote:Integer): String;
begin

   Result :='';
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM CAD_LOTEPRODUCAO  ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger :=  nLote;
   FTBLOutrasFuncoes.Open;
   Result := UpperCase( FTBLOutrasFuncoes.FieldByName('NOME').AsString );
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function RetornaConferenciaQuantidade(sReferencia,sCor,sTamanho: String): Integer;
begin
   Result :=0;

   sReferencia :=UpperCase( Trim(sReferencia) );

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM VIEW_PEDIDOCONFERENCIAGRADE ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     COR=:COR    ');
   FTBLOutrasFuncoes.SQL.Add('  AND                         ');
   FTBLOutrasFuncoes.SQL.Add('     TAMANHO=:TAMANHO    ');
   FTBLOutrasFuncoes.SQL.Add('  AND                         ');
   FTBLOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:SREFERENCIA    ');
   FTBLOutrasFuncoes.ParamByName('COR').AsString :=  sCor;
   FTBLOutrasFuncoes.ParamByName('TAMANHO').AsString :=  sTamanho;
   FTBLOutrasFuncoes.ParamByName('SREFERENCIA').AsString :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('QUANTIDADE').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ValidaPedidoConferido(nPedido: Integer; sIdentificador: String): integer;
begin

   {
   Result := 0;

   prcQueryCriar(TblOutrasFuncoes);
   TblOutrasFuncoes.SQL.Clear;
   TblOutrasFuncoes.SQL.Add(' SELECT * FROM VIEW_PEDIDOCONFERENCIAGRADE ');
   TblOutrasFuncoes.SQL.Add('  where                         ');
   TblOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   TblOutrasFuncoes.SQL.Add('  and                         ');
   TblOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:SREFERENCIA     ');
   TblOutrasFuncoes.ParamByName('NCODIGO').AsInteger := nPedido;
   TblOutrasFuncoes.ParamByName('SREFERENCIA').AsString := sIdentificador;
   TblOutrasFuncoes.Open;

   Result := TblOutrasFuncoes.FieldByName('QUANTIDADE').AsInteger;
   prcQueryDeletar(TblOutrasFuncoes);
   }

   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  select *   from  VIEW_PEDIDO_QTDERESTANTE ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     IDENTIFICADOR=:SREFERENCIA     ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := nPedido;
   FTBLOutrasFuncoes.ParamByName('SREFERENCIA').AsString := sIdentificador;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('QTDECONFERIDA').AsInteger;
   prcQueryDeletar(FTBLOutrasFuncoes);


end;


Function BuscaMateriaPrima(sREFERENCIA, sTIPOPRODUTO: String)
  : TVariantResultArray;
begin

   Setlength(Result, 10);
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add
     ('  select DESCRICAO, UNIDADE, PRC_CUSTO from CAD_PRODUTOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:SREFERENCIA    ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('      TIPO_PRODUTO=:TIPO_PRODUTO     ');
   FTBLOutrasFuncoes.ParamByName('SREFERENCIA').AsString := sREFERENCIA;
   FTBLOutrasFuncoes.ParamByName('TIPO_PRODUTO').AsString := sTIPOPRODUTO;
   FTBLOutrasFuncoes.Open;

   Result[0] := FTBLOutrasFuncoes.FieldByName('DESCRICAO').AsString;
   Result[1] := FTBLOutrasFuncoes.FieldByName('UNIDADE').AsString;
   Result[2] := FTBLOutrasFuncoes.FieldByName('PRC_CUSTO').AsFloat;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function BuscaNomeCor(ncodigo: Integer): String;
begin
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select NOME from CAD_CORES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('NOME').AsString>'' then
      Result := FTBLOutrasFuncoes.FieldByName('NOME').AsString
   else
      Result := '***';

   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncBuscaNomeCorGrade(nCodigoProduto,ngradeid,ncor: Integer;wreferencia:String): String;
begin
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT DISTINCT COR_CODIGO, COR FROM VIEW_GRADEREFERENCIA ');
   FTBLOutrasFuncoes.SQL.Add('  where                          ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO             ');
   FTBLOutrasFuncoes.SQL.Add('  AND                            ');
   FTBLOutrasFuncoes.SQL.Add('     REFERENCIA=:REFERENCIA      ');
   FTBLOutrasFuncoes.SQL.Add('  AND                            ');
   FTBLOutrasFuncoes.SQL.Add('     GRADE_ID=:GRADE_ID          ');
   FTBLOutrasFuncoes.SQL.Add('  AND                            ');
   FTBLOutrasFuncoes.SQL.Add('     COR_CODIGO=:COR_ID          ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger    := nCodigoProduto;
   FTBLOutrasFuncoes.ParamByName('GRADE_ID').AsInteger   := ngradeid;
   FTBLOutrasFuncoes.ParamByName('COR_ID').AsInteger     := ncor;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString  := wreferencia;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('COR').AsString>'' then
      Result := FTBLOutrasFuncoes.FieldByName('COR').AsString
   else
      Result := '***';

   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function BuscaNomeTamanho(ncodigo: Integer): String;
begin

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select * from CAD_TAMANHOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('TAMANHO').AsString;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function BuscaIDTamanho(sTamanho: String): Integer;
begin

   prcQueryCriar(FTBLOutrasFuncoes);


   sTamanho:=Trim(sTamanho);
   sTamanho:=UpperCase(sTamanho);


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select * from CAD_TAMANHOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     TAMANHO=:TAMANHO    ');
   FTBLOutrasFuncoes.ParamByName('TAMANHO').AsString := sTamanho;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('CODIGO').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function BuscaNomeMaquina(ncodigo: Integer): TVariantResultArray;
begin

   Setlength(Result, 10);
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add
     ('  select NOME, NRO_AGULHAS, NRO_FIOS from cad_maquinas ');
   FTBLOutrasFuncoes.SQL.Add('  where                    ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.Open;

   Result[0] := FTBLOutrasFuncoes.FieldByName('NOME').AsString;
   Result[1] := FTBLOutrasFuncoes.FieldByName('NRO_AGULHAS').AsInteger;
   Result[2] := FTBLOutrasFuncoes.FieldByName('NRO_FIOS').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function BuscaNomeProcesso(ncodigo: Integer): TVariantResultArray;
begin

   Setlength(Result, 10);
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add
     ('   select CODIGO, DESCRICAO, TEMPO , CUSTO, INSTRUCOES  from CAD_PROCESSOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                    ');
   FTBLOutrasFuncoes.SQL.Add('      CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.Open;

   Result[0] := FTBLOutrasFuncoes.FieldByName('CODIGO').AsInteger;
   Result[1] := FTBLOutrasFuncoes.FieldByName('DESCRICAO').AsString;
   Result[2] := FTBLOutrasFuncoes.FieldByName('TEMPO').AsFloat;
   Result[4] := FTBLOutrasFuncoes.FieldByName('CUSTO').AsFloat;
   Result[5] := FTBLOutrasFuncoes.FieldByName('INSTRUCOES').AsWideString;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncBuscaPlanoContasCliente(ncodigo: Integer): String;
begin
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select PLANO_CONTAS from CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('PLANO_CONTAS').AsString;


   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function fncBuscaClienteEmail(ncodigo: Integer): String;
begin
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select EMAIL from CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.Open;
   Result :=UpperCase( FTBLOutrasFuncoes.FieldByName('EMAIL').AsString );
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function fncBuscaVendedorRegiao(ncodigo: Integer): Integer;
begin
   Result := 0;

   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select * from CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('REGIAO').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function BuscaClienteVendedor(nCliente: Integer): Integer;
begin
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select * from CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := nCliente;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('VENDEDOR').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);
end;


Function BuscaClienteTransportadora(nCliente: Integer): Integer;
begin

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select * from CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := nCliente;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('TRANSPORTADORA').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function BuscaClienteCentroCusto(nCliente: Integer): Integer;
begin

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select * from CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := nCliente;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('CENTROCUSTO').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);
end;

function fncCliente_Validar(nCliente: Integer): Boolean;
begin

   Result := false;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(CODIGO) AS RETORNO FROM CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger :=  nCliente;
   FTBLOutrasFuncoes.Open;
   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

function fncCliente_cnpj(sCNPJ: String): Boolean;
begin

   Result := false;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(CPF_CNPJ) AS RETORNO FROM CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CPF_CNPJ=:SCNPJ    ');
   FTBLOutrasFuncoes.ParamByName('SCNPJ').AsString :=  sCNPJ;
   FTBLOutrasFuncoes.Open;
   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

function fncCliente_ID_CNPJ(sCNPJ: String): Integer;
begin

   Result := 0;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CPF_CNPJ=:SCNPJ    ');
   FTBLOutrasFuncoes.ParamByName('SCNPJ').AsString :=  sCNPJ;
   FTBLOutrasFuncoes.Open;
   Result := FTBLOutrasFuncoes.FieldByName('CODIGO').AsInteger;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncCliente_retCampo(nCliente: Integer;slCampo:String): String;
begin

   Result :='';
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select * from CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := nCliente;
   FTBLOutrasFuncoes.Open;
   Result := UpperCase( FTBLOutrasFuncoes.FieldByName(slCampo).AsString );
   prcQueryDeletar(FTBLOutrasFuncoes);
end;


Function fncClienteBuscaCFOP(nCliente: Integer): Integer;
begin

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select * from CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := nCliente;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('CFOP').AsInteger;


   prcQueryDeletar(FTBLOutrasFuncoes);
end;



Function BuscaNomeTransportadora(nTransportadora: Integer): String;
begin
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  where     ');
   FTBLOutrasFuncoes.SQL.Add('  TIPO=''TRANSPORTADORA''     ');
   FTBLOutrasFuncoes.SQL.Add('  AND     ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := nTransportadora;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('NOME').AsString;


   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function BuscaNCMPadrao : String;
begin

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select PRODUTO_NCM from CONFIG_PARAMETROS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     EMPRESA=:EMPRESA    ');
   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('PRODUTO_NCM').AsString;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncDataBase : TDate;
begin

   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT SISTEMA_DATABASE FROM CONFIG_PARAMETROS ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add('  EMPRESA=:EMPRESA    ');
   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('SISTEMA_DATABASE').IsNull then
      Result := Date
   else
      Result := FTBLOutrasFuncoes.FieldByName('SISTEMA_DATABASE').AsDateTime;

   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncParamCFOP_VendaUF(slUF :string): Integer;
begin

   Result :=0;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CONFIG_PARAMETROS ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add('  EMPRESA=:EMPRESA    ');
   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   FTBLOutrasFuncoes.Open;

   if slUF='INTERNO' then
      Result := StrToIntDef(FTBLOutrasFuncoes.FieldByName('CFOP_VENDA_UF_INTERNO').AsString,0);

   if slUF='EXTERNO' then
      Result := StrToIntDef(FTBLOutrasFuncoes.FieldByName('CFOP_VENDA_UF_EXTERNO').AsString,0);

   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ChecarCreditoCliente(nCliente:Integer) : Boolean;
begin

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select BLOQUEADO from CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger := nCliente;
   FTBLOutrasFuncoes.Open;

   if (FTBLOutrasFuncoes.FieldByName('BLOQUEADO').AsString='S')    or
      (FTBLOutrasFuncoes.FieldByName('BLOQUEADO').AsString='SIM')  then
   begin
      Result :=True;
   end
   else
   begin
      Result :=False;
   end;



   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ChecarCreditoDisponivel(nCliente:Integer) : Real;
begin

   Result :=0;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT SUM(VALOR) AS VALOR FROM CAD_CLIENTES_CREDITOS ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE   ');
   FTBLOutrasFuncoes.SQL.Add(' CLIENTE=:CLIENTE    ');
   FTBLOutrasFuncoes.SQL.Add(' AND   ');
   FTBLOutrasFuncoes.SQL.Add(' UTILIZADO='+QuotedStr('N'));
   FTBLOutrasFuncoes.ParamByName('CLIENTE').AsInteger := nCliente;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('VALOR').AsFloat;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ChecarCreditoUtilizado(nCliente:Integer) : Real;
begin

   Result :=0;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT SUM(VALOR) AS VALOR FROM CAD_CLIENTES_CREDITOS ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE   ');
   FTBLOutrasFuncoes.SQL.Add(' CLIENTE=:CLIENTE    ');
   FTBLOutrasFuncoes.SQL.Add(' AND   ');
   FTBLOutrasFuncoes.SQL.Add(' UTILIZADO='+QuotedStr('S'));
   FTBLOutrasFuncoes.ParamByName('CLIENTE').AsInteger := nCliente;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('VALOR').AsFloat;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ChecarCreditoSaldo(nCliente:Integer) : Real;
begin

   Result :=0;

   Result :=0;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT CREDITO_DISPONIVEL FROM CAD_CLIENTES ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE   ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:CODIGO    ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger := nCliente;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('CREDITO_DISPONIVEL').AsFloat;

   if Result < 0 then
      Result := 0;


   prcQueryDeletar(FTBLOutrasFuncoes);


end;


// --------------------------------------------------------------------------
// CEP
// --------------------------------------------------------------------------

Function CEPTipo(nCEP: String): String;
begin
   Result :='';

   nCEP:=SoNumero(Trim(nCEP));
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_IBGEMUNICIPIO ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CEP=:CEP    ');
   FTBLOutrasFuncoes.ParamByName('CEP').AsString :=  nCEP;
   FTBLOutrasFuncoes.Open;

   Result :=TRIM(FTBLOutrasFuncoes.FieldByName('TIPO').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function CEPEndereco(nCEP: String): String;
begin
   Result :='';

   nCEP:=SoNumero(Trim(nCEP));
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_IBGEMUNICIPIO ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CEP=:CEP    ');
   FTBLOutrasFuncoes.ParamByName('CEP').AsString :=  nCEP;
   FTBLOutrasFuncoes.Open;

   Result := TRIM(FTBLOutrasFuncoes.FieldByName('ENDERECO').AsString) ;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function CEPBairro(nCEP: String): String;
begin
   Result :='';

   nCEP:=SoNumero(Trim(nCEP));
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_IBGEMUNICIPIO ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CEP=:CEP    ');
   FTBLOutrasFuncoes.ParamByName('CEP').AsString :=  nCEP;
   FTBLOutrasFuncoes.Open;

   Result :=TRIM(FTBLOutrasFuncoes.FieldByName('BAIRRO').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function CEPCidade(nCEP: String): String;
begin
   Result :='';

   nCEP:=SoNumero(Trim(nCEP));
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_IBGEMUNICIPIO ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CEP=:CEP    ');
   FTBLOutrasFuncoes.ParamByName('CEP').AsString :=  nCEP;
   FTBLOutrasFuncoes.Open;

   Result :=TRIM(FTBLOutrasFuncoes.FieldByName('CIDADE').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function CEPCidadeIBGE(nCEP: String): String;
begin
   Result :='';

   nCEP:=SoNumero(Trim(nCEP));
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_IBGEMUNICIPIO ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CEP=:CEP    ');
   FTBLOutrasFuncoes.ParamByName('CEP').AsString :=  nCEP;
   FTBLOutrasFuncoes.Open;

   Result :=TRIM(FTBLOutrasFuncoes.FieldByName('CIDADE_CODIGO').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function CEPUF(nCEP: String): String;
begin

   Result :='';

   nCEP:=SoNumero(Trim(nCEP));
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_IBGEMUNICIPIO ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CEP=:CEP    ');
   FTBLOutrasFuncoes.ParamByName('CEP').AsString :=  nCEP;
   FTBLOutrasFuncoes.Open;

   Result :=TRIM(FTBLOutrasFuncoes.FieldByName('UF').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function CEPUFIBGE(nCEP: String): String;
begin
   Result :='';

   nCEP:=SoNumero(Trim(nCEP));
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_IBGEMUNICIPIO ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CEP=:CEP    ');
   FTBLOutrasFuncoes.ParamByName('CEP').AsString :=  nCEP;
   FTBLOutrasFuncoes.Open;

   Result :=TRIM(FTBLOutrasFuncoes.FieldByName('UF_CODIGO').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ExisteCor(ncodigo, NCOR: Integer): Boolean;
begin

   Result := False;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select count(ID_COR) AS RETORNO from PCP_CORES ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:NCODIGO     ');
   FTBLOutrasFuncoes.SQL.Add('  and                         ');
   FTBLOutrasFuncoes.SQL.Add('     ID_COR=:NCOR    ');
   FTBLOutrasFuncoes.ParamByName('NCODIGO').AsInteger := ncodigo;
   FTBLOutrasFuncoes.ParamByName('NCOR').AsInteger := NCOR;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function ExisteGradeCor(ncodigo: Integer): Boolean;
begin
{
   Result := False;

   prcQueryCriar(TblValidarFuncoes);

   TblValidarFuncoes.SQL.Clear;
   TblValidarFuncoes.SQL.Add(' select COUNT(codigo) AS RETORNO from PCP_CORES ');
   TblValidarFuncoes.SQL.Add('  where                         ');
   TblValidarFuncoes.SQL.Add('     CODIGO=:CODIGO     ');
   TblValidarFuncoes.ParamByName('CODIGO').AsInteger := ncodigo;
   TblValidarFuncoes.Open;

   if TblValidarFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;

   prcQueryDeletar(TblValidarFuncoes);
}

end;

Function ExisteGradeTamanhos(ncodigo: Integer): Boolean;
begin

   Result := False;

   prcQueryCriar(TblValidarFuncoes);

   TblValidarFuncoes.SQL.Clear;
   TblValidarFuncoes.SQL.Add(' select COUNT(codigo) AS RETORNO from CAD_GRADELISTA ');
   TblValidarFuncoes.SQL.Add('  where                         ');
   TblValidarFuncoes.SQL.Add('     CODIGO=:CODIGO     ');
   TblValidarFuncoes.ParamByName('CODIGO').AsInteger := ncodigo;
   TblValidarFuncoes.Open;

   if TblValidarFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;

   prcQueryDeletar(TblValidarFuncoes);

end;



Function ValidarReferenciaCorTamanho(sReferencia: String): Boolean;
begin

   Result := False;

   sReferencia :=UpperCase(Trim(sReferencia));

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT GRADE FROM CAD_PRODUTOS  ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                       ');
   FTBLOutrasFuncoes.SQL.Add('  REFERENCIA=:REFERENCIA      ');
   //TblOutrasFuncoes.SQL.Add('  AND                         ');
   //TblOutrasFuncoes.SQL.Add('  TIPO_PRODUTO=''ACA''               ');
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   // validar se existe uma Grade de Tamanho informada no produto
   if ExisteGradeTamanhos( FTBLOutrasFuncoes.FieldByName('GRADE').AsInteger ) Then
      Result := True
   else
      Result := False;

   {
   // validar se existe uma Cor informada no produto
   if ExisteGradeCor( TblOutrasFuncoes.FieldByName('COR').AsInteger ) Then
      Result := True
   else
      Result := False;
   }



   try
      prcQueryDeletar(FTBLOutrasFuncoes);
   Except
   end;

end;

Function ValidaPedido(nCodigo: Integer): Boolean;
begin

   Result := False;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select COUNT(*) AS RETORNO from PEDIDOS');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO     ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger := nCodigo;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncChecarPedidosProduzir : Boolean;
begin

   Result := False;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select COUNT(*) AS RETORNO from PEDIDOS');
   FTBLOutrasFuncoes.SQL.Add(' where                           ');
   FTBLOutrasFuncoes.SQL.Add(' APROVADO IN (''S'',''SIM'')     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                             ');
   FTBLOutrasFuncoes.SQL.Add(' PRODUZINDO IN (''N'',''NAO'')   ');
   FTBLOutrasFuncoes.Open;
   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fncChecarPeriodoPedidosProduzir(ldtDataIni, dtDataFim : TDate; lncliente, lnvendedor : Integer  ) : Boolean;
Var
   lcCliente01,
   lcCliente02,
   lcVendedor01,
   lcVendedor02     : Integer;

begin
   Result := False;

   lcCliente01   :=StrToInt( ifthen(lncliente>0, IntToStr(lncliente),'0') );
   lcCliente02   :=StrToInt( ifthen(lncliente>0, IntToStr(lncliente),'999999999') );

   lcVendedor01   :=StrToInt( ifthen(lnvendedor>0, IntToStr(lnvendedor),'0') );
   lcVendedor02   :=StrToInt( ifthen(lnvendedor>0, IntToStr(lnvendedor),'999999999') );

   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' select COUNT(*) AS RETORNO from PEDIDOS');
   FTBLOutrasFuncoes.SQL.Add(' where                           ');
   FTBLOutrasFuncoes.SQL.Add(' APROVADO IN (''S'',''SIM'')     ');
   FTBLOutrasFuncoes.SQL.Add(' AND                             ');
   FTBLOutrasFuncoes.SQL.Add(' PRODUZINDO IN (''N'',''NAO'')   ');
   FTBLOutrasFuncoes.SQL.Add(' AND                             ');

   if strPeriodoData='EMISSAO' then
   FTBLOutrasFuncoes.SQL.Add(' DATA BETWEEN :DATA1 AND :DATA2  ');

   if strPeriodoData='ENTREGA' then
   FTBLOutrasFuncoes.SQL.Add(' DATA_ENTREGA BETWEEN :DATA1 AND :DATA2  ');

   FTBLOutrasFuncoes.SQL.Add(' AND                             ');
   FTBLOutrasFuncoes.SQL.Add(' CLIENTE BETWEEN :CLIENTE1 AND :CLIENTE2  ');
   FTBLOutrasFuncoes.SQL.Add(' AND                             ');
   FTBLOutrasFuncoes.SQL.Add(' VENDEDOR BETWEEN :VENDEDOR1 AND :VENDEDOR2  ');

   FTBLOutrasFuncoes.ParamByName('DATA1').AsDateTime    :=ldtDataIni ;
   FTBLOutrasFuncoes.ParamByName('DATA2').AsDateTime    :=dtDataFim ;
   FTBLOutrasFuncoes.ParamByName('CLIENTE1').AsInteger  :=lcCliente01 ;
   FTBLOutrasFuncoes.ParamByName('CLIENTE2').AsInteger  :=lcCliente02 ;
   FTBLOutrasFuncoes.ParamByName('VENDEDOR1').AsInteger :=lcVendedor01 ;
   FTBLOutrasFuncoes.ParamByName('VENDEDOR2').AsInteger :=lcVendedor02 ;


   FTBLOutrasFuncoes.Open;
   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
      Result := True;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Function BuscaPlanoContasTipo(sPlanoContas: String): String;
begin
   prcQueryCriar(FTBLOutrasFuncoes);


   sPlanoContas := UpperCase( Trim( sPlanoContas ) );


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM PLANO_CONTAS_DETALHES ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO_PLANO=:PLN_CONTA    ');
   FTBLOutrasFuncoes.ParamByName('PLN_CONTA').AsString := sPlanoContas;
   FTBLOutrasFuncoes.Open;

   Result := UpperCase( Trim( FTBLOutrasFuncoes.FieldByName('TIPO').AsString ) );


   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function BuscaPlanoContasID(sPlanoContas: String): Integer;
begin
   prcQueryCriar(FTBLOutrasFuncoes);


   sPlanoContas := UpperCase( Trim( sPlanoContas ) );


   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT * FROM PLANO_CONTAS_DETALHES ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                         ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO_PLANO=:PLN_CONTA    ');
   FTBLOutrasFuncoes.ParamByName('PLN_CONTA').AsString := sPlanoContas;
   FTBLOutrasFuncoes.Open;

   Result := StrToIntDef((FTBLOutrasFuncoes.FieldByName('CODIGO').AsString),0);


   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Function DistribuirReferenciaValor(nCodigo, nPedido: Integer; REFERENCIA: String): Real;
Begin

   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   FTBLOutrasFuncoes.sql.clear;
   FTBLOutrasFuncoes.sql.Add( ' SELECT * FROM PEDIDOCONFERENCIA_ITENS ');
   FTBLOutrasFuncoes.sql.Add( ' WHERE    ' );
   FTBLOutrasFuncoes.sql.Add( ' CODIGO=:CODIGO   ' );
   FTBLOutrasFuncoes.sql.Add( ' AND    ');
   FTBLOutrasFuncoes.sql.Add( ' PEDIDO=:PEDIDO    ');
   FTBLOutrasFuncoes.sql.Add( ' AND    ');
   FTBLOutrasFuncoes.sql.Add( ' REFERENCIA=:REFERENCIA   ');
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger := nCodigo;
   FTBLOutrasFuncoes.ParamByName('PEDIDO').AsInteger := nPedido;
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString := REFERENCIA;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('VALOR_UNIT').AsFloat;



   prcQueryDeletar(FTBLOutrasFuncoes);

End;


Procedure MateriaPrimaGradeTamanhos(strReferencia : String; nCodigoGrade: Integer);
begin

{
   prcQueryCriar(TblOutrasFuncoes);



   TblOutrasFuncoes.SQL.Clear;
   TblOutrasFuncoes.SQL.Add(' select COUNT(codigo) AS RETORNO from CAD_GRADELISTA ');
   TblOutrasFuncoes.SQL.Add('  where                         ');
   TblOutrasFuncoes.SQL.Add('     CODIGO=:CODIGO     ');
   TblOutrasFuncoes.ParamByName('CODIGO').AsInteger := ncodigo;
   TblOutrasFuncoes.Open;


   prcQueryDeletar(TblOutrasFuncoes);
}

end;

Function RetornaGradeReferencia(sReferencia: String): Integer;
begin

   Result := 0;

   sReferencia :=UpperCase(Trim(sReferencia));

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT GRADE FROM CAD_PRODUTOS  ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                       ');
   FTBLOutrasFuncoes.SQL.Add('  REFERENCIA=:REFERENCIA      ');
   FTBLOutrasFuncoes.ParamByName('REFERENCIA').AsString    :=  sReferencia;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('GRADE').AsInteger;




end;

Function RetornaIDRegistroDiario(sStatusCaixa: String): Integer;
begin

   Result := 0;

   sStatusCaixa :=UpperCase(Trim(sStatusCaixa));

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM FIN_REGISTROSDIARIOS  ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                       ');
   FTBLOutrasFuncoes.SQL.Add('  CAIXAABERTO=:CAIXASTATUS     ');
   FTBLOutrasFuncoes.ParamByName('CAIXASTATUS').AsString    :=  sStatusCaixa;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('CODIGO').AsInteger;




end;

Function PDV_RetornaValorComparar(sTipoPagto, sFormaPagto : String; DataFechamento : TDate  ): Real;
begin

   Result :=0;

   sTipoPagto   :=UpperCase( Trim(sTipoPagto) );
   sFormaPagto  :=UpperCase( Trim(sFormaPagto) );

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' SELECT  DISTINCT  coalesce( CAD_FORMAPAGTO.TIPO_PAGAMENTO,''N/D'') AS TIPO_PAGAMENTO,      ');
   FTBLOutrasFuncoes.SQL.Add(' coalesce( CAD_FORMAPAGTO.NOME,''N/D'') AS NOME,                                            ');
   FTBLOutrasFuncoes.SQL.Add(' coalesce(SUM(VENDAS.TOTAL_NF),0) AS VALOR                                                  ');
   FTBLOutrasFuncoes.SQL.Add(' FROM CAD_FORMAPAGTO                                                                        ');
   FTBLOutrasFuncoes.SQL.Add(' RIGHT JOIN VENDAS                ON VENDAS.FORMAPAGTO=CAD_FORMAPAGTO.CODIGO                ');
   FTBLOutrasFuncoes.SQL.Add(' INNER JOIN FIN_REGISTROSDIARIOS  ON FIN_REGISTROSDIARIOS.CODIGO=VENDAS.REGISTRODIARIO      ');
   FTBLOutrasFuncoes.SQL.Add(' WHERE                                                                                      ');
   FTBLOutrasFuncoes.SQL.Add(' FIN_REGISTROSDIARIOS.CAIXAABERTO=''S''                                                     ');
   FTBLOutrasFuncoes.SQL.Add(' AND VENDAS.EMISSAO BETWEEN FIN_REGISTROSDIARIOS.DATA_ABERTURA AND :DATAFECHAMENTO          ');
   FTBLOutrasFuncoes.SQL.Add(' AND CAD_FORMAPAGTO.TIPO_PAGAMENTO=:TIPO_PAGAMENTO                                          ');
   FTBLOutrasFuncoes.SQL.Add(' AND CAD_FORMAPAGTO.NOME=:NOME                                                              ');
   FTBLOutrasFuncoes.SQL.Add('                                                                                            ');
   FTBLOutrasFuncoes.SQL.Add(' GROUP BY CAD_FORMAPAGTO.TIPO_PAGAMENTO, CAD_FORMAPAGTO.NOME                                ');

   FTBLOutrasFuncoes.ParamByName('TIPO_PAGAMENTO').AsString   :=  sTipoPagto;
   FTBLOutrasFuncoes.ParamByName('NOME').AsString             :=  sFormaPagto;
   FTBLOutrasFuncoes.ParamByName('DATAFECHAMENTO').AsDateTime :=  DataFechamento;

   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('VALOR').AsFloat;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function PDV_SomaValorCaixa(nEmpresa, nCodigo : Integer; DataAbertura : TDate  ): Real;
begin

   Result :=0;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT SUM(VALOR) AS VLR_TOTAL FROM FIN_REGISTROSDIARIOSDETALHES   ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                                                              ');
   FTBLOutrasFuncoes.SQL.Add('  EMPRESA=:EMPRESA                                                   ');
   FTBLOutrasFuncoes.SQL.Add('  AND                                                                ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:CODIGO                                                     ');
   FTBLOutrasFuncoes.SQL.Add('  AND                                                                ');
   FTBLOutrasFuncoes.SQL.Add('  DATA=:DATA_ABERTURA                                                ');

   FTBLOutrasFuncoes.ParamByName('EMPRESA').AsInteger         :=  nEmpresa;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger          :=  nCodigo;
   FTBLOutrasFuncoes.ParamByName('DATA_ABERTURA').AsDateTime   :=  DataAbertura;

   FTBLOutrasFuncoes.Open;

   Result :=FTBLOutrasFuncoes.FieldByName('VLR_TOTAL').AsFloat;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Procedure PDV_SalvaValorFechameto(nValor : real  );
begin


   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  UPDATE FIN_REGISTROSDIARIOS SET VLR_TOTALVENDASCAIXA=:VALOR    ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                                                          ');
   FTBLOutrasFuncoes.SQL.Add('  CAIXAABERTO=''S''                                              ');
   FTBLOutrasFuncoes.ParamByName('VALOR').AsFloat        :=  nValor;
   FTBLOutrasFuncoes.ExecSQL;

   prcQueryDeletar(FTBLOutrasFuncoes);

end;




///--------------------------------------------------------------------------
///      CFOP
///--------------------------------------------------------------------------
function fnCFOP_VALIDAR(nCFOP: integer): Boolean;
begin

   Result := false;
   prcQueryCriar(FTBLOutrasFuncoes);

   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(CODIGO) AS RETORNO FROM CAD_CFOP ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:NCFOP    ');
   FTBLOutrasFuncoes.ParamByName('NCFOP').AsInteger := nCFOP;
   FTBLOutrasFuncoes.Open;

   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

function fnCFOP_UFVALIDAR(nCFOP: integer;UFEmpresa, UFCliente:String): Boolean;
Var
 slStatusFCOP  : String;
begin

   Result := false;

   prcQueryCriar(FTBLOutrasFuncoes);

   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_CFOP ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:NCFOP    ');
   FTBLOutrasFuncoes.ParamByName('NCFOP').AsInteger := nCFOP;
   FTBLOutrasFuncoes.Open;

   // SE FOR FORA DO ESTADO, E ESTADOS FOREM DIFERENTES
   slStatusFCOP :=FTBLOutrasFuncoes.FieldByName('DENTRO_ESTADO').AsString;

   if ((slStatusFCOP='N') and  (UFEmpresa<>UFCliente)) or  ((slStatusFCOP='S') and  (UFEmpresa=UFCliente)) then
   begin
      Result := True;
   end;

   prcQueryDeletar(FTBLOutrasFuncoes);

end;


function fnCFOP_DETALHE(nCFOP: integer): WideString;
begin

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_CFOP ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:NCFOP    ');
   FTBLOutrasFuncoes.ParamByName('NCFOP').AsInteger := nCFOP;
   FTBLOutrasFuncoes.Open;

   Result := UpperCase(FTBLOutrasFuncoes.FieldByName('DETALHE').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

function fnCFOP_FISCO(nCFOP: integer): WideString;
begin

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_CFOP ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:NCFOP    ');
   FTBLOutrasFuncoes.ParamByName('NCFOP').AsInteger := nCFOP;
   FTBLOutrasFuncoes.Open;

   Result := UpperCase(FTBLOutrasFuncoes.FieldByName('FISCO').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

function fnCFOP_NOME(nCFOP: integer): WideString;
begin
   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_CFOP ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:NCFOP    ');
   FTBLOutrasFuncoes.ParamByName('NCFOP').AsInteger := nCFOP;
   FTBLOutrasFuncoes.Open;

   Result := UpperCase(FTBLOutrasFuncoes.FieldByName('DESCRICAO').AsString);


   prcQueryDeletar(FTBLOutrasFuncoes);

end;

function fnCFOP_REDUCAOICMS(nCFOP: integer): Real;
begin

   Result := 0;

   prcQueryCriar(FTBLOutrasFuncoes);



   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_CFOP ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:NCFOP    ');
   FTBLOutrasFuncoes.ParamByName('NCFOP').AsInteger := nCFOP;
   FTBLOutrasFuncoes.Open;

   Result := FTBLOutrasFuncoes.FieldByName('REDUCAO_ICMS').AsFloat;


   prcQueryDeletar(FTBLOutrasFuncoes);


end;

function fnCFOP_OPERACAO(nCFOP: integer): String;
begin
   Result := '';
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_CFOP ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:NCFOP    ');
   FTBLOutrasFuncoes.ParamByName('NCFOP').AsInteger := nCFOP;
   FTBLOutrasFuncoes.Open;
   Result := FTBLOutrasFuncoes.FieldByName('OPERACAO').AsString;
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

function fnCFOP_ICMS_CALCULA(nCFOP: integer): Boolean;
begin

   Result := false;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT CALCULA_ICMS FROM CAD_CFOP ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:NCFOP    ');
   FTBLOutrasFuncoes.ParamByName('NCFOP').AsInteger := nCFOP;
   FTBLOutrasFuncoes.Open;
   Result := FTBLOutrasFuncoes.FieldByName('CALCULA_ICMS').AsString='S';
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

function fnCFOP_IPI_CALCULA(nCFOP: integer): Boolean;
begin

   Result := false;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT CALCULA_IPI FROM CAD_CFOP ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:NCFOP    ');
   FTBLOutrasFuncoes.ParamByName('NCFOP').AsInteger := nCFOP;
   FTBLOutrasFuncoes.Open;
   Result := FTBLOutrasFuncoes.FieldByName('CALCULA_IPI').AsString='S';
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

function fnCFOP_ISS_CALCULA(nCFOP: integer): Boolean;
begin

   Result := false;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT CALCULA_ISS FROM CAD_CFOP ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  CODIGO=:NCFOP    ');
   FTBLOutrasFuncoes.ParamByName('NCFOP').AsInteger := nCFOP;
   FTBLOutrasFuncoes.Open;
   Result := FTBLOutrasFuncoes.FieldByName('CALCULA_ISS').AsString='S';
   prcQueryDeletar(FTBLOutrasFuncoes);

end;


///--------------------------------------------------------------------------
///      TABELA DE IMPOSTOS POR ESTADO
///--------------------------------------------------------------------------

function fnUFImposto_VALIDAR(stUF: String): Boolean;
begin

   Result := false;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT COUNT(SIGLA) AS RETORNO FROM CAD_UF_IMPOSTOS ');
   FTBLOutrasFuncoes.SQL.Add('  where                         ');
   FTBLOutrasFuncoes.SQL.Add('  SIGLA=:SUF    ');
   FTBLOutrasFuncoes.ParamByName('SUF').AsString :=  stUF;
   FTBLOutrasFuncoes.Open;
   if FTBLOutrasFuncoes.FieldByName('RETORNO').AsInteger > 0 then
   begin
      Result := True;
   end;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fnUFImposto_ICMS_PJ(stUF: String): Real;
begin

   Result :=0;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_UF_IMPOSTOS ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                 ');
   FTBLOutrasFuncoes.SQL.Add('     SIGLA=:SUF    ');
   FTBLOutrasFuncoes.ParamByName('SUF').AsString :=  stUF;
   FTBLOutrasFuncoes.Open;
   Result :=FTBLOutrasFuncoes.FieldByName('ICMS').AsFloat;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fnUFImposto_ICMS_PF(stUF: String): Real;
begin

   Result :=0;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_UF_IMPOSTOS ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                 ');
   FTBLOutrasFuncoes.SQL.Add('     SIGLA=:SUF    ');
   FTBLOutrasFuncoes.ParamByName('SUF').AsString :=  stUF;
   FTBLOutrasFuncoes.Open;
   Result :=FTBLOutrasFuncoes.FieldByName('ICMS_PFISICA').AsFloat;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fnUFImposto_IPI(stUF: String): Real;
begin

   Result :=0;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_UF_IMPOSTOS ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                 ');
   FTBLOutrasFuncoes.SQL.Add('     SIGLA=:SUF    ');
   FTBLOutrasFuncoes.ParamByName('SUF').AsString :=  stUF;
   FTBLOutrasFuncoes.Open;
   Result :=FTBLOutrasFuncoes.FieldByName('IPI').AsFloat;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fnUFImposto_ISS(stUF: String): Real;
begin

   Result :=0;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_UF_IMPOSTOS ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                 ');
   FTBLOutrasFuncoes.SQL.Add('     SIGLA=:SUF    ');
   FTBLOutrasFuncoes.ParamByName('SUF').AsString :=  stUF;
   FTBLOutrasFuncoes.Open;
   Result :=FTBLOutrasFuncoes.FieldByName('ISS').AsFloat;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;

Function fnUFImposto_IR(stUF: String): Real;
begin

   Result :=0;
   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add('  SELECT * FROM CAD_UF_IMPOSTOS ');
   FTBLOutrasFuncoes.SQL.Add('  WHERE                 ');
   FTBLOutrasFuncoes.SQL.Add('     SIGLA=:SUF    ');
   FTBLOutrasFuncoes.ParamByName('SUF').AsString :=  stUF;
   FTBLOutrasFuncoes.Open;
   Result :=FTBLOutrasFuncoes.FieldByName('IR').AsFloat;
   prcQueryDeletar(FTBLOutrasFuncoes);

end;


Procedure prcViewFaturas(dbQueryView: TFDQuery;nCliente,nNFe:Integer);
begin

   //prcQueryCriar(dbQueryView);
   dbQueryView.SQL.Clear;
   dbQueryView.SQL.Add(' SELECT * FROM VIEW_FATURAS             ');
   dbQueryView.SQL.Add(' WHERE                                  ');
   dbQueryView.SQL.Add(' CLIENTE=:CLIENTE                       ');
   dbQueryView.SQL.Add(' AND                                    ');
   dbQueryView.SQL.Add(' NRO_NOTA=:NOTAFISCAL                   ');
   dbQueryView.SQL.Add(' AND                                    ');
   dbQueryView.SQL.Add(' GERARCOMPLEMENTO=' + QuotedStr('N')    );
   dbQueryView.SQL.Add(' ORDER BY DATA, VENCIMENTO, DOCUMENTO   ');
   dbQueryView.ParamByName('CLIENTE').AsInteger    :=  nCliente;
   dbQueryView.ParamByName('NOTAFISCAL').AsInteger :=  nNFe;
   dbQueryView.Open;

end;

Procedure prcRegistrarUltimaVenda(lnCliente:Integer;lsOrigem:String);
begin
   lsOrigem:=UpperCase(lsOrigem);

   prcQueryCriar(FTBLOutrasFuncoes);
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add(' UPDATE CAD_CLIENTES SET ULTIMAVENDA_DATA=                                    ');
   if (lsOrigem='PEDIDO') then
   begin
      FTBLOutrasFuncoes.SQL.Add(' COALESCE((SELECT  DATA=MAX(PEDIDOS.DATA) FROM PEDIDOS                        ');
      FTBLOutrasFuncoes.SQL.Add(' WHERE PEDIDOS.EMPRESA=:NEMPRESA AND PEDIDOS.CLIENTE=:NCLIENTE),GETDATE() ),  ');
      FTBLOutrasFuncoes.SQL.Add(' ULTIMAVENDA_ORIGEM=:SORIGEM                                                  ');
   end;
   if (lsOrigem='NFE') then
   begin
      FTBLOutrasFuncoes.SQL.Add(' COALESCE((SELECT  EMISSAO=MAX(VENDAS.EMISSAO) FROM VENDAS                        ');
      FTBLOutrasFuncoes.SQL.Add(' WHERE VENDAS.EMPRESA=:NEMPRESA AND VENDAS.CLIENTE=:NCLIENTE),GETDATE() ),  ');
      FTBLOutrasFuncoes.SQL.Add(' ULTIMAVENDA_ORIGEM=:SORIGEM                                                  ');
   end;
   FTBLOutrasFuncoes.SQL.Add(' WHERE                                                                        ');
   FTBLOutrasFuncoes.SQL.Add(' CODIGO=:NCLIENTE                                                            ');
   FTBLOutrasFuncoes.SQL.Add('                                                                              ');
   FTBLOutrasFuncoes.ParamByName('NEMPRESA').AsInteger  :=  FSistema.Empresa;
   FTBLOutrasFuncoes.ParamByName('NCLIENTE').AsInteger  :=  lnCliente;
   FTBLOutrasFuncoes.ParamByName('SORIGEM').AsString    :=  lsOrigem;
   FTBLOutrasFuncoes.ExecSQL;
   FTBLOutrasFuncoes.Close;
   prcQueryDeletar(FTBLOutrasFuncoes);
end;

Procedure prcProdutoLancaGrade(nPedido:Integer;sReferencia: String);
begin

   sReferencia :=UpperCase( Trim(sReferencia) );
   {
   prcQueryCriar(TblOutrasFuncoes);



   TblOutrasFuncoes.SQL.Clear;
   TblOutrasFuncoes.SQL.Add('  SELECT * FROM PEDIDOS_ITENS ');
   TblOutrasFuncoes.SQL.Add('  where                         ');
   TblOutrasFuncoes.SQL.Add('  CODIGO=:CODIGO    ');
   TblOutrasFuncoes.SQL.Add('  and                         ');
   TblOutrasFuncoes.SQL.Add('  REFERENCIA=:REFERENCIA    ');
   TblOutrasFuncoes.ParamByName('CODIGO').AsInteger :=    nPedido;
   TblOutrasFuncoes.ParamByName('REFERENCIA').AsString :=  sReferencia;
   TblOutrasFuncoes.Open;
   }

end;


end.
