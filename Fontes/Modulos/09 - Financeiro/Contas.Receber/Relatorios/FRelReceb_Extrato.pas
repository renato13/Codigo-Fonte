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

unit FRelReceb_Extrato;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, Db, DBTables, Qrctrls, QuickRpt, QRPrntr, QRExport,
   StdCtrls,     QRPDFFilt,   Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelReceb_Extrato = class(TForm)
      PageHeaderBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      Datalhes: TQRBand;
      QRDBText3: TQRDBText;
      QRDBText4: TQRDBText;
      QuebraBanco: TQRGroup;
    LblAgrupar: TQRLabel;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      QRLabel1: TQRLabel;
      TotalOperacao: TQRBand;
      SummaryBand1: TQRBand;
      ADO_CtaReceber: TFDQuery;
      QRDBText5: TQRDBText;
      QRLabel4: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel6: TQRLabel;
      QRDBText6: TQRDBText;
      QRLabel10: TQRLabel;
      QRLabel12: TQRLabel;
    lblValor: TQRDBText;
      QRExpr4: TQRExpr;
      QRExpr6: TQRExpr;
      QRLabel13: TQRLabel;
      lbl_situacao: TQRLabel;
      QuickRep: TQuickRep;
    lblValorPago: TQRDBText;
      QRLabel11: TQRLabel;
      QRExpr1: TQRExpr;
      QRExpr2: TQRExpr;
      QRShape1: TQRShape;
      qReceber: TQRLabel;
      QRLabel14: TQRLabel;
      QRLabel16: TQRLabel;
      qVlrPago: TQRLabel;
      qSaldo: TQRLabel;
      Lblvendedor: TQRLabel;
      QRSysData3: TQRSysData;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText12: TQRDBText;
    QRExpr3: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel19: TQRLabel;
    QRDBText13: TQRDBText;
    QRExpr9: TQRExpr;
    QRLabel20: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText10: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure DatalhesBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
    procedure ADO_CtaReceberBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelReceb_Extrato: TFrmRelReceb_Extrato;

implementation

uses Biblioteca, FRelCtaReceber, Global, FPrincipal, FBaseDados;

{$R *.DFM}

procedure TFrmRelReceb_Extrato.FormCreate(Sender: TObject);
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

   Flutuante1 := 0;
   Flutuante2 := 0;

   QuebraBanco.Expression := 'ADO_CtaReceber.' + Agrupar;
   LblAgrupar.Caption := strNomeAgrupamento;

   QuickRep.Preview;
   close;
end;

procedure TFrmRelReceb_Extrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   ADO_CtaReceber.close;

   FreeAndNil(FrmRelReceb_Extrato);

end;

procedure TFrmRelReceb_Extrato.ADO_CtaReceberBeforeOpen(DataSet: TDataSet);
begin
   ADO_CtaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelReceb_Extrato.DatalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   if ADO_CtaReceber.FieldByName('QUITADO').AsString <> 'SIM' then
   Begin
      lbl_situacao.caption := 'RECEBER';
      lbl_situacao.Font.Color := clRed;
   End
   else
   Begin
      lbl_situacao.caption := 'PAGO';
      lbl_situacao.Font.Color := clBlack;
   End;

   {
     if (ADO_CtaReceber.FieldByName('COMPLEMENTAR').AsString<>'S') then
     begin
     Flutuante1:=Flutuante1+ADO_CtaReceber.FieldByName('VALOR').AsFloat;
     end;
   }

   if (ADO_CtaReceber.FieldByName('VALOR').AsFloat=0)       and
      (ADO_CtaReceber.FieldByName('VALOR_PAGO').AsFloat=0) then
   begin
      lblValor.Enabled     :=false;
      lblValorPago.Enabled :=false;
      lbl_situacao.caption := '';
   end
   else
   begin
      lblValor.Enabled     :=true;
      lblValorPago.Enabled :=true;
   end;

   Flutuante1 := Flutuante1 + ADO_CtaReceber.FieldByName('VALOR').AsFloat;
   Flutuante2 := Flutuante2 + ADO_CtaReceber.FieldByName('VALOR_PAGO').AsFloat;

end;

procedure TFrmRelReceb_Extrato.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Flutuante := 0;

   // Saldo
   Flutuante := (Flutuante1 - Flutuante2);
   if Flutuante < 0 then
     Flutuante :=0;

   qReceber.caption := FormatFloat('###,##0.00', Flutuante1);
   qVlrPago.caption := FormatFloat('###,##0.00', Flutuante2);
   qSaldo.caption   := FormatFloat('###,##0.00', Flutuante);

End;

procedure TFrmRelReceb_Extrato.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   Flutuante := 0;
   Flutuante1 := 0;
   Flutuante2 := 0;

   // Lblvendedor.Caption:='Representante: '+sCodVendedor+'-'+ADO_CtaReceber.FieldByName('NOMEVEND').AsString;

end;

end.
