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

unit FRel_PedidosOrcamento;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, QuickRpt, DB, SqlExpr, QRCtrls,
   QRExport,    
   QRPDFFilt,   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmRel_PedidosOrcamento = class(TForm)
      QuickRep1: TQuickRep;
      DetailBand1: TQRBand;
      SummaryBand1: TQRBand;
      QRDBText1: TQRDBText;
      ADO_Pedidos:  TFDQuery;
      PageHeaderBand1: TQRBand;
      QrTitulo: TQRLabel;
      QQuantidade: TQRDBText;
      DS_Pedidos: TDataSource;
      QRLabel10: TQRLabel;
      QRSysData1: TQRSysData;
      QRDBText4: TQRDBText;
      QRLabel13: TQRLabel;
      QProduzidos: TQRExpr;
      QRLabel11: TQRLabel;
      QRSysData2: TQRSysData;
      QRDBText2: TQRDBText;
      QRDBText3: TQRDBText;
      QRTextFilter1: TQRTextFilter;
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
      QRPDFFilter1: TQRPDFFilter;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRel_PedidosOrcamento: TFrmRel_PedidosOrcamento;

implementation

uses FPrincipal, Biblioteca, FRelPedidos, Global;

{$R *.dfm}

procedure TFrmRel_PedidosOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   ADO_Pedidos.Close;
   Action := caFree;
end;

procedure TFrmRel_PedidosOrcamento.FormCreate(Sender: TObject);
begin

   Flutuante1 := 0;
   Flutuante2 := 0;

   QrParametro.Caption := 'Periodo de entrega: ' + FrmRelPedidos.MskDataIni.Text
     + '  -  ' + FrmRelPedidos.MskDataFim.Text;
   dtDataIni := StrToDate(FrmRelPedidos.MskDataIni.Text);
   dtDataFim := StrToDate(FrmRelPedidos.MskDataFim.Text);

   // montar script da tabela Mestre
   sqlMaster := '';
   sqlMaster := sqlMaster + ' SELECT  A.*, B.CODIGO, B.NOME ';
   sqlMaster := sqlMaster + ' FROM ';
   sqlMaster := sqlMaster + ' ORCAMENTOS A,  CLIENTES B ';
   sqlMaster := sqlMaster + ' WHERE ';
   sqlMaster := sqlMaster + ' B.CODIGO=A.CLIENTE ';
   sqlMaster := sqlMaster + ' AND ';
   sqlMaster := sqlMaster + ' A.ENTREGA>=:Data1 AND A.ENTREGA<=:Data2 ';
   sqlMaster := sqlMaster + ' AND ';
   sqlMaster := sqlMaster + ' A.TIPO=''C'' ';

   if FrmRelPedidos.RdPedidos.ItemIndex = 0 then
   Begin
      QrParametro.Caption := QrParametro.Caption +
        '     -     (Todos os tipos)';
      qrStatus.Enabled := True;
      qrdbStatus.Enabled := True;
   End;

   if FrmRelPedidos.RdPedidos.ItemIndex = 1 then
   Begin
      QrParametro.Caption := QrParametro.Caption + '     -     (Abertos)';
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' A.STATUS=''A'' ';
   End;

   if FrmRelPedidos.RdPedidos.ItemIndex = 2 then
   Begin
      QrParametro.Caption := QrParametro.Caption + '     -     (Cancelados)';
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' A.STATUS=''C'' ';
   End;

   sqlMaster := sqlMaster + ' ORDER BY  ' + strOrdemDados;

   ADO_Pedidos.Close;
   ADO_Pedidos.SQL.clear;
   ADO_Pedidos.SQL.Add(sqlMaster);
   ADO_Pedidos.ParamByName('Data1').AsDateTime := dtDataIni;
   ADO_Pedidos.ParamByName('Data2').AsDateTime := dtDataFim;
   ADO_Pedidos.Open;

   // visualizar
   QuickRep1.Preview;
   Close;

end;

end.
