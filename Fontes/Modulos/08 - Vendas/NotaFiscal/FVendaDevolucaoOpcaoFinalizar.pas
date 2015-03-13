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

unit FVendaDevolucaoOpcaoFinalizar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FFrameBarra, ExtCtrls, Buttons, DBCtrls, DB;

type
   TFrmVendaDevolucaoOpcaoFinalizar = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnSair: TBitBtn;
    PnlValorDevolucao: TPanel;
    rdgOpcao: TDBRadioGroup;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmVendaDevolucaoOpcaoFinalizar: TFrmVendaDevolucaoOpcaoFinalizar;

implementation

uses Global, FCompras, Biblioteca, FVendaDevolucaoProdutos;

{$R *.dfm}

procedure TFrmVendaDevolucaoOpcaoFinalizar.BtnOkClick(Sender: TObject);
begin

   if rdgOpcao.ItemIndex<0 then
   begin
     Aviso('Informe o que fazer este valor');
     rdgOpcao.SetFocus;
     exit;
   end;

   if Length(DBMemo1.Text)<5 then
   begin
     Aviso('Informe o Motivo da Devolução');
     DBMemo1.SetFocus;
     exit;
   end;

   if rdgOpcao.ItemIndex=0 then
      strOpcaoDevolver := 'CREDITAR';

   if rdgOpcao.ItemIndex=1 then
      strOpcaoDevolver := 'NAOCREDITAR';

   close;

end;

procedure TFrmVendaDevolucaoOpcaoFinalizar.BtnSairClick(Sender: TObject);
begin
  strOpcaoDevolver := 'CANCELAR';
  close;
end;

procedure TFrmVendaDevolucaoOpcaoFinalizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TFrmVendaDevolucaoOpcaoFinalizar.FormCreate(Sender: TObject);
begin

   If not (FrmVendaDevolucaoProdutos.ds_VendasDevolucao.DataSet.state in [dsEdit, dsInsert]) then
      FrmVendaDevolucaoProdutos.ds_VendasDevolucao.DataSet.Edit;

end;

procedure TFrmVendaDevolucaoOpcaoFinalizar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_ESCAPE then
   begin
      BtnSairClick(Sender);
   end;

end;

end.
