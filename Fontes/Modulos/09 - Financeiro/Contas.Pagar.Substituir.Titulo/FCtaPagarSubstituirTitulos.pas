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

unit FCtaPagarSubstituirTitulos;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, ExtCtrls, StdCtrls, StrUtils, DB,  
  Buttons, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
  Vcl.ComCtrls, Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TFrmCtaPagarSubstituirTitulos = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GridMenus: TDBGrid;
    db_Somar:  TFDQuery;
    ds_ctaPagar: TDataSource;
    db_ctaPagar: TFDQuery;
    GroupBox2: TGroupBox;
    GroupBox7: TGroupBox;
    Image1: TImage;
    lblTotais: TLabel;
    db_ctaPagarEMPRESA: TIntegerField;
    db_ctaPagarCODIGO: TIntegerField;
    db_ctaPagarFORNECEDOR: TIntegerField;
    db_ctaPagarFORNECEDOR_NOME: TStringField;
    db_ctaPagarNOTAFISCAL: TIntegerField;
    db_ctaPagarSERIENF: TStringField;
    db_ctaPagarDATA: TSQLTimeStampField;
    db_ctaPagarVENCIMENTO: TSQLTimeStampField;
    db_ctaPagarDATA_PAGTO: TSQLTimeStampField;
    db_ctaPagarDOCUMENTO: TStringField;
    db_ctaPagarREMESSA: TIntegerField;
    db_ctaPagarPARCELA: TIntegerField;
    db_ctaPagarCFOP: TIntegerField;
    db_ctaPagarESPECIE: TStringField;
    db_ctaPagarTIPO: TStringField;
    db_ctaPagarVALOR: TBCDField;
    db_ctaPagarVALOR_PAGO: TBCDField;
    db_ctaPagarVALOR_SALDO: TBCDField;
    db_ctaPagarCONTA_CREDITO: TIntegerField;
    db_ctaPagarCHQ_BANCO: TStringField;
    db_ctaPagarCHQ_AGENCIA: TStringField;
    db_ctaPagarCHQ_CONTA_CORRENTE: TStringField;
    db_ctaPagarCHQ_CODCIDADE: TStringField;
    db_ctaPagarCHQ_NOMECIDADE_UF: TStringField;
    db_ctaPagarCHQ_EMITENTE: TStringField;
    db_ctaPagarCHQ_DESTINO: TStringField;
    db_ctaPagarFORMA_PAGTO: TIntegerField;
    db_ctaPagarDEPARTAMENTO: TIntegerField;
    db_ctaPagarDESCONTO: TBCDField;
    db_ctaPagarDESCONTOVALOR: TBCDField;
    db_ctaPagarPLANO_CONTAS: TStringField;
    db_ctaPagarCONTACAIXA: TIntegerField;
    db_ctaPagarHISTORICO: TStringField;
    db_ctaPagarOBSERVACAO: TStringField;
    db_ctaPagarGERARRECIBO: TStringField;
    db_ctaPagarNOSSONUMERO: TStringField;
    db_ctaPagarDESPESAS_BOLETO: TBCDField;
    db_ctaPagarDESPESAS_JUROS: TBCDField;
    db_ctaPagarDESPESAS_JUROSVALOR: TBCDField;
    db_ctaPagarDESPESAS_MULTA: TBCDField;
    db_ctaPagarDESPESAS_CARTORIO: TBCDField;
    db_ctaPagarDESPESAS_TOTAL: TBCDField;
    db_ctaPagarATRASADA: TStringField;
    db_ctaPagarQUITADO: TStringField;
    db_ctaPagarMOTIVO_BAIXA: TIntegerField;
    db_ctaPagarUSER_NOME: TStringField;
    db_ctaPagarUSER_DATA: TSQLTimeStampField;
    db_ctaPagarUSER_HORA: TTimeField;
    db_ctaPagarCOMPLEMENTAR: TStringField;
    db_ctaPagarCHECADO: TStringField;
    db_ctaPagarPAGTOTERCEIRIZADO: TStringField;
    db_ctaPagarPROTESTOSTATUS: TStringField;
    db_ctaPagarSELECIONADO: TStringField;
    Panel3: TPanel;
    GroupBox3: TGroupBox;
    chkCliente: TCheckBox;
    EditClienteNome: TEdit;
    EditFornecedor: TIDBEditDialog;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    MskDataFim: TMaskEdit;
    MskDataIni: TMaskEdit;
    GroupBox5: TGroupBox;
    Edit1: TEdit;
    EditMotivoBaixa: TIDBEditDialog;
    Edit2: TEdit;
    ProgressBar1: TProgressBar;
    btnCheque: TButton;
    EditContaCorrente: TIDBEditDialog;
    db_ctaPagarCHQ_NUMEROCHEQUE: TStringField;
    db_ctaPagarPAGAMENTOTITULO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure MskDataIniChange(Sender: TObject);
    procedure MskDataIniExit(Sender: TObject);
    procedure MskDataFimExit(Sender: TObject);
    procedure MskDataFimChange(Sender: TObject);
    procedure EditFornecedorChange(Sender: TObject);
    procedure btnChequeClick(Sender: TObject);
    procedure db_ctaPagarAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    procedure prcParametros;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCtaPagarSubstituirTitulos: TFrmCtaPagarSubstituirTitulos;

  nlValor,
  nValorGlobalBaixar,
  nValorGlobalCheques,
  nValorGlobalSobra    : Real;
  nlRegistros : Integer;
  blBaixando : Boolean;

