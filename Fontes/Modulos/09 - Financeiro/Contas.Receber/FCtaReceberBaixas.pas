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

unit FCtaReceberBaixas;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, DB,     StdCtrls,
   Buttons, ExtCtrls, Mask, DBCtrls,   Menus,  ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBarra,
     Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
   TFrmCtaReceberBaixas = class(TForm)
      db_CtaReceber:  TFDQuery;
      DS_CtaReceber: TDataSource;
      Panel1: TPanel;
      BtnSair: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnEstornar: TBitBtn;
      BtnLocalizar: TBitBtn;
      Label12: TLabel;
    SPFin_CTAReceber_Baixar: TFDStoredProc;
      GroupBox3: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label4: TLabel;
      Label11: TLabel;
      DBEdit1: TDBEdit;
      DBEdit2: TDBEdit;
      EditDocumento: TDBEdit;
      DBEdit8: TDBEdit;
      EditCliente: TIDBEditDialog;
      EditNomeCliente: TEdit;
      DBEdit10: TDBEdit;
      DBEdit6: TDBEdit;
      DBEdit4: TDBEdit;
      EditDespesas: TDBEdit;
      EditValorPago: TDBEdit;
      EditAcrescimos: TDBEdit;
      EditDescontos: TDBEdit;
      EditDataPagto: TDBEdit;
      Label14: TLabel;
      Label13: TLabel;
      Label8: TLabel;
      Label10: TLabel;
      Label9: TLabel;
      Label7: TLabel;
      Label6: TLabel;
      Label5: TLabel;
      Label3: TLabel;
      GroupBox1: TGroupBox;
      EditHistorico: TDBEdit;
      GroupBox2: TGroupBox;
      DBMemo1: TDBMemo;
      DBEdit7: TDBEdit;
      FrmFrameBarra1: TFrmFrameBarra;
      GBoxCreditar: TGroupBox;
      EditConta_Credito: TIDBEditDialog;
      EditContaCorrente: TEdit;
    db_CtaReceberCODIGO: TIntegerField;
    db_CtaReceberCLIENTE: TIntegerField;
    db_CtaReceberNOTAFISCAL: TIntegerField;
    db_CtaReceberSERIENF: TStringField;
    db_CtaReceberDATA: TSQLTimeStampField;
    db_CtaReceberVENCIMENTO: TSQLTimeStampField;
    db_CtaReceberDATA_PAGTO: TSQLTimeStampField;
    db_CtaReceberDOCUMENTO: TStringField;
    db_CtaReceberPARCELA: TIntegerField;
    db_CtaReceberCFOP: TIntegerField;
    db_CtaReceberVENDEDOR: TIntegerField;
    db_CtaReceberESPECIE: TStringField;
    db_CtaReceberTIPO: TStringField;
    db_CtaReceberVALOR: TBCDField;
    db_CtaReceberVALOR_PAGO: TBCDField;
    db_CtaReceberVALOR_SALDO: TBCDField;
    db_CtaReceberCONTA_CREDITO: TIntegerField;
    db_CtaReceberCHQ_BANCO: TStringField;
    db_CtaReceberCHQ_AGENCIA: TStringField;
    db_CtaReceberCHQ_CONTA_CORRENTE: TStringField;
    db_CtaReceberCHQ_NUMEROCHEQUE: TStringField;
    db_CtaReceberCHQ_CODCIDADE: TStringField;
    db_CtaReceberCHQ_EMITENTE: TStringField;
    db_CtaReceberCHQ_NOMECIDADE_UF: TStringField;
    db_CtaReceberCHQ_DESTINO: TStringField;
    db_CtaReceberFORMA_PAGTO: TIntegerField;
    db_CtaReceberDEPARTAMENTO: TIntegerField;
    db_CtaReceberDESCONTO: TBCDField;
    db_CtaReceberENTRADA: TBCDField;
    db_CtaReceberPLANO_CONTAS: TStringField;
    db_CtaReceberHISTORICO: TStringField;
    db_CtaReceberOBSERVACAO: TStringField;
    db_CtaReceberGERARRECIBO: TStringField;
    db_CtaReceberGERARDUPLICATA: TStringField;
    db_CtaReceberGERARBOLETO: TStringField;
    db_CtaReceberNOSSONUMERO: TStringField;
    db_CtaReceberDESPESAS_BOLETO: TBCDField;
    db_CtaReceberDESPESAS_JUROS: TBCDField;
    db_CtaReceberDESPESAS_MULTA: TBCDField;
    db_CtaReceberDESPESAS_CARTORIO: TBCDField;
    db_CtaReceberDESPESAS_TOTAL: TBCDField;
    db_CtaReceberATRASADA: TStringField;
    db_CtaReceberQUITADO: TStringField;
    db_CtaReceberMOTIVO_BAIXA: TIntegerField;
    db_CtaReceberUSER_NOME: TStringField;
    db_CtaReceberUSER_DATA: TSQLTimeStampField;
    db_CtaReceberUSER_HORA: TTimeField;
    db_CtaReceberCOMPLEMENTAR: TStringField;
    EditNomeContaCaixa: TEdit;
    EditConta_Caixa: TIDBEditDialog;
    db_CtaReceberCONTACAIXA: TIntegerField;
    EditPlano: TIDBEditDialog;
    EditNomePlanoContas: TEdit;
    db_CtaReceberDESPESAS_JUROSVALOR: TBCDField;
    db_CtaReceberDESCONTOVALOR: TBCDField;
    dbDlgProcurar: TIDBEditDialog;
      procedure BtnSairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure db_CtaReceberAfterScroll(DataSet: TDataSet);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnSalvarClick(Sender: TObject);
      procedure db_CtaReceberAfterPost(DataSet: TDataSet);
      procedure BtnEstornarClick(Sender: TObject);
      procedure BtnLocalizarClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

      Procedure Proteger;
      procedure db_CtaReceberAfterOpen(DataSet: TDataSet);
    procedure db_CtaReceberDESPESAS_MULTAChange(Sender: TField);
    procedure db_CtaReceberDESPESAS_CARTORIOChange(Sender: TField);
    procedure db_CtaReceberDESPESAS_BOLETOChange(Sender: TField);
    procedure db_CtaReceberDESCONTOChange(Sender: TField);
    procedure db_CtaReceberDESPESAS_JUROSChange(Sender: TField);
    procedure db_CtaReceberBeforeOpen(DataSet: TDataSet);

   private

       nValorDesconto, nValorjuros : Real;

    procedure CalcularValoresTotais;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCtaReceberBaixas: TFrmCtaReceberBaixas;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios;

