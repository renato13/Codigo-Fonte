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

unit FProcessos_Maquinas;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBCtrls, Mask, Grids, DBGrids,
   FFrameBarra, FFrameBotoes, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos;

type
   TFrmProcessos_Maquinas = class(TForm)
      GroupBox1: TGroupBox;
      Label5: TLabel;
      Label1: TLabel;
      DBEdit2: TDBEdit;
      GroupBox2: TGroupBox;
      DBGrid1: TDBGrid;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      IDBEditDialog1: TIDBEditDialog;
      Edit1: TEdit;
      LocalizaProcessos: TIDBEditDialog;
      Navegador: TDBNavigator;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbPrimeiroClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAnteriorClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProximoClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
      procedure DBGrid1EditButtonClick(Sender: TObject);
      procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure GroupBox2Enter(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmProcessos_Maquinas: TFrmProcessos_Maquinas;

implementation

uses FPrincipal, Biblioteca, FBaseDados, Global, FBaseDados_PCP,
   FOrdemProducaoGrade;

{$R *.dfm}

procedure TFrmProcessos_Maquinas.FormCreate(Sender: TObject);
begin
   // FrmPrincipal.Mnu_PCP_VincMaquina.Enabled :=false;
   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_VincMaquinas;

   BaseDados_PCP.db_VincMaquinas.Open;
   BaseDados_PCP.db_VincMaquinasDetalhes.Open;
end;

procedure TFrmProcessos_Maquinas.DBGrid1EditButtonClick(Sender: TObject);
begin

   if (DBGrid1.SelectedField = BaseDados_PCP.
     db_VincMaquinasDetalhesPROCESSO) Then
   Begin
      if LocalizaProcessos.Execute then
      begin

         If not(BaseDados_PCP.db_VincMaquinasDetalhes.state in [dsEdit]) then
            BaseDados_PCP.db_VincMaquinasDetalhes.Edit;

         BaseDados_PCP.db_VincMaquinasDetalhes.FieldByName('PROCESSO').AsInteger
           := LocalizaProcessos.ResultFieldAsInteger('CODIGO');
         BaseDados_PCP.db_VincMaquinasDetalhes.Post;

      end;

   End;

end;

procedure TFrmProcessos_Maquinas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_f8 then
   begin

      if LocalizaProcessos.Execute then
      begin

         If not(BaseDados_PCP.db_VincMaquinasDetalhes.state in [dsEdit]) then
            BaseDados_PCP.db_VincMaquinasDetalhes.Edit;

         BaseDados_PCP.db_VincMaquinasDetalhes.FieldByName('PROCESSO').AsInteger
           := LocalizaProcessos.ResultFieldAsInteger('CODIGO');
         BaseDados_PCP.db_VincMaquinasDetalhes.Post;

      end;

   end;

end;

procedure TFrmProcessos_Maquinas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   BaseDados_PCP.db_VincMaquinas.Close;
   BaseDados_PCP.db_VincMaquinasDetalhes.Close;

   BaseDados_PCP.db_VincHumano.Close;
   BaseDados_PCP.db_VincHumanoDetalhes.Close;

   // FrmPrincipal.Mnu_PCP_VincMaquina.Enabled :=true;
   FreeAndNil(FrmProcessos_Maquinas);

end;

procedure TFrmProcessos_Maquinas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_Escape then
   begin
      // se estiver em modo edição apenas cancelar

      Close;

   end;
end;

procedure TFrmProcessos_Maquinas.FrmFrameBotoes1SpbAdicionarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);

end;

procedure TFrmProcessos_Maquinas.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmProcessos_Maquinas.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmProcessos_Maquinas.FrmFrameBotoes1SpbCancelarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmProcessos_Maquinas.FrmFrameBotoes1SpbExcluirClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmProcessos_Maquinas.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmProcessos_Maquinas.FrmFrameBotoes1SpbPrimeiroClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbPrimeiroClick(Sender);

end;

procedure TFrmProcessos_Maquinas.FrmFrameBotoes1SpbAnteriorClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbAnteriorClick(Sender);

end;

procedure TFrmProcessos_Maquinas.FrmFrameBotoes1SpbProximoClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbProximoClick(Sender);

end;

procedure TFrmProcessos_Maquinas.FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbUltimoClick(Sender);

end;

procedure TFrmProcessos_Maquinas.GroupBox2Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvar.Click;
end;

end.
