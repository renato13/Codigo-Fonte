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

unit FCtaReceberBaixasLotes;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, ExtCtrls, StdCtrls, StrUtils, DB,  
  Buttons, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
  Mask, DBCtrls, jpeg, Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFrmCtaReceberBaixasLotes = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    MskDataFim: TMaskEdit;
    Label4: TLabel;
    MskDataIni: TMaskEdit;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    chkCliente: TCheckBox;
    EditClienteNome: TEdit;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    EditMotivoBaixa: TIDBEditDialog;
    GroupBox4: TGroupBox;
    Edit2: TEdit;
    EditCliente: TIDBEditDialog;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SPFIN_CTARECEBER_BAIXARLOTE:  TFDStoredProc;
    GroupBox5: TGroupBox;
    EditNomeContaCaixa: TEdit;
    ContaCaixa: TIDBEditDialog;
    GroupBox6: TGroupBox;
    ComboBox1: TComboBox;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    ds_ctaReceber: TDataSource;
    db_ctaReceber: TFDQuery;
    db_ctaReceberEMPRESA: TIntegerField;
    db_ctaReceberCODIGO: TIntegerField;
    db_ctaReceberCLIENTE: TIntegerField;
    db_ctaReceberNOTAFISCAL: TIntegerField;
    db_ctaReceberSERIENF: TStringField;
    db_ctaReceberDATA: TSQLTimeStampField;
    db_ctaReceberVENCIMENTO: TSQLTimeStampField;
    db_ctaReceberDATA_PAGTO: TSQLTimeStampField;
    db_ctaReceberDOCUMENTO: TStringField;
    db_ctaReceberPARCELA: TIntegerField;
    db_ctaReceberCFOP: TIntegerField;
    db_ctaReceberVENDEDOR: TIntegerField;
    db_ctaReceberESPECIE: TStringField;
    db_ctaReceberTIPO: TStringField;
    db_ctaReceberVALOR: TBCDField;
    db_ctaReceberVALOR_PAGO: TBCDField;
    db_ctaReceberVALOR_SALDO: TBCDField;
    db_ctaReceberCONTA_CREDITO: TIntegerField;
    db_ctaReceberCHQ_BANCO: TStringField;
    db_ctaReceberCHQ_AGENCIA: TStringField;
    db_ctaReceberCHQ_CONTA_CORRENTE: TStringField;
    db_ctaReceberCHQ_NUMEROCHEQUE: TStringField;
    db_ctaReceberCHQ_CODCIDADE: TStringField;
    db_ctaReceberCHQ_EMITENTE: TStringField;
    db_ctaReceberCHQ_NOMECIDADE_UF: TStringField;
    db_ctaReceberCHQ_DESTINO: TStringField;
    db_ctaReceberFORMA_PAGTO: TIntegerField;
    db_ctaReceberDEPARTAMENTO: TIntegerField;
    db_ctaReceberDESCONTO: TBCDField;
    db_ctaReceberDESCONTO_DATA: TSQLTimeStampField;
    db_ctaReceberENTRADA: TBCDField;
    db_ctaReceberPLANO_CONTAS: TStringField;
    db_ctaReceberHISTORICO: TStringField;
    db_ctaReceberOBSERVACAO: TStringField;
    db_ctaReceberGERARRECIBO: TStringField;
    db_ctaReceberGERARDUPLICATA: TStringField;
    db_ctaReceberGERARBOLETO: TStringField;
    db_ctaReceberGERARCOMPLEMENTO: TStringField;
    db_ctaReceberGERARREMESSA: TStringField;
    db_ctaReceberNOSSONUMERO: TStringField;
    db_ctaReceberDESPESAS_BOLETO: TBCDField;
    db_ctaReceberDESPESAS_JUROS: TBCDField;
    db_ctaReceberDESPESAS_MULTA: TBCDField;
    db_ctaReceberDESPESAS_CARTORIO: TBCDField;
    db_ctaReceberDESPESAS_TOTAL: TBCDField;
    db_ctaReceberATRASADA: TStringField;
    db_ctaReceberQUITADO: TStringField;
    db_ctaReceberMOTIVO_BAIXA: TIntegerField;
    db_ctaReceberCOMPLEMENTAR: TStringField;
    db_ctaReceberDESCONTO_USER: TIntegerField;
    db_ctaReceberCONTACAIXA: TIntegerField;
    db_ctaReceberPROTESTOSTATUS: TStringField;
    db_ctaReceberDESCONTOVALOR: TBCDField;
    db_ctaReceberDESPESAS_JUROSVALOR: TBCDField;
    db_ctaReceberSELECIONADO: TStringField;
    GroupBox7: TGroupBox;
    Image1: TImage;
    lblTotais: TLabel;
    db_Update: TFDQuery;
    db_Somar: TFDQuery;
    btnCheque: TButton;
    EditContaCorrente: TIDBEditDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chkClienteClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MskDataFimExit(Sender: TObject);
    procedure MskDataIniExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure MskDataIniChange(Sender: TObject);
    procedure MskDataFimChange(Sender: TObject);
    procedure EditClienteChange(Sender: TObject);
    procedure btnChequeClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure db_ctaReceberAfterPost(DataSet: TDataSet);
  private
    procedure prcParametros;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCtaReceberBaixasLotes: TFrmCtaReceberBaixasLotes;

  nlValor,
  nValorGlobalBaixar,
  nValorGlobalCheques,
  nValorGlobalSobra    : Real;

  nlRegistros : Integer;


