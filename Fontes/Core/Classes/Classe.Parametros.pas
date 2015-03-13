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


Unit Classe.Parametros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type

   TParametrosEmpresa = Class
   Private
     FCodigo                           : Integer;
     FDataAtividade                    : TDateTime; // data inicial de atividade da empresa
     FNome                             : String;
     FNomeFantasia                     : String;
     FCNPJ                             : String;
     FIE                               : String;
     FIEmunicipal                      : String;
     FEndereco                         : String;
     FNumero                           : String;
     FBairro                           : String;
     FComplemento                      : String;
     FCep                              : String;
     FFone                             : String;
     FFax                              : String;
     FEmail                            : String;
     FSite                             : String;
     FContato                          : String;
     FCodigoCidade                     : Integer;
     FCidade                           : String;
     FUF                               : String;
     FCodigoPais                       : Integer;
     FNomePais                         : String;
     FRegimeTributario                 : Integer;
     FRegimeTributarioAliquota         : Real;

     function GetBairro: String;
     function GetCep: String;
     function GetCidade: String;
     function GetCNPJ: String;
     function GetCodigo: Integer;
     function GetCodigoCidade: Integer;
     function GetCodigoPais: Integer;
     function GetComplemento: String;
     function GetContato: String;
     function GetDataAtividade: TDateTime;
     function GetEmail: String;
     function GetEndereco: String;
     function GetFax: String;
     function GetFone: String;
     function GetIE: String;
     function GetIEmunicipal: String;
     function GetNome: String;
     function GetNomeFantasia: String;
     function GetNomePais: String;
     function GetNumero: String;
     function GetRegimeTributario: Integer;
     function GetRegimeTributarioAliquota: Real;
     function GetSite: String;
     function GetUF: String;
     procedure SetBairro(const Value: String);
     procedure SetCep(const Value: String);
     procedure SetCidade(const Value: String);
     procedure SetCNPJ(const Value: String);
     procedure SetCodigo(const Value: Integer);
     procedure SetCodigoCidade(const Value: Integer);
     procedure SetCodigoPais(const Value: Integer);
     procedure SetComplemento(const Value: String);
     procedure SetContato(const Value: String);
     procedure SetDataAtividade(const Value: TDateTime);
     procedure SetEmail(const Value: String);
     procedure SetEndereco(const Value: String);
     procedure SetFax(const Value: String);
     procedure SetFone(const Value: String);
     procedure SetIE(const Value: String);
     procedure SetIEmunicipal(const Value: String);
     procedure SetNome(const Value: String);
     procedure SetNomeFantasia(const Value: String);
     procedure SetNomePais(const Value: String);
     procedure SetNumero(const Value: String);
     procedure SetRegimeTributario(const Value: Integer);
     procedure SetRegimeTributarioAliquota(const Value: Real);
     procedure SetSite(const Value: String);
     procedure SetUF(const Value: String);

   Public
     property Codigo                   : Integer    Read  GetCodigo                     Write SetCodigo                         ;
     property DataAtividade            : TDateTime  Read  GetDataAtividade              Write SetDataAtividade                  ;
     property Nome                     : String     Read  GetNome                       Write SetNome                           ;
     property NomeFantasia             : String     Read  GetNomeFantasia               Write SetNomeFantasia                   ;
     property CNPJ                     : String     Read  GetCNPJ                       Write SetCNPJ                           ;
     property IE                       : String     Read  GetIE                         Write SetIE                             ;
     property IEmunicipal              : String     Read  GetIEmunicipal                Write SetIEmunicipal                    ;
     property Endereco                 : String     Read  GetEndereco                   Write SetEndereco                       ;
     property Numero                   : String     Read  GetNumero                     Write SetNumero                         ;
     property Bairro                   : String     Read  GetBairro                     Write SetBairro                         ;
     property Complemento              : String     Read  GetComplemento                Write SetComplemento                    ;
     property Cep                      : String     Read  GetCep                        Write SetCep                            ;
     property Fone                     : String     Read  GetFone                       Write SetFone                           ;
     property Fax                      : String     Read  GetFax                        Write SetFax                            ;
     property Email                    : String     Read  GetEmail                      Write SetEmail                          ;
     property Site                     : String     Read  GetSite                       Write SetSite                           ;
     property Contato                  : String     Read  GetContato                    Write SetContato                        ;
     property CodigoCidade             : Integer    Read  GetCodigoCidade               Write SetCodigoCidade                   ;
     property Cidade                   : String     Read  GetCidade                     Write SetCidade                         ;
     property UF                       : String     Read  GetUF                         Write SetUF                             ;
     property CodigoPais               : Integer    Read  GetCodigoPais                 Write SetCodigoPais                     ;
     property NomePais                 : String     Read  GetNomePais                   Write SetNomePais                       ;
     property RegimeTributario         : Integer    Read  GetRegimeTributario           Write SetRegimeTributario               ;
     property RegimeTributarioAliquota : Real       Read  GetRegimeTributarioAliquota   Write SetRegimeTributarioAliquota       ;

   End;


   TParametrosNFE = Class
   private
     { Private declarations }
     FAmbiente                         : String;
     FTipoDANFE                        : String;
     FFormaEmissao                     : String;
     FModelo                           : String;
     FSerie                            : String;
     FSequencia                        : Integer;
     FLote                             : Integer;

     function GetAmbiente: String;
     function GetFormaEmissao: String;
     function GetLote: Integer;
     function GetModelo: String;
     function GetSequencia: Integer;
     function GetSerie: String;
     function GetTipoDANFE: String;
     procedure SetAmbiente(const Value: String);
     procedure SetFormaEmissao(const Value: String);
     procedure SetLote(const Value: Integer);
     procedure SetModelo(const Value: String);
     procedure SetSequencia(const Value: Integer);
     procedure SetSerie(const Value: String);
     procedure SetTipoDANFE(const Value: String);

   public
     { Public declarations }
     property Ambiente                 : String     Read  GetAmbiente        Write  SetAmbiente;
     property TipoDANFE                : String     Read  GetTipoDANFE       Write  SetTipoDANFE;
     property FormaEmissao             : String     Read  GetFormaEmissao    Write  SetFormaEmissao;
     property Modelo                   : String     Read  GetModelo          Write  SetModelo;
     property Serie                    : String     Read  GetSerie           Write  SetSerie;
     property Sequencia                : Integer    Read  GetSequencia       Write  SetSequencia;
     property Lote                     : Integer    Read  GetLote            Write  SetLote;
   End;


   TParametrosProduto = Class
   Private
     FCodificacao                      : String;
     FSeparador                        : String;
     FGrupo                            : Integer;
     FSubgrupo                         : Integer;
     FProduto                          : Integer;
     FEstoqueNegativo                  : String;
     FSituacaoTributaria               : String;
     FClassificacaoFiscal              : String;
     FNCM                              : String;

     function GetClassificacaoFiscal: String;
     function GetCodificacao: String;
     function GetEstoqueNegativo: String;
     function GetGrupo: Integer;
     function GetNCM: String;
     function GetProduto: Integer;
     function GetSeparador: String;
     function GetSituacaoTributaria: String;
     function GetSubgrupo: Integer;
     procedure SetClassificacaoFiscal(const Value: String);
     procedure SetCodificacao(const Value: String);
     procedure SetEstoqueNegativo(const Value: String);
     procedure SetGrupo(const Value: Integer);
     procedure SetNCM(const Value: String);
     procedure SetProduto(const Value: Integer);
     procedure SetSeparador(const Value: String);
     procedure SetSituacaoTributaria(const Value: String);
     procedure SetSubgrupo(const Value: Integer);

   Public
     property  Codificacao             : String     Read  GetCodificacao            Write    SetCodificacao;
     property  Separador               : String     Read  GetSeparador              Write    SetSeparador;
     property  Grupo                   : Integer    Read  GetGrupo                  Write    SetGrupo;
     property  Subgrupo                : Integer    Read  GetSubgrupo               Write    SetSubgrupo;
     property  Produto                 : Integer    Read  GetProduto                Write    SetProduto;
     property  EstoqueNegativo         : String    Read  GetEstoqueNegativo        Write    SetEstoqueNegativo;
     property  SituacaoTributaria      : String     Read  GetSituacaoTributaria     Write    SetSituacaoTributaria;
     property  ClassificacaoFiscal     : String     Read  GetClassificacaoFiscal    Write    SetClassificacaoFiscal;
     property  NCM                     : String     Read  GetNCM                    Write    SetNCM;

   End;

   TParametrosProducao = Class
   Private
     FProducaoFinalizar                : String;
     FQualidadePadrao                  : Integer;

     function GetProducaoFinalizar: String;
     function GetQualidadePadrao: Integer;
     procedure SetProducaoFinalizar(const Value: String);
     procedure SetQualidadePadrao(const Value: Integer);
   Public
     property ProducaoFinalizar        : String    Read GetProducaoFinalizar      Write  SetProducaoFinalizar;
     property QualidadePadrao          : Integer   Read GetQualidadePadrao        Write  SetQualidadePadrao;
   End;

   TParametrosFinanceiro = Class
   Private
     FJuros                            : Real;
     FCartorio                         : Real;
     FCobrancaDias                     : Integer;
     FVendaVistaBaixar                 : String;
     FDiasBloqueio                     : Integer;
     FPagarLancarCaixa                 : String;
     FPagarLancarBanco                 : String;
     FPagarComissao                    : String;
     FPagarContaCaixa                  : Integer;
     FPagarPlanoContas                 : String;
     FPagarComissaoVencimento          : Integer;
     FPagarComissaoContaCaixa          : Integer;
     FPagarComissaoCentroCusto         : Integer;
     FPagarComissaoPlanoConta          : String;
     FReceberLancarCaixa               : String;
     FReceberLancarBanco               : String;
     FReceberContaCaixa                : Integer;
     FReceberPlanoContas               : String;
     FBalcaoLancarCaixa                : String;

     function GetBalcaoLancarCaixa: String;
     function GetCartorio: Real;
     function GetCobrancaDias: Integer;
     function GetDiasBloqueio: Integer;
     function GetJuros: Real;
     function GetPagarComissao: String;
     function GetPagarComissaoCentroCusto: Integer;
     function GetPagarComissaoContaCaixa: Integer;
     function GetPagarComissaoPlanoconta: String;
     function GetPagarComissaoVencimento: Integer;
     function GetPagarContaCaixa: Integer;
     function GetPagarLancarBanco: String;
     function GetPagarLancarCaixa: String;
     function GetPagarPlanoContas: String;
     function GetReceberContaCaixa: Integer;
     function GetReceberLancarBanco: String;
     function GetReceberLancarCaixa: String;
     function GetReceberPlanoContas: String;
     function GetVendaVistaBaixar: String;
     procedure SetBalcaoLancarCaixa(const Value: String);
     procedure SetCartorio(const Value: Real);
     procedure SetCobrancaDias(const Value: Integer);
     procedure SetDiasBloqueio(const Value: Integer);
     procedure SetJuros(const Value: Real);
     procedure SetPagarComissao(const Value: String);
     procedure SetPagarComissaoCentroCusto(const Value: Integer);
     procedure SetPagarComissaoContaCaixa(const Value: Integer);
     procedure SetPagarComissaoPlanoConta(const Value: String);
     procedure SetPagarComissaoVencimento(const Value: Integer);
     procedure SetPagarContaCaixa(const Value: Integer);
     procedure SetPagarLancarBanco(const Value: String);
     procedure SetPagarLancarCaixa(const Value: String);
     procedure SetPagarPlanoContas(const Value: String);
     procedure SetReceberContaCaixa(const Value: Integer);
     procedure SetReceberLancarBanco(const Value: String);
     procedure SetReceberLancarCaixa(const Value: String);
     procedure SetReceberPlanoContas(const Value: String);
     procedure SetVendaVistaBaixar(const Value: String);

   Public
     property Juros                    : Real         Read   GetJuros                        Write   SetJuros;
     property Cartorio                 : Real         Read   GetCartorio                     Write   SetCartorio;
     property CobrancaDias             : Integer      Read   GetCobrancaDias                 Write   SetCobrancaDias;
     property VendaVistaBaixar         : String      Read   GetVendaVistaBaixar             Write   SetVendaVistaBaixar;
     property DiasBloqueio             : Integer      Read   GetDiasBloqueio                 Write   SetDiasBloqueio;
     property PagarLancarCaixa         : String      Read   GetPagarLancarCaixa             Write   SetPagarLancarCaixa;
     property PagarLancarBanco         : String      Read   GetPagarLancarBanco             Write   SetPagarLancarBanco;
     property PagarComissao            : String       Read   GetPagarComissao                Write   SetPagarComissao;
     property PagarContaCaixa          : Integer      Read   GetPagarContaCaixa              Write   SetPagarContaCaixa;
     property PagarPlanoContas         : String       Read   GetPagarPlanoContas             Write   SetPagarPlanoContas;
     property PagarComissaoVencimento  : Integer      Read   GetPagarComissaoVencimento      Write   SetPagarComissaoVencimento;
     property PagarComissaoContaCaixa  : Integer      Read   GetPagarComissaoContaCaixa      Write   SetPagarComissaoContaCaixa;
     property PagarComissaoCentroCusto : Integer      Read   GetPagarComissaoCentroCusto     Write   SetPagarComissaoCentroCusto;
     property PagarComissaoPlanoconta  : String       Read   GetPagarComissaoPlanoconta      Write   SetPagarComissaoPlanoConta;
     property ReceberLancarCaixa       : String      Read   GetReceberLancarCaixa           Write   SetReceberLancarCaixa;
     property ReceberLancarBanco       : String      Read   GetReceberLancarBanco           Write   SetReceberLancarBanco;
     property ReceberContaCaixa        : Integer      Read   GetReceberContaCaixa            Write   SetReceberContaCaixa;
     property ReceberPlanoContas       : String       Read   GetReceberPlanoContas           Write   SetReceberPlanoContas;
     property BalcaoLancarCaixa        : String      Read   GetBalcaoLancarCaixa            Write   SetBalcaoLancarCaixa;

   End;

   TParametrosCompra = Class
   Private
     FPlanoContas                      : String;
     FCFOP                             : Integer;
     FFornecedor                       : Integer;

     function GetCFOP: Integer;
     function GetFornecedor: Integer;
     function GetPlanoContas: String;
     procedure SetCFOP(const Value: Integer);
     procedure SetFornecedor(const Value: Integer);
     procedure SetPlanoContas(const Value: String);
   Public
     property Planocontas              : String    Read GetPlanocontas       Write SetPlanoContas;
     property Fornecedor               : Integer   Read GetFornecedor        Write SetFornecedor;
     property CFOP                     : Integer   Read GetCFOP              Write SetCFOP;

   End;

   TParametrosAlerta = Class
   Private
     FEstoque                          : String;
     FCtareceber                       : String;
     FCtareceberDias                   : Integer;
     FCtapagar                         : String;
     FCtapagarDias                     : Integer;
     FPedidos                          : String;
     FCobranca                         : String;
     FValidade                         : String;
     FValidadeDias                     : Integer;
     FPedidosCompras                   : String;

     function GetCobranca: String;
     function GetCtapagar: String;
     function GetCtapagarDias: Integer;
     function GetCtareceber: String;
     function GetCtareceberDias: Integer;
     function GetEstoque: String;
     function GetPedidos: String;
     function GetPedidosCompras: String;
     function GetValidade: String;
     function GetValidadeDias: Integer;
     procedure SetCobranca(const Value: String);
     procedure SetCtapagar(const Value: String);
     procedure SetCtapagarDias(const Value: Integer);
     procedure SetCtareceber(const Value: String);
     procedure SetCtareceberDias(const Value: Integer);
     procedure SetEstoque(const Value: String);
     procedure SetPedidos(const Value: String);
     procedure SetPedidosCompras(const Value: String);
     procedure SetValidade(const Value: String);
     procedure SetValidadeDias(const Value: Integer);
   Public
     property Estoque                  : String   Read  GetEstoque            Write   SetEstoque;
     property Ctareceber               : String   Read  GetCtareceber         Write   SetCtareceber;
     property CtareceberDias           : Integer   Read  GetCtareceberDias     Write   SetCtareceberDias;
     property Ctapagar                 : String   Read  GetCtapagar           Write   SetCtapagar;
     property CtapagarDias             : Integer   Read  GetCtapagarDias       Write   SetCtapagarDias;
     property Pedidos                  : String   Read  GetPedidos            Write   SetPedidos;
     property Cobranca                 : String   Read  GetCobranca           Write   SetCobranca;
     property Validade                 : String   Read  GetValidade           Write   SetValidade;
     property ValidadeDias             : Integer   Read  GetValidadeDias       Write   SetValidadeDias;
     property PedidosCompras           : String   Read  GetPedidosCompras     Write   SetPedidosCompras;
   End;

   TParametrosCFOP = Class
   private
     { Private declarations }
     FVendaUFLocal                     : Integer;
     FVendaUFFora                      : Integer;
     FDevolucaoUFLocal                 : Integer;
     FDevolucaoUFFora                  : Integer;
     FCompraUFLocal                    : Integer;
     FCompraUFFora                     : Integer;

     function GetCompraUFFora: Integer;
     function GetCompraUFLocal: Integer;
     function GetDevolucaoUFFora: Integer;
     function GetDevolucaoUFLocal: Integer;
     function GetVendaUFFora: Integer;
     function GetVendaUFLocal: Integer;
     procedure SetCompraUFFora(const Value: Integer);
     procedure SetCompraUFLocal(const Value: Integer);
     procedure SetDevolucaoUFFora(const Value: Integer);
     procedure SetDevolucaoUFLocal(const Value: Integer);
     procedure SetVendaUFFora(const Value: Integer);
     procedure SetVendaUFLocal(const Value: Integer);

   public
     { Public declarations }
     property VendaUFLocal             : Integer  Read   GetVendaUFLocal        Write   SetVendaUFLocal;
     property VendaUFFora              : Integer  Read   GetVendaUFFora         Write   SetVendaUFFora;
     property DevolucaoUFLocal         : Integer  Read   GetDevolucaoUFLocal    Write   SetDevolucaoUFLocal;
     property DevolucaoUFFora          : Integer  Read   GetDevolucaoUFFora     Write   SetDevolucaoUFFora;
     property CompraUFLocal            : Integer  Read   GetCompraUFLocal       Write   SetCompraUFLocal;
     property CompraUFFora             : Integer  Read   GetCompraUFFora        Write   SetCompraUFFora;
   End;

   TParametrosLogotipo = Class
   Private
     FLogoPrincipal                    : String;
     FLogoRelatorios                   : String;

     function GetLogoPrincipal: String;
     function GetLogoRelatorios: String;
     procedure SetLogoPrincipal(const Value: String);
     procedure SetLogoRelatorios(const Value: String);
   Public
     property LogoPrincipal            : String   Read   GetLogoPrincipal      Write  SetLogoPrincipal;
     property LogoRelatorios           : String   Read   GetLogoRelatorios     Write  SetLogoRelatorios;
   End;

   TParametrosCliente = Class
   Private
     FInatividade                      : Integer;
     FAtrasoPermitido                  : Integer;

     function GetAtrasoPermitido: Integer;
     function GetInatividade: Integer;
     procedure SetAtrasoPermitido(const Value: Integer);
     procedure SetInatividade(const Value: Integer);
   Public
     property Inatividade              : Integer  Read   GetInatividade         Write  SetInatividade;
     property Atrasopermitido          : Integer  Read   GetAtrasoPermitido     Write  SetAtrasoPermitido;

   End;

   TParametrosPedidos = Class
   Private
     FEntrega                          : Integer;
     FBaixaEstoque                     : String;
     FMensagem                         : WideString;

     function GetBaixaEstoque: String;
     function GetEntrega: Integer;
     function GetMensagem: WideString;
     procedure SetBaixaEstoque(const Value: String);
     procedure SetEntrega(const Value: Integer);
     procedure SetMensagem(const Value: WideString);
   Public
     property Entrega                  : Integer        Read   GetEntrega          Write  SetEntrega;
     property Baixaestoque             : String        Read   GetBaixaEstoque     Write  SetBaixaEstoque;
     property Mensagem                 : WideString     Read   GetMensagem         Write  SetMensagem;

   End;

   TParametrosVenda = Class
   Private
     FVendedor                         : Integer;
     FCliente                          : Integer;
     FImprimeFatura                    : String;

     function GetCliente: Integer;
     function GetImprimeFatura: String;
     function GetVendedor: Integer;
     procedure SetCliente(const Value: Integer);
     procedure SetImprimeFatura(const Value: String);
     procedure SetVendedor(const Value: Integer);
   Public
     property Vendedor                 : Integer  Read   GetVendedor          Write  SetVendedor;
     property Cliente                  : Integer  Read   GetCliente           Write  SetCliente;
     property Imprimefatura            : String  Read   GetImprimeFatura     Write  SetImprimeFatura;

   End;

   TParametrosFrete = Class
   Private
     FPadrao                           : Integer;

     function GetPadrao: Integer;
     procedure SetPadrao(const Value: Integer);
   Public
     property Padrao                   : Integer Read   GetPadrao     Write  SetPadrao;

   End;

   TParametrosTerceirizado = Class
   Private
     FDiaVencimento                    : Integer;

     function GetDiaVencimento: Integer;
     procedure SetDiaVencimento(const Value: Integer);
   Public
     property DiaVencimento            : Integer   Read   GetDiaVencimento     Write  SetDiaVencimento;

   End;

   TParametros = Class
   private
     { Private declarations }
     FEmpresa                        : TParametrosEmpresa;
     FProduto                        : TParametrosProduto;
     FFinanceiro                     : TParametrosFinanceiro;
     FCompra                         : TParametrosCompra;
     FAlerta                         : TParametrosAlerta;
     FCFOP                           : TParametrosCFOP;
     FNFE                            : TParametrosNFE;
     FConfiguracao                   : TParametrosLogotipo;
     FCliente                        : TParametrosCliente;
     FVenda                          : TParametrosVenda;
     FPedido                         : TParametrosPedidos;
     FFrete                          : TParametrosFrete;
     FTerceirizado                   : TParametrosTerceirizado;
     FProducao                       : TParametrosProducao;

     procedure SetAlerta(const Value: TParametrosAlerta);
     procedure SetCFOP(const Value: TParametrosCFOP);
     procedure SetCliente(const Value: TParametrosCliente);
     procedure SetCompra(const Value: TParametrosCompra);
     procedure SetConfiguracao(const Value: TParametrosLogotipo);
     procedure SetEmpresa(const Value: TParametrosEmpresa);
     procedure SetFinanceiro(const Value: TParametrosFinanceiro);
     procedure SetFrete(const Value: TParametrosFrete);
     procedure SetNFE(const Value: TParametrosNFE);
     procedure SetPedido(const Value: TParametrosPedidos);
     procedure SetProducao(const Value: TParametrosProducao);
     procedure SetProduto(const Value: TParametrosProduto);
     procedure SetTerceirizado(const Value: TParametrosTerceirizado);
     procedure SetVenda(const Value: TParametrosVenda);

   public
      { Public declarations }
     constructor Create;
     destructor  Destroy;

     property Empresa                : TParametrosEmpresa         Read  FEmpresa            Write   SetEmpresa;
     property Produto                : TParametrosProduto         Read  FProduto            Write   SetProduto;
     property Producao               : TParametrosProducao        Read  FProducao           Write   SetProducao;
     property Financeiro             : TParametrosFinanceiro      Read  FFinanceiro         Write   SetFinanceiro;
     property Compra                 : TParametrosCompra          Read  FCompra             Write   SetCompra;
     property Alerta                 : TParametrosAlerta          Read  FAlerta             Write   SetAlerta;
     property CFOP                   : TParametrosCFOP            Read  FCFOP               Write   SetCFOP;
     property NFE                    : TParametrosNFE             Read  FNFE                Write   SetNFE;
     property Configuracao           : TParametrosLogotipo        Read  FConfiguracao       Write   SetConfiguracao;
     property Cliente                : TParametrosCliente         Read  FCliente            Write   SetCliente;
     property Venda                  : TParametrosVenda           Read  FVenda              Write   SetVenda;
     property Pedido                 : TParametrosPedidos         Read  FPedido             Write   SetPedido;
     property Frete                  : TParametrosFrete           Read  FFrete              Write   SetFrete;
     property Terceirizado           : TParametrosTerceirizado    Read  FTerceirizado       Write   SetTerceirizado;
   End;


