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

unit FOrdemProducaoGrade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls,   DB;

type
   TFrmOrdemProducaoGrade = class(TForm)
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
   FrmOrdemProducaoGrade: TFrmOrdemProducaoGrade;

implementation

uses FBaseDados_PCP, Biblioteca_pcp, Biblioteca,  Global, SQLServer;

{$R *.dfm}

procedure TFrmOrdemProducaoGrade.FormCreate(Sender: TObject);
begin

   GradeProduto_Montar_Produzir(strReferencia,
                                StringGridOpcoes);

   GradeProduto_Carregar_Produzir(nOrdemProducao,
                                  strReferencia,
                                  StringGridOpcoes);

end;

procedure TFrmOrdemProducaoGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   GradeProduto_Salvar_Produzir(nOrdemProducao,
                                strReferencia,
                                StringGridOpcoes);



      if not ( BaseDados_PCP.db_OrdemProducaoItens.state in [dsedit,dsinsert]) then
         BaseDados_PCP.db_OrdemProducaoItens.Edit;

      BaseDados_PCP.db_OrdemProducaoItens.FieldByName('QUANTIDADE').AsFloat := GradeProduto_Totalizar(StringGridOpcoes);

      if ( BaseDados_PCP.db_OrdemProducaoItens.state in [dsedit,dsinsert]) then
         BaseDados_PCP.db_OrdemProducaoItens.Post;


   Action := Cafree;

end;

procedure TFrmOrdemProducaoGrade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F3 then
   begin
      GradeZerar(StringGridOpcoes);
      GradeProduto_Montar_Produzir(strReferencia, StringGridOpcoes);
   end;

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmOrdemProducaoGrade.StringGridOpcoesCellValidate(Sender: TObject;
  ACol, ARow: Integer; var Value: string; var Valid: Boolean);
begin
    blAlterado:=true;
end;

end.
