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

unit FVendaCaixa_LocalizarPedido;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, DBCtrls, Db, DBTables, Grids, DBGrids, StdCtrls,
      
      FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmVendaCaixa_LocalizarPedido = class(TForm)
      Panel4: TPanel;
      Panel1: TPanel;
      DS_Pedido: TDataSource;
      RDSelecao: TRadioGroup;
      EditPesquisa: TLabeledEdit;
      BtnOk: TBitBtn;
      BtnSair: TBitBtn;
      DBGrid1: TDBGrid;
      DB_PEDIDOS:  TFDQuery;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure EditPesquisaChange(Sender: TObject);
      procedure RDSelecaoClick(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure DBGrid1DblClick(Sender: TObject);
      procedure BtnOkClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }

      ScriptSQL: String;

   public
      { Public declarations }
   end;

var
   FrmVendaCaixa_LocalizarPedido: TFrmVendaCaixa_LocalizarPedido;

implementation

uses FBaseDados, Biblioteca, Global, FPrincipal;

{$R *.DFM}

procedure TFrmVendaCaixa_LocalizarPedido.FormCreate(Sender: TObject);
begin
   ScriptSQL := '';

end;

procedure TFrmVendaCaixa_LocalizarPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DB_PEDIDOS.Close;
end;

procedure TFrmVendaCaixa_LocalizarPedido.EditPesquisaChange(Sender: TObject);
begin

   DB_PEDIDOS.Close;
   DB_PEDIDOS.SQL.Clear;
   DB_PEDIDOS.SQL.Add(ScriptSQL);
   DB_PEDIDOS.ParamByName('xProcurar').Value := '%' + EditPesquisa.Text + '%';
   // aviso(IntToStr(length(EditPesquisa.Text)));
   DB_PEDIDOS.Open;

end;

procedure TFrmVendaCaixa_LocalizarPedido.RDSelecaoClick(Sender: TObject);
begin
   EditPesquisa.Editlabel.caption := RDSelecao.Items.Strings
     [RDSelecao.ItemIndex];

   if RDSelecao.ItemIndex = 0 Then
   Begin
      ScriptSQL := '';

      ScriptSQL :=
        ' Select A.PEDIDO_NUMERO, A.DATA, A.ENTREGA, A.PROD_QTDE, A.TOTAL_PEDIDO, A.VENDEDOR, ';
      ScriptSQL := ScriptSQL + ' A.PEDIDO_NATUREZA, B.CODIGO, B.NOME ';
      ScriptSQL := ScriptSQL + ' From PEDIDOS A, CLIENTES B ';
      ScriptSQL := ScriptSQL + ' WHERE ';
      ScriptSQL := ScriptSQL + ' B.CODIGO=A.CLIENTE ';
      ScriptSQL := ScriptSQL + ' AND ';
      ScriptSQL := ScriptSQL + ' A.STATUS<>''S'' ';
      ScriptSQL := ScriptSQL + ' AND ';
      ScriptSQL := ScriptSQL + ' UPPER(A.PEDIDO_NUMERO) LIKE UPPER(:xProcurar)';
      ScriptSQL := ScriptSQL + ' ORDER BY A.Data, A.PEDIDO_NUMERO ';
   End;

   if RDSelecao.ItemIndex = 1 Then
   Begin
      ScriptSQL := '';

      ScriptSQL :=
        ' Select A.PEDIDO_NUMERO, A.DATA, A.ENTREGA, A.PROD_QTDE, A.TOTAL_PEDIDO, A.VENDEDOR, ';
      ScriptSQL := ScriptSQL + ' A.PEDIDO_NATUREZA, B.CODIGO, B.NOME ';
      ScriptSQL := ScriptSQL + ' From PEDIDOS A, CLIENTES B ';
      ScriptSQL := ScriptSQL + ' WHERE ';
      ScriptSQL := ScriptSQL + ' B.CODIGO=A.CLIENTE ';
      ScriptSQL := ScriptSQL + ' AND ';
      ScriptSQL := ScriptSQL + ' A.STATUS<>''S'' ';
      ScriptSQL := ScriptSQL + ' AND ';
      ScriptSQL := ScriptSQL + ' UPPER(B.NOME) LIKE UPPER(:xProcurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY A.DATA, B.NOME, A.PEDIDO_NUMERO ';

   End;

   EditPesquisa.SetFocus;
   EditPesquisaChange(Sender);

end;

procedure TFrmVendaCaixa_LocalizarPedido.FormShow(Sender: TObject);
begin
   RDSelecaoClick(Sender);

   EditPesquisaChange(Sender);
end;

procedure TFrmVendaCaixa_LocalizarPedido.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmVendaCaixa_LocalizarPedido.DBGrid1DblClick(Sender: TObject);
begin
   BtnOk.Click;

end;

procedure TFrmVendaCaixa_LocalizarPedido.BtnOkClick(Sender: TObject);
begin
   Achar[0] := '';
   Achar[0] := DB_PEDIDOS.FieldByName('PEDIDO_NUMERO').ASstring;
end;

procedure TFrmVendaCaixa_LocalizarPedido.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   If Key = VK_RETURN THEN
      BtnOk.Click;;

   If Key = VK_ESCAPE THEN
      BtnSair.Click;;

end;

end.