implementation


{ TParametrosEmpresa }

uses SQLServer;

function TParametrosEmpresa.GetBairro: String;
begin
  Result := FBairro;
end;

function TParametrosEmpresa.GetCep: String;
begin
  Result := FCep;
end;

function TParametrosEmpresa.GetCidade: String;
begin
  Result := FCidade;
end;

function TParametrosEmpresa.GetCNPJ: String;
begin
  Result := FCNPJ;
end;

function TParametrosEmpresa.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TParametrosEmpresa.GetCodigoCidade: Integer;
begin
  Result := FCodigoCidade;
end;

function TParametrosEmpresa.GetCodigoPais: Integer;
begin
  Result := FCodigoPais;
end;

function TParametrosEmpresa.GetComplemento: String;
begin
  Result := FComplemento;
end;

function TParametrosEmpresa.GetContato: String;
begin
  Result := FContato;
end;

function TParametrosEmpresa.GetDataAtividade: TDateTime;
begin
  Result := FDataAtividade;
end;

function TParametrosEmpresa.GetEmail: String;
begin
  Result := FEmail;
end;

function TParametrosEmpresa.GetEndereco: String;
begin
  Result := FEndereco;
end;

function TParametrosEmpresa.GetFax: String;
begin
  Result := FFax;
end;

