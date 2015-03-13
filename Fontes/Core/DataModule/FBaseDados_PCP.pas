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


unit FBaseDados_PCP;

interface

uses
   SysUtils, Forms, Classes, DB, FMTBcd, SqlExpr, DBClient, SimpleDS,
         ACBrBase, ACBrExtenso, Global,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
   TBaseDados_PCP = class(TDataModule)
      ds_cores: TDataSource;
      ds_colecao: TDataSource;
      ds_FaixaEtaria: TDataSource;
      DS_grifes: TDataSource;
      ds_paramcustos: TDataSource;
      ds_maquinas: TDataSource;
      ds_VincMaquinas: TDataSource;
      ds_turnos: TDataSource;
      ds_Defeitos: TDataSource;
    ds_qualidades: TDataSource;
      ds_etiquetas: TDataSource;
      ds_etiquetasDetalhes: TDataSource;
      ds_VincMaquinasDetalhes: TDataSource;
      ds_referencias: TDataSource;
      ds_MateriaPrima: TDataSource;
      ds_Cores_Modelos: TDataSource;
      ds_pcp_processos: TDataSource;
      ds_pcp_Custos: TDataSource;
      ds_pcp_Medidas: TDataSource;
      ds_VincHumano: TDataSource;
      ds_VincHumanoDetalhes: TDataSource;
      ds_Cad_processos: TDataSource;
      ds_Cad_Tamanhos: TDataSource;
      ds_Grade: TDataSource;
      ds_GradeLista: TDataSource;
      ds_pcp_Maquinas: TDataSource;
      db_referencias: TFDQuery;
      db_MateriaPrima: TFDQuery;
      db_Cores_Modelos: TFDQuery;
      db_pcp_processos: TFDQuery;
      db_pcp_Custos: TFDQuery;
      db_pcp_Medidas: TFDQuery;
      db_colecao: TFDQuery;
      db_FaixaEtaria: TFDQuery;
      db_paramcustos: TFDQuery;
      db_pcp_Maquinas: TFDQuery;
      db_VincHumano: TFDQuery;
      db_VincHumanoDetalhes: TFDQuery;
      db_VincMaquinas: TFDQuery;
      db_VincMaquinasDetalhes: TFDQuery;
    db_qualidades: TFDQuery;
      db_etiquetas: TFDQuery;
      db_etiquetasDetalhes: TFDQuery;
      db_etiquetasSum: TFDQuery;
      db_cores: TFDQuery;
      db_grifes: TFDQuery;
      db_Cad_processos: TFDQuery;
      DB_Cad_Tamanhos: TFDQuery;
      db_Grade: TFDQuery;
      db_GradeLista: TFDQuery;
      db_GradeListaMax: TFDQuery;
      db_turnos: TFDQuery;
      db_Defeitos: TFDQuery;
      db_GradeListaNometamanho: TStringField;
      ds_SituacaoTributaria: TDataSource;
      db_SituacaoTributaria: TFDQuery;
      ds_ClassificacaoFiscal: TDataSource;
      db_ClassificacaoFiscal: TFDQuery;
      db_OrdemProducao: TFDQuery;
      ds_OrdemProducao: TDataSource;
      db_OrdemProducaoItens: TFDQuery;
      ds_OrdemProducaoItens: TDataSource;
      db_MateriaPrimaTecidos: TFDQuery;
      ds_MateriaPrimaTecidos: TDataSource;
      SP_OP_CALCULAR: TFDStoredProc;
      db_maquinas: TFDQuery;
      ds_pcp_MedidasPosLavagem: TDataSource;
      db_pcp_MedidasPosLavagem: TFDQuery;
      ds_referencia_Fotos: TDataSource;
      db_referencia_Fotos: TFDQuery;
      db_VincHumanoCODIGO: TIntegerField;
      db_VincHumanoFUNCIONARIO: TIntegerField;
      db_VincHumanoDetalhesNomeMaquina: TStringField;
      ACBrExtenso1: TACBrExtenso;
      db_fases: TFDQuery;
      ds_fases: TDataSource;
      db_Cad_processosdGrade: TFDQuery;
      db_Cad_processosdLista: TFDQuery;
      ds_Cad_processosdGrade: TDataSource;
      ds_Cad_processosdLista: TDataSource;
      db_Cad_processosdListaSum: TFDQuery;
      ds_turnosGrade: TDataSource;
      db_turnosGrade: TFDQuery;
      db_Cad_processosCODIGO: TIntegerField;
      db_Cad_processosDESCRICAO: TStringField;
      db_Cad_processosdGradeCODIGO: TIntegerField;
      db_Cad_processosdGradeNOME: TStringField;
      db_Cad_processosdGradeCUSTO_TOTAL: TBCDField;
      db_Cad_processosdListaCUSTO: TBCDField;
      db_Cad_processosdListaCODIGO: TIntegerField;
      db_Cad_processosdListaPROCESSO: TIntegerField;
      db_Cad_processosdListaNOME: TStringField;
      DB_Cad_TamanhosCODIGO: TIntegerField;
      DB_Cad_TamanhosTAMANHO: TStringField;
      DB_Cad_TamanhosDESCRICAO: TStringField;
      db_GradeCODIGO: TIntegerField;
      db_GradeDESCRICAO: TStringField;
      db_turnosCODIGO: TIntegerField;
      db_turnosNOME: TStringField;
      db_turnosGradeCODIGO: TIntegerField;
      db_turnosGradeDIA_SEMANA: TStringField;
      db_referenciasCODIGO: TIntegerField;
      db_referenciasEMPRESA: TIntegerField;
      db_referenciasREFERENCIA: TStringField;
      db_referenciasGRUPO: TIntegerField;
      db_referenciasSUBGRUPO: TIntegerField;
      db_referenciasTIPO_PRODUTO: TStringField;
      db_referenciasGRIFE: TIntegerField;
      db_referenciasCOLECAO: TIntegerField;
      db_referenciasFAIXA_ETARIA: TIntegerField;
      db_referenciasESTILISTA: TIntegerField;
      db_referenciasETIQUETA: TIntegerField;
      db_referenciasGRADE: TIntegerField;
      db_referenciasEMBALAGEM: TIntegerField;
      db_referenciasCOMPOSICAO: TIntegerField;
      db_referenciasGENERO: TIntegerField;
      db_referenciasNCM: TStringField;
      db_referenciasDESCRICAO: TStringField;
      db_referenciasCLASSIFICAO_FISCAL: TStringField;
      db_referenciasSITUACAO_TRIBUTARIA: TStringField;
      db_referenciasGERAR_CODBARRA: TStringField;
      db_referenciasCOMPOSICAO_DESCRICAO: TStringField;
      db_referenciasCODIGO_BARRA: TStringField;
      db_referenciasCODIGO_FABRICANTE: TStringField;
      db_referenciasUNIDADE: TStringField;
      db_referenciasPESO: TBCDField;
      db_referenciasPESO_LIQUIDO: TBCDField;
      db_referenciasPESO_M2: TBCDField;
      db_referenciasQTDE_TECIDOS: TBCDField;
      db_referenciasQTDE_OPCOES: TBCDField;
      db_referenciasPRAZOENTREGA: TIntegerField;
      db_referenciasLOTE: TStringField;
      db_referenciasNUM_SERIE: TStringField;
      db_referenciasCOMISSAO_VAREJO: TBCDField;
      db_referenciasCOMISSAO_ATACADO: TBCDField;
      db_referenciasCOMISSAO_REPRESENTANTE: TBCDField;
      db_referenciasREGISTROINPI: TStringField;
      db_referenciasVOLUME: TBCDField;
      db_referenciasPROMOCAO: TStringField;
      db_referenciasMARCA: TStringField;
      db_referenciasLOCALIZACAO: TStringField;
      db_referenciasATIVO: TStringField;
      db_referenciasINSTRUCOES: TStringField;
      db_referenciasTOTAL_RESERVA: TBCDField;
      db_referenciasTOTAL_ORDEMPRODUCAO: TBCDField;
      db_referenciasTOTAL_QTDEMATPRIMA: TBCDField;
      db_referenciasTOTAL_VLRMATPRIMA: TBCDField;
      db_referenciasTOTAL_PROCESSO_TEMPO: TBCDField;
      db_referenciasTOTAL_PROCESSO_CUSTOS: TBCDField;
      db_referenciasTOTAL_CUSTOS_PERCENTUAL: TBCDField;
      db_referenciasTOTAL_CUSTOS_VALOR: TBCDField;
      db_referenciasSALDO_IMPLANTACAO: TBCDField;
      db_referenciasESTOQUEMINIMO: TBCDField;
      db_referenciasESTOQUEMAXIMO: TBCDField;
      db_referenciasESTOQUESALDO: TBCDField;
      db_referenciasMG_LUCRO: TBCDField;
      db_referenciasIPI: TBCDField;
      db_referenciasICMS: TBCDField;
      db_referenciasPIS: TBCDField;
      db_referenciasCOFINS: TBCDField;
      db_referenciasPUBLICIDADE: TBCDField;
      db_referenciasINADIMPLENCIA: TBCDField;
      db_referenciasADMINISTRATIVO: TBCDField;
      db_referenciasIMPORTACAO: TBCDField;
      db_referenciasPERC_FRETE: TBCDField;
      db_referenciasFINANCEIRO: TBCDField;
      db_referenciasIMPOSTOS_OUTROS: TBCDField;
      db_referenciasMARKUP: TBCDField;
      db_referenciasIR: TBCDField;
      db_referenciasPRC_CUSTOBRUTO: TBCDField;
      db_referenciasPRC_CUSTO: TBCDField;
      db_referenciasPRC_VENDA: TBCDField;
      db_referenciasLUCRO_LIQUIDO: TBCDField;
      db_referenciasDETALHES: TStringField;
      db_referenciasPRODUCAO_TEMPO: TBCDField;
      db_referenciasPRODUCAO_CUSTOS: TBCDField;
      db_referenciasCOR: TStringField;
      db_referenciasTAMANHO: TStringField;
      db_Cores_ModelosCODIGO: TIntegerField;
      db_Cores_ModelosID_COR: TIntegerField;
      db_Cores_ModelosNOME: TStringField;
      db_pcp_processosCODIGO: TIntegerField;
      db_pcp_processosID_PROCESSO: TIntegerField;
      db_pcp_processosNOME: TStringField;
      db_pcp_processosCUSTOS: TBCDField;
      db_pcp_MaquinasCODIGO: TIntegerField;
      db_pcp_MaquinasID_MAQUINA: TIntegerField;
      db_pcp_MaquinasNOME: TStringField;
      db_pcp_MaquinasAGULHAS: TIntegerField;
      db_pcp_MaquinasFIOS: TIntegerField;
      db_pcp_MedidasCODIGO: TIntegerField;
      db_pcp_MedidasIDNOME: TIntegerField;
      db_pcp_MedidasNOME: TStringField;
      db_pcp_MedidasIDMOLDE: TStringField;
      db_pcp_MedidasMEDIDA: TBCDField;
      db_colecaoCODIGO: TIntegerField;
      db_colecaoNOME: TStringField;
      db_colecaoPECAS_META: TIntegerField;
      db_colecaoQTDE_MODELOS: TIntegerField;
      db_colecaoVALOR_META: TBCDField;
      db_colecaoSTATUS: TStringField;
      db_maquinasCODIGO: TIntegerField;
      db_maquinasNOME: TStringField;
      db_maquinasN_SERIE: TStringField;
      db_maquinasNRO_AGULHAS: TIntegerField;
      db_maquinasNRO_FIOS: TIntegerField;
      db_maquinasOBSERVACAO: TStringField;
      db_maquinasSTATUS: TStringField;
      db_VincHumanoDetalhesCODIGO: TIntegerField;
      db_VincHumanoDetalhesMAQUINA: TIntegerField;
      db_VincHumanoDetalhesNOME: TStringField;
      db_pcp_MedidasPosLavagemCODIGO: TIntegerField;
      db_pcp_MedidasPosLavagemIDNOME: TIntegerField;
      db_pcp_MedidasPosLavagemNOME: TStringField;
      db_pcp_MedidasPosLavagemIDMOLDE: TStringField;
      db_pcp_MedidasPosLavagemMEDIDA: TBCDField;
      db_GradeListaMaxORDEM: TStringField;
      db_GradeListaCODIGO: TIntegerField;
      db_GradeListaID_TAMANHO: TIntegerField;
      db_GradeListaORDEM: TStringField;
      db_GradeListaDESCRICAO: TStringField;
      db_GradeListaTAMANHO: TStringField;
      db_referenciasFORNECEDOR: TIntegerField;
      db_referenciasDATA: TSQLTimeStampField;
      db_referenciasDT_ULTIMA_COMPRA: TSQLTimeStampField;
      db_referenciasDT_ULTIMA_VENDA: TSQLTimeStampField;
      db_referenciasDT_VALIDADE: TSQLTimeStampField;
      SP_TotalizaReferencia: TFDStoredProc;
      db_colecaoPERIODO_INI: TSQLTimeStampField;
      db_colecaoPERIODO_FIM: TSQLTimeStampField;
      db_VincMaquinasCODIGO: TIntegerField;
      db_VincMaquinasMAQUINA: TIntegerField;
      db_VincMaquinasDetalhesCODIGO: TIntegerField;
      db_VincMaquinasDetalhesMAQUINA: TIntegerField;
      db_VincMaquinasDetalhesPROCESSO: TIntegerField;
      db_VincMaquinasDetalhesNOME: TStringField;
      db_Cad_processosCUSTO: TBCDField;
    db_Cad_processosINSTRUCOES: TStringField;
    db_pcp_processosINSTRUCOES: TStringField;
    db_referenciasOZ: TBCDField;
    SP_PRODUTOS_QTDE_STATUS: TFDStoredProc;
    db_pcp_CustosCODIGO: TIntegerField;
    db_pcp_CustosCODIGOCUSTO: TIntegerField;
    db_pcp_CustosNOME: TStringField;
    db_pcp_CustosVALOR: TBCDField;
    ds_MateriaPrimaGrade: TDataSource;
    db_MateriaPrimaGrade: TFDQuery;
    db_MateriaPrimaTamanhos: TFDQuery;
    db_referenciasDESCRICAOREDUZIDA: TStringField;
    db_referenciasPRC_CUSTOPRODUCAO: TBCDField;
    db_referenciasREFERENCIAREDUZIDA: TStringField;
    db_FasesGrade: TFDQuery;
    ds_FasesGrade: TDataSource;
    db_FasesGradeLista: TFDQuery;
    ds_FasesGradeLista: TDataSource;
    db_FasesGradeCODIGO: TIntegerField;
    db_FasesGradeNOME: TStringField;
    db_FasesGradeIMPRIMEOP: TStringField;
    db_FasesGradeListaCODIGO: TIntegerField;
    db_FasesGradeListaORDEM: TStringField;
    db_FasesGradeListaNOME: TStringField;
    db_FasesGradeListaIMPRIMEOP: TStringField;
    db_FasesGradeListaFASE: TIntegerField;
    db_referenciasFASE: TIntegerField;
    ds_LoteProducao: TDataSource;
    db_LoteProducao: TFDQuery;
    db_LoteProducaoCODIGO: TIntegerField;
    db_LoteProducaoNOME: TStringField;
    db_LoteProducaoSTATUS: TStringField;
    db_MateriaPrimaGradeEMPRESA: TIntegerField;
    db_MateriaPrimaGradeCODIGO: TIntegerField;
    db_MateriaPrimaGradeREFERENCIA: TStringField;
    db_MateriaPrimaGradeCOR_ID: TIntegerField;
    db_MateriaPrimaGradeCOR: TStringField;
    db_MateriaPrimaGradeTAMANHO_ID: TIntegerField;
    db_MateriaPrimaGradeTAMANHO: TStringField;
    db_MateriaPrimaGradeORDEM_GRADE: TStringField;
    db_MateriaPrimaGradeTAMANHOPADRAO: TStringField;
    db_MateriaPrimaGradeQUANTIDADE: TBCDField;
    ds_MateriaPrimaTecidosGrade: TDataSource;
    db_MateriaPrimaTecidosGrade: TFDQuery;
    db_MateriaPrimaTecidosEMPRESA: TIntegerField;
    db_MateriaPrimaTecidosCODIGO: TIntegerField;
    db_MateriaPrimaTecidosREFERENCIA: TStringField;
    db_MateriaPrimaTecidosDESCRICAO: TStringField;
    db_MateriaPrimaTecidosUND: TStringField;
    db_MateriaPrimaTecidosQTDE_METROS: TBCDField;
    db_MateriaPrimaTecidosVLR_UNIT: TBCDField;
    db_MateriaPrimaTecidosVLR_TOTAL: TBCDField;
    db_MateriaPrimaTecidosCOMPOSICAO: TIntegerField;
    db_MateriaPrimaTecidosCOMPOSICAO_DESCRICAO: TStringField;
    db_MateriaPrimaTecidosDIMENSIONAMENTO: TStringField;
    db_MateriaPrimaTecidosCOR: TStringField;
    db_MateriaPrimaTecidosTAMANHO: TStringField;
    db_MateriaPrimaEMPRESA: TIntegerField;
    db_MateriaPrimaCODIGO: TIntegerField;
    db_MateriaPrimaREFERENCIA: TStringField;
    db_MateriaPrimaDESCRICAO: TStringField;
    db_MateriaPrimaUND: TStringField;
    db_MateriaPrimaQTDE: TBCDField;
    db_MateriaPrimaVLR_UNIT: TBCDField;
    db_MateriaPrimaVLR_TOTAL: TBCDField;
    db_MateriaPrimaCOMPOSICAO: TIntegerField;
    db_MateriaPrimaCOMPOSICAO_DESCRICAO: TStringField;
    db_MateriaPrimaDIMENSIONAMENTO: TStringField;
    db_MateriaPrimaCOR: TStringField;
    db_MateriaPrimaTAMANHO: TStringField;
    db_MateriaPrimaTamanhosTecidos: TFDQuery;
    db_MateriaPrimaTecidosGradeEMPRESA: TIntegerField;
    db_MateriaPrimaTecidosGradeCODIGO: TIntegerField;
    db_MateriaPrimaTecidosGradeREFERENCIA: TStringField;
    db_MateriaPrimaTecidosGradeREFERENCIA_COR_ID: TIntegerField;
    db_MateriaPrimaTecidosGradeREFERENCIA_COR_NOME: TStringField;
    db_MateriaPrimaTecidosGradeCOR_ID: TIntegerField;
    db_MateriaPrimaTecidosGradeCOR_NOME: TStringField;
    db_MateriaPrimaTecidosGradeQUANTIDADE: TBCDField;
    db_referenciasMARKUPID: TIntegerField;
    db_MateriaPrimaGradePADRAOCORID: TIntegerField;
    db_MateriaPrimaGradePADRAOCORNOME: TStringField;
    db_MateriaPrimaTecidosGradeSomar: TFDQuery;
    db_MateriaPrimaTecidosGradeREFERENCIA_TAMANHO_ID: TIntegerField;
    db_MateriaPrimaTecidosGradeREFERENCIA_TAMANHO: TStringField;
    db_MateriaPrimaTecidosGradeTAMANHO_ID: TIntegerField;
    db_MateriaPrimaTecidosGradeTAMANHO: TStringField;
    db_MateriaPrimaTecidosGradeORDEM_GRADE: TStringField;
    db_referenciasHORAS: TTimeField;
    db_pcp_processosTEMPO: TFloatField;
    db_VincMaquinasDetalhesTEMPO: TFloatField;
    db_Cad_processosTEMPO: TFloatField;
    db_Cad_processosdListaTEMPO: TFloatField;
    db_Cad_processosdGradeTEMPO_TOTAL: TFloatField;
    db_turnosTOLERANCIA: TFloatField;
    db_turnosGradeTURNO1_HORA_INI: TFloatField;
    db_turnosGradeTURNO1_HORA_FIM: TFloatField;
    db_turnosGradeTURNO2_HORA_INI: TFloatField;
    db_turnosGradeTURNO2_HORA_FIM: TFloatField;
    db_OrdemProducaoItensEMPRESA: TIntegerField;
    db_OrdemProducaoItensCODIGO: TIntegerField;
    db_OrdemProducaoItensAPROVADO: TStringField;
    db_OrdemProducaoItensDATA: TSQLTimeStampField;
    db_OrdemProducaoItensREFERENCIA: TStringField;
    db_OrdemProducaoItensDESCRICAO: TStringField;
    db_OrdemProducaoItensQUANTIDADE: TIntegerField;
    db_OrdemProducaoItensQTDEPRODUZIDA: TIntegerField;
    db_OrdemProducaoItensQTDE_RESTANTE: TIntegerField;
    db_OrdemProducaoItensTEMPOPRODUCAO: TBCDField;
    db_OrdemProducaoEMPRESA: TIntegerField;
    db_OrdemProducaoCODIGO: TFDAutoIncField;
    db_OrdemProducaoAPROVADO: TStringField;
    db_OrdemProducaoDATA: TSQLTimeStampField;
    db_OrdemProducaoDATAPREVISAO: TSQLTimeStampField;
    db_OrdemProducaoDATAFECHAMENTO: TSQLTimeStampField;
    db_OrdemProducaoLOTE: TIntegerField;
    db_OrdemProducaoLOTENOME: TStringField;
    db_OrdemProducaoENCERRADO: TStringField;
    db_OrdemProducaoNATUREZA: TStringField;
    db_OrdemProducaoQTDE_TOTAL: TIntegerField;
    db_OrdemProducaoQTDE_PRODUZIDA: TIntegerField;
    db_OrdemProducaoQTDE_RESTANTE: TIntegerField;
    db_OrdemProducaoQTDE_PERDAS: TIntegerField;
    db_OrdemProducaoQTDE_DEFEITOS: TIntegerField;
    db_OrdemProducaoTEMPO_PRODUCAO: TFloatField;
    db_OrdemProducaoPERCENTUAL: TBCDField;
    db_OrdemProducaoOBSERVACAO: TStringField;
    db_OrdemProducaoTERCEIRIZADOATUAL: TIntegerField;
    db_OrdemProducaoFASEATUAL: TIntegerField;
    db_OrdemProducaoCELULAATUAL: TIntegerField;
    db_OrdemProducaoMAQUINAATUAL: TIntegerField;
    db_OrdemProducaoOPERADORATUAL: TIntegerField;
    db_OrdemProducaoPROCESSOATUAL: TIntegerField;
    db_OrdemProducaoTURNOATUAL: TIntegerField;
    db_OrdemProducaoDEFEITOATUAL: TIntegerField;
    db_OrdemProducaoQUALIDADEATUAL: TIntegerField;
      procedure db_etiquetasDetalhesAfterPost(DataSet: TDataSet);
      procedure db_Cores_ModelosBeforePost(DataSet: TDataSet);
      procedure db_pcp_Custos_BeforePost(DataSet: TDataSet);
      procedure db_GradeListaBeforePost(DataSet: TDataSet);
      procedure db_pcp_processos_ID_PROCESSOChange(Sender: TField);
      procedure db_MateriaPrima_PRODUTOChange(Sender: TField);
      procedure db_pcp_Maquinas_ID_MAQUINAChange(Sender: TField);
      procedure db_pcp_Maquinas_BeforePost(DataSet: TDataSet);
      procedure db_GradeListaNewRecord(DataSet: TDataSet);
      procedure db_referenciasBeforePost(DataSet: TDataSet);
      procedure db_referenciasNewRecord(DataSet: TDataSet);
      procedure db_MateriaPrimaBeforePost(DataSet: TDataSet);
      procedure db_pcp_processosBeforePost(DataSet: TDataSet);
      procedure db_Cores_ModelosID_CORChange(Sender: TField);
      procedure db_pcp_processosID_PROCESSOChange(Sender: TField);
      procedure db_pcp_CustosBeforePost(DataSet: TDataSet);
      procedure db_pcp_MaquinasBeforePost(DataSet: TDataSet);
      procedure db_pcp_MaquinasID_MAQUINAChange(Sender: TField);
      procedure db_VincHumanoDetalhesBeforePost(DataSet: TDataSet);
      procedure db_VincMaquinasDetalhesBeforePost(DataSet: TDataSet);
      procedure db_etiquetasDetalhesBeforePost(DataSet: TDataSet);
      procedure DB_Cad_TamanhosTAMANHOChange(Sender: TField);
      procedure db_GradeListaTAMANHOChange(Sender: TField);
      procedure db_pcp_MedidasBeforePost(DataSet: TDataSet);
      procedure db_FaixaEtariaBeforePost(DataSet: TDataSet);
      procedure db_OrdemProducaoItensBeforePost(DataSet: TDataSet);
      procedure db_OrdemProducaoNewRecord(DataSet: TDataSet);
      procedure db_MateriaPrimaTecidosBeforePost(DataSet: TDataSet);
      procedure db_MateriaPrimaTecidosQTDE_METROSChange(Sender: TField);
      procedure db_MateriaPrimaQTDEChange(Sender: TField);
      procedure db_colecaoNewRecord(DataSet: TDataSet);
      procedure db_OrdemProducaoBeforePost(DataSet: TDataSet);
      procedure db_VincMaquinasDetalhesPROCESSOChange(Sender: TField);
      procedure db_maquinasNewRecord(DataSet: TDataSet);
      procedure db_pcp_MedidasPosLavagemBeforePost(DataSet: TDataSet);
      procedure db_referencia_FotosBeforePost(DataSet: TDataSet);
      procedure db_VincHumanoDetalhesMAQUINAChange(Sender: TField);
      procedure db_Cad_processosdListaBeforePost(DataSet: TDataSet);
      procedure db_Cad_processosdListaAfterPost(DataSet: TDataSet);
      procedure db_Cad_processosdListaPROCESSOChange(Sender: TField);
      procedure db_turnosGradeBeforePost(DataSet: TDataSet);
      procedure db_turnosAfterPost(DataSet: TDataSet);
      procedure db_referenciasAfterPost(DataSet: TDataSet);
    procedure db_MateriaPrimaTecidosAfterPost(DataSet: TDataSet);
    procedure db_MateriaPrimaAfterPost(DataSet: TDataSet);
    procedure db_referenciasREFERENCIAChange(Sender: TField);
    procedure db_pcp_MedidasPosLavagemAfterPost(DataSet: TDataSet);
    procedure db_pcp_MedidasAfterPost(DataSet: TDataSet);
    procedure db_pcp_CustosCODIGOCUSTOChange(Sender: TField);
    procedure db_pcp_CustosAfterPost(DataSet: TDataSet);
    procedure db_MateriaPrimaGradeBeforePost(DataSet: TDataSet);
    procedure db_MateriaPrimaGradeAfterPost(DataSet: TDataSet);
    procedure db_MateriaPrimaGradeTAMANHOPADRAOChange(Sender: TField);
    procedure db_referenciasBeforeOpen(DataSet: TDataSet);
    procedure db_FasesGradeListaBeforePost(DataSet: TDataSet);
    procedure db_FasesGradeNewRecord(DataSet: TDataSet);
    procedure db_FasesGradeListaNewRecord(DataSet: TDataSet);
    procedure db_fasesNewRecord(DataSet: TDataSet);
    procedure db_FasesGradeListaFASEChange(Sender: TField);
    procedure db_referenciasFASEChange(Sender: TField);
    procedure db_OrdemProducaoBeforeOpen(DataSet: TDataSet);
    procedure db_OrdemProducaoItensREFERENCIAChange(Sender: TField);
    procedure db_LoteProducaoNewRecord(DataSet: TDataSet);
    procedure db_OrdemProducaoLOTEChange(Sender: TField);
    procedure db_qualidadesNewRecord(DataSet: TDataSet);
    procedure db_MateriaPrimaTecidosREFERENCIAChange(Sender: TField);
    procedure db_MateriaPrimaREFERENCIAChange(Sender: TField);
    procedure db_MateriaPrimaTecidosGradeBeforePost(DataSet: TDataSet);
    procedure db_MateriaPrimaTecidosGradeCOR_IDChange(Sender: TField);
    procedure db_MateriaPrimaTecidosGradeAfterPost(DataSet: TDataSet);

   private
      { Private declarations }
      Procedure CalculaProcessoGrade;
      procedure Carregar_MateriaPrimaGrade;
      procedure Carregar_MateriaPrimaTecidoGrade;

   public
      { Public declarations }

   end;