{$R *.dfm}

procedure TFrmCtaReceberBaixas.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaReceberBaixas.FormCreate(Sender: TObject);
begin

   wTexto[1] := '';

end;

procedure TFrmCtaReceberBaixas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_CtaReceber.Cancel;
   db_CtaReceber.close;


   FreeAndNil( FrmCtaReceberBaixas );

End;

procedure TFrmCtaReceberBaixas.db_CtaReceberAfterScroll(DataSet: TDataSet);
begin

   If db_CtaReceber.FieldByName('QUITADO').AsString = 'N' then
   Begin
      Caption := 'Contas a Receber - [Titulo Aberto]';
   End;

   If db_CtaReceber.FieldByName('QUITADO').AsString = 'S' then
   Begin
      Caption := 'Contas a Receber - [Titulo já foi baixado]';
   End;

   Proteger;

end;

procedure TFrmCtaReceberBaixas.db_CtaReceberBeforeOpen(DataSet: TDataSet);
begin
   db_ctaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmCtaReceberBaixas.db_CtaReceberDESCONTOChange(Sender: TField);
begin
   CalcularValoresTotais;
end;

procedure TFrmCtaReceberBaixas.db_CtaReceberDESPESAS_BOLETOChange(
  Sender: TField);
begin
   CalcularValoresTotais;

end;

procedure TFrmCtaReceberBaixas.db_CtaReceberDESPESAS_CARTORIOChange(
  Sender: TField);
begin
   CalcularValoresTotais;
end;

procedure TFrmCtaReceberBaixas.db_CtaReceberDESPESAS_JUROSChange(
  Sender: TField);
begin
   CalcularValoresTotais;

end;

procedure TFrmCtaReceberBaixas.db_CtaReceberDESPESAS_MULTAChange(
  Sender: TField);
begin
   CalcularValoresTotais;
end;

procedure TFrmCtaReceberBaixas.BtnCancelarClick(Sender: TObject);
begin
   EditDocumento.Clear;
   db_CtaReceber.Cancel;
   db_CtaReceber.close;
   Caption := 'Contas a Receber';

end;

