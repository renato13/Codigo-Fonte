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

unit FConsultaNotaFiscal;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBCtrls, Mask,
   ComCtrls, ImgList, DB,        FFrameBarra, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, Classe.Global,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmConsultaNotaFiscal = class(TForm)
      Panel4: TPanel;
    FrmFrameBarra1: TFrmFrameBarra;
    DS_Vendas: TDataSource;
    DS_VendasItens: TDataSource;
    db_Vendas:  TFDQuery;
    db_VendasItens: TFDQuery;
    db_VendasItensCODIGO: TIntegerField;
    db_VendasItensNUMERO_NF: TIntegerField;
    db_VendasItensSERIE: TStringField;
    db_VendasItensOPERACAO: TStringField;
    db_VendasItensEMISSAO: TSQLTimeStampField;
    db_VendasItensCLIENTE: TIntegerField;
    db_VendasItensVENDEDOR: TIntegerField;
    db_VendasItensCFOP: TIntegerField;
    db_VendasItensPRODUTO: TStringField;
    db_VendasItensDESCRICAO: TStringField;
    db_VendasItensCLASS_FISCAL: TStringField;
    db_VendasItensSITUACAO_TRIBUTARIA: TStringField;
    db_VendasItensUNIDADE: TStringField;
    db_VendasItensQTDE: TBCDField;
    db_VendasItensVLR_UNITARIO: TBCDField;
    db_VendasItensVLR_TOTAL: TBCDField;
    db_VendasItensIPI_ALIQUOTA: TBCDField;
    db_VendasItensVLR_IPI: TBCDField;
    db_VendasItensICMS_ALIQUOTA: TBCDField;
    db_VendasItensVLR_ICMS: TBCDField;
    db_VendasItensDESCONTO: TBCDField;
    db_VendasItensDESCONTO_VALOR: TBCDField;
    db_VendasEMPRESA: TIntegerField;
    db_VendasCODIGO: TIntegerField;
    db_VendasNOTAFISCALORIGEM: TIntegerField;
    db_VendasSERIE: TStringField;
    db_VendasEMISSAO: TSQLTimeStampField;
    db_VendasDATA_ES: TSQLTimeStampField;
    db_VendasOPERACAO: TStringField;
    db_VendasCLIENTE: TIntegerField;
    db_VendasCLIENTE_NOME: TStringField;
    db_VendasCLIENTE_CNPJ: TStringField;
    db_VendasCLIENTE_RG_IE: TStringField;
    db_VendasCLIENTE_ENDERECO: TStringField;
    db_VendasCLIENTE_NUMERO: TStringField;
    db_VendasCLIENTE_BAIRRO: TStringField;
    db_VendasCLIENTE_DDD: TIntegerField;
    db_VendasCLIENTE_FONE: TStringField;
    db_VendasCLIENTE_FAX: TStringField;
    db_VendasCLIENTE_REFERENCIA: TStringField;
    db_VendasCLIENTE_CIDADE: TIntegerField;
    db_VendasCLIENTE_CIDADE_NOME: TStringField;
    db_VendasCLIENTE_UF: TStringField;
    db_VendasCLIENTE_CONTATO: TStringField;
    db_VendasCLIENTE_EMAIL: TStringField;
    db_VendasCFOP: TIntegerField;
    db_VendasCFOP_NOME: TStringField;
    db_VendasIE_SUBSTITUICAO: TStringField;
    db_VendasSTATUS: TStringField;
    db_VendasFORMA_PAGTO: TIntegerField;
    db_VendasFORMA_PAGTO_NOME: TStringField;
    db_VendasVENDEDOR: TIntegerField;
    db_VendasVENDEDOR_NOME: TStringField;
    db_VendasNF_VALOR_TOTAL: TBCDField;
    db_VendasNF_VALOR_PRODUTOS: TBCDField;
    db_VendasNF_QTDE_PRODUTOS: TIntegerField;
    db_VendasNF_VALOR_ICMS: TBCDField;
    db_VendasNF_VALOR_IPI: TBCDField;
    db_VendasNF_ISS: TBCDField;
    db_VendasNF_ISS_VALOR: TBCDField;
    db_VendasNF_BASE_CALC_ICMS: TBCDField;
    db_VendasNF_BASE_CALC_ICMS_II: TBCDField;
    db_VendasNF_VALOR_BASE_ICMS_II: TBCDField;
    db_VendasSIMPLESNACIONAL_VALOR: TBCDField;
    db_VendasVLR_FRETE: TBCDField;
    db_VendasVLR_SEGURO: TBCDField;
    db_VendasVLR_DESP_ACES: TBCDField;
    db_VendasPERC_DESCONTO: TBCDField;
    db_VendasVLR_DESCONTO: TBCDField;
    db_VendasVLR_RECEBIDO: TBCDField;
    db_VendasTROCO: TBCDField;
    db_VendasVLR_CAIXA: TBCDField;
    db_VendasTRANSPORTADORA: TIntegerField;
    db_VendasTRANSP_NOME: TStringField;
    db_VendasTRANSP_FRETE: TStringField;
    db_VendasTRANSP_PLACA: TStringField;
    db_VendasTRANSP_PLACA_CIDADE: TStringField;
    db_VendasTRANSP_PLACA_UF: TStringField;
    db_VendasTRANSP_CNPJ: TStringField;
    db_VendasTRANSP_ENDERECO: TStringField;
    db_VendasTRANSP_CIDADE: TIntegerField;
    db_VendasTRANSP_CIDADE_NOME: TStringField;
    db_VendasTRANSP_UF: TStringField;
    db_VendasTRANSP_INSCRICAO: TStringField;
    db_VendasTRANSP_QTDE: TIntegerField;
    db_VendasTRANSP_ESPECIE: TStringField;
    db_VendasTRANSP_MARCA: TStringField;
    db_VendasTRANSP_NUMERO: TStringField;
    db_VendasTRANSP_PBRUTO: TBCDField;
    db_VendasTRANSP_PLIQUIDO: TBCDField;
    db_VendasDADOS_ADICIONAIS: TStringField;
    db_VendasRESERVADO_FISCO: TStringField;
    db_VendasALIQ_ICMS_REDUCAO: TBCDField;
    db_VendasVLR_ICMS_REDUCAO: TBCDField;
    db_VendasTIPO_DESCONTO: TStringField;
    db_VendasDESCONTO_ACRESCIMO: TStringField;
    db_VendasPEDIDO: TIntegerField;
    db_VendasCUPOM: TStringField;
    db_VendasTABELA: TIntegerField;
    db_VendasIMPRESSO: TStringField;
    db_VendasDEVOLUCAOCREDITADA: TStringField;
    BoxProdutos: TGroupBox;
    GridProdutos: TDBGrid;
    Panel7: TPanel;
    Panel8: TPanel;
    DBText5: TDBText;
    Panel9: TPanel;
    DBText6: TDBText;
    GroupBox1: TGroupBox;
    GridNotasFiscais: TDBGrid;
    BtnProcurar: TBitBtn;
    BtnSair: TBitBtn;
    dbProcurarNFe: TIDBEditDialog;
    db_VendasNOTAFISCAL: TIntegerField;
    db_VendasCLIENTE_CEP: TStringField;
    db_VendasHORA: TTimeField;
      procedure BtnSairClick(Sender: TObject);
      procedure BtnProcurarClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
    procedure db_VendasBeforeOpen(DataSet: TDataSet);
    procedure db_VendasAfterOpen(DataSet: TDataSet);
    procedure db_VendasItensAfterOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmConsultaNotaFiscal: TFrmConsultaNotaFiscal;