implementation

uses FPrincipal, Global, SQLServer, Biblioteca,
  FCtaPagarSubstituirChequesInformar;

{$R *.dfm}

procedure TFrmCtaPagarSubstituirTitulos.BitBtn1Click(Sender: TObject);
begin

   If (db_ctaPagar.State in [dsedit, dsinsert]) then
      db_ctaPagar.Post;

   prcParametros;

   if nlValor<1 then
   begin
     informar('Não há titulos para substituição dentro dos parâmetros informados.');
     exit;
   end;


   if pergunta('Tem certeza que deseja efetuar essa substituição?')=false then
      exit;

   ProgressBar1.Position :=0;
   ProgressBar1.max      :=db_ctaPagar.RecordCount;;
   db_ctaPagar.First;
   blBaixando:=true;
   // Try
      while not db_ctaPagar.Eof do
      begin

         db_CtaPagar.Edit;
         db_CtaPagar.FieldByName('QUITADO').AsString           :='S';
         db_CtaPagar.FieldByName('DATA_PAGTO').AsDateTime      :=Date;
         db_CtaPagar.FieldByName('PAGAMENTOTITULO').AsString   :='S';
         db_CtaPagar.FieldByName('VALOR').AsFloat              :=0;
         db_CtaPagar.FieldByName('VALOR_SALDO').AsFloat        :=(db_CtaPagar.FieldByName('VALOR').AsFloat-db_CtaPagar.FieldByName('VALOR_PAGO').AsFloat);
         db_CtaPagar.FieldByName('VALOR_SALDO').AsFloat        :=(db_CtaPagar.FieldByName('VALOR').AsFloat-db_CtaPagar.FieldByName('VALOR_PAGO').AsFloat);
         db_CtaPagar.FieldByName('HISTORICO').AsString         :=' | ' + db_CtaPagar.FieldByName('HISTORICO').AsString+
                                                               'TITULO SUBSTITUIDO POR CHEQUE';
         db_CtaPagar.Post;

         {
         SP_BaixaCtaPagar.ParamByName('NCODIGO').AsInteger :=       db_CtaPagar.FieldByName('CODIGO').AsInteger;
         SP_BaixaCtaPagar.ParamByName('NFORNECEDOR').AsInteger :=   db_CtaPagar.FieldByName('FORNECEDOR').AsInteger;
         SP_BaixaCtaPagar.ParamByName('ACAO').AsString := 'BAIXAR';
         SP_BaixaCtaPagar.ExecProc;
         db_CtaPagar.Refresh;
         prcLogUsuario('contas pagar | baixa de documentos', AcaoUserName[0]);
         }


         ProgressBar1.Position := ProgressBar1.Position + 1;
         db_ctaPagar.Next;
      end;
   {
   Finally
      ProgressBar1.Position :=0;
      blBaixando:=False;
   End;
   }
   blBaixando:=False;



   if (nValorGlobalSobra>0) then
   begin
       pContasPagarBaixaParcial(
        StrToIntDef( strFornecedor,0),
        Date,
        Date + 30,
        '0',
        'SUBST'+'-[P]',
        nValorGlobalSobra,
        '',
        0,
        'Proveniente de um pagamento parcial: SUBST-[P]',
        '');
   end;

   AvisoSistema('Titulos subtsituidos com sucesso.');