procedure TFrmCtaReceberBaixas.BtnSalvarClick(Sender: TObject);
Var
   nValorReal, nValorPago, nNovoValor: Real;
   nNovoCodigo: Integer;
   nGerarRestante: Boolean;

begin

   nValorReal := 0;
   nValorPago := 0;
   nNovoValor := 0;
   nNovoCodigo := 0;
   nGerarRestante := false;

   if (db_CtaReceber.IsEmpty) then
   begin
      AvisoSistema('Primeiro você deve localize um documento');
      exit;
   end;

   If empty(EditDocumento.text) then
   begin
      BeepCritica;
      informar('não há documento para baixar');
      exit;
   end;

   If db_CtaReceber.FieldByName('QUITADO').AsString = 'S' then
   begin
      BeepCritica;
      informar('Documento já foi baixado');
      exit;
   end;

   If empty(db_CtaReceber.FieldByName('DATA_PAGTO').AsString) then
   begin
      BeepCritica;
      informar('Informe a data de pagamento do Documento');
      EditDataPagto.SetFocus;
      exit;
   end;

   If (db_CtaReceber.FieldByName('DATA_PAGTO').AsDateTime <
     db_CtaReceber.FieldByName('DATA').AsDateTime) then
   begin
      BeepCritica;
      informar('Data de pagamento não pode ser menor que a data do documento');
      EditDataPagto.SetFocus;
      exit;
   end;

   If (db_CtaReceber.FieldByName('VALOR_PAGO').AsFloat <= 0) then
   begin
      BeepCritica;
      informar('Informe o valor pago');
      EditDataPagto.SetFocus;
      exit;
   end;

   {
   if empty(db_CtaReceber.FieldByName('CONTA_CREDITO').AsString) then
   begin
      BeepCritica;
      If pergunta
        ('Você não definou uma conta bancária para este crédito. Deseja corrigir?')
        = True then
      begin
         EditContaCorrente.SetFocus;
         exit;
      end;
   end;
   }

   // ------------------------------------------------------------------
   // ----------------- EXECUTAR PROCEDURE QUE BAIXA TITULO ------------
   // ------------------------------------------------------------------
   If (db_CtaReceber.state in [dsEdit, dsInsert]) then
      db_CtaReceber.Post;

   SPFin_CTAReceber_Baixar.ParamByName('NCODIGO').AsInteger := db_CtaReceber.FieldByName('CODIGO').AsInteger;
   SPFin_CTAReceber_Baixar.ParamByName('NCLIENTE').AsString := db_CtaReceber.FieldByName('CLIENTE').AsString;
   SPFin_CTAReceber_Baixar.ParamByName('ACAO').AsString     := 'BAIXAR';
   SPFin_CTAReceber_Baixar.ExecProc;

   db_CtaReceber.Refresh;

   AcaoUserName[0] := 'Baixou(quitou) Documento: ' + #13 + #10 +      'Documento.......: ' + db_CtaReceber.FieldByName('DOCUMENTO').AsString +
     #13 + #10 + 'Valor...........: ' + FormatFloat('###,##0.00',     db_CtaReceber.FieldByName('VALOR_PAGO').AsFloat) + #13 + #10 +
     'Nome Cliente....: ' + EditNomeCliente.text;

   FUsuario.prcLogUsuario('contas a receber',AcaoUserName[0]);

   // ------------------------------------------------------------------
   // ---------                                                      --
   // ------------------------------------------------------------------

   nValorReal := db_CtaReceber.FieldByName('VALOR').AsFloat;
   nValorPago := db_CtaReceber.FieldByName('VALOR_PAGO').AsFloat;
   nNovoValor := (nValorReal - nValorPago);
   nNovoCodigo := 0;
   nGerarRestante := false;

   ///
   /// se valor pago for menor que o valor real, sugerir criar uma parcela
   /// complementar
   ///

   // If (nNovoValor  < db_CtaReceber.FieldByName('VALOR').AsFloat) then
   If (nValorPago < nValorReal) then
   begin
      BeepCritica;

      if AvisoQuestao('Contas a Receber ',
        'o Valor pago é menor que o valor real. Deseja gerar ' +
        'uma parcela complementar?' + #13 + #10 + #13 + #10 +
        'Valor Real.........: ' + FormatFloat('###,##0.00', nValorReal) + #13 +
        #10 + 'Valor Pago.........: ' + FormatFloat('###,##0.00', nValorPago) +
        #13 + #10 + 'Saldo Complementar.: ' + FormatFloat('###,##0.00',
        nNovoValor) + #13 + #10) = True then
      Begin

         pContasReceberBaixaParcial(
           db_CtaReceber.FieldByName('CLIENTE').AsInteger,
           db_CtaReceber.FieldByName('VENDEDOR').AsInteger,
           db_CtaReceber.FieldByName('DATA').AsDateTime,
           db_CtaReceber.FieldByName('DATA_PAGTO').AsDateTime + 30,
           db_CtaReceber.FieldByName('NOTAFISCAL').AsString,
           db_CtaReceber.FieldByName('DOCUMENTO').AsString,
           nNovoValor,
           db_CtaReceber.FieldByName('PLANO_CONTAS').AsString,
           db_CtaReceber.FieldByName('FORMA_PAGTO').AsInteger, '');

         // ------------------------------------------------------------------
         // ---------                                                      --
         // ------------------------------------------------------------------
         AcaoUserName[0] := 'Gerou saldo complementear: ' + #13 + #10 +
                            'Documento..........: ' + db_CtaReceber.FieldByName('DOCUMENTO').AsString + #13 + #10 +
                            'Nome Cliente.......: ' + EditNomeCliente.text +  #13 + #10 +
                            'Valor Real.........: ' + FormatFloat('###,##0.00', nValorReal) + #13 + #10 +
                            'Valor Pago.........: ' + FormatFloat('###,##0.00', nValorPago) + #13 + #10 +
                            'Saldo Complementar.: ' + FormatFloat('###,##0.00',
           nNovoValor);

         FUsuario.prcLogUsuario('contas a receber',AcaoUserName[0]);

      End;

   end;

   // ------------------------------------------------------------------
   // ---------                                                      --
   // ------------------------------------------------------------------

   // avisar o usuário sobre a baixa do documento

   if db_CtaReceber.FieldByName('QUITADO').AsString = 'S' then
   Begin
      Caption := 'Contas a Receber - [Titulo baixado]';
   end;

   informar('Baixa conclúida');
   wTexto[1] := db_CtaReceber.FieldByName('HISTORICO').AsString;
   db_CtaReceber.close;
   BtnLocalizar.SetFocus;

