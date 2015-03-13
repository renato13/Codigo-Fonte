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

unit FRelReceb_ContaCorrente;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, quickrpt, Qrctrls, Db, DBTables, QRPrntr, QRExport, QRPDFFilt;

type
   TFrmRelReceb_ContaCorrente = class(TForm)
      TblFornecedor: TTable;
      DSCtaPagar: TDataSource;
      TblFPagto: TTable;
      Qry_CtaPagar: TQuery;
      QuickRep: TQuickRep;
      PageHeaderBand1: TQRBand;
      QRDBText1: TQRDBText;
      QRLabel2: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel10: TQRLabel;
      Datalhes: TQRBand;
      QRDBText3: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRDBText9: TQRDBText;
      lbl_situacao: TQRLabel;
      QuebraBanco: TQRGroup;
      QRLabel15: TQRLabel;
      QRDBText5: TQRDBText;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      QRLabel1: TQRLabel;
      QRLabel6: TQRLabel;
      QRLabel7: TQRLabel;
      QRLabel12: TQRLabel;
      QRLabel13: TQRLabel;
      TotalOperacao: TQRBand;
      QRLabel4: TQRLabel;
      QRExpr4: TQRExpr;
      SummaryBand1: TQRBand;
      QRLabel5: TQRLabel;
      QRExpr6: TQRExpr;
      QRDBText2: TQRDBText;
      QRLabel3: TQRLabel;
      QRLabel8: TQRLabel;
      QRDBText8: TQRDBText;
      QRDBText10: TQRDBText;
      QRPDFFilter1: TQRPDFFilter;
      procedure FormCreate(Sender: TObject);
      procedure Qry_CtaPagarAfterOpen(DataSet: TDataSet);
      procedure Qry_CtaPagarAfterClose(DataSet: TDataSet);
      procedure DatalhesBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelReceb_ContaCorrente: TFrmRelReceb_ContaCorrente;

implementation

uses FRelCtaReceber, FPrincipal, Biblioteca, Global;

{$R *.DFM}

procedure TFrmRelReceb_ContaCorrente.FormCreate(Sender: TObject);
begin

   vSelect := ' SELECT A.*, B.FORNECEDORES FROM CtaPagar ';
   vSelect := vSelect +
     ' WHERE                                                         ';
   vSelect := vSelect +
     ' A.FORNEC=B.FORNEC AND                                         ';
   vSelect := vSelect +
     ' A.DOCUMENTO=B.DOCUMENTO AND                                   ';
   vSelect := vSelect +
     ' A.DATA=B.DATA AND                                             ';
   vSelect := vSelect + ' A.FORNEC=''' + strCliente + ''' ';
   vSelect := vSelect + ' AND (B.VENC>=:data1 AND B.VENC<=:data2) ';
   vSelect := vSelect + ' AND B.QUITADO<>"S" ';
   vSelect := vSelect +
     ' ORDER BY A.CONTA_C, B.DOCUMENTO, B.VENC                      ';

   Qry_CtaPagar.close;
   Qry_CtaPagar.SQL.clear;
   Qry_CtaPagar.SQL.Add(vSelect);
   Qry_CtaPagar.ParamByName('data1').AsDateTime :=
     StrToDate(FrmRelCtaReceber.MskDataIni.text);
   Qry_CtaPagar.ParamByName('data2').AsDateTime :=
     StrToDate(FrmRelCtaReceber.MskDataFim.text);
   Qry_CtaPagar.open;

   QuickRep.Preview;
   close;
end;

procedure TFrmRelReceb_ContaCorrente.Qry_CtaPagarAfterOpen(DataSet: TDataSet);
begin
   TblFPagto.open;
   TblFornecedor.open;
end;

procedure TFrmRelReceb_ContaCorrente.Qry_CtaPagarAfterClose(DataSet: TDataSet);
begin
   TblFPagto.close;
   TblFornecedor.close;
end;

procedure TFrmRelReceb_ContaCorrente.DatalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   if Qry_CtaPagar.FieldByName('QUITADO_1').AsString <> 'S' then
   Begin
      lbl_situacao.caption := 'A PAGAR';
      lbl_situacao.Font.Color := clRed;
   End
   else
   Begin
      lbl_situacao.caption := 'QUITADO';
      lbl_situacao.Font.Color := clBlack;
   End;

end;

procedure TFrmRelReceb_ContaCorrente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;

end;

end.
