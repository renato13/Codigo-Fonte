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


unit FUsuariosOnLine;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, FFrameBarra;

type
   TFrmUsuariosOnLine = class(TForm)
      Panel1: TPanel;
      BtnSair: TBitBtn;
      ListBoxUserName: TListBox;
    FrmFrameBarra1: TFrmFrameBarra;
      procedure BtnSairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormShow(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmUsuariosOnLine: TFrmUsuariosOnLine;

implementation


{$R *.dfm}

uses FUsuarioControle;

procedure TFrmUsuariosOnLine.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmUsuariosOnLine.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFrmUsuariosOnLine.FormShow(Sender: TObject);
begin
   ListBoxUserName.Items.Clear;
   FrmUsuarioControle.db_Usuario.First;
   While not FrmUsuarioControle.db_Usuario.eof do
   begin
      // se o usuário estiver ativo, então adicioná-lo na lista
      If FrmUsuarioControle.db_Usuario.FieldByName('ONLINE').AsString = 'S' then
      begin
         ListBoxUserName.Items.Add(FrmUsuarioControle.db_Usuario.FieldByName('UserName')
           .AsString);
      end;
      FrmUsuarioControle.db_Usuario.next;
   end;
   FrmUsuarioControle.db_Usuario.First;

end;

procedure TFrmUsuariosOnLine.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If (Key = VK_ESCAPE) or (Key = VK_RETURN) then
      close;

end;

end.