End;

procedure TFrmCtaReceberBaixas.db_CtaReceberAfterPost(DataSet: TDataSet);
begin

   if db_CtaReceber.FieldByName('QUITADO').AsString = 'N' then
   Begin
      Caption := 'Contas a Receber - [Titulo Aberto]';

   end;

   if db_CtaReceber.FieldByName('QUITADO').AsString = 'S' then
   Begin
      Caption := 'Contas a Receber - [Titulo já foi baixado]';

   end;

   Proteger;
end;

procedure TFrmCtaReceberBaixas.BtnEstornarClick(Sender: TObject);
begin

   if (db_CtaReceber.IsEmpty) then
   begin
      AvisoSistema('Primeiro você deve localize um documento');
      exit;
   end;

   If pergunta('Confirma estorno do documento?') = false then
      exit;

   If (db_CtaReceber.state in [dsEdit, dsInsert]) then
      db_CtaReceber.Post;

   // ------------------------------------------------------------------
   // ---------  estornar documento complementar (antes ) de estornar --
   // ------------------------------------------------------------------
   pContasReceberBaixaParcial(
   db_CtaReceber.FieldByName('CLIENTE').AsInteger,
     db_CtaReceber.FieldByName('VENDEDOR').AsInteger,
     db_CtaReceber.FieldByName('DATA').AsDateTime,
     0,
     '',
     db_CtaReceber.FieldByName('DOCUMENTO').AsString,
     0,
     '',
     0,
     'D');


   // ------------------------------------------------------------------
   // --------------- EXECUTAR PROCEDURE QUE ESTORNA TITULO ------------
   // ------------------------------------------------------------------

   SPFin_CTAReceber_Baixar.ParamByName('NCODIGO').AsInteger :=      db_CtaReceber.FieldByName('CODIGO').AsInteger;
   SPFin_CTAReceber_Baixar.ParamByName('NCLIENTE').AsString :=      db_CtaReceber.FieldByName('CLIENTE').AsString;
   SPFin_CTAReceber_Baixar.ParamByName('ACAO').AsString := 'ESTORNAR';
   SPFin_CTAReceber_Baixar.ExecProc;

   db_CtaReceber.Refresh;

   AcaoUserName[0] := 'Estornou documento. ' + #13 + #10 + 'Documento.......: '
     + db_CtaReceber.FieldByName('DOCUMENTO').AsString + #13 + #10 +
     'Valor...........: ' + FormatFloat('###,##0.00',
     db_CtaReceber.FieldByName('VALOR').AsFloat) + #13 + #10 +
     'Nome Cliente....: ' + EditNomeCliente.text;

   FUsuario.prcLogUsuario('contas a receber',AcaoUserName[0]);

   if db_CtaReceber.FieldByName('QUITADO').AsString = 'N' then
   Begin
      Caption := 'Contas a Receber - [Titulo Aberto]';

   end;

   Aviso('Documento ' + db_CtaReceber.FieldByName('DOCUMENTO').AsString +
     ' foi reaberto.');
   db_CtaReceber.close;

   BtnLocalizar.SetFocus;

