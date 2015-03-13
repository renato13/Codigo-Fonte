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

Unit FUsuarioControle;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Menus, Mask, DBCtrls, DB, ComCtrls, ImgList,
    FFrameBarra, FFrameBotoes, DBGrids, Grids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.Actions, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ActnList;

type
   TFrmUsuarioControle = class(TForm)
      DS_Usuario: TDataSource;
      db_Usuario:  TFDQuery;
      DB_UsuarioAcesso: TFDQuery;
      DS_UsuariosAcesso: TDataSource;
      ImageList1: TImageList;
      GroupBox1: TGroupBox;
      Panel1: TPanel;
    BtnLiberarTudo: TButton;
    BtnBloquearTudo: TButton;
      BtnRecriar: TButton;
      GridMenus: TDBGrid;
      ListBox1: TListBox;
      Memo1: TMemo;
      GroupBox2: TGroupBox;
      FrmFrameBotoes1: TFrmFrameBotoes;
      GroupBox14: TGroupBox;
      PControle: TListView;
      FrmFrameBarra1: TFrmFrameBarra;
      DB_UsuarioAcessoDeletar: TFDQuery;
    DB_UsuarioAcessoSetar: TFDQuery;
    ActionList_Listar: TActionList;
    TreeView_Listar: TTreeView;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    EditSenha: TDBEdit;
    EditUserName: TDBEdit;
    GroupBox3: TGroupBox;
    GridUsuario: TDBGrid;
    GroupBox5: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox100: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
      procedure FormCreate(Sender: TObject);
      procedure Btn_SairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure db_UsuarioBeforePost(DataSet: TDataSet);
      procedure PControleDblClick(Sender: TObject);
      procedure DB_UsuarioAcessoBeforePost(DataSet: TDataSet);
      procedure db_UsuarioNewRecord(DataSet: TDataSet);
      procedure BtnRecriarClick(Sender: TObject);
      procedure BtnLiberarTudoClick(Sender: TObject);
      procedure BtnBloquearTudoClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure GroupBox2Exit(Sender: TObject);
    procedure GroupBox1Enter(Sender: TObject);

   private
      { Private declarations }
      //TreeView_Listar: TTreeView;
      //ActionList_Listar: TActionList;

      function EncontrarNo(aNome: string): TTreeNode;


   public
      { Public declarations }
   end;

var
   FrmUsuarioControle: TFrmUsuarioControle;

implementation

uses FBaseDados, Biblioteca, Global, FPrincipal,
   FRelatorioUsuario, FUsuariosOnLine, FCalendario;

{$R *.DFM}

procedure TFrmUsuarioControle.FormCreate(Sender: TObject);
begin

   FrmFrameBotoes1.DataSource := DS_Usuario;

   db_Usuario.open;
   DB_UsuarioAcesso.open;

end;

procedure TFrmUsuarioControle.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditUserName.SetFocus;

end;

procedure TFrmUsuarioControle.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin

   DB_UsuarioAcesso.Cancel;
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmUsuarioControle.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmUsuarioControle.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmUsuarioControle.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmUsuarioControle.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   if empty(db_Usuario.FieldByName('SENHA').AsString) then
   begin

      BeepAlerta;
      Informar('Atenção, a senha é obrigatória ');
      EditSenha.SetFocus;
      Abort;
   end;

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   If (DB_UsuarioAcesso.state in [dsEdit, dsInsert]) then
   Begin
      DB_UsuarioAcesso.Post;
   End;

end;

procedure TFrmUsuarioControle.GroupBox1Enter(Sender: TObject);
begin
   FrmFrameBotoes1SpbSalvarClick(Sender);
end;

procedure TFrmUsuarioControle.GroupBox2Exit(Sender: TObject);
begin

   If (db_Usuario.state in [dsEdit, dsInsert]) then
   Begin
      db_Usuario.Post;
   End;

end;

procedure TFrmUsuarioControle.Btn_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmUsuarioControle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_Usuario.close;
   DB_UsuarioAcesso.close;
end;

procedure TFrmUsuarioControle.db_UsuarioBeforePost(DataSet: TDataSet);
begin

   If empty(db_Usuario.FieldByName('SENHA').AsString) then
   begin
      BeepCritica;
      Informar('Atenção, a senha é obrigatória ');
      EditSenha.SetFocus;
      exit;
   end;

end;

