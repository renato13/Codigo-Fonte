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

unit FRelPlanos;

interface

uses
   SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
   Forms, Dialogs, DBTables, DB, Qrctrls, quickrpt,
   ExtCtrls,     QRPDFFilt,   FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelPlanos = class(TForm)
      QuickRep: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Cabecalho: TQRBand;
      Datalhes: TQRBand;
      QRLabel6: TQRLabel;
      QRDBText5: TQRDBText;
      QRLabel13: TQRLabel;
      QRDBText10: TQRDBText;
      QRLabel14: TQRLabel;
      QRDBText11: TQRDBText;
      QuebraProduto: TQRGroup;
      QRDBText13: TQRDBText;
      TotalProduto: TQRBand;
      QRExpr4: TQRExpr;
      QRExpr5: TQRExpr;
      SummaryBand1: TQRBand;
      QRExpr9: TQRExpr;
      QRExpr10: TQRExpr;
      db_PlanoContas:  TFDQuery;
      QRLabel5: TQRLabel;
      QRDBText1: TQRDBText;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelPlanos: TFrmRelPlanos;

implementation

uses Global, Biblioteca, FRelPlanoContas;

{$R *.DFM}

procedure TFrmRelPlanos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFrmRelPlanos.FormCreate(Sender: TObject);
begin

   sqlMaster := '';
   sqlMaster := sqlMaster + ' SELECT  *  FROM VIEW_PLANOCONTAS ';

   if FrmRelPlanoContas.RadioG.ItemIndex = 1 then
   Begin
      sqlMaster := sqlMaster + ' WHERE ';
      sqlMaster := sqlMaster + ' TIPO=''DEBITO'' ';
   End;

   if FrmRelPlanoContas.RadioG.ItemIndex = 2 then
   Begin
      sqlMaster := sqlMaster + ' WHERE ';
      sqlMaster := sqlMaster + ' TIPO=''CREDITO'' ';
   End;

   sqlMaster := sqlMaster + ' ORDER BY PLANO, TIPO, CODIGO_PLANO  ';

   db_PlanoContas.Close;
   db_PlanoContas.SQL.clear;
   db_PlanoContas.SQL.Add(sqlMaster);
   db_PlanoContas.Open;

   QuickRep.Preview;
   Close;

end;

end.
