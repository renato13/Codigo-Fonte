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


unit FProdutosGrade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, ExtCtrls, DB,    
   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos,   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
   TFrmProdutosGrade = class(TForm)
      Panel1: TPanel;
      Panel2: TPanel;
      GroupBox6: TGroupBox;
      GroupBox16: TGroupBox;
      DBGrid4: TDBGrid;
      GroupBox1: TGroupBox;
      GridGradeCores: TDBGrid;
      Panel3: TPanel;
      db_GradeLista: TFDQuery;
      db_GradeListaNometamanho: TStringField;

      ds_GradeLista: TDataSource;
      EditGrade: TIDBEditDialog;
      EditNomeGrade: TEdit;
      db_Cores_Modelos: TFDQuery;

      ds_Cores_Modelos: TDataSource;
      SP_ExisteCor: TFDStoredProc;
      SP_NomeCor: TFDStoredProc;
      Button1: TButton;
      db_GradeListaCODIGO: TIntegerField;
      db_GradeListaID_TAMANHO: TIntegerField;
      db_GradeListaORDEM: TStringField;
      db_GradeListaDESCRICAO: TStringField;
      db_GradeListaTAMANHO: TStringField;
      db_Cores_ModelosCODIGO: TIntegerField;
      db_Cores_ModelosID_COR: TIntegerField;
      db_Cores_ModelosNOME: TStringField;
    dbEditPesquisarCores: TIDBEditDialog;

      procedure EditGradeChange(Sender: TObject);

      procedure GridGradeCoresEditButtonClick(Sender: TObject);

      procedure GridGradeCoresKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);

      procedure GridGradeCoresKeyPress(Sender: TObject; var Key: Char);

      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure db_Cores_ModelosBeforePost(DataSet: TDataSet);
      procedure db_Cores_ModelosID_CORChange(Sender: TField);
      procedure FormShow(Sender: TObject);
      procedure Button1Click(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmProdutosGrade: TFrmProdutosGrade;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, FProdutos;

{$R *.dfm}

procedure TFrmProdutosGrade.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmProdutosGrade.db_Cores_ModelosBeforePost(DataSet: TDataSet);
begin

   db_Cores_Modelos.FieldByName('CODIGO').AsInteger :=
     FrmProdutos.db_referencias.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmProdutosGrade.db_Cores_ModelosID_CORChange(Sender: TField);
begin
   // envia uma requisição para o servidor checar se o PRODUTO digitado na grade
   // já existe em outra linha da mesma grade
   If ExisteCor(FrmProdutos.db_referencias.FieldByName('CODIGO').AsInteger,
     db_Cores_Modelos.FieldByName('ID_COR').AsInteger) then
   begin
      BeepCritica;
      Aviso('Cor ' + db_Cores_Modelos.FieldByName('ID_COR').AsString +
        ' já está incluído na grade.');
      db_Cores_Modelos.Cancel;
      exit;
   end;

   db_Cores_Modelos.FieldByName('NOME').AsString :=
     BuscaNomeCor(db_Cores_Modelos.FieldByName('ID_COR').AsInteger);

end;

procedure TFrmProdutosGrade.EditGradeChange(Sender: TObject);
Var
   igrade: integer;

begin

   try
      igrade := StrToInt(EditGrade.text);
   except
      igrade := 0;
   end;

   db_GradeLista.close;
   db_GradeLista.ParamByName('GRADE').Clear;;
   db_GradeLista.ParamByName('GRADE').AsInteger := igrade;
   db_GradeLista.open;
   db_GradeLista.Refresh;

end;

procedure TFrmProdutosGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   FrmProdutos.FrmFrameBotoes1.SpbSalvarClick(Sender);

   db_GradeLista.close;
   db_Cores_Modelos.close;

end;

procedure TFrmProdutosGrade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_escape then
      close;

end;

procedure TFrmProdutosGrade.FormShow(Sender: TObject);
begin
   db_GradeLista.open;
   db_Cores_Modelos.open;

end;

procedure TFrmProdutosGrade.GridGradeCoresEditButtonClick(Sender: TObject);
begin

   if dbEditPesquisarCores.Execute then
   begin
      if not(db_Cores_Modelos.State  in [dsEdit, dsInsert]) then
         db_Cores_Modelos.Edit;

      db_Cores_Modelos.FieldByname('ID_COR').AsInteger :=dbEditPesquisarCores.ResultFieldAsInteger('CODIGO');
   End;

end;

procedure TFrmProdutosGrade.GridGradeCoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF Key = VK_F8 Then
   begin

     if dbEditPesquisarCores.Execute then
     begin
        if not(db_Cores_Modelos.State  in [dsEdit, dsInsert]) then
           db_Cores_Modelos.Edit;

        db_Cores_Modelos.FieldByname('ID_COR').AsInteger :=dbEditPesquisarCores.ResultFieldAsInteger('CODIGO');
     End;

   end;

end;

procedure TFrmProdutosGrade.GridGradeCoresKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

end.