end;

procedure TFrmCtaPagarSubstituirTitulos.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaPagarSubstituirTitulos.btnChequeClick(Sender: TObject);
begin
   prcParametros;
   if StrToIntDef(strFornecedor,0)<1 then
   begin
      informar('Informe um Fornecedor.');
      exit;
   end;

   FrmCtaPagarSubstituirChequesInformar :=TFrmCtaPagarSubstituirChequesInformar.create(self);
   FrmCtaPagarSubstituirChequesInformar.ShowModal;

   prcParametros;

end;

procedure TFrmCtaPagarSubstituirTitulos.chkClienteClick(Sender: TObject);
begin
   if chkCliente.Checked then
   Begin
      EditFornecedor.Enabled := False;
   End
   Else
   Begin
      EditFornecedor.Enabled := true;
      EditFornecedor.SetFocus;
   End;
   prcParametros;

end;

procedure TFrmCtaPagarSubstituirTitulos.db_ctaPagarAfterPost(DataSet: TDataSet);
begin
   prcParametros;

end;

procedure TFrmCtaPagarSubstituirTitulos.EditFornecedorChange(Sender: TObject);
begin
   prcParametros;

end;

procedure TFrmCtaPagarSubstituirTitulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action :=Cafree;
end;

procedure TFrmCtaPagarSubstituirTitulos.FormCreate(Sender: TObject);
begin
   MskDataIni.Text  :=DateToStr(date);
   MskDataFim.Text  :=DateToStr(date+30);
end;

procedure TFrmCtaPagarSubstituirTitulos.MskDataFimChange(Sender: TObject);
begin
   prcParametros;

end;

procedure TFrmCtaPagarSubstituirTitulos.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.Text := fncDataValidar(MskDataFim.Text);

end;

procedure TFrmCtaPagarSubstituirTitulos.MskDataIniChange(Sender: TObject);
begin
   prcParametros;
end;

procedure TFrmCtaPagarSubstituirTitulos.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.Text := fncDataValidar(MskDataIni.Text);

end;

procedure TFrmCtaPagarSubstituirTitulos.prcParametros;
begin

   if blBaixando=true then
      exit;

   nlValor             := 0;
   dtDataIni           := StrToDateDef(MskDataIni.text,date);
   dtDataFim           := StrToDateDef(MskDataFim.text,date);
   strFornecedor          := IfThen((chkCliente.Checked = false),Trim(EditFornecedor.text),'0' );
   strMotivoBaixa      := Trim(EditMotivoBaixa.text);
   strContaCorrente    := Trim(EditContaCorrente.text);

   inCliente := 999999;

   if StrToIntDef(strFornecedor,0)>0 then
      inCliente :=StrToIntDef(strFornecedor,0);


   db_ctaPagar.close;
   db_ctaPagar.ParamByName('EMPRESA').AsInteger      := FSistema.Empresa;
   db_ctaPagar.ParamByName('CL_INICIAL').AsInteger   := StrToIntDef(strFornecedor,0);
   db_ctaPagar.ParamByName('CL_FINAL').AsInteger     := inCliente;
   db_ctaPagar.ParamByName('DATA1').AsDateTime       := dtDataIni;
   db_ctaPagar.ParamByName('DATA2').AsDateTime       := dtDataFim;
   db_ctaPagar.Open;


   db_Somar.close;
   db_Somar.ParamByName('EMPRESA').AsInteger      := FSistema.Empresa;
   db_Somar.ParamByName('CL_INICIAL').AsInteger   := StrToIntDef(strFornecedor,0);
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

   //lblTotais.Caption :=formatfloat( Concat('Titulos: ',IntToStr(db_ctaPagar.RecordCount),  ' | Total:',CurrencyString,' ', '###,##0.00'),db_Somar.FieldByName('VALORTOTAL').AsFloat );
   lblTotais.Caption :=Concat('Selecionados: ',IntToStr(nlRegistros), ' | Valor Total: ', FormatSettings.CurrencyString, ' ', formatfloat( '###,##0.00',nlValor ), ' | Total Cheques: ', FormatSettings.CurrencyString, ' ',formatfloat( '###,##0.00',nValorGlobalCheques ), ' | Diferença: ', FormatSettings.CurrencyString, ' ',formatfloat( '###,##0.00',nValorGlobalSobra )    );
   db_Somar.Close;



end;


end.
