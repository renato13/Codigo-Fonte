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

unit FAcesso;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   DB, ExtCtrls, StdCtrls, Classe.Global,  App.Constantes, FFrameBarra,
   Vcl.Imaging.pngimage;

type
   TFrmAcesso = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    W7Panel1: TPanel;
    BtnAcessar: TButton;
    BtnCancelar: TButton;
    EditUsuario: TLabeledEdit;
    EditSenha: TLabeledEdit;
    Image1: TImage;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnAcessarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
   private
      { Private declarations }
      fechar: Boolean;
   public
      { Public declarations }
   end;

var
   FrmAcesso: TFrmAcesso;

implementation

uses Biblioteca, Global, FBaseDados;

{$R *.dfm}

procedure TFrmAcesso.BtnCancelarClick(Sender: TObject);
begin
   fechar := True;
   blnUsuarioAutorizado := false;
   close;
end;

procedure TFrmAcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFrmAcesso.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

   if fechar = false then
      abort;

   // BaseDados.db_Usuario.Close;

end;

procedure TFrmAcesso.FormCreate(Sender: TObject);

begin
   nUsuario :=0;
   if FileExists('C:\Vestis.txt') then
   Begin
      EditUsuario.text := 'Admin';
      EditSenha.text := 'Admin';
   end;

   fechar := false;
   blnUsuarioAutorizado := false;

   BaseDados.db_Usuario.Open;

end;

procedure TFrmAcesso.BtnAcessarClick(Sender: TObject);
begin
   // BaseDados.db_Usuario.close;
   nUsuario :=0;



   FUsuario.UsuarioNome := UpperCase(EditUsuario.text);
   FUsuario.UsuarioSenha   := UpperCase(EditSenha.text);

   if empty(FUsuario.UsuarioNome) then
   Begin
      fechar := false;
      blnUsuarioAutorizado := false;
      BeepCritica;
      Informar('Você esqueceu de informar o seu nome de Login');
      EditUsuario.SetFocus;
      abort;
   end;

   if empty(FUsuario.UsuarioSenha) then
   Begin
      fechar := false;
      blnUsuarioAutorizado := false;
      BeepCritica;
      Informar('Você esqueceu de informar a sua senha Login');
      EditSenha.SetFocus;
      abort;

   end;

   // primeiro, tentar esenha master
   If (UpperCase(FUsuario.UsuarioNome) = MASTER_USUARIO) and (UpperCase(FUsuario.UsuarioSenha) = MASTER_SENHA) then
   begin
      blnUsuarioAutorizado := True;
      close;
   end;

   // abrir tabela

   If blnUsuarioAutorizado = false then
   begin

      BaseDados.db_Usuario.close;
      BaseDados.db_Usuario.ParamByName('USERNAME').AsString := FUsuario.UsuarioNome;
      BaseDados.db_Usuario.ParamByName('SENHA').AsString := FUsuario.UsuarioSenha;
      BaseDados.db_Usuario.Open;

      If not BaseDados.db_Usuario.IsEmpty then
      begin
         nUsuario :=BaseDados.db_Usuario.FieldByName('CODIGO').AsInteger;

         // checar se usuario está autorizado
         if BaseDados.db_Usuario.FieldByName('BLOQUEAR').AsString='S' then
         begin
            BeepCritica;
            AvisoSistemaErro('Prezado(a) '+FUsuario.UsuarioNome+', '+sLineBreak+
             'Você está cadastrado no sistema, porém seu acesso não está autorizado.'+sLineBreak+
             'Por favor, informe o administrador do sistema.'

             );

            fechar := false;
            blnUsuarioAutorizado := false;
            EditUsuario.SetFocus;
            abort;
         end;


         // marcar usuário como online;
         If not(BaseDados.db_Usuario.state in [dsEdit, dsInsert]) then
            BaseDados.db_Usuario.Edit;

         BaseDados.db_Usuario.FieldByName('ONLINE').AsString := 'S';
         BaseDados.db_Usuario.Post;


         FUsuario.UsuarioCodigo := BaseDados.db_Usuario.FieldByname('CODIGO').AsInteger;
         ModalResult := mrOk;
         BaseDados.db_Usuario.First;
         blnUsuarioAutorizado := True;



         close;
      End
      else
      Begin
         fechar := false;
         blnUsuarioAutorizado := false;
         BeepCritica;
         Informar('Usuário "' + FUsuario.UsuarioNome + '" não foi reconhecido pelo sistema.'
           + #13 + 'Acesso negado');
         EditUsuario.SetFocus;
         abort;
      End;
   End;

   fechar := True;

end;

procedure TFrmAcesso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_RETURN then
      BtnAcessarClick(Sender);

   If Key = VK_ESCAPE then
      BtnCancelarClick(Sender);


end;

end.
