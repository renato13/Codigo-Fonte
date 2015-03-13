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

unit FPedidoVendaConferenciaCodigoBarra;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls,   db, Buttons, jpeg, FFrameBarra;

type
   TFrmPedidoVendaConferenciaCodigoBarra = class(TForm)
      Panel3: TPanel;
      Label18: TLabel;
      Image2: TImage;
      EditCodigo: TLabeledEdit;
    FrmFrameBarra1: TFrmFrameBarra;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
   private
      { Private declarations }

      ViaLeitor: Boolean;
      sgReferencia : String;
      igQuantidadeConferida,
      igQuantidadeVendida : Integer;

   public
      { Public declarations }
   end;

var
   FrmPedidoVendaConferenciaCodigoBarra: TFrmPedidoVendaConferenciaCodigoBarra;



implementation

uses FPrincipal, SQLServer, Biblioteca, Global,
  FPedidoVendaConferencia;

{$R *.dfm}

procedure TFrmPedidoVendaConferenciaCodigoBarra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
   Begin
      close;
   End;

end;

procedure TFrmPedidoVendaConferenciaCodigoBarra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;

end;

procedure TFrmPedidoVendaConferenciaCodigoBarra.FormCreate(Sender: TObject);
begin

   ViaLeitor       := True;
   EditCodigo.text := '';
   sgReferencia    := '';
   igQuantidadeConferida    :=0;
   igQuantidadeVendida      :=0;

   Achar[99] := '+'; // irá adicionar o item na lista

end;

procedure TFrmPedidoVendaConferenciaCodigoBarra.EditCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
   xnPedidoVenda : Integer;


begin

   nPedidoVenda :=0;
   nPedidoVenda :=FrmPedidoVendaConferencia.db_PedidoConferencia.FieldByName('PEDIDO').AsInteger;

   // db_PedidoConferenciaItens.FieldByName('QUANTIDADE').AsFloat;
   // codigo de barras
   If Key = #13 then
   Begin

      sgReferencia := '';
      // codigo do produto
      sgReferencia := Uppercase(alltrim(EditCodigo.text));
      EditCodigo.text := '';
      // checar se o produto existe

      if ValidaPedidoConferenciaProduto(nPedidoVenda ,sgReferencia)=false then
      begin
         AvisoSistemaErro('Produto ['+RetornaIdentificadorReferencia(sgReferencia)+'] não faz parte do Pedido de Venda ['+FrmPedidoVendaConferencia.db_PedidoConferencia.FieldByName('PEDIDO').AsString+']');
         EditCodigo.SetFocus;
         Exit;
      End;

        // checar quantidade disponivel
      FrmPedidoVendaConferencia.db_PedidoConferenciaItens.close;
      FrmPedidoVendaConferencia.db_PedidoConferenciaItens.Open;

      // checar as quantidades
      igQuantidadeVendida   := 0; // Quantidade atual conferida no pedido
      igQuantidadeVendida   := ValidaPedidoVendida(nPedidoVenda ,sgReferencia);

      igQuantidadeConferida := 0; // Quantidade atual conferida no pedido
      igQuantidadeConferida := ValidaPedidoConferido(nPedidoVenda ,sgReferencia);

      If (igQuantidadeConferida >= igQuantidadeVendida   ) then
      Begin
         AvisoSistemaErro('Quantidade informada da Referência '+sgReferencia+' é maior que Pedido. '+
                      sLineBreak+
                      sLineBreak+
                      'Observação: A quantidade que você está tentando lançar é maior que a vendida. '+
                      sLineBreak+
                      sLineBreak+
                      'O sistema não permite lançar acima do que foi vendido (ou restante a entregar).'
                        );
         Abort;
      End;

      // se já existir, adicionar, caso contrário, inserir

      If FrmPedidoVendaConferencia.db_PedidoConferenciaItens.Locate('IDENTIFICADOR', sgReferencia, [])= True then
      begin
         FrmPedidoVendaConferencia.db_PedidoConferenciaItens.Edit;
      end
      Else
      begin
         FrmPedidoVendaConferencia.db_PedidoConferenciaItens.Append;
      End;

      // se for informado via leitor

      // irá adicionar o item na lista
      If Achar[99] = '+' then
      begin
         FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('IDENTIFICADOR').AsString  := sgReferencia;
         FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('QUANTIDADE').AsInteger := FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('QUANTIDADE').AsInteger + 1;
      End;

      If Achar[99] = '-' then
      begin
         FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('IDENTIFICADOR').AsString := sgReferencia;
         FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('QUANTIDADE').AsInteger := FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('QUANTIDADE').AsInteger - 1;

         if FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('QUANTIDADE').AsInteger < 0 then
            FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('QUANTIDADE').AsInteger := 0;
      End;

      // salvar


      FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('COR_ID').AsInteger     := RetornaIdentificadorIDCor( sgReferencia );
      FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('COR').AsString         := BuscaNomeCor( RetornaIdentificadorIDCor( sgReferencia ) );

      FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('TAMANHO_ID').AsInteger := RetornaIdentificadorIDTamanho( sgReferencia );
      FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('TAMANHO').AsString     := BuscaNomeTamanho( RetornaIdentificadorIDTamanho( sgReferencia ) );

      FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('REFERENCIA').AsString  := RetornaIdentificadorReferencia( sgReferencia );
      FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('DESCRICAO').AsString   := fncReferenciaNome( RetornaIdentificadorReferencia( sgReferencia ) );
      FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('VALOR_UNIT').AsFloat :=   RetornaPedidoferenciaPrecoVenda(nPedidoVenda ,RetornaIdentificadorReferencia( sgReferencia ));


      If (FrmPedidoVendaConferencia.db_PedidoConferenciaItens.State in [dsedit, dsinsert]) then
      Begin
         FrmPedidoVendaConferencia.db_PedidoConferenciaItens.post;
      end;

      EditCodigo.text := '';
      EditCodigo.Setfocus;


   End;

end;

end.

