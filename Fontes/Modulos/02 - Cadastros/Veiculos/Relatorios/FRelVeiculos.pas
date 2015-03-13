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

unit FRelVeiculos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, DB,    
   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos;

type
   TFrmRelVeiculos = class(TForm)
      RadioG: TRadioGroup;
      Panel1: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      GroupBox3: TGroupBox;
      chkCliente: TCheckBox;
      GroupBox1: TGroupBox;
      ChkVeiculo: TCheckBox;
      EditClienteNome: TEdit;
      EditCliente: TIDBEditDialog;
      EditVeiculo: TIDBEditDialog;
      Edit1: TEdit;
      procedure FormCreate(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure chkClienteClick(Sender: TObject);
      procedure ChkVeiculoClick(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelVeiculos: TFrmRelVeiculos;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FRelVeiculosLista,
  FRelVeiculosHistorico;

{$R *.DFM}

procedure TFrmRelVeiculos.FormCreate(Sender: TObject);
begin

   // TRadioGroup(RadioG.Controls[3]).Enabled:= False;

end;

procedure TFrmRelVeiculos.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   Action := cafree;
end;

procedure TFrmRelVeiculos.Btn_ImprimirClick(Sender: TObject);
begin
   strCliente         := Trim(EditCliente.text);

   // Lista de Veiculo
   If RadioG.ItemIndex = 0 then
   Begin
      FrmRelVeiculosLista := TFrmRelVeiculosLista.create(self);
   End;

   // Historico
   If RadioG.ItemIndex = 1 then
   Begin
      FrmRelVeiculosHistorico := TFrmRelVeiculosHistorico.create(self);
   End;

End;

procedure TFrmRelVeiculos.FormKeyPress(Sender: TObject; var Key: Char);
begin

   If Key = #27 then
      CLOSE;

end;

procedure TFrmRelVeiculos.BtnSairClick(Sender: TObject);
begin
   CLOSE;
end;

procedure TFrmRelVeiculos.chkClienteClick(Sender: TObject);
begin

   if chkCliente.Checked = true then
   Begin
      EditCliente.Enabled := False;
   End
   Else
   Begin
      EditCliente.Enabled := true;
      EditCliente.SetFocus;
      EditCliente.SelectAll;
   End;

end;

procedure TFrmRelVeiculos.ChkVeiculoClick(Sender: TObject);
begin

   if ChkVeiculo.Checked = true then
   Begin
      EditVeiculo.Enabled := False;
   End
   Else
   Begin
      EditVeiculo.Enabled := true;
      EditVeiculo.SetFocus;
      EditVeiculo.SelectAll;
   End;

end;

end.