end;

procedure TFrmCtaReceberBaixas.BtnLocalizarClick(Sender: TObject);
begin

   wTexto[1] := '';
   db_CtaReceber.Cancel;

   if dbDlgProcurar.Execute then
   begin
      db_CtaReceber.close;
      db_CtaReceber.ParamByName('CODIGO').AsInteger := dbDlgProcurar.ResultFieldAsInteger('CODIGO');
      db_CtaReceber.Open;

      db_CtaReceber.edit;
      db_CtaReceber.FieldByName('DATA_PAGTO').AsDateTime :=Date;
      db_CtaReceber.FieldByName('VALOR_PAGO').AsFloat    :=dbDlgProcurar.ResultFieldAsFloat('VALOR');

      If (db_CtaReceber.state in [dsEdit, dsInsert]) then
         db_CtaReceber.Post;

      EditDataPagto.SetFocus;
   end;


end;

procedure TFrmCtaReceberBaixas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if key=VK_ESCAPE then
      close;

   If Key = VK_F4 Then
      BtnSalvar.Click;

   If Key = VK_F5 Then
      BtnCancelar.Click;

   If Key = VK_F6 Then
      BtnEstornar.Click;

   If Key = VK_F7 Then
      BtnLocalizar.Click;


end;

Procedure TFrmCtaReceberBaixas.Proteger;
begin
   {
     If db_CtaReceber.FieldByName('QUITADO').AsString='S' then
     Begin
     DS_CtaReceber.AutoEdit    :=False;
     BtnEstornar.Enabled       :=True;
     GBoxCreditar.Enabled      :=False;
     end
     else
     begin
     DS_CtaReceber.AutoEdit    :=True;
     BtnEstornar.Enabled       :=False;
     GBoxCreditar.Enabled      :=True;
     end;
   }
end;

procedure TFrmCtaReceberBaixas.db_CtaReceberAfterOpen(DataSet: TDataSet);
begin
   Proteger;
end;

Procedure TFrmCtaReceberBaixas.CalcularValoresTotais;
begin

   nValorDesconto  :=0;
   nValorjuros     :=0;

   nValorDesconto := fncGeraPercentual(db_CtaReceber.FieldByName('VALOR').AsFloat, db_CtaReceber.FieldByName('DESCONTO').AsFloat);
   nValorjuros    := fncGeraPercentual(db_CtaReceber.FieldByName('VALOR').AsFloat, db_CtaReceber.FieldByName('DESPESAS_JUROS').AsFloat);

   db_CtaReceber.FieldByName('DESPESAS_JUROSVALOR').AsFloat    := nValorjuros;
   db_CtaReceber.FieldByName('DESCONTOVALOR').AsFloat          := nValorDesconto;


   db_CtaReceber.FieldByName('DESPESAS_TOTAL').AsFloat    := 0;
   db_CtaReceber.FieldByName('DESPESAS_TOTAL').AsFloat    :=
      nValorjuros +
      db_CtaReceber.FieldByName('DESPESAS_BOLETO').AsFloat +
      db_CtaReceber.FieldByName('DESPESAS_CARTORIO').AsFloat +
      db_CtaReceber.FieldByName('DESPESAS_MULTA').AsFloat;

   db_CtaReceber.FieldByName('VALOR_PAGO').AsFloat    := 0;
   db_CtaReceber.FieldByName('VALOR_PAGO').AsFloat    :=
      db_CtaReceber.FieldByName('VALOR').AsFloat -
      nValorDesconto +
      db_CtaReceber.FieldByName('DESPESAS_TOTAL').AsFloat;;



end;

end.
