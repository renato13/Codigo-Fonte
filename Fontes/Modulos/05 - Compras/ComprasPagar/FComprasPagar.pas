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

unit FComprasPagar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB;

type
   TFrmComprasPagar = class(TForm)
      GroupBox5: TGroupBox;
      DBGrid2: TDBGrid;
    Panel7: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BitBtn2Click(Sender: TObject);
      procedure BitBtn3Click(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmComprasPagar: TFrmComprasPagar;

implementation

uses FCompras, Biblioteca;

{$R *.dfm}

procedure TFrmComprasPagar.BitBtn2Click(Sender: TObject);
begin

   BeepCritica;
   If Pergunta('Deseja excluir registro selecionado?') = True then
   Begin
      FrmCompras.DB_CtaPagar.Delete;
   End;

end;

procedure TFrmComprasPagar.BitBtn3Click(Sender: TObject);
begin

   BeepCritica;
   If Pergunta('Deseja realmente excluir tudo?') = True then
   Begin
      FrmCompras.DB_CtaPagar.First;
      While not FrmCompras.DB_CtaPagar.Eof do
      Begin
         FrmCompras.DB_CtaPagar.Delete;
      End;
   End;

end;

procedure TFrmComprasPagar.BitBtn4Click(Sender: TObject);
begin
   BeepCritica;
   If Pergunta('[FRETE A PAGAR] Deseja excluir registro selecionado?') = True then
   Begin
      FrmCompras.db_CtaPagarFrete.Delete;
   End;


end;

procedure TFrmComprasPagar.BitBtn5Click(Sender: TObject);
begin
   BeepCritica;
   If Pergunta('[FRETE A PAGAR] Deseja realmente excluir tudo?') = True then
   Begin
      FrmCompras.db_CtaPagarFrete.First;
      While not FrmCompras.db_CtaPagarFrete.Eof do
      Begin
         FrmCompras.db_CtaPagarFrete.Delete;
      End;
   End;

end;

procedure TFrmComprasPagar.BitBtn6Click(Sender: TObject);
begin

   If (FrmCompras.DB_CtaPagar.state in [dsedit, dsinsert]) then
   Begin
      FrmCompras.DB_CtaPagar.Post;
   End;

   If (FrmCompras.db_CtaPagarFrete.state in [dsedit, dsinsert]) then
   Begin
      FrmCompras.db_CtaPagarFrete.Post;
   End;

   close;


end;

procedure TFrmComprasPagar.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmComprasPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   Action := cafree;
end;

procedure TFrmComprasPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;

end;

end.
