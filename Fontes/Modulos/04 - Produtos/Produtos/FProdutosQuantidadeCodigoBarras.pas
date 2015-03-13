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

unit FProdutosQuantidadeCodigoBarras;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls,   db, Buttons, jpeg, FFrameBarra,  
       Grids, DBGrids, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmProdutosQuantidadeCodigoBarras = class(TForm)
      Panel3: TPanel;
      Label18: TLabel;
      Image2: TImage;
      EditCodigo: TLabeledEdit;
    FrmFrameBarra1: TFrmFrameBarra;
    StringGridOpcoes: TStringGrid;
    SP_ReferenciaLancaGrade: TFDStoredProc;
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
   FrmProdutosQuantidadeCodigoBarras: TFrmProdutosQuantidadeCodigoBarras;



implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, FPedidoVenda,
  Biblioteca_pcp, FProdutosQuantidade;

{$R *.dfm}

procedure TFrmProdutosQuantidadeCodigoBarras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
   Begin
      close;
   End;

end;

procedure TFrmProdutosQuantidadeCodigoBarras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   blProdutoViaLeitor :=false;
   Action := cafree;

end;


procedure TFrmProdutosQuantidadeCodigoBarras.FormCreate(Sender: TObject);
begin

   blProdutoViaLeitor :=true;
   EditCodigo.text := '';

end;

procedure TFrmProdutosQuantidadeCodigoBarras.EditCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
  nlQTDE : Integer;

begin



   // db_PedidoConferenciaItens.FieldByName('QUANTIDADE').AsFloat;
   // codigo de barras
   If Key = #13 then
   Begin
      FrmProdutosQuantidade.db_referencias.Refresh;

      strProduto := '';
      strProduto := UpperCase( Trim(EditCodigo.Text) );
      EditCodigo.text := '';

      // checar se o produto existe
      if fncValidaReferenciaGrade(strProduto)=false then
      begin

         AvisoSistemaErro('Produto ['+strProduto+'] não está cadastrado na Cor e Tamanho informado.');
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

      SP_ReferenciaLancaGrade.ParamByName('NEMPRESA').AsInteger         :=  FSistema.Empresa;
      SP_ReferenciaLancaGrade.ParamByName('SIDENTIFICADOR').AsString    :=  strProduto;
      SP_ReferenciaLancaGrade.ParamByName('NQUANTIDADE').AsInteger      :=  nlQTDE;
      SP_ReferenciaLancaGrade.ParamByName('NQUALIDADE').AsInteger       :=  FParametros.Producao.QualidadePadrao;
      SP_ReferenciaLancaGrade.ParamByName('ACAO').AsString              :=  'INCLUIR';
      SP_ReferenciaLancaGrade.ExecProc;
      SP_ReferenciaLancaGrade.close;

      strProduto :=RetornaIdentificadorReferencia(strProduto);

      FrmProdutosQuantidade.db_referencias.Refresh;
      FrmProdutosQuantidade.db_referencias.first;
      FrmProdutosQuantidade.db_referencias.Locate('REFERENCIA',strProduto,[]);


      EditCodigo.text := '';
      EditCodigo.Setfocus;


   End;

end;

procedure TFrmProdutosQuantidadeCodigoBarras.prcMapaGrade;
begin

   // verificar se existe
   if fncValidaReferenciaQuantidadeGrade(strProduto)=false then
   begin

      FrmProdutosQuantidade.db_referencias.Append;
      FrmProdutosQuantidade.db_referencias.FieldByName('REFERENCIA').AsString    :=  RetornaIdentificadorReferencia(strProduto);
      FrmProdutosQuantidade.db_referencias.FieldByName('IDENTIFICADOR').AsString :=  strProduto;

     // SALVAR ITENS DO PEDIDO DE VENDA
     If (FrmProdutosQuantidade.db_referencias.State in [dsedit, dsinsert]) then
     Begin
        FrmProdutosQuantidade.db_referencias.Post;
     End;


      FrmProdutosQuantidade.db_referencias.RefreshRecord;
   end;

   // verificar se existe mapeamento
   if fncValidaReferenciaQuantidadeGrade(strProduto)=false then
   begin

      GradeProduto_Montar(RetornaIdentificadorReferencia(strProduto),
                       StringGridOpcoes
                       );

      CadProduto_EstoqueSalvar(StrToIntDef(fncProduto_retCampo(RetornaIdentificadorReferencia(strProduto),'CODIGO'),0),
                                 RetornaIdentificadorReferencia(strProduto),
                                 StringGridOpcoes);
   end;



end;

end.

