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

unit FFichaTecnicaImprimir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, ExtCtrls, StdCtrls, Buttons, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB;

type
  TFrmFichaTecnicaImprimir = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    BtnFichaCusto: TBitBtn;
    BtnCancelar: TBitBtn;
    GroupBox2: TGroupBox;
    BtnFichaTecnicaImagem: TBitBtn;
    BtnFichaTecnica: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BtnFichaTecnicaClick(Sender: TObject);
    procedure BtnFichaTecnicaImagemClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnFichaCustoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFichaTecnicaImprimir: TFrmFichaTecnicaImprimir;

implementation

uses Global, Biblioteca, FPrincipal, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmFichaTecnicaImprimir.BtnFichaTecnicaClick(Sender: TObject);
begin
   sFichaTecnica := 'FICHATECNICA'; // Saida de Produto
   close;
end;

procedure TFrmFichaTecnicaImprimir.BtnFichaTecnicaImagemClick(Sender: TObject);
begin
   sFichaTecnica := 'FICHATECNICAIMAGEM'; // Saida de Produto
   close;
end;

procedure TFrmFichaTecnicaImprimir.BtnFichaCustoClick(Sender: TObject);
begin
   sFichaTecnica := 'FICHACUSTO'; // Saida de Produto
   close;
end;

procedure TFrmFichaTecnicaImprimir.BtnCancelarClick(Sender: TObject);
begin
   sFichaTecnica := '';
   close;
end;

procedure TFrmFichaTecnicaImprimir.FormCreate(Sender: TObject);
begin
   nMarkup :=0;
   sFichaTecnica := '';
end;

procedure TFrmFichaTecnicaImprimir.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_F3 then
   begin
      BtnFichaTecnicaClick(Sender);
   end;

   IF Key = VK_F4 then
   begin
      BtnFichaTecnicaImagemClick(Sender);
   end;

   IF Key = VK_F5 then
   begin
      BtnFichaCustoClick(Sender);
   end;

   IF Key = VK_ESCAPE then
   begin
      BtnCancelarClick(Sender);
   end;


end;

end.