function TParametrosEmpresa.GetFone: String;
begin
  Result := FFone;
end;

function TParametrosEmpresa.GetIE: String;
begin
  Result := FIE;
end;

function TParametrosEmpresa.GetIEmunicipal: String;
begin
  Result := FIEmunicipal;
end;

function TParametrosEmpresa.GetNome: String;
begin
  Result := FNome;
end;

function TParametrosEmpresa.GetNomeFantasia: String;
begin
  Result := FNomeFantasia;
end;

function TParametrosEmpresa.GetNomePais: String;
begin
  Result := FNomePais;
end;

function TParametrosEmpresa.GetNumero: String;
begin
  Result := FNumero;
end;

function TParametrosEmpresa.GetRegimeTributario: Integer;
begin
  Result := FRegimeTributario;
end;

function TParametrosEmpresa.GetRegimeTributarioAliquota: Real;
begin
  Result := FRegimeTributarioAliquota;
end;

function TParametrosEmpresa.GetSite: String;
begin
  Result := FSite;
end;

function TParametrosEmpresa.GetUF: String;
begin
  Result := FUF;
end;

procedure TParametrosEmpresa.SetBairro(const Value: String);
begin
  FBairro := Value;
end;

procedure TParametrosEmpresa.SetCep(const Value: String);
begin
  FCep := Value;
