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

unit FPedidoVendaCodigoBarra;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls,   db, Buttons, jpeg, FFrameBarra,  
       Grids, DBGrids, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmPedidoVendaCodigoBarra = class(TForm)
      Panel3: TPanel;
      Label18: TLabel;
      Image2: TImage;
      EditCodigo: TLabeledEdit;
    FrmFrameBarra1: TFrmFrameBarra;
    SP_PedidoLancaGrade: TFDStoredProc;
    StringGridOpcoes: TStringGrid;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
   private
      { Private declarations }

    procedure prcMapaGrade;

   public
      { Public declarations }
   end;

var
   FrmPedidoVendaCodigoBarra: TFrmPedidoVendaCodigoBarra;



implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, FPedidoVenda,
  Biblioteca_pcp;

{$R *.dfm}

procedure TFrmPedidoVendaCodigoBarra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
   Begin
      close;
   End;

end;

procedure TFrmPedidoVendaCodigoBarra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   blProdutoViaLeitor :=false;
   Action := cafree;

end;


procedure TFrmPedidoVendaCodigoBarra.FormCreate(Sender: TObject);
begin

   blProdutoViaLeitor :=true;
   EditCodigo.text := '';


end;

procedure TFrmPedidoVendaCodigoBarra.EditCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
  nlQTDE : Integer;

begin



   // db_PedidoConferenciaItens.FieldByName('QUANTIDADE').AsFloat;
   // codigo de barras
   If Key = #13 then
   Begin
      FrmPedidoVenda.db_PedidoItens.Refresh;

      strProduto := '';
      strProduto := UpperCase( Trim(EditCodigo.Text) );
      EditCodigo.text := '';

      // checar se o produto existe
      if fncValidaReferenciaGrade(strProduto)=false then
      begin
         AvisoSistema('Produto ['+strProduto+'] não está cadastrado na Cor e Tamanho informado.');
         EditCodigo.SetFocus;
         Exit;
      End;

      // criar mapeamento de grade, caso nao exista;
      prcMapaGrade;

      // checar se ha estoque para o produto informado
      {
      if fncValidaReferenciaGradeQuantidade(sgReferencia)=false then
      begin
         AvisoSistema('Produto ['+sgReferencia+'] não possui quantidade em estoque.');
         EditCodigo.SetFocus;
         Exit;
      End;
      }

      nlQTDE   :=1;

      SP_PedidoLancaGrade.ParamByName('NEMPRESA').AsInteger         :=  FSistema.Empresa;
      SP_PedidoLancaGrade.ParamByName('NPEDIDO').AsInteger          :=  nPedidoVenda;
      SP_PedidoLancaGrade.ParamByName('SIDENTIFICADOR').AsString    :=  strProduto;
      SP_PedidoLancaGrade.ParamByName('NQUANTIDADE').AsInteger      :=  nlQTDE;
      SP_PedidoLancaGrade.ParamByName('NVALOR_UNIT').AsFloat        :=  0; // passando o valor zero, o proprio servidor SQL fara a localização do valor unitário;
      SP_PedidoLancaGrade.ParamByName('ACAO').AsString              :=  'INCLUIR';
      SP_PedidoLancaGrade.ExecProc;
      SP_PedidoLancaGrade.close;

      FrmPedidoVenda.CalculaPedido;
      FrmPedidoVenda.db_PedidoItens.Refresh;


      EditCodigo.text := '';
      EditCodigo.Setfocus;


   End;

end;

procedure TFrmPedidoVendaCodigoBarra.prcMapaGrade;
begin

   // verificar se existe
   if fncPedidoVendaExisteProduto(nPedidoVenda,RetornaIdentificadorReferencia(strProduto))=false then
   begin

      FrmPedidoVenda.db_PedidoItens.Append;
      FrmPedidoVenda.db_PedidoItens.FieldByName('REFERENCIA').AsString    :=  RetornaIdentificadorReferencia(strProduto);

     // SALVAR ITENS DO PEDIDO DE VENDA
     If (FrmPedidoVenda.db_PedidoItens.State in [dsedit, dsinsert]) then
     Begin
        FrmPedidoVenda.db_PedidoItens.Post;
     End;


      FrmPedidoVenda.CalculaPedido;
      FrmPedidoVenda.db_PedidoItens.Refresh;
   end;

   // verificar se existe mapeamento
   if fncPedidoVendaExisteProdutoGrade(nPedidoVenda,RetornaIdentificadorReferencia(strProduto))=false then
   begin

      GradeProduto_Montar(RetornaIdentificadorReferencia(strProduto),
                       StringGridOpcoes
                       );

      GradeProduto_Salvar(nPedidoVenda,
                          RetornaIdentificadorReferencia(strProduto),
                          '',
                          StringGridOpcoes
                           );
   end;



end;


end.

