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

unit FTerceirizadoLancaFinanceiroPagar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB;

type
   TFrmTerceirizadoLancaFinanceiroPagar = class(TForm)
      GroupBox5: TGroupBox;
      DBGrid2: TDBGrid;
    Panel7: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BitBtn2Click(Sender: TObject);
      procedure BitBtn3Click(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmTerceirizadoLancaFinanceiroPagar: TFrmTerceirizadoLancaFinanceiroPagar;

implementation

uses Biblioteca, FTerceirizadoLancaFinanceiro;

{$R *.dfm}

procedure TFrmTerceirizadoLancaFinanceiroPagar.BitBtn2Click(Sender: TObject);
begin

   BeepCritica;
   If Pergunta('Deseja excluir registro selecionado?') = True then
   Begin
      FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.Delete;
   End;

end;

procedure TFrmTerceirizadoLancaFinanceiroPagar.BitBtn3Click(Sender: TObject);
begin

   BeepCritica;
   If Pergunta('Deseja realmente excluir tudo?') = True then
   Begin
      FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.First;
      While not FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.Eof do
      Begin
         FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.Delete;
      End;
   End;

end;

procedure TFrmTerceirizadoLancaFinanceiroPagar.BitBtn6Click(Sender: TObject);
begin

   If (FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.state in [dsedit, dsinsert]) then
   Begin
      FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.Post;
   End;

   close;


end;

procedure TFrmTerceirizadoLancaFinanceiroPagar.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmTerceirizadoLancaFinanceiroPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.close;
   Action := cafree;
end;

procedure TFrmTerceirizadoLancaFinanceiroPagar.FormCreate(Sender: TObject);
begin
   FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.open;
end;

procedure TFrmTerceirizadoLancaFinanceiroPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;

end;

end.