end;

procedure TParametrosEmpresa.SetCidade(const Value: String);
begin
  FCidade := Value;
end;

procedure TParametrosEmpresa.SetCNPJ(const Value: String);
begin
  FCNPJ := Value;
end;

procedure TParametrosEmpresa.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TParametrosEmpresa.SetCodigoCidade(const Value: Integer);
begin
  FCodigoCidade := Value;
end;

procedure TParametrosEmpresa.SetCodigoPais(const Value: Integer);
begin
  FCodigoPais := Value;
end;

procedure TParametrosEmpresa.SetComplemento(const Value: String);
begin
  FComplemento := Value;
end;

procedure TParametrosEmpresa.SetContato(const Value: String);
begin
  FContato := Value;
end;

procedure TParametrosEmpresa.SetDataAtividade(const Value: TDateTime);
begin
  FDataAtividade := Value;
end;

procedure TParametrosEmpresa.SetEmail(const Value: String);
begin
  FEmail := Value;
end;

procedure TParametrosEmpresa.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TParametrosEmpresa.SetFax(const Value: String);
begin
  FFax := Value;
end;

procedure TParametrosEmpresa.SetFone(const Value: String);
begin
  FFone := Value;
end;

procedure TParametrosEmpresa.SetIE(const Value: String);
begin
  FIE := Value;
