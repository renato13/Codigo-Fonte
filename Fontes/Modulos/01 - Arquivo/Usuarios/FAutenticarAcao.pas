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

unit FAutenticarAcao;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, FFrameBarra,
   Classe.Global;

type
   TFrmAutenticarAcao = class(TForm)
      EditSenha: TLabeledEdit;
      BtnOk: TBitBtn;
      BtnCancelar: TBitBtn;
      Panel1: TPanel;
      EditUsuario: TLabeledEdit;
      FrmFrameBarra1: TFrmFrameBarra;
      Label1: TLabel;
      procedure BtnCancelarClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure BtnOkClick(Sender: TObject);
      procedure FlatSpeedButton1Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmAutenticarAcao: TFrmAutenticarAcao;

implementation

uses  Biblioteca, Global;

{$R *.dfm}

procedure TFrmAutenticarAcao.BtnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmAutenticarAcao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_RETURN then
   Begin
      BtnOk.Click;
   end;

   if Key = VK_ESCAPE then
   Begin
      BtnCancelar.Click;
   end;

end;

procedure TFrmAutenticarAcao.FormCreate(Sender: TObject);
begin
   if FileExists('C:\Vestis.txt') then
   Begin
      EditUsuario.text := 'Admin';
      EditSenha.text := 'Admin';
   end;
   EditUsuario.Text := FUsuario.UsuarioNome;
end;

procedure TFrmAutenticarAcao.FormShow(Sender: TObject);
begin
   EditSenha.SetFocus;
end;

procedure TFrmAutenticarAcao.BtnOkClick(Sender: TObject);
begin
   If Uppercase(EditSenha.Text) <> Uppercase(FUsuario.UsuarioSenha) then
   Begin
      BeepCritica;
      Informar('Senha incorreta');
      EditSenha.SetFocus;
      UsuarioAutenticarAcao := False;
   end;

   If Uppercase(EditSenha.Text) = Uppercase(FUsuario.UsuarioSenha) then
   Begin
      UsuarioAutenticarAcao := True;
   End;

end;

procedure TFrmAutenticarAcao.FlatSpeedButton1Click(Sender: TObject);
begin
   close;
end;

end.
