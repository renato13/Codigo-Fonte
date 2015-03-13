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

unit FTurnos;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, FFrameBotoes, FFrameBarra,
   Mask, DBCtrls, Grids, DBGrids, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos;

type
   THackDBGrid = class(TDBGrid);

   TFrmTurnos = class(TForm)
      GroupBox1: TGroupBox;
      Label5: TLabel;
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
      Navegador: TDBNavigator;
      GroupBox3: TGroupBox;
      Label7: TLabel;
      Label8: TLabel;
      EditNome: TDBEdit;
      EditCodigo: TDBEdit;
      LocalizaTurno: TIDBEditDialog;
      GroupBox4: TGroupBox;
      DBGrid1: TDBGrid;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure GroupBox4Enter(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmTurnos: TFrmTurnos;

implementation

uses FPrincipal, Biblioteca, FBaseDados, Global, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmTurnos.FormCreate(Sender: TObject);
begin

   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_turnos;
   BaseDados_PCP.db_turnos.Open;
   BaseDados_PCP.db_turnosGrade.Open;

   // THackDBGrid(DBGrid1).FixedCols := 1;

end;

procedure TFrmTurnos.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   BaseDados_PCP.db_turnos.Close;
   BaseDados_PCP.db_turnosGrade.Close;

   Action := Cafree;
end;

procedure TFrmTurnos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_Escape then
   begin
      // se estiver em modo edição apenas cancelar

      Close;

   end;
end;

procedure TFrmTurnos.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditNome.SetFocus;

end;

procedure TFrmTurnos.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbEditarClick(Sender);
   EditNome.SetFocus;

end;

procedure TFrmTurnos.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if LocalizaTurno.Execute then
   begin
      BaseDados_PCP.db_turnos.Locate('CODIGO',
        LocalizaTurno.ResultFieldAsInteger('CODIGO'), []);
   end;

end;

procedure TFrmTurnos.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmTurnos.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   DBGrid1.SetFocus;

end;

procedure TFrmTurnos.GroupBox4Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvar.Click;

end;

end.
