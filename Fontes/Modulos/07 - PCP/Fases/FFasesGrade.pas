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

unit FFasesGrade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, FFrameBarra, FFrameBotoes,
   Mask, DBCtrls, Grids, DBGrids, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos;

type
   TFrmFasesGrade = class(TForm)
      GroupBox1: TGroupBox;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      GroupBox3: TGroupBox;
      Label3: TLabel;
      Label1: TLabel;
      EditNome: TDBEdit;
      DBEdit2: TDBEdit;
      GroupBox4: TGroupBox;
      DBGrid1: TDBGrid;
    dbEditPesquisarFasesGrade: TIDBEditDialog;
    dbEditPesquisarFases: TIDBEditDialog;
    DBCheckBox1: TDBCheckBox;
    Panel1: TPanel;
    BtnCarregar: TSpeedButton;
    BtnDeletarLinha: TSpeedButton;
    BtnDeletarTudo: TSpeedButton;
    Navegador: TDBNavigator;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure BtnCarregarClick(Sender: TObject);
    procedure BtnDeletarLinhaClick(Sender: TObject);
    procedure BtnDeletarTudoClick(Sender: TObject);
   private
      { Private declarations }

   public
      { Public declarations }
   end;

var
   FrmFasesGrade: TFrmFasesGrade;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmFasesGrade.FormCreate(Sender: TObject);
begin

   FrmPrincipal.Mnu_PCP_GradeTamanho.Enabled := False;
   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_FasesGrade;

   BaseDados_PCP.db_FasesGrade.Open;
   BaseDados_PCP.db_FasesGradeLista.Open;

   OrdemGradeTamanho := 0;

end;

procedure TFrmFasesGrade.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#27 then
     close;

end;

procedure TFrmFasesGrade.FormResize(Sender: TObject);
begin
  DimensionarGrid(DBGrid1,self);

end;

procedure TFrmFasesGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FrmPrincipal.Mnu_PCP_GradeTamanho.Enabled := True;
   BaseDados_PCP.db_FasesGrade.Close;
   BaseDados_PCP.db_FasesGradeLista.Close;
   FreeAndNil(FrmFasesGrade);
end;

procedure TFrmFasesGrade.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditNome.SetFocus;

end;

procedure TFrmFasesGrade.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmFasesGrade.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmFasesGrade.BtnCarregarClick(Sender: TObject);
var
   blAtivo : Boolean;
   nCodigoCHR : Integer;
begin

  blAtivo    :=BaseDados_PCP.db_fases.Active;
  nCodigoCHR :=0;

  if not BaseDados_PCP.db_fases.Active then
     BaseDados_PCP.db_fases.Open;

  if  BaseDados_PCP.db_fases.IsEmpty then
  begin
     avisosistema('Não há Fases cadastradas para serem carregadas na Grade.');
     exit;
  end;

  if not BaseDados_PCP.db_FasesGradeLista.IsEmpty then
  begin
     avisosistema('Grade não está vazia. Delete tudo e depois carregue novamente.');
     exit;
  end;

  BaseDados_PCP.db_fases.First;
  while not BaseDados_PCP.db_fases.eof do
  begin
     inc(nCodigoCHR);
     BaseDados_PCP.db_FasesGradeLista.Append;
     BaseDados_PCP.db_FasesGradeLista.FieldByName('FASE').AsInteger     := BaseDados_PCP.db_fases.FieldByName('CODIGO').AsInteger;
     BaseDados_PCP.db_FasesGradeLista.FieldByName('ORDEM').AsString     := FormatFloat('000', nCodigoCHR);
     //BaseDados_PCP.db_FasesGradeLista.FieldByName('NOME').AsString      :=
     BaseDados_PCP.db_FasesGradeLista.Post;

     BaseDados_PCP.db_fases.Next;
  end;
  BaseDados_PCP.db_FasesGradeLista.Refresh;
  BaseDados_PCP.db_FasesGradeLista.First;

  // volta ao estado que estava antes
  if BaseDados_PCP.db_fases.Active then
     BaseDados_PCP.db_fases.Active :=blAtivo;

end;

procedure TFrmFasesGrade.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmFasesGrade.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmFasesGrade.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmFasesGrade.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisarFasesGrade.Execute then
   begin
      BaseDados_PCP.db_FasesGrade.Locate('CODIGO', dbEditPesquisarFasesGrade.ResultFieldAsInteger('CODIGO'), []);
   End;
end;

procedure TFrmFasesGrade.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmFasesGrade.BtnDeletarLinhaClick(Sender: TObject);
begin
  if BaseDados_PCP.db_FasesGradeLista.IsEmpty then
  begin
     avisosistema('Não há dados para excluir.');
     exit;
  end;
  BaseDados_PCP.db_FasesGradeLista.Delete;


end;

procedure TFrmFasesGrade.BtnDeletarTudoClick(Sender: TObject);
begin
  if BaseDados_PCP.db_FasesGradeLista.IsEmpty then
  begin
     avisosistema('Não há dados para excluir.');
     exit;
  end;

  BaseDados_PCP.db_FasesGradeLista.First;
  while not BaseDados_PCP.db_FasesGradeLista.eof do
     BaseDados_PCP.db_FasesGradeLista.Delete;


end;

procedure TFrmFasesGrade.DBGrid1Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

procedure TFrmFasesGrade.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_F8 then
   begin
     if dbEditPesquisarFases.Execute then
     begin
        BaseDados_PCP.db_FasesGradeLista.Edit;
        BaseDados_PCP.db_FasesGradeLista.FieldByName('CODIGO').AsInteger  :=  dbEditPesquisarFases.ResultFieldAsInteger('CODIGO');
        BaseDados_PCP.db_FasesGradeLista.FieldByName('NOME').AsString     :=  dbEditPesquisarFases.ResultFieldAsString('NOME');
        BaseDados_PCP.db_FasesGradeLista.Post;
     End;
   end;
end;

end.
