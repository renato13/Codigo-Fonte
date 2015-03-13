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

unit FImprimeCartaTodas;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, QuickRpt, QRCtrls, QRPDFFilt;

type
   TFrmImprimeCartaTodas = class(TForm)
      QuickRep1: TQuickRep;
      TitleBand1: TQRBand;
      PageFooterBand1: TQRBand;
      QRDBText1: TQRDBText;
      QRDBText18: TQRDBText;
      PageHeaderBand1: TQRBand;
      QRLabel3: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel1: TQRLabel;
      QRDBText2: TQRDBText;
      QRSysData3: TQRSysData;
      QRLabel2: TQRLabel;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel5: TQRLabel;
      QRImage1: TQRImage;
      QRPDFFilter1: TQRPDFFilter;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmImprimeCartaTodas: TFrmImprimeCartaTodas;

implementation

uses FCad_CartaCobranca, FBaseDados, FPrincipal;

{$R *.dfm}

procedure TFrmImprimeCartaTodas.FormCreate(Sender: TObject);
begin
   QRImage1.Picture.LoadFromFile(BaseDados.db_Parametros.FieldByName
     ('LOGO_RELATORIOS').AsString);
   QuickRep1.Preview;
   close;
end;

procedure TFrmImprimeCartaTodas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := Cafree;
end;

end.
