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

unit FRelVeiculosHistorico;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   DBTables, DB, quickrpt, Qrctrls, ExtCtrls,
       QRPDFFilt,   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmRelVeiculosHistorico = class(TForm)
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
      QRDBText3: TQRDBText;
      QRDBText10: TQRDBText;
      QRDBText11: TQRDBText;
      QuebraData: TQRGroup;
      QRLabel9: TQRLabel;
      QRDBText2: TQRDBText;
      TotalData: TQRBand;
      ColumnHeaderBand1: TQRBand;
      QRLabel19: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel11: TQRLabel;
      QRLabel12: TQRLabel;
      SummaryBand1: TQRBand;
      db_veiculos:  TFDQuery;
      QRExpr1: TQRExpr;
      QRExpr2: TQRExpr;
      QRExpr3: TQRExpr;
      QRExpr4: TQRExpr;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelVeiculosHistorico: TFrmRelVeiculosHistorico;

implementation

uses FPrincipal, Global, FRelMovCaixa, Biblioteca, FRelFuncionarios,
   FRelVeiculos;

{$R *.DFM}

procedure TFrmRelVeiculosHistorico.FormCreate(Sender: TObject);
begin


   sqlMaster := ' SELECT * FROM VIEW_VEICULO ';
   sqlMaster := sqlMaster + ' WHERE ';
   sqlMaster := sqlMaster + ' CLIENTE>0 ';
   if not FrmRelVeiculos.chkCliente.checked then
   Begin
      sqlMaster := sqlMaster + 'AND CLIENTE=:CLIENTE ';
   End;

   if not FrmRelVeiculos.ChkVeiculo.checked then
   Begin
      sqlMaster := sqlMaster + 'AND CODIGO=:CODIGO ';
   End;

   // sqlMaster := sqlMaster+'ORDER BY CONTA, DATAMOVTO';
   sqlMaster := sqlMaster + 'ORDER BY VEICULO, DATA, COD_CLIENTE ';

   db_veiculos.Close;
   db_veiculos.SQL.Clear;
   db_veiculos.SQL.Add(sqlMaster);

   if not FrmRelVeiculos.chkCliente.checked then
   Begin
      db_veiculos.ParamByName('CLIENTE').Value := strCliente;
   End;

   db_veiculos.Open;

   QuickRep.Preview;
   Close;

end;

procedure TFrmRelVeiculosHistorico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_veiculos.Close;

   Action := caFree;
end;

end.
