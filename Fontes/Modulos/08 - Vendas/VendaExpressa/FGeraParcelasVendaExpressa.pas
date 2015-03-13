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

unit FGeraParcelasVendaExpressa;

interface

uses
   Windows, Messages, System.SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls, DBTables,
   variants,          Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmGeraParcelasVendaExpressa = class(TForm)
      GroupBox1: TGroupBox;
      DBGrid1: TDBGrid;
      Panel1: TPanel;
      BtnSair: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnGerar: TBitBtn;
      DS_CtaReceber: TDataSource;
      db_CtaReceber:  TFDQuery;
      db_CtaReceberDOCUMENTO: TStringField;
      db_CtaReceberDATA: TDateField;
      db_CtaReceberVALOR: TBCDField;
      db_CtaReceberQUITADO: TStringField;
      db_CtaReceberFPAGTO: TStringField;
      db_CtaReceberVENDEDOR: TStringField;
      db_CtaReceberPLANO_C: TStringField;
      Panel2: TPanel;
      Label1: TLabel;
      EditParcelas: TEdit;
      db_FormaPagto: TFDQuery;
      db_CtaReceberNOSSONUMERO: TStringField;
      db_CtaReceberTIPO: TStringField;
      db_CtaReceberCODIGO: TIntegerField;
      db_CtaReceberCLIENTE: TIntegerField;
      db_CtaReceberNOTAFISCAL: TIntegerField;
      db_CtaReceberSERIENF: TStringField;
      db_CtaReceberPARCELA: TIntegerField;
      db_CtaReceberCFOP: TIntegerField;
      db_CtaReceberESPECIE: TStringField;
      db_CtaReceberVENCIMENTO: TDateField;
      db_CtaReceberDATA_PAGTO: TDateField;
      db_CtaReceberVALOR_PAGO: TBCDField;
      db_CtaReceberCHQ_BANCO: TStringField;
      db_CtaReceberCHQ_AGENCIA: TStringField;
      db_CtaReceberCHQ_CONTA_CORRENTE: TStringField;
      db_CtaReceberCHQ_CODCIDADE: TStringField;
      db_CtaReceberCHQ_NOMECIDADE_UF: TStringField;
      db_CtaReceberFORMA_PAGTO: TIntegerField;
      db_CtaReceberDESCONTO: TBCDField;
      db_CtaReceberDESCONTO_DATA: TDateField;
      db_CtaReceberDESCONTO_UserName: TIntegerField;
      db_CtaReceberENTRADA: TBCDField;
      db_CtaReceberPLN_CONTA: TStringField;
      db_CtaReceberHISTORICO: TStringField;
      db_CtaReceberOBSERVACAO: TStringField;
      db_CtaReceberDEPARTAMENTO: TIntegerField;
      db_CtaReceberGERARRECIBO: TStringField;
      db_CtaReceberGERARDUPLICATA: TStringField;
      db_CtaReceberGERARBOLETO: TStringField;
      db_CtaReceberDESPESAS_BOLETO: TBCDField;
      db_CtaReceberDESPESAS_JUROS: TBCDField;
      db_CtaReceberDESPESAS_MULTA: TBCDField;
      db_CtaReceberDESPESAS_CARTORIO: TBCDField;
      db_CtaReceberATRASADA: TStringField;
      db_CtaReceberMOTIVO_BAIXA: TIntegerField;
      db_CtaReceberUserName_NOME: TStringField;
      db_CtaReceberUserName_DATA: TDateField;
      db_CtaReceberUserName_HORA: TTimeField;
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
   private
      { Private declarations }

      totparc: integer;

   public
      { Public declarations }
   end;

var
   FrmGeraParcelasVendaExpressa: TFrmGeraParcelasVendaExpressa;
   i, TotReg: integer;

implementation

uses Biblioteca, FPrincipal, Global, FVendaExpressa,
   FBaseDados;

{$R *.DFM}

procedure TFrmGeraParcelasVendaExpressa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_FormaPagto.close;
   db_CtaReceber.close;

   Action := caFree;

end;

procedure TFrmGeraParcelasVendaExpressa.bbtn_excluiClick(Sender: TObject);
begin
   db_CtaReceber.delete;
end;

procedure TFrmGeraParcelasVendaExpressa.BtnGerarClick(Sender: TObject);
begin

   CalcGrade;

   If (db_CtaReceber.state in [dsedit, dsinsert]) then
      db_CtaReceber.post;

End;

procedure TFrmGeraParcelasVendaExpressa.CalcGrade;
var
   xx, xx_prazos: integer;
