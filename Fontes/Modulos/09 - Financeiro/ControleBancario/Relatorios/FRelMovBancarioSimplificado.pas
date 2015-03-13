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

unit FRelMovBancarioSimplificado;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   quickrpt, Qrctrls, ExtCtrls, DBTables, DB,
       QRPDFFilt,
   QRXMLSFilt, QRWebFilt, QRExport,   FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelMovBancarioSimplificado = class(TForm)
      QuickRep: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel11: TQRLabel;
      Datalhes: TQRBand;
      Vlr_Credito: TQRDBText;
      QRDBText3: TQRDBText;
      QRDBText2: TQRDBText;
      Sql_MovtoBancario:  TFDQuery;
      SummaryBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRLabel6: TQRLabel;
      Vlr_Debito: TQRDBText;
      Vlr_SaldoAtual: TQRDBText;
      QRLabel12: TQRLabel;
      Vlr_SaldoAnterior: TQRDBText;
      QRDBText6: TQRDBText;
      QRExpr5: TQRExpr;
      QRExpr2: TQRExpr;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelMovBancarioSimplificado: TFrmRelMovBancarioSimplificado;

implementation

uses FPrincipal, Global, Biblioteca, FRelMovbancario;

{$R *.DFM}

procedure TFrmRelMovBancarioSimplificado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Sql_MovtoBancario.Close;

   Action := caFree;
end;

procedure TFrmRelMovBancarioSimplificado.FormCreate(Sender: TObject);
begin

   Sql_MovtoBancario.Params.Clear;

   sqlMaster :=
     ' SELECT * FROM SP_BANCO_SALDO_01(:DATA1, :DATA2, :SLDANTERIOR, :PLANO_CTA) ';

   Sql_MovtoBancario.Close;
   Sql_MovtoBancario.SQL.Clear;
   Sql_MovtoBancario.SQL.Add(sqlMaster);
   Sql_MovtoBancario.ParamByName('data1').AsDateTime :=      StrToDate(FrmRelMovbancario.FrameDatas1.MskDataIni.Text);
   Sql_MovtoBancario.ParamByName('data2').AsDateTime :=      StrToDate(FrmRelMovbancario.FrameDatas1.MskDataFim.Text);

   // Informar se deve ou não Incluir o Saldo Anterior
   if (FrmRelMovbancario.RadioGSaldoAnterior.ItemIndex = 0) then
      Sql_MovtoBancario.ParamByName('SLDANTERIOR').AsString := 'S'
   Else
      Sql_MovtoBancario.ParamByName('SLDANTERIOR').AsString := 'N';

   if not FrmRelMovbancario.chkPlanoConta.checked then
   Begin
      Sql_MovtoBancario.ParamByName('PLANO_CTA').AsString :=         FrmRelMovbancario.EditPlanoContas.Text;
   End;
   Sql_MovtoBancario.Open;

   QuickRep.Preview;
   Close;

end;

end.