end;

procedure TParametrosEmpresa.SetIEmunicipal(const Value: String);
begin
  FIEmunicipal := Value;
end;

procedure TParametrosEmpresa.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TParametrosEmpresa.SetNomeFantasia(const Value: String);
begin
  FNomeFantasia := Value;
end;

procedure TParametrosEmpresa.SetNomePais(const Value: String);
begin
  FNomePais := Value;
end;

procedure TParametrosEmpresa.SetNumero(const Value: String);
begin
  FNumero := Value;
end;

procedure TParametrosEmpresa.SetRegimeTributario(const Value: Integer);
begin
  FRegimeTributario := Value;
end;

procedure TParametrosEmpresa.SetRegimeTributarioAliquota(const Value: Real);
begin
  FRegimeTributarioAliquota := Value;
end;

procedure TParametrosEmpresa.SetSite(const Value: String);
begin
  FSite := Value;
end;

procedure TParametrosEmpresa.SetUF(const Value: String);
begin
  FUF := Value;
end;


{ TParametrosNFE }

function TParametrosNFE.GetAmbiente: String;
begin
  Result := FAmbiente;
end;

function TParametrosNFE.GetFormaEmissao: String;
begin
  Result := FFormaEmissao;
end;

function TParametrosNFE.GetLote: Integer;
begin
  Result := FLote;
end;

function TParametrosNFE.GetModelo: String;
begin
  Result := FModelo;
end;

function TParametrosNFE.GetSequencia: Integer;
begin
  Result := FSequencia;
end;

function TParametrosNFE.GetSerie: String;
begin
  Result := FSerie;
end;

function TParametrosNFE.GetTipoDANFE: String;
begin
  Result := FTipoDANFE;
end;

procedure TParametrosNFE.SetAmbiente(const Value: String);
begin
  FAmbiente := Value;
end;

procedure TParametrosNFE.SetFormaEmissao(const Value: String);
begin
  FFormaEmissao := Value;
end;

procedure TParametrosNFE.SetLote(const Value: Integer);
begin
  FLote := Value;
end;

procedure TParametrosNFE.SetModelo(const Value: String);
begin
  FModelo := Value;
end;

procedure TParametrosNFE.SetSequencia(const Value: Integer);
begin
  FSequencia := Value;
end;

procedure TParametrosNFE.SetSerie(const Value: String);
begin
  FSerie := Value;
end;