var
   BaseDados_PCP: TBaseDados_PCP;
   OrdemGradeTamanho: Integer;


implementation

uses FPrincipal, Biblioteca, FGrifes, FColecao,
   FEtiquetas, FFaixaEtaria,
   FMaquinas, FParamCustos, FTurnos, FBaseDados,
   SQLServer, FFichaTecnica, FQualidades,
   FOrdemProducao;

{$R *.dfm}

procedure TBaseDados_PCP.db_etiquetasDetalhesAfterPost(DataSet: TDataSet);
begin

   db_etiquetasSum.close;
   db_etiquetasSum.Open;

   ds_etiquetas.DataSet.edit;
   ds_etiquetas.DataSet.FieldByName('TOTAL').AsFloat :=
     db_etiquetasSum.FieldByName('PERCENTUAL').AsFloat;
   ds_etiquetas.DataSet.post;

end;

procedure TBaseDados_PCP.db_colecaoNewRecord(DataSet: TDataSet);
begin
   db_colecao.FieldByName('PERIODO_INI').AsDateTime := Date;
   db_colecao.FieldByName('STATUS').AsString := 'S';

end;

procedure TBaseDados_PCP.db_Cores_ModelosBeforePost(DataSet: TDataSet);
begin

   db_Cores_Modelos.FieldByName('CODIGO').AsInteger :=
     db_referencias.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados_PCP.db_Cores_ModelosID_CORChange(Sender: TField);
