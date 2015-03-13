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

unit FRelCtaReceber;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, FrmRelatorios, ISFEdit, ISFEditbtn,
   ISFdbEditbtn, uEstSearchDialogZeos, IDBEdit, DB,    
   frxClass, frxDBSet,   FFrameBarra;

type
   TFrmRelCtaReceber = class(TForm)
      Panel1: TPanel;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    Painel00: TPanel;
    GroupBox2: TGroupBox;
    rAgrupar: TRadioGroup;
    rRestricao: TRadioGroup;
    MskDataFim: TMaskEdit;
    MskDataIni: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Panel4: TPanel;
    BoxRepresentante: TGroupBox;
    chkRepres: TCheckBox;
    EditVendedor: TIDBEditDialog;
    EditNomeVendedor: TEdit;
    GroupBox1: TGroupBox;
    chkClientes: TCheckBox;
    EditCliente: TIDBEditDialog;
    EditClienteNome: TEdit;
    Painel01: TPanel;
    RadioG: TRadioGroup;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    chkTipoDocumento: TCheckBox;
    cbTipoDocumento: TComboBox;
    GroupBox5: TGroupBox;
    chkFormaPagto: TCheckBox;
    EditNomeFormaPagto: TEdit;
    EditPagamento: TIDBEditDialog;
    GroupBoxContabanco: TGroupBox;
    chkContaBancaria: TCheckBox;
    EditContaCorrente: TEdit;
    EditContaBancaria: TIDBEditDialog;
    GroupBoxContaCaixa: TGroupBox;
    chkContaCaixa: TCheckBox;
    EditContaCaixa: TIDBEditDialog;
    EditContaCaixaNome: TEdit;
    rRestricaoDuplicata: TRadioGroup;
    GroupBoxCarteira: TGroupBox;
    chkCarteira: TCheckBox;
    Edit1: TEdit;
    EditCarteira: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure chkClientesClick(Sender: TObject);
      procedure chkRepresClick(Sender: TObject);
      procedure RadioGClick(Sender: TObject);
    procedure chkContaCaixaClick(Sender: TObject);
    procedure chkContaBancariaClick(Sender: TObject);
    procedure chkFormaPagtoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chkTipoDocumentoClick(Sender: TObject);
    procedure chkCarteiraClick(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelCtaReceber: TFrmRelCtaReceber;

implementation

uses Biblioteca, Global, FRelReceb_Extrato, FRelReceb_Receber,
   FRelReceb_Vencidas, FRelReceb_Quitadas, FRelReceb_ContaCorrente, FBaseDados,
   FRelReceb_Historico, FRelReceb_CobAgendadas,
   FRelReceb_QuitadasDataPagto, FPrincipal;

{$R *.DFM}

procedure TFrmRelCtaReceber.FormCreate(Sender: TObject);
begin

   MskDataIni.text := DateToStr(date - 90);
   MskDataFim.text := DateToStr(date + 90);

end;

procedure TFrmRelCtaReceber.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
      close;

end;

procedure TFrmRelCtaReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   FreeAndNil( FrmRelCtaReceber );
end;

procedure TFrmRelCtaReceber.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);

end;

procedure TFrmRelCtaReceber.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.text := fncDataValidar(MskDataFim.text);
end;