begin

   xx := 0;
   xx_prazos := 0;

   forma := FrmVendaExpressa.db_vendas.fieldbyname('FORMA_PAGTO').asString;
   If empty(forma) = true then
   Begin
      db_CtaReceber.close;
      Informar('É necessário informar a forma de pagamento');
      Exit;
   End;

   { verificar se a fatura já foi gereda }

   // If db_CtaReceber.Locate('CLIENTE;DOCUMENTO',VarArrayOf([a1,a2]),[] )=True Then
   if (db_CtaReceber.RecordCount > 0) then
   Begin
      Informar('Fatura já existe');
      Exit; // sair
   End;

   tt_nota := 0;
   tt_nota := (FrmVendaExpressa.db_vendas.fieldbyname('TOTAL_NF').asFloat -
     FrmVendaExpressa.db_vendas.fieldbyname('VLR_RECEBIDO').asFloat);

   if empty(EditParcelas.text) then
      EditParcelas.text := '0';

   If StrToInt(EditParcelas.text) <= 1 then
   begin

      qt_parc := 0;
      qt_parc := db_FormaPagto.RecordCount;
      db_FormaPagto.First;

   end
   else
   begin
      qt_parc := StrToInt(EditParcelas.text);
   end;

   { se possuir indice de reajuste para as parcelas }
   vlr_parc := 0;
   If db_FormaPagto.fieldbyname('ACRESCIMO').asFloat > 0 then
   begin
      nvDesconto := db_FormaPagto.fieldbyname('ACRESCIMO').asFloat;
      vlr_parc := (tt_nota + (tt_nota * (nvDesconto / 100))) / qt_parc;
      vlr_text := Formatfloat('###,###,##0.00', vlr_parc);
      vlr_text := DeletaCaract(vlr_text, '.');
      vlr_parc := StrToFloat(vlr_text);
   end;

   if db_FormaPagto.fieldbyname('DESCONTO').asFloat > 0 then
   begin
      nvDesconto := db_FormaPagto.fieldbyname('DESCONTO').asFloat;
      vlr_parc := (tt_nota - (tt_nota * (nvDesconto / 100))) / qt_parc;
      vlr_text := Formatfloat('###,###,##0.00', vlr_parc);
      vlr_text := DeletaCaract(vlr_text, '.');
      vlr_parc := StrToFloat(vlr_text);
   end;

   if (db_FormaPagto.fieldbyname('ACRESCIMO').asFloat = 0) and
     (db_FormaPagto.fieldbyname('DESCONTO').asFloat = 0) then
   begin
      vlr_parc := (tt_nota / qt_parc);
   End;

   { para fixar decimais em 2 casas }
   if qt_parc > 1 then
   Begin
      vlr_text := Formatfloat('###,##0.00', vlr_parc);
      vlr_text := DeletaCaract(vlr_text, '.');
      vlr_parc := StrToFloat(vlr_text);
   End;
   { total das parcelas }
   vTT_parcs := (vlr_parc * qt_parc) + vlr_ipi;
   vlr_cent := 0;

   // -------------------------------------------------------------------------
   // --  Checar se parecela está dentro do padrão exigido                   --
   // --                                                                     --
   // -------------------------------------------------------------------------
   If BaseDados.db_Parametros.fieldbyname('PARCELAMINIMA').asFloat > 0 then
   begin
      If vlr_parc < BaseDados.db_Parametros.fieldbyname('PARCELAMINIMA')
        .asFloat then
      begin
         BeepCritica;
         AvisoSistema('Não atingiu parcela minima exigida pelo sistema. ' + #13
           + #10 + 'Parcela minima exigida...:  ' + FormatSettings.CurrencyString + '  ' +
           Formatfloat('###,###,##0.00',
           BaseDados.db_Parametros.fieldbyname('PARCELAMINIMA').asFloat) + #13 +
           #10 + 'Parcela do cliente.......:  ' + FormatSettings.CurrencyString + '  ' +
           Formatfloat('###,###,##0.00', vlr_parc));
         Exit;

      end;

   end;

   // (db_FormaPagto).Locate('FPAGTO',forma,[]);
   db_FormaPagto.First;
   with db_FormaPagto do
   begin

      parc_atu := 0;
      for xx := 1 to qt_parc do
      // while not eof do
      begin

         INC(parc_atu);
         if db_FormaPagto.fieldbyname('DIAS').asInteger = 0 then
            dtVencimento := FrmVendaExpressa.db_vendas.fieldbyname('EMISSAO').asDateTime
         else
         begin
            if StrToInt(EditParcelas.text) < 1 then
            begin
               dtVencimento := FrmVendaExpressa.db_vendas.fieldbyname('EMISSAO').asDateTime + db_FormaPagto.fieldbyname('DIAS').asInteger;
            end
            else
            begin
               INC(xx_prazos, 30);
               dtVencimento := FrmVendaExpressa.db_vendas.fieldbyname('EMISSAO').asDateTime + xx_prazos;
            end;

         end;

         // --------------------------------------------------------
         // checar qual deve ser o dia de vencimento
         // --------------------------------------------------------
         If db_FormaPagto.fieldbyname('VENC_DIA').asInteger > 0 then
         begin
            wInteger[0] := db_FormaPagto.fieldbyname('VENC_DIA').asInteger;
            // dia + mes + ano = data
            dtVencimento := StrToDate(IntToStr(wInteger[0]) + '/' +
              IntToStr(mes(dtVencimento)) + '/' + IntToStr(ano(dtVencimento)));

         end;

         wTexto[0] := IntToStr(parc_atu);
         while Length(wTexto[0]) < 3 do
            wTexto[0] := '0' + wTexto[0];

         db_CtaReceber.Append;
         db_CtaReceber.fieldbyname('TIPO').asString := 'RECEBER';
         db_CtaReceber.fieldbyname('DATA').asDateTime :=
           FrmVendaExpressa.db_vendas.fieldbyname('EMISSAO').asDateTime;
         db_CtaReceber.fieldbyname('VALOR').asFloat := vVlr_parc;
         db_CtaReceber.fieldbyname('FPAGTO').asString :=
           FrmVendaExpressa.db_vendas.fieldbyname('FORMA_PAGTO').asString;
         db_CtaReceber.fieldbyname('VENDEDOR').asString :=
           FrmVendaExpressa.db_vendas.fieldbyname('VENDEDOR').asString;
         db_CtaReceber.fieldbyname('CLIENTE').asString :=
           FrmVendaExpressa.db_vendas.fieldbyname('CLIENTE').asString;
         db_CtaReceber.fieldbyname('NRO_NOTA').asString :=
           FrmVendaExpressa.db_vendas.fieldbyname('NOTAFISCAL').asString;
         db_CtaReceber.fieldbyname('DOCUMENTO').asString :=
           FrmVendaExpressa.db_vendas.fieldbyname('NOTAFISCAL').asString + '/' +
           wTexto[0]; // nº parcela
         db_CtaReceber.fieldbyname('NOSSONUMERO').asString :=
           db_CtaReceber.fieldbyname('DOCUMENTO').asString;
         db_CtaReceber.fieldbyname('VENC').asDateTime := dtVencimento;
         db_CtaReceber.fieldbyname('QUITADO').asString := 'N'; // N=NÃO QUITADO


         // Se não tiver vendedor, assumir o Vendedor Pré-definido.

         {
         If empty(db_CtaReceber.fieldbyname('VENDEDOR').asString) then
         begin
            db_CtaReceber.FieldByName('VENDEDOR').AsInteger := FParametros.Venda.Vendedor;
         end;
         }

         db_CtaReceber.post;

         next;
         // inc(xx);
      end;
   end;
   vVlr_parc := 0;

