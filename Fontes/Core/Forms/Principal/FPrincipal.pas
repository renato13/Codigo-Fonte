{**********************************************************************************}
{ VESTIS PCP - SISTEMA PARA INDUSTRIAS DE CONFECÇÕES.                              }
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

unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Menus,
  Vcl.Buttons, Vcl.ExtCtrls, Data.DB,   Vcl.ImgList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnList, Vcl.ActnMan, Vcl.Ribbon,
  Vcl.ActnCtrls, Vcl.ToolWin, Vcl.ActnMenus, Vcl.RibbonActnMenus,
  Vcl.RibbonObsidianStyleActnCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Classe.EMail,
  Classe.Global,
  App.Constantes, Vcl.RibbonLunaStyleActnCtrls, Vcl.RibbonSilverStyleActnCtrls,
  Vcl.Imaging.jpeg, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.VCLUI.Login, FireDAC.VCLUI.Async, Vcl.ComCtrls, FireDAC.Phys.MSSQLDef;


type
   TFrmPrincipal = class(TForm)
      ActionMenus: TActionManager;
    mnuProdutosGrupo: TAction;
    mnuProdutosSubgrupo: TAction;
    mnuProdutosTipoProdutos: TAction;
    mnuProdutosCadastro: TAction;
    ActTabelaPrecos: TAction;
    mnuProdutosAtualizar: TAction;
    mnuProdutosCodigoBarraTermica: TAction;
      Action_Opcoes: TAction;
      Action3: TAction;
    Act_fases: TAction;
      Action6: TAction;
      Action8: TAction;
      Action9: TAction;
      Action10: TAction;
      MnuArquivo_Cotacao: TAction;
      Action13: TAction;
      Action16: TAction;
      Action_Sair: TAction;
      MnuCad_ClieJuridica: TAction;
      MnuCad_CliePFisica: TAction;
      Action23: TAction;
      Action25: TAction;
      Action26: TAction;
      Action27: TAction;
      Action28: TAction;
      Action29: TAction;
      Action30: TAction;
      Action31: TAction;
      Action32: TAction;
      Action33: TAction;
    MnuComprasPedidos: TAction;
    MnuComprasNotaFiscal: TAction;
    MnuDistribuir_Relatorios: TAction;
      Mnu_PCP_Grifes: TAction;
      Mnu_PCP_Colecao: TAction;
      Mnu_PCP_FaixaEtaria: TAction;
      Mnu_PCP_Fases: TAction;
      Mnu_PCP_Celulas: TAction;
      Mnu_PCP_Etiqueta: TAction;
      Mnu_PCP_Tamanhos: TAction;
      Mnu_PCP_GradeTamanho: TAction;
      Mnu_PCP_Cores: TAction;
      Mnu_PCP_Processos: TAction;
      Mnu_PCP_Maquinas: TAction;
      Mnu_PCP_ProcessoMaquinas: TAction;
      Mnu_PCP_Defeitos: TAction;
    Mnu_Qualidades: TAction;
      Mnu_PCP_ProcessosOperador: TAction;
    Mnu_PCP_FichaTecnica: TAction;
      Mnu_PCP_OrdemProducao: TAction;
      Mnu_PCP_Relatorios: TAction;
      Action88: TAction;
      MnuVendas_Pedidos: TAction;
    MnuVendas_PedidosAprovar: TAction;
      MnuVendasNFe_Emitir: TAction;
      Action95: TAction;
      MnuFin_CtaRecMovto: TAction;
    MnuFin_CtaReceberBaixa: TAction;
      Action98: TAction;
      Action99: TAction;
      MnuFin_CtaPagarMovto: TAction;
    MnuFin_CtaPagarBaixa: TAction;
      Action105: TAction;
      Action106: TAction;
      Action111: TAction;
      Action113: TAction;
      Action114: TAction;
      Action115: TAction;
      Action117: TAction;
      Action120: TAction;
      Action121: TAction;
      Action122: TAction;
      Action123: TAction;
      Action124: TAction;
      Action130: TAction;
      Action131: TAction;
      Action133: TAction;
      Action165: TAction;
      Action174: TAction;
      Action176: TAction;
      Ribbon1: TRibbon;
      RbnApplicationMenuBar: TRibbonApplicationMenuBar;
      RBP_Arquivo: TRibbonPage;
      RBP_Cadastros: TRibbonPage;
      RBP_Produtos: TRibbonPage;
      RBP_Compras: TRibbonPage;
      RBP_Producao: TRibbonPage;
      RBP_Vendas: TRibbonPage;
      RBP_Financeiro: TRibbonPage;
      RBP_Expedicao: TRibbonPage;
      RBP_Fiscal: TRibbonPage;
      RBP_Ajuda: TRibbonPage;
      RBGSistema: TRibbonGroup;
      RibbonGroup2: TRibbonGroup;
      RibbonGroup3: TRibbonGroup;
      RibbonGroup4: TRibbonGroup;
      RibbonGroup5: TRibbonGroup;
      ActionRibbonAplication: TActionManager;
      Action1: TAction;
      Action2: TAction;
      RibbonQuickAccessToolbar1: TRibbonQuickAccessToolbar;
      img16xRibbonAplication: TImageList;
    imgMenusImagens32x: TImageList;
      Action11: TAction;
      Action15: TAction;
      RibbonGroup1: TRibbonGroup;
      RibbonGroup7: TRibbonGroup;
      RibbonGroup8: TRibbonGroup;
      RibbonGroup11: TRibbonGroup;
      RibbonGroup12: TRibbonGroup;
      RibbonGroup13: TRibbonGroup;
      RibbonGroup14: TRibbonGroup;
      RibbonGroup15: TRibbonGroup;
      RibbonGroup20: TRibbonGroup;
      RibbonGroup21: TRibbonGroup;
      RibbonGroup23: TRibbonGroup;
      RibbonGroup24: TRibbonGroup;
      RibbonGroup25: TRibbonGroup;
      RibbonGroup26: TRibbonGroup;
      RibbonGroup27: TRibbonGroup;
      RibbonGroup28: TRibbonGroup;
      Action17: TAction;
      RibbonGroup31: TRibbonGroup;
      Action19: TAction;
      mnuProdutosRelatorios: TAction;
      RibbonGroup33: TRibbonGroup;
      RibbonGroup34: TRibbonGroup;
      RibbonGroup35: TRibbonGroup;
      RibbonGroup37: TRibbonGroup;
      RibbonGroup39: TRibbonGroup;
      Act_RelatorioCtaReceber: TAction;
      RibbonGroup41: TRibbonGroup;
      RibbonGroup44: TRibbonGroup;
      RibbonGroup47: TRibbonGroup;
      RibbonGroup48: TRibbonGroup;
      RibbonGroup49: TRibbonGroup;
      RibbonGroup50: TRibbonGroup;
      stbBarraStatus: TStatusBar;
      PrinterSetupDialog1: TPrinterSetupDialog;
      LblResolucao: TLabel;
      Mnu_PCP_ProcessosGrade: TAction;
      MnuVendasNFe_Processamento: TAction;
      DBConexao: TFDConnection;
    RibbonGroup40: TRibbonGroup;
    Action12: TAction;
    Act_RelatorioCtaPagar: TAction;
    ActAtividades: TAction;
    rgrCadastrosGerais: TRibbonGroup;
    ActPedidoVendaRelatorio: TAction;
    Action5: TAction;
    MnuVendas_PedidosConferencia: TAction;
    MnuDistribuir_Pagamentos: TAction;
    RibbonGroup45: TRibbonGroup;
    MnuFin_FluxoCaixa: TAction;
    MnuFin_CadContas: TAction;
    MnuFin_FechamentoCaixa: TAction;
    MnuFin_TransferenciaContas: TAction;
    RibbonGroup29: TRibbonGroup;
    Action_Empresa: TAction;
    Action18: TAction;
    ImageList1Novos: TImageList;
    MnuJan_Calendario: TAction;
    MnuFin_CtaRecBordero: TAction;
    MnuFin_CtaReceberBaixaLote: TAction;
    MnuFin_CtaPagarBaixaLote: TAction;
    MnuCad_FornecedorRelatorio: TAction;
    Mnu_PCP_AndamentoFaseProducao: TAction;
    Mnu_PCP_FasesGrade: TAction;
    mnuProdutosCodigoBarraJatoTintas: TAction;
    RibbonGroup9: TRibbonGroup;
    RibbonGroup6: TRibbonGroup;
    MnuComprasRelatorios: TAction;
    Mnu_PCP_LoteProducao: TAction;
    MnuVendas_VendaExpressa: TAction;
    Action4: TAction;
    Action7: TAction;
    MnuFin_CtaPagarSubstituir: TAction;
    ActMotivoBaixa: TAction;
    MnuFin_CtaPagarComissoes: TAction;
    RibbonGroup10: TRibbonGroup;
    RibbonGroup16: TRibbonGroup;
    MnuFin_CtaPagarComissoesRelatorios: TAction;
    Action14: TAction;
    RibbonGroup17: TRibbonGroup;
    MnuVendas_OrdemServicos: TAction;
    mnuProdutosNCM: TAction;
    ImagemLogo: TImage;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //---------------------------------------------------------------------
    //     Executar DLL - Módulos separados do sistema
    //---------------------------------------------------------------------

    procedure ExecutarDLL(nDLL,  nMODULO:String);

    //---------------------------------------------------------------------
    //
    //---------------------------------------------------------------------
    procedure Action_SairExecute(Sender: TObject);
    procedure Action_OpcoesExecute(Sender: TObject);

    Procedure ConfigurarInicio;

    Procedure CarregarEmpresa;
    Procedure SetarEmpresa;

    Procedure ConectarBancoDados;
    Procedure CarregarModuloDados;
    Procedure CarregarUltimaEtapa;

    Function ConectarServidorSQL : Boolean;

    procedure Action3Execute(Sender: TObject);
    procedure Act_fasesExecute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
    procedure MnuArquivo_CotacaoExecute(Sender: TObject);
    procedure Action13Execute(Sender: TObject);
    procedure Action16Execute(Sender: TObject);
    procedure MnuCad_ClieJuridicaExecute(Sender: TObject);
    procedure MnuCad_CliePFisicaExecute(Sender: TObject);
    procedure Action23Execute(Sender: TObject);
    procedure Action25Execute(Sender: TObject);
    procedure Action26Execute(Sender: TObject);
    procedure Action27Execute(Sender: TObject);
    procedure Action28Execute(Sender: TObject);
    procedure Action29Execute(Sender: TObject);
    procedure Action32Execute(Sender: TObject);
    procedure Action33Execute(Sender: TObject);
    procedure MnuComprasNotaFiscalExecute(Sender: TObject);
    procedure Action31Execute(Sender: TObject);
    procedure Action30Execute(Sender: TObject);
    procedure Action130Execute(Sender: TObject);
    procedure Action131Execute(Sender: TObject);
    procedure Action133Execute(Sender: TObject);
    procedure Action134Execute(Sender: TObject);
    procedure Action122Execute(Sender: TObject);
    procedure Action123Execute(Sender: TObject);
    procedure Action124Execute(Sender: TObject);
    procedure MnuFin_CtaRecMovtoExecute(Sender: TObject);
    procedure MnuFin_CtaReceberBaixaExecute(Sender: TObject);
    procedure Action98Execute(Sender: TObject);
    procedure Action99Execute(Sender: TObject);
    procedure Action100Execute(Sender: TObject);
    procedure MnuFin_CtaPagarMovtoExecute(Sender: TObject);
    procedure MnuFin_CtaPagarBaixaExecute(Sender: TObject);
    procedure Action105Execute(Sender: TObject);
    procedure Action106Execute(Sender: TObject);
    procedure Action109Execute(Sender: TObject);
    procedure Action111Execute(Sender: TObject);
    procedure Action113Execute(Sender: TObject);
    procedure Action114Execute(Sender: TObject);
    procedure Action115Execute(Sender: TObject);
    procedure Action117Execute(Sender: TObject);
    procedure Mnu_PCP_GrifesExecute(Sender: TObject);
    procedure Mnu_PCP_ColecaoExecute(Sender: TObject);
    procedure Mnu_PCP_FaixaEtariaExecute(Sender: TObject);
    procedure Mnu_PCP_TurnosExecute(Sender: TObject);
    procedure Mnu_PCP_FasesExecute(Sender: TObject);
    procedure Mnu_PCP_CelulasExecute(Sender: TObject);
    procedure Mnu_PCP_EtiquetaExecute(Sender: TObject);
    procedure Mnu_PCP_TamanhosExecute(Sender: TObject);
    procedure Mnu_PCP_GradeTamanhoExecute(Sender: TObject);
    procedure Mnu_PCP_CoresExecute(Sender: TObject);
    procedure Mnu_PCP_ProcessosExecute(Sender: TObject);
    procedure Mnu_PCP_ProcessosGradeExecute(Sender: TObject);
    procedure Mnu_PCP_MaquinasExecute(Sender: TObject);
    procedure Mnu_PCP_ProcessoMaquinasExecute(Sender: TObject);
    procedure Mnu_PCP_DefeitosExecute(Sender: TObject);
    procedure Mnu_QualidadesExecute(Sender: TObject);
    procedure Mnu_PCP_ProcessosOperadorExecute(Sender: TObject);
    procedure Mnu_PCP_FichaTecnicaExecute(Sender: TObject);
    procedure Mnu_PCP_OrdemProducaoExecute(Sender: TObject);
    procedure Mnu_PCP_RelatoriosExecute(Sender: TObject);
    procedure mnuProdutosGrupoExecute(Sender: TObject);
    procedure mnuProdutosSubgrupoExecute(Sender: TObject);
    procedure mnuProdutosTipoProdutosExecute(Sender: TObject);
    procedure mnuProdutosCadastroExecute(Sender: TObject);
    procedure ActTabelaPrecosExecute(Sender: TObject);
    procedure mnuProdutosAtualizarExecute(Sender: TObject);
    procedure mnuProdutosCodigoBarraTermicaExecute(Sender: TObject);
    procedure mnuProdutosRelatoriosExecute(Sender: TObject);
    procedure Action88Execute(Sender: TObject);
    procedure MnuVendas_PedidosExecute(Sender: TObject);
    procedure MnuVendas_PedidosAprovarExecute(Sender: TObject);
    procedure MnuVendasNFe_EmitirExecute(Sender: TObject);
    procedure MnuVendasNFe_ProcessamentoExecute(Sender: TObject);
    procedure Action94Execute(Sender: TObject);
    procedure Action95Execute(Sender: TObject);
    procedure Action17Execute(Sender: TObject);
    procedure Act_RelatorioCtaReceberExecute(Sender: TObject);
    procedure Action12Execute(Sender: TObject);
    procedure Act_RelatorioCtaPagarExecute(Sender: TObject);
    procedure ActAtividadesExecute(Sender: TObject);
    procedure ActPedidoVendaRelatorioExecute(Sender: TObject);
    procedure Action174Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure MnuVendas_PedidosConferenciaExecute(Sender: TObject);
    procedure Action176Execute(Sender: TObject);
    procedure MnuDistribuir_PagamentosExecute(Sender: TObject);
    procedure MnuFin_FluxoCaixaExecute(Sender: TObject);
    procedure MnuFin_CadContasExecute(Sender: TObject);
    procedure MnuFin_FechamentoCaixaExecute(Sender: TObject);
    procedure MnuFin_TransferenciaContasExecute(Sender: TObject);
    procedure Action19Execute(Sender: TObject);
    procedure DBConexaoAfterConnect(Sender: TObject);
    procedure Action_EmpresaExecute(Sender: TObject);
    procedure Action18Execute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure MnuComprasPedidosExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure MnuJan_CalendarioExecute(Sender: TObject);
    procedure MnuFin_CtaRecBorderoExecute(Sender: TObject);
    procedure MnuFin_CtaReceberBaixaLoteExecute(Sender: TObject);
    procedure MnuCad_FornecedorRelatorioExecute(Sender: TObject);
    procedure Mnu_PCP_AndamentoFaseProducaoExecute(Sender: TObject);
    procedure MnuFin_CtaPagarBaixaLoteExecute(Sender: TObject);
    procedure Mnu_PCP_FasesGradeExecute(Sender: TObject);
    procedure mnuProdutosCodigoBarraJatoTintasExecute(Sender: TObject);
    procedure Mnu_PCP_LoteProducaoExecute(Sender: TObject);
    procedure MnuVendas_VendaExpressaExecute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure MnuFin_CtaPagarSubstituirExecute(Sender: TObject);
    procedure ActMotivoBaixaExecute(Sender: TObject);
    procedure MnuFin_CtaPagarComissoesExecute(Sender: TObject);
    procedure MnuFin_CtaPagarComissoesRelatoriosExecute(Sender: TObject);
    procedure Action14Execute(Sender: TObject);
    procedure MnuVendas_OrdemServicosExecute(Sender: TObject);
    procedure mnuProdutosNCMExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

   private
      { Private declarations }

      procedure ShowHintPersonalizado(var HintStr: string; var CanShow: Boolean;
        var HintInfo: THintInfo);

    procedure cfg_EmpresaGravar(lnEmpresa:integer);
    function cfg_EmpresaLer: integer;

   public
      { Public declarations }
      procedure MudarComEnter(var Msg: TMsg; var Handled: Boolean);
      Procedure TerminarAplicacao;

     {todo: Exemplo de uso: //OpenForm(TFrmCliente, FrmCliente);}
      procedure OpenForm(FClass: TFormClass; var fmFormulario);

  end;

   // Rotina para chamada de DLL
   TPrograma = procedure (ParentApplication: TApplication; ParentForm: TForm); stdcall;

var

   FrmPrincipal: TFrmPrincipal;

   DllApplication: TApplication; // Essa linha deve ir em cada Modulo
   I: Integer;

   TListaAdicionar, TListaAlterar, TListaExcluir: TStrings;

implementation


{$R *.dfm}

uses Global, Biblioteca, FSplash, SQLServer,
  FFrameBotoes, FBaseDados, FAcesso, FBaseDados_PCP,
  FBaseComponentes, FAtividades, FCarneImprimir, FCtaPagarBaixas,
  FCtaPagarBaixasLotes, FComissoes, FComissoesRelatorios,
  FControleChequesRecebidos, FControleChequesEmitidos, FCartaEmitir,
  FControleCaixa, FBancos, FContaCorrente, FControleBancario, FRecibo,
  FCotacaoMoeda, FCadClientes, FRelClientes, FTerceirizadoLancaFinanceiro,
  FCtaPagar, FBordero, FCtaReceber, FNotaFiscal, FNotaFiscalProcessamento,
  FPedidoVenda, FFaseProducao, FCelulas, FColecao, FDefeitos, FEtiquetas,
  FFaixaEtaria, FFasesGrade, FGradeTamanhos, FGrifes, FMaquinas, FOrdemProducao,
  FQualidades, FProcessos_Maquinas, FProcessos, FProcessosGrade,
  FProcessos_Operadores, FFichaTecnica, FRelatorioProducao, FTamanhos, FTurnos,
  FRomaneio, FRelEntregas, FGeneros, FClassificacaoFiscal, FSituacaoTributaria,
  FRelPlanoContas, FRelDemonstrativo, FEditorTexto, FCarteiraCobranca,
  FMotivoBaixas, FCtaPagarSubstituirTitulos, FUsuarioControle, FAboutBox,
  FConsultaNotaFiscal, FRelEstoque, FRelMovCaixa, FRelFluxoCaixa,
  FTransferenciaContas, FClientesGradeEdicao, FRelCtaPagar, FRelCtaReceber,
  FRelClientesMalaDireta, FRegioes, FRepresentantes, FFornecedores,
  FTransportadoras, FPlanoContas, FCFOP, FDepartamentos, FFormaPagto, FMarkup,
  FVendaExpressa, FGrupos, FTabelaNCM, FSubGrupos, FTipoProduto, FProdutos,
  FEtiquetasWindows, FServidorSistema, FTabelaPreco, FProdutosQuantidade,
  FEtiquetasGerar, FPedidoCompra, FCompras, FCidades, FEtiquetaConfigurar,
  FTabelaPrecoServicos, FLoteProducao, FCalendario, FProdutosPesquisaPreco,
  FParametrosSistema, FOrdemServico, FPedidoAprovarVenda, FVendaDevolucaoProdutos,
  FCtaReceberBaixas, FCtaReceberBaixasLotes, FConciliacaoBanco, FBoletoBancario,
  FEmpresaSelecionar, FPedidoVendaConferencia, FRelFaturamento, FRelPedidos,
  FEtiquetacaixa, FCores, FFases, FConta;


procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DestruirObjetos;
  BaseDados.Free;
  BaseDados_PCP.Free;
  dmBaseComponentes.Free;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

  cfg_EmpresaGravar(FSistema.Empresa);
  if DBConexao.Connected then
  begin
     Try
        If not(BaseDados.db_Usuario.state in [dsEdit, dsInsert]) then
           BaseDados.db_Usuario.Edit;

        BaseDados.db_Usuario.FieldByName('ONLINE').AsString := 'N';
        BaseDados.db_Usuario.Post;
     Except
     End;

     Try
        FUsuario.prcLogUsuario('Sistema','saiu do sistema '+Application.Title);
     Except
     End;
  end;

end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin

   DBConexao.Connected :=False;
   Try
     Cursor :=crSQLWait;
     Application.ProcessMessages;

     DBConexao.Connected := False;
     CriarObjetos;
     FInfFile.InfLoad;
     FSistema.Empresa:=cfg_EmpresaLer;

    // ----------------------------------------------------------
    // Conexão com banco de dados
    // ----------------------------------------------------------
     ConectarBancoDados;

     FParametrosAtualizaDados;
     InitVariables;

     // carregar a ultima empresa utilizada
     CarregarEmpresa;

     if ConexaoGlobal Then
     begin
        CarregarModuloDados;
        ConfigurarInicio;
        CarregarUltimaEtapa;
     end
     else
     begin
        TerminarAplicacao;
     end;
   Finally
     Cursor :=crDefault;
   End;

end;

procedure TFrmPrincipal.cfg_EmpresaGravar(lnEmpresa:integer);
Begin
   FInfFile.InfSaveItem('PARAMETROS',   'Empresa' , lnEmpresa );

   if lnEmpresa<1 then
      lnEmpresa:=1;
End;

Function TFrmPrincipal.cfg_EmpresaLer : integer ;
Begin
   Result   :=0;
   Result   := FInfFile.InfLoadItem('PARAMETROS',   'Empresa' , 1 );
End;


procedure TFrmPrincipal.ActAtividadesExecute(Sender: TObject);
begin
   OpenForm(TFrmAtividades,FrmAtividades);
end;

procedure TFrmPrincipal.Action100Execute(Sender: TObject);
begin
   FrmCarneImprimir := TFrmCarneImprimir.create(self);
   FrmCarneImprimir.ShowModal;
end;

procedure TFrmPrincipal.MnuFin_CtaPagarBaixaExecute(Sender: TObject);
begin
   OpenForm(TFrmCtaPagarBaixas,FrmCtaPagarBaixas );

end;


procedure TFrmPrincipal.MnuFin_CtaPagarBaixaLoteExecute(Sender: TObject);
begin
   FrmCtaPagarBaixasLotes := TFrmCtaPagarBaixasLotes.create(self);
   FrmCtaPagarBaixasLotes.ShowModal;

end;

procedure TFrmPrincipal.MnuFin_CtaPagarComissoesExecute(Sender: TObject);
begin
   OpenForm(TFrmComissoes,FrmComissoes );

end;

procedure TFrmPrincipal.MnuFin_CtaPagarComissoesRelatoriosExecute(
  Sender: TObject);
begin
   OpenForm(TFrmComissoesRelatorios,FrmComissoesRelatorios );

end;

procedure TFrmPrincipal.Action105Execute(Sender: TObject);
begin
   OpenForm(TFrmChequesRecebidos,FrmChequesRecebidos );

end;

procedure TFrmPrincipal.Action106Execute(Sender: TObject);
begin
   OpenForm(TFrmChequesEmitidos,FrmChequesEmitidos );

end;

procedure TFrmPrincipal.Action109Execute(Sender: TObject);
begin
   FrmCartaEmitir := TFrmCartaEmitir.create(self);
   FrmCartaEmitir.ShowModal;

end;

procedure TFrmPrincipal.Action10Execute(Sender: TObject);
begin
   PrinterSetupDialog1.Execute;
end;

procedure TFrmPrincipal.Action111Execute(Sender: TObject);
begin
   OpenForm(TFrmControleCaixa,FrmControleCaixa );

end;

procedure TFrmPrincipal.Action113Execute(Sender: TObject);
begin
   OpenForm(TFrmBancos,FrmBancos );

end;

procedure TFrmPrincipal.Action114Execute(Sender: TObject);
begin
   OpenForm(TFrmContaCorrente,FrmContaCorrente );

end;

procedure TFrmPrincipal.Action115Execute(Sender: TObject);
begin
   OpenForm(TFrmControleBancario,FrmControleBancario );
end;

procedure TFrmPrincipal.Action117Execute(Sender: TObject);
begin
   OpenForm(TFrmRecibo,FrmRecibo );

end;

procedure TFrmPrincipal.MnuArquivo_CotacaoExecute(Sender: TObject);
begin
   FrmCotacaoMoeda := TFrmCotacaoMoeda.create(self);
   FrmCotacaoMoeda.Show;
end;

procedure TFrmPrincipal.MnuCad_ClieJuridicaExecute(Sender: TObject);
begin
   ViaMenu := True;
   strCliente := 'J';
   FrmClientes := TFrmClientes.create(self);
   FrmClientes.show;

end;

procedure TFrmPrincipal.MnuCad_CliePFisicaExecute(Sender: TObject);
begin
   ViaMenu := True;
   strCliente := 'F';
   FrmClientes := TFrmClientes.create(self);
   FrmClientes.show;
end;

procedure TFrmPrincipal.MnuCad_FornecedorRelatorioExecute(Sender: TObject);
begin
   FrmRelClientes :=TFrmRelClientes.create(self);
   FrmRelClientes.PageControl1.TabIndex := 1;
   FrmRelClientes.ShowModal;
end;

procedure TFrmPrincipal.MnuDistribuir_PagamentosExecute(Sender: TObject);
begin
   OpenForm(TFrmTerceirizadoLancaFinanceiro,FrmTerceirizadoLancaFinanceiro );
end;

procedure TFrmPrincipal.MnuFin_CtaPagarMovtoExecute(Sender: TObject);
begin
   OpenForm(TFrmCtaPagar,FrmCtaPagar);
end;

procedure TFrmPrincipal.MnuFin_CtaRecBorderoExecute(Sender: TObject);
begin
   OpenForm(TFrmBordero,FrmBordero );
end;

procedure TFrmPrincipal.MnuFin_CtaRecMovtoExecute(Sender: TObject);
begin
   OpenForm(TFrmCtaReceber,FrmCtaReceber );
end;

procedure TFrmPrincipal.MnuVendasNFe_EmitirExecute(Sender: TObject);
begin
   FrmNotaFiscal := TFrmNotaFiscal.create(self);
   FrmNotaFiscal.show;
end;

procedure TFrmPrincipal.MnuVendasNFe_ProcessamentoExecute(Sender: TObject);
begin
   FrmNotaFiscalProcessamento := TFrmNotaFiscalProcessamento.create(self);
   FrmNotaFiscalProcessamento.ShowModal;
end;

procedure TFrmPrincipal.MnuVendas_PedidosExecute(Sender: TObject);
begin
   OpenForm(TFrmPedidoVenda,FrmPedidoVenda );
end;

procedure TFrmPrincipal.Mnu_PCP_AndamentoFaseProducaoExecute(Sender: TObject);
begin
   OpenForm(TFrmFaseProducao,FrmFaseProducao );
end;

procedure TFrmPrincipal.Mnu_PCP_CelulasExecute(Sender: TObject);
begin
   OpenForm(TFrmCelulas,FrmCelulas);
end;

procedure TFrmPrincipal.Mnu_PCP_ColecaoExecute(Sender: TObject);
begin
   OpenForm(TFrmColecao,FrmColecao);
end;

procedure TFrmPrincipal.Mnu_PCP_CoresExecute(Sender: TObject);
begin
   OpenForm(TFrmCores, FrmCores);
end;

procedure TFrmPrincipal.Mnu_PCP_DefeitosExecute(Sender: TObject);
begin
   OpenForm(TFrmDefeitos,FrmDefeitos);
end;

procedure TFrmPrincipal.Mnu_PCP_EtiquetaExecute(Sender: TObject);
begin
   OpenForm(TFrmEtiquetas,FrmEtiquetas);
end;

procedure TFrmPrincipal.Mnu_PCP_FaixaEtariaExecute(Sender: TObject);
begin
   OpenForm(TFrmFaixaEtaria,FrmFaixaEtaria);
end;

procedure TFrmPrincipal.Mnu_PCP_FasesExecute(Sender: TObject);
begin
   OpenForm(TFrmFases, FrmFases);
end;

procedure TFrmPrincipal.Mnu_PCP_FasesGradeExecute(Sender: TObject);
begin
   OpenForm(TFrmFasesGrade,FrmFasesGrade);
end;

procedure TFrmPrincipal.Mnu_PCP_GradeTamanhoExecute(Sender: TObject);
begin
   OpenForm(TFrmGradeTamanhos,FrmGradeTamanhos);
end;

procedure TFrmPrincipal.Mnu_PCP_GrifesExecute(Sender: TObject);
begin
   OpenForm(TFrmGrifes,FrmGrifes);
end;

procedure TFrmPrincipal.Mnu_PCP_MaquinasExecute(Sender: TObject);
begin
   OpenForm(TFrmMaquinas,FrmMaquinas);
end;

procedure TFrmPrincipal.Mnu_PCP_OrdemProducaoExecute(Sender: TObject);
begin
   OpenForm(TFrmOrdemProducao,FrmOrdemProducao);
end;

procedure TFrmPrincipal.Mnu_QualidadesExecute(Sender: TObject);
begin
   OpenForm(TFrmQualidades,FrmQualidades);
end;

procedure TFrmPrincipal.Mnu_PCP_ProcessoMaquinasExecute(Sender: TObject);
begin
   OpenForm(TFrmProcessos_Maquinas,FrmProcessos_Maquinas);
end;

procedure TFrmPrincipal.Mnu_PCP_ProcessosExecute(Sender: TObject);
begin
   OpenForm(TFrmProcessos,FrmProcessos);
end;

procedure TFrmPrincipal.Mnu_PCP_ProcessosGradeExecute(Sender: TObject);
begin
   OpenForm(TFrmProcessosGrade,FrmProcessosGrade);
end;

procedure TFrmPrincipal.Mnu_PCP_ProcessosOperadorExecute(Sender: TObject);
begin
   OpenForm(TFrmProcessos_Operadores,FrmProcessos_Operadores);
end;

procedure TFrmPrincipal.Mnu_PCP_FichaTecnicaExecute(Sender: TObject);
begin
   OpenForm(TFrmFichaTecnica,FrmFichaTecnica);
end;

procedure TFrmPrincipal.Mnu_PCP_RelatoriosExecute(Sender: TObject);
begin
   FrmRelatorioProducao := TFrmRelatorioProducao.create(self);
   FrmRelatorioProducao.ShowModal;

end;

procedure TFrmPrincipal.Mnu_PCP_TamanhosExecute(Sender: TObject);
begin
   OpenForm(TFrmTamanhos,FrmTamanhos);
end;

procedure TFrmPrincipal.Mnu_PCP_TurnosExecute(Sender: TObject);
begin
   FrmTurnos := TFrmTurnos.create(self);
   FrmTurnos.show;
end;

procedure TFrmPrincipal.Action122Execute(Sender: TObject);
begin
   FrmRomaneio := TFrmRomaneio.create(self);
   FrmRomaneio.Show;
end;


procedure TFrmPrincipal.Action124Execute(Sender: TObject);
begin
   FrmRelEntregas := TFrmRelEntregas.create(self);
   FrmRelEntregas.ShowModal;

end;

procedure TFrmPrincipal.Action12Execute(Sender: TObject);
begin
   FrmGeneros :=TFrmGeneros.create(self);
   FrmGeneros.Show;
end;

procedure TFrmPrincipal.Action130Execute(Sender: TObject);
begin
   FrmClassificacaoFiscal := TFrmClassificacaoFiscal.create(self);
   FrmClassificacaoFiscal.ShowModal;
end;

procedure TFrmPrincipal.Action131Execute(Sender: TObject);
begin
   FrmSituacaoTributaria := TFrmSituacaoTributaria.create(self);
   FrmSituacaoTributaria.ShowModal;
end;

procedure TFrmPrincipal.Action133Execute(Sender: TObject);
begin
   FrmRelPlanoContas := TFrmRelPlanoContas.create(self);
   FrmRelPlanoContas.ShowModal;
end;

procedure TFrmPrincipal.Action134Execute(Sender: TObject);
begin
   FrmRelDemonstrativo := TFrmRelDemonstrativo.create(self);
   FrmRelDemonstrativo.ShowModal;
end;

procedure TFrmPrincipal.Action13Execute(Sender: TObject);
begin
   FrmEditorTexto := TFrmEditorTexto.create(self);
   FrmEditorTexto.ShowModal;
end;

procedure TFrmPrincipal.Action14Execute(Sender: TObject);
begin
   OpenForm(TFrmCarteiraCobranca,FrmCarteiraCobranca );
end;

procedure TFrmPrincipal.ActMotivoBaixaExecute(Sender: TObject);
begin
   OpenForm(TFrmMotivoBaixas,FrmMotivoBaixas );
end;

procedure TFrmPrincipal.MnuFin_CtaPagarSubstituirExecute(Sender: TObject);
begin
   FrmCtaPagarSubstituirTitulos :=TFrmCtaPagarSubstituirTitulos.Create(self);
   FrmCtaPagarSubstituirTitulos.ShowModal;
end;

procedure TFrmPrincipal.Action16Execute(Sender: TObject);
begin
   FrmUsuarioControle := TFrmUsuarioControle.create(self);
   FrmUsuarioControle.ShowModal;
end;

procedure TFrmPrincipal.Action174Execute(Sender: TObject);
begin
   Cascade;
end;

procedure TFrmPrincipal.Action176Execute(Sender: TObject);
begin
   FrmAboutBox :=TFrmAboutBox.create(self);
   FrmAboutBox.Showmodal;
end;

procedure TFrmPrincipal.Action18Execute(Sender: TObject);
begin
   OpenForm(TFrmConsultaNotaFiscal,FrmConsultaNotaFiscal );

end;

procedure TFrmPrincipal.Action19Execute(Sender: TObject);
begin
   FrmRelClientes :=TFrmRelClientes.create(self);
   FrmRelClientes.ShowModal;
end;

procedure TFrmPrincipal.mnuProdutosRelatoriosExecute(Sender: TObject);
begin
   FrmRelEstoque := TFrmRelEstoque.create(self);
   FrmRelEstoque.ShowModal;

end;

procedure TFrmPrincipal.MnuFin_CadContasExecute(Sender: TObject);
begin
   OpenForm(TFrmConta,FrmConta );

end;

procedure TFrmPrincipal.MnuFin_FechamentoCaixaExecute(Sender: TObject);
begin
   OpenForm(TFrmRelMovCaixa,FrmRelMovCaixa );

end;

procedure TFrmPrincipal.MnuFin_FluxoCaixaExecute(Sender: TObject);
begin
   OpenForm(TFrmRelFluxoCaixa,FrmRelFluxoCaixa );

end;

procedure TFrmPrincipal.MnuFin_TransferenciaContasExecute(Sender: TObject);
begin
   OpenForm(TFrmTransferenciaContas,FrmTransferenciaContas );

end;

procedure TFrmPrincipal.Action23Execute(Sender: TObject);
begin
   FrmClientesGradeEdicao := TFrmClientesGradeEdicao.create(self);
   FrmClientesGradeEdicao.ShowModal;

end;

procedure TFrmPrincipal.Act_RelatorioCtaPagarExecute(Sender: TObject);
begin
   OpenForm(TFrmRelCtaPagar,FrmRelCtaPagar );

end;

procedure TFrmPrincipal.Act_RelatorioCtaReceberExecute(Sender: TObject);
begin
   OpenForm(TFrmRelCtaReceber,FrmRelCtaReceber );

end;

procedure TFrmPrincipal.Action25Execute(Sender: TObject);
begin
   FrmRelClientesMalaDireta := TFrmRelClientesMalaDireta.create(self);
   FrmRelClientesMalaDireta.ShowModal;

end;

procedure TFrmPrincipal.Action26Execute(Sender: TObject);
begin
   FrmRegioes := TFrmRegioes.create(self);
   FrmRegioes.Show;

end;

procedure TFrmPrincipal.Action27Execute(Sender: TObject);
begin
   FrmRepresentantes := TFrmRepresentantes.create(self);
   FrmRepresentantes.Show;

end;

procedure TFrmPrincipal.Action28Execute(Sender: TObject);
begin
   FrmFornecedores := TFrmFornecedores.create(self);
   FrmFornecedores.show;

end;

procedure TFrmPrincipal.Action29Execute(Sender: TObject);
begin
   FrmTransportadoras := TFrmTransportadoras.create(self);
   FrmTransportadoras.Show;

end;

procedure TFrmPrincipal.Action2Execute(Sender: TObject);
begin
   close;
end;

procedure TFrmPrincipal.Action30Execute(Sender: TObject);
begin
   FrmPlanoContas := TFrmPlanoContas.create(self);
   FrmPlanoContas.ShowModal;

end;

procedure TFrmPrincipal.Action31Execute(Sender: TObject);
begin
   FrmCFOP := TFrmCFOP.create(self);
   FrmCFOP.ShowModal;

end;

procedure TFrmPrincipal.Action32Execute(Sender: TObject);
begin
   FrmDepartamentos := TFrmDepartamentos.create(self);
   FrmDepartamentos.Show;

end;

procedure TFrmPrincipal.Action33Execute(Sender: TObject);
begin
   FrmFormaPagto := TFrmFormaPagto.create(self);
   FrmFormaPagto.Show;

end;

procedure TFrmPrincipal.Action3Execute(Sender: TObject);
begin
   WinExec('RunDLL32.exe Shell32.DLL,Control_RunDLL Intl.cpl', SW_Show);
end;

procedure TFrmPrincipal.Action4Execute(Sender: TObject);
begin
   OpenForm(TFrmMarkup, FrmMarkup );

end;

procedure TFrmPrincipal.MnuVendas_VendaExpressaExecute(Sender: TObject);
begin
   OpenForm(TFrmVendaExpressa, FrmVendaExpressa );
end;

procedure TFrmPrincipal.mnuProdutosGrupoExecute(Sender: TObject);
begin
   OpenForm(TFrmGrupos,FrmGrupos );
end;

procedure TFrmPrincipal.mnuProdutosNCMExecute(Sender: TObject);
begin

   OpenForm(TFrmTabelaNCM,FrmTabelaNCM );
end;

procedure TFrmPrincipal.mnuProdutosSubgrupoExecute(Sender: TObject);
begin
   OpenForm(TFrmSubGrupos,FrmSubGrupos );

end;

procedure TFrmPrincipal.mnuProdutosTipoProdutosExecute(Sender: TObject);
begin
   FrmTipoProduto := TFrmTipoProduto.create(self);
   FrmTipoProduto.ShowModal;

end;

procedure TFrmPrincipal.mnuProdutosCadastroExecute(Sender: TObject);
begin
   OpenForm(TFrmProdutos,FrmProdutos );

end;

procedure TFrmPrincipal.mnuProdutosCodigoBarraJatoTintasExecute(Sender: TObject);
begin
  FrmEtiquetasWindows :=TFrmEtiquetasWindows.Create(self);
  FrmEtiquetasWindows.ShowModal;
end;

procedure TFrmPrincipal.Act_fasesExecute(Sender: TObject);
begin
   FrmServidorSistema := TFrmServidorSistema.create(self);
   FrmServidorSistema.ShowModal;
end;

procedure TFrmPrincipal.ActTabelaPrecosExecute(Sender: TObject);
begin
   FrmTabelaPreco := TFrmTabelaPreco.create(self);
   FrmTabelaPreco.Show;

end;

procedure TFrmPrincipal.mnuProdutosAtualizarExecute(Sender: TObject);
begin
   FrmProdutosQuantidade := TFrmProdutosQuantidade.create(self);
   FrmProdutosQuantidade.ShowModal;
end;

procedure TFrmPrincipal.mnuProdutosCodigoBarraTermicaExecute(Sender: TObject);
begin
   FrmEtiquetasGerar := TFrmEtiquetasGerar.create(self);
   FrmEtiquetasGerar.Show;
end;

procedure TFrmPrincipal.MnuComprasPedidosExecute(Sender: TObject);
begin
   OpenForm(TFrmPedidoCompra,FrmPedidoCompra );
end;

procedure TFrmPrincipal.MnuComprasNotaFiscalExecute(Sender: TObject);
begin
 OpenForm(TFrmCompras,FrmCompras);

end;

procedure TFrmPrincipal.Action5Execute(Sender: TObject);
begin
   OpenForm(TFrmCidades,FrmCidades);

end;

procedure TFrmPrincipal.Action6Execute(Sender: TObject);
begin
   FrmEtiquetaConfigurar := TFrmEtiquetaConfigurar.create(self);
   FrmEtiquetaConfigurar.ShowModal;
end;

procedure TFrmPrincipal.Action7Execute(Sender: TObject);
begin
   OpenForm(TFrmTabelaPrecoServicos, FrmTabelaPrecoServicos );
end;

procedure TFrmPrincipal.Mnu_PCP_LoteProducaoExecute(Sender: TObject);
begin
   OpenForm(TFrmLoteProducao, FrmLoteProducao );

end;

procedure TFrmPrincipal.MnuJan_CalendarioExecute(Sender: TObject);
begin
 OpenForm(TFrmCalendario,FrmCalendario);
end;

procedure TFrmPrincipal.Action88Execute(Sender: TObject);
begin
   FrmProdutosPesquisaPreco := TFrmProdutosPesquisaPreco.create(self);
   FrmProdutosPesquisaPreco.ShowModal;

end;

procedure TFrmPrincipal.Action8Execute(Sender: TObject);
begin
   FrmParametrosSistema := TFrmParametrosSistema.create(self);
   FrmParametrosSistema.PgParametros.ActivePageIndex := 3;
   FrmParametrosSistema.ShowModal;
end;

procedure TFrmPrincipal.MnuVendas_OrdemServicosExecute(Sender: TObject);
begin
   OpenForm(TFrmOrdemServico,FrmOrdemServico );
end;

procedure TFrmPrincipal.MnuVendas_PedidosAprovarExecute(Sender: TObject);
begin
   OpenForm(TFrmPedidoAprovarVenda,FrmPedidoAprovarVenda);

end;

procedure TFrmPrincipal.Action94Execute(Sender: TObject);
begin
   FrmVendaExpressa := TFrmVendaExpressa.create(self);
   FrmVendaExpressa.ShowModal;

end;

procedure TFrmPrincipal.Action95Execute(Sender: TObject);
begin
   FrmVendaDevolucaoProdutos := TFrmVendaDevolucaoProdutos.create(self);
   FrmVendaDevolucaoProdutos.Show;

end;

procedure TFrmPrincipal.MnuFin_CtaReceberBaixaExecute(Sender: TObject);
begin
   OpenForm(TFrmCtaReceberBaixas,FrmCtaReceberBaixas );

end;


procedure TFrmPrincipal.MnuFin_CtaReceberBaixaLoteExecute(Sender: TObject);
begin
   FrmCtaReceberBaixasLotes:=TFrmCtaReceberBaixasLotes.Create(self);;
   FrmCtaReceberBaixasLotes.ShowModal;
end;

procedure TFrmPrincipal.Action98Execute(Sender: TObject);
begin
   OpenForm(TFrmConciliacaoBanco,FrmConciliacaoBanco );
end;

procedure TFrmPrincipal.Action99Execute(Sender: TObject);
begin
   OpenForm(TFrmBoletoBancario,FrmBoletoBancario );
end;

procedure TFrmPrincipal.Action9Execute(Sender: TObject);
begin
   FrmContaCorrente := TFrmContaCorrente.create(self);
   FrmContaCorrente.Show;
end;

procedure TFrmPrincipal.Action_EmpresaExecute(Sender: TObject);
Var
 idEmpresaOld : Integer;
begin
   idEmpresaOld := FSistema.Empresa;

   FrmEmpresaSelecionar := TFrmEmpresaSelecionar.Create(self);
   FrmEmpresaSelecionar.ShowModal;

   // se houve mudança na empresa, reconfigurar.
   if idEmpresaOld <> FSistema.Empresa then
   Begin
      SetarEmpresa;

      AvisoSistema('O Sistema será fechado.' +
                sLineBreak+
                sLineBreak+
                'E execute-o novamente, para carregar as configurações adequadas.');


      blTerminate := True;
      TerminarAplicacao;

   End;

end;

procedure TFrmPrincipal.Action_OpcoesExecute(Sender: TObject);
begin
   FrmParametrosSistema := TFrmParametrosSistema.create(self);
   FrmParametrosSistema.ShowModal;
end;

procedure TFrmPrincipal.Action_SairExecute(Sender: TObject);
begin
   Close;
end;

procedure TFrmPrincipal.MnuVendas_PedidosConferenciaExecute(Sender: TObject);
begin
   FrmPedidoVendaConferencia :=TFrmPedidoVendaConferencia.Create(self);
   FrmPedidoVendaConferencia.Show;
end;

procedure TFrmPrincipal.Action17Execute(Sender: TObject);
begin
   OpenForm(TFrmRelFaturamento,FrmRelFaturamento );
end;


procedure TFrmPrincipal.ActPedidoVendaRelatorioExecute(Sender: TObject);
begin
   OpenForm(TFrmRelPedidos,FrmRelPedidos );
end;

procedure TFrmPrincipal.ExecutarDLL( nDLL,  nMODULO : String );
var
   DllHandle  : THandle;
   ProcAddr   : FarProc;
   Programa   : TPrograma;
Begin

   DllHandle := LoadLibrary(pchar( nDLL ));
   ProcAddr  := GetProcAddress(DllHandle, pchar( nMODULO ));

   if ProcAddr <> nil then
   begin
      Programa := ProcAddr;
      Programa(Application,Self);
   end;

End;

procedure TFrmPrincipal.FormResize(Sender: TObject);
begin
   if Screen.Width < 1024 then
      LblResolucao.Visible := True
   else
      LblResolucao.Visible := false;
end;




procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
   Cursor :=crDefault;
end;

procedure TFrmPrincipal.ConfigurarInicio;
var
  iActMenus  :  Integer;
  ac: TAction;
begin
   Application.OnShowHint    := ShowHintPersonalizado;

   FSistema.ExeName := Uppercase(ExtractName( Application.ExeName));

   if FSistema.ExeName=EXECUTAVEL_NOME then
      RBP_Vendas.Groups[1].Destroy;


   if FSistema.ExeName<>EXECUTAVEL_NOME then
   begin
      Ribbon1.RemoveTab('Produção');
      Ribbon1.RemoveTab('Terceirizações');
      RBP_Vendas.Groups[0].Destroy;

      Application.Title               := 'ST-Plus';
      FrmPrincipal.Caption            := Application.Title;
      FrmPrincipal.Icon               := Application.Icon;
      Ribbon1.ApplicationMenu.Icon    := Application.Icon;
      FrmPrincipal.Icon               := Application.Icon;


      iActMenus := 0;
      for iActMenus := 0 to Pred( ActionMenus.ActionCount) do
      begin

          ac := TAction( ActionMenus.Actions[iActMenus]);

          // renomear menus
          if UpperCase(ac.Name)=UpperCase('MnuVendas_Pedidos') then
             ac.Caption :='Ordem de Serviço';

          if UpperCase(ac.Name)=UpperCase('MnuVendas_Pedidos') then
             ac.Caption :='Ordem de Serviço';

          if UpperCase(ac.Name)=UpperCase('MnuVendas_PedidosAprovar') then
             ac.Caption :='Aprovar Ordem de Serviço';

          if UpperCase(ac.Name)=UpperCase('MnuVendas_PedidosConferencia') then
             ac.Caption :='Conferência Ordem de Serviço';


      End;
      iActMenus := 0;

   end;

   // ------------------------------------------------------------------------
   // Configura componente ImagemLogo para cobrir toda area do formulário
   // e centralizar no formulário
   // ------------------------------------------------------------------------

   ImagemLogo.AutoSize := True;
   ImagemLogo.Align := alClient;

   // ------------------------------------------------------------------------
   // Checa e a LOGO existe, se exitir carrega no formulário principal
   // ------------------------------------------------------------------------
   if fileexists(FSistema.PastaPadrao+'\logo.jpg') then
   Begin
      ImagemLogo.Picture.LoadFromFile(FSistema.PastaPadrao+'\logo.jpg');
   End;
   Update;

   // ------------------------------------------------------------------------
   // Fechar formulário SPLASH depois que tudo foi carregado e configurado
   // ------------------------------------------------------------------------
   FrmSplash.Close;

   Application.OnMessage := MudarComEnter;
   // Monta todo o nome, versão e descrição do sistema
   stbBarraStatus.Panels[6].Text := Concat('Sistema: ',Application.Title, ' | v.2015' ) ;
   stbBarraStatus.Panels[2].Text := Concat(DATABASE_GERENCIADOR,' ',DATABASE_VERSAO ) ;

   // ------------------------------------------------------------------------
   // Acessa tela de LOGIN
   // ------------------------------------------------------------------------
   FrmAcesso := TFrmAcesso.create(self);
   FrmAcesso.ShowModal;

   //blnUsuarioAutorizado :=true;
   if blnUsuarioAutorizado = False then
   begin
      // fechar sistema
      TerminarAplicacao;
   end;

   // ------------------------------------------------------------------------
   // Definir dados na barra de status
   // ------------------------------------------------------------------------

   FUsuario.UsuarioNome:=fncPrimeiraLetra(FUsuario.UsuarioNome);

   stbBarraStatus.Panels[1].Text := Concat(' Usuário: ', FUsuario.UsuarioNome);

   // ------------------------------------------------------------------------
   // Define acesso ao menus
   // ------------------------------------------------------------------------

   // ------------------------------------------------------------------------
   // Configurações do sistema  VESTIS x Windows
   // ------------------------------------------------------------------------
   FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
   FormatSettings.ShortTimeFormat := 'hh:mm:ss';
   FormatSettings.DecimalSeparator := ',';

   FUsuario.prcLogUsuario('Sistema','acessou sistema '+Application.Title);


end;


procedure TFrmPrincipal.DBConexaoAfterConnect(Sender: TObject);
begin
   //stbBarraStatus.Panels[3].Text := Concat(' Servidor: ', LowerCase( FBancoDados.endereco),' [',FBancoDados.Nome,']'  );
   if not Assigned(FBancoDados) then
     Exit;

   stbBarraStatus.Panels[3].Text := Concat('root: ',LowerCase( FBancoDados.endereco) );
end;



// ------------------------------------------------------------------------
// conectar ao servidor...
// ------------------------------------------------------------------------
procedure TFrmPrincipal.CarregarEmpresa;
begin
   FSistema.Empresa:=cfg_EmpresaLer;
   SetarEmpresa;

end;

procedure TFrmPrincipal.SetarEmpresa;
begin

   cfg_EmpresaGravar(FSistema.Empresa);
   stbBarraStatus.Panels[0].Text := Concat('Empresa: ', IntToStr(FSistema.Empresa), ' [', FParametros.Empresa.Cidade,']'  ) ;

end;

procedure TFrmPrincipal.CarregarModuloDados;
begin
   // ------------------------------------------------------------------------
   // Carregar na memória DATAMODULEs
   // ------------------------------------------------------------------------
   BaseDados          := TBaseDados.create(self);
   BaseDados_PCP      := TBaseDados_PCP.create(self);
   dmBaseComponentes  := TdmBaseComponentes.create(self);

   /// ------------------------------------------------------------------------
   /// Enviar ao servidor dados de registros
   /// ------------------------------------------------------------------------
   BaseDados.db_Parametros.Close;
   BaseDados.db_Parametros.Open;
   SetarEmpresa;

end;

procedure TFrmPrincipal.CarregarUltimaEtapa;
begin
   // ------------------------------------------------------------------------
   // Define parametros de acordo com o cadastro do usuario
   // ------------------------------------------------------------------------
   BaseDados.db_empresa.close;
   BaseDados.db_Parametros.close;
   BaseDados.db_empresa.Open;
   BaseDados.db_Parametros.Open;

   // ------------------------------------------------------------------------
   // carregar papel de parede
   // ------------------------------------------------------------------------
   if BaseDados.db_Parametros.FieldByName('SISTEMA_LOGO_PRINCIPAL').AsString>'' then
   begin
      If fileexists(BaseDados.db_Parametros.FieldByName('SISTEMA_LOGO_PRINCIPAL')
        .AsString) then
      Begin
         ImagemLogo.Visible := True;
         ImagemLogo.Picture.LoadFromFile
           (BaseDados.db_Parametros.FieldByName('SISTEMA_LOGO_PRINCIPAL').AsString);
      End;
   end;
   Update;


   // ------------------------------------------------------------------------
   // --- Informa ao sistema que o usuário está on-line            ----------
   // ------------------------------------------------------------------------
   // StatusUserName(BaseDados.db_Usuario,qCodusuario,'S');

   // ChecarAlertas;

   // ------------------------------------------------------------------------
   // se for versão FREE
   // ------------------------------------------------------------------------

   // Testar resoluçãodo monitor
   // O sistema exige que seja no minimo 1024x768 dpi

   if Screen.Width < 1024 then
   begin
      LblResolucao.Visible := True;

      // TratarErros('Este software foi projetado A relosução do monitor deve ser no minimo 1024x768 dpi');
      FormMensagem
        ('Este software foi projetado para trabalhar em monitores com resolução minima de 1024x768 ou maior. ' +
         #13 + #10 +
         #13 + #10 +
        'Atualmente está com ' + IntToStr(Screen.Width) + 'x' +
        IntToStr(Screen.Height) +
        ' Para melhor aproveitamento, mude a resolução para 1024x768 DPI ou maior.' );

   end;

   if blnUsuarioAutorizado = False then
   begin
      // fechar sistema
      TerminarAplicacao;
   end;

   BaseDados.db_empresa.Close;
   BaseDados.db_Parametros.Close;

   BaseDados.db_empresa.Open;
   BaseDados.db_Parametros.Open;

end;

procedure TFrmPrincipal.ConectarBancoDados;
begin

   ConexaoGlobal := False;
   DBConexao.Connected := False;

   While (ConectarServidorSQL=False) and (ConexaoGlobal=False) do
   begin
      FrmServidorSistema :=TFrmServidorSistema.Create(self);
      FrmServidorSistema.ShowModal;
   end;

   If ConexaoGlobal Then
   Begin
      FSQLConexao.SQLConexao :=DBConexao;
   End;

end;

Function TFrmPrincipal.ConectarServidorSQL : Boolean;
begin

  if blTerminate then
  begin
     Result :=True;
     TerminarAplicacao;
     exit;
  end;

  Result        := False;
  ConexaoGlobal := False;

  DBConexao.LoginPrompt                 := False;
  DBConexao.Params.Values['Server']     := FBancoDados.Endereco;
  DBConexao.Params.Values['Database']   := FBancoDados.Nome;
  DBConexao.Params.Values['port']       := IntToStr(FBancoDados.Porta);
  DBConexao.Params.Values['user_name']  := FBancoDados.Usuario;
  DBConexao.Params.Values['password']   := FBancoDados.Senha;

  Try
     DBConexao.Connected  := True;
     ConexaoGlobal        := True;
     Result               := True;

  Except
     begin
        Result :=False;
     end;
  End;

end;


procedure TFrmPrincipal.ShowHintPersonalizado(var HintStr: string; var CanShow: Boolean;
  var HintInfo: THintInfo);
var
   I: Integer;
begin

   for I := 0 to (Application.ComponentCount - 1) do
   Begin

      if Application.Components[I] is THintWindow then
      with THintWindow(Application.Components[I]).Canvas do
      begin
         Font.Name := 'Segoe UI';
         Font.Size := 8;
         Font.Style := [fsBold];
         HintInfo.HintColor := clYellow;
      End;

   End;

end;

procedure TFrmPrincipal.TerminarAplicacao;
begin
  while not Application.Terminated do
  begin
    Application.Terminate;
    Application.ProcessMessages;
  end;
  Halt(1);
end;

// navegar com ENTER e SETAS em todos os modulos do sistema
procedure TFrmPrincipal.MudarComEnter(var Msg: TMsg; var Handled: Boolean);
var
   cComponente : TComponent;
   I: integer;

begin

   // o "TRY" é necessário para evitar mensagens de erros em formulários MDI e SDI
   Try
      // Não aplicar sobre os seguintes componentes:
      If not ((Screen.ActiveControl    is TCustomMemo)                   or
            (Screen.ActiveControl      is TCustomGrid)                   or
            (Screen.ActiveControl      is TComboBox)                     or
            (Screen.ActiveControl      is TDBComboBox)                   or
            (Screen.ActiveControl      is TDBLookupComboBox)             or
            (Screen.ActiveControl      is TDBRadioGroup)                 or
            (Screen.ActiveControl      is TRadioGroup)                   or
            (Screen.ActiveControl      is TButton)                       or
     	      (Screen.ActiveControl      is TBitBtn)                       or
            (Screen.ActiveForm.ClassName = 'TMessageForm')               or
            (UpperCase(Screen.ActiveForm.Name) = 'FRMESTSEARCHDIALOG'))  then
      begin

         If Msg.message = WM_KEYDOWN then
         begin
            Case Msg.wParam of

               VK_RETURN, VK_DOWN:  Screen.ActiveForm.Perform(WM_NextDlgCtl, 0, 0);
               VK_UP:               Screen.ActiveForm.Perform(WM_NextDlgCtl, 1, 0);
            end;
         end;

      end;

   Except
   End;

   //Try

     if Msg.Message = WM_KEYDOWN then
     begin
        if (Msg.wParam in [VK_F3,VK_F4,VK_F5,VK_F6,VK_F7,VK_F11,VK_INSERT])   then
        begin

           // localizar se componente existe
           cComponente := Screen.ActiveForm.FindComponent('FrmFrameBotoes1');
           if not Assigned(cComponente) then
              exit;

           // somente para as telas que possuem barra de botões
           case Msg.wParam of
              VK_INSERT     : TFrmFrameBotoes(cComponente).SpbAdicionarClick(Screen.ActiveForm);

              {
              VK_ESCAPE     : Begin
                                 if (TFrmFrameBotoes(cComponente).DataSource.DataSet.State in [dsedit,dsinsert]) then
                                    TFrmFrameBotoes(cComponente).SpbCancelarClick(Screen.ActiveForm);
                              End;
              }
              VK_F3         : TFrmFrameBotoes(cComponente).SpbEditarClick(Screen.ActiveForm);
              VK_F4         : TFrmFrameBotoes(cComponente).SpbCancelarClick(Screen.ActiveForm);
              VK_F5         : TFrmFrameBotoes(cComponente).SpbSalvarClick(Screen.ActiveForm);
              VK_F6         : TFrmFrameBotoes(cComponente).SpbExcluirClick(Screen.ActiveForm);
              VK_F7         : TFrmFrameBotoes(cComponente).SpbProcurar.Click;
              VK_F11        : TFrmFrameBotoes(cComponente).SpbImprimir.Click;

           end;


        end;
     end;

      //Screen.ActiveForm.Close;
   //Except
   //End;


end;

procedure TFrmPrincipal.Action123Execute(Sender: TObject);
begin
   OpenForm(TFrmEtiquetacaixa,FrmEtiquetacaixa );
end;

procedure TFrmPrincipal.OpenForm(FClass: TFormClass; var fmFormulario);
begin

   if (TForm(fmFormulario) <> nil) then
   begin
      TForm(fmFormulario).BringToFront;
      TForm(fmFormulario).WindowState := wsMaximized;
      TForm(fmFormulario).Focused;
   end
   else
   Begin
      Application.CreateForm(FClass, fmFormulario);
   End;

end;

end.







