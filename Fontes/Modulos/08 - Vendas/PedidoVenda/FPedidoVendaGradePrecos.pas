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

unit FPedidoVendaGradePrecos;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls,  
    DB;

type
   TFrmPedidoVendaGradePrecos = class(TForm)
      Panel1: TPanel;
    StringGridOpcoes: TStringGrid;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure FormShow(Sender: TObject);
    procedure StringGridOpcoesCellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: string; var Valid: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmPedidoVendaGradePrecos: TFrmPedidoVendaGradePrecos;

implementation

uses Biblioteca_pcp, Global, FPrincipal, SQLServer;

{$R *.dfm}

procedure TFrmPedidoVendaGradePrecos.FormCreate(Sender: TObject);
begin
   sGradeEditada :=false;

   GradeProduto_Montar(strReferencia, StringGridOpcoes);

   GradeProduto_CarregarPrecos(nPedidoVenda, nTabelaPreco, strReferencia, StringGridOpcoes);


end;

procedure TFrmPedidoVendaGradePrecos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   //GradeTabelaPrecosSalvar(nPedidoVenda,  slReferencia, StringGridOpcoes);

   Action := Cafree;

end;

procedure TFrmPedidoVendaGradePrecos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F3 then
   begin
      //GradeZerar(StringGridOpcoes);
      GradeZerar(StringGridOpcoes);

      GradeProduto_Montar_OrdemProducaoProduzidos(strReferencia, StringGridOpcoes);
   end;

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmPedidoVendaGradePrecos.FormShow(Sender: TObject);
begin

   Width := StringGridOpcoes.Width + 15;
   Caption := 'Pedido de Venda | Grade de Valores: ' + IntToStr(nPedidoVenda);

   Update;

end;

procedure TFrmPedidoVendaGradePrecos.StringGridOpcoesCellValidate(
  Sender: TObject; ACol, ARow: Integer; var Value: string; var Valid: Boolean);
begin
   sGradeEditada :=True;

  strCor                :=StringGridOpcoes.Cells[0, ARow];
  strTamanho            :=StringGridOpcoes.Cells[ACol, 0];
  nValorDigitado      :=StrToFloatDef(StringGridOpcoes.Cells[ACol, ARow], 0) ;


end;



end.



