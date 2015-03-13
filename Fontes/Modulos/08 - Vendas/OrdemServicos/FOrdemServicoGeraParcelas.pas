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

unit FOrdemServicoGeraParcelas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls, DBTables,
   variants,          ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmOrdemServicoGeraParcelas = class(TForm)
      DS_CtaReceber: TDataSource;
      Panel2: TPanel;
      GroupBox3: TGroupBox;
      GroupBox4: TGroupBox;
      PainelBotoes: TPanel;
      BtnSair: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnGerar: TBitBtn;
      DBGrid1: TDBGrid;
      db_FormaPagto:  TFDQuery;
      BtnOK: TBitBtn;
    EditPagamento: TIDBEditDialog;
    EditNomeFormaPagto: TEdit;
    EditCliente: TIDBEditDialog;
    EditNomeCliente: TEdit;
    EditVendedor: TIDBEditDialog;
    EditNomeVendedor: TEdit;
    EditParcelas: TEdit;
    Label2: TLabel;
    db_CtaReceber: TFDQuery;
    db_CtaReceberCODIGO: TIntegerField;
    db_CtaReceberEMPRESA: TIntegerField;
    db_CtaReceberDATA: TSQLTimeStampField;
    db_CtaReceberVENCIMENTO: TSQLTimeStampField;
    db_CtaReceberCLIENTE: TIntegerField;
    db_CtaReceberVENDEDOR: TIntegerField;
    db_CtaReceberDOCUMENTO: TStringField;
    db_CtaReceberVALOR: TBCDField;
    db_CtaReceberQUITADO: TStringField;
    db_CtaReceberGERARBOLETO: TStringField;
    db_CtaReceberNOSSONUMERO: TStringField;
    db_CtaReceberNOTAFISCAL: TIntegerField;
    db_CtaReceberSERIENF: TStringField;
    db_CtaReceberPLANO_CONTAS: TStringField;
    db_CtaReceberFORMA_PAGTO: TIntegerField;
    db_CtaReceberPARCELA: TIntegerField;
    db_CtaReceberESPECIE: TStringField;
    db_CtaReceberTIPO: TStringField;
    db_CtaReceberGERARCOMPLEMENTO: TStringField;
    db_CtaReceberCONTACAIXA: TIntegerField;
    db_CtaReceberCHQ_BANCO: TStringField;
    db_CtaReceberCHQ_AGENCIA: TStringField;
    db_CtaReceberCHQ_CONTA_CORRENTE: TStringField;
    db_CtaReceberCHQ_NUMEROCHEQUE: TStringField;
    db_CtaReceberCHQ_CODCIDADE: TStringField;
    db_CtaReceberCHQ_EMITENTE: TStringField;
    db_CtaReceberCHQ_NOMECIDADE_UF: TStringField;
    db_CtaReceberCHQ_DESTINO: TStringField;
    db_Pedido: TFDQuery;
    ds_Pedido: TDataSource;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure CalcGrade;
      procedure bbtn_excluiClick(Sender: TObject);
      procedure BtnGerarClick(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure BtnExcluirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure db_CtaReceberAfterPost(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure Panel2Exit(Sender: TObject);
      procedure BtnOKClick(Sender: TObject);
      procedure db_CtaReceberNewRecord(DataSet: TDataSet);
   private
      { Private declarations }

      totparc: integer;

   public
      { Public declarations }
   end;

var
   FrmOrdemServicoGeraParcelas: TFrmOrdemServicoGeraParcelas;
   i, TotReg: integer;
   nContador, xx_prazos,
   nCodigoCHR: integer;

   nTotalNFReal,
   nValorRealPedido   : Real;
   bGerarParcelaExterna   : Boolean;


implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FBaseDados,
  FPedidoAprovarVenda;

{$R *.DFM}

procedure TFrmOrdemServicoGeraParcelas.FormCreate(Sender: TObject);
var
 vnCreditoSaldo : Real;
begin

   db_Pedido.close;
   db_Pedido.ParamByName('EMPRESA').AsInteger   :=FSistema.Empresa;
   db_Pedido.ParamByName('CODIGO').AsInteger    :=nPedidoVenda;
   db_Pedido.open;

   nTotalNFReal := db_Pedido.FieldByName('VLR_TOTAL').asFloat;

   vnCreditoSaldo :=0;
   vnCreditoSaldo :=ChecarCreditoSaldo(db_Pedido.FieldByName('CLIENTE').AsInteger);

   // captions dos botões
   BtnGerar.caption := BtnGerar.caption + #13 + #10 + 'F3';
   BtnExcluir.caption := BtnExcluir.caption + #13 + #10 + 'F4';
   BtnSair.caption := BtnSair.caption + #13 + #10 + 'ESC';

   db_CtaReceber.open;
   db_FormaPagto.close;
   db_FormaPagto.ParamByName('FORMAPAGTO').AsString :=   db_Pedido.FieldByName('FORMAPAGTO').AsString;
   db_FormaPagto.open;


   db_Pedido.Edit;

end;

procedure TFrmOrdemServicoGeraParcelas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_CtaReceber.close;

   Action := caFree;

end;

procedure TFrmOrdemServicoGeraParcelas.bbtn_excluiClick(Sender: TObject);
begin
   db_CtaReceber.delete;
end;

procedure TFrmOrdemServicoGeraParcelas.BtnGerarClick(Sender: TObject);
begin

   {
   wTipoPagamento := '';

   if (db_Pedido.Fieldbyname('CLIENTE').AsInteger = 0) or
     (db_Pedido.Fieldbyname('CLIENTE').IsNull) then
   begin
      BeepCritica;
      Informar('Informe um cliente');
      Abort;
   end;

   if (db_Pedido.Fieldbyname('FORMAPAGTO').AsInteger = 0) or
     (db_Pedido.Fieldbyname('FORMAPAGTO').IsNull) then
   begin
      BeepCritica;
      Informar('Informe uma Forma de Pagamento');
      Abort;
   end;

   db_FormaPagto.close;
   db_FormaPagto.ParamByName('CODIGO').AsInteger :=
     db_Pedido.Fieldbyname('FORMAPAGTO').AsInteger;
   db_FormaPagto.open;

   wTipoPagamento := UpperCase(db_FormaPagto.Fieldbyname('TIPO_PAGAMENTO')
     .AsString);

   CalcGrade;

   If (db_Pedido.state in [dsEdit, dsInsert]) then
      db_Pedido.Post;

   If (db_CtaReceber.state in [dsEdit, dsInsert]) then
      db_CtaReceber.Post;

   }

   db_CtaReceber.open;
   db_FormaPagto.close;
   db_FormaPagto.ParamByName('FORMAPAGTO').AsInteger := db_Pedido.FieldByName('FORMAPAGTO').AsInteger;
   db_FormaPagto.open;

   { verificar se a fatura já foi gereda }
   if (db_CtaReceber.RecordCount > 0) then
   Begin
      Informar('Fatura já existe');
      Exit; // sair
   End;

   // cofigurar
   forma := db_Pedido.FieldByName('FORMAPAGTO').AsString;
   If empty(forma) = true then
   Begin
      db_CtaReceber.close;
      Informar('É necessário informar a forma de pagamento');
      Exit;
   End;

   tt_nota := 0;
   tt_nota := nTotalNFReal;


   If tt_nota <= 0 then
   begin
      Informar('Não há saldo disponivel para gerar faturas');
      exit;
   end;


   if tt_nota<0 then
      tt_nota :=0;

   bGerarParcelaExterna := False;

   CalcGrade;

   bGerarParcelaExterna := False;
   bGerarParcelaExterna := (nValorRealPedido>nTotalNFReal);


   if bGerarParcelaExterna then
   begin
      tt_nota := 0;
      tt_nota := nValorRealPedido - nTotalNFReal;
      if tt_nota < 1 then
         tt_nota := 0;

      CalcGrade;
   end;

   If (db_CtaReceber.state in [dsedit, dsinsert]) then
      db_CtaReceber.post;


End;

procedure TFrmOrdemServicoGeraParcelas.CalcGrade;
begin

   nContador := 0;
   xx_prazos := 0;
   nCodigoCHR := 64;

   vlr_parc := 0;
   vlr_text := '';
   vlr_text := '';
   vlr_parc := 0;
   qt_parc  := 0;

   if empty(EditParcelas.text) then
      EditParcelas.text := '0';

   Try
      StrToInt(EditParcelas.text);
   except
      EditParcelas.text := '0';
   end;

   If StrToInt(EditParcelas.text) <= 0 then
   begin

      qt_parc := db_FormaPagto.RecordCount;
      db_FormaPagto.First;

   end
   else
   begin
      qt_parc := StrToInt(EditParcelas.text);
   end;

   If qt_parc <= 0 then
   begin
      Erro(' Quantidades de parcelas abaixo de 1. Não é possivel prosseguir.'+
          sLineBreak+
          sLineBreak+
          'Verique o cadastro da forma de pagamento, no campo "PRAZOS" '
          );

      Abort;

   end;

   nvAcrescimo  := db_FormaPagto.FieldByName('ACRESCIMO').asFloat;
   nvDesconto   := db_FormaPagto.FieldByName('DESCONTO').asFloat;

   tt_nota     := tt_nota + (tt_nota * (nvAcrescimo / 100));
   tt_nota     := tt_nota - (tt_nota * (nvDesconto  / 100));

   vlr_parc    := tt_nota / qt_parc;

   vlr_parc    := vlr_parc + (vlr_parc * (nvAcrescimo / 100));
   vlr_parc    := vlr_parc - (vlr_parc * (nvDesconto  / 100));
   vlr_parc    := ArrendondarDecimais(vlr_parc);

   vlr_cent    := tt_nota - (vlr_parc*qt_parc);
   vlr_cent    := ArrendondarDecimais(vlr_cent);


   // -------------------------------------------------------------------------
   // --  Checar se parecela está dentro do padrão exigido                   --
   // --                                                                     --
   // -------------------------------------------------------------------------
   If db_FormaPagto.FieldByName('PARCELAMINIMA').asFloat > 0 then
   begin
      If vlr_parc < db_FormaPagto.FieldByName('PARCELAMINIMA')
        .asFloat then
      begin
         BeepCritica;
         AvisoSistema('Não atingiu parcela minima exigida pelo sistema. ' + #13
           + #10 + 'Parcela minima exigida...: R$ ' +           Formatfloat('###,###,##0.00',
           db_FormaPagto.FieldByName('PARCELAMINIMA').asFloat)
           + #13 + #10 + 'Parcela do cliente.......: R$ ' +           Formatfloat('###,###,##0.00', vlr_parc));
         Exit;

      end;

   end;


   // (db_FormaPagto).Locate('FPAGTO',forma,[]);
   db_FormaPagto.First;
   parc_atu := 0;

   for nContador := 1 to qt_parc do
   // while not eof do
   begin

      INC(parc_atu);
      if db_FormaPagto.FieldByName('DIAS').asInteger = 0 then
         dtVencimento := db_Pedido.FieldByName('DATA').asDateTime
      else
      begin
         if StrToInt(EditParcelas.text) < 1 then
         begin
            dtVencimento := db_Pedido.FieldByName('DATA').asDateTime
              + db_FormaPagto.FieldByName('DIAS').asInteger;
         end
         else
         begin
            INC(xx_prazos, 30);
            dtVencimento := db_Pedido.FieldByName('DATA').asDateTime + xx_prazos;
         end;

      end;

      // --------------------------------------------------------
      // checar qual deve ser o dia de vencimento
      // --------------------------------------------------------
      If db_FormaPagto.FieldByName('VENCIMENTO_DIA').asInteger > 0 then
      begin
         wInteger[0] := db_FormaPagto.FieldByName('VENCIMENTO_DIA').asInteger;
         // dia + mes + ano = data
         dtVencimento := StrToDate(IntToStr(wInteger[0]) + '/' +
           IntToStr(mes(dtVencimento)) + '/' + IntToStr(ano(dtVencimento)));

      end;


      db_CtaReceber.Append;
      db_CtaReceber.FieldByName('EMPRESA').AsInteger :=              FSistema.Empresa;
      db_CtaReceber.FieldByName('DATA').asDateTime :=                db_Pedido.FieldByName('DATA').asDateTime;

      if nContador<qt_parc Then
         db_CtaReceber.FieldByName('VALOR').asFloat   :=             vlr_parc
      else
         db_CtaReceber.FieldByName('VALOR').asFloat   :=             vlr_parc + vlr_cent;

      db_CtaReceber.FieldByName('FORMA_PAGTO').AsString :=           db_Pedido.FieldByName('FORMAPAGTO').AsString;
      db_CtaReceber.FieldByName('VENDEDOR').AsString :=              db_Pedido.FieldByName('VENDEDOR').AsString;
      db_CtaReceber.FieldByName('CLIENTE').AsInteger :=              db_Pedido.FieldByName('CLIENTE').AsInteger;
      db_CtaReceber.FieldByName('NOTAFISCAL').AsInteger :=           db_Pedido.FieldByName('CODIGO').AsInteger;
      db_CtaReceber.FieldByName('CONTACAIXA').AsInteger :=           BaseDados.db_Parametros.FieldByName('FINANCEIRO_RECEBER_CONTACAIXA').AsInteger;

      if bGerarParcelaExterna=false then
         db_CtaReceber.FieldByName('DOCUMENTO').AsString :=             db_Pedido.FieldByName('CODIGO').AsString + '/' +      ZeroEsquerda(IntToStr(parc_atu),3)
      else
      begin
         inc(nCodigoCHR);
         db_CtaReceber.FieldByName('DOCUMENTO').AsString :=             db_Pedido.FieldByName('CODIGO').AsString + '/' +      ZeroEsquerda(IntToStr(parc_atu),3) + Chr(nCodigoCHR);
      end;

      // nº parcela
      db_CtaReceber.FieldByName('NOSSONUMERO').AsString := '';
      db_CtaReceber.FieldByName('VENCIMENTO').asDateTime := dtVencimento;
      db_CtaReceber.FieldByName('QUITADO').AsString := 'N'; // N=NÃO QUITADO

      // Se não tiver vendedor, assumir o Vendedor Pré-definido.

      {
      If empty(db_CtaReceber.FieldByName('VENDEDOR').AsString) then
      begin
            db_CtaReceber.FieldByName('VENDEDOR').AsInteger := FParametros.Venda.Vendedor;
      end;
      }

      if bGerarParcelaExterna then
         db_CtaReceber.FieldByName('GERARCOMPLEMENTO').AsString := 'S'
      else
         db_CtaReceber.FieldByName('GERARCOMPLEMENTO').AsString := 'N';






      db_CtaReceber.post;

      next;
      // inc(xx);
   end;
   vlr_parc := 0;

end;

procedure TFrmOrdemServicoGeraParcelas.BtnSairClick(Sender: TObject);
begin

   ImprimirNaoCupom := false;
   db_CtaReceber.Cancel;
   close;

end;

procedure TFrmOrdemServicoGeraParcelas.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmOrdemServicoGeraParcelas.BtnExcluirClick(Sender: TObject);
begin

   If db_CtaReceber.IsEmpty then
   Begin
      Informar('não há dados para excluir');
      Exit;
   end;

   If Pergunta('Excluir faturas?') = false then
      Exit;

   db_CtaReceber.Cancel;
   db_CtaReceber.First;
   While not db_CtaReceber.eof do
   begin
      db_CtaReceber.delete;
   End;
   DS_CtaReceber.DataSet.close;
   DS_CtaReceber.DataSet.open;


end;

procedure TFrmOrdemServicoGeraParcelas.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   If Key = VK_F3 then
      BtnGerar.Click;

   If Key = VK_F4 then
      BtnExcluir.Click;

   If Key = VK_F5 then
      BtnOK.Click;

   If Key = VK_Escape then
      BtnSair.Click;

end;

procedure TFrmOrdemServicoGeraParcelas.db_CtaReceberAfterPost
  (DataSet: TDataSet);
begin

   db_CtaReceber.refresh;
end;

procedure TFrmOrdemServicoGeraParcelas.Panel2Exit(Sender: TObject);
begin
   If (db_Pedido.state in [dsEdit, dsInsert]) then
      db_Pedido.Post;

end;

procedure TFrmOrdemServicoGeraParcelas.BtnOKClick(Sender: TObject);
begin
   {
     if db_CtaReceber.IsEmpty then
     begin

     Informar(' Não há dados para gravar ');
     Abort;
     end;
   }

   If (db_Pedido.state in [dsEdit, dsInsert]) then
      db_Pedido.Post;

   If (db_CtaReceber.state in [dsEdit, dsInsert]) then
      db_CtaReceber.Post;

   ImprimirNaoCupom := True;

   close;

end;

procedure TFrmOrdemServicoGeraParcelas.db_CtaReceberNewRecord
  (DataSet: TDataSet);
begin

   db_CtaReceber.Fieldbyname('TIPO').AsString := 'RECEBER'; // N=NÃO QUITADO

end;

end.
