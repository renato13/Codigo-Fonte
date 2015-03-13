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

unit FBalcaoProdutos;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, DB,     Grids,
   DBGrids, StdCtrls, ExtCtrls, Buttons,   FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmBalcaoProdutos = class(TForm)
      Panel4: TPanel;
      Panel1: TPanel;
      RDSelecao: TRadioGroup;
      EditPesquisa: TLabeledEdit;
      DBGrid1: TDBGrid;
      DS_DADOS: TDataSource;
      ADO_Produtos:  TFDQuery;
      ADO_ProdutosCODIGO: TStringField;
      ADO_ProdutosDESCRICAO: TStringField;
      ADO_ProdutosTAM: TStringField;
      ADO_ProdutosUND: TStringField;
      ADO_ProdutosLOCALIZACAO: TStringField;
      ADO_ProdutosPRC_VENDA: TBCDField;
      ADO_ProdutosREF: TStringField;
      ADO_ProdutosCOR: TStringField;
      ADO_ProdutosMARCA: TStringField;
      ADO_ProdutosQTD_TOTAL: TBCDField;
      procedure FormShow(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure RDSelecaoClick(Sender: TObject);
      procedure EditPesquisaChange(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmBalcaoProdutos: TFrmBalcaoProdutos;

implementation

uses Global, Biblioteca;

{$R *.dfm}

procedure TFrmBalcaoProdutos.FormShow(Sender: TObject);
begin
   RDSelecaoClick(Sender);
   EditPesquisaChange(Sender);

end;

procedure TFrmBalcaoProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   ADO_Produtos.Close;
   Action := Cafree;

end;

procedure TFrmBalcaoProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
      Close;
end;

procedure TFrmBalcaoProdutos.RDSelecaoClick(Sender: TObject);
begin
   EditPesquisa.Editlabel.caption := RDSelecao.Items.Strings
     [RDSelecao.ItemIndex];

   ScriptSQL := '';
   ScriptSQL := ' SELECT *  FROM ESTOQUE ';
   ScriptSQL := ScriptSQL + ' WHERE ';
   If RDSelecao.ItemIndex = 0 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(CODIGO) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY CODIGO, DESCRICAO, UND, TAM ';
   End;

   If RDSelecao.ItemIndex = 1 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(DESCRICAO) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY DESCRICAO, UND, TAM ';
   End;

   EditPesquisa.SetFocus;
   EditPesquisaChange(Sender);

end;

procedure TFrmBalcaoProdutos.EditPesquisaChange(Sender: TObject);
begin
   ADO_Produtos.Close;
   ADO_Produtos.SQL.Clear;
   ADO_Produtos.SQL.Add(ScriptSQL);
   ADO_Produtos.ParamByName('Procurar').AsString :=
     '%' + EditPesquisa.Text + '%';
   ADO_Produtos.Open;
end;

end.
