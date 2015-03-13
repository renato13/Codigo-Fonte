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

unit FRelReceb_CobAgendadas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, Db, DBTables, Qrctrls, QuickRpt, QRPrntr, QRExport,
   StdCtrls,     QRPDFFilt,   FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelReceb_CobAgendadas = class(TForm)
      PageHeaderBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      Datalhes: TQRBand;
      QRDBText3: TQRDBText;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      SummaryBand1: TQRBand;
      ADO_CobAgendada:  TFDQuery;
      QRLabel6: TQRLabel;
      QRLabel7: TQRLabel;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRLabel10: TQRLabel;
      QuickRep: TQuickRep;
      PageFooterBand1: TQRBand;
      QRDBText8: TQRDBText;
      QRLabel18: TQRLabel;
      QRDBText4: TQRDBText;
      QRLabel21: TQRLabel;
      QRLabel1: TQRLabel;
      QRDBText1: TQRDBText;
      QRDBText2: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }

      xFlutuante, xFlutuante1, xFlutuante2: Real;

   public
      { Public declarations }
   end;

var
   FrmRelReceb_CobAgendadas: TFrmRelReceb_CobAgendadas;

implementation

uses Biblioteca, FRelCtaReceber, Global, FPrincipal, FBaseDados;

{$R *.DFM}

procedure TFrmRelReceb_CobAgendadas.FormCreate(Sender: TObject);
begin


   vSelect := '         SELECT A.*, B.CODIGO, B.NOME, B.FONE ';
   vSelect := vSelect + ' FROM COB_AGENDAR A, CAD_CLIENTES B ';
   vSelect := vSelect + ' WHERE  ';
   vSelect := vSelect + ' B.CODIGO=A.CLIENTE  ';
   vSelect := vSelect + ' AND  ';
   vSelect := vSelect + ' A.DTCONTATO>=:DATA1 AND A.DTCONTATO<=:DATA2   ';
   If FrmRelCtaReceber.chkClientes.Checked = False Then
   Begin
      vSelect := vSelect + ' AND A.CLIENTE=:XCLIENTE';
   End;

   ADO_CobAgendada.close;
   ADO_CobAgendada.SQL.clear;
   ADO_CobAgendada.SQL.Add(vSelect);

   ADO_CobAgendada.ParamByName('DATA1').AsDateTime := dtDataIni;
   ADO_CobAgendada.ParamByName('DATA2').AsDateTime := dtDataFim;
   If FrmRelCtaReceber.chkClientes.Checked = False Then
      ADO_CobAgendada.ParamByName('XCLIENTE').value := strCliente;
   ADO_CobAgendada.open;

   QuickRep.Preview;
   close;

end;

procedure TFrmRelReceb_CobAgendadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   ADO_CobAgendada.close;

   Action := caFree;

end;

end.