begin

   // envia uma requisição para o servidor checar se o PRODUTO digitado na grade
   // já existe em outra linha da mesma grade

   If ExisteCor(db_referencias.FieldByName('CODIGO').AsInteger,
     db_Cores_Modelos.FieldByName('ID_COR').AsInteger) then
   begin
      BeepCritica;
      Aviso('Cor ' + db_Cores_Modelos.FieldByName('ID_COR').AsString +
        ' já está incluído na grade.');
      db_Cores_Modelos.Cancel;
      exit;
   end;

   db_Cores_Modelos.FieldByName('NOME').AsString := BuscaNomeCor(db_Cores_Modelos.FieldByName('ID_COR').AsInteger);

end;

procedure TBaseDados_PCP.db_pcp_Custos_BeforePost(DataSet: TDataSet);
begin

   db_pcp_Custos.FieldByName('CODIGO').AsInteger :=
     db_referencias.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados_PCP.db_VincHumanoDetalhesBeforePost(DataSet: TDataSet);
begin

   db_VincHumanoDetalhes.FieldByName('CODIGO').AsInteger :=
     db_VincHumano.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados_PCP.db_VincHumanoDetalhesMAQUINAChange(Sender: TField);
begin
   db_VincHumanoDetalhes.FieldByName('NOME').AsString :=
     db_VincHumanoDetalhes.FieldByName('NomeMaquina').AsString;

