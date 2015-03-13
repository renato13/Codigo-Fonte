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

unit FBaseDados;

interface

uses
   SysUtils, Classes, Forms, StrUtils, DB, DBClient, SimpleDS, pcnConversao,
  ACBrNFe, frxClass, frxDBSet,   ACBrNFeUtil,
  ACBrNFeDANFEClass, ACBrNFeDANFEFR, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
   TBaseDados = class(TDataModule)
      db_Parametros: TFDQuery;
      db_usuario: TFDQuery;
      db_ctaReceber: TFDQuery;
      ds_ctaReceber: TDataSource;
      db_CtaPagar: TFDQuery;
      DS_CtaPagar: TDataSource;
      DS_Clientes: TDataSource;
      db_Clientes: TFDQuery;
      DS_RefCom: TDataSource;
      DS_RefBanc: TDataSource;
      db_RefBanc: TFDQuery;
      db_RefCom: TFDQuery;
      db_Socios: TFDQuery;
      DS_Socios: TDataSource;
      db_UsuarioLog: TFDQuery;
      DS_Vendas: TDataSource;
      DS_VendasItens: TDataSource;
      db_Vendas: TFDQuery;
      db_VendasItens: TFDQuery;
      DS_Usuario: TDataSource;
      DB_UsuarioAcesso: TFDQuery;
      frx_dsParametro: TfrxDBDataset;
      frx_dsEmpresa: TfrxDBDataset;
      SP_NFE_CALCULA: TFDStoredProc;
    SPNFE_PROCESSAR: TFDStoredProc;
      db_ClientesCODIGO: TIntegerField;
      db_ClientesFOTO: TBlobField;
      db_ClientesTIPO: TStringField;
      db_ClientesCLASSIFICACAO: TStringField;
      db_ClientesCPF_CNPJ: TStringField;
      db_ClientesNOME: TStringField;
      db_ClientesNOME_FANTASIA: TStringField;
      db_ClientesCONTATO: TStringField;
      db_ClientesRG_IE: TStringField;
      db_ClientesORG_EMISSOR: TStringField;
      db_ClientesSEXO: TStringField;
      db_ClientesFILIACAO_NOMEPAI: TStringField;
      db_ClientesFILIACAO_NOMEMAE: TStringField;
      db_ClientesESTADO_CIVIL: TStringField;
      db_ClientesCONJUGE_CPF: TStringField;
      db_ClientesCONJUGE_NOME: TStringField;
      db_ClientesCXP: TStringField;
      db_ClientesENDERECO: TStringField;
      db_ClientesNUMERO: TStringField;
      db_ClientesCOMPLEMENTO: TStringField;
      db_ClientesBAIRRO: TStringField;
      db_ClientesCODIGOCIDADE: TIntegerField;
      db_ClientesNOMECIDADE: TStringField;
      db_ClientesUF: TStringField;
      db_ClientesDDD_FONE: TIntegerField;
      db_ClientesFONE: TStringField;
      db_ClientesDDD_FAX: TIntegerField;
      db_ClientesFAX: TStringField;
      db_ClientesDDD_CELULAR: TIntegerField;
      db_ClientesCELULAR: TStringField;
      db_ClientesDDD_VOIP: TIntegerField;
      db_ClientesVOIP: TStringField;
      db_ClientesEMAIL: TStringField;
      db_ClientesSITE: TStringField;
      db_ClientesREFERENCIA: TStringField;
      db_ClientesVENDEDOR: TIntegerField;
      db_ClientesREGIAO: TIntegerField;
      db_ClientesTRANSPORTADORA: TIntegerField;
      db_ClientesESTRANGEIRO: TStringField;
      db_ClientesNATURALIDADE: TStringField;
      db_ClientesCREDITO_LIMITE: TBCDField;
      db_ClientesCREDITO_UTILIZADO: TBCDField;
      db_ClientesCREDITO_DISPONIVEL: TBCDField;
      db_ClientesBLOQUEADO: TStringField;
      db_ClientesENDCOB_ENDERECO: TStringField;
      db_ClientesENDCOB_BAIRRO: TStringField;
      db_ClientesENDCOB_FONE: TStringField;
      db_ClientesENDCOB_CEP: TStringField;
      db_ClientesENDCOB_CXP: TStringField;
      db_ClientesENDCOB_NOMECIDADE: TStringField;
      db_ClientesENDCOB_UF: TStringField;
      db_ClientesPROTESTO: TStringField;
      db_ClientesETIQUETA: TStringField;
      db_ClientesNACIONALIDADE: TStringField;
      db_ClientesATIVO: TStringField;
      db_ClientesCONVENIO: TIntegerField;
      db_ClientesATIVIDADE: TIntegerField;
      db_ClientesOBSERVACAO: TStringField;
      db_ClientesOBS_SERASA: TStringField;
      db_ClientesOBS_SINTEGRA: TStringField;
      db_ClientesCONJUGE_DNASCIMENTO: TStringField;
      db_ClientesCONJUGE_EMPRESA: TStringField;
      db_ClientesCONJUGE_FONE: TStringField;
      db_ClientesCONJUGE_ENDERECO: TStringField;
      db_ClientesCONJUGE_CIDADE: TStringField;
      db_ClientesCONJUGE_UF: TStringField;
      db_ClientesCONJUGE_CARGO: TStringField;
      db_ClientesCONJUGE_TEMPO: TStringField;
      db_ClientesCONJUGE_SALARIO: TBCDField;
      db_ClientesEMPREGO_EMPRESA: TStringField;
      db_ClientesEMPREGO_FONE: TStringField;
      db_ClientesEMPREGO_ENDERECO: TStringField;
      db_ClientesEMPREGO_CIDADE: TStringField;
      db_ClientesEMPREGO_UF: TStringField;
      db_ClientesEMPREGO_CARGO: TStringField;
      db_ClientesEMPREGO_TEMPO: TStringField;
      db_ClientesEMPREGO_SALARIO: TBCDField;
      db_ClientesCOMISSAO: TBCDField;
      db_ClientesCOMISSIONAR: TStringField;
      db_ClientesSALARIO: TBCDField;
      db_ctaReceberCODIGO: TIntegerField;
      db_ctaReceberCLIENTE: TIntegerField;
      db_ctaReceberNOTAFISCAL: TIntegerField;
      db_ctaReceberSERIENF: TStringField;
      db_ctaReceberDATA: TSQLTimeStampField;
      db_ctaReceberVENCIMENTO: TSQLTimeStampField;
      db_ctaReceberDATA_PAGTO: TSQLTimeStampField;
      db_ctaReceberDOCUMENTO: TStringField;
      db_ctaReceberPARCELA: TIntegerField;
      db_ctaReceberCFOP: TIntegerField;
      db_ctaReceberVENDEDOR: TIntegerField;
      db_ctaReceberESPECIE: TStringField;
      db_ctaReceberTIPO: TStringField;
      db_ctaReceberVALOR: TBCDField;
      db_ctaReceberVALOR_PAGO: TBCDField;
      db_ctaReceberVALOR_SALDO: TBCDField;
      db_ctaReceberCONTA_CREDITO: TIntegerField;
      db_ctaReceberCHQ_BANCO: TStringField;
      db_ctaReceberCHQ_AGENCIA: TStringField;
      db_ctaReceberCHQ_CONTA_CORRENTE: TStringField;
      db_ctaReceberCHQ_NUMEROCHEQUE: TStringField;
      db_ctaReceberCHQ_CODCIDADE: TStringField;
      db_ctaReceberCHQ_EMITENTE: TStringField;
      db_ctaReceberCHQ_NOMECIDADE_UF: TStringField;
      db_ctaReceberCHQ_DESTINO: TStringField;
      db_ctaReceberFORMA_PAGTO: TIntegerField;
      db_ctaReceberDEPARTAMENTO: TIntegerField;
      db_ctaReceberDESCONTO: TBCDField;
      db_ctaReceberDESCONTO_DATA: TSQLTimeStampField;
      db_ctaReceberENTRADA: TBCDField;
      db_ctaReceberPLANO_CONTAS: TStringField;
      db_ctaReceberHISTORICO: TStringField;
      db_ctaReceberOBSERVACAO: TStringField;
      db_ctaReceberGERARRECIBO: TStringField;
      db_ctaReceberGERARDUPLICATA: TStringField;
      db_ctaReceberGERARBOLETO: TStringField;
      db_ctaReceberNOSSONUMERO: TStringField;
      db_ctaReceberDESPESAS_BOLETO: TBCDField;
      db_ctaReceberDESPESAS_JUROS: TBCDField;
      db_ctaReceberDESPESAS_MULTA: TBCDField;
      db_ctaReceberDESPESAS_CARTORIO: TBCDField;
      db_ctaReceberDESPESAS_TOTAL: TBCDField;
      db_ctaReceberATRASADA: TStringField;
      db_ctaReceberQUITADO: TStringField;
      db_ctaReceberMOTIVO_BAIXA: TIntegerField;
      db_ctaReceberCOMPLEMENTAR: TStringField;
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
      db_CtaPagarCONTA_CREDITO: TIntegerField;
      db_CtaPagarCHQ_BANCO: TStringField;
      db_CtaPagarCHQ_AGENCIA: TStringField;
      db_CtaPagarCHQ_CONTA_CORRENTE: TStringField;
      db_CtaPagarCHQ_CODCIDADE: TStringField;
      db_CtaPagarCHQ_NOMECIDADE_UF: TStringField;
      db_CtaPagarCHQ_EMITENTE: TStringField;
      db_CtaPagarCHQ_DESTINO: TStringField;
      db_CtaPagarFORMA_PAGTO: TIntegerField;
      db_CtaPagarDEPARTAMENTO: TIntegerField;
      db_CtaPagarDESCONTO: TBCDField;
      db_CtaPagarPLANO_CONTAS: TStringField;
      db_CtaPagarHISTORICO: TStringField;
      db_CtaPagarOBSERVACAO: TStringField;
      db_CtaPagarGERARRECIBO: TStringField;
      db_CtaPagarNOSSONUMERO: TStringField;
      db_CtaPagarDESPESAS_BOLETO: TBCDField;
      db_CtaPagarDESPESAS_JUROS: TBCDField;
      db_CtaPagarDESPESAS_MULTA: TBCDField;
      db_CtaPagarDESPESAS_CARTORIO: TBCDField;
      db_CtaPagarDESPESAS_TOTAL: TBCDField;
      db_CtaPagarATRASADA: TStringField;
      db_CtaPagarQUITADO: TStringField;
      db_CtaPagarMOTIVO_BAIXA: TIntegerField;
      db_ClientesDATA: TSQLTimeStampField;
      db_ClientesDATA_NASCIMENTO: TSQLTimeStampField;
      db_ClientesPROTESTO_DATA: TSQLTimeStampField;
      db_ctaReceberDESCONTO_USER: TIntegerField;
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
    db_VendasDATA_ENTRADASAIDA: TSQLTimeStampField;
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
    db_VendasVLR_FRETE: TBCDField;
    db_VendasVLR_SEGURO: TBCDField;
    db_VendasVLR_DESPESAS_ASSESSORIAS: TBCDField;
    db_VendasDESCONTO: TBCDField;
    db_VendasVLR_DESCONTO: TBCDField;
    db_VendasVLR_RECEBIDO: TBCDField;
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
    db_VendasCUPOM: TStringField;
    db_VendasIMPRESSO: TStringField;
    db_VendasTIPOPAGAMENTO: TStringField;
    db_VendasQTDE_PRODUTOS: TIntegerField;
    db_VendasVALOR_PRODUTOS: TBCDField;
    db_VendasTOTAL_NF: TBCDField;
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
    db_VendasItensNCM: TStringField;
    db_VendasItensDESCRICAO: TStringField;
    db_VendasItensUND: TStringField;
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
    db_ClientesCODIGOUF: TIntegerField;
    db_ClientesPLANO_CONTAS: TStringField;
    db_ClientesCEP: TStringField;
    db_CtaPagarFORNECEDOR_NOME: TStringField;
    db_CtaPagarCOMPLEMENTAR: TStringField;
    db_ClientesCFOP: TIntegerField;
    db_ClientesCENTROCUSTO: TIntegerField;
    db_ClientesTRANSPORTADORA_PLACA: TStringField;
    db_ClientesTRANSPORTADORA_CIDADE: TStringField;
    db_ClientesTRANSPORTADORA_UF: TStringField;
    db_VendasNFE_ARQUIVO: TStringField;
    ACBrNFe1: TACBrNFe;
    db_VendasVLR_CARTAO: TBCDField;
    db_VendasCONFERENCIA: TIntegerField;
    db_VendasSIMPLESNACIONAL_ALIQUOTA: TBCDField;
    db_VendasSIMPLESNACIONAL_VALOR: TBCDField;
    db_CtaPagarCONTACAIXA: TIntegerField;
    db_ctaReceberCONTACAIXA: TIntegerField;
    ds_VendasDevolucaoItens: TDataSource;
    db_VendasDevolucaoItens: TFDQuery;
    db_VendasDevolucaoItensCODIGO: TIntegerField;
    db_VendasDevolucaoItensEMPRESA: TIntegerField;
    db_VendasDevolucaoItensNOTAFISCAL: TIntegerField;
    db_VendasDevolucaoItensMODELO: TStringField;
    db_VendasDevolucaoItensSERIE: TStringField;
    db_VendasDevolucaoItensTIPONF: TStringField;
    db_VendasDevolucaoItensEMISSAO: TSQLTimeStampField;
    db_VendasDevolucaoItensOPERACAO: TStringField;
    db_VendasDevolucaoItensCLIENTE: TIntegerField;
    db_VendasDevolucaoItensVENDEDOR: TIntegerField;
    db_VendasDevolucaoItensCFOP: TIntegerField;
    db_VendasDevolucaoItensTABELA: TIntegerField;
    db_VendasDevolucaoItensFORMAPAGTO: TIntegerField;
    db_VendasDevolucaoItensTRANSPORTADORA: TIntegerField;
    db_VendasDevolucaoItensPRODUTO: TStringField;
    db_VendasDevolucaoItensSEQUENCIAITEM: TIntegerField;
    db_VendasDevolucaoItensNCM: TStringField;
    db_VendasDevolucaoItensDESCRICAO: TStringField;
    db_VendasDevolucaoItensUND: TStringField;
    db_VendasDevolucaoItensCLASSIFICACAO_FISCAL: TStringField;
    db_VendasDevolucaoItensSITUACAO_TRIBUTARIA: TStringField;
    db_VendasDevolucaoItensQUANTIDADE: TBCDField;
    db_VendasDevolucaoItensVLR_UNIT: TBCDField;
    db_VendasDevolucaoItensIPI: TBCDField;
    db_VendasDevolucaoItensVLR_IPI: TBCDField;
    db_VendasDevolucaoItensICMS: TBCDField;
    db_VendasDevolucaoItensVLR_ICMS: TBCDField;
    db_VendasDevolucaoItensISS: TBCDField;
    db_VendasDevolucaoItensISS_BASECALCULO: TBCDField;
    db_VendasDevolucaoItensISS_VALOR: TBCDField;
    db_VendasDevolucaoItensDESCONTO: TBCDField;
    db_VendasDevolucaoItensVLR_DESCONTO: TBCDField;
    db_VendasDevolucaoItensVLR_TOTAL: TBCDField;
    db_VendasDevolucaoItensALIQUOTA: TStringField;
    db_VendasDevolucaoItensTIPOQTDE: TStringField;
    db_VendasDevolucaoItensNATUREZA_DESCONTO: TStringField;
    db_VendasDevolucaoItensCASAS_DECIMAIS: TIntegerField;
    db_VendasCREDITOABATIMENTO: TBCDField;
    db_ctaReceberGERARCOMPLEMENTO: TStringField;
    db_CtaPagarREMESSA: TIntegerField;
    db_CtaPagarCHECADO: TStringField;
    db_CtaPagarPAGTOTERCEIRIZADO: TStringField;
    db_ctaReceberPROTESTOSTATUS: TStringField;
    db_CtaPagarPROTESTOSTATUS: TStringField;
    db_ctaReceberEMPRESA: TIntegerField;
    db_CtaPagarEMPRESA: TIntegerField;
    db_empresa: TFDQuery;
    db_ClientesENDCOB_DDD: TIntegerField;
    db_ClientesENDCOB_CODIGOCIDADE: TIntegerField;
    ds_PedidoCompra: TDataSource;
    ds_PedidoCompraItens: TDataSource;
    db_PedidoCompra: TFDQuery;
    db_PedidoCompraItens: TFDQuery;
    db_PedidoCompraEMPRESA: TIntegerField;
    db_PedidoCompraCODIGO: TIntegerField;
    db_PedidoCompraDATA: TSQLTimeStampField;
    db_PedidoCompraDATA_ENTREGA: TSQLTimeStampField;
    db_PedidoCompraREQUISICAO: TIntegerField;
    db_PedidoCompraFORNECEDOR: TIntegerField;
    db_PedidoCompraTRANSPORTADORA: TIntegerField;
    db_PedidoCompraFORMAPAGTO: TIntegerField;
    db_PedidoCompraDEPARTAMENTO: TIntegerField;
    SPPEDIDOCOMPRA_CALCULAR: TFDStoredProc;
    db_PedidoCompraItensEMPRESA: TIntegerField;
    db_PedidoCompraItensCODIGO: TIntegerField;
    db_PedidoCompraItensPRODUTO: TStringField;
    db_PedidoCompraItensDESCRICAO: TStringField;
    db_PedidoCompraItensUND: TStringField;
    db_PedidoCompraItensQTDE_PEDIDA: TBCDField;
    db_PedidoCompraItensQTDE_ENTREGUE: TBCDField;
    db_PedidoCompraItensQTDE_RESTANTE: TBCDField;
    db_PedidoCompraItensVALOR_UNIT: TBCDField;
    db_PedidoCompraItensVALOR_TOTAL: TBCDField;
    db_PedidoCompraItensDESCONTO: TBCDField;
    db_PedidoCompraItensVLR_DESCONTO: TBCDField;
    db_PedidoCompraQTDE_PEDIDA: TBCDField;
    db_PedidoCompraQTDE_ENTREGUE: TBCDField;
    db_PedidoCompraVLR_TOTAL: TBCDField;
    db_PedidoCompraFRETE_VALOR: TBCDField;
    db_PedidoCompraFRETE_TIPO: TStringField;
    db_PedidoCompraOBSERVACAO: TStringField;
    db_PedidoCompraEFETIVADO: TStringField;
    db_PedidoCompraAPROVADO: TStringField;
    db_PedidoCompraFORNECEDORPEDIDO: TStringField;
    db_PedidoCompraUSUARIO: TIntegerField;
    db_ctaReceberDESCONTOVALOR: TBCDField;
    db_ctaReceberGERARREMESSA: TStringField;
    db_ctaReceberDESPESAS_JUROSVALOR: TBCDField;
    db_CtaPagarDESCONTOVALOR: TBCDField;
    db_CtaPagarDESPESAS_JUROSVALOR: TBCDField;
    ds_transportadora: TDataSource;
    db_VendasNOTAFISCALORIGEM: TIntegerField;
    db_VendasNFE_CERTIFICADO: TStringField;
    db_VendasREGISTRODIARIO: TIntegerField;
    db_VendasDEVOLUCAOCREDITADA: TStringField;
    db_VendasNFE_FINALIDADE: TIntegerField;
    db_VendasItensSEQUENCIAITEM: TIntegerField;
    db_VendasItensNCFOP: TIntegerField;
    db_VendasItensALIQUOTA: TStringField;
    db_VendasItensTIPOQTDE: TStringField;
    db_VendasItensNATUREZA_DESCONTO: TStringField;
    db_VendasItensCASAS_DECIMAIS: TIntegerField;
    db_ClientesULTIMAVENDA_DATA: TSQLTimeStampField;
    db_ClientesATIVODATA: TSQLTimeStampField;
    DANFE_FastReport: TACBrNFeDANFEFR;
    db_ctaReceberSELECIONADO: TStringField;
    db_ctaReceberDESCONTADO: TStringField;
    db_ctaReceberPAGAMENTOTITULO: TStringField;
    db_ClientesULTIMAVENDA_ORIGEM: TStringField;
    db_ctaReceberCARTEIRA: TIntegerField;
    db_VendasHORA: TTimeField;
    db_VendasNFE_ASSINADO: TStringField;
    db_VendasNFE_ASSINATURA: TStringField;
    db_VendasNFE_VALIDADO: TStringField;
    db_VendasNFE_TRANSMITIDO: TStringField;
    db_VendasNFE_DANFEIMPRESSA: TStringField;
    db_VendasNFE_SITUACAOSEFAZ: TStringField;
    db_VendasNFE_APROVADA: TStringField;
    db_VendasNFE_NFECANCELADA: TStringField;
    db_VendasNFE_RECIBO: TStringField;
    db_VendasNFE_DATATRANSMISSAO: TSQLTimeStampField;
    db_VendasNFE_HORATRANSMISSAO: TTimeField;
    db_VendasNFE_CHAVEACESSO: TStringField;
    db_VendasNFE_PROTOCOLOUSO: TStringField;
    db_VendasNFE_SITUACAOCODIGO: TStringField;
    db_VendasNFE_LOTE: TIntegerField;
    db_VendasCANCELAMENTO_MOTIVO: TStringField;
    db_VendasCANCELAMENTO_DATA: TSQLTimeStampField;
    db_VendasCANCELAMENTO_USUARIO: TStringField;
    db_VendasCANCELAMENTO_CODIGORETORNO: TIntegerField;
    db_VendasCANCELAMENTO_PROTOCOLO: TStringField;
    db_VendasCANCELAMENTO_SITUACAO: TStringField;
      procedure db_ctaReceberNewRecord(DataSet: TDataSet);
      procedure db_CtaPagarNewRecord(DataSet: TDataSet);
      procedure db_ClientesNewRecord(DataSet: TDataSet);
      procedure db_ClientesCEPChange(Sender: TField);
      procedure db_ClientesBeforePost(DataSet: TDataSet);
      procedure db_ClientesCPF_CNPJChange(Sender: TField);
      procedure db_RefBancBeforePost(DataSet: TDataSet);
      procedure db_RefComBeforePost(DataSet: TDataSet);
      procedure db_SociosBeforePost(DataSet: TDataSet);
      procedure db_VendasItensBeforePost(DataSet: TDataSet);
      procedure db_VendasNewRecord(DataSet: TDataSet);
      procedure db_ClientesAfterPost(DataSet: TDataSet);
      procedure db_VendasItensPRODUTOChange(Sender: TField);
      procedure db_VendasItensQUANTIDADEChange(Sender: TField);
      procedure db_VendasItensVLR_UNITChange(Sender: TField);
      procedure ACBrNFe1StatusChange(Sender: TObject);
      procedure db_VendasItensAfterPost(DataSet: TDataSet);
    procedure db_CtaPagarFORNECEDORChange(Sender: TField);
    procedure db_VendasCLIENTEChange(Sender: TField);
    procedure db_ctaReceberCLIENTEChange(Sender: TField);
    procedure db_VendasEMISSAOChange(Sender: TField);
    procedure db_CtaPagarBeforePost(DataSet: TDataSet);
    procedure db_VendasBeforePost(DataSet: TDataSet);
    procedure db_VendasCFOPChange(Sender: TField);
    procedure db_VendasDevolucaoItensBeforePost(DataSet: TDataSet);
    procedure db_ParametrosBeforeOpen(DataSet: TDataSet);
    procedure db_empresaBeforeOpen(DataSet: TDataSet);
    procedure db_ctaReceberBeforeOpen(DataSet: TDataSet);
    procedure db_CtaPagarBeforeOpen(DataSet: TDataSet);
    procedure db_VendasBeforeOpen(DataSet: TDataSet);
    procedure db_PedidoCompraItensBeforePost(DataSet: TDataSet);
    procedure db_PedidoCompraBeforeOpen(DataSet: TDataSet);
    procedure db_PedidoCompraItensAfterDelete(DataSet: TDataSet);
    procedure db_PedidoCompraItensAfterPost(DataSet: TDataSet);
    procedure db_PedidoCompraItensPRODUTOChange(Sender: TField);
    procedure db_PedidoCompraNewRecord(DataSet: TDataSet);
    procedure db_PedidoCompraBeforePost(DataSet: TDataSet);
    procedure db_PedidoCompraAfterClose(DataSet: TDataSet);
    procedure db_ctaReceberAfterClose(DataSet: TDataSet);
    procedure db_CtaPagarAfterClose(DataSet: TDataSet);
    procedure db_ClientesAfterClose(DataSet: TDataSet);
    procedure db_VendasAfterClose(DataSet: TDataSet);
    procedure db_ClientesVENDEDORChange(Sender: TField);
    procedure db_VendasItensNewRecord(DataSet: TDataSet);
    procedure db_PedidoCompraAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);


   private

      { Private declarations }
      procedure Calcular_VendaItens;

      /// /////////////////////////////////////////////////////////////////////////
      /// Utilizado somente na emissão da nota fiscal
      /// /////////////////////////////////////////////////////////////////////////
      Function RetornaImposto(TipoImposto: String): Real;

      Function GerarNumeroNFe(nVenda: integer): integer;
      procedure prcPedidoCompraCalcular;


   public
      { Public declarations }
      procedure prcDANFELogo;
      Function GerarNumeroNotaFiscal(nVenda: integer): integer;
      procedure GerarNFe(NumNFe: integer);
      Function GerarLote(): integer;

   end;