end;

procedure TFrmGeraParcelasVendaExpressa.BtnSairClick(Sender: TObject);
begin

   IF (db_CtaReceber.state IN [dsedit, dsinsert]) Then
   Begin
      If Pergunta('Você ainda está editando. Deseja cancelar as mudanças?')
        = true Then
      Begin
         If (db_CtaReceber.state in [dsedit, dsinsert]) then
            db_CtaReceber.post;

      End
      Else
      Begin
         db_CtaReceber.Cancel;
      End;

   End;

   close;

end;

procedure TFrmGeraParcelasVendaExpressa.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmGeraParcelasVendaExpressa.BtnExcluirClick(Sender: TObject);
begin

   If Pergunta('Excluir faturas?') = false then
      Exit;

   db_CtaReceber.First;
   While not db_CtaReceber.Eof do
   begin
      db_CtaReceber.delete;
   End;
   DS_CtaReceber.DataSet.close;
   DS_CtaReceber.DataSet.Open;

end;

procedure TFrmGeraParcelasVendaExpressa.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   If Key = VK_Escape then
      BtnSair.click;

end;

procedure TFrmGeraParcelasVendaExpressa.db_CtaReceberAfterPost
  (DataSet: TDataSet);
begin
   db_CtaReceber.refresh;
end;

procedure TFrmGeraParcelasVendaExpressa.FormCreate(Sender: TObject);
begin

   db_CtaReceber.Open;
   db_FormaPagto.close;
   db_FormaPagto.ParamByName('CODIGO').asString :=
     FrmVendaExpressa.db_vendas.fieldbyname('FORMA_PAGTO').asString;
   db_FormaPagto.Open;

end;

end.