procedure TParametrosNFE.SetTipoDANFE(const Value: String);
begin
  FTipoDANFE := Value;
end;

{ TParametrosProduto }

function TParametrosProduto.GetClassificacaoFiscal: String;
begin
  Result := FClassificacaoFiscal;
end;

function TParametrosProduto.GetCodificacao: String;
begin
  Result := FCodificacao;
end;

function TParametrosProduto.GetEstoqueNegativo: String;
begin
  Result := FEstoqueNegativo;
end;

function TParametrosProduto.GetGrupo: Integer;
begin
  Result := FGrupo;
end;

function TParametrosProduto.GetNCM: String;
begin
  Result := FNCM;
end;

function TParametrosProduto.GetProduto: Integer;
begin
  Result := FProduto;
end;

function TParametrosProduto.GetSeparador: String;
begin
  Result := FSeparador;
end;

function TParametrosProduto.GetSituacaoTributaria: String;
begin
  Result := FSituacaoTributaria;
end;

function TParametrosProduto.GetSubgrupo: Integer;
begin
  Result := FSubgrupo;
end;

procedure TParametrosProduto.SetClassificacaoFiscal(const Value: String);
begin
  FClassificacaoFiscal := Value;
end;

procedure TParametrosProduto.SetCodificacao(const Value: String);
begin
  FCodificacao := Value;
end;

procedure TParametrosProduto.SetEstoqueNegativo(const Value: String);
begin
  FEstoqueNegativo := Value;
end;

procedure TParametrosProduto.SetGrupo(const Value: Integer);
begin
  FGrupo := Value;
end;

procedure TParametrosProduto.SetNCM(const Value: String);
begin
  FNCM := Value;
end;

procedure TParametrosProduto.SetProduto(const Value: Integer);
begin
  FProduto := Value;
end;

procedure TParametrosProduto.SetSeparador(const Value: String);
begin
  FSeparador := Value;
end;

procedure TParametrosProduto.SetSituacaoTributaria(const Value: String);
begin
  FSituacaoTributaria := Value;
end;

procedure TParametrosProduto.SetSubgrupo(const Value: Integer);
begin
  FSubgrupo := Value;
end;

{ TParametrosProducao }

function TParametrosProducao.GetProducaoFinalizar: String;
begin
  Result := FProducaoFinalizar;
end;

function TParametrosProducao.GetQualidadePadrao: Integer;
begin
  Result := FQualidadePadrao;
end;

procedure TParametrosProducao.SetProducaoFinalizar(const Value: String);
begin
  FProducaoFinalizar := Value;
end;

procedure TParametrosProducao.SetQualidadePadrao(const Value: Integer);
begin
  FQualidadePadrao := Value;
end;

{ TParametrosFinanceiro }

function TParametrosFinanceiro.GetBalcaoLancarCaixa: String;
begin
   Result := FBalcaoLancarCaixa;
end;

function TParametrosFinanceiro.GetCartorio: Real;
begin
   Result := FCartorio;
end;

function TParametrosFinanceiro.GetCobrancaDias: Integer;
begin
   Result := FCobrancaDias;
end;

function TParametrosFinanceiro.GetDiasBloqueio: Integer;
begin
   Result := FDiasBloqueio;
end;

function TParametrosFinanceiro.GetJuros: Real;
begin
   Result := FJuros;
end;

function TParametrosFinanceiro.GetPagarComissao: String;
begin
   Result := FPagarComissao;
end;

function TParametrosFinanceiro.GetPagarComissaoCentroCusto: Integer;
begin
   Result := FPagarComissaoCentroCusto;
end;

function TParametrosFinanceiro.GetPagarComissaoContaCaixa: Integer;
begin
   Result := FPagarComissaoContaCaixa;
end;

function TParametrosFinanceiro.GetPagarComissaoPlanoconta: String;
begin
   Result := FPagarComissaoPlanoConta;
end;

function TParametrosFinanceiro.GetPagarComissaoVencimento: Integer;
begin
   Result := FPagarComissaoVencimento;
end;

function TParametrosFinanceiro.GetPagarContaCaixa: Integer;
begin
   Result := FPagarContaCaixa;
end;

function TParametrosFinanceiro.GetPagarLancarBanco: String;
begin
   Result := FPagarLancarBanco;
end;

function TParametrosFinanceiro.GetPagarLancarCaixa: String;
begin
   Result := FPagarLancarCaixa;
end;

function TParametrosFinanceiro.GetPagarPlanoContas: String;
begin
   Result := FPagarPlanoContas;
end;

function TParametrosFinanceiro.GetReceberContaCaixa: Integer;
begin
   Result := FReceberContaCaixa;
end;

function TParametrosFinanceiro.GetReceberLancarBanco: String;
begin
   Result := FReceberLancarBanco;
end;

function TParametrosFinanceiro.GetReceberLancarCaixa: String;
begin
   Result := FReceberLancarCaixa;
end;

function TParametrosFinanceiro.GetReceberPlanoContas: String;
begin
   Result := FReceberPlanoContas;
end;

function TParametrosFinanceiro.GetVendaVistaBaixar: String;
begin
   Result := FVendaVistaBaixar;
end;

procedure TParametrosFinanceiro.SetBalcaoLancarCaixa(const Value: String);
begin
  FBalcaoLancarCaixa :=Value;
end;

procedure TParametrosFinanceiro.SetCartorio(const Value: Real);
begin
  FCartorio :=Value;
end;

procedure TParametrosFinanceiro.SetCobrancaDias(const Value: Integer);
begin
  FCobrancaDias :=Value;
end;

procedure TParametrosFinanceiro.SetDiasBloqueio(const Value: Integer);
begin
  FDiasBloqueio :=Value;
end;

procedure TParametrosFinanceiro.SetJuros(const Value: Real);
begin
  FJuros :=Value;
end;

procedure TParametrosFinanceiro.SetPagarComissao(const Value: String);
begin
  FPagarComissao :=Value;
end;

procedure TParametrosFinanceiro.SetPagarComissaoCentroCusto(
  const Value: Integer);
begin
  FPagarComissaoCentroCusto :=Value;
end;

procedure TParametrosFinanceiro.SetPagarComissaoContaCaixa(
  const Value: Integer);
begin
  FPagarComissaoContaCaixa :=Value;
