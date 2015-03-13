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

unit FProdutosQuantidadeGrade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls, DBGrids,

   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
   FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
   FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS,
   FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
   FireDAC.Comp.DataSet ;

type
   TFrmProdutosQuantidadeGrade = class(TForm)
      Panel1: TPanel;
    ds_EstoqueGrade: TDataSource;
    db_EstoqueGrade: TFDQuery;
    DBGrid1: TDBGrid;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
    procedure StringGridOpcoesEditChange(Sender: TObject; ACol, ARow: Integer;
      Value: string);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmProdutosQuantidadeGrade: TFrmProdutosQuantidadeGrade;

implementation

uses Biblioteca_pcp, FProdutosQuantidade, Biblioteca, Global;

{$R *.dfm}

procedure TFrmProdutosQuantidadeGrade.FormCreate(Sender: TObject);
begin

      FSQL := ' SELECT *  FROM PCP_DISTRIBUIR_RGRADE_RETORNO ';

      CrossTab(db_EstoqueGrade,
             FSQL,
             'COR',
             'GRADE (COR/TAMANHO):',
             'TAMANHO',
             'QUANTIDADE',
             ' WHERE TAMANHO<>''''  AND REFERENCIA='+QuotedStr(Trim(strProduto)),
             'ORDEM_GRADE',
             'SUM');
end;

procedure TFrmProdutosQuantidadeGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   Action := Cafree;

end;

procedure TFrmProdutosQuantidadeGrade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmProdutosQuantidadeGrade.StringGridOpcoesEditChange(
  Sender: TObject; ACol, ARow: Integer; Value: string);
begin
  bAlterouGrade := True;
end;

end.