end;

procedure TBaseDados_PCP.db_referenciasAfterPost(DataSet: TDataSet);
begin
   db_referencias.ParamByName('CODIGO').AsInteger :=
     db_referencias.FieldByName('CODIGO').AsInteger;
end;

procedure TBaseDados_PCP.db_referenciasBeforeOpen(DataSet: TDataSet);
begin
   db_referencias.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TBaseDados_PCP.db_referenciasBeforePost(DataSet: TDataSet);
begin

   db_referencias.FieldByName('EMPRESA').AsInteger :=FSistema.Empresa;

   db_referencias.ParamByName('CODIGO').AsInteger :=
     db_referencias.FieldByName('CODIGO').AsInteger;

   If empty(db_referencias.FieldByName('REFERENCIA').AsString) then
   begin
      BeepCritica;
      Informar('Informe o codigo da referência/modelo');
      Abort;
   end;

   db_referencias.FieldByName('TIPO_PRODUTO').AsString := 'ACA'; // ICODIGO  ,

   if db_referencias.FieldByName('NCM').AsString='' Then
      db_referencias.FieldByName('NCM').AsString := BuscaNCMPadrao;



end;

procedure TBaseDados_PCP.db_referenciasFASEChange(Sender: TField);
var
 nFase : Integer;
begin
   nFase := db_referencias.FieldByName('FASE').AsInteger ;
   if fncFase_Validar(nFase )=false Then
   begin
      AvisoSistema('Fases de Produção '+ IntToStr(nFase) +' não existe.');
      abort;
   end;

end;

procedure TBaseDados_PCP.db_referenciasNewRecord(DataSet: TDataSet);
begin

   db_referencias.FieldByName('EMPRESA').AsInteger :=FSistema.Empresa;
   db_referencias.FieldByName('REFERENCIA').AsString := ''; // SCODIGO ,
   db_referencias.FieldByName('DATA').AsDateTime := Date; // DATE,
   db_referencias.FieldByName('GERAR_CODBARRA').AsString := 'S'; // BOOLEAN,
   db_referencias.FieldByName('PROMOCAO').AsString := 'N'; // BOOLEAN,
   db_referencias.FieldByName('DESCRICAO').AsString := ''; // SNOME ,
   db_referencias.FieldByName('TIPO_PRODUTO').AsString := 'ACA'; // ICODIGO  ,
   db_referencias.FieldByName('UNIDADE').AsString := 'PC'; // ICODIGO  ,
   db_referencias.FieldByName('NCM').AsString := BuscaNCMPadrao;

end;

procedure TBaseDados_PCP.db_referenciasREFERENCIAChange(Sender: TField);
Var
sReferencia : String;
begin

  sReferencia:=Trim(db_referencias.FieldByName('REFERENCIA').AsString);

  If ValidaReferencia(BaseDados_PCP.db_referencias.FieldByName('REFERENCIA').AsString) Then
  begin
     FrmFichaTecnica.FrmFrameBotoes1SpbCancelarClick(Sender);
     BaseDados_PCP.db_referencias.Close;
     BaseDados_PCP.db_referencias.ParamByName('CODIGO').AsInteger := RetornaReferenciaCodigoID(sReferencia);
     BaseDados_PCP.db_referencias.open;
     FrmFichaTecnica.Reabrirtabela;
     FrmFichaTecnica.EditReferencia.SetFocus;
     AvisoSistema('A Referência que você informou já existe ');
  end;


end;

procedure TBaseDados_PCP.db_referencia_FotosBeforePost(DataSet: TDataSet);
begin

   db_referencia_Fotos.FieldByName('CODIGO').AsInteger :=
     db_referencias.FieldByName('CODIGO').AsInteger;

   db_referencia_Fotos.FieldByName('REFERENCIA').AsString :=
     db_referencias.FieldByName('REFERENCIA').AsString;


end;

procedure TBaseDados_PCP.db_turnosAfterPost(DataSet: TDataSet);
Var
   nDia: Integer;
begin

   nDia := 0;
   db_turnosGrade.Cancel;

   // se nao estiver vazia, cancelar (exit) procedimento
   if not db_turnosGrade.IsEmpty then
      exit;

   // if pergunta('Deseja que o sistema crie automaticamente os dias da semana?')=False then
   // exit;

   for nDia := 2 to 7 do
   begin

      // segunda a sabado
      db_turnosGrade.Append;
      db_turnosGrade.FieldByName('DIA_SEMANA').AsString :=
        UpperCase(nDiaSemana(nDia));
      db_turnosGrade.FieldByName('TURNO1_HORA_INI').AsFloat := 0;
      db_turnosGrade.FieldByName('TURNO1_HORA_FIM').AsFloat := 0;
      db_turnosGrade.FieldByName('TURNO2_HORA_INI').AsFloat := 0;
      db_turnosGrade.FieldByName('TURNO2_HORA_FIM').AsFloat := 0;
      db_turnosGrade.post;

   end;

   /// Domingo... adicionar na ultima linha, visto que é dia de descanço
   db_turnosGrade.Append;
   db_turnosGrade.FieldByName('DIA_SEMANA').AsString :=
     UpperCase(nDiaSemana(1));
   db_turnosGrade.FieldByName('TURNO1_HORA_INI').AsFloat := 0;
   db_turnosGrade.FieldByName('TURNO1_HORA_FIM').AsFloat := 0;
   db_turnosGrade.FieldByName('TURNO2_HORA_INI').AsFloat := 0;
   db_turnosGrade.FieldByName('TURNO2_HORA_FIM').AsFloat := 0;
   db_turnosGrade.post;

   db_turnosGrade.First;

end;

procedure TBaseDados_PCP.db_turnosGradeBeforePost(DataSet: TDataSet);
begin

   db_turnosGrade.FieldByName('CODIGO').AsInteger :=
     db_turnos.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados_PCP.db_pcp_processosBeforePost(DataSet: TDataSet);
begin

   db_pcp_processos.FieldByName('CODIGO').AsInteger :=
     db_referencias.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados_PCP.db_pcp_processosID_PROCESSOChange(Sender: TField);
begin


   // envia uma requisição para o servidor checar se o PRODUTO digitado na grade
   // já existe em outra linha da mesma grade

      If ExisteCustoProcesso(db_referencias.FieldByName('CODIGO').AsInteger,
     db_pcp_processos.FieldByName('ID_PROCESSO').AsInteger) then
   begin
      BeepCritica;
      Aviso('Processo ' + db_pcp_processos.FieldByName('ID_PROCESSO').AsString +
        ' já está incluído na grade.');
      db_pcp_processos.Cancel;
      Abort;
   end;


   // --------------------------------------------------------------------------
   // --------------------------------------------------------------------------

   VariantResultados := BuscaNomeProcesso(db_pcp_processos.FieldByName('ID_PROCESSO').AsInteger);

   if VariantResultados[1] { descrição } = '' then
   begin
      BeepCritica;
      Aviso(' Processo de produção inexistente ');
      db_pcp_processos.Cancel;
      exit;
   end;
   db_pcp_processos.FieldByName('NOME').AsString := VariantResultados[1];
   db_pcp_processos.FieldByName('TEMPO').AsString := VariantResultados[2];
   db_pcp_processos.FieldByName('CUSTOS').AsFloat := VariantResultados[4];
   db_pcp_processos.FieldByName('INSTRUCOES').AsWideString := VariantResultados[5];

