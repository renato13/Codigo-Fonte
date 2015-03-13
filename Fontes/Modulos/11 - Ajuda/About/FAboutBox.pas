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


unit FAboutBox;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, StdCtrls, ComCtrls, shellapi,
   FFrameBarra,
   Classe.Global;

type
   TFrmAboutBox = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    W7Panel1: TPanel;
    BtnAcessar: TButton;
    AdvGroupBox1: TGroupBox;
    ProductInformation: TMemo;
      procedure FormCreate(Sender: TObject);
      procedure Label6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnAcessarClick(Sender: TObject);
    procedure AdvSmoothLabel2Click(Sender: TObject); // ?
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmAboutBox: TFrmAboutBox;

implementation

uses  Global;


{$R *.dfm}

procedure TFrmAboutBox.AdvSmoothLabel2Click(Sender: TObject);
begin
   strURL := 'http://www.<site>.com.br';
   shellexecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);
end;

procedure TFrmAboutBox.BtnAcessarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmAboutBox.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmAboutBox.FormCreate(Sender: TObject);
var
   MS: TMemoryStatus;
   Ano, Mes, Dia: Word;
begin

   Caption := 'Sistema ' + Application.Title +' v'+ FExeInfo.FileVersion;

   DecodeDate(Date, Ano, Mes, Dia);

   MS.dwLength := sizeof(MemoryStatus);
   GlobalMemoryStatus(MS);


   // --------------------------------------------------------------------------
   // --------------------------------------------------------------------------
   ProductInformation.Clear;
   // --------------------------------------------------------------------------
   // --------------------------------------------------------------------------
   ProductInformation.Lines.Add('');
   ProductInformation.Lines.Add('Versão do Kernel: ' + FExeInfo.FileVersion);
   ProductInformation.Lines.Add('Data de compilação:  ' +  DateTimeToStr(FExeInfo.FileCreation) );

   // --------------------------------------------------------------------------
   // --------------------------------------------------------------------------

end;

procedure TFrmAboutBox.Label6Click(Sender: TObject);
begin

   strURL := 'mailto:comercial@<site>.com.br';
   shellexecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);

end;

end.
