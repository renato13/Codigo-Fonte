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

unit FConciliacaoBanco;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, DB,
       FileCtrl,   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmConciliacaoBanco = class(TForm)
      OpenDialog1: TOpenDialog;
      ProgressBar1: TProgressBar;
      PainelBotoes: TPanel;
      BtnSair: TBitBtn;
      Imprimir: TBitBtn;
      db_CtaReceber:  TFDQuery;
      GrupoArquivos2: TGroupBox;
      GroupBox1: TGroupBox;
      GrupoArquivos1: TGroupBox;
      SpeedButton1: TSpeedButton;
      EditArquivo: TLabeledEdit;
      GroupBox3: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      lblRegistos: TLabel;
      Label3: TLabel;
      lblData: TLabel;
      lblNoarquivo: TLabel;
      GroupBox5: TGroupBox;
      ChkB_06: TCheckBox;
      ChkB_08: TCheckBox;
      ChkB_09: TCheckBox;
      ChkB_10: TCheckBox;
      Tipobaixa: TRadioGroup;
      Panel1: TPanel;
      Button1: TButton;
      FileListBox1: TFileListBox;
      FilterComboBox1: TFilterComboBox;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure SpeedButton1Click(Sender: TObject);
      procedure ImprimirClick(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure ChkB_06Click(Sender: TObject);
      procedure TipobaixaClick(Sender: TObject);
      procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
   private
      { Private declarations }
      procedure BaixarDocumento;

   public
      { Public declarations }
   end;

var
   FrmConciliacaoBanco: TFrmConciliacaoBanco;

implementation

uses Biblioteca, FPrincipal, Global;

{$R *.dfm}

procedure TFrmConciliacaoBanco.FormCreate(Sender: TObject);
begin
   TipobaixaClick(Sender);
end;

procedure TFrmConciliacaoBanco.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
      close;

end;

procedure TFrmConciliacaoBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


   FreeAndNil( FrmConciliacaoBanco );
end;

procedure TFrmConciliacaoBanco.SpeedButton1Click(Sender: TObject);
begin


     If OpenDialog1.Execute then
        EditArquivo.Text        :=Trim( OpenDialog1.FileName );

     {
     RLBRemessa1.Titulos.Clear;
     RLBRemessa1.TipoMovimento  := tmRetorno;
     RLBRemessa1.NomeArquivo    := EditArquivo.Text;
     RLBRemessa1.LerRetorno;
     ProgressBar1.Max           :=RLBRemessa1.Titulos.Count;

     lblData.Caption      :=FormatDateTime('dd/mm/yyyy',RLBRemessa1.DataArquivo);

     lblRegistos.Caption  :=FormatFloat('###,##0',RLBRemessa1.Titulos.Count);

     lblNoarquivo.Caption :=FormatFloat('###,##0',RLBRemessa1.NumeroArquivo);
     }


end;

procedure TFrmConciliacaoBanco.ImprimirClick(Sender: TObject);
begin

   if Tipobaixa.ItemIndex = 0 then
   begin

      If empty(EditArquivo.text) then
      begin
         Informar('Selecione um arquivo de retorno');
         exit;
      end;

   end;

   if Tipobaixa.ItemIndex = 1 then
   begin

      If FileListBox1.Items.Count < 1 then
      begin
         Informar('Selecione um arquivo de retorno');
         exit;
      end;

   end;

   If pergunta('Realizar Conciliação Bancária? ') = false then
      exit;

   BaixarDocumento;

End;

procedure TFrmConciliacaoBanco.BaixarDocumento;
Var
   xx: integer;
begin

   (*
     ProgressBar1.Max := RLBRemessa1.Titulos.Count;

     for xx := 0 to RLBRemessa1.Titulos.Count-1 do
     begin

     db_CtaReceber.close;
     db_CtaReceber.ParamByName('DOCUMENTO').AsString :=AllTrim(RLBRemessa1.Titulos[xx].SeuNumero);
     db_CtaReceber.Open;

     Try
     wFloat[0] :=StrToInt(RLBRemessa1.Titulos[xx].OcorrenciaOriginal);
     Except
     wFloat[0] :=0;
     end;

     // OCORRENCIA 6 =LIQUIDAÇÃO NORMAL
     // OCORRENCIA 8 =LIQUIDAÇÃO EM CARTÓRIO
     // OCORRENCIA 9 =BAIXA SIMPLES
     // OCORRENCIA 10 =BAIXA POR TER SIDO LIQUIDADO

     if  (wFloat[0]=6)   or
     (wFloat[0]=8)   or
     (wFloat[0]=9)   or
     (wFloat[0]=10)  then
     begin

     // Se há registros, então baixar.
     if db_CtaReceber.RecordCount>0 then
     begin
     db_CtaReceber.First;

     // editar
     db_CtaReceber.Edit;
     db_CtaReceber.FieldByName('QUITADO').AsString      :='S';
     db_CtaReceber.FieldByName('NOSSONUMERO').AsString  :=AllTrim(RLBRemessa1.Titulos[xx].NossoNumero);
     db_CtaReceber.FieldByName('DATA_PAGTO').AsDateTime :=RLBRemessa1.Titulos[xx].DataCredito ;
     db_CtaReceber.FieldByName('DESCONTO').AsFloat      :=RLBRemessa1.Titulos[xx].ValorDesconto ;
     db_CtaReceber.FieldByName('DESPESAS').AsFloat      :=RLBRemessa1.Titulos[xx].ValorDespesaCobranca ;

     //

     // atualizar restante a receber
     If (db_CtaReceber.FieldByName('VALOR_PAGO').AsFloat <= db_CtaReceber.FieldByName('VALOR').AsFloat) then
     begin
     db_CtaReceber.FieldByName('VALOR_SALDO').AsFloat:=
     db_CtaReceber.FieldByName('VALOR_PAGO').AsFloat - db_CtaReceber.FieldByName('VALOR').AsFloat
     End;

     db_CtaReceber.Post;
     end;
     db_CtaReceber.close;
     End;

     ProgressBar1.Position:=ProgressBar1.Position +1;

     {
     Memo1.Lines.Add('Documento.........: '+RLBRemessa1.Titulos[xx].SeuNumero );
     Memo1.Lines.Add('Nosso Numero......: '+RLBRemessa1.Titulos[xx].NossoNumero );
     Memo1.Lines.Add('Vencimento........: '+DateToStr(RLBRemessa1.Titulos[xx].DataVencimento) );
     Memo1.Lines.Add('Data Crédito......: '+DateToStr(RLBRemessa1.Titulos[xx].DataCredito) );

     Memo1.Lines.Add('Valor.............: '+FormatFloat('###,##0.00',RLBRemessa1.Titulos[xx].ValorDocumento) );

     Memo1.Lines.Add('Abatimento........: '+FormatFloat('###,##0.00',RLBRemessa1.Titulos[xx].ValorAbatimento) );
     Memo1.Lines.Add('Desconto..........: '+FormatFloat('###,##0.00',RLBRemessa1.Titulos[xx].ValorDesconto) );
     Memo1.Lines.Add('Despesa Cobranca..: '+FormatFloat('###,##0.00',RLBRemessa1.Titulos[xx].ValorDespesaCobranca) );
     Memo1.Lines.Add('Valor IOF.........: '+FormatFloat('###,##0.00',RLBRemessa1.Titulos[xx].ValorIOF) );
     Memo1.Lines.Add('Mora Juros........: '+FormatFloat('###,##0.00',RLBRemessa1.Titulos[xx].ValorMoraJuros) );
     Memo1.Lines.Add('Outras Despesas...: '+FormatFloat('###,##0.00',RLBRemessa1.Titulos[xx].ValorOutrasDespesas) );
     Memo1.Lines.Add('Outros Creditos...: '+FormatFloat('###,##0.00',RLBRemessa1.Titulos[xx].ValorOutrosCreditos) );


     Memo1.Lines.Add(' ');
     Memo1.Lines.Add(' ');
     }


     end;

     Aviso('Processo Concluído');
     ProgressBar1.Position:=0;
   *)

end;

procedure TFrmConciliacaoBanco.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmConciliacaoBanco.ChkB_06Click(Sender: TObject);
begin
   ChkB_06.Checked := True;
end;

procedure TFrmConciliacaoBanco.TipobaixaClick(Sender: TObject);
begin

   if Tipobaixa.ItemIndex = 0 then
   begin
      GrupoArquivos2.Visible := false;

      GrupoArquivos1.Visible := True;

   end;

   if Tipobaixa.ItemIndex = 1 then
   begin
      GrupoArquivos2.Visible := True;

      GrupoArquivos1.Visible := false;

   end;

end;

procedure TFrmConciliacaoBanco.Button1Click(Sender: TObject);
var
   Dir: string;
begin

   Dir := ''; // ExtractFilePath(EditDB.text);
   if SelectDirectory('Pasta de Backup\', '', Dir) then
      FileListBox1.Directory := Dir;

end;

End.
