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

unit FCtaPagarSubstituirChequesInformar;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, DB,  
  Vcl.Imaging.jpeg, Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmCtaPagarSubstituirChequesInformar = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    db_CtaPagarCheque:  TFDQuery;
    db_CtaPagarChequeSomar: TFDQuery;
    ds_CtaPagarCheque: TDataSource;
    Button1: TButton;
    Button2: TButton;
    GroupBox7: TGroupBox;
    Image1: TImage;
    lblTotais: TLabel;
    db_CtaPagarChequeEMPRESA: TIntegerField;
    db_CtaPagarChequeCODIGO: TIntegerField;
    db_CtaPagarChequeFORNECEDOR: TIntegerField;
    db_CtaPagarChequeFORNECEDOR_NOME: TStringField;
    db_CtaPagarChequeNOTAFISCAL: TIntegerField;
    db_CtaPagarChequeSERIENF: TStringField;
    db_CtaPagarChequeDATA: TSQLTimeStampField;
    db_CtaPagarChequeVENCIMENTO: TSQLTimeStampField;
    db_CtaPagarChequeDATA_PAGTO: TSQLTimeStampField;
    db_CtaPagarChequeDOCUMENTO: TStringField;
    db_CtaPagarChequeREMESSA: TIntegerField;
    db_CtaPagarChequePARCELA: TIntegerField;
    db_CtaPagarChequeCFOP: TIntegerField;
    db_CtaPagarChequeESPECIE: TStringField;
    db_CtaPagarChequeTIPO: TStringField;
    db_CtaPagarChequeVALOR: TBCDField;
    db_CtaPagarChequeVALOR_PAGO: TBCDField;
    db_CtaPagarChequeVALOR_SALDO: TBCDField;
    db_CtaPagarChequeCONTA_CREDITO: TIntegerField;
    db_CtaPagarChequeCHQ_BANCO: TStringField;
    db_CtaPagarChequeCHQ_AGENCIA: TStringField;
    db_CtaPagarChequeCHQ_CONTA_CORRENTE: TStringField;
    db_CtaPagarChequeCHQ_CODCIDADE: TStringField;
    db_CtaPagarChequeCHQ_NOMECIDADE_UF: TStringField;
    db_CtaPagarChequeCHQ_EMITENTE: TStringField;
    db_CtaPagarChequeCHQ_DESTINO: TStringField;
    db_CtaPagarChequeFORMA_PAGTO: TIntegerField;
    db_CtaPagarChequeDEPARTAMENTO: TIntegerField;
    db_CtaPagarChequeDESCONTO: TBCDField;
    db_CtaPagarChequeDESCONTOVALOR: TBCDField;
    db_CtaPagarChequePLANO_CONTAS: TStringField;
    db_CtaPagarChequeCONTACAIXA: TIntegerField;
    db_CtaPagarChequeHISTORICO: TStringField;
    db_CtaPagarChequeOBSERVACAO: TStringField;
    db_CtaPagarChequeGERARRECIBO: TStringField;
    db_CtaPagarChequeNOSSONUMERO: TStringField;
    db_CtaPagarChequeDESPESAS_BOLETO: TBCDField;
    db_CtaPagarChequeDESPESAS_JUROS: TBCDField;
    db_CtaPagarChequeDESPESAS_JUROSVALOR: TBCDField;
    db_CtaPagarChequeDESPESAS_MULTA: TBCDField;
    db_CtaPagarChequeDESPESAS_CARTORIO: TBCDField;
    db_CtaPagarChequeDESPESAS_TOTAL: TBCDField;
    db_CtaPagarChequeATRASADA: TStringField;
    db_CtaPagarChequeQUITADO: TStringField;
    db_CtaPagarChequeMOTIVO_BAIXA: TIntegerField;
    db_CtaPagarChequeUSER_NOME: TStringField;
    db_CtaPagarChequeUSER_DATA: TSQLTimeStampField;
    db_CtaPagarChequeUSER_HORA: TTimeField;
    db_CtaPagarChequeCOMPLEMENTAR: TStringField;
    db_CtaPagarChequeCHECADO: TStringField;
    db_CtaPagarChequePAGTOTERCEIRIZADO: TStringField;
    db_CtaPagarChequePROTESTOSTATUS: TStringField;
    db_CtaPagarChequeSELECIONADO: TStringField;
    db_CtaPagarChequePAGAMENTOTITULO: TStringField;
    db_CtaPagarChequeCHQ_NUMEROCHEQUE: TStringField;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure db_CtaPagarChequeAfterPost(DataSet: TDataSet);
    procedure db_CtaPagarChequeNewRecord(DataSet: TDataSet);
    procedure db_CtaPagarChequeBeforePost(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure db_CtaPagarChequeAfterOpen(DataSet: TDataSet);
    procedure db_CtaPagarChequeAfterDelete(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);

  private

     schqBanco, schqAgencia, schqContaCorrente,
     schqNumeroCheque, schqEmitente      : string;
     schqValor : Real;
    procedure prcSomar;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCtaPagarSubstituirChequesInformar: TFrmCtaPagarSubstituirChequesInformar;

implementation

uses Fprincipal, Global, Biblioteca, SQLServer, FCtaPagarSubstituirTitulos;

{$R *.dfm}

procedure TFrmCtaPagarSubstituirChequesInformar.Button1Click(Sender: TObject);
begin
   If (db_CtaPagarCheque.state in [dsEdit, dsInsert]) then
      db_CtaPagarCheque.Post;

   close;
end;

procedure TFrmCtaPagarSubstituirChequesInformar.Button2Click(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaPagarSubstituirChequesInformar.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCtaPagarSubstituirChequesInformar.db_CtaPagarChequeAfterDelete(
  DataSet: TDataSet);
begin
   prcSomar;
end;

procedure TFrmCtaPagarSubstituirChequesInformar.db_CtaPagarChequeAfterOpen(
  DataSet: TDataSet);
begin
  prcSomar;
end;

procedure TFrmCtaPagarSubstituirChequesInformar.db_CtaPagarChequeAfterPost(
  DataSet: TDataSet);
begin
  schqBanco            :=db_CtaPagarCheque.FieldByName('CHQ_BANCO').AsString      ;
  schqAgencia          :=db_CtaPagarCheque.FieldByName('CHQ_AGENCIA').AsString     ;
  schqContaCorrente    :=db_CtaPagarCheque.FieldByName('CHQ_CONTA_CORRENTE').AsString ;
  schqNumeroCheque     :=db_CtaPagarCheque.FieldByName('DOCUMENTO').AsString        ;
  schqEmitente         :=db_CtaPagarCheque.FieldByName('CHQ_EMITENTE').AsString     ;
  schqValor            :=db_CtaPagarCheque.FieldByName('VALOR').AsFloat;
  prcSomar;

end;

procedure TFrmCtaPagarSubstituirChequesInformar.prcSomar;
begin

   db_CtaPagarChequeSomar.close;
   db_CtaPagarChequeSomar.ParamByName('EMPRESA').AsInteger          := FSistema.Empresa;
   db_CtaPagarChequeSomar.ParamByName('FORNECEDOR').AsInteger          := StrToIntDef(strFornecedor,0);
   db_CtaPagarChequeSomar.ParamByName('NOTAFISCAL').AsInteger       := 0;
   db_CtaPagarChequeSomar.open;

   nlValor      :=db_CtaPagarChequeSomar.FieldByName('VALORTOTAL').AsFloat;
   nlRegistros  :=db_CtaPagarChequeSomar.FieldByName('REGISTROS').AsInteger;
   nValorGlobalCheques  :=nlValor;

   lblTotais.Caption :=Concat('Cheques: ',IntToStr(nlRegistros), ' | Valor Total: ', FormatSettings.CurrencyString, ' ', formatfloat( '###,##0.00',nValorGlobalCheques ));

   db_CtaPagarChequeSomar.close;

end;


procedure TFrmCtaPagarSubstituirChequesInformar.db_CtaPagarChequeBeforePost(
  DataSet: TDataSet);
begin
   db_CtaPagarCheque.FieldByName('EMPRESA').AsInteger            := FSistema.Empresa;
   db_CtaPagarCheque.FieldByName('DATA').AsDateTime              := Date;
   db_CtaPagarCheque.FieldByName('FORNECEDOR').AsInteger         := StrToIntDef(strFornecedor,0);
   db_CtaPagarCheque.FieldByName('NOTAFISCAL').AsInteger         := 0;
   db_CtaPagarCheque.FieldByName('CHQ_NUMEROCHEQUE').AsString    := db_CtaPagarCheque.FieldByName('DOCUMENTO').AsString;

end;

procedure TFrmCtaPagarSubstituirChequesInformar.db_CtaPagarChequeNewRecord(
  DataSet: TDataSet);
begin
  db_CtaPagarCheque.FieldByName('EMPRESA').AsInteger          := FSistema.Empresa;
  db_CtaPagarCheque.FieldByName('QUITADO').AsString           := 'N';
  db_CtaPagarCheque.FieldByName('TIPO').AsString              := 'PAGAR';
  db_CtaPagarCheque.FieldByName('ESPECIE').AsString           := 'CHEQUE';
  db_CtaPagarCheque.FieldByName('HISTORICO').AsString         := '(PARA PAGAMENTO DE TITULO)';
  db_CtaPagarCheque.FieldByName('PAGAMENTOTITULO').AsString   := 'S';

  db_CtaPagarCheque.FieldByName('CHQ_BANCO').AsString           := schqBanco;
  db_CtaPagarCheque.FieldByName('CHQ_AGENCIA').AsString         := schqAgencia;
  db_CtaPagarCheque.FieldByName('CHQ_CONTA_CORRENTE').AsString  := schqContaCorrente;
  db_CtaPagarCheque.FieldByName('DOCUMENTO').AsString           := schqNumeroCheque;
  db_CtaPagarCheque.FieldByName('CHQ_EMITENTE').AsString        := schqEmitente;
  db_CtaPagarCheque.FieldByName('VALOR').AsFloat                := schqValor;


  schqBanco            :='';
  schqAgencia          :='';
  schqContaCorrente    :='';
  schqNumeroCheque     :='';
  schqEmitente         :='';
  schqValor            :=0;

end;

procedure TFrmCtaPagarSubstituirChequesInformar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_CtaPagarCheque.close;
end;

procedure TFrmCtaPagarSubstituirChequesInformar.FormCreate(Sender: TObject);
begin
   db_CtaPagarCheque.close;
   db_CtaPagarCheque.ParamByName('EMPRESA').AsInteger          := FSistema.Empresa;
   db_CtaPagarCheque.ParamByName('FORNECEDOR').AsInteger       := StrToIntDef(strFornecedor,0);
   db_CtaPagarCheque.ParamByName('NOTAFISCAL').AsInteger       := 0;
   db_CtaPagarCheque.open;
end;

procedure TFrmCtaPagarSubstituirChequesInformar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_escape then
      close;
end;

end.
