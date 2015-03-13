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


unit FRelCtaPagar;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, FrmRelatorios, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos;

type
   TFrmRelCtaPagar = class(TForm)
      Panel1: TPanel;
      RadioG: TRadioGroup;
      GroupBox1: TGroupBox;
    chkFornecedor: TCheckBox;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      MskDataFim: TMaskEdit;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      rAgrupar: TRadioGroup;
      FrameRelatorios1: TFrameRelatorios;
    EditFornecedor: TIDBEditDialog;
    EditNomeCliente: TEdit;
    GroupBoxContaCaixa: TGroupBox;
    chkContaCaixa: TCheckBox;
    EditContaCaixa: TIDBEditDialog;
    EditContaCaixaNome: TEdit;
    GroupBoxContabanco: TGroupBox;
    chkContaBancaria: TCheckBox;
    EditContaCorrente: TEdit;
    EditContaBancaria: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure chkFornecedorClick(Sender: TObject);
    procedure RadioGClick(Sender: TObject);
    procedure chkContaCaixaClick(Sender: TObject);
    procedure chkContaBancariaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelCtaPagar: TFrmRelCtaPagar;

implementation

uses Biblioteca, Global, FRelPagar_Extrato, FRelPagar_Vencidas,
   FRelPagar_Quitadas,
   FRelPagar_Historico, FRelPagar_Pagar,
   FBaseDados;

{$R *.DFM}

procedure TFrmRelCtaPagar.FormCreate(Sender: TObject);
begin
   MskDataIni.text := DateToStr(date - 90);
   MskDataFim.text := DateToStr(date + 90);

end;

procedure TFrmRelCtaPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
      close;

end;

procedure TFrmRelCtaPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   FreeAndNil( FrmRelCtaPagar );
end;

procedure TFrmRelCtaPagar.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);

end;

procedure TFrmRelCtaPagar.RadioGClick(Sender: TObject);
begin
   if RadioG.ItemIndex = 5 then
   Begin
      GroupBox2.Caption := 'Periodo do Agendamento';
   End
   else
   begin
      GroupBox2.Caption := 'Periodo de &Vencimentos';
   end;

end;

procedure TFrmRelCtaPagar.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.text := fncDataValidar(MskDataFim.text);

end;

procedure TFrmRelCtaPagar.Btn_ImprimirClick(Sender: TObject);
begin

   dtDataIni := StrToDate(MskDataIni.text);
   dtDataFim := StrToDate(MskDataFim.text);
   strFornecedor := Trim(EditFornecedor.text);
   strContaCaixa :=Trim(EditContaCaixa.text);
   strContaCorrente :=Trim(EditContaBancaria.text);

   if RadioG.ItemIndex = 0 then
   Begin
      FrmRelPagar_Extrato := TFrmRelPagar_Extrato.create(self);
      // MostraPreview(FrmRelPagar.QuickRep1);
   End;

   if RadioG.ItemIndex = 1 then
   Begin
      FrmRelPagar_Pagar := TFrmRelPagar_Pagar.create(self);
      // MostraPreview(FrmRelCtPagar.QuickRep);
   End;

   If RadioG.ItemIndex = 2 then
   Begin
      FrmRelPagar_Vencidas := TFrmRelPagar_Vencidas.create(self);
      // MostraPreview(FrmRelCtpQuitada.QuickRep);
   End;

   if RadioG.ItemIndex = 3 then
   Begin
      FrmRelPagar_Quitadas := TFrmRelPagar_Quitadas.create(self);
      // MostraPreview(FrmRelCtpFornecedor.QuickRep);
   End;

   if RadioG.ItemIndex = 4 then
   Begin
      FrmRelPagar_Historico := TFrmRelPagar_Historico.create(self);
      // MostraPreview(FrmRelCtpEspecie.QuickRep);
   End;

end;

procedure TFrmRelCtaPagar.BtnSairClick(Sender: TObject);
begin
   CLOSE;
end;

procedure TFrmRelCtaPagar.chkFornecedorClick(Sender: TObject);
begin

   if chkFornecedor.Checked = true then
   Begin
      EditFornecedor.Enabled := False;
   End
   Else
   Begin
      EditFornecedor.Enabled := true;
      EditFornecedor.SelectAll;
      EditFornecedor.SetFocus;
   End;

end;

procedure TFrmRelCtaPagar.chkContaBancariaClick(Sender: TObject);
begin
   if chkContaBancaria.Checked = true then
   Begin
      EditContaBancaria.Enabled := False;
   End
   Else
   Begin
      EditContaBancaria.Enabled := true;
      EditContaBancaria.SetFocus;
   End;

end;

procedure TFrmRelCtaPagar.chkContaCaixaClick(Sender: TObject);
begin
   if chkContaCaixa.Checked = true then
   Begin
      EditContaCaixa.Enabled := False;
   End
   Else
   Begin
      EditContaCaixa.Enabled := true;
      EditContaCaixa.SetFocus;
   End;

end;

end.
