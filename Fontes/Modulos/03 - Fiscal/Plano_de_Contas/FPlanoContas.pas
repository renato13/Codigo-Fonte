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


Unit FPlanoContas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Menus, Mask, DBCtrls, DB,   Grids,
   DBGrids, ComCtrls,     FFrameBarra,
   FFrameBotoes,   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmPlanoContas = class(TForm)
      PagePlanoContas: TPageControl;
      Tab_registros: TTabSheet;
      DBGrid_Principal: TDBGrid;
      Tab_Editar: TTabSheet;
      GroupBox1: TGroupBox;
      DBNavigator1: TDBNavigator;
      PainelClasse: TPanel;
      GroupBox2: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      EditCodigo: TDBEdit;
      EditNome: TDBEdit;
      DBRadioGroup1: TDBRadioGroup;
      GroupBox3: TGroupBox;
      DBGridDetalhes: TDBGrid;
      DS_PlanoClasses: TDataSource;
      DB_PlanoClasses:  TFDQuery;
      DB_PlanoClassesTIPO: TStringField;
      DB_PlanoClassesDESCRICAO: TStringField;
      DB_PlanoDetalhes: TFDQuery;
      ds_PlanoDetalhes: TDataSource;
      db_PlanoChecar: TFDQuery;
      DB_PlanoClassesVALOR_ACUMULADO: TBCDField;
      FrmFrameBarra1: TFrmFrameBarra;
    DB_PlanoClassesCODIGO: TStringField;
    DB_PlanoDetalhesCODIGO: TStringField;
    DB_PlanoDetalhesCODIGO_PLANO: TStringField;
    DB_PlanoDetalhesNOME: TStringField;
    DB_PlanoDetalhesTIPO: TStringField;
    DB_PlanoDetalhesLIMITE: TBCDField;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbEditPesquisar: TIDBEditDialog;
    dbEditPesquisarDetalhe: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure Btn_SairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure DBGridDetalhesEnter(Sender: TObject);
      procedure DBGrid_PrincipalDblClick(Sender: TObject);
      procedure DBGridDetalhesKeyPress(Sender: TObject; var Key: Char);
      procedure DB_PlanoDetalhesBeforePost(DataSet: TDataSet);
      procedure DB_PlanoClassesBeforePost(DataSet: TDataSet);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure DB_PlanoDetalhesNewRecord(DataSet: TDataSet);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure DBGridDetalhesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmPlanoContas: TFrmPlanoContas;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.DFM}

procedure TFrmPlanoContas.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_PlanoClasses;

   PagePlanoContas.ActivePageIndex := 0;

   DB_PlanoClasses.open;
   DB_PlanoDetalhes.open;
end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   PagePlanoContas.ActivePageIndex := 1;
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditCodigo.SetFocus;
end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   PagePlanoContas.ActivePageIndex := 0;
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   DB_PlanoDetalhes.Cancel;
end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      DB_PlanoClasses.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   end;
end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   // SALVAR REGISTRO
   If (DB_PlanoDetalhes.state in [dsEdit, dsInsert]) then
   Begin
      DB_PlanoDetalhes.Post;
      DB_PlanoDetalhes.Refresh;
   End;

end;

procedure TFrmPlanoContas.Btn_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmPlanoContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DB_PlanoClasses.close;
   DB_PlanoDetalhes.close;

end;

procedure TFrmPlanoContas.DBGridDetalhesEnter(Sender: TObject);
begin
   // SALVAR REGISTRO
   If (DB_PlanoClasses.state in [dsEdit, dsInsert]) then
   Begin
      DB_PlanoClasses.Post;
   End;

end;

procedure TFrmPlanoContas.DBGrid_PrincipalDblClick(Sender: TObject);
begin

   If DB_PlanoClasses.IsEmpty then
   Begin
      Informar('Não há dados para editar');
      abort;
   end;

   PagePlanoContas.ActivePageIndex := 1;

end;

procedure TFrmPlanoContas.DB_PlanoClassesBeforePost(DataSet: TDataSet);
begin

   If Empty(DB_PlanoClasses.FieldByName('DESCRICAO').AsString) then
   begin
      Informar('Informe o Nome da Classe referente ao Plano de Contas');
      abort;
   end;

   If Empty(DB_PlanoClasses.FieldByName('TIPO').AsString) then
   begin
      Informar('Informe o Classificação do Plano de Contas');
      abort;
   end;

end;

procedure TFrmPlanoContas.DB_PlanoDetalhesBeforePost(DataSet: TDataSet);
begin

   If Empty(DB_PlanoDetalhes.FieldByName('CODIGO_PLANO').AsString) then
   begin
      Informar('Informe o Código do Plano de Contas');
      abort;
   end;

   If Empty(DB_PlanoDetalhes.FieldByName('NOME').AsString) then
   begin
      Informar('Informe o Nome do Plano de Contas');
      abort;
   end;

   DB_PlanoDetalhes.FieldByName('CODIGO').AsString :=
     DB_PlanoClasses.FieldByName('CODIGO').AsString;

   // checar existencia de código semelhante.
   db_PlanoChecar.close;
   db_PlanoChecar.open;

   if DB_PlanoDetalhes.FieldByName('CODIGO').AsString <>
     db_PlanoChecar.FieldByName('CODIGO').AsString then
   begin

      if db_PlanoChecar.RecordCount > 0 then
      begin
         Informar('Já Existe Plano de Contas com esse código... ' + #13 + #10 +
           'Código da Classe: ' + db_PlanoChecar.FieldByName('CODIGO').AsString
           + ' / ' + 'Classificação: ' + db_PlanoChecar.FieldByName('TIPO')
           .AsString + #13 + #10 + #13 + #10 + 'Digite outro Código');
         db_PlanoChecar.close;
         abort;
      end;

   End;
   db_PlanoChecar.close;

end;

procedure TFrmPlanoContas.DB_PlanoDetalhesNewRecord(DataSet: TDataSet);
begin
   DB_PlanoDetalhes.FieldByName('TIPO').AsString :=
     DB_PlanoClasses.FieldByName('TIPO').AsString;

end;

procedure TFrmPlanoContas.DBGridDetalhesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_f8 then
   begin
     if dbEditPesquisar.Execute then
     begin
        DB_PlanoDetalhes.Locate('CODIGO_PLANO', dbEditPesquisar.ResultFieldAsString('CODIGO_PLANO'), []);
     end;
   end;
end;

procedure TFrmPlanoContas.DBGridDetalhesKeyPress(Sender: TObject;
  var Key: Char);
begin
   // converter os caracteres em maiúsculos
   Key := AnsiUpperCase(Key)[1];

end;

end.
