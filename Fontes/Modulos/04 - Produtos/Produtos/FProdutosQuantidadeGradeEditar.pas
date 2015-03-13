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

unit FProdutosQuantidadeGradeEditar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls;

type
   TFrmProdutosQuantidadeGradeEditar = class(TForm)
      Panel1: TPanel;
    StringGridOpcoes: TStringGrid;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
    procedure StringGridOpcoesCellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: string; var Valid: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmProdutosQuantidadeGradeEditar: TFrmProdutosQuantidadeGradeEditar;

implementation

uses FBaseDados_PCP, Biblioteca_pcp, Biblioteca,
  FOrdemProducaoGrade, Global, FProdutosQuantidade, Classe.Usuarios, SQLServer;

{$R *.dfm}

procedure TFrmProdutosQuantidadeGradeEditar.FormCreate(Sender: TObject);
begin


   GradeProduto_Montar(strProduto, StringGridOpcoes);

   CadProduto_EstoqueCarregar(FrmProdutosQuantidade.db_referencias.FieldByName('CODIGO').AsInteger,
                                  strProduto,
                                  StringGridOpcoes);

   if (fncUsuario_retCampo(nUsuario,'PERMISSAO_ESTOQUEINVENTARIO')='N') Then
      StringGridOpcoes.Options := StringGridOpcoes.Options - [goEditing];

end;

procedure TFrmProdutosQuantidadeGradeEditar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

      CadProduto_EstoqueSalvar(FrmProdutosQuantidade.db_referencias.FieldByName('CODIGO').AsInteger,
                                 strProduto,
                                 StringGridOpcoes);


        FrmProdutosQuantidade.db_referencias.Edit;
        FrmProdutosQuantidade.db_referencias.FieldByName('ESTOQUESALDO').AsFloat :=GradeProduto_Totalizar(StringGridOpcoes);
        FrmProdutosQuantidade.db_referencias.Post;

   Action := Cafree;

end;

procedure TFrmProdutosQuantidadeGradeEditar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F3 then
   begin
      GradeZerar(StringGridOpcoes);
      GradeProduto_Montar(strProduto, StringGridOpcoes);
   end;

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmProdutosQuantidadeGradeEditar.StringGridOpcoesCellValidate(Sender: TObject;
  ACol, ARow: Integer; var Value: string; var Valid: Boolean);
begin
    blAlterado:=true;
end;

end.