end;

procedure TParametrosFinanceiro.SetPagarComissaoPlanoConta(const Value: String);
begin
  FPagarComissaoPlanoConta :=Value;
end;

procedure TParametrosFinanceiro.SetPagarComissaoVencimento(
  const Value: Integer);
begin
  FPagarComissaoVencimento :=Value;
end;

procedure TParametrosFinanceiro.SetPagarContaCaixa(const Value: Integer);
begin
  FPagarContaCaixa :=Value;
end;

procedure TParametrosFinanceiro.SetPagarLancarBanco(const Value: String);
begin
  FPagarLancarBanco :=Value;
end;

procedure TParametrosFinanceiro.SetPagarLancarCaixa(const Value: String);
begin
  FPagarLancarCaixa :=Value;
end;

procedure TParametrosFinanceiro.SetPagarPlanoContas(const Value: String);
begin
  FPagarPlanoContas :=Value;
end;

procedure TParametrosFinanceiro.SetReceberContaCaixa(const Value: Integer);
begin
  FReceberContaCaixa :=Value;
end;

procedure TParametrosFinanceiro.SetReceberLancarBanco(const Value: String);
begin
  FReceberLancarBanco :=Value;
end;

procedure TParametrosFinanceiro.SetReceberLancarCaixa(const Value: String);
begin
  FReceberLancarCaixa :=Value;
end;

procedure TParametrosFinanceiro.SetReceberPlanoContas(const Value: String);
begin
  FReceberPlanoContas :=Value;
end;

procedure TParametrosFinanceiro.SetVendaVistaBaixar(const Value: String);
begin
  FVendaVistaBaixar :=Value;
end;

{ TParametrosCompra }

function TParametrosCompra.GetCFOP: Integer;
begin
   Result := FCFOP
end;

function TParametrosCompra.GetFornecedor: Integer;
begin
   Result := FFornecedor;
end;

function TParametrosCompra.GetPlanocontas: String;
begin
  Result := FPlanoContas;
end;

procedure TParametrosCompra.SetCFOP(const Value: Integer);
begin
  FCFOP := Value;
end;

procedure TParametrosCompra.SetFornecedor(const Value: Integer);
begin
  FFornecedor := Value;
end;

procedure TParametrosCompra.SetPlanoContas(const Value: String);
begin
  FPlanoContas := Value;
end;

{ TParametrosAlerta }

function TParametrosAlerta.GetCobranca: String;
begin
   Result := FCobranca;
end;

function TParametrosAlerta.GetCtapagar: String;
begin
   Result := FCtapagar;
end;

function TParametrosAlerta.GetCtapagarDias: Integer;
begin
   Result := FCtapagarDias;
end;

function TParametrosAlerta.GetCtareceber: String;
begin
   Result := FCtareceber;
end;

function TParametrosAlerta.GetCtareceberDias: Integer;
begin
   Result := FCtareceberDias;
end;

function TParametrosAlerta.GetEstoque: String;
begin
   Result := FEstoque;
end;

function TParametrosAlerta.GetPedidos: String;
begin
   Result := FPedidos;
end;

function TParametrosAlerta.GetPedidosCompras: String;
begin
   Result := FPedidosCompras;
end;

function TParametrosAlerta.GetValidade: String;
begin
   Result := FValidade;
end;

function TParametrosAlerta.GetValidadeDias: Integer;
begin
   Result := FValidadeDias;
end;

procedure TParametrosAlerta.SetCobranca(const Value: String);
begin
   FCobranca := Value;
end;

procedure TParametrosAlerta.SetCtapagar(const Value: String);
begin
   FCtapagar := Value;
end;

procedure TParametrosAlerta.SetCtapagarDias(const Value: Integer);
begin
   FCtapagarDias := Value;
end;

procedure TParametrosAlerta.SetCtareceber(const Value: String);
begin
   FCtareceber := Value;
end;

procedure TParametrosAlerta.SetCtareceberDias(const Value: Integer);
begin
   FCtareceberDias := Value;
end;

procedure TParametrosAlerta.SetEstoque(const Value: String);
begin
   FEstoque := Value;
end;

procedure TParametrosAlerta.SetPedidos(const Value: String);
begin
   FPedidos := Value;
end;

procedure TParametrosAlerta.SetPedidosCompras(const Value: String);
begin
   FPedidosCompras := Value;
end;

procedure TParametrosAlerta.SetValidade(const Value: String);
begin
   FValidade := Value;
end;

procedure TParametrosAlerta.SetValidadeDias(const Value: Integer);
begin
   FValidadeDias := Value;
end;

{ TParametrosCFOP }

function TParametrosCFOP.GetCompraUFFora: Integer;
begin
   Result := FCompraUFFora;
end;

function TParametrosCFOP.GetCompraUFLocal: Integer;
begin
   Result := FCompraUFLocal;
end;

function TParametrosCFOP.GetDevolucaoUFFora: Integer;
begin
   Result := FDevolucaoUFFora;
end;

function TParametrosCFOP.GetDevolucaoUFLocal: Integer;
begin
   Result := FDevolucaoUFLocal;
end;

function TParametrosCFOP.GetVendaUFFora: Integer;
begin
   Result := FVendaUFFora;
end;

function TParametrosCFOP.GetVendaUFLocal: Integer;
begin
   Result := FVendaUFLocal;
end;

procedure TParametrosCFOP.SetCompraUFFora(const Value: Integer);
begin
   FCompraUFFora := Value;
end;

procedure TParametrosCFOP.SetCompraUFLocal(const Value: Integer);
begin
   FCompraUFLocal := Value;
end;

procedure TParametrosCFOP.SetDevolucaoUFFora(const Value: Integer);
begin
   FDevolucaoUFFora := Value;
end;

procedure TParametrosCFOP.SetDevolucaoUFLocal(const Value: Integer);
begin
   FDevolucaoUFLocal := Value;
end;

procedure TParametrosCFOP.SetVendaUFFora(const Value: Integer);
begin
   FVendaUFFora := Value;
end;

procedure TParametrosCFOP.SetVendaUFLocal(const Value: Integer);
begin
   FVendaUFLocal := Value;
end;

{ TParametrosLogotipo }

function TParametrosLogotipo.GetLogoPrincipal: String;
begin
  Result := FLogoPrincipal;