end;

procedure TBaseDados_PCP.db_pcp_CustosAfterPost(DataSet: TDataSet);
begin
   db_pcp_Custos.Refresh;
end;

procedure TBaseDados_PCP.db_pcp_CustosBeforePost(DataSet: TDataSet);
begin

   db_pcp_Custos.FieldByName('CODIGO').AsInteger :=   db_referencias.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados_PCP.db_pcp_CustosCODIGOCUSTOChange(Sender: TField);
begin

   if CustoExternoExiste(db_pcp_Custos.FieldByName('CODIGOCUSTO').AsInteger)=false then
   begin
      BeepCritica;
      Aviso(' Serviço Externo não inexistente.'+
            sLineBreak+
            'Verifique no menu Terceirizações->Preço de Serviços');
      db_pcp_Custos.Cancel;
      exit;
   end;

   // envia uma requisição para o servidor checar se o PRODUTO digitado na grade
   // já existe em outra linha da mesma grade
   If CustoExternoChecarGrade(db_referencias.FieldByName('CODIGO').AsInteger, db_pcp_Custos.FieldByName('CODIGOCUSTO').AsInteger) then
   begin
      BeepCritica;
      Aviso('Serviço Externo ' + db_pcp_Custos.FieldByName('CODIGOCUSTO').AsString + ' já está incluído na grade.');
      db_pcp_Custos.Cancel;
      exit;
   end;

   db_pcp_Custos.FieldByName('NOME').AsString := CustoExternoRetornaNome(db_pcp_Custos.FieldByName('CODIGOCUSTO').AsInteger);
   db_pcp_Custos.FieldByName('VALOR').AsFloat := CustoExternoRetornaValor(db_pcp_Custos.FieldByName('CODIGOCUSTO').AsInteger);

end;

procedure TBaseDados_PCP.db_pcp_MaquinasBeforePost(DataSet: TDataSet);
begin

   db_pcp_Maquinas.FieldByName('CODIGO').AsInteger :=
     db_referencias.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados_PCP.db_pcp_Maquinas_BeforePost(DataSet: TDataSet);
begin

   db_pcp_Maquinas.FieldByName('CODIGO').AsInteger :=
     db_referencias.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados_PCP.db_pcp_MaquinasID_MAQUINAChange(Sender: TField);
begin

   // Checa se MAQUINA informada no cadastro  de REFERENCIA já existe
   // para evitar duplicidade

   If ExisteMaquina(db_pcp_Maquinas.FieldByName('ID_MAQUINA').AsInteger) then
   begin
      BeepCritica;
      Aviso('Máquina ' + db_pcp_Maquinas.FieldByName('ID_MAQUINA').AsString +
        ' já foi incluída na grade.');
      db_pcp_Maquinas.Cancel;
      Abort;
   end;

   // --------------------------------------------------------------------------
   // --------------------------------------------------------------------------

   VariantResultados := BuscaNomeMaquina
     (db_pcp_Maquinas.FieldByName('ID_MAQUINA').AsInteger);
   if VariantResultados[0] { descrição } = '' then
   begin
      BeepCritica;
      Aviso(' Máquina inexistente ');
      db_pcp_Maquinas.Cancel;
      exit;
   end;
   db_pcp_Maquinas.FieldByName('NOME').AsString := VariantResultados[0];
   db_pcp_Maquinas.FieldByName('AGULHAS').AsInteger := VariantResultados[1];
   db_pcp_Maquinas.FieldByName('FIOS').AsInteger := VariantResultados[2];

end;

procedure TBaseDados_PCP.db_pcp_Maquinas_ID_MAQUINAChange(Sender: TField);
begin

   // Checa se MAQUINA informada no cadastro  de REFERENCIA já existe
   // para evitar duplicidade

   If ExisteMaquina(db_pcp_Maquinas.FieldByName('ID_MAQUINA').AsInteger) then
   begin
      BeepCritica;
      Aviso('Máquina ' + db_pcp_Maquinas.FieldByName('ID_MAQUINA').AsString +
        ' já foi incluída na grade.');
      db_pcp_Maquinas.Cancel;
      Abort;
   end;

   // --------------------------------------------------------------------------
   // --------------------------------------------------------------------------

   VariantResultados := BuscaNomeMaquina
     (db_pcp_Maquinas.FieldByName('ID_MAQUINA').AsInteger);
   if VariantResultados[0] { descrição } = '' then
   begin
      BeepCritica;
      Aviso(' Máquina inexistente ');
      db_pcp_Maquinas.Cancel;
      exit;
   end;
   db_pcp_Maquinas.FieldByName('NOME').AsString := VariantResultados[0];
   db_pcp_Maquinas.FieldByName('AGULHAS').AsInteger := VariantResultados[1];
   db_pcp_Maquinas.FieldByName('FIOS').AsInteger := VariantResultados[2];

end;

procedure TBaseDados_PCP.db_pcp_MedidasAfterPost(DataSet: TDataSet);
begin
   db_pcp_Medidas.Refresh;

end;

procedure TBaseDados_PCP.db_pcp_MedidasBeforePost(DataSet: TDataSet);
begin

   db_pcp_Medidas.FieldByName('CODIGO').AsInteger :=
     db_referencias.FieldByName('CODIGO').AsInteger;


end;

procedure TBaseDados_PCP.db_pcp_MedidasPosLavagemAfterPost(DataSet: TDataSet);
begin
   db_pcp_MedidasPosLavagem.Refresh;

end;

procedure TBaseDados_PCP.db_pcp_MedidasPosLavagemBeforePost(DataSet: TDataSet);
begin

   db_pcp_MedidasPosLavagem.FieldByName('CODIGO').AsInteger :=
     db_referencias.FieldByName('CODIGO').AsInteger;



end;

procedure TBaseDados_PCP.db_MateriaPrimaAfterPost(DataSet: TDataSet);
begin
  db_MateriaPrima.Refresh;
  Carregar_MateriaPrimaGrade;
end;

procedure TBaseDados_PCP.db_MateriaPrimaBeforePost(DataSet: TDataSet);
begin
   db_MateriaPrima.FieldByName('EMPRESA').AsInteger      := db_referencias.FieldByName('EMPRESA').AsInteger;
   db_MateriaPrima.FieldByName('CODIGO').AsInteger       := db_referencias.FieldByName('CODIGO').AsInteger;
end;

procedure TBaseDados_PCP.db_MateriaPrimaGradeAfterPost(DataSet: TDataSet);
begin
   db_MateriaPrimaGrade.Refresh;
end;

procedure TBaseDados_PCP.db_MateriaPrimaGradeBeforePost(DataSet: TDataSet);
begin
   db_MateriaPrimaGrade.FieldByName('EMPRESA').AsInteger      := db_MateriaPrima.FieldByName('EMPRESA').AsInteger;
   db_MateriaPrimaGrade.FieldByName('CODIGO').AsInteger       := db_MateriaPrima.FieldByName('CODIGO').AsInteger;
   db_MateriaPrimaGrade.FieldByName('REFERENCIA').AsString    := db_MateriaPrima.FieldByName('REFERENCIA').AsString;
end;

procedure TBaseDados_PCP.db_MateriaPrimaGradeTAMANHOPADRAOChange(
  Sender: TField);
begin


   if db_MateriaPrimaGrade.FieldByName('TAMANHOPADRAO').AsString='' then
      exit;

   if not ExisteTamanhoGrade(RetornaGradeReferencia(db_MateriaPrimaGrade.FieldByName('REFERENCIA').AsString),
                          db_MateriaPrimaGrade.FieldByName('TAMANHOPADRAO').AsString) Then
   begin
      AvisoSistema('O Tamanho Padrão digitado não existe na sua grade original... ou não tem grade informada.'
                   +#13+#10
                   +#13+#10
                   +'Essa grade é informada no cadastro da materia prima.'
                   +#13+#10
                   +'Produtos->Cadastros de Produtos.'
                   );
     db_MateriaPrimaGrade.cancel;

   end;



end;

procedure TBaseDados_PCP.db_MateriaPrimaQTDEChange(Sender: TField);
begin

   db_MateriaPrima.FieldByName('VLR_TOTAL').AsFloat :=
     db_MateriaPrima.FieldByName('QTDE').AsFloat * db_MateriaPrima.FieldByName
     ('VLR_UNIT').AsFloat;

end;

procedure TBaseDados_PCP.db_MateriaPrimaREFERENCIAChange(Sender: TField);
begin
   // envia uma requisição para o servidor checar se o PRODUTO digitado na grade
   // já existe em outra linha da mesma grade

   {
   if ExisteMateriaPrima(db_referencias.FieldByName('CODIGO').AsInteger,
     db_MateriaPrima.FieldByName('REFERENCIA').AsString) then
   begin
      BeepCritica;
      Aviso('Produto ' + db_MateriaPrima.FieldByName('PRODUTO').AsString +
        ' já está incluído na grade.');
      db_MateriaPrima.Cancel;
      exit;
   end;
   }

   VariantResultados := BuscaMateriaPrima(db_MateriaPrima.FieldByName('REFERENCIA').AsString, 'MAT');
   if VariantResultados[0] { descrição } = '' then
   begin
      BeepCritica;
      Aviso(' Materia prima inexistente no controle de estoque ');
      db_MateriaPrima.Cancel;
      exit;
   end;

   db_MateriaPrima.FieldByName('DESCRICAO').AsString := VariantResultados[0];
   db_MateriaPrima.FieldByName('UND').AsString := VariantResultados[1];
   db_MateriaPrima.FieldByName('VLR_UNIT').AsFloat := VariantResultados[2];

