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

unit FRelPagar_Quitadas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   DBTables, Db, Qrctrls, QuickRpt, ExtCtrls, QRExport, StdCtrls,
       QRPDFFilt,   Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelPagar_Quitadas = class(TForm)
    dbCtaPagar: TFDQuery;
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
      QRDBText10: TQRDBText;
      QuebraBanco: TQRGroup;
      QRLabel15: TQRLabel;
      QRDBText5: TQRDBText;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      QRLabel1: TQRLabel;
      QRLabel6: TQRLabel;
      QRLabel12: TQRLabel;
      QRLabel11: TQRLabel;
      TotalOperacao: TQRBand;
      QRLabel4: TQRLabel;
      QRExpr4: TQRExpr;
      QRExpr1: TQRExpr;
      SummaryBand1: TQRBand;
      QRShape1: TQRShape;
      QRLabel5: TQRLabel;
      QRExpr6: TQRExpr;
      QRExpr2: TQRExpr;
      qReceber: TQRLabel;
      QRLabel14: TQRLabel;
      QRLabel16: TQRLabel;
      qVlrPago: TQRLabel;
      qSaldo: TQRLabel;
      PageFooterBand1: TQRBand;
      Lblvendedor: TQRLabel;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
      procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure DatalhesBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
    procedure dbCtaPagarBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelPagar_Quitadas: TFrmRelPagar_Quitadas;

implementation

uses Biblioteca, Global, FRelCtaReceber, FRelCtaPagar;

{$R *.DFM}

procedure TFrmRelPagar_Quitadas.FormCreate(Sender: TObject);
begin

   dbCtaPagar.close;
   dbCtaPagar.SQL.clear;
   dbCtaPagar.SQL.Add('SELECT * FROM VIEW_FIN_CTAPAGAR');
   dbCtaPagar.SQL.Add('WHERE');
   dbCtaPagar.SQL.Add('EMPRESA=:EMPRESA');
   dbCtaPagar.SQL.Add('AND');
   dbCtaPagar.SQL.Add('VENCIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL');
   dbCtaPagar.SQL.Add('AND');
   dbCtaPagar.SQL.Add('QUITADO='+QuotedStr('S'));

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



   dbCtaPagar.SQL.Add('ORDER BY VENCIMENTO, NOME_FORNECEDOR' );
   dbCtaPagar.ParamByName('DATAINICIAL').AsDateTime  := dtDataIni;
   dbCtaPagar.ParamByName('DATAFINAL').AsDateTime    := dtDataFim;
   dbCtaPagar.open;

   QuickRep.Preview;
   close;

end;

procedure TFrmRelPagar_Quitadas.dbCtaPagarBeforeOpen(DataSet: TDataSet);
begin
   dbCtaPagar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelPagar_Quitadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   dbCtaPagar.close;

   Action := caFree;
end;

procedure TFrmRelPagar_Quitadas.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   Flutuante := 0;
   Flutuante1 := 0;
   Flutuante2 := 0;
   // Lblvendedor.Caption:='Representante: '+TxtAuxiliar+'-'+dbCtaPagar.FieldByName('NOMEVEND').AsString;

end;

procedure TFrmRelPagar_Quitadas.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Flutuante := 0;

   // Saldo
   Flutuante := (Flutuante1 - Flutuante2);
   if Flutuante < 1 then
      Flutuante := 0;

   qReceber.Caption := FormatFloat('###,##0.00', Flutuante1);
   qVlrPago.Caption := FormatFloat('###,##0.00', Flutuante2);
   qSaldo.Caption   := FormatFloat('###,##0.00', Flutuante);

end;

procedure TFrmRelPagar_Quitadas.DatalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Flutuante1 := Flutuante1 + dbCtaPagar.FieldByName('VALOR').AsFloat;
   Flutuante2 := Flutuante2 + dbCtaPagar.FieldByName('VALOR_PAGO').AsFloat;
end;

end.