procedure TFrmRelCtaReceber.Btn_ImprimirClick(Sender: TObject);
begin

   dtDataIni           := StrToDate(MskDataIni.text);
   dtDataFim           := StrToDate(MskDataFim.text);
   strCliente          := Trim(EditCliente.text);
   strVendedor         := Trim(EditVendedor.text);
   strContaCaixa       := Trim(EditContaCaixa.text);
   strCarteira         := Trim(EditCarteira.text);
   strContaCorrente    := Trim(EditContaBancaria.text);
   strFormaPagamento   := Trim(EditPagamento.text);
   strTipoDocumento    := cbTipoDocumento.Text;

   strNomeAgrupamento := UpperCase( rAgrupar.Items[rAgrupar.ItemIndex]+':' );


   case rAgrupar.ItemIndex of

      0:
         Begin
            Agrupar := 'VENCIMENTO';
            strOrdemDados := '  VENCIMENTO, NOME_CLIENTE ';
         End;

      1:
         Begin
            Agrupar := 'DATA';
            strOrdemDados := '  DATA, VENCIMENTO, DATA_PAGTO, NOME_CLIENTE ';
         End;


      2:
         Begin
            Agrupar := 'DATA_PAGTO';
            strOrdemDados := '  DATA_PAGTO, VENCIMENTO, NOME_CLIENTE ';
         End;

      3:
         Begin
            Agrupar := 'CLIENTE';
            strOrdemDados := ' NOME_CLIENTE ';
         End;

   End;

   case rRestricao.ItemIndex of

      0:
         strRestricaoCredito := '%';
      1:
         strRestricaoCredito := 'S';
      2:
         strRestricaoCredito := 'N';

   End;

   case rRestricaoDuplicata.ItemIndex of

      0:
         strBorderos := ' DESCONTADO  LIKE ' + QuotedStr('%');
      1:
         strBorderos := ' DESCONTADO=' + QuotedStr('SIM');
      2:
         strBorderos := ' DESCONTADO=' + QuotedStr('NAO');

   End;

   case RadioG.ItemIndex of

      0:
         FrmRelReceb_Extrato := TFrmRelReceb_Extrato.create(self);
      1:
         FrmRelReceb_Receber := TFrmRelReceb_Receber.create(self);
      2:
         FrmRelReceb_Vencidas := TFrmRelReceb_Vencidas.create(self);
      3:
         FrmRelReceb_Quitadas := TFrmRelReceb_Quitadas.create(self);
      4:
         FrmRelReceb_QuitadasDataPagto := TFrmRelReceb_QuitadasDataPagto.create(self);
      5:
         FrmRelReceb_Historico := TFrmRelReceb_Historico.create(self);


   End;

end;

procedure TFrmRelCtaReceber.chkFormaPagtoClick(Sender: TObject);
begin
   if chkFormaPagto.Checked = true then
   Begin
      EditPagamento.Enabled := False;
   End
   Else
   Begin
      EditPagamento.Enabled := true;
      EditPagamento.SetFocus;
   End;

end;

procedure TFrmRelCtaReceber.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmRelCtaReceber.chkCarteiraClick(Sender: TObject);
begin
   if chkCarteira.Checked = true then
   Begin
      EditCarteira.Enabled := False;
   End
   Else
   Begin
      EditCarteira.Enabled := true;
      EditCarteira.SetFocus;
   End;

end;

procedure TFrmRelCtaReceber.chkClientesClick(Sender: TObject);
begin

   if chkClientes.Checked = true then
   Begin
      EditCliente.Enabled := False;
   End
   Else
   Begin
      EditCliente.Enabled := true;
      EditCliente.SetFocus;
   End;

end;

procedure TFrmRelCtaReceber.chkContaBancariaClick(Sender: TObject);
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

procedure TFrmRelCtaReceber.chkContaCaixaClick(Sender: TObject);
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

procedure TFrmRelCtaReceber.chkRepresClick(Sender: TObject);
begin
   if chkRepres.Checked = true then
   Begin
      EditVendedor.Enabled := False;

   End
   Else
   Begin
      EditVendedor.Enabled := true;
      EditVendedor.SetFocus;
   End;

end;

procedure TFrmRelCtaReceber.chkTipoDocumentoClick(Sender: TObject);
begin
   if chkTipoDocumento.Checked = true then
   Begin
      cbTipoDocumento.Enabled := False;
   End
   Else
   Begin
      cbTipoDocumento.Enabled := true;
      cbTipoDocumento.SetFocus;
   End;

end;

procedure TFrmRelCtaReceber.RadioGClick(Sender: TObject);
begin

   {
   if RadioG.ItemIndex = 4 then
   Begin
      rAgrupar.ItemIndex := 1;
   End
   else
   begin
      rAgrupar.ItemIndex := 0;
   end;
   }

   if RadioG.ItemIndex = 6 then
   Begin
      GroupBox2.Caption := 'Periodo do Agendamento';
   End
   else
   begin
      GroupBox2.Caption := 'Periodo de &Vencimentos';
   end;

end;

end.