end;

procedure TBaseDados_PCP.db_MateriaPrimaTecidosAfterPost(DataSet: TDataSet);
begin
   db_MateriaPrimaTecidos.Refresh;
   Carregar_MateriaPrimaTecidoGrade;
end;

procedure TBaseDados_PCP.db_MateriaPrimaTecidosBeforePost(DataSet: TDataSet);
begin
   db_MateriaPrimaTecidos.FieldByName('EMPRESA').AsInteger      := db_referencias.FieldByName('EMPRESA').AsInteger;
   db_MateriaPrimaTecidos.FieldByName('CODIGO').AsInteger       := db_referencias.FieldByName('CODIGO').AsInteger;
end;

procedure TBaseDados_PCP.db_MateriaPrimaTecidosGradeAfterPost(
  DataSet: TDataSet);
begin
   db_MateriaPrimaTecidosGradeSomar.Close;
   db_MateriaPrimaTecidosGradeSomar.Open;

   db_MateriaPrimaTecidos.Edit;
   db_MateriaPrimaTecidos.FieldByName('QTDE_METROS').AsFloat   := db_MateriaPrimaTecidosGradeSomar.FieldByName('QUANTIDADE').AsFloat;
   db_MateriaPrimaTecidos.Post;

   db_MateriaPrimaTecidosGradeSomar.Close;

end;

procedure TBaseDados_PCP.db_MateriaPrimaTecidosGradeBeforePost(
  DataSet: TDataSet);
begin
   db_MateriaPrimaTecidosGrade.FieldByName('EMPRESA').AsInteger      := db_MateriaPrimaTecidos.FieldByName('EMPRESA').AsInteger;
   db_MateriaPrimaTecidosGrade.FieldByName('CODIGO').AsInteger       := db_MateriaPrimaTecidos.FieldByName('CODIGO').AsInteger;
   db_MateriaPrimaTecidosGrade.FieldByName('REFERENCIA').AsString    := db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString;

end;


procedure TBaseDados_PCP.db_MateriaPrimaTecidosQTDE_METROSChange
  (Sender: TField);
begin

   db_MateriaPrimaTecidos.FieldByName('VLR_TOTAL').AsFloat :=
     db_MateriaPrimaTecidos.FieldByName('QTDE_METROS').AsFloat *
     db_MateriaPrimaTecidos.FieldByName('VLR_UNIT').AsFloat;

end;

procedure TBaseDados_PCP.db_MateriaPrimaTecidosREFERENCIAChange(Sender: TField);
begin
   if ExisteMateriaPrimaTecido(db_referencias.FieldByName('CODIGO').AsInteger,
     db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString) then
   begin
      BeepCritica;
      Aviso('Produto ' + db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString
        + ' já está incluído na grade.');
      db_MateriaPrimaTecidos.Cancel;
      exit;
   end;

   VariantResultados := BuscaMateriaPrima (db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString, 'TCD');
   if VariantResultados[0] { descrição } = '' then
   begin
      BeepCritica;
      Aviso(' Materia prima inexistente no controle de estoque ');
      db_MateriaPrimaTecidos.Cancel;
      exit;
   end;

   db_MateriaPrimaTecidos.FieldByName('DESCRICAO').AsString :=     VariantResultados[0];
   db_MateriaPrimaTecidos.FieldByName('UND').AsString := VariantResultados[1];
   db_MateriaPrimaTecidos.FieldByName('VLR_UNIT').AsFloat :=      VariantResultados[2];

end;

procedure TBaseDados_PCP.db_GradeListaBeforePost(DataSet: TDataSet);
begin

   db_GradeLista.FieldByName('CODIGO').AsInteger :=
     db_Grade.FieldByName('CODIGO').AsInteger;

   db_GradeLista.FieldByName('ID_TAMANHO').AsInteger :=BuscaIDTamanho(db_GradeLista.FieldByName('TAMANHO').AsString);

   db_GradeLista.FieldByName('DESCRICAO').AsString :=
     db_Grade.FieldByName('DESCRICAO').AsString;

   inc(OrdemGradeTamanho);
   db_GradeLista.FieldByName('ORDEM').AsString :=
     FormatFloat('0000', OrdemGradeTamanho);

end;

procedure TBaseDados_PCP.db_GradeListaNewRecord(DataSet: TDataSet);
begin

   OrdemGradeTamanho := 0;
   db_GradeListaMax.close;
   db_GradeListaMax.Open;

   Try
      OrdemGradeTamanho := StrToInt(db_GradeListaMax.FieldByName('ORDEM')
        .AsString);
   Except
      OrdemGradeTamanho := 0;
   End;

   db_GradeListaMax.close;

end;

procedure TBaseDados_PCP.db_GradeListaTAMANHOChange(Sender: TField);
begin

   // envia uma requisição para o servidor checar se tamanho digitado na grade
   // existe no cadastro de TAMANHOS

   if not ExisteTamanho(db_GradeLista.FieldByName('TAMANHO').AsString) then
   begin
      BeepCritica;
      Aviso('Tamanho ' + db_GradeLista.FieldByName('TAMANHO').AsString +
        ' não existe no cadastro de TAMANHOS');
      db_GradeLista.Cancel;
   end;

   // envia uma requisição para o servidor checar se tamanho digitado na grade
   // já existe em outra linha da mesma grade

   if ExisteTamanhoGrade(db_Grade.FieldByName('CODIGO').AsInteger,
     db_GradeLista.FieldByName('TAMANHO').AsString) then
   begin
      BeepCritica;
      Aviso('Tamanho ' + db_GradeLista.FieldByName('TAMANHO').AsString +
        ' já está incluído na grade.');
      db_GradeLista.Cancel;
   end;

   db_GradeLista.FieldByName('ID_TAMANHO').AsInteger :=BuscaIDTamanho(db_GradeLista.FieldByName('TAMANHO').AsString);


end;

procedure TBaseDados_PCP.db_LoteProducaoNewRecord(DataSet: TDataSet);
begin
   db_LoteProducao.FieldByName('STATUS').AsString := 'S';
end;

procedure TBaseDados_PCP.db_maquinasNewRecord(DataSet: TDataSet);
begin

   db_maquinas.FieldByName('NRO_AGULHAS').AsInteger := 1;
   db_maquinas.FieldByName('NRO_FIOS').AsInteger := 1;
   db_maquinas.FieldByName('STATUS').AsString := 'S';

end;

procedure TBaseDados_PCP.CalculaProcessoGrade;
begin
   //
   db_Cad_processosdListaSum.close;
   db_Cad_processosdListaSum.Open;

   db_Cad_processosdGrade.edit;
   db_Cad_processosdGrade.FieldByName('TEMPO_TOTAL').AsFloat :=
     db_Cad_processosdListaSum.FieldByName('TEMPO').AsFloat;
   db_Cad_processosdGrade.FieldByName('CUSTO_TOTAL').AsFloat :=
     db_Cad_processosdListaSum.FieldByName('CUSTO').AsFloat;
   db_Cad_processosdGrade.post;

   db_Cad_processosdListaSum.close;

end;

procedure TBaseDados_PCP.db_Cad_processosdListaAfterPost(DataSet: TDataSet);
begin
   CalculaProcessoGrade;
end;

procedure TBaseDados_PCP.db_Cad_processosdListaBeforePost(DataSet: TDataSet);
begin

   db_Cad_processosdLista.FieldByName('CODIGO').AsInteger :=
     db_Cad_processosdGrade.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados_PCP.db_Cad_processosdListaPROCESSOChange(Sender: TField);
begin

   VariantResultados := BuscaNomeProcesso (db_Cad_processosdLista.FieldByName('PROCESSO').AsInteger);
   if VariantResultados[1] { descrição } = '' then
   begin
      BeepCritica;
      Aviso(' Processo de produção inexistente ');
      db_Cad_processosdLista.Cancel;
      exit;
   end;

   db_Cad_processosdLista.FieldByName('NOME').AsString := VariantResultados[1];
   db_Cad_processosdLista.FieldByName('TEMPO').AsString := VariantResultados[2];
   db_Cad_processosdLista.FieldByName('CUSTOS').AsFloat := VariantResultados[4];
   //db_Cad_processosdLista.FieldByName('INSTRUCOES').AsWideString := VariantResultados[5];

end;

Procedure TBaseDados_PCP.DB_Cad_TamanhosTAMANHOChange(Sender: TField);
begin
   Try
      ACBrExtenso1.Valor := StrToInt(DB_Cad_Tamanhos.FieldByName('TAMANHO')
        .AsString);
      DB_Cad_Tamanhos.FieldByName('DESCRICAO').AsString :=
        UpperCase(ACBrExtenso1.Texto);
   Except
   End;

   // Checa TAMANHO informado no cadastro (CAD_TAMANHOS) já existe para evitar duplicidade
   // de uma mesma referencia de TAMANHO

   if ExisteTamanho(DB_Cad_Tamanhos.FieldByName('TAMANHO').AsString) then
   begin
      Aviso('Tamanho ' + DB_Cad_Tamanhos.FieldByName('TAMANHO').AsString +
        ' já exite no cadastro. ');
      DB_Cad_Tamanhos.Cancel;
      exit;
   end;