end;

function TParametrosLogotipo.GetLogoRelatorios: String;
begin
  Result := FLogoRelatorios;
end;

procedure TParametrosLogotipo.SetLogoPrincipal(const Value: String);
begin
  FLogoPrincipal := Value;
end;

procedure TParametrosLogotipo.SetLogoRelatorios(const Value: String);
begin
  FLogoRelatorios := Value;
end;

{ TParametrosCliente }

function TParametrosCliente.GetAtrasoPermitido: Integer;
begin
  Result := FAtrasoPermitido
end;

function TParametrosCliente.GetInatividade: Integer;
begin
  Result := FInatividade;
end;

procedure TParametrosCliente.SetAtrasoPermitido(const Value: Integer);
begin
   FAtrasoPermitido := Value;
end;

procedure TParametrosCliente.SetInatividade(const Value: Integer);
begin
   FInatividade := Value;
end;

{ TParametrosPedidos }

function TParametrosPedidos.GetBaixaEstoque: String;
begin
   Result := FBaixaEstoque;
end;

function TParametrosPedidos.GetEntrega: Integer;
begin
   Result := FEntrega;
end;

function TParametrosPedidos.GetMensagem: WideString;
begin
   Result := FMensagem;
end;

procedure TParametrosPedidos.SetBaixaEstoque(const Value: String);
begin
  FBaixaEstoque := Value;
end;

procedure TParametrosPedidos.SetEntrega(const Value: Integer);
begin
  FEntrega := Value;
end;

procedure TParametrosPedidos.SetMensagem(const Value: WideString);
begin
  FMensagem := Value;
end;

{ TParametrosVenda }

function TParametrosVenda.GetCliente: Integer;
begin
   Result := FCliente;
end;

function TParametrosVenda.GetImprimeFatura: String;
begin
   Result := FImprimeFatura;
end;

function TParametrosVenda.GetVendedor: Integer;
begin
   Result := FVendedor;
end;

procedure TParametrosVenda.SetCliente(const Value: Integer);
begin
   FCliente := Value;
end;

procedure TParametrosVenda.SetImprimeFatura(const Value: String);
begin
   FImprimeFatura := Value;
end;

procedure TParametrosVenda.SetVendedor(const Value: Integer);
begin
   FVendedor := Value;
end;

{ TParametrosFrete }

function TParametrosFrete.GetPadrao: Integer;
begin
   Result := FPadrao;
end;

procedure TParametrosFrete.SetPadrao(const Value: Integer);
begin
  FPadrao := Value;
end;

{ TParametrosTerceirizado }

function TParametrosTerceirizado.GetDiaVencimento: Integer;
begin
   Result := FDiaVencimento;
end;

procedure TParametrosTerceirizado.SetDiaVencimento(const Value: Integer);
begin
   FDiaVencimento := Value;
end;

{ TParametros }


constructor TParametros.Create;
begin
   FEmpresa            := TParametrosEmpresa.Create;
   FProduto            := TParametrosProduto.Create;
   FFinanceiro         := TParametrosFinanceiro.Create;
   FCompra             := TParametrosCompra.Create;
   FAlerta             := TParametrosAlerta.Create;
   FCFOP               := TParametrosCFOP.Create;
   FNFE                := TParametrosNFE.Create;
   FConfiguracao       := TParametrosLogotipo.Create;
   FCliente            := TParametrosCliente.Create;
   FVenda              := TParametrosVenda.Create;
   FPedido             := TParametrosPedidos.Create;
   FFrete              := TParametrosFrete.Create;
   FTerceirizado       := TParametrosTerceirizado.Create;
   FProducao           := TParametrosProducao.Create;


end;

destructor TParametros.Destroy;
begin

   if Assigned(FEmpresa) then
      FEmpresa.Free;

   if Assigned(FProduto) then
     FProduto.Free;

   if Assigned(FFinanceiro) then
     FFinanceiro.Free;

   if Assigned(FCompra) then
     FCompra.Free;

   if Assigned(FAlerta) then
     FAlerta.Free;

   if Assigned(FCFOP) then
     FCFOP.Free;

   if Assigned(FNFE) then
     FNFE.Free;

   if Assigned(FConfiguracao) then
     FConfiguracao.Free;

   if Assigned(FCliente) then
     FCliente.Free;

   if Assigned(FVenda) then
     FVenda.Free;

   if Assigned(FPedido) then
     FPedido.Free;

   if Assigned(FFrete) then
     FFrete.Free;

   if Assigned(FTerceirizado) then
     FTerceirizado.Free;

   if Assigned(FProducao) then
     FProducao.Free;

end;

procedure TParametros.SetAlerta(const Value: TParametrosAlerta);
begin
  FAlerta := Value;
end;

procedure TParametros.SetCFOP(const Value: TParametrosCFOP);
begin
  FCFOP := Value;
end;

procedure TParametros.SetCliente(const Value: TParametrosCliente);
begin
  FCliente := Value;
end;

procedure TParametros.SetCompra(const Value: TParametrosCompra);
begin
  FCompra := Value;
end;

procedure TParametros.SetConfiguracao(const Value: TParametrosLogotipo);
begin
  FConfiguracao := Value;
end;

procedure TParametros.SetEmpresa(const Value: TParametrosEmpresa);
begin
  FEmpresa := Value;
end;

procedure TParametros.SetFinanceiro(const Value: TParametrosFinanceiro);
begin
  FFinanceiro := Value;
end;

procedure TParametros.SetFrete(const Value: TParametrosFrete);
begin
  FFrete := Value;
end;

procedure TParametros.SetNFE(const Value: TParametrosNFE);
begin
  FNFE := Value;
end;

procedure TParametros.SetPedido(const Value: TParametrosPedidos);
begin
  FPedido := Value;
end;

procedure TParametros.SetProducao(const Value: TParametrosProducao);
begin
  FProducao := Value;
end;

procedure TParametros.SetProduto(const Value: TParametrosProduto);
begin
  FProduto := Value;
end;

procedure TParametros.SetTerceirizado(const Value: TParametrosTerceirizado);
begin
  FTerceirizado := Value;
end;

procedure TParametros.SetVenda(const Value: TParametrosVenda);
begin
  FVenda := Value;
end;

end.



