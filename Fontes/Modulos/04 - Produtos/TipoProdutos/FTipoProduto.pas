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

Unit FTipoProduto;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Menus, Mask, DBCtrls, DB,  
        FFrameBotoes,
   FFrameBarra, Grids, DBGrids, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos,   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmTipoProduto = class(TForm)
      GroupBox1: TGroupBox;
      Label2: TLabel;
      Label5: TLabel;
      EditNOME: TDBEdit;
      Label3: TLabel;
      db_TipoProduto:  TFDQuery;
      DS_TipoProduto: TDataSource;
      EditCodigo: TDBEdit;
      Label1: TLabel;
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
      GroupBox2: TGroupBox;
      DBGrid1: TDBGrid;
      LocalizarTipoProduto: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure Btn_SairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure db_TipoProdutoBeforePost(DataSet: TDataSet);
      procedure db_TipoProdutoPostError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure db_TipoProdutoEditError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure db_TipoProdutoDeleteError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmTipoProduto: TFrmTipoProduto;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.DFM}

procedure TFrmTipoProduto.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_TipoProduto;
   db_TipoProduto.open;

end;

procedure TFrmTipoProduto.FormShow(Sender: TObject);
begin

   // validar siglas obrigatorias
   if db_TipoProduto.Locate('CODIGO', 'TCD', [])=False Then
   begin
      // incluir tecidos
      db_TipoProduto.Append;
      db_TipoProduto.FieldByName('CODIGO').AsString :='TCD';
      db_TipoProduto.FieldByName('NOME').AsString   :='TECIDOS';
      db_TipoProduto.Post;
   end;


   // incluir materia prima
   if db_TipoProduto.Locate('CODIGO', 'MAT', [])=False Then
   begin
      db_TipoProduto.Append;
      db_TipoProduto.FieldByName('CODIGO').AsString :='MAT';
      db_TipoProduto.FieldByName('NOME').AsString   :='MATERIA PRIMA';
      db_TipoProduto.Post;
   end;

   // incluir produto acabado
   if db_TipoProduto.Locate('CODIGO', 'ACA', [])=False Then
   begin
      db_TipoProduto.Append;
      db_TipoProduto.FieldByName('CODIGO').AsString :='ACA';
      db_TipoProduto.FieldByName('NOME').AsString   :='ACABADO';
      db_TipoProduto.Post;
   end;

   // incluir produto consulmo interno
   if db_TipoProduto.Locate('CODIGO', 'CSM', [])=False Then
   begin
      db_TipoProduto.Append;
      db_TipoProduto.FieldByName('CODIGO').AsString :='CSM';
      db_TipoProduto.FieldByName('NOME').AsString   :='CONSUMO INTERNO';
      db_TipoProduto.Post;
   end;

   db_TipoProduto.Refresh;
   db_TipoProduto.First;
end;

procedure TFrmTipoProduto.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditCodigo.SetFocus;

end;

procedure TFrmTipoProduto.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmTipoProduto.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmTipoProduto.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmTipoProduto.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if LocalizarTipoProduto.Execute then
   begin
      db_TipoProduto.Locate('CODIGO', LocalizarTipoProduto.ResultFieldAsString('CODIGO'), []);
   end;

end;

procedure TFrmTipoProduto.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmTipoProduto.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmTipoProduto.Btn_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmTipoProduto.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmTipoProduto.db_TipoProdutoBeforePost(DataSet: TDataSet);
begin

   if Empty(db_TipoProduto.FieldByName('CODIGO').AsString) then
   begin
      BeepCritica;
      Informar('Campo código é obrigatório. Cuidado para não digitar duplicado.');
      EditCodigo.SetFocus;
      Abort;
   end;

end;

procedure TFrmTipoProduto.db_TipoProdutoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmTipoProduto.db_TipoProdutoEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmTipoProduto.db_TipoProdutoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);
end;

procedure TFrmTipoProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_TipoProduto.close;
end;

end.
