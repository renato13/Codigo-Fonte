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

unit FProcessosGrade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, FFrameBarra, FFrameBotoes,
   Mask, DBCtrls, Grids, DBGrids, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos;

type
   TFrmProcessosGrade = class(TForm)
      GroupBox1: TGroupBox;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      GroupBox3: TGroupBox;
      Label3: TLabel;
      Label1: TLabel;
      EditNome: TDBEdit;
      DBEdit2: TDBEdit;
      GroupBox4: TGroupBox;
      Navegador: TDBNavigator;
      DBGrid1: TDBGrid;
      GroupBox2: TGroupBox;
      DBEdit1: TDBEdit;
      DBEdit3: TDBEdit;
      LocalizaProcessos: TIDBEditDialog;
      LocalizaProcessosGrade: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure DBGrid1Enter(Sender: TObject);
      procedure DBGrid1EditButtonClick(Sender: TObject);
      procedure GroupBox4Enter(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmProcessosGrade: TFrmProcessosGrade;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmProcessosGrade.FormCreate(Sender: TObject);
begin

   FrmPrincipal.Mnu_PCP_ProcessosGrade.Enabled := False;
   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_Cad_processosdGrade;

   BaseDados_PCP.db_Cad_processosdGrade.Open;
   BaseDados_PCP.db_Cad_processosdLista.Open;

end;

procedure TFrmProcessosGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FrmPrincipal.Mnu_PCP_ProcessosGrade.Enabled := True;
   BaseDados_PCP.db_Cad_processosdGrade.Close;
   BaseDados_PCP.db_Cad_processosdLista.Close;
   Action := Cafree;
end;

procedure TFrmProcessosGrade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_Escape then
   begin
      Close;

   end;

end;

procedure TFrmProcessosGrade.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditNome.SetFocus;

end;

procedure TFrmProcessosGrade.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmProcessosGrade.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmProcessosGrade.GroupBox4Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvar.Click;

end;

procedure TFrmProcessosGrade.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmProcessosGrade.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmProcessosGrade.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmProcessosGrade.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if LocalizaProcessosGrade.Execute then
   begin
      BaseDados_PCP.db_Cad_processosdGrade.Locate('CODIGO',
        LocalizaProcessosGrade.ResultFieldAsInteger('CODIGO'), []);
   end;

end;

procedure TFrmProcessosGrade.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmProcessosGrade.DBGrid1EditButtonClick(Sender: TObject);
begin

   if (DBGrid1.SelectedField = BaseDados_PCP.
     db_Cad_processosdListaPROCESSO) Then
   Begin

      if LocalizaProcessos.Execute then
      begin

         If not(BaseDados_PCP.db_Cad_processosdLista.state in [dsEdit]) then
            BaseDados_PCP.db_Cad_processosdLista.Edit;

         BaseDados_PCP.db_Cad_processosdLista.FieldByName('PROCESSO').AsInteger
           := LocalizaProcessos.ResultFieldAsInteger('CODIGO');
         BaseDados_PCP.db_Cad_processosdLista.FieldByName('NOME').AsString :=
           LocalizaProcessos.ResultFieldAsString('DESCRICAO');
         BaseDados_PCP.db_Cad_processosdLista.FieldByName('TEMPO').AsFloat :=
           LocalizaProcessos.ResultFieldAsFloat('TEMPO');
         BaseDados_PCP.db_Cad_processosdLista.FieldByName('CUSTO').AsFloat :=
           LocalizaProcessos.ResultFieldAsFloat('CUSTO');

         BaseDados_PCP.db_Cad_processosdLista.Post;

      end;

   End;

end;

procedure TFrmProcessosGrade.DBGrid1Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

procedure TFrmProcessosGrade.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_f8 then
   begin

      if LocalizaProcessos.Execute then
      begin

         If not(BaseDados_PCP.db_Cad_processosdLista.state in [dsEdit]) then
            BaseDados_PCP.db_Cad_processosdLista.Edit;

         BaseDados_PCP.db_Cad_processosdLista.FieldByName('PROCESSO').AsInteger
           := LocalizaProcessos.ResultFieldAsInteger('CODIGO');
         BaseDados_PCP.db_Cad_processosdLista.FieldByName('NOME').AsString :=
           LocalizaProcessos.ResultFieldAsString('DESCRICAO');
         BaseDados_PCP.db_Cad_processosdLista.FieldByName('TEMPO').AsFloat :=
           LocalizaProcessos.ResultFieldAsFloat('TEMPO');
         BaseDados_PCP.db_Cad_processosdLista.FieldByName('CUSTO').AsFloat :=
           LocalizaProcessos.ResultFieldAsFloat('CUSTO');

         BaseDados_PCP.db_Cad_processosdLista.Post;

      end;

   end;

end;

end.
