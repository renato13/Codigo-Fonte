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

unit FPedidoVendaTecidos;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FFrameBarra, ExtCtrls, Buttons, DBCtrls, Grids,
     Vcl.DBGrids;

type
   TFrmPedidoVendaTecidos = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnSair: TBitBtn;
    GroupBox1: TGroupBox;
    DBAdvGrid2: TDBGrid;
    Panel2: TPanel;
    RDSelecao: TRadioGroup;
    EditPesquisa: TLabeledEdit;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RDSelecaoClick(Sender: TObject);
    procedure EditPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmPedidoVendaTecidos: TFrmPedidoVendaTecidos;

implementation

uses Global, FCompras, Biblioteca, FVendaDevolucaoProdutos, FPedidoVenda;

{$R *.dfm}

procedure TFrmPedidoVendaTecidos.BtnOkClick(Sender: TObject);
begin
   close;

end;

procedure TFrmPedidoVendaTecidos.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmPedidoVendaTecidos.EditPesquisaChange(Sender: TObject);
begin

   FrmPedidoVenda.dbReferenciaTecidos.Close;
   FrmPedidoVenda.dbReferenciaTecidos.SQL.Clear;
   FrmPedidoVenda.dbReferenciaTecidos.SQL.Add(ScriptSQL);
   FrmPedidoVenda.dbReferenciaTecidos.ParamByName('Procurar').AsString := '%' + EditPesquisa.Text + '%';
   FrmPedidoVenda.dbReferenciaTecidos.Open;

end;

procedure TFrmPedidoVendaTecidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TFrmPedidoVendaTecidos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_ESCAPE then
   begin
      BtnSairClick(Sender);
   end;

end;

procedure TFrmPedidoVendaTecidos.FormShow(Sender: TObject);
begin
   RDSelecaoClick(Sender);
   EditPesquisaChange(Sender);
   EditPesquisa.SetFocus;

end;

procedure TFrmPedidoVendaTecidos.RDSelecaoClick(Sender: TObject);
begin
   EditPesquisa.Editlabel.caption := RDSelecao.Items.Strings
     [RDSelecao.ItemIndex];

   ScriptSQL := '';
   ScriptSQL := ' SELECT *  FROM PEDIDOS_MATERIAPRIMA_TECIDOS ';
   ScriptSQL := ScriptSQL + ' WHERE ';
   ScriptSQL := ScriptSQL + ' REFERENCIA='+QuotedStr(strProduto);
   ScriptSQL := ScriptSQL + ' AND ';

   If RDSelecao.ItemIndex = 0 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(PRODUTO) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY PRODUTO, DESCRICAO ';
   End;

   If RDSelecao.ItemIndex = 1 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(DESCRICAO) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY DESCRICAO ';
   End;

   EditPesquisa.SetFocus;

end;

end.