procedure TFrmUsuarioControle.PControleDblClick(Sender: TObject);
begin

   // relatório de usuários
   db_Usuario.Refresh;
   If PControle.ItemIndex = 0 then
   begin
      FrmUsuarioLog := TFrmUsuarioLog.create(self);
      FrmUsuarioLog.ShowModal;
   End;

   // Usuários ativos
   If PControle.ItemIndex = 1 then
   begin
      FrmUsuariosOnLine := TFrmUsuariosOnLine.create(self);
      FrmUsuariosOnLine.ShowModal;
   End;

   // derrubar usuário
   If PControle.ItemIndex = 2 then
   begin

      aviso('esta função está temporariamente desabilitada ');
      exit;


      If Pergunta('Deseja fechar o usuário ' + db_Usuario.FieldByName
        ('UserName').AsString + '?') = true then
      Begin

         If not(db_Usuario.state in [dsEdit, dsInsert]) then
            db_Usuario.Edit;

         db_Usuario.FieldByName('ONLINE').AsString := 'S';
         db_Usuario.Post;

         Aviso('Em 1 minuto o usuário ' + db_Usuario.FieldByName('UserName')
           .AsString + ' será fechado.');

      end;
   end;

end;

procedure TFrmUsuarioControle.DB_UsuarioAcessoBeforePost(DataSet: TDataSet);
begin
   DB_UsuarioAcesso.FieldByName('CODIGO').AsString :=
     db_Usuario.FieldByName('CODIGO').AsString;
end;

procedure TFrmUsuarioControle.db_UsuarioNewRecord(DataSet: TDataSet);
begin
   db_Usuario.FieldByName('BLOQUEAR').AsString := 'N';
   db_Usuario.FieldByName('ONLINE').AsString   := 'N';
end;

function TFrmUsuarioControle.EncontrarNo(aNome: string): TTreeNode;
var
  i: Integer;
begin

  Result := nil;
  with TreeView_Listar.Items do
  begin
    for i := 0 to Pred(Count) do
      if Item[i].Text=aNome then
      begin
        Result := Item[i];
        Break;
      end;
  end;


end;

procedure TFrmUsuarioControle.BtnRecriarClick(Sender: TObject);
var
  i: Integer;
  no: TTreeNode;
  ac: TAction;
begin

   If Pergunta('Esse processo irá recriar todos os Menus para este usuário. '+
               'Continuar?')= false then
      exit;

   ActionList_Listar :=TActionList.create(self);
   TreeView_Listar.Items.Clear;

   DB_UsuarioAcesso.close;
   DB_UsuarioAcessoDeletar.ExecSQL;
   DB_UsuarioAcesso.Open;

   for i := 0 to Pred(FrmPrincipal.ActionMenus.ActionCount) do
   begin
     ac := TAction(FrmPrincipal.ActionMenus.Actions[i]);
     no := EncontrarNo(ac.Category);

     if no=nil then
     begin
       no := TreeView_Listar.Items.Add(TreeView_Listar.Items.GetFirstNode, ac.Category);
        //ListBox1.Items.Add('Menu: '+ac.Category);
       DB_UsuarioAcesso.append;
       DB_UsuarioAcesso.FieldByName('MENU').AsString         :='>> '+UpperCase( DeletaCaract(ac.Category, '&' ) ) +' <<';
       DB_UsuarioAcesso.FieldByName('GRUPOMENUS').AsString   :='S';
       DB_UsuarioAcesso.FieldByName('MENU_NAME').AsString    :='CATEGORIA';
       DB_UsuarioAcesso.Post;
     end;

     DB_UsuarioAcesso.append;
     DB_UsuarioAcesso.FieldByName('MENU').AsString          :='    '+DeletaCaract(ac.Caption, '&' );
     DB_UsuarioAcesso.FieldByName('GRUPOMENUS').AsString    :='N';
     DB_UsuarioAcesso.FieldByName('MENU_NAME').AsString     :=UpperCase(ac.Name);
     DB_UsuarioAcesso.FieldByName('MENU_ACESSAR').AsString  :='N';

     DB_UsuarioAcesso.Post;

   end;
   DB_UsuarioAcesso.close;
   DB_UsuarioAcesso.open;

end;



procedure TFrmUsuarioControle.BtnLiberarTudoClick(Sender: TObject);
begin

   DB_UsuarioAcesso.close;
   DB_UsuarioAcessoSetar.ParamByName('ACAO').AsString :='S';
   DB_UsuarioAcessoSetar.ExecSQL;
   DB_UsuarioAcesso.Open;

end;

procedure TFrmUsuarioControle.BtnBloquearTudoClick(Sender: TObject);
begin

   DB_UsuarioAcesso.close;
   DB_UsuarioAcessoSetar.ParamByName('ACAO').AsString :='N';
   DB_UsuarioAcessoSetar.ExecSQL;
   DB_UsuarioAcesso.Open;

end;

End.
