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

unit FRelReceb_Historico;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, Db, DBTables, Qrctrls, QuickRpt, QRPrntr, QRExport,
   StdCtrls,     QRPDFFilt,  
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelReceb_Historico = class(TForm)
      PageHeaderBand1: TQRBand;
      DSCtaReceber: TDataSource;
      QRLabel2: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      Datalhes: TQRBand;
      QuebraBanco: TQRGroup;
      QRLabel15: TQRLabel;
      Cabecalho: TQRBand;
      TotalOperacao: TQRBand;
      SummaryBand1: TQRBand;
      ADO_CtaReceber:  TFDQuery;
      QRDBText5: TQRDBText;
      QRLabel6: TQRLabel;
      QRLabel7: TQRLabel;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRLabel10: TQRLabel;
      QRLabel12: TQRLabel;
      QRDBText9: TQRDBText;
      QRLabel13: TQRLabel;
      lbl_situacao: TQRLabel;
      QuickRep: TQuickRep;
      QRDBText10: TQRDBText;
      QRLabel11: TQRLabel;
      PageFooterBand1: TQRBand;
      QRDBText8: TQRDBText;
      QRShape1: TQRShape;
      xSaldo: TQRLabel;
      xVlrPago: TQRLabel;
      xReceber: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel14: TQRLabel;
      QRLabel16: TQRLabel;
      QRLabel4: TQRLabel;
      qSaldo: TQRLabel;
      qVlrPago: TQRLabel;
      qReceber: TQRLabel;
      QRLabel19: TQRLabel;
      QRLabel20: TQRLabel;
      QRShape2: TQRShape;
      QRLabel8: TQRLabel;
      QRLabel17: TQRLabel;
      QRDBText1: TQRDBText;
      QRLabel1: TQRLabel;
      QRLabel18: TQRLabel;
      QRDBText4: TQRDBText;
      QRLabel21: TQRLabel;
      QRDBText11: TQRDBText;
      QRDBText2: TQRDBText;
      QRLabel3: TQRLabel;
      QRDBText12: TQRDBText;
      QRLabel22: TQRLabel;
      QRLabel23: TQRLabel;
      Lblvendedor: TQRLabel;
      QRDBText13: TQRDBText;
      QRLabel24: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure DatalhesBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
      procedure TotalOperacaoBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure TotalOperacaoAfterPrint(Sender: TQRCustomBand;
        BandPrinted: Boolean);
    procedure ADO_CtaReceberBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }

      xFlutuante, xFlutuante1, xFlutuante2: Real;

   public
      { Public declarations }
   end;

var
   FrmRelReceb_Historico: TFrmRelReceb_Historico;

implementation

uses Biblioteca, FRelCtaReceber, Global, FPrincipal, FBaseDados;

{$R *.DFM}

