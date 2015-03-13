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

unit FCtaPagarGeraParcelas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls, DBTables,
   variants,      
    ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
     FFrameBarra, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmCtaPagarGeraParcelas = class(TForm)
      GroupBox1: TGroupBox;
      DBGrid1: TDBGrid;
      Panel2: TPanel;
      DS_CtaPagar: TDataSource;
      db_CtaPagar:  TFDQuery;
      PainelBotoes: TPanel;
      BtnSair: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnGerar: TBitBtn;
      GroupBox3: TGroupBox;
      MskDataIni: TMaskEdit;
      Label3: TLabel;
      EditParcelas: TEdit;
      Label2: TLabel;
      Label4: TLabel;
      EditHistorico: TEdit;
      EditValorTotal: TEdit;
      Label7: TLabel;
      db_CtaPagarBuscar: TFDQuery;
      EditIntervalos: TEdit;
      Label8: TLabel;
      Label10: TLabel;
      EditDocumento: TEdit;
      Label11: TLabel;
      EditDiaFixo: TEdit;
      Label1: TLabel;
      Edit2: TEdit;
      EditDepto: TIDBEditDialog;
      EditFornecedor: TIDBEditDialog;
      EditNomeCliente: TEdit;
      EditNomePlanoContas: TEdit;
      EditPlano: TIDBEditDialog;
    db_CtaPagarCODIGO: TIntegerField;
    db_CtaPagarFORNECEDOR: TIntegerField;
    db_CtaPagarFORNECEDOR_NOME: TStringField;
    db_CtaPagarNOTAFISCAL: TIntegerField;
    db_CtaPagarSERIENF: TStringField;
    db_CtaPagarDATA: TSQLTimeStampField;
    db_CtaPagarVENCIMENTO: TSQLTimeStampField;
    db_CtaPagarDATA_PAGTO: TSQLTimeStampField;
    db_CtaPagarDOCUMENTO: TStringField;
    db_CtaPagarREMESSA: TIntegerField;
    db_CtaPagarPARCELA: TIntegerField;
    db_CtaPagarCFOP: TIntegerField;
    db_CtaPagarESPECIE: TStringField;
    db_CtaPagarTIPO: TStringField;
    db_CtaPagarVALOR: TBCDField;
    db_CtaPagarVALOR_PAGO: TBCDField;
    db_CtaPagarVALOR_SALDO: TBCDField;
    db_CtaPagarCONTA_CREDITO: TIntegerField;
    db_CtaPagarCHQ_BANCO: TStringField;
    db_CtaPagarCHQ_AGENCIA: TStringField;
    db_CtaPagarCHQ_CONTA_CORRENTE: TStringField;
    db_CtaPagarCHQ_CODCIDADE: TStringField;
    db_CtaPagarCHQ_NOMECIDADE_UF: TStringField;
    db_CtaPagarCHQ_EMITENTE: TStringField;
    db_CtaPagarCHQ_DESTINO: TStringField;
    db_CtaPagarFORMA_PAGTO: TIntegerField;
    db_CtaPagarDEPARTAMENTO: TIntegerField;
    db_CtaPagarDESCONTO: TBCDField;
    db_CtaPagarPLANO_CONTAS: TStringField;
    db_CtaPagarCONTACAIXA: TIntegerField;
    db_CtaPagarHISTORICO: TStringField;
    db_CtaPagarOBSERVACAO: TStringField;
    db_CtaPagarGERARRECIBO: TStringField;
    db_CtaPagarNOSSONUMERO: TStringField;
    db_CtaPagarDESPESAS_BOLETO: TBCDField;
    db_CtaPagarDESPESAS_JUROS: TBCDField;
    db_CtaPagarDESPESAS_MULTA: TBCDField;
    db_CtaPagarDESPESAS_CARTORIO: TBCDField;
    db_CtaPagarDESPESAS_TOTAL: TBCDField;
    db_CtaPagarATRASADA: TStringField;
    db_CtaPagarQUITADO: TStringField;
    db_CtaPagarMOTIVO_BAIXA: TIntegerField;
    db_CtaPagarCOMPLEMENTAR: TStringField;
    FrmFrameBarra1: TFrmFrameBarra;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure bbtn_excluiClick(Sender: TObject);
      procedure BtnGerarClick(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure BtnExcluirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure db_CtaPagarBeforeOpen(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure EditParcelasKeyPress(Sender: TObject; var Key: Char);
      procedure MskDataIniExit(Sender: TObject);
      procedure EditValorTotalExit(Sender: TObject);
      procedure EditValorTotalKeyPress(Sender: TObject; var Key: Char);
      procedure EditIntervalosKeyPress(Sender: TObject; var Key: Char);
      procedure EditIntervalosExit(Sender: TObject);
      procedure EditDocumentoExit(Sender: TObject);
      procedure EditDiaFixoKeyPress(Sender: TObject; var Key: Char);
      procedure EditDiaFixoExit(Sender: TObject);
      procedure EditDiaFixoEnter(Sender: TObject);
      procedure EditValorTotalEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);

   private
      { Private declarations }

      totparc: integer;

   public
      { Public declarations }
   end;

var
   FrmCtaPagarGeraParcelas: TFrmCtaPagarGeraParcelas;
   i, TotReg: integer;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global,  FCtaPagar;

{$R *.DFM}

procedure TFrmCtaPagarGeraParcelas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_CtaPagar.close;

   Action := caFree;

end;

procedure TFrmCtaPagarGeraParcelas.EditIntervalosExit(Sender: TObject);
begin
   EditIntervalos.text := Alltrim(EditIntervalos.text);

   if EditIntervalos.text = '' then
      exit;

end;

procedure TFrmCtaPagarGeraParcelas.EditIntervalosKeyPress(Sender: TObject;
  var Key: Char);
begin

   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;

end;

procedure TFrmCtaPagarGeraParcelas.EditDiaFixoEnter(Sender: TObject);
begin
   if (EditDiaFixo.text = '') then
      EditDiaFixo.text := '0';

end;

procedure TFrmCtaPagarGeraParcelas.EditDiaFixoExit(Sender: TObject);
begin
   EditDiaFixo.text := Alltrim(EditDiaFixo.text);

   if (EditDiaFixo.text = '') or (EditDiaFixo.text = '0') then
      exit;

   // If StrToInt(AllTrim(EditDiaFixo.text))>30 then
   If not(StrToInt(Alltrim(EditDiaFixo.text)) in [1 .. 30]) then
   begin
      BeepAlerta;
      Informar('Data fixa de vencimento deve ser entre dia 1 e dia 30 de cada mês.');
      EditDiaFixo.Setfocus;
   end;

end;

procedure TFrmCtaPagarGeraParcelas.EditDiaFixoKeyPress(Sender: TObject;
  var Key: Char);
begin

   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;

end;

procedure TFrmCtaPagarGeraParcelas.bbtn_excluiClick(Sender: TObject);
begin
   db_CtaPagar.delete;
end;

procedure TFrmCtaPagarGeraParcelas.BtnGerarClick(Sender: TObject);
var
   xx, xx_prazos: integer;
begin

   // -------------------------------------------------------------------------
   // -------------------------------------------------------------------------
   // VALIDAR

   if Empty(EditDocumento.text) then
   begin
      BeepAlerta;
      Informar('Informe o documento');
      EditDocumento.Setfocus;
      exit;
   end;

   if Empty(EditParcelas.text) then
   begin
      BeepAlerta;
      Informar('Informe a quantidade de parcelas');
      EditParcelas.Setfocus;
      exit;
   end;

   if Empty(EditIntervalos.text) then
   begin
      BeepAlerta;
      Informar('Informe o intervalo de vencimentos');
      EditIntervalos.Setfocus;
      exit;
   end;

   if Empty(EditValorTotal.text) or (StrToFloat(EditValorTotal.text) <= 0) then
   begin
      BeepAlerta;
      Informar('Informe o valor todal que servirá como base para rateio das parcelas');
      EditValorTotal.Setfocus;
      exit;
   end;

   db_CtaPagar.close;
   //db_CtaPagar.ParamByName('NOTAFISCAL').AsInteger := StrToInt(EditDocumento.text);
   db_CtaPagar.Open;

   // -------------------------------------------------------------------------
   // -------------------------------------------------------------------------

   xx := 0;
   xx_prazos := 0;

   { verificar se a fatura já foi gereda }

   if (db_CtaPagar.RecordCount > 0) then
   Begin
      BeepAlerta;
      BeepCritica;
      Informar('Fatura(s) já existe(m)');
      exit; // sair
   End;

   tt_nota := 0;
   tt_nota := StrToFloat(EditValorTotal.text);

   if Empty(EditParcelas.text) then
      EditParcelas.text := '1';

   qt_parc := StrToInt(EditParcelas.text);

   If qt_parc <= 0 then
   begin
      Erro(' Quantidades de parcelas abaixo de 1. Não é possivel prosseguir.');
      Abort;
   end;

   { se possuir indice de reajuste para as parcelas }
   vlr_parc := 0;

   { definir valor das parcelas... Valor Total "dividido" pela quantidade de parcelas }
   vlr_parc := (tt_nota / qt_parc);

   { para fixar decimais em 2 casas }
   vlr_text := Formatfloat('###,##0.00', vlr_parc);
   vlr_text := DeletaCaract(vlr_text, '.');
   vlr_parc := StrToFloat(vlr_text);

   { total das parcelas }
   vTT_parcs := (vlr_parc * qt_parc);
   vlr_cent := 0;

   { Arredonar Valores em caso de centavos }
   parc_cc := vlr_parc * qt_parc; { parcelas com os centavos }
   parc_sc := (int(vlr_parc) * qt_parc); { todas as parcelas sem os centavos }
   vlr_parc := int(vlr_parc); { parcela sem os centavos }


   vlr_cent    := tt_nota - (vlr_parc*qt_parc);
   vlr_cent    := ArrendondarDecimais(vlr_cent);

   // (db_FormaPagto).Locate('FPAGTO',forma,[]);
   parc_atu := 0;
   for xx := 1 to qt_parc do
   // while not eof do
   begin

      INC(parc_atu);

      INC(xx_prazos, StrToInt(EditIntervalos.text));
      dtVencimento := StrToDate(MskDataIni.text) + xx_prazos;

      // --------------------------------------------------------
      // checar qual deve ser o dia de vencimento
      // Somente se o campo "EditDiaFixo" for maior que 0 (zero)
      // --------------------------------------------------------
      If StrToInt(Alltrim(EditDiaFixo.text)) > 0 then
      begin
         wInteger[0] := StrToInt(Alltrim(EditDiaFixo.text));
         // dia + mes + ano = data
         dtVencimento := StrToDate(IntToStr(wInteger[0]) + '/' +
           IntToStr(mes(dtVencimento)) + '/' + IntToStr(ano(dtVencimento)));

      end
      else
      begin
         // inc(xx_prazos, StrToInt(EditIntervalos.Text) );
         // vVencto  := StrToDate(MskDataIni.text) + xx_prazos;
      end;

      vVlr_parc := vlr_parc + vlr_cent;

      wTexto[0] := IntToStr(parc_atu);
      while Length(wTexto[0]) < 3 do
         wTexto[0] := '0' + wTexto[0];

      db_CtaPagar.Append;
      db_CtaPagar.Fieldbyname('DATA').AsDateTime := StrToDate(MskDataIni.text);
      db_CtaPagar.Fieldbyname('VENCIMENTO').AsDateTime := dtVencimento;

      if xx<qt_parc Then
         db_CtaPagar.Fieldbyname('VALOR').asFloat := vlr_parc
      else
         db_CtaPagar.FieldByName('VALOR').asFloat   :=             vlr_parc + vlr_cent;


      db_CtaPagar.Fieldbyname('NOTAFISCAL').asString :=          Alltrim(EditDocumento.text);
      db_CtaPagar.Fieldbyname('DOCUMENTO').asString :=         Alltrim(EditDocumento.text) + '/' + wTexto[0]; // nº parcela
      db_CtaPagar.Fieldbyname('FORNECEDOR').asString :=         Alltrim(EditFornecedor.text);
      db_CtaPagar.Fieldbyname('PLANO_CONTAS').asString := Trim(EditPlano.text);
      db_CtaPagar.Fieldbyname('DEPARTAMENTO').asString := Trim(EditDepto.text);
      db_CtaPagar.Fieldbyname('HISTORICO').asString := Trim(EditHistorico.text);
      db_CtaPagar.Fieldbyname('QUITADO').asString := 'N'; // N=NÃO QUITADO

      db_CtaPagar.post;

   end;
   vVlr_parc := 0;

   // -------------------------------------------------------------------------

   Informar('Parcelas geradas com sucesso!');

End;

procedure TFrmCtaPagarGeraParcelas.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaPagarGeraParcelas.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmCtaPagarGeraParcelas.BtnExcluirClick(Sender: TObject);
begin

   If Pergunta('Excluir Parcelas?') = false then
      exit;

   db_CtaPagar.First;
   While not db_CtaPagar.Eof do
   begin
      db_CtaPagar.delete;
   End;
   db_CtaPagar.close;
   db_CtaPagar.Open;

end;

procedure TFrmCtaPagarGeraParcelas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_F3 then
      BtnGerar.Click;

   If Key = VK_F4 then
      BtnExcluir.Click;

   If Key = VK_Escape then
      BtnSair.Click;

end;

procedure TFrmCtaPagarGeraParcelas.FormShow(Sender: TObject);
begin

   EditFornecedor.Text := '0' ;
   EditPlano.Text      := '0' ;
   EditDepto.Text      := '0' ;

   EditFornecedor.Text := FrmCtaPagar.EditFornecedor.Text ;
   EditPlano.Text      := FrmCtaPagar.DCodPlano.Text ;
   EditDepto.Text      := FrmCtaPagar.EditPagamento.Text ;


end;

procedure TFrmCtaPagarGeraParcelas.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);
   EditDiaFixo.text := IntToStr(Dia(StrToDate(MskDataIni.text)))

