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

unit FReciboImprimir;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, QRCtrls, QuickRpt, ExtCtrls, ACBrBase, QRPDFFilt;

type
   TFrmReciboImprimir = class(TForm)
      QuickRep: TQuickRep;
      DetailBand1: TQRBand;
      t18: TQRShape;
      QRShape1: TQRShape;
      QRLabel1: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel2: TQRLabel;
      QRLabel4: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel6: TQRLabel;
      Ass_Linha1: TQRLabel;
      QRLabel50: TQRLabel;
      linha: TQRLabel;
      t2: TQRLabel;
      QRDBText1: TQRDBText;
      QRDBText2: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText5: TQRDBText;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRLabel7: TQRLabel;
      QRLabel10: TQRLabel;
      QRLabel11: TQRLabel;
      QRLabel12: TQRLabel;
      QRLabel13: TQRLabel;
      QRLabel14: TQRLabel;
      QRLabel15: TQRLabel;
      Ass_Linha2: TQRLabel;
      QRDBText10: TQRDBText;
      QRDBText11: TQRDBText;
      QRDBText13: TQRDBText;
      Assinatura1: TQRDBText;
      Assinatura2: TQRDBText;
      Nome1: TQRDBText;
      Nome2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmReciboImprimir: TFrmReciboImprimir;

implementation

uses FCtaReceber, FPrincipal, FRecibo, FBaseDados;

{$R *.dfm}

procedure TFrmReciboImprimir.FormCreate(Sender: TObject);
begin

   QuickRep.Preview;
   Close;

end;

procedure TFrmReciboImprimir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFrmReciboImprimir.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

   If FrmRecibo.db_recibo.FieldByName('TIPO').AsString = 'D' Then
   begin
      // 1ª VIA
      Assinatura1.Left := 45;
      Assinatura1.Top := 128;
      Assinatura1.Alignment := taLeftJustify;

      Nome1.Left := Ass_Linha1.Left + 110;
      Nome1.Top := 407;

      Nome1.Font.Name := 'Arial';
      Nome1.Font.Size := 8;
      Nome1.Alignment := taCenter;

      // 2ª VIA
      Assinatura2.Left := 45;
      Assinatura2.Top := 696;
      Assinatura2.Alignment := taLeftJustify;

      Nome2.Left := Ass_Linha2.Left + 110;
      Nome2.Top := 973;

      Nome2.Font.Name := 'Arial';
      Nome2.Font.Size := 8;
      Nome2.Alignment := taCenter;

   end;

end;

end.