implementation

uses FPrincipal, Global, SQLServer, Biblioteca,
  FCtaReceberBaixasLotesSelecionar, FCtaReceberBaixasLotesCheques;

{$R *.dfm}

procedure TFrmCtaReceberBaixasLotes.MskDataIniChange(Sender: TObject);
begin
   prcParametros;
end;

procedure TFrmCtaReceberBaixasLotes.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.Text := fncDataValidar(MskDataIni.Text);

end;

procedure TFrmCtaReceberBaixasLotes.MskDataFimChange(Sender: TObject);
begin
   prcParametros;
end;

procedure TFrmCtaReceberBaixasLotes.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.Text := fncDataValidar(MskDataFim.Text);

end;

procedure TFrmCtaReceberBaixasLotes.BitBtn1Click(Sender: TObject);
begin

   prcParametros;


   if nlValor<1 then
   begin
     informar('Não há titulos para baixar dentro dos parâmetros informados.');
     exit;
   end;


   if pergunta('Tem certeza que deseja efetuar essa baixa por lote?')=false then
      exit;

   SPFIN_CTARECEBER_BAIXARLOTE.ParamByName('NEMPRESA').AsInteger       := FSistema.Empresa;
   SPFIN_CTARECEBER_BAIXARLOTE.ParamByName('DTVENCINICIO').AsDate      := dtDataIni;
   SPFIN_CTARECEBER_BAIXARLOTE.ParamByName('DTVENCFINAL').AsDate       := dtDataFim;
   SPFIN_CTARECEBER_BAIXARLOTE.ParamByName('NCLIENTE').AsInteger       := StrToIntDef(strCliente,0);
   SPFIN_CTARECEBER_BAIXARLOTE.ParamByName('NMOTIVOBAIXA').AsInteger   := StrToIntDef(strMotivoBaixa,0);
   SPFIN_CTARECEBER_BAIXARLOTE.ParamByName('NCONTACORRENTE').AsInteger := StrToIntDef(strContaCorrente,0);
   SPFIN_CTARECEBER_BAIXARLOTE.ParamByName('NCONTACAIXA').AsInteger    := StrToIntDef(strContaCaixa,0);
   SPFIN_CTARECEBER_BAIXARLOTE.ParamByName('STIPO').AsString           := ComboBox1.Items[ComboBox1.ItemIndex];
   SPFIN_CTARECEBER_BAIXARLOTE.ParamByName('ACAO').AsString            := 'BAIXAR';
   SPFIN_CTARECEBER_BAIXARLOTE.ExecProc;
   SPFIN_CTARECEBER_BAIXARLOTE.Close;

   if (nValorGlobalSobra>0) then
   begin
       pContasReceberBaixaParcial(
        StrToIntDef( strCliente,0),
        StrToIntDef( fncCliente_retCampo(StrToIntDef(strCliente,0),'VENDEDOR'),0),
        Date,
        Date + 30,
        '0',
        'BAIXALOTE',
        nValorGlobalSobra,
        '',
        0,
        '');
   end;

   AvisoSistema('Baixas concluidas com sucesso.');

end;

