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

unit FOpcaoVenda;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FFrameBarra, ExtCtrls;

type
   TFrmOpcaoVenda = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel5: TPanel;
    BtnImportar: TButton;
    BtnDigitar: TButton;
    BtnSair: TButton;
    Button1: TButton;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnImportarClick(Sender: TObject);
    procedure BtnDigitarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmOpcaoVenda: TFrmOpcaoVenda;

implementation

uses Global, FVendaExpressa;

{$R *.dfm}

procedure TFrmOpcaoVenda.BtnDigitarClick(Sender: TObject);
begin
      OpcaoVenda := 'N';
      wOperacao := 'S'; // Saida de Produto
      close;

end;

procedure TFrmOpcaoVenda.BtnImportarClick(Sender: TObject);
begin
      OpcaoVenda := 'P';
      wOperacao := 'S'; // Saida de Produto
      close;

end;

procedure TFrmOpcaoVenda.BtnSairClick(Sender: TObject);
begin
      OpcaoVenda := 'S';
      close;

end;

procedure TFrmOpcaoVenda.Button1Click(Sender: TObject);
begin
      OpcaoVenda := 'D';
      wOperacao := 'E'; // Entrada de Produto
      close;

end;

procedure TFrmOpcaoVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   OpcaoVenda := '';

   IF Key = VK_F3 then
   begin
      BtnImportarClick(Sender);
   end;

   IF Key = VK_F4 then
   begin
      BtnDigitarClick(Sender);
   end;

   IF Key = VK_ESCAPE then
   begin
      BtnSairClick(Sender);
   end;



end;

end.
