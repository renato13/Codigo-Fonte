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

unit FVendasDevolucaoGradeEditar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls;

type
   TFrmVendasDevolucaoGradeEditar = class(TForm)
      Panel1: TPanel;
    StringGridOpcoes: TStringGrid;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
    procedure StringGridOpcoesCellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: string; var Valid: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
   private
      { Private declarations }
      nqOrigem, nqDigitado : Real;
   public
      { Public declarations }
   end;

var
   FrmVendasDevolucaoGradeEditar: TFrmVendasDevolucaoGradeEditar;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Biblioteca_pcp,
  FVendaDevolucaoProdutos;


{$R *.dfm}

procedure TFrmVendasDevolucaoGradeEditar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

   nqOrigem   :=0;
   nqDigitado :=0;

   // comparar quantidades
   FrmVendaDevolucaoProdutos.db_VendasItens.locate('PRODUTO', strProduto, []);
   nqOrigem    := FrmVendaDevolucaoProdutos.db_VendasItens.FieldByName('QUANTIDADE').AsInteger;
   nqDigitado  := GradeProduto_Totalizar(StringGridOpcoes); // quantidade digitada


   if (nqDigitado>nqOrigem) then
   begin
      AvisoSistema('A Quantidade digitada é maior que a '+
                   'quantidade da Nota Fiscal de origem. Corrija!');

      StringGridOpcoes.SetFocus;
      Abort;
   End;

end;

procedure TFrmVendasDevolucaoGradeEditar.FormCreate(Sender: TObject);
begin

   sGradeEditada:=false;

   GradeProduto_Montar(strProduto, StringGridOpcoes);

   VendaGradeDevolucao_QuantidadeCarregar(FrmVendaDevolucaoProdutos.db_VendasDevolucao.FieldByName('CODIGO').AsInteger,
                                  strProduto,
                                  StringGridOpcoes);

end;

procedure TFrmVendasDevolucaoGradeEditar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   // apenas continuar se a quantidade digitada estiver correta
   VendaGradeDevolucao_QuantidadeSalvar(FrmVendaDevolucaoProdutos.db_VendasDevolucao.FieldByName('CODIGO').AsInteger,
                            strProduto,
                            StringGridOpcoes);

   FrmVendaDevolucaoProdutos.db_VendasDevolucaoItens.Edit;
   FrmVendaDevolucaoProdutos.db_VendasDevolucaoItens.FieldByName('QUANTIDADE').AsFloat :=GradeProduto_Totalizar(StringGridOpcoes);
   FrmVendaDevolucaoProdutos.db_VendasDevolucaoItens.Post;
   FrmVendaDevolucaoProdutos.db_VendasDevolucaoItens.Refresh;



   Action := Cafree;

end;

procedure TFrmVendasDevolucaoGradeEditar.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmVendasDevolucaoGradeEditar.StringGridOpcoesCellValidate(Sender: TObject;
  ACol, ARow: Integer; var Value: string; var Valid: Boolean);
begin
    sGradeEditada:=true;
end;

end.