implementation

uses FBaseDados, Global, Biblioteca, FPrincipal;

{$R *.dfm}

procedure TFrmConsultaNotaFiscal.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmConsultaNotaFiscal.db_VendasAfterOpen(DataSet: TDataSet);
begin
 DimensionarGrid(GridNotasFiscais,Self);
end;

procedure TFrmConsultaNotaFiscal.db_VendasBeforeOpen(DataSet: TDataSet);
begin
   db_Vendas.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmConsultaNotaFiscal.db_VendasItensAfterOpen(DataSet: TDataSet);
begin
 DimensionarGrid(GridProdutos,Self);

end;

procedure TFrmConsultaNotaFiscal.BtnProcurarClick(Sender: TObject);
begin
   if dbProcurarNFe.Execute then
   begin
      db_Vendas.Locate('CODIGO',dbProcurarNFe.ResultFieldAsInteger('CODIGO'),[]);
   end;
end;

procedure TFrmConsultaNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_Vendas.close;
   db_VendasItens.close;

   FreeAndNil(FrmConsultaNotaFiscal);


end;

procedure TFrmConsultaNotaFiscal.FormCreate(Sender: TObject);
begin
   db_Vendas.Open;
   db_VendasItens.Open;
end;

procedure TFrmConsultaNotaFiscal.FormKeyPress(Sender: TObject; var Key: Char);
begin

   If Key = #27 then
   begin
      BtnSairClick(Sender);
   end;

end;

procedure TFrmConsultaNotaFiscal.FormResize(Sender: TObject);
begin
 DimensionarGrid(GridNotasFiscais,Self);
 DimensionarGrid(GridProdutos,Self);

end;

end.
