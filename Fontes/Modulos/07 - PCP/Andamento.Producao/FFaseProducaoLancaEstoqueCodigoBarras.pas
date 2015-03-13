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

unit FFaseProducaoLancaEstoqueCodigoBarras;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls,   db, Buttons, jpeg, FFrameBarra,  
      Grids, DBGrids, pngimage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmFaseProducaoLancaEstoqueCodigoBarras = class(TForm)
      Panel3: TPanel;
      Label18: TLabel;
      Image2: TImage;
      EditCodigo: TLabeledEdit;
    FrmFrameBarra1: TFrmFrameBarra;
    StringGridOpcoes: TStringGrid;
    SP_DefinirIdentificador:  TFDStoredProc;
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
   FrmFaseProducaoLancaEstoqueCodigoBarras: TFrmFaseProducaoLancaEstoqueCodigoBarras;



implementation

uses FPrincipal, SQLServer, Biblioteca, Global,
     Biblioteca_pcp, FFaseProducaoLancaEstoque, FProdutosQuantidade;

{$R *.dfm}

procedure TFrmFaseProducaoLancaEstoqueCodigoBarras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
   Begin
      close;
   End;

end;

procedure TFrmFaseProducaoLancaEstoqueCodigoBarras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   blProdutoViaLeitor :=false;
   Action := cafree;

end;


procedure TFrmFaseProducaoLancaEstoqueCodigoBarras.FormCreate(Sender: TObject);
begin

   blProdutoViaLeitor :=true;
   EditCodigo.text := '';

end;

procedure TFrmFaseProducaoLancaEstoqueCodigoBarras.EditCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
  nlQTDE : Integer;

begin

   // db_PedidoConferenciaItens.FieldByName('QUANTIDADE').AsFloat;
   // codigo de barras
   If Key = #13 then
   Begin
      FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.Refresh;

      strProduto := '';
      strProduto := UpperCase( Trim(EditCodigo.Text) );
      EditCodigo.text := '';

      if (strProduto='') then
      begin
         Exit;
      End;

      // checar se o produto existe
      strReferencia  := '';
      strReferencia  := RetornaIdentificadorReferencia(strProduto);
      if (strReferencia='') then
         strReferencia:=strProduto;

      if fncValidaAndamentoReferenciaGrade(nOrdemProducao,strProduto)=false then
      begin
         AvisoSistemaErro( Concat('Produto [',strReferencia,'] não faz parte da Ordem de Produção: [',IntToStr(nOrdemProducao),']'));
         EditCodigo.SetFocus;
         Exit;
      End;

      // criar mapeamento de grade, caso nao exista;
      prcMapaGrade;



      FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.Refresh;
      FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.first;

      nlQTDE         := 1;

      if FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.Locate('IDENTIFICADOR',strProduto,[])=false Then
      begin
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.Append;
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('REFERENCIA').AsString       := strReferencia;
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('IDENTIFICADOR').AsString    := strProduto;
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('COR_ID').AsInteger          := StrToIntDef(prcOrdemProducaoAndamento_retCampo(nOrdemProducao,strProduto,'COR_ID'),0);
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('COR').AsString              := prcOrdemProducaoAndamento_retCampo(nOrdemProducao,strProduto,'COR');
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('TAMANHO_ID').AsInteger      := StrToIntDef(prcOrdemProducaoAndamento_retCampo(nOrdemProducao,strProduto,'TAMANHO_ID'),0);
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('TAMANHO').AsString          := prcOrdemProducaoAndamento_retCampo(nOrdemProducao,strProduto,'TAMANHO');
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('ORDEM_GRADE').AsString      := prcOrdemProducaoAndamento_retCampo(nOrdemProducao,strProduto,'ORDEM_GRADE');
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('QUANTIDADE').AsInteger      := nlQTDE;
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.Post;
      end
      else
      begin
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.Edit;
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('QUANTIDADE').AsInteger    :=
            FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('QUANTIDADE').AsInteger + nlQTDE;
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.Post;
      end;

      EditCodigo.text := '';
      EditCodigo.Setfocus;
   End;

end;

procedure TFrmFaseProducaoLancaEstoqueCodigoBarras.prcMapaGrade;
begin


   // verificar se existe
   {
   if fncValidaReferenciaQuantidadeGrade(strProduto)=false then
   begin

      FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.Append;
      FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('REFERENCIA').AsString    :=  RetornaIdentificadorReferencia(strProduto);
      FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('IDENTIFICADOR').AsString :=  strProduto;

     // SALVAR ITENS DO PEDIDO DE VENDA
     If (FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.State in [dsedit, dsinsert]) then
     Begin
        FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.Post;
     End;
      FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.Refresh;
   end;
   }

   // verificar se existe mapeamento
   if fncValidaReferenciaQuantidadeGrade(strProduto)=false then
   begin

      GradeProduto_Montar(RetornaIdentificadorReferencia(strProduto),
                       StringGridOpcoes
                       );

      CadProduto_EstoqueSalvar(StrToIntDef(fncProduto_retCampo(RetornaIdentificadorReferencia(strProduto),'CODIGO'),0),
                                 RetornaIdentificadorReferencia(strProduto),
                                 StringGridOpcoes);


     SP_DefinirIdentificador.ExecProc;
     SP_DefinirIdentificador.Close;

   end;

   if StrToIntDef(FrmFaseProducaoLancaEstoque.EditQualidade.Text,0)>0 then
   begin

      // verificar se existe
      {
      if fncValidaAndamentoReferenciaGradeQualidade(strProduto)=false then
      begin

         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.Append;
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('REFERENCIA').AsString    :=  RetornaIdentificadorReferencia(strProduto);
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.FieldByName('IDENTIFICADOR').AsString :=  strProduto;

        // SALVAR ITENS DO PEDIDO DE VENDA
        If (FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.State in [dsedit, dsinsert]) then
        Begin
           FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.Post;
        End;
         FrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzido.Refresh;
      end;
      }

      // verificar se existe mapeamento
      if fncValidaReferenciaQuantidadeGradeQualidade(strProduto)=false then
      begin

         GradeProduto_Montar(RetornaIdentificadorReferencia(strProduto),
                          StringGridOpcoes
                          );

         CadProduto_EstoqueSalvarQualidade(StrToIntDef(fncProduto_retCampo(RetornaIdentificadorReferencia(strProduto),'CODIGO'),0),
                                           StrToIntDef(FrmFaseProducaoLancaEstoque.EditQualidade.Text,0),
                                           RetornaIdentificadorReferencia(strProduto),
                                           StringGridOpcoes);

         SP_DefinirIdentificador.ExecProc;
         SP_DefinirIdentificador.Close;

      end;

   end; // if StrToIntDef(FrmFaseProducaoLancaEstoque.EditQualidade.Text,0)>0 then



end;


end.