procedure TFrmCtaReceberBaixasLotes.prcParametros;
begin
   nlValor             := 0;
   dtDataIni           := StrToDateDef(MskDataIni.text,date);
   dtDataFim           := StrToDateDef(MskDataFim.text,date);
   strCliente          := IfThen((chkCliente.Checked = false),Trim(EditCliente.text),'0' );
   strMotivoBaixa      := Trim(EditMotivoBaixa.text);
   strContaCorrente    := Trim(EditContaCorrente.text);
   strContaCaixa       := Trim(ContaCaixa.text);

   inCliente := 999999;
   if StrToIntDef(strCliente,0)>0 then
      inCliente :=StrToIntDef(strCliente,0);


   db_ctaReceber.close;
   db_ctaReceber.ParamByName('EMPRESA').AsInteger      := FSistema.Empresa;
   db_ctaReceber.ParamByName('CL_INICIAL').AsInteger   := StrToIntDef(strCliente,0);
   db_ctaReceber.ParamByName('CL_FINAL').AsInteger     := inCliente;
   db_ctaReceber.ParamByName('DATA1').AsDateTime       := dtDataIni;
   db_ctaReceber.ParamByName('DATA2').AsDateTime       := dtDataFim;
   db_ctaReceber.Open;


   db_Somar.close;
   db_Somar.ParamByName('EMPRESA').AsInteger      := FSistema.Empresa;
   db_Somar.ParamByName('CL_INICIAL').AsInteger   := StrToIntDef(strCliente,0);
   db_Somar.ParamByName('CL_FINAL').AsInteger     := inCliente;
   db_Somar.ParamByName('DATA1').AsDateTime       := dtDataIni;
   db_Somar.ParamByName('DATA2').AsDateTime       := dtDataFim;
   db_Somar.Open;


   nValorGlobalSobra := 0;
   nlValor      :=db_Somar.FieldByName('VALORTOTAL').AsFloat;
   nlRegistros  :=db_Somar.FieldByName('REGISTROS').AsInteger;
   nValorGlobalBaixar  := nlValor;

   if (nValorGlobalCheques>nValorGlobalBaixar) then
      nValorGlobalSobra :=(nValorGlobalCheques - nValorGlobalBaixar);

   db_Somar.Close;

   //lblTotais.Caption :=formatfloat( Concat('Titulos: ',IntToStr(db_ctaReceber.RecordCount),  ' | Total:',CurrencyString,' ', '###,##0.00'),db_Somar.FieldByName('VALORTOTAL').AsFloat );
   lblTotais.Caption :=Concat('Titulos: ',IntToStr(nlRegistros), ' | Valor Total: ', FormatSettings.CurrencyString, ' ', formatfloat( '###,##0.00',nlValor ));
   db_Somar.Close;



end;

procedure TFrmCtaReceberBaixasLotes.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaReceberBaixasLotes.BitBtn3Click(Sender: TObject);
begin
   prcParametros;
   FrmCtaReceberBaixasLotesSelecionar :=TFrmCtaReceberBaixasLotesSelecionar.Create(self);
   FrmCtaReceberBaixasLotesSelecionar.ShowModal;
   prcParametros;
end;

procedure TFrmCtaReceberBaixasLotes.btnChequeClick(Sender: TObject);
begin
   prcParametros;
   if StrToIntDef(strCliente,0)<1 then
   begin
      informar('Informe um cliente.');
      exit;
   end;
   FrmCtaReceberBaixasLotesCheques :=TFrmCtaReceberBaixasLotesCheques.create(self);
   FrmCtaReceberBaixasLotesCheques.ShowModal;
   prcParametros;
end;

procedure TFrmCtaReceberBaixasLotes.chkClienteClick(Sender: TObject);
begin
   if chkCliente.Checked then
   Begin
      EditCliente.Enabled := False;
   End
   Else
   Begin
      EditCliente.Enabled := true;
      EditCliente.SetFocus;
   End;
end;

procedure TFrmCtaReceberBaixasLotes.ComboBox1Change(Sender: TObject);
begin
   if ComboBox1.Items[ComboBox1.ItemIndex]='CHEQUE' then
      btnCheque.Visible :=True
   else
      btnCheque.Visible :=False;

end;

procedure TFrmCtaReceberBaixasLotes.db_ctaReceberAfterPost(DataSet: TDataSet);
begin
   prcParametros;
end;

procedure TFrmCtaReceberBaixasLotes.EditClienteChange(Sender: TObject);
begin
   prcParametros;
end;

procedure TFrmCtaReceberBaixasLotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action :=Cafree;
   //FreeAndNil(FrmCtaReceberBaixasLotes);
end;

procedure TFrmCtaReceberBaixasLotes.FormCreate(Sender: TObject);
begin
   MskDataIni.text :=DateToStr(fncDataBase);
   MskDataFim.text :=DateToStr(Date+30);
end;

procedure TFrmCtaReceberBaixasLotes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   //if key=vk_escape then
   //   close;

end;

end.
