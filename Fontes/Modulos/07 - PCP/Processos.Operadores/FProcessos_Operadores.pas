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

unit FProcessos_Operadores;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, FFrameBarra, FFrameBotoes,
   Grids, DBGrids, Mask, DBCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos, Menus;

type
   TFrmProcessos_Operadores = class(TForm)
      GroupBox1: TGroupBox;
      Label5: TLabel;
      Label1: TLabel;
      DBEdit2: TDBEdit;
      GroupBox2: TGroupBox;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      DBGrid1: TDBGrid;
      Edit1: TEdit;
      EditCliente: TIDBEditDialog;
      Navegador: TDBNavigator;

      procedure FormCreate(Sender: TObject);

      procedure FormClose(Sender: TObject; var Action: TCloseAction);

      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbPrimeiroClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAnteriorClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProximoClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure GroupBox2Enter(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmProcessos_Operadores: TFrmProcessos_Operadores;

implementation

uses FPrincipal, Biblioteca, Global, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmProcessos_Operadores.FormCreate(Sender: TObject);
begin
   // FrmPrincipal.Mnu_PCP_VincHumano.Enabled :=false;
   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_VincHumano;

   BaseDados_PCP.db_VincHumano.Open;
   BaseDados_PCP.db_VincHumanoDetalhes.Open;

end;

procedure TFrmProcessos_Operadores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   BaseDados_PCP.db_VincHumano.Close;
   BaseDados_PCP.db_VincHumanoDetalhes.Close;

   BaseDados_PCP.db_VincMaquinas.Close;
   BaseDados_PCP.db_VincMaquinasDetalhes.Close;

   // FrmPrincipal.Mnu_PCP_VincHumano.Enabled :=True;

   FreeAndNil(FrmProcessos_Operadores);
end;

procedure TFrmProcessos_Operadores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_Escape then
   begin
      // se estiver em modo edição apenas cancelar

      Close;

   end;
end;

procedure TFrmProcessos_Operadores.FrmFrameBotoes1SpbAdicionarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);

end;

procedure TFrmProcessos_Operadores.FrmFrameBotoes1SpbEditarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmProcessos_Operadores.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmProcessos_Operadores.FrmFrameBotoes1SpbSalvarClick
  (Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmProcessos_Operadores.FrmFrameBotoes1SpbCancelarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmProcessos_Operadores.FrmFrameBotoes1SpbExcluirClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmProcessos_Operadores.FrmFrameBotoes1SpbPrimeiroClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbPrimeiroClick(Sender);

end;

procedure TFrmProcessos_Operadores.FrmFrameBotoes1SpbAnteriorClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbAnteriorClick(Sender);

end;

procedure TFrmProcessos_Operadores.FrmFrameBotoes1SpbProximoClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbProximoClick(Sender);

end;

procedure TFrmProcessos_Operadores.FrmFrameBotoes1SpbUltimoClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbUltimoClick(Sender);

end;

procedure TFrmProcessos_Operadores.GroupBox2Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvar.Click;
end;

end.