end;

procedure TBaseDados_PCP.db_etiquetasDetalhesBeforePost(DataSet: TDataSet);
begin
   db_etiquetasDetalhes.FieldByName('CODIGO').AsInteger :=
     db_etiquetas.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados_PCP.db_VincMaquinasDetalhesBeforePost(DataSet: TDataSet);
begin

   db_VincMaquinasDetalhes.FieldByName('CODIGO').AsInteger :=
     db_VincMaquinas.FieldByName('CODIGO').AsInteger;

   db_VincMaquinasDetalhes.FieldByName('MAQUINA').AsInteger :=
     db_VincMaquinas.FieldByName('MAQUINA').AsInteger;

end;

procedure TBaseDados_PCP.db_VincMaquinasDetalhesPROCESSOChange(Sender: TField);
begin

   // envia uma requisição para o servidor checar se o PRODUTO digitado na grade
   // já existe em outra linha da mesma grade
   if ExisteProcessoMaquina(db_VincMaquinas.FieldByName('CODIGO').AsInteger,
     db_VincMaquinasDetalhes.FieldByName('PROCESSO').AsInteger) then
   begin
      BeepCritica;
      Aviso('Processo ' + db_VincMaquinasDetalhes.FieldByName('PROCESSO')
        .AsString + ' já está incluído na grade.');
      db_VincMaquinasDetalhes.Cancel;
      exit;
   end;

end;

procedure TBaseDados_PCP.db_OrdemProducaoBeforeOpen(DataSet: TDataSet);
begin
   db_OrdemProducao.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TBaseDados_PCP.db_OrdemProducaoBeforePost(DataSet: TDataSet);
begin
    db_OrdemProducao.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TBaseDados_PCP.db_FaixaEtariaBeforePost(DataSet: TDataSet);
begin

   If db_FaixaEtaria.FieldByName('IDADE_INICIO').AsInteger >
     db_FaixaEtaria.FieldByName('IDADE_TERMINO').AsInteger then
   begin
      Erro('idade Inicial deve ser igual o menor que idade Final');
      Abort;
   end;

end;

procedure TBaseDados_PCP.db_FasesGradeListaBeforePost(DataSet: TDataSet);
begin
   db_FasesGradeLista.FieldByName('CODIGO').AsInteger :=
     db_FasesGrade.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados_PCP.db_FasesGradeListaFASEChange(Sender: TField);
var
 nFase : Integer;
begin

   nFase := db_FasesGradeLista.FieldByName('FASE').AsInteger ;
   if fncFaseCadastro_Validar(nFase )=false Then
   begin
      AvisoSistema('Fase '+ IntToStr(nFase) +' não existe.');
      db_FasesGradeLista.Cancel;
      abort;
   end;

   db_FasesGradeLista.FieldByName('NOME').AsString :=fncFase_Nome(db_FasesGradeLista.FieldByName('FASE').AsInteger);

end;

procedure TBaseDados_PCP.db_FasesGradeListaNewRecord(DataSet: TDataSet);
begin
   db_FasesGradeLista.FieldByName('IMPRIMEOP').AsString :='S';
end;

procedure TBaseDados_PCP.db_FasesGradeNewRecord(DataSet: TDataSet);
begin
   db_FasesGrade.FieldByName('IMPRIMEOP').AsString :='S';

end;

procedure TBaseDados_PCP.db_fasesNewRecord(DataSet: TDataSet);
begin
   db_fases.FieldByName('IMPRIMEOP').AsString :='S';
end;

procedure TBaseDados_PCP.db_pcp_processos_ID_PROCESSOChange(Sender: TField);
begin


   // --------------------------------------------------------------------------
   // --------------------------------------------------------------------------

   VariantResultados := BuscaNomeProcesso
     (db_Cad_processosdLista.FieldByName('PROCESSO').AsInteger);
   if VariantResultados[2] { descrição } = '' then
   begin
      BeepCritica;
      Aviso(' Processo de produção inexistente ');
      db_pcp_processos.Cancel;
      exit;
   end;
   db_pcp_processos.FieldByName('NOME').AsString := VariantResultados[1];
   db_pcp_processos.FieldByName('TEMPO').AsString := VariantResultados[2];
   db_pcp_processos.FieldByName('CUSTOS').AsFloat := VariantResultados[3];
   //db_pcp_processos.FieldByName('INSTRUCOES').AsWideString := VariantResultados[5];

end;

procedure TBaseDados_PCP.db_qualidadesNewRecord(DataSet: TDataSet);
begin
//   db_qualidades.FieldByName('ESTOQUEPRINCIPAL').AsString := 'N';
end;

procedure TBaseDados_PCP.db_MateriaPrima_PRODUTOChange(Sender: TField);
begin

   // envia uma requisição para o servidor checar se o PRODUTO digitado na grade
   // já existe em outra linha da mesma grade

   if ExisteMateriaPrima(db_referencias.FieldByName('CODIGO').AsInteger,
     db_MateriaPrima.FieldByName('PRODUTO').AsString) then
   begin
      BeepCritica;
      Aviso('Produto ' + db_MateriaPrima.FieldByName('PRODUTO').AsString +
        ' já está incluído na grade.');
      db_MateriaPrima.Cancel;
      exit;
   end;

   VariantResultados := BuscaMateriaPrima(db_MateriaPrima.FieldByName('PRODUTO')
     .AsString, 'MAT');
   if VariantResultados[0] { descrição } = '' then
   begin
      BeepCritica;
      Aviso(' Materia prima inexistente no controle de estoque ');
      db_MateriaPrima.Cancel;
      exit;
   end;

   db_MateriaPrima.FieldByName('DESCRICAO').AsString := VariantResultados[0];
   db_MateriaPrima.FieldByName('UND').AsString := VariantResultados[1];
   db_MateriaPrima.FieldByName('VLR_UNIT').AsFloat := VariantResultados[2];

end;

procedure TBaseDados_PCP.db_OrdemProducaoNewRecord(DataSet: TDataSet);
begin

   db_OrdemProducao.FieldByName('DATA').AsDateTime            :=Date;
   db_OrdemProducao.FieldByName('QTDE_TOTAL').AsInteger       :=0;
   db_OrdemProducao.FieldByName('QTDE_PRODUZIDA').AsInteger   :=0;
   db_OrdemProducao.FieldByName('QTDE_RESTANTE').AsInteger    :=0;
   db_OrdemProducao.FieldByName('QTDE_PERDAS').AsInteger      :=0;
   db_OrdemProducao.FieldByName('QTDE_DEFEITOS').AsInteger    :=0;
   db_OrdemProducao.FieldByName('TEMPO_PRODUCAO').AsInteger   :=0;
   db_OrdemProducao.FieldByName('PERCENTUAL').AsInteger       :=0;
   db_OrdemProducao.FieldByName('APROVADO').AsString          :='N';
   db_OrdemProducao.FieldByName('ENCERRADO').AsString         :='N';
   db_OrdemProducao.FieldByName('OBSERVACAO').AsString        :='';


end;

procedure TBaseDados_PCP.db_OrdemProducaoItensBeforePost(DataSet: TDataSet);
begin
   db_OrdemProducaoItens.FieldByName('EMPRESA').AsInteger   :=  db_OrdemProducao.FieldByName('EMPRESA').AsInteger;
   db_OrdemProducaoItens.FieldByName('CODIGO').AsInteger    :=  db_OrdemProducao.FieldByName('CODIGO').AsInteger;
   db_OrdemProducaoItens.FieldByName('APROVADO').AsString   :=  db_OrdemProducao.FieldByName('APROVADO').AsString;
   db_OrdemProducaoItens.FieldByName('DATA').AsDateTime     :=  db_OrdemProducao.FieldByName('DATA').AsDateTime;
end;

procedure TBaseDados_PCP.db_OrdemProducaoItensREFERENCIAChange(Sender: TField);
begin

   nOrdemProducao := db_OrdemProducao.FieldByName('CODIGO').AsInteger;
   strReferencia  := db_OrdemProducaoItens.FieldByName('REFERENCIA').AsString;

   if (strReferencia = '') or (strReferencia= '0') then
      exit;

   // chegcar se já existe produto na grade
   if OPExisteProduto(nOrdemProducao, strReferencia) then
   begin
      BeepCritica;
      Informar('Referência ' + strReferencia+ ' já está incluída na grade.');
      db_OrdemProducaoItens.Cancel;
      exit;
   end;

   if ValidaReferencia(strReferencia)=false then
   begin
      BeepCritica;
      Informar('Produto Inexistente');
      db_OrdemProducaoItens.Cancel;
      exit;
   end;

   db_OrdemProducaoItens.FieldByName('DESCRICAO').AsString := fncReferenciaNome(strReferencia);

end;

procedure TBaseDados_PCP.db_OrdemProducaoLOTEChange(Sender: TField);
begin
   db_OrdemProducao.FieldByName('LOTENOME').AsString :=fncLote_Nome(db_OrdemProducao.FieldByName('LOTE').AsInteger);
end;