procedure TFrmRelReceb_Historico.FormCreate(Sender: TObject);
begin

   vSelect := '         select * from view_fin_ctareceber ';
   vSelect := vSelect + ' WHERE  ';
   vSelect := vSelect + ' EMPRESA=:EMPRESA  ';
   vSelect := vSelect + ' AND  ';
   vSelect := vSelect + strBorderos;
   vSelect := vSelect + ' AND  ';

   if FrmRelCtaReceber.rAgrupar.ItemIndex=0 then
      vSelect := vSelect + ' (VENCIMENTO>=:data1 AND VENCIMENTO<=:data2) ';

   if FrmRelCtaReceber.rAgrupar.ItemIndex=1 then
      vSelect := vSelect + ' (DATA>=:data1 AND DATA<=:data2) ';

   if FrmRelCtaReceber.rAgrupar.ItemIndex=2 then
      vSelect := vSelect + ' (DATA_PAGTO>=:data1 AND DATA_PAGTO<=:data2) ';


   If FrmRelCtaReceber.chkClientes.Checked = False Then
   Begin
      vSelect := vSelect + ' AND   ';
      vSelect := vSelect + ' CLIENTE=''' + strCliente + ''' ';
   End;

   if not FrmRelCtaReceber.chkRepres.Checked then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' VENDEDOR=:vendedor01 ';
   End;

   if not FrmRelCtaReceber.chkContaCaixa.Checked then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' CONTACAIXA=' + (strContaCaixa);
   End;

   if not FrmRelCtaReceber.chkCarteira.Checked then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' CARTEIRA=' + (strCarteira);
   End;

   if not FrmRelCtaReceber.chkContaBancaria.Checked then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' CONTACORRENTE='+strContaCorrente;
   End;

   if not FrmRelCtaReceber.chkFormaPagto.Checked then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' FORMAPAGAMENTO='+strFormaPagamento;
   End;


   if not FrmRelCtaReceber.chkTipoDocumento.Checked then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' ESPECIE='+QuotedStr(strTipoDocumento);
   End;

   vSelect := vSelect + ' ORDER BY ' + strOrdemDados;

   ADO_CtaReceber.close;
   ADO_CtaReceber.SQL.clear;
   ADO_CtaReceber.SQL.Add(vSelect);
   ADO_CtaReceber.ParamByName('data1').AsDateTime := dtDataIni;
   ADO_CtaReceber.ParamByName('data2').AsDateTime := dtDataFim;
   If not FrmRelCtaReceber.chkRepres.Checked then
   Begin
      Lblvendedor.Enabled := true;
      ADO_CtaReceber.ParamByName('vendedor01').Value := strVendedor;
   End;
   ADO_CtaReceber.open;

   QuebraBanco.Expression := 'ADO_CtaReceber.' + Agrupar;
   QuickRep.Preview;
   close;

end;

procedure TFrmRelReceb_Historico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   ADO_CtaReceber.close;

   Action := caFree;

end;

procedure TFrmRelReceb_Historico.ADO_CtaReceberBeforeOpen(DataSet: TDataSet);
begin
   ADO_CtaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelReceb_Historico.DatalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   if ADO_CtaReceber.FieldByName('QUITADO').AsString <> 'SIM' then
   Begin
      lbl_situacao.caption := 'A RECEBER';
      lbl_situacao.Font.Color := clRed;
   End
   else
   Begin
      lbl_situacao.caption := 'QUITADO';
      lbl_situacao.Font.Color := clBlack;
   End;

   if (ADO_CtaReceber.FieldByName('COMPLEMENTAR').AsString <> 'S') then
   begin
      Flutuante1 := Flutuante1 + ADO_CtaReceber.FieldByName('VALOR').AsFloat;
   end;

   Flutuante2 := Flutuante2 + ADO_CtaReceber.FieldByName('VALOR_PAGO').AsFloat;

   if (ADO_CtaReceber.FieldByName('COMPLEMENTAR').AsString <> 'S') then
   begin
      xFlutuante1 := xFlutuante1 + ADO_CtaReceber.FieldByName('VALOR').AsFloat;
   end;

   xFlutuante2 := xFlutuante2 + ADO_CtaReceber.FieldByName
     ('VALOR_PAGO').AsFloat;

end;

procedure TFrmRelReceb_Historico.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   Flutuante := 0;

   // Saldo
   Flutuante := (Flutuante1 - Flutuante2);

   qReceber.caption := FormatFloat('###,##0.00', Flutuante1);
   qVlrPago.caption := FormatFloat('###,##0.00', Flutuante2);
   qSaldo.caption := FormatFloat('###,##0.00', Flutuante);

End;

procedure TFrmRelReceb_Historico.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   Flutuante := 0;
   Flutuante1 := 0;
   Flutuante2 := 0;

   xFlutuante := 0;
   xFlutuante1 := 0;
   xFlutuante2 := 0;

   // Lblvendedor.Caption:='Representante: '+sCodVendedor+'-'+ADO_CtaReceber.FieldByName('NOMEVEND').AsString;

end;

procedure TFrmRelReceb_Historico.TotalOperacaoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   xFlutuante := 0;

   // Saldo
   xFlutuante := (xFlutuante1 - xFlutuante2);

   xReceber.caption := FormatFloat('###,##0.00', xFlutuante1);
   xVlrPago.caption := FormatFloat('###,##0.00', xFlutuante2);
   xSaldo.caption := FormatFloat('###,##0.00', xFlutuante);

end;

procedure TFrmRelReceb_Historico.TotalOperacaoAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   xFlutuante := 0;
   xFlutuante1 := 0;
   xFlutuante2 := 0;

end;

end.