var
   BaseDados: TBaseDados;

   Ok: Boolean;
   StreamMemo: TMemoryStream;

implementation

uses FPrincipal, FBaseDados_PCP, Biblioteca, Global, FCadClientes,
   F_RelEst_Historico, FStatusNFe, SQLServer, FReciboImprimir,
  FRelatorioProducao, FNotaFiscal;

{$R *.dfm}

procedure TBaseDados.prcDANFELogo;
begin
   if ACBrNFe1.DANFE <> nil then
   begin
      ACBrNFe1.DANFE.TipoDANFE :=  StrToTpImp(Ok, db_Parametros.FieldByName('NFE_AMBIENTE').AsString);

      if FileExists(db_Parametros.FieldByName('SISTEMA_LOGO_RELATORIOS').AsString) then
         ACBrNFe1.DANFE.Logo       := db_Parametros.FieldByName('SISTEMA_LOGO_RELATORIOS').AsString;
   end;
end;


procedure TBaseDados.GerarNFe(NumNFe: integer);
var
   nSequencia: integer;
   ncst : Real;

   nlQTDE, nlValorUnit, nlValorTotal : Real;

begin

   ACBrNFe1.Configuracoes.Geral.FormaEmissao   :=  StrToTpEmis(Ok, db_Parametros.FieldByName('NFE_FORMAEMISSAO').AsString);
   ACBrNFe1.Configuracoes.WebServices.Ambiente :=  StrToTpAmb(Ok, db_Parametros.FieldByName('NFE_AMBIENTE').AsString);
   inNotaFiscal                                :=  db_Vendas.FieldByName('NOTAFISCAL').AsInteger;
   inCliente                                   :=  db_Vendas.FieldByName('CLIENTE').AsInteger;
   inTransportadora                            :=  db_Vendas.FieldByName('TRANSPORTADORA').AsInteger;


   prcDANFELogo;

   with ACBrNFe1.NotasFiscais.Add.NFe do
   begin

      // Caso não seja preenchido será gerado um número aleatório pelo componente
      Ide.natOp := fnCFOP_NOME( db_Vendas.FieldByName('CFOP').AsInteger );

      /// -----------------------------------------------------------------
      /// Definir forma de pagamento
      /// -----------------------------------------------------------------
      Ide.indPag := ipOutras;

      if UpperCase(db_Vendas.FieldByName('TIPOPAGAMENTO').AsString)
        = 'VISTA' then
      Begin
         Ide.indPag := ipVista;
      End;

      if UpperCase(db_Vendas.FieldByName('TIPOPAGAMENTO').AsString)
        = 'PRAZO' then
      Begin
         Ide.indPag := ipPrazo;
      End;

      Ide.modelo        := db_Parametros.FieldByName('NFE_MODELO').AsInteger;
      Ide.serie         := db_Parametros.FieldByName('NFE_SERIE').AsInteger;
      Ide.nNF           := NumNFe;
      Ide.cNF           := NumNFe;
      Ide.dEmi          := db_Vendas.FieldByName('EMISSAO').AsDateTime;
      Ide.dSaiEnt       := db_Vendas.FieldByName('DATA_ENTRADASAIDA').AsDateTime;
      Ide.hSaiEnt       :=  Time; //db_Vendas.FieldByName('HORA').AsDateTime;

      if db_Vendas.FieldByName('OPERACAO').AsString='S' then
         Ide.tpNF          := tnSaida;

      if db_Vendas.FieldByName('OPERACAO').AsString='E' then
         Ide.tpNF          := tnEntrada;

      Ide.tpEmis        := StrToTpEmis(Ok,        db_Parametros.FieldByName('NFE_FORMAEMISSAO').AsString);
      Ide.tpAmb         := StrToTpAmb(Ok, db_Parametros.FieldByName('NFE_AMBIENTE').AsString);

      Ide.verProc       := '2012'; // Versão do seu sistema

      Ide.cUF           := NotaUtil.UFtoCUF(db_Parametros.FieldByName('EMPRESA_UF').AsString);
      Ide.cMunFG        := db_Parametros.FieldByName('EMPRESA_CODIGOCIDADE').AsInteger;

    {***********************************************************************
     ** De acordo com o Ministério da Fazenda - 2012:                    ***
     ** 1 - NF-e normal                                                  ***
     ** 2 - NF-e complementar                                            ***
     ** 3 – NF-e de ajuste                                               ***
     ***********************************************************************}
      case StrToIntDef(db_Parametros.FieldByName('EMPRESA_REGIMETRIBUTARIO').AsString,1) of
            1: Ide.finNFe := fnNormal;
            2: Ide.finNFe := fnComplementar;
            3: Ide.finNFe := fnAjuste;
      end;


      ACBrNFe1.Configuracoes.WebServices.UF            :=  db_Parametros.FieldByName('EMPRESA_UF').AsString;
      ACBrNFe1.Configuracoes.WebServices.Ambiente      :=  StrToTpAmb(Ok, db_Parametros.FieldByName('NFE_AMBIENTE').AsString);

      // Para NFe referenciada use os campos abaixo
      {
      with Ide.NFref.Add do
        begin
           refNFe       := ''; //NFe Eletronica
           RefNF.cUF    := 0;  // |
           RefNF.AAMM   := ''; // |
           RefNF.CNPJ   := ''; // |
           RefNF.modelo := 1;  // |- NFe Modelo 1/1A
           RefNF.serie  := 1;  // |
           RefNF.nNF    := 0;  // |
       end;
      }

      Emit.CNPJCPF              := db_Parametros.FieldByName('EMPRESA_CNPJ').AsString;
      Emit.IE                   := db_Parametros.FieldByName('EMPRESA_IE').AsString;
      Emit.xNome                := db_Parametros.FieldByName('EMPRESA_NOME').AsString;
      Emit.xFant                := db_Parametros.FieldByName('EMPRESA_NOME_FANTASIA').AsString;

      Emit.EnderEmit.fone       := db_Parametros.FieldByName('EMPRESA_FONE').AsString;
      Emit.EnderEmit.CEP        :=  StrToInt(SONUMERO(db_Parametros.FieldByName('EMPRESA_CEP').AsString));
      Emit.EnderEmit.xLgr       := db_Parametros.FieldByName('EMPRESA_ENDERECO').AsString;
      Emit.EnderEmit.nro        := db_Parametros.FieldByName('EMPRESA_NUMERO').AsString;
      Emit.EnderEmit.xCpl       := db_Parametros.FieldByName('EMPRESA_COMPLEMENTO').AsString;
      Emit.EnderEmit.xBairro    := db_Parametros.FieldByName('EMPRESA_BAIRRO').AsString;
      Emit.EnderEmit.cMun       := db_Parametros.FieldByName('EMPRESA_CODIGOCIDADE').AsInteger;
      Emit.EnderEmit.xMun       := db_Parametros.FieldByName('EMPRESA_CIDADE').AsString;
      Emit.EnderEmit.UF         := db_Parametros.FieldByName('EMPRESA_UF').AsString;
      Emit.EnderEmit.cPais      := db_Parametros.FieldByName('EMPRESA_CODIGOPAIS').AsInteger;
      Emit.EnderEmit.xPais      := db_Parametros.FieldByName('EMPRESA_NOMEPAIS').AsString;

      Emit.IEST := '';
      Emit.IM := ''; // Preencher no caso de existir serviços na nota
      Emit.CNAE := ''; // Verifique na cidade do emissor da NFe se é permitido


    {***********************************************************************
     ** De acordo com o Ministério da Fazenda - 2012:                    ***
     **    1 – Simples Nacional                                          ***
     **    2 – Simples Nacional excesso de sublimite da receita bruta    ***
     **    3 – Regime Normal                                             ***
     ***********************************************************************
     **  se a empresa FOR optante do simples, pegar aliquota do SIMPLES   **
     ***********************************************************************}
      case db_Parametros.FieldByName('EMPRESA_REGIMETRIBUTARIO').AsInteger of
         0, 1: Emit.CRT               := crtSimplesNacional;
            2: Emit.CRT               := crtSimplesExcessoReceita;
            3: Emit.CRT               := crtRegimeNormal;
      end;

      Dest.CNPJCPF        := SONUMERO( fncCliente_retCampo(inCliente,'CPF_CNPJ') );
      strInscrEstadual    := SONUMERO( fncCliente_retCampo(inCliente,'RG_IE') );

      if (fncCliente_retCampo(inCliente,'CLASSIFICACAO')='J') or (fncCliente_retCampo(inCliente,'CLASSIFICACAO')='') then
      begin
         if (strInscrEstadual='') or (strInscrEstadual='0') then
            strInscrEstadual := 'ISENTO';
      end;

      if (fncCliente_retCampo(inCliente,'CLASSIFICACAO')='F')  then
         strInscrEstadual := 'ISENTO';


      Dest.IE                         := strInscrEstadual;
      Dest.ISUF                       := '';
      Dest.xNome                      := Copy( fncCliente_retCampo(inCliente,'NOME'),1,60);
      Dest.EnderDest.fone             := SONUMERO(fncCliente_retCampo(inCliente,'DDD_FONE') + fncCliente_retCampo(inCliente,'FONE'));
      Dest.EnderDest.CEP              := StrToInt(SONUMERO(fncCliente_retCampo(inCliente,'CEP')));
      Dest.EnderDest.xLgr             := fncCliente_retCampo(inCliente,'ENDERECO');
      Dest.EnderDest.nro              := fncCliente_retCampo(inCliente,'NUMERO');
      Dest.EnderDest.xCpl             := fncCliente_retCampo(inCliente,'COMPLEMENTO');
      Dest.EnderDest.xBairro          := fncCliente_retCampo(inCliente,'BAIRRO');
      Dest.EnderDest.cMun             := StrToIntDef( fncCliente_retCampo(inCliente,'CODIGOCIDADE'), 0);
      Dest.EnderDest.xMun             := fncCliente_retCampo(inCliente,'NOMECIDADE');
      Dest.EnderDest.UF               := fncCliente_retCampo(inCliente,'UF');
      Dest.EnderDest.cPais            := 1058;
      Dest.EnderDest.xPais            := 'BRASIL';

      // Adicionando Produtos

      nSequencia := 0;
      db_VendasItens.First;
      while not db_VendasItens.Eof do
      begin

         strReferencia :=db_VendasItens.FieldByName('PRODUTO').AsString;

         with Det.Add do
         begin
            inc(nSequencia);

            Prod.nItem            := nSequencia;
            Prod.cProd            := db_VendasItens.FieldByName('PRODUTO').AsString;
            Prod.xProd            := db_VendasItens.FieldByName('DESCRICAO').AsString;
            Prod.NCM              := db_VendasItens.FieldByName('NCM').AsString;
            Prod.EXTIPI           := '';

            if db_VendasItens.FieldByName('NCFOP').AsInteger<=0 then
            begin
               Prod.CFOP             :=  db_Vendas.FieldByName('CFOP').AsString;
            end
            else
            begin
               Prod.CFOP             :=  db_VendasItens.FieldByName('NCFOP').AsString;
            end;

            nlQTDE                :=0;
            nlValorUnit           :=0;
            nlValorTotal          :=0;

            nlQTDE                :=ArrendondarDecimais( db_VendasItens.FieldByName('QUANTIDADE').AsFloat );
            nlValorUnit           :=ArrendondarDecimais( db_VendasItens.FieldByName('VLR_UNIT').AsFloat );
            nlValorTotal          :=ArrendondarDecimais( nlQTDE * nlValorUnit );

            Prod.uCom             :=  db_VendasItens.FieldByName('UND').AsString;
            Prod.qCom             :=  nlQTDE ;
            Prod.vUnCom           :=  nlValorUnit;
            Prod.vProd            :=  nlValorTotal;
            Prod.cEANTrib         :=  '';
            Prod.uTrib            := db_VendasItens.FieldByName('UND').AsString;
            Prod.qTrib            := nlQTDE;
            Prod.vUnTrib          := nlValorUnit;
            Prod.vDesc            := ArrendondarDecimais( db_VendasItens.FieldByName('VLR_DESCONTO').AsFloat );
            Prod.IndTot           := itSomaTotalNFe;
            //Prod.cEAN             := '';

            // Número sequencial, para cada item deve ser incrementado
            if fncProduto_retCampo(strReferencia,'CODIGO_BARRA')>'' then
            begin
               if Valida_EAN(fncProduto_retCampo(strReferencia,'CODIGO_BARRA')) Then
                  Prod.cEAN := fncProduto_retCampo(strReferencia,'CODIGO_BARRA')
               else
                  Prod.cEAN := '';
            end
            else
            begin
               Prod.cEAN := '';
            end;

            Prod.vFrete := 0;
            Prod.vSeg := 0;

            infAdProd := '';

            with Imposto do
            begin
               with ICMS do
               begin
                  ncst :=StrToIntDef(db_VendasItens.FieldByName('SITUACAO_TRIBUTARIA').AsString,40);
                  if (StrToIntDef(db_VendasItens.FieldByName('SITUACAO_TRIBUTARIA').AsString,0)<1) or (ncst<1) then
                  begin
                     case db_Parametros.FieldByName('EMPRESA_REGIMETRIBUTARIO').AsInteger of
                      0,  1: CST            := cst10;
                          2: CST            := cst10;
                          3: CST            := cst00;
                     end;
                  end
                  else
                  begin
                     if  (ncst>=100) then
                      ncst := ncst / 10;

                     CST         :=  StrToCSTICMS(OK, FloatToStr(ncst) );
                  end;

                  ICMS.orig      := oeNacional;
                  ICMS.modBC     := dbiValorOperacao;
                  ICMS.vBC       := nlValorTotal;
                  ICMS.pICMS     := ( db_VendasItens.FieldByName('ICMS').AsFloat );
                  ICMS.vICMS     := ( db_VendasItens.FieldByName('VLR_ICMS').AsFloat );
                  ICMS.modBCST   := dbisMargemValorAgregado;
                  ICMS.pMVAST    := 0;
                  ICMS.pRedBCST  := 0;
                  ICMS.vBCST     := 0;
                  ICMS.pICMSST   := 0;
                  ICMS.vICMSST   := 0;
                  ICMS.pRedBC    := 0;

                  case db_Parametros.FieldByName('EMPRESA_REGIMETRIBUTARIO').AsInteger of
                   0,  1: ICMS.CSOSN     := csosn101;
                       2: ICMS.CSOSN     := csosn101;
                       3: ICMS.CSOSN     := csosn400;
                  end;

                  //ICMS.CSOSN     := csosnVazio;
               end;

               with IPI do
               begin
                  CST := ipi99;
                  clEnq := '';
                  CNPJProd := '';
                  cSelo := '';
                  qSelo := 0;
                  cEnq := '';

                  vBC := 0;
                  qUnid := 0;
                  vUnid := 0;
                  pIPI := 0;
                  vIPI := 0;
               end;

               with II do
               begin
                  vBC := 0;
                  vDespAdu := 0;
                  vII := 0;
                  vIOF := 0;
               end;

               with PIS do
               begin
                  CST := pis99;
                  PIS.vBC := 0;
                  PIS.pPIS := 0;
                  PIS.vPIS := 0;

                  PIS.qBCProd := 0;
                  PIS.vAliqProd := 0;
                  PIS.vPIS := 0;
               end;

               with PISST do
               begin
                  vBC := 0;
                  pPIS := 0;
                  qBCProd := 0;
                  vAliqProd := 0;
                  vPIS := 0;
               end;

               with COFINS do
               begin
                  CST := cof99;
                  COFINS.vBC := 0;
                  COFINS.pCOFINS := 0;
                  COFINS.vCOFINS := 0;

                  COFINS.qBCProd := 0;
                  COFINS.vAliqProd := 0;
               end;

               with COFINSST do
               begin
                  vBC := 0;
                  pCOFINS := 0;
                  qBCProd := 0;
                  vAliqProd := 0;
                  vCOFINS := 0;
               end;

            end;

         end;

         db_VendasItens.next;

      End;


      case db_Parametros.FieldByName('EMPRESA_REGIMETRIBUTARIO').AsInteger of
         0,  1 : begin
                  Total.ICMSTot.vBC           := 0;
                  Total.ICMSTot.vICMS         := 0;
                 end ;

             2 : begin
                  Total.ICMSTot.vBC           := 0;
                  Total.ICMSTot.vICMS         := 0;
                 end;

             3 : begin
                  Total.ICMSTot.vBC           := (db_Vendas.FieldByName('ICMS_BASECALCULO').AsFloat);
                  Total.ICMSTot.vICMS         := ( db_Vendas.FieldByName('ICMS_VALOR').AsFloat);
                 end;

      end;

      Total.ICMSTot.vBCST         := 0;
      Total.ICMSTot.vST           := 0;
      Total.ICMSTot.vProd         := ArrendondarDecimais( db_Vendas.FieldByName('VALOR_PRODUTOS').AsFloat);
      Total.ICMSTot.vFrete        := 0;
      Total.ICMSTot.vSeg          := 0;
      Total.ICMSTot.vDesc         := ArrendondarDecimais( db_Vendas.FieldByName('VLR_DESCONTO').AsFloat);
      Total.ICMSTot.vII           := 0;
      Total.ICMSTot.vIPI          := 0;
      Total.ICMSTot.vPIS          := 0;
      Total.ICMSTot.vCOFINS       := 0;
      Total.ICMSTot.vOutro        := 0;
      Total.ICMSTot.vNF           := ArrendondarDecimais( db_Vendas.FieldByName('TOTAL_NF').AsFloat);

      Total.ISSQNtot.vServ := 0;
      Total.ISSQNtot.vBC := 0;
      Total.ISSQNtot.vISS := 0;
      Total.ISSQNtot.vPIS := 0;
      Total.ISSQNtot.vCOFINS := 0;

      Total.retTrib.vRetPIS := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL := 0;
      Total.retTrib.vBCIRRF := 0;
      Total.retTrib.vIRRF := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev := 0;

    {***********************************************************************
     ** De acordo com o Ministério da Fazenda - 2012:                    ***
     ** 0- Por conta do emitente;                                        ***
     ** 1- Por conta do destinatário/remetente;                          ***
     ** 2- Por conta de terceiros;                                       ***
     ** 9- Sem frete. (V2.0)                                             ***
     **                                                                  ***
     ***********************************************************************}
      case StrToIntDef(db_Vendas.FieldByName('FRETE').AsString,0) of
            0: Transp.modFrete := mfContaEmitente;
            1: Transp.modFrete := mfContaDestinatario;
            2: Transp.modFrete := mfContaTerceiros;
            9: Transp.modFrete := mfSemFrete;
      end;

      Transp.Transporta.CNPJCPF := SONUMERO( fncCliente_retCampo(inTransportadora,'CPF_CNPJ') );
      Transp.Transporta.IE :=      SONUMERO( fncCliente_retCampo(inTransportadora,'RG_IE') );
      Transp.Transporta.xNome :=   fncCliente_retCampo(inTransportadora,'NOME');
      Transp.Transporta.xEnder :=  fncCliente_retCampo(inTransportadora,'ENDERECO');
      Transp.Transporta.xMun :=    fncCliente_retCampo(inTransportadora,'NOMECIDADE');
      Transp.Transporta.UF :=      fncCliente_retCampo(inTransportadora,'UF');

      Transp.retTransp.vServ := 0;
      Transp.retTransp.vBCRet := 0;
      Transp.retTransp.pICMSRet := 0;
      Transp.retTransp.vICMSRet := 0;
      Transp.retTransp.CFOP := '';
      Transp.retTransp.cMunFG := 0;

      Transp.veicTransp.placa := '';
      Transp.veicTransp.UF := '';
      Transp.veicTransp.RNTC := '';

      with Transp.Vol.Add do
      begin
         qVol := db_Vendas.FieldByName('FRETE_QUANTIDADE').AsInteger;
         esp := db_Vendas.FieldByName('FRETE_ESPECIE').AsString;
         marca := db_Vendas.FieldByName('FRETE_MARCA').AsString;
         nVol := db_Vendas.FieldByName('FRETE_NUMERO').AsString;
         pesoB := db_Vendas.FieldByName('FRETE_PBRUTO').AsFloat;
         pesoL := db_Vendas.FieldByName('FRETE_PLIQUIDO').AsFloat;

         // Lacres do volume. Pode ser adicionado vários
         // Lacres.Add.nLacre := '';
      end;

      Cobr.Fat.nFat := '';
      Cobr.Fat.vOrig := 0;
      Cobr.Fat.vDesc := 0;
      Cobr.Fat.vLiq := 0;

      // parcelas a receber do cliente

      inNotaFiscal                                :=  db_Vendas.FieldByName('NOTAFISCAL').AsInteger;
      inCliente                                   :=  db_Vendas.FieldByName('CLIENTE').AsInteger;
      inTransportadora                            :=  db_Vendas.FieldByName('TRANSPORTADORA').AsInteger;

      prcQueryCriar(tblVendasFaturas);
      prcViewFaturas(tblVendasFaturas,inCliente,inNotaFiscal);

      while not tblVendasFaturas.Eof do
      begin
         with Cobr.Dup.Add do
         begin
            nDup      := tblVendasFaturas.FieldByName('DOCUMENTO').AsString;
            dVenc     := tblVendasFaturas.FieldByName('VENCIMENTO').AsDateTime;
            vDup      := ArrendondarDecimais(tblVendasFaturas.FieldByName('VALOR').AsFloat);
         end;

         tblVendasFaturas.next;

      end;
      prcQueryDeletar(tblVendasFaturas);



      with InfAdic.obsCont.Add do
      begin
         // xCampo := 'ObsCont';
         xCampo := '.';
         xTexto := '.';
         {
         if not empty(db_Vendas.FieldByName('OBS1').AsString) then
         begin
            xTexto := RetornaCFOP_DETALHE(db_Vendas.FieldByName('CFOP').AsInteger);
         end;
         }
      end;

      with InfAdic.obsFisco.Add do
      begin

         // xCampo := 'ObsFisco';
         xCampo := '.';
         xTexto := '.';
          {
           if not empty( db_Vendas.FieldByName('OBS2').AsString ) then
           begin
              xTexto := RetornaCFOP_FISCO(db_Vendas.FieldByName('CFOP').AsInteger);
           end;
         }
      end;

      InfAdic.infCpl     := db_Vendas.FieldByName('OBS1').AsString;
      InfAdic.infAdFisco := db_Vendas.FieldByName('OBS2').AsString;

      // Processo referenciado
      { with InfAdic.procRef.Add do
        begin
        nProc := '';
        indProc := ipSEFAZ;
        end;
      }

      exporta.UFembarq := '';;
      exporta.xLocEmbarq := '';

      compra.xNEmp := '';
      compra.xPed := '';
      compra.xCont := '';

   end;

