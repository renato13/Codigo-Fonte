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

unit FRelFuncionarioHistoricos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   DBTables, DB, quickrpt, Qrctrls, ExtCtrls,
       QRPDFFilt,   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmRelFuncionarioHistoricos = class(TForm)
      QuickRep: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Datalhes: TQRBand;
      QRDBText4: TQRDBText;
      QRDBText5: TQRDBText;
      QRDBText6: TQRDBText;
      Vlr_Debitox: TQRDBText;
      QuebraData: TQRGroup;
      TotalData: TQRBand;
      ColumnHeaderBand1: TQRBand;
      QRLabel19: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel20: TQRLabel;
      SummaryBand1: TQRBand;
      QRLabel6: TQRLabel;
      db_CaixaFuncionarios:  TFDQuery;
      db_CaixaFuncionariosCODIGO: TIntegerField;
      db_CaixaFuncionariosFUNCIONARIO: TStringField;
      db_CaixaFuncionariosDATA: TDateField;
      db_CaixaFuncionariosVENCIMENTO: TDateField;
      db_CaixaFuncionariosDOCUMENTO: TStringField;
      db_CaixaFuncionariosTIPO: TStringField;
      db_CaixaFuncionariosDEPARTAMENTO: TStringField;
      db_CaixaFuncionariosHISTORICO: TStringField;
      db_CaixaFuncionariosVALOR: TBCDField;
      db_CaixaFuncionariosQUITADO: TStringField;
      db_CaixaFuncionariosNomeFuncionario: TStringField;
      db_Vendedores: TFDQuery;
      QRLabel9: TQRLabel;
      QRDBText2: TQRDBText;
      QRLabel2: TQRLabel;
      QRDBText1: TQRDBText;
      QRLabel5: TQRLabel;
      QRDBText3: TQRDBText;
      QRExpr1: TQRExpr;
      QRExpr2: TQRExpr;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelFuncionarioHistoricos: TFrmRelFuncionarioHistoricos;

implementation

uses FPrincipal, Global, FRelMovCaixa, Biblioteca, FRelFuncionarios;

{$R *.DFM}

procedure TFrmRelFuncionarioHistoricos.FormCreate(Sender: TObject);
begin

   sqlMaster := '    SELECT * FROM CAIXA_FUNCIONARIO ';
   sqlMaster := sqlMaster + '  Where ';
   sqlMaster := sqlMaster + '  (DATA >= :Data1 AND DATA <= :Data2) ';

   if not FrmRelFuncionarios.chkPFunc.checked then
   Begin
      sqlMaster := sqlMaster + 'AND FUNCIONARIO=:FUNCIONARIO ';
   End;

   // sqlMaster := sqlMaster+'ORDER BY CONTA, DATAMOVTO';
   sqlMaster := sqlMaster + 'ORDER BY DATA, FUNCIONARIO';

   db_CaixaFuncionarios.Close;
   db_CaixaFuncionarios.SQL.Clear;
   db_CaixaFuncionarios.SQL.Add(sqlMaster);
   db_CaixaFuncionarios.ParamByName('data1').AsDateTime :=
     StrToDate(FrmRelFuncionarios.MskDataIni.text);
   db_CaixaFuncionarios.ParamByName('data2').AsDateTime :=
     StrToDate(FrmRelFuncionarios.MskDataFim.text);

   if not FrmRelFuncionarios.chkPFunc.checked then
   Begin
      db_CaixaFuncionarios.ParamByName('FUNCIONARIO').Value :=
        FrmRelFuncionarios.DCodFunc.text;
   End;

   db_CaixaFuncionarios.Open;

   QuickRep.Preview;
   Close;

end;

procedure TFrmRelFuncionarioHistoricos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_CaixaFuncionarios.Close;

   Action := caFree;
end;

end.
