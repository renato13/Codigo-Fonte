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



unit FRelEtiquetaCliente;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, DBTables, ExtCtrls, quickrpt, Qrctrls,    
   QRPDFFilt,   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmEtiquetaCliente = class(TForm)
      DB_Clientes:  TFDQuery;
      Prever: TQuickRep;
      DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmEtiquetaCliente: TFrmEtiquetaCliente;

implementation

uses FPrincipal, FBaseDados, Global,
   FRelClientes, FRelClientesMalaDireta;

{$R *.DFM}

procedure TFrmEtiquetaCliente.FormCreate(Sender: TObject);
begin

   DB_Clientes.Close;
   DB_Clientes.SQL.clear;
   DB_Clientes.SQL.Add(' SELECT * from VIEW_CLIENTES ');
   DB_Clientes.SQL.Add(' WHERE ');
   DB_Clientes.SQL.Add(' CODIGO>0');
   DB_Clientes.SQL.Add(' ');

   If not FrmRelClientesMalaDireta.chkCliente.Checked Then
   Begin
      DB_Clientes.SQL.Add('AND');
      DB_Clientes.SQL.Add('CODIGO='+QuotedStr(strCliente));
   End;

   If not FrmRelClientesMalaDireta.chkVendedor.Checked Then
   Begin
      DB_Clientes.SQL.Add('AND');
      DB_Clientes.SQL.Add('VENDEDOR='+QuotedStr(strVendedor));
   End;

   If not FrmRelClientesMalaDireta.chkCidade.Checked Then
   Begin
      //DB_Clientes.SQL.Add('AND');
      //DB_Clientes.SQL.Add('CODIGOCIDADE='+QuotedStr(sCodCidade));

      DB_Clientes.SQL.Add('AND');
      DB_Clientes.SQL.Add('UPPER(CODIGOCIDADE) LIKE '+QuotedStr('%'+strCidade+'%'));


   End;

   If not FrmRelClientesMalaDireta.chkEstado.Checked Then
   Begin
      DB_Clientes.SQL.Add('AND');
      DB_Clientes.SQL.Add('UF='+QuotedStr(strEstado));
   End;

   DB_Clientes.SQL.Add('ORDER BY ' + strOrdemDados);
   DB_Clientes.Open;

   Prever.Preview;
   Close;

end;

procedure TFrmEtiquetaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   // DB_Clientes.Close;
   Action := cafree;
end;

end.
