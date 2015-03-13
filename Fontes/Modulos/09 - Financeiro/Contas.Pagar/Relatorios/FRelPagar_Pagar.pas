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

unit FRelPagar_Pagar;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, quickrpt, Qrctrls, Db, DBTables, QRPrntr, QRExport, QRPREV,
   StdCtrls,     QRPDFFilt,   Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelPagar_Pagar = class(TForm)
      QuickRep: TQuickRep;
      PageHeaderBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel10: TQRLabel;
      Datalhes: TQRBand;
      QRDBText3: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText6: TQRDBText;
      QRDBText9: TQRDBText;
      QuebraBanco: TQRGroup;
      QRLabel15: TQRLabel;
      QRDBText5: TQRDBText;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      QRLabel1: TQRLabel;
      QRLabel6: TQRLabel;
      QRLabel12: TQRLabel;
      TotalOperacao: TQRBand;
      QRLabel4: TQRLabel;
      QRExpr4: TQRExpr;
      SummaryBand1: TQRBand;
      QRExpr6: TQRExpr;
      dbCtaPagar: TFDQuery;
      PageFooterBand1: TQRBand;
      QRDBText1: TQRDBText;
      QRLabel5: TQRLabel;
      LblFornecedor: TQRLabel;
      QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
    procedure dbCtaPagarBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelPagar_Pagar: TFrmRelPagar_Pagar;

implementation

uses Biblioteca, FRelCtaReceber, Global, FRelCtaPagar;

{$R *.DFM}

procedure TFrmRelPagar_Pagar.FormCreate(Sender: TObject);
begin

   dbCtaPagar.close;
   dbCtaPagar.SQL.clear;
   dbCtaPagar.SQL.Add('SELECT * FROM VIEW_FIN_CTAPAGAR');
   dbCtaPagar.SQL.Add('WHERE');
   dbCtaPagar.SQL.Add('EMPRESA=:EMPRESA');
   dbCtaPagar.SQL.Add('AND');
   dbCtaPagar.SQL.Add('VENCIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL');
   dbCtaPagar.SQL.Add('AND');
   dbCtaPagar.SQL.Add('QUITADO<>'+QuotedStr('S'));

   If FrmRelCtaPagar.chkFornecedor.Checked = False Then
   Begin
      dbCtaPagar.SQL.Add('AND');
      dbCtaPagar.SQL.Add('FORNECEDOR='+strFornecedor);
   End;

   if not FrmRelCtaPagar.chkContaCaixa.Checked then
   Begin
      dbCtaPagar.SQL.Add('AND');
      dbCtaPagar.SQL.Add('CONTACAIXA='+strContaCaixa);
   End;

   if not FrmRelCtaPagar.chkContaBancaria.Checked then
   Begin
      dbCtaPagar.SQL.Add('AND');
      dbCtaPagar.SQL.Add('CONTACORRENTE='+strContaCorrente);
   End;


   dbCtaPagar.SQL.Add('ORDER BY VENCIMENTO, NOME_FORNECEDOR ');
   dbCtaPagar.ParamByName('DATAINICIAL').AsDateTime  := dtDataIni;
   dbCtaPagar.ParamByName('DATAFINAL').AsDateTime    := dtDataFim;
   dbCtaPagar.open;

   QuickRep.Preview;
   close;

end;

procedure TFrmRelPagar_Pagar.dbCtaPagarBeforeOpen(DataSet: TDataSet);
begin
   dbCtaPagar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelPagar_Pagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dbCtaPagar.close;
   Action := caFree;

end;

procedure TFrmRelPagar_Pagar.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   // LblFornecedor.Caption:='Representante: '+TxtAuxiliar+'-'+dbCtaPagar.FieldByName('NOME').AsString;

end;

end.
