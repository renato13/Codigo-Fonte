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

unit FImprimirTabela;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, QRExport, QRPDFFilt, QRCtrls, QuickRpt;

type
   TFrmImprimirTabela = class(TForm)
      QuickRep1: TQuickRep;
      Band_Titulos: TQRBand;
      QRDBText9: TQRDBText;
      TabelaDescontos: TQRBand;
      QRBand1: TQRBand;
      QRLabel3: TQRLabel;
      QRLabel4: TQRLabel;
      QRLabel11: TQRLabel;
      QRLabel13: TQRLabel;
      QRSysData3: TQRSysData;
      QRSysData4: TQRSysData;
      QRSysData6: TQRSysData;
      QRShape4: TQRShape;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      LblData: TQRLabel;
      LblGrupo: TQRLabel;
      LblSubGrupo: TQRLabel;
      PageFooterBand1: TQRBand;
      LblNomeSistema: TQRDBText;
      QRLabel19: TQRLabel;
      QRLabel23: TQRLabel;
      QRLabel24: TQRLabel;
      QRDBText11: TQRDBText;
      QRDBText10: TQRDBText;
      QRDBText15: TQRDBText;
      QRLabel18: TQRLabel;
      QRLabel17: TQRLabel;
      QRLabel35: TQRLabel;
      QRLabel32: TQRLabel;
      QRDBText8: TQRDBText;
      QRDBText17: TQRDBText;
      QRDBText18: TQRDBText;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmImprimirTabela: TFrmImprimirTabela;

implementation

uses FTabelaPreco, FPrincipal, Global, Biblioteca;

{$R *.dfm}

procedure TFrmImprimirTabela.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   Action := cafree;
end;

procedure TFrmImprimirTabela.FormCreate(Sender: TObject);
begin

   LblData.Caption := 'DATA: ' + FrmTabelaPreco.db_TabelaPreco.FieldByName('DATA').AsString;

   if FrmTabelaPreco.BoxGrupo.ItemIndex = 1 then
      LblGrupo.Caption := 'GRUPO: ' + FrmTabelaPreco.EditGrupoNome.Text;

   if FrmTabelaPreco.BoxSubGrupo.ItemIndex = 1 then
      LblSubGrupo.Caption := 'SUBGRUPO: ' +
        FrmTabelaPreco.EditSubGrupoNome.Text;

   QuickRep1.Preview;
   close;

end;

end.
