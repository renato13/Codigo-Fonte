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

unit FRelEntregas_Geral;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, QuickRpt, DB, SqlExpr, QRCtrls,
   FMTBcd, QRExport,    
   QRPDFFilt,   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmRelEntregas_Geral = class(TForm)
      QuickRep1: TQuickRep;
      DetailBand1: TQRBand;
      SummaryBand1: TQRBand;
      QRDBText1: TQRDBText;
      db_Entregas: TFDQuery;
      PageHeaderBand1: TQRBand;
      QrTitulo: TQRLabel;
      QQuantidade: TQRDBText;
      QRLabel10: TQRLabel;
      QRSysData1: TQRSysData;
      QRDBText4: TQRDBText;
      QRLabel13: TQRLabel;
      QProduzidos: TQRExpr;
      QRLabel11: TQRLabel;
      QRSysData2: TQRSysData;
      QRDBText2: TQRDBText;
      QRDBText3: TQRDBText;
      TitleBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRLabel3: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel4: TQRLabel;
      QRLabel7: TQRLabel;
      QrParametro: TQRLabel;
      qrStatus: TQRLabel;
      qrdbStatus: TQRDBText;
      qRegistros: TQRLabel;
      QRExpr1: TQRExpr;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelEntregas_Geral: TFrmRelEntregas_Geral;

implementation

uses FPrincipal, Biblioteca, Global, FRelEntregas;

{$R *.dfm}

procedure TFrmRelEntregas_Geral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_Entregas.Close;
   Action := caFree;

end;

procedure TFrmRelEntregas_Geral.FormCreate(Sender: TObject);
begin

   Flutuante1 := 0;
   Flutuante2 := 0;

   QrParametro.Caption := 'Periodo de entrega: ' +
     FrmRelEntregas.MskDataIni.Text + '  -  ' + FrmRelEntregas.MskDataFim.Text;
   dtDataIni := StrToDate(FrmRelEntregas.MskDataIni.Text);
   dtDataFim := StrToDate(FrmRelEntregas.MskDataFim.Text);

   // montar script da tabela Mestre
   sqlMaster := '';
   sqlMaster := sqlMaster + ' SELECT  A.*, B.CODIGO, B.NOME ';
   sqlMaster := sqlMaster + ' FROM ';
   sqlMaster := sqlMaster + ' ORCAMENTOS A,  CAD_CLIENTES B ';
   sqlMaster := sqlMaster + ' WHERE ';
   sqlMaster := sqlMaster + ' B.CODIGO=A.CLIENTE ';
   sqlMaster := sqlMaster + ' AND ';
   sqlMaster := sqlMaster + ' A.ENTREGA>=:Data1 AND A.ENTREGA<=:Data2 ';

   if FrmRelEntregas.RdPedidos.ItemIndex = 0 then
   Begin
      QrParametro.Caption := QrParametro.Caption +
        '     -     (Todos os tipos)';
      qrStatus.Enabled := True;
      qrdbStatus.Enabled := True;
   End;

   if FrmRelEntregas.RdPedidos.ItemIndex = 1 then
   Begin
      QrParametro.Caption := QrParametro.Caption + '     -     (Abertos)';
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' A.STATUS=''N'' ';
   End;

   if FrmRelEntregas.RdPedidos.ItemIndex = 2 then
   Begin
      QrParametro.Caption := QrParametro.Caption + '     -     (Cancelados)';
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' A.STATUS=''C'' ';
   End;

   if FrmRelEntregas.RdPedidos.ItemIndex = 3 then
   Begin
      QrParametro.Caption := QrParametro.Caption + '     -     (Faturados)';
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' A.STATUS=''S'' ';
   End;

   sqlMaster := sqlMaster + ' ORDER BY  ' + strOrdemDados;

   db_Entregas.Close;
   db_Entregas.SQL.clear;
   db_Entregas.SQL.Add(sqlMaster);
   db_Entregas.ParamByName('Data1').AsDateTime := dtDataIni;
   db_Entregas.ParamByName('Data2').AsDateTime := dtDataFim;
   db_Entregas.Open;

   // visualizar
   QuickRep1.Preview;
   Close;

end;

end.