end;

procedure TFrmCtaPagarGeraParcelas.db_CtaPagarBeforeOpen(DataSet: TDataSet);
begin

   //db_CtaPagar.ParamByName('NOTAFISCAL').AsInteger :=  StrToInt(EditDocumento.text);

end;

procedure TFrmCtaPagarGeraParcelas.FormCreate(Sender: TObject);
begin
   MskDataIni.text := DateToStr(Date);

   // captions dos botões
   BtnGerar.caption := BtnGerar.caption + #13 + #10 + 'F3';

   BtnExcluir.caption := BtnExcluir.caption + #13 + #10 + 'F4';

   BtnSair.caption := BtnSair.caption + #13 + #10 + 'ESC';

   db_CtaPagar.Open;

end;

procedure TFrmCtaPagarGeraParcelas.EditDocumentoExit(Sender: TObject);
begin
   db_CtaPagarBuscar.close;
   //db_CtaPagarBuscar.ParamByName('NOTAFISCAL').AsInteger :=   StrToInt(EditDocumento.text);
   db_CtaPagarBuscar.Open;

   if db_CtaPagarBuscar.RecordCount > 0 then
   begin
      BeepAlerta;
      BeepAlerta;
      db_CtaPagar.close;
      //db_CtaPagar.ParamByName('NOTAFISCAL').AsInteger :=        StrToInt(EditDocumento.text);
      db_CtaPagar.Open;

      Informar('Já existe Documento/N.F.  com esta identificação');
      db_CtaPagarBuscar.close;
   end
   else
      db_CtaPagarBuscar.close;

end;

procedure TFrmCtaPagarGeraParcelas.EditParcelasKeyPress(Sender: TObject;
  var Key: Char);
begin

   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;

end;

procedure TFrmCtaPagarGeraParcelas.EditValorTotalEnter(Sender: TObject);
begin
   if (EditValorTotal.text = '') then
      EditValorTotal.text := '0';

end;

procedure TFrmCtaPagarGeraParcelas.EditValorTotalExit(Sender: TObject);
begin

   EditValorTotal.text := Alltrim(EditValorTotal.text);
   if (EditValorTotal.text = '') then
   begin
      EditValorTotal.text := '0';
   end;

   if TestFloat(EditValorTotal.text) = false then
   begin
      BeepAlerta;
      Informar('Não é valido como valor');
      EditValorTotal.text := '0';
      EditValorTotal.Setfocus;
   end;

   EditValorTotal.text := Formatfloat('###,##0.00',
     StrToFloat(EditValorTotal.text));
   EditValorTotal.text := DeletaCaract(EditValorTotal.text, '.');

end;

procedure TFrmCtaPagarGeraParcelas.EditValorTotalKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Not(Key in ['0' .. '9', ',', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;
end;

end.