procedure TBaseDados_PCP.Carregar_MateriaPrimaGrade;
begin
  {
  if not db_MateriaPrima.Active then
     exit;

  //if db_MateriaPrima.RecordCount<1 then
  if db_MateriaPrima.IsEmpty then
     exit;

  if not db_MateriaPrimaGrade.Active then
     exit;

  if RetornaGradeReferencia(db_MateriaPrima.FieldByName('REFERENCIA').AsString) < 1 then
     exit;

  db_MateriaPrimaGrade.close;
  db_MateriaPrimaGrade.open;

  if (db_MateriaPrimaGrade.IsEmpty) and (db_MateriaPrimaGrade.RecordCount<1) then
  begin

     db_MateriaPrimaTamanhos.close;
     db_MateriaPrimaTamanhos.ParamByName('CODIGO').AsInteger      :=  StrToIntDef(fncProduto_retCampo(db_MateriaPrima.FieldByName('REFERENCIA').AsString,'CODIGO'),0 );
     db_MateriaPrimaTamanhos.ParamByName('REFERENCIA').AsString   :=  db_MateriaPrima.FieldByName('REFERENCIA').AsString;
     db_MateriaPrimaTamanhos.ParamByName('GRADE_ID').AsInteger    :=  RetornaGradeReferencia(db_MateriaPrima.FieldByName('REFERENCIA').AsString);
     db_MateriaPrimaTamanhos.open;

     while not db_MateriaPrimaTamanhos.Eof do
     begin

        db_MateriaPrimaGrade.Append;
        db_MateriaPrimaGrade.FieldByName('EMPRESA').AsInteger         := db_MateriaPrima.FieldByName('EMPRESA').AsInteger ;
        db_MateriaPrimaGrade.FieldByName('CODIGO').AsInteger          := db_MateriaPrima.FieldByName('CODIGO').AsInteger ;
        db_MateriaPrimaGrade.FieldByName('REFERENCIA').AsString       := db_MateriaPrima.FieldByName('REFERENCIA').AsString ;

        db_MateriaPrimaGrade.FieldByName('COR_ID').AsInteger          := db_MateriaPrimaTamanhos.FieldByName('COR_CODIGO').AsInteger;
        db_MateriaPrimaGrade.FieldByName('COR').AsString              := db_MateriaPrimaTamanhos.FieldByName('COR').AsString;
        db_MateriaPrimaGrade.FieldByName('TAMANHO_ID').AsInteger      := db_MateriaPrimaTamanhos.FieldByName('TAMANHO_CODIGO').AsInteger;
        db_MateriaPrimaGrade.FieldByName('TAMANHO').AsString          := db_MateriaPrimaTamanhos.FieldByName('TAMANHO').AsString;
        db_MateriaPrimaGrade.FieldByName('ORDEM_GRADE').AsString      := db_MateriaPrimaTamanhos.FieldByName('TAMANHO_ORDEM').AsString;
        db_MateriaPrimaGrade.FieldByName('QUANTIDADE').AsInteger      := 0;
        db_MateriaPrimaGrade.Post;



        db_MateriaPrimaTamanhos.Next;
     end;
     db_MateriaPrimaTamanhos.close;

  end;
  db_MateriaPrimaGrade.Refresh;
  db_MateriaPrimaGrade.First;
  }



  if not db_MateriaPrima.Active then
     exit;

  //if db_MateriaPrima.RecordCount<1 then
  if db_MateriaPrima.IsEmpty then
     exit;

  if not db_MateriaPrimaGrade.Active then
     exit;

  if RetornaGradeReferencia(db_MateriaPrima.FieldByName('REFERENCIA').AsString) < 1 then
     exit;

  db_MateriaPrimaGrade.close;
  db_MateriaPrimaGrade.open;

  if (db_MateriaPrimaGrade.IsEmpty) and (db_MateriaPrimaGrade.RecordCount<1) then
  begin

     db_MateriaPrimaTamanhos.close;
     db_MateriaPrimaTamanhos.ParamByName('CODIGO').AsInteger      :=  db_referencias.FieldByName('CODIGO').AsInteger;
     db_MateriaPrimaTamanhos.ParamByName('REFERENCIA').AsString   :=  db_referencias.FieldByName('REFERENCIA').AsString;
     db_MateriaPrimaTamanhos.open;


     while not db_MateriaPrimaTamanhos.Eof do
     begin

        db_MateriaPrimaGrade.Append;
        db_MateriaPrimaGrade.FieldByName('EMPRESA').AsInteger         := db_MateriaPrima.FieldByName('EMPRESA').AsInteger ;
        db_MateriaPrimaGrade.FieldByName('CODIGO').AsInteger          := db_MateriaPrima.FieldByName('CODIGO').AsInteger ;
        db_MateriaPrimaGrade.FieldByName('REFERENCIA').AsString       := db_MateriaPrima.FieldByName('REFERENCIA').AsString ;

        db_MateriaPrimaGrade.FieldByName('COR_ID').AsInteger          := db_MateriaPrimaTamanhos.FieldByName('COR_CODIGO').AsInteger;
        db_MateriaPrimaGrade.FieldByName('COR').AsString              := db_MateriaPrimaTamanhos.FieldByName('COR').AsString;
        db_MateriaPrimaGrade.FieldByName('TAMANHO_ID').AsInteger      := db_MateriaPrimaTamanhos.FieldByName('TAMANHO_CODIGO').AsInteger;
        db_MateriaPrimaGrade.FieldByName('TAMANHO').AsString          := db_MateriaPrimaTamanhos.FieldByName('TAMANHO').AsString;
        db_MateriaPrimaGrade.FieldByName('ORDEM_GRADE').AsString      := db_MateriaPrimaTamanhos.FieldByName('TAMANHO_ORDEM').AsString;
        db_MateriaPrimaGrade.FieldByName('QUANTIDADE').AsInteger      := 0;
        db_MateriaPrimaGrade.Post;

        db_MateriaPrimaTamanhos.Next;
     end;
     db_MateriaPrimaTamanhos.close;

  end;
  db_MateriaPrimaGrade.Refresh;
  db_MateriaPrimaGrade.First;


end;

procedure TBaseDados_PCP.Carregar_MateriaPrimaTecidoGrade;
begin

  if not db_MateriaPrimaTecidos.Active then
     exit;

  //if db_MateriaPrimaTecidos.RecordCount<1 then
  if db_MateriaPrimaTecidos.IsEmpty then
     exit;

  if not db_MateriaPrimaTecidosGrade.Active then
     exit;

  if RetornaGradeReferencia(db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString) < 1 then
     exit;

  db_MateriaPrimaTecidosGrade.close;
  db_MateriaPrimaTecidosGrade.open;

  if (db_MateriaPrimaTecidosGrade.IsEmpty) and (db_MateriaPrimaTecidosGrade.RecordCount<1) then
  begin

     db_MateriaPrimaTamanhosTecidos.close;
     db_MateriaPrimaTamanhosTecidos.ParamByName('CODIGO').AsInteger      :=  RetornaReferenciaCodigoID(db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString);
     db_MateriaPrimaTamanhosTecidos.ParamByName('REFERENCIA').AsString   :=  db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString;
     db_MateriaPrimaTamanhosTecidos.open;

     while not db_MateriaPrimaTamanhosTecidos.Eof do
     begin
        db_MateriaPrimaTecidosGrade.Append;
        db_MateriaPrimaTecidosGrade.FieldByName('EMPRESA').AsInteger             := db_MateriaPrimaTecidos.FieldByName('EMPRESA').AsInteger ;
        db_MateriaPrimaTecidosGrade.FieldByName('CODIGO').AsInteger              := db_MateriaPrimaTecidos.FieldByName('CODIGO').AsInteger ;
        db_MateriaPrimaTecidosGrade.FieldByName('REFERENCIA').AsString           := db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString ;

        db_MateriaPrimaTecidosGrade.FieldByName('REFERENCIA_COR_ID').AsInteger   := db_MateriaPrimaTamanhosTecidos.FieldByName('COR_CODIGO').AsInteger;
        db_MateriaPrimaTecidosGrade.FieldByName('REFERENCIA_COR_NOME').AsString  := db_MateriaPrimaTamanhosTecidos.FieldByName('COR').AsString;

        db_MateriaPrimaTecidosGrade.FieldByName('COR_ID').AsInteger              := 0;
        db_MateriaPrimaTecidosGrade.FieldByName('COR_NOME').AsString             := '';

        db_MateriaPrimaTecidosGrade.FieldByName('TAMANHO_ID').AsInteger          := db_MateriaPrimaTamanhosTecidos.FieldByName('TAMANHO_CODIGO').AsInteger;
        db_MateriaPrimaTecidosGrade.FieldByName('TAMANHO').AsString              := db_MateriaPrimaTamanhosTecidos.FieldByName('TAMANHO').AsString;

        db_MateriaPrimaTecidosGrade.FieldByName('ORDEM_GRADE').AsString          := db_MateriaPrimaTamanhosTecidos.FieldByName('TAMANHO_ORDEM').AsString;

        db_MateriaPrimaTecidosGrade.FieldByName('QUANTIDADE').AsInteger          := 0;
        db_MateriaPrimaTecidosGrade.Post;


        db_MateriaPrimaTamanhosTecidos.Next;
     end;
     db_MateriaPrimaTamanhosTecidos.close;

  end;
  db_MateriaPrimaTecidosGrade.Refresh;
  db_MateriaPrimaTecidosGrade.First;

end;

procedure TBaseDados_PCP.db_MateriaPrimaTecidosGradeCOR_IDChange(
  Sender: TField);
begin
   // fncBuscaNomeCorGrade(nCodigoProduto,ngradeid,ncor: Integer;wreferencia)

   db_MateriaPrimaTecidosGrade.FieldByName('COR_NOME').AsString :=fncBuscaNomeCorGrade( StrToIntDef(fncProduto_retCampo(db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString,'CODIGO'),0 ),
                                                                                         RetornaGradeReferencia(db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString),
                                                                                         db_MateriaPrimaTecidosGrade.FieldByName('COR_ID').AsInteger,
                                                                                         db_MateriaPrimaTecidosGrade.FieldByName('REFERENCIA').AsString

                                                                                          );


end;


end.