end;

Function TBaseDados.GerarNumeroNotaFiscal(nVenda: integer): integer;
begin

   /// ////////////////////////////////////////////////////////////////////
   /// Checar se ja possui numero de nota fiscal. Nao possui, gerar.
   /// ////////////////////////////////////////////////////////////////////

   db_Vendas.close;
   db_Vendas.ParamByname('CODIGO').AsInteger := nVenda;
   db_Vendas.open;

   if db_Vendas.recordcount<1 then
   begin
      exit;
   end;

   if (db_Vendas.FieldByName('NOTAFISCAL').AsInteger > 0) Then
   begin
      Exit;
   end;

   {
   if Pergunta('Gerar número de Nota Fiscal ' + #13 + #10 + #13 + #10 +
     'Sim=Gerar Número Agora' + #13 + #10 + 'NÃo=Gerar Número Depois' + #13 +
     #10 + 'Prosseguir?') = False then
   Begin
      // sair, caso o usuário desista
      Exit;
   End;
   }

   if UpperCase(db_Vendas.FieldByName('TIPONF').AsString) = 'NFE' then
   Begin
      result := GerarNumeroNFe(nVenda);
   End;

end;

function TBaseDados.GerarNumeroNFe(nVenda: integer): integer;
begin

   /// continuar e gerar o proximo numero de nota fiscal.

   if not db_Parametros.active then
      db_Parametros.open;

   db_Parametros.Refresh;
   db_Parametros.Edit;
   db_Parametros.FieldByName('NFE_SEQUENCIA').AsInteger :=
     db_Parametros.FieldByName('NFE_SEQUENCIA').AsInteger + 1;
   db_Parametros.Post;
   db_Parametros.Refresh;

   db_Vendas.Edit;
   db_Vendas.FieldByName('NOTAFISCAL').AsInteger :=
     db_Parametros.FieldByName('NFE_SEQUENCIA').AsInteger;
   db_Vendas.Post;
   db_Vendas.Refresh;

   result := db_Parametros.FieldByName('NFE_SEQUENCIA').AsInteger;

   prcRegistrarUltimaVenda(db_Vendas.FieldByName('CLIENTE').AsInteger,'NFE');

end;


function TBaseDados.GerarLote(): integer;
begin
   //
   db_Parametros.Refresh;
   db_Parametros.Edit;
   db_Parametros.FieldByName('NFE_LOTE').AsInteger :=     db_Parametros.FieldByName('NFE_LOTE').AsInteger + 1;
   db_Parametros.Post;
   db_Parametros.Refresh;

   {
     db_Vendas.Edit;
     db_Vendas.FieldByName('NFE_LOTE').AsInteger :=db_Parametros.FieldByName('NFE_LOTE').AsInteger;
     db_Vendas.Post;
     db_Vendas.Refresh;
   }

   result := db_Parametros.FieldByName('NFE_LOTE').AsInteger;

end;

procedure TBaseDados.ACBrNFe1StatusChange(Sender: TObject);
begin
   case ACBrNFe1.Status of
      stIdle:
         begin
            if (FrmStatusNFe <> nil) then
               FrmStatusNFe.Hide;
         end;
      stNFeStatusServico:
         begin
            if (FrmStatusNFe = nil) then
               FrmStatusNFe := TFrmStatusNFe.Create(Self);
            FrmStatusNFe.lblStatus.Caption :=
              'Verificando Status do servico...';
            FrmStatusNFe.Show;
            FrmStatusNFe.BringToFront;
         end;
      stNFeRecepcao:
         begin
            if (FrmStatusNFe = nil) then
               FrmStatusNFe := TFrmStatusNFe.Create(Self);
            FrmStatusNFe.lblStatus.Caption := 'Enviando dados da NFe...';
            FrmStatusNFe.Show;
            FrmStatusNFe.BringToFront;
         end;
      stNfeRetRecepcao:
         begin
            if (FrmStatusNFe = nil) then
               FrmStatusNFe := TFrmStatusNFe.Create(Self);
            FrmStatusNFe.lblStatus.Caption := 'Recebendo dados da NFe...';
            FrmStatusNFe.Show;
            FrmStatusNFe.BringToFront;
         end;
      stNfeConsulta:
         begin
            if (FrmStatusNFe = nil) then
               FrmStatusNFe := TFrmStatusNFe.Create(Application);
            FrmStatusNFe.lblStatus.Caption := 'Consultando NFe...';
            FrmStatusNFe.Show;
            FrmStatusNFe.BringToFront;
         end;
      stNfeCancelamento:
         begin
            if (FrmStatusNFe = nil) then
               FrmStatusNFe := TFrmStatusNFe.Create(Application);
            FrmStatusNFe.lblStatus.Caption := 'Enviando cancelamento de NFe...';
            FrmStatusNFe.Show;
            FrmStatusNFe.BringToFront;
         end;
      stNfeInutilizacao:
         begin
            if (FrmStatusNFe = nil) then
               FrmStatusNFe := TFrmStatusNFe.Create(Application);
            FrmStatusNFe.lblStatus.Caption :=
              'Enviando pedido de Inutilização...';
            FrmStatusNFe.Show;
            FrmStatusNFe.BringToFront;
         end;
      stNFeRecibo:
         begin
            if (FrmStatusNFe = nil) then
               FrmStatusNFe := TFrmStatusNFe.Create(Application);
            FrmStatusNFe.lblStatus.Caption := 'Consultando Recibo de Lote...';
            FrmStatusNFe.Show;
            FrmStatusNFe.BringToFront;
         end;
      stNFeCadastro:
         begin
            if (FrmStatusNFe = nil) then
               FrmStatusNFe := TFrmStatusNFe.Create(Application);
            FrmStatusNFe.lblStatus.Caption := 'Consultando Cadastro...';
            FrmStatusNFe.Show;
            FrmStatusNFe.BringToFront;
         end;
      stNFeEnvDPEC:
         begin
            if (FrmStatusNFe = nil) then
               FrmStatusNFe := TFrmStatusNFe.Create(Application);
            FrmStatusNFe.lblStatus.Caption := 'Enviando DPEC...';
            FrmStatusNFe.Show;
            FrmStatusNFe.BringToFront;
         end;
      stNFeConsultaDPEC:
         begin
            if (FrmStatusNFe = nil) then
               FrmStatusNFe := TFrmStatusNFe.Create(Application);
            FrmStatusNFe.lblStatus.Caption := 'Consultando DPEC...';
            FrmStatusNFe.Show;
            FrmStatusNFe.BringToFront;
         end;
      stNFeEmail:
         begin
            if (FrmStatusNFe = nil) then
               FrmStatusNFe := TFrmStatusNFe.Create(Application);
            FrmStatusNFe.lblStatus.Caption := 'Enviando Email...';
            FrmStatusNFe.Show;
            FrmStatusNFe.BringToFront;
         end;
   end;

   Application.ProcessMessages;


end;

procedure TBaseDados.Calcular_VendaItens;
Begin

   Quantidade := 0;
   Vlr_Unit := 0;
   SubTotal := 0;
   wFloat[0] := 0;
   wFloat[1] := 0;

   Quantidade := db_VendasItens.FieldByName('QUANTIDADE').AsInteger;
   Vlr_Unit := (db_VendasItens.FieldByName('VLR_UNIT').AsFloat);
   wFloat[0] := (db_VendasItens.FieldByName('DESCONTO').AsFloat);

   // quantidade X valor Unitário=subtotal
   SubTotal := ((Quantidade) * (Vlr_Unit));
   wFloat[1] := fncGeraPercentual((SubTotal), (wFloat[0]) );
   SubTotal := ((SubTotal) - (wFloat[1]));

   Wtexto[0] := FormatFloat('##0.00', SubTotal);
   Wtexto[1] := FormatFloat('##0.00', wFloat[1]);
   SubTotal := StrToFloat(Wtexto[0]);
   wFloat[1] := StrToFloat(Wtexto[1]);

   db_VendasItens.FieldByName('VLR_DESCONTO').AsFloat := (wFloat[1]);
   db_VendasItens.FieldByName('VLR_TOTAL').AsFloat := (SubTotal);

   Quantidade := 0;
   Vlr_Unit := 0;
   SubTotal := 0;
   wFloat[0] := 0;
   wFloat[1] := 0;

End;

procedure TBaseDados.DataModuleCreate(Sender: TObject);
begin
   if FileExists('C:\Vestis\NFE\DANFE\DANFE.fr3') then
      DANFE_FastReport.FastFile :='C:\Vestis\NFE\DANFE\DANFE.fr3';
end;

procedure TBaseDados.db_ClientesAfterClose(DataSet: TDataSet);
begin
  db_Clientes.ParamByName('CODIGO').Clear;

end;

procedure TBaseDados.db_ClientesAfterPost(DataSet: TDataSet);
begin
   db_Clientes.ParamByname('CODIGO').AsInteger := db_Clientes.FieldByName('CODIGO').AsInteger;
end;

procedure TBaseDados.db_ClientesBeforePost(DataSet: TDataSet);
begin

   db_Clientes.ParamByname('CODIGO').AsInteger :=
     db_Clientes.FieldByName('CODIGO').AsInteger;

   if empty(db_Clientes.FieldByName('NUMERO').AsString) and
     (db_Clientes.FieldByName('CEP').AsInteger > 0) Then
   Begin
      Informar('Informe o número do endereço. Campo obrigatório.');
      Abort;
   End;

   {
   if empty(db_Clientes.FieldByName('EMAIL').AsString) Then
   Begin
      Informar('Informe o e-mail do cliente');
      Abort;
   End;
   }

   if  Length(SoNumero(db_Clientes.FieldByName('CPF_CNPJ').AsString))<=11 then
      db_Clientes.FieldByName('CLASSIFICACAO').AsString := 'F';

   if  Length(SoNumero(db_Clientes.FieldByName('CPF_CNPJ').AsString))>=14 then
      db_Clientes.FieldByName('CLASSIFICACAO').AsString := 'J';

  if empty(db_Clientes.FieldByName('RG_IE').AsString) then
  begin
     db_Clientes.FieldByName('RG_IE').AsString :='ISENTO';
  end;


end;

procedure TBaseDados.db_ClientesCEPChange(Sender: TField);
begin


     db_Clientes.FieldByName('ENDERECO').AsString        :=CEPTipo(db_Clientes.FieldByName('CEP').AsString)+' '+CEPEndereco(db_Clientes.FieldByName('CEP').AsString);;

     db_Clientes.FieldByName('BAIRRO').AsString          :=CEPBairro(db_Clientes.FieldByName('CEP').AsString);

     db_Clientes.FieldByName('NOMECIDADE').AsString      :=CEPCidade(db_Clientes.FieldByName('CEP').AsString);

     db_Clientes.FieldByName('CODIGOCIDADE').AsString    :=CEPCidadeIBGE(db_Clientes.FieldByName('CEP').AsString);

     db_Clientes.FieldByName('UF').AsString              :=CEPUF(db_Clientes.FieldByName('CEP').AsString);

     db_Clientes.FieldByName('CODIGOUF').AsString        :=CEPUFIBGE(db_Clientes.FieldByName('CEP').AsString);

end;

procedure TBaseDados.db_ClientesCPF_CNPJChange(Sender: TField);
begin
   strCNPJ := '';
   if strTipoPessoa = 'F' then
   begin
      If CPF(db_Clientes.FieldByName('CPF_CNPJ').AsString) = False Then
      Begin
         BeepCritica;
         db_Clientes.FieldByName('CPF_CNPJ').AsString := '';
         Atencao('CPF inválido ');
         FrmClientes.EditCNPJCPF1.SetFocus;
         Exit;

      End;

      strCNPJ := FrmClientes.EditCNPJCPF1.Text;
      If (db_Clientes.state in [dsEdit, dsInsert]) then
      Begin

         If fncCliente_cnpj(strCNPJ) then
         begin
            FrmClientes.FrmFrameBotoes1.SpbCancelarClick(Sender);
            BeepCritica;
            db_Clientes.Cancel;
            strTipoCadastro :=fncCliente_retCampo(fncCliente_ID_CNPJ(strCNPJ ),'TIPO');

            AvisoSistemaErro('Já existe cadastro com esse documento: '
                              +strCNPJ
                              +LineBreak
                              +'Está Localizado no cadastro de: '+strTipoCadastro
                              +LineBreak
                              +'Tipo de Pessoa: '+fncTipoPessoa( fncCliente_retCampo(fncCliente_ID_CNPJ(strCNPJ ),'CLASSIFICACAO') )

                             );

            db_Clientes.close;
            db_Clientes.ParamByname('CODIGO').Clear;
            db_Clientes.ParamByname('CODIGO').AsInteger := fncCliente_ID_CNPJ(strCNPJ );
            db_Clientes.open;

            Atencao('CPF já está cadastrado');
            FrmClientes.EditCNPJCPF1.SetFocus;

         end;
      End;

   end;

   if strTipoPessoa = 'J' then
   begin

      If CNPJ(db_Clientes.FieldByName('CPF_CNPJ').AsString) = False Then
      Begin
         BeepCritica;
         db_Clientes.FieldByName('CPF_CNPJ').Clear;
         Atencao('CNPJ inválido ');
         FrmClientes.EditCNPJCPF2.SetFocus;
         Exit;
      End;

      strCNPJ := FrmClientes.EditCNPJCPF2.Text;
      If (db_Clientes.state in [dsEdit, dsInsert]) then
      Begin

         If fncCliente_cnpj(strCNPJ) then
         begin
            FrmClientes.FrmFrameBotoes1.SpbCancelarClick(Sender);
            BeepCritica;
            db_Clientes.Cancel;

            strTipoCadastro :=fncCliente_retCampo(fncCliente_ID_CNPJ(strCNPJ ),'TIPO');
            AvisoSistemaErro('Já existe cadastro com esse documento: '
                              +strCNPJ
                              +LineBreak
                              +'Está Localizado no cadastro de: '+strTipoCadastro
                              +LineBreak
                              +'Tipo de Pessoa: '+fncTipoPessoa( fncCliente_retCampo(fncCliente_ID_CNPJ(strCNPJ ),'CLASSIFICACAO') )

                             );

            db_Clientes.close;
            db_Clientes.ParamByname('CODIGO').AsInteger := fncCliente_ID_CNPJ(strCNPJ );
            db_Clientes.open;
            db_Clientes.Refresh;

         end;
      End;

   End;

end;

procedure TBaseDados.db_ClientesNewRecord(DataSet: TDataSet);
begin
   db_Clientes.FieldByName('DATA').AsDateTime           := Date;
   db_Clientes.FieldByName('CLASSIFICACAO').AsString    := UpperCase(strTipoPessoa);
   db_Clientes.FieldByName('TIPO').AsString             := 'CLIENTE';
   db_Clientes.FieldByName('BLOQUEADO').AsString        := 'N';
   db_Clientes.FieldByName('ATIVO').AsString            := 'S';

end;



procedure TBaseDados.db_ClientesVENDEDORChange(Sender: TField);
begin
   db_Clientes.FieldByName('REGIAO').AsInteger :=fncBuscaVendedorRegiao(db_Clientes.FieldByName('CODIGO').AsInteger);
end;

procedure TBaseDados.db_CtaPagarAfterClose(DataSet: TDataSet);
begin
  db_CtaPagar.ParamByName('CODIGO').Clear;

end;

procedure TBaseDados.db_CtaPagarBeforeOpen(DataSet: TDataSet);
begin
   db_CtaPagar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TBaseDados.db_CtaPagarBeforePost(DataSet: TDataSet);
begin
 if db_CtaPagar.FieldByName('FORNECEDOR').AsInteger<1 then
 begin
    informar('campo Fornecedor é obrigatório ');
    abort;
 end;
end;

procedure TBaseDados.db_CtaPagarFORNECEDORChange(Sender: TField);
begin

   db_CtaPagar.FieldByName('DEPARTAMENTO').AsInteger   := BuscaClienteCentroCusto(db_CtaPagar.FieldByName('FORNECEDOR').AsInteger);
   db_CtaPagar.FieldByName('CFOP').AsInteger           := fncClienteBuscaCFOP(db_CtaPagar.FieldByName('FORNECEDOR').AsInteger);
   db_CtaPagar.FieldByName('PLANO_CONTAS').AsString    := fncBuscaPlanoContasCliente(db_CtaPagar.FieldByName('FORNECEDOR').AsInteger);


end;

procedure TBaseDados.db_CtaPagarNewRecord(DataSet: TDataSet);
begin
   db_CtaPagar.FieldByName('EMPRESA').AsInteger   := FSistema.Empresa ;
   db_CtaPagar.FieldByName('FORNECEDOR').AsInteger := 0;
   db_CtaPagar.FieldByName('NOTAFISCAL').AsInteger := 0;
   db_CtaPagar.FieldByName('DATA').AsDateTime := Date;
   db_CtaPagar.FieldByName('QUITADO').AsString := 'N';

end;

procedure TBaseDados.db_ctaReceberAfterClose(DataSet: TDataSet);
begin
  db_ctaReceber.ParamByName('CODIGO').Clear;

end;

procedure TBaseDados.db_ctaReceberBeforeOpen(DataSet: TDataSet);
begin
   db_ctaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TBaseDados.db_ctaReceberCLIENTEChange(Sender: TField);
begin
   db_ctaReceber.FieldByName('DEPARTAMENTO').AsInteger   := BuscaClienteCentroCusto(db_ctaReceber.FieldByName('CLIENTE').AsInteger);
   db_ctaReceber.FieldByName('CFOP').AsInteger           := fncClienteBuscaCFOP(db_ctaReceber.FieldByName('CLIENTE').AsInteger);
   db_ctaReceber.FieldByName('PLANO_CONTAS').AsString    := fncBuscaPlanoContasCliente(db_ctaReceber.FieldByName('CLIENTE').AsInteger);

end;

procedure TBaseDados.db_ctaReceberNewRecord(DataSet: TDataSet);
begin
   db_ctaReceber.FieldByName('EMPRESA').AsInteger   := FSistema.Empresa ;
   db_ctaReceber.FieldByName('CLIENTE').AsInteger := 0;
   db_ctaReceber.FieldByName('NOTAFISCAL').AsInteger := 0;
   db_ctaReceber.FieldByName('DATA').AsDateTime := Date;
   db_ctaReceber.FieldByName('QUITADO').AsString := 'N';
end;

procedure TBaseDados.db_empresaBeforeOpen(DataSet: TDataSet);
begin
   db_empresa.ParamByName('EMPRESA').Clear;
   db_empresa.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TBaseDados.db_ParametrosBeforeOpen(DataSet: TDataSet);
begin
   db_Parametros.ParamByName('EMPRESA').Clear;
   db_Parametros.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TBaseDados.db_PedidoCompraAfterClose(DataSet: TDataSet);
begin
  db_PedidoCompra.ParamByName('CODIGO').Clear;
end;

procedure TBaseDados.db_PedidoCompraAfterPost(DataSet: TDataSet);
begin
   db_PedidoCompra.ParamByName('CODIGO').AsInteger   := db_PedidoCompra.FieldByName('CODIGO').AsInteger;
end;

procedure TBaseDados.db_PedidoCompraBeforeOpen(DataSet: TDataSet);
begin
   db_PedidoCompra.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TBaseDados.db_PedidoCompraBeforePost(DataSet: TDataSet);
begin

   if (db_PedidoCompra.FieldByName('FORNECEDOR').AsInteger=0) Then
   begin
     AvisoSistema('Campo [Fornecedor] é obrigatório.');
     abort;
   end;

   if (db_PedidoCompra.FieldByName('TRANSPORTADORA').AsInteger>0)  and
      (db_PedidoCompra.FieldByName('FRETE_TIPO').AsString='')  Then
   begin
     AvisoSistema('Você informou uma [Transportadora], informe tambem o campo [Frete por conta] ');
     abort;
   end;


   if (db_PedidoCompra.FieldByName('DEPARTAMENTO').AsInteger=0) Then
   begin
     AvisoSistema('Campo [Departamento] é obrigatório.');
     abort;
   end;

   db_PedidoCompra.FieldByName('APROVADO').AsString :='S';

end;

procedure TBaseDados.prcPedidoCompraCalcular;
begin

   SPPEDIDOCOMPRA_CALCULAR.ParamByName('EMPRESA').AsInteger :=  FSistema.Empresa;
   SPPEDIDOCOMPRA_CALCULAR.ParamByName('CODIGO').AsInteger :=  db_PedidoCompra.FieldByName('CODIGO').AsInteger;
   SPPEDIDOCOMPRA_CALCULAR.ExecProc;

   db_PedidoCompra.refresh;
   db_PedidoCompraItens.refresh;

end;

procedure TBaseDados.db_PedidoCompraItensAfterDelete(DataSet: TDataSet);
begin
   prcPedidoCompraCalcular;
end;

procedure TBaseDados.db_PedidoCompraItensAfterPost(DataSet: TDataSet);
begin
   prcPedidoCompraCalcular;
end;

procedure TBaseDados.db_PedidoCompraItensBeforePost(DataSet: TDataSet);
begin

   db_PedidoCompraItens.FieldByName('EMPRESA').AsInteger :=  db_PedidoCompra.FieldByName('EMPRESA').AsInteger;
   db_PedidoCompraItens.FieldByName('CODIGO').AsInteger  :=  db_PedidoCompra.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados.db_PedidoCompraItensPRODUTOChange(Sender: TField);
begin

   strReferencia := db_PedidoCompraItens.FieldByName('PRODUTO').AsString;

   if fncPedidoCompraExisteProduto(db_PedidoCompra.FieldByName('CODIGO').AsInteger,strReferencia) Then
   begin
      Aviso('Ja existe nesta grade produto com a mesma referência.');
      db_PedidoCompraItens.Cancel;
      exit;
   end;

   if ValidaReferencia(strReferencia)=false Then
   begin
      Aviso('Produto não existe no cadastro de produtos');
      db_PedidoCompraItens.Cancel;
      exit;
   end;

   db_PedidoCompraItens.FieldByName('DESCRICAO').AsString   := fncReferenciaNome(strReferencia);
   db_PedidoCompraItens.FieldByName('UND').AsString         := fncProduto_retCampo(strReferencia,'UNIDADE');
   db_PedidoCompraItens.FieldByName('VALOR_UNIT').AsFloat   := fncReferenciaPrecoCusto(strReferencia);

end;

procedure TBaseDados.db_PedidoCompraNewRecord(DataSet: TDataSet);
begin
   db_PedidoCompra.FieldByName('DATA').AsDateTime   :=Date;
   db_PedidoCompra.FieldByName('APROVADO').AsString :='S';

end;

procedure TBaseDados.db_VendasAfterClose(DataSet: TDataSet);
begin
  db_Vendas.ParamByName('CODIGO').Clear;

end;

procedure TBaseDados.db_VendasBeforeOpen(DataSet: TDataSet);
begin
   db_Vendas.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TBaseDados.db_VendasBeforePost(DataSet: TDataSet);
begin

   {***********************************************************************
    ** De acordo com o Ministério da Fazenda - 2012:                    ***
    **    1 – Simples Nacional                                          ***
    **    2 – Simples Nacional excesso de sublimite da receita bruta    ***
    **    3 – Regime Normal                                             ***
    ***********************************************************************
    **  se a empresa FOR optante do simples, pegar aliquota do SIMPLES   **
    ***********************************************************************}
   case db_Parametros.FieldByName('EMPRESA_REGIMETRIBUTARIO').AsInteger of
    0, -1,1: begin
                db_Parametros.Refresh;
                if db_Vendas.FieldByName('OBS1').AsString='' then
                begin
                   db_Vendas.FieldByName('OBS1').AsString := UpperCase( fnCFOP_DETALHE(db_Vendas.FieldByName('CFOP').AsInteger) );
                   db_Vendas.FieldByName('OBS1').AsString := UpperCase( SubstituirCampoTexto(db_Vendas.FieldByName('OBS1').AsString,'%VSIMPLES%', FormatFloat('###,##0.00',db_Vendas.FieldByName('SIMPLESNACIONAL_VALOR').AsFloat) ) );
                end;
            end;
   end;

end;

procedure TBaseDados.db_VendasCFOPChange(Sender: TField);
begin

   inCliente := db_Vendas.FieldByName('Cliente').AsInteger;
   inCFOP    := db_Vendas.FieldByName('CFOP').AsInteger;

   if inCFOP<1 then
      exit;

   if fnCFOP_OPERACAO(inCFOP)='' then
   begin
     AvisoSistema('Por favor, entre no cadastro da CFOP ['+ inttostr(inCFOP)+'] e defina se é SAÍDA ou ENTRADA.');
     exit;
   end;

   db_Vendas.FieldByName('OPERACAO').AsString :=fnCFOP_OPERACAO(inCFOP);


   if inCliente<1 then
      exit;


   if fnCFOP_VALIDAR(inCFOP)=false Then
   begin
      AvisoSistema('CFOP informado não existe no cadastro de CFOP.'+
                   sLineBreak+
                   'Por favor, verifique.'   );
      Abort;
   end;


   if fnCFOP_UFVALIDAR(inCFOP,
                       db_Parametros.FieldByName('EMPRESA_UF').AsString,
                       fncCliente_retCampo(inCliente,'UF')
                      )=False Then
   begin
      AvisoSistema('CFOP informado não é aceito para o ESTADO (UF) do cliente.'+
                   sLineBreak+
                   'Por favor, verifique.'   );
      Abort;
   end;

   {***********************************************************************
    ** De acordo com o Ministério da Fazenda - 2012:                    ***
    **    1 – Simples Nacional                                          ***
    **    2 – Simples Nacional excesso de sublimite da receita bruta    ***
    **    3 – Regime Normal                                             ***
    ***********************************************************************
    **  se a empresa FOR optante do simples, pegar aliquota do SIMPLES   **
    ***********************************************************************}
   {***********************************************************************
    ** De acordo com o Ministério da Fazenda - 2012:                    ***
    **    1 – Simples Nacional                                          ***
    **    2 – Simples Nacional excesso de sublimite da receita bruta    ***
    **    3 – Regime Normal                                             ***
    ***********************************************************************
    **  se a empresa FOR optante do simples, pegar aliquota do SIMPLES   **
    ***********************************************************************}
   case db_Parametros.FieldByName('EMPRESA_REGIMETRIBUTARIO').AsInteger of
    0, -1,1: begin
                if db_Vendas.FieldByName('OBS1').AsString='' then
                begin
                   db_Parametros.Refresh;
                   db_Vendas.FieldByName('OBS1').AsString := UpperCase( fnCFOP_DETALHE(db_Vendas.FieldByName('CFOP').AsInteger) );
                   db_Vendas.FieldByName('OBS1').AsString := UpperCase( SubstituirCampoTexto(db_Vendas.FieldByName('OBS1').AsString,'%VSIMPLES%', FormatFloat('###,##0.00',db_Vendas.FieldByName('SIMPLESNACIONAL_VALOR').AsFloat) ) );
                end;
            end;
   end;


end;

procedure TBaseDados.db_VendasCLIENTEChange(Sender: TField);
begin


   inCliente :=db_Vendas.FieldByName('CLIENTE').AsInteger;

   // SE O ESTADO DO CLIENTE FOR O MESMO DA EMPRESA EMISSORA DA NFE,
   // INFORMAR O CFOP INTERNO (DENTRO DO ESTADO)
   if (db_Parametros.FieldByName('EMPRESA_UF').AsString=fncCliente_retCampo(inCliente,'UF')) and (fncParamCFOP_VendaUF('INTERNO')>0 ) Then
      db_Vendas.FieldByName('CFOP').AsInteger := fncParamCFOP_VendaUF('INTERNO');

   // SE O ESTADO DO CLIENTE FOR DIFERENTE DA EMPRESA EMISSORA DA NFE,
   // INFORMAR O CFOP EXTERNO (FORA DO ESTADO)
   if (db_Parametros.FieldByName('EMPRESA_UF').AsString<>fncCliente_retCampo(inCliente,'UF')) and (fncParamCFOP_VendaUF('EXTERNO')>0 )  Then
      db_Vendas.FieldByName('CFOP').AsInteger :=fncParamCFOP_VendaUF('EXTERNO');


   if ChecarCreditoCliente(inCliente) Then
   begin
      AvisoSistema('Venda não autorizada!'+sLineBreak+
                   'O cliente que você selecionou está com crédito bloqueado');
      db_Vendas.Cancel;
      db_VendasItens.Cancel;
      Abort;
   end;

end;

procedure TBaseDados.db_VendasDevolucaoItensBeforePost(DataSet: TDataSet);
begin

   db_VendasDevolucaoItens.FieldByName('EMPRESA').AsInteger :=
     db_Vendas.FieldByName('EMPRESA').AsInteger;

   db_VendasDevolucaoItens.FieldByName('CODIGO').AsInteger :=
     db_Vendas.FieldByName('CODIGO').AsInteger;

   db_VendasDevolucaoItens.FieldByName('NOTAFISCAL').AsInteger :=
     db_Vendas.FieldByName('NOTAFISCAL').AsInteger;

   db_VendasDevolucaoItens.FieldByName('MODELO').AsString :=
     db_Vendas.FieldByName('MODELO').AsString;

   db_VendasDevolucaoItens.FieldByName('SERIE').AsString :=
     db_Vendas.FieldByName('SERIE').AsString;

   db_VendasDevolucaoItens.FieldByName('TIPONF').AsString :=
     db_Vendas.FieldByName('TIPONF').AsString;

   db_VendasDevolucaoItens.FieldByName('EMISSAO').AsDateTime :=
     db_Vendas.FieldByName('EMISSAO').AsDateTime;

   db_VendasDevolucaoItens.FieldByName('OPERACAO').AsString :=
     db_Vendas.FieldByName('OPERACAO').AsString;

   db_VendasDevolucaoItens.FieldByName('CLIENTE').AsInteger :=
     db_Vendas.FieldByName('CLIENTE').AsInteger;

   db_VendasDevolucaoItens.FieldByName('VENDEDOR').AsInteger :=
     db_Vendas.FieldByName('VENDEDOR').AsInteger;

   db_VendasDevolucaoItens.FieldByName('CFOP').AsInteger := db_Vendas.FieldByName('CFOP')
     .AsInteger;

   db_VendasDevolucaoItens.FieldByName('TABELA').AsInteger :=
     db_Vendas.FieldByName('TABELA').AsInteger;

   db_VendasDevolucaoItens.FieldByName('FORMAPAGTO').AsInteger :=
     db_Vendas.FieldByName('FORMAPAGTO').AsInteger;

   db_VendasDevolucaoItens.FieldByName('TRANSPORTADORA').AsInteger :=
     db_Vendas.FieldByName('TRANSPORTADORA').AsInteger;

   if db_VendasDevolucaoItens.FieldByName('UND').AsString='' then
      db_VendasDevolucaoItens.FieldByName('UND').AsString:='PC' ;

end;

procedure TBaseDados.db_VendasEMISSAOChange(Sender: TField);
begin

   if db_Vendas.FieldByName('EMISSAO').AsDateTime<Date then
   begin
      db_Vendas.FieldByName('EMISSAO').AsDateTime :=Date;
   end;

   if db_Vendas.FieldByName('DATA_ENTRADASAIDA').AsDateTime<Date then
   begin
      db_Vendas.FieldByName('DATA_ENTRADASAIDA').AsDateTime :=Date;
   end;


end;

procedure TBaseDados.db_VendasItensAfterPost(DataSet: TDataSet);
Var
   nVenda: integer;
begin

   nVenda := db_Vendas.FieldByName('CODIGO').AsInteger;
   db_VendasItens.Refresh;

   SP_NFE_CALCULA.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
   SP_NFE_CALCULA.ParamByName('NCODIGO').AsInteger     := nVenda;
   SP_NFE_CALCULA.ParamByName('ACAO').AsString        := 'SAIDA';
   SP_NFE_CALCULA.ExecProc;

   db_Vendas.ParamByname('CODIGO').AsInteger := nVenda;
   db_Vendas.Refresh;
   db_Vendas.ParamByname('CODIGO').AsInteger := nVenda;
   db_VendasItens.Refresh;


end;

procedure TBaseDados.db_VendasItensBeforePost(DataSet: TDataSet);
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

   db_VendasItens.FieldByName('CFOP').AsInteger  := db_Vendas.FieldByName('CFOP') .AsInteger;
   //db_VendasItens.FieldByName('NCFOP').AsInteger := db_Vendas.FieldByName('CFOP') .AsInteger;

   inCFOP        :=0;
   inCliente     :=db_Vendas.FieldByName('CLIENTE') .AsInteger;
   strReferencia :=db_VendasItens.FieldByName('PRODUTO').AsString;
   inCFOP        :=db_Vendas.FieldByName('CFOP') .AsInteger;

   // SE O ESTADO DO CLIENTE FOR O MESMO DA EMPRESA EMISSORA DA NFE,
   // INFORMAR O CFOP INTERNO (DENTRO DO ESTADO)

   if (db_Parametros.FieldByName('EMPRESA_UF').AsString=fncCliente_retCampo(inCliente,'UF')) and ( StrToIntDef( fncProduto_retCampo(strReferencia,'CFOPDENTROESTADO'),0 ) >0 ) Then
        db_VendasItens.FieldByName('NCFOP').AsInteger := StrToIntDef( fncProduto_retCampo(strReferencia,'CFOPDENTROESTADO'),inCFOP );

   // SE O ESTADO DO CLIENTE FOR DIFERENTE DA EMPRESA EMISSORA DA NFE,
   // INFORMAR O CFOP EXTERNO (FORA DO ESTADO)
   if (db_Parametros.FieldByName('EMPRESA_UF').AsString<>fncCliente_retCampo(inCliente,'UF'))  and ( StrToIntDef( fncProduto_retCampo(strReferencia,'CFOPFORAESTADO'),0 ) >0 ) Then
        db_VendasItens.FieldByName('NCFOP').AsInteger := StrToIntDef( fncProduto_retCampo(strReferencia,'CFOPFORAESTADO'),inCFOP );

   {
   if db_VendasItens.FieldByName('NCFOP').AsInteger<=0 then
   begin
     if fnCFOP_UFVALIDAR(inCFOP,
                         db_Parametros.FieldByName('EMPRESA_UF').AsString,
                         fncCliente_retCampo(inCliente,'UF')
                        )=False Then
     begin
        db_VendasItens.FieldByName('NCFOP').AsInteger := StrToIntDef( fncProduto_retCampo(strReferencia,'CFOPDENTROESTADO'),inCFOP );
     end
     else
     begin
        db_VendasItens.FieldByName('NCFOP').AsInteger := StrToIntDef( fncProduto_retCampo(strReferencia,'CFOPFORAESTADO'),inCFOP );
     end;
   end;
   }

   db_VendasItens.FieldByName('TABELA').AsInteger :=
     db_Vendas.FieldByName('TABELA').AsInteger;

   db_VendasItens.FieldByName('FORMAPAGTO').AsInteger :=
     db_Vendas.FieldByName('FORMAPAGTO').AsInteger;

   db_VendasItens.FieldByName('TRANSPORTADORA').AsInteger :=
     db_Vendas.FieldByName('TRANSPORTADORA').AsInteger;

   if db_VendasItens.FieldByName('UND').AsString='' then
      db_VendasItens.FieldByName('UND').AsString:='PC' ;


end;

procedure TBaseDados.db_VendasItensNewRecord(DataSet: TDataSet);
begin
   //db_VendasItens.FieldByName('CFOP').AsInteger  := db_Vendas.FieldByName('CFOP').AsInteger;
   //db_VendasItens.FieldByName('NCFOP').AsInteger := db_Vendas.FieldByName('CFOP') .AsInteger;

end;

procedure TBaseDados.db_VendasItensPRODUTOChange(Sender: TField);
begin

   if (db_VendasItens.FieldByName('PRODUTO').AsString = '') or
     (db_VendasItens.FieldByName('PRODUTO').AsString = '0') then
      Exit;


   {
   If ValidaReferencia(strReferencia)=false then
   begin
      BeepCritica;
      FormMensagem('Produto Inexistente');
      db_VendasItens.Delete;

      Exit;
   end;
   }

   strReferencia :=db_VendasItens.FieldByName('PRODUTO').AsString;

   db_VendasItens.FieldByName('QUANTIDADE').AsInteger            := 1;
   db_VendasItens.FieldByName('DESCRICAO').AsString              := fncProduto_retCampo(strReferencia,'DESCRICAO');
   if fncProduto_retCampo(strReferencia,'NCM')>'' then
      db_VendasItens.FieldByName('NCM').AsString                    := fncProduto_retCampo(strReferencia,'NCM');
   db_VendasItens.FieldByName('CLASSIFICACAO_FISCAL').AsString   := fncProduto_retCampo(strReferencia,'CLASSIFICAO_FISCAL');
   db_VendasItens.FieldByName('SITUACAO_TRIBUTARIA').AsString    := fncProduto_retCampo(strReferencia,'SITUACAO_TRIBUTARIA');
   db_VendasItens.FieldByName('UND').AsString                    := ifthen(fncProduto_retCampo(strReferencia,'UNIDADE')='','PC','PC' );
   db_VendasItens.FieldByName('VLR_UNIT').AsFloat                := (StrToFloatDef( fncProduto_retCampo(strReferencia,'PRC_VENDA'),0));

   ///   se for produto acabado, e nos parametros estiver definido
   ///   a classificação fiscal e situação tributaria,
   ///   informar nos campos abaixo buscando dos parametros do sistema


   if  (fncProduto_retCampo(strReferencia,'TIPO_PRODUTO')='ACA')      or
       (fncProduto_retCampo(strReferencia,'TIPO_PRODUTO')='ACABADO')  then
   begin
      // mesmo assim, checar se tem algo informado nos parametros
      if db_Parametros.FieldByName('PRODUTO_CLASSIFICACAO_FISCAL').AsString<>'' then
         db_VendasItens.FieldByName('CLASSIFICACAO_FISCAL').AsString :=   db_Parametros.FieldByName('PRODUTO_CLASSIFICACAO_FISCAL').AsString;

      // mesmo assim, checar se tem algo informado nos parametros
      if db_Parametros.FieldByName('PRODUTO_SITUACAO_TRIBUTARIA').AsString<>'' then
         db_VendasItens.FieldByName('SITUACAO_TRIBUTARIA').AsString :=    db_Parametros.FieldByName('PRODUTO_SITUACAO_TRIBUTARIA').AsString;
   end;

   {***********************************************************************
    ** De acordo com o Ministério da Fazenda - 2012:                    ***
    **    1 – Simples Nacional                                          ***
    **    2 – Simples Nacional excesso de sublimite da receita bruta    ***
    **    3 – Regime Normal                                             ***
    ***********************************************************************
    **  se a empresa FOR optante do simples, pegar aliquota do SIMPLES   **
    ***********************************************************************}
   case db_Parametros.FieldByName('EMPRESA_REGIMETRIBUTARIO').AsInteger of
      0,
     -1,
      1,
      2: db_VendasItens.FieldByName('ICMS').AsFloat := 0;
      3: Begin
            db_VendasItens.FieldByName('ICMS').AsFloat := RetornaImposto('ICMS');
            db_VendasItens.FieldByName('IPI').AsFloat  := RetornaImposto('IPI');
         End;

   end;

end;

procedure TBaseDados.db_VendasItensQUANTIDADEChange(Sender: TField);
begin
   Calcular_VendaItens;
end;

procedure TBaseDados.db_VendasItensVLR_UNITChange(Sender: TField);
begin
   Calcular_VendaItens;
end;

procedure TBaseDados.db_VendasNewRecord(DataSet: TDataSet);
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


   // Nota Fiscal Eletronica
   If OpcaoNumeroFiscal = 'NFE' then
   Begin
      db_Vendas.FieldByName('MODELO').AsString  :=  FParametros.NFE.Modelo;
      db_Vendas.FieldByName('SERIE').AsString   :=  FParametros.NFE.Serie;
      db_Vendas.FieldByName('TIPONF').AsString  := 'NFE';
   End;

   db_Vendas.FieldByName('CFOP').AsInteger := 0;
   db_Vendas.FieldByName('TABELA').AsInteger := 0;
   db_Vendas.FieldByName('FORMAPAGTO').AsInteger := 0;
   db_Vendas.FieldByName('TRANSPORTADORA').AsInteger := 0;
   db_Vendas.FieldByName('CUPOM').AsString := 'N';
   db_Vendas.FieldByName('STATUS').AsString := 'N';
   db_Vendas.FieldByName('OBS1').AsString := '';

end;

function TBaseDados.RetornaImposto(TipoImposto: String): Real;
begin
   result := 0;


   {***********************************************************************
    ** De acordo com o Ministério da Fazenda - 2012:                    ***
    **    1 – Simples Nacional                                          ***
    **    2 – Simples Nacional excesso de sublimite da receita bruta    ***
    **    3 – Regime Normal                                             ***
    ***********************************************************************
    **  se a empresa FOR optante do simples, pegar aliquota do SIMPLES   **
    ***********************************************************************}
   case db_Parametros.FieldByName('EMPRESA_REGIMETRIBUTARIO').AsInteger of
      0,
     -1,
      1,
      2: exit; // sendo optante do Simples Nacional, nao continuar. Sair.
   end;

   inCliente := db_Vendas.FieldByName('Cliente').AsInteger;
   inCFOP    := db_Vendas.FieldByName('CFOP').AsInteger;

   if fncCliente_Validar(inCliente)=False then
   begin

      FormMensagem('Cliente ' + IntToStr(inCliente) +
        ' não existe. Verifique antes de prosseguir.');

      // Cancela o item da venda (que está em edição) para impedir falha humana
      // e possivel comprometimento do sistema.
      db_VendasItens.Cancel;
      Abort;
   end;

   strEstado := fncCliente_retCampo(inCliente,'UF');

   if fnUFImposto_VALIDAR(strEstado)=false then
   begin

      FormMensagem('Não existe estado (UF) "' + strEstado +
        '". Verifique o cadastro de clientes ' +
        'ou configure a Tabela de Impostos que esta '+
        'no Menu Arquivo->Configurações->Sistema->Nota Fiscal Eletrônica.'
        );

      // Cancela o item da venda (que está em edição) para impedir falha humana
      // e possivel comprometimento do sistema.
      db_VendasItens.Cancel;

      Abort;

   end;

   // CFOP

   if fnCFOP_VALIDAR(inCFOP)=false Then
   begin

      AvisoSistema('Não existe CFOP ' + IntToStr(inCFOP) + ' cadastrado ');

      // Cancela o item da venda (que está em edição) para impedir falha humana
      // e possivel comprometimento do sistema.
      db_VendasItens.Cancel;
      Abort;

   end;

   /// /////////////////////////////////////////////////////////
   // Verificar se CFOP é aplicavel ao ICMS.
   /// /////////////////////////////////////////////////////////
   if fnCFOP_ICMS_CALCULA(inCFOP) Then
   begin

      // Retornar alioquota do ICMS
      // (imposto sobre circulação de mercadorias e serviços.)
      if TipoImposto = 'ICMS' then
      begin
         // Validar tipo de ICMS. Há diferença na aliquota
         // entre pessoa juridica e fisica


         if fncCliente_retCampo(inCliente,'CLASSIFICACAO') = 'J' then
         begin
            result := fnUFImposto_ICMS_PJ(strEstado);
         end
         else
         // se for pessoa fisica
           if fncCliente_retCampo(inCliente,'CLASSIFICACAO') = 'F' then
         begin
            result := fnUFImposto_ICMS_PF(strEstado);
         end;

      end;
   end;

   /// /////////////////////////////////////////////////////////
   // Verificar se CFOP é aplicavel ao IPI.
   /// /////////////////////////////////////////////////////////
   if fnCFOP_IPI_CALCULA(inCFOP) Then
   begin
      // Aliquota do IPI (Imposto sobre Produtos Industrializados)
      if TipoImposto = 'IPI' then
      begin
         result := fnUFImposto_IPI(strEstado);
      end;
   end;

   /// /////////////////////////////////////////////////////////
   // Verificar se CFOP é aplicavel ao ISS.
   /// /////////////////////////////////////////////////////////
   if fnCFOP_ISS_CALCULA(inCFOP) Then
   begin
      // Aliquota do ISS (imposto sobre serviços)
      if TipoImposto = 'ISS' then
      begin
         result := fnUFImposto_ISS(strEstado);
      end;
   end;

   /// /////////////////////////////////////////////////////////
   // Aliquota do IR (Imposto de Renda)
   /// /////////////////////////////////////////////////////////
   if TipoImposto = 'IR' then
   begin
      result := fnUFImposto_IR(strEstado);
   end;

end;

procedure TBaseDados.db_RefBancBeforePost(DataSet: TDataSet);
begin

   db_RefBanc.FieldByName('CLIENTE').AsInteger :=
     db_Clientes.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados.db_RefComBeforePost(DataSet: TDataSet);
begin

   db_RefCom.FieldByName('CLIENTE').AsInteger :=
     db_Clientes.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados.db_SociosBeforePost(DataSet: TDataSet);
begin

   db_Socios.FieldByName('CLIENTE').AsInteger :=
     db_Clientes.FieldByName('CODIGO').AsInteger;

end;

end.




