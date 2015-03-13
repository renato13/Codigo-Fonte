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

unit FRelReceb_Quitadas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   DBTables, Db, Qrctrls, QuickRpt, ExtCtrls, QRExport, StdCtrls,
       QRPDFFilt,   Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelReceb_Quitadas = class(TForm)
      ADO_CtaReceber:  TFDQuery;
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
    LblAgrupar: TQRLabel;
      QRDBText5: TQRDBText;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      QRLabel1: TQRLabel;
      QRLabel6: TQRLabel;
      QRLabel12: TQRLabel;
      QRLabel3: TQRLabel;
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
      QRDBText8: TQRDBText;
      Lblvendedor: TQRLabel;
      QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
      procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure DatalhesBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
    procedure ADO_CtaReceberBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelReceb_Quitadas: TFrmRelReceb_Quitadas;

implementation

uses Biblioteca, Global, FRelCtaReceber, FPrincipal;

{$R *.DFM}

procedure TFrmRelReceb_Quitadas.FormCreate(Sender: TObject);
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


   vSelect := vSelect + ' AND  ';
   vSelect := vSelect + ' QUITADO=''SIM'' ';

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

   // vSelect := vSelect+' ORDER BY B.VENC, '+OrdemDados;
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
   LblAgrupar.Caption := strNomeAgrupamento;
   QuickRep.Preview;
   close;

end;

procedure TFrmRelReceb_Quitadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   ADO_CtaReceber.close;

   Action := caFree;
end;

procedure TFrmRelReceb_Quitadas.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   Flutuante := 0;
   Flutuante1 := 0;
   Flutuante2 := 0;
   // Lblvendedor.Caption:='Representante: '+sCodVendedor+'-'+ADO_CtaReceber.FieldByName('NOMEVEND').AsString;

end;

procedure TFrmRelReceb_Quitadas.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Flutuante := 0;

   // Saldo
   Flutuante := (Flutuante1 - Flutuante2);

   qReceber.Caption := FormatFloat('###,##0.00', Flutuante1);
   qVlrPago.Caption := FormatFloat('###,##0.00', Flutuante2);
   qSaldo.Caption := FormatFloat('###,##0.00', Flutuante);

end;

procedure TFrmRelReceb_Quitadas.ADO_CtaReceberBeforeOpen(DataSet: TDataSet);
begin
   ADO_CtaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelReceb_Quitadas.DatalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   if (ADO_CtaReceber.FieldByName('COMPLEMENTAR').AsString <> 'S') then
   begin
      Flutuante1 := Flutuante1 + ADO_CtaReceber.FieldByName('VALOR').AsFloat;
   end;

   Flutuante2 := Flutuante2 + ADO_CtaReceber.FieldByName('VALOR_PAGO').AsFloat;

end;

end.
