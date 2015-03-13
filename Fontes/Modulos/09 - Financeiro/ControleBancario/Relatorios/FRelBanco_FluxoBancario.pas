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

unit FRelBanco_FluxoBancario;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   DBTables, DB, quickrpt, Qrctrls, ExtCtrls, Variants,
       QRPDFFilt,   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmRelBanco_FluxoBancario = class(TForm)
      QuickRep1: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRShape1: TQRShape;
      QRDBText1: TQRDBText;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Cabecalho: TQRBand;
      QRLabel2: TQRLabel;
      QRShape4: TQRShape;
      QRLabel9: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel10: TQRLabel;
      QRLabel11: TQRLabel;
      Datalhes: TQRBand;
      QRDBText2: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText5: TQRDBText;
      QRDBText6: TQRDBText;
      Vlr_Credito: TQRDBText;
      QuebraBanco: TQRGroup;
      QRLabel15: TQRLabel;
      QRDBText12: TQRDBText;
      TotalConta: TQRBand;
      QRShape5: TQRShape;
      db_MovtoBancario:  TFDQuery;
      ds_MovtoBancario: TDataSource;
      QRLabel6: TQRLabel;
      QRLabel12: TQRLabel;
      QRShape7: TQRShape;
      QRLabel14: TQRLabel;
      QRDBText3: TQRDBText;
      QRDBText8: TQRDBText;
      QRDBText10: TQRDBText;
      QRDBText13: TQRDBText;
      QRDBText7: TQRDBText;
      Vlr_Debito: TQRDBText;
      LBL_SALDOIC: TQRLabel;
      QRGroup1: TQRGroup;
      QRLabel16: TQRLabel;
      QRDBText9: TQRDBText;
      LBL_SALDOID: TQRLabel;
      LBL_SALDOFD: TQRLabel;
      LBL_SALDOFC: TQRLabel;
      TotalData: TQRBand;
      QRLabel13: TQRLabel;
      QRLabel17: TQRLabel;
      LBL_SALDODD: TQRLabel;
      LBL_SALDODC: TQRLabel;
      db_bancos: TFDQuery;
      db_CtaCorrente: TFDQuery;
      DB_SaldoCta: TFDQuery;
      DB_SaldoCtaDATA: TDateField;
      DB_SaldoCtaBANCO: TStringField;
      DB_SaldoCtaAGENCIA: TStringField;
      DB_SaldoCtaCTA_CORRENTE: TStringField;
      DB_SaldoCtaDOCUMENTO: TStringField;
      DB_SaldoCtaHISTORICO: TStringField;
      DB_SaldoCtaCREDITO: TBCDField;
      DB_SaldoCtaDEBITO: TBCDField;
      DB_SaldoCtaSALDO: TBCDField;
      DB_SaldoCtaORIGEM: TStringField;
      LBL_SALDOFIM: TQRLabel;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure DatalhesBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure QuebraBancoBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure TotalContaBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure FormCreate(Sender: TObject);
      procedure TotalDataBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
      procedure QuickRep1AfterPrint(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelBanco_FluxoBancario: TFrmRelBanco_FluxoBancario;

implementation

{$R *.DFM}

Uses FPrincipal, Global, Biblioteca, FRelMovbancario;

procedure TFrmRelBanco_FluxoBancario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFrmRelBanco_FluxoBancario.FormCreate(Sender: TObject);
var
   vCta, vselect: String;
begin

   vCta := FrmRelMovbancario.EditContaCorrente.text;

   if FrmRelMovbancario.chkContaCorrente.Checked = true then
   begin
      vselect := 'SELECT * FROM MOVTO_BANCARIO ';
      vselect := vselect + ' WHERE ';
      vselect := vselect + '(data >= :vData1 AND data <= :vData2) ';
      vselect := vselect + 'ORDER BY cta_corrente,data';
   end
   else
   begin
      vselect := ' SELECT * FROM MOVTO_BANCARIO ';
      vselect := vselect + ' WHERE ';
      vselect := vselect + ' CTA_CORRENTE=:CTA_CORRENTE ';
      vselect := vselect + ' AND ';
      vselect := vselect + ' data >=:vData1 AND data <=:vData2 ';
      vselect := vselect + ' ORDER BY cta_corrente, data';
   end;

   db_MovtoBancario.Close;
   db_MovtoBancario.SQL.Clear;
   db_MovtoBancario.SQL.Add(vselect);
   db_MovtoBancario.ParamByName('vData1').asDateTime :=      StrToDate(FrmRelMovbancario.FrameDatas1.MskDataIni.text);
   db_MovtoBancario.ParamByName('vData2').asDateTime :=      StrToDate(FrmRelMovbancario.FrameDatas1.MskDataFim.text);

   if not FrmRelMovbancario.chkContaCorrente.Checked then
      db_MovtoBancario.ParamByName('CTA_CORRENTE').AsString :=         FrmRelMovbancario.EditContaCorrente.text;

   db_MovtoBancario.Open;
   db_bancos.Open;
   db_CtaCorrente.Open;
   DB_SaldoCta.Open;

   QuickRep1.Preview;

   Close;

end;

procedure TFrmRelBanco_FluxoBancario.DatalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   if db_MovtoBancario.FieldByName('TIPO').AsString = 'CREDITO' then
   begin
      Vlr_Credito.enabled := true;
      Vlr_Debito.enabled := false;
      wFloat[1] := wFloat[1] + db_MovtoBancario.FieldByName('VALOR').AsFloat;
   end;

   if db_MovtoBancario.FieldByName('TIPO').AsString = 'DEBITO' then
   begin
      Vlr_Debito.enabled := true;
      Vlr_Credito.enabled := false;
      wFloat[0] := wFloat[0] + db_MovtoBancario.FieldByName('VALOR').AsFloat;
   end;

   LBL_SALDODC.Caption := FormatFloat('###,##0.00', wFloat[1]);
   LBL_SALDODD.Caption := FormatFloat('###,##0.00', wFloat[0]);

end;

procedure TFrmRelBanco_FluxoBancario.QuebraBancoBeforePrint
  (Sender: TQRCustomBand; var PrintBand: Boolean);
var
   vbanco, vagencia, vconta: string;
   vData: TDateTime;
begin

   wFloat[0] := 0;
   wFloat[1] := 0;

end;

procedure TFrmRelBanco_FluxoBancario.TotalContaBeforePrint
  (Sender: TQRCustomBand; var PrintBand: Boolean);
var
   vbanco, vagencia, vconta: string;
   vData: TDateTime;
begin

   LBL_SALDOFC.Caption := FormatFloat('###,##0.00', wFloat[3]);
   LBL_SALDOFD.Caption := FormatFloat('###,##0.00', wFloat[2]);
   // debito
   // wFloat[2]:=wFloat[2]+wFloat[0];

   // credito
   // wFloat[3]:=wFloat[3]+wFloat[1];

   wFloat[4] := 0;
   wFloat[4] := wFloat[3] - wFloat[2];

   if wFloat[4] < 0 then
      LBL_SALDOFIM.Font.Color := clRed
   else
      LBL_SALDOFIM.Font.Color := clBlue;

   LBL_SALDOFIM.Caption := FormatFloat('###,##0.00', wFloat[4]);

end;

procedure TFrmRelBanco_FluxoBancario.TotalDataBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
   vbanco, vagencia, vconta: string;
   vData: TDateTime;
begin

   // credito
   wFloat[3] := wFloat[3] + wFloat[1];

   // debito
   wFloat[2] := wFloat[2] + wFloat[0];

end;

procedure TFrmRelBanco_FluxoBancario.QuickRep1BeforePrint
  (Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   wFloat[0] := 0;
   wFloat[1] := 0;
   wFloat[2] := 0;
   wFloat[3] := 0;
   wFloat[4] := 0;
end;

procedure TFrmRelBanco_FluxoBancario.QuickRep1AfterPrint(Sender: TObject);
begin
   wFloat[0] := 0;
   wFloat[1] := 0;
   wFloat[2] := 0;
   wFloat[3] := 0;
   wFloat[4] := 0;
end;

end.
