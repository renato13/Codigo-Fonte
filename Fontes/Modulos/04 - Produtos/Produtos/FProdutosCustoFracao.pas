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

unit FProdutosCustoFracao;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Mask, DBCtrls, FFrameBarra,
   FFrameBotoes;

type
   TFrmProdutosCustoFracao = class(TForm)
      PainelBotoes: TPanel;
      SpeedButton1: TSpeedButton;
      BtnSair: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnNovo: TBitBtn;
      BtnProcurar: TBitBtn;
      GroupBox1: TGroupBox;
      Label5: TLabel;
      FrmFrameBarra1: TFrmFrameBarra;
      Panel1: TPanel;
      Label2: TLabel;
      DBEdit2: TDBEdit;
      DBEdit3: TDBEdit;
      Label3: TLabel;
      GroupBox2: TGroupBox;
      DBEdit1: TDBEdit;
      EditPercentual: TDBEdit;
      Label4: TLabel;
      Label1: TLabel;
      GroupBox3: TGroupBox;
      Label7: TLabel;
      DBEdit4: TDBEdit;
      Label8: TLabel;
      DBEdit5: TDBEdit;
      Panel2: TPanel;
      SpeedButton2: TSpeedButton;
      SpeedButton3: TSpeedButton;
      SpeedButton4: TSpeedButton;
      Label9: TLabel;
      DBEdit6: TDBEdit;
      Label6: TLabel;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure SpeedButton3Click(Sender: TObject);
      procedure SpeedButton2Click(Sender: TObject);
      procedure SpeedButton4Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmProdutosCustoFracao: TFrmProdutosCustoFracao;

implementation

uses FPrincipal, Biblioteca, FBaseDados, Global, FProdutos;

{$R *.dfm}

procedure TFrmProdutosCustoFracao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_Escape then
      close;

end;

procedure TFrmProdutosCustoFracao.SpeedButton2Click(Sender: TObject);
begin
   // FrmProdutos.FrmFrameBotoes1.SpbSalvarClick(sender);
   FrmProdutos.FrmFrameBotoes1.SpbSalvar.Click;
end;

procedure TFrmProdutosCustoFracao.SpeedButton3Click(Sender: TObject);
begin
   close;
end;

procedure TFrmProdutosCustoFracao.SpeedButton4Click(Sender: TObject);
begin
   FrmProdutos.FrmFrameBotoes1.SpbEditarClick(Sender);
end;

end.
