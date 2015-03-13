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

unit FDistribuirPagamento;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Menus, DB,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FFrameBarra, FFrameBotoes, Vcl.Grids, Vcl.DBGrids;

type
   TFrmDistribuirPagamento = class(TForm)
    AdvGroupBox1: TGroupBox;
    FrmFrameBotoes1: TFrmFrameBotoes;
    DBAdvGrid1: TDBGrid;
    db_DistribuirGerarPagamento:  TFDQuery;
    ds_Distribuir: TDataSource;
    db_DistribuirBaixar: TFDQuery;
    FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    EditVencimento: TMaskEdit;
    Label1: TLabel;
    Label8: TLabel;
    ComboFormaPagamento: TComboBox;
    db_DistribuirGerarPagamentoCODIGO: TIntegerField;
    db_DistribuirGerarPagamentoORDEMPRODUCAO: TIntegerField;
    db_DistribuirGerarPagamentoFASE: TIntegerField;
    db_DistribuirGerarPagamentoFASE_NOME: TStringField;
    db_DistribuirGerarPagamentoDATA: TSQLTimeStampField;
    db_DistribuirGerarPagamentoDATARETORNO: TSQLTimeStampField;
    db_DistribuirGerarPagamentoFORNECEDOR: TIntegerField;
    db_DistribuirGerarPagamentoFORNECEDOR_NOME: TStringField;
    db_DistribuirGerarPagamentoREFERENCIA: TStringField;
    db_DistribuirGerarPagamentoDESCRICAO: TStringField;
    db_DistribuirGerarPagamentoQTDE_REMESSA: TIntegerField;
    db_DistribuirGerarPagamentoQTDE_RETORNO: TIntegerField;
    db_DistribuirGerarPagamentoQTDE_RESTANTE: TIntegerField;
    db_DistribuirGerarPagamentoVLR_UNIT: TBCDField;
    db_DistribuirGerarPagamentoVLR_TOTALPAGAR: TBCDField;
    db_DistribuirGerarPagamentoCONCLUIDO: TBCDField;
    db_DistribuirGerarPagamentoGEROUPAGAMENTO: TStringField;
    db_DistribuirGerarPagamentoDATAENCERRAMENTO: TSQLTimeStampField;
    SPOP_DISTRIBUIR_PAGAR: TFDStoredProc;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormShow(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
   private
      { Private declarations }

      nPedido: Integer;

   public
      { Public declarations }

   end;

var
   FrmDistribuirPagamento: TFrmDistribuirPagamento;
   sJustificativa  : WideString;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global ;

{$R *.dfm}

procedure TFrmDistribuirPagamento.FormCreate(Sender: TObject);
begin
   //

   FrmPrincipal.MnuDistribuir_Pagamentos.Enabled := False;


   FUsuario.prcLogUsuario('Terceirizado | Gerar Pagamento','Acessou modulo Terceirizado | Gerar Pagamento' );

   FrmFrameBotoes1.DataSource := ds_Distribuir;

   //db_DistribuirGerarPagamento.Open;


end;


procedure TFrmDistribuirPagamento.FrmFrameBotoes1SpbCancelarClick
  (Sender: TObject);
begin

   AcaoUserName[0] :='';

   {
   AcaoUserName[0] :=
   'CÓDIGO................: ' + db_DistribuirGerarPagamento.FieldByName('CODIGO').AsString  +    #13 + #10 +
   'TERCEIRIZADO..........: ' + db_DistribuirGerarPagamento.FieldByName('FORNECEDOR').AsString+'-'+db_DistribuirGerarPagamento.FieldByName('FORNECEDOR_NOME').AsString +    #13 + #10 +
   'QUANTIDADE RETORNADA..: ' + FormatFloat('###,##0',  db_DistribuirGerarPagamento.FieldByName('QTDE_RETORNO').AsFloat) + #13 + #10 +
   'VALOR.................: ' + FormatFloat('###,##0.00',  db_DistribuirGerarPagamento.FieldByName('VLR_TOTAL').AsFloat);

   if (db_DistribuirGerarPagamento.FieldByName('ENCERRADO').AsString = 'N') or
     (db_DistribuirGerarPagamento.FieldByName('ENCERRADO').AsString = 'NAO') then
   Begin
      BeepCritica;
      Informar('Remessa de Serviço já foi reaberta');
      exit;
   End;

   if ChecarCreditoCliente(db_DistribuirGerarPagamento.FieldByName('FORNECEDOR').AsInteger) Then
   begin

      AvisoSistema('Aprovação não autorizada!'+sLineBreak+
                   'O Terceirizado referente a remessa que esta tentando encerrar '+
                   'está bloqueado no sistema.');
      db_DistribuirGerarPagamento.Cancel;

      Abort;
   end;


   nPedido := 0;
   nPedido := db_DistribuirGerarPagamento.FieldByName('CODIGO').AsInteger;

   db_DistribuirBaixar.ParamByName('CODIGO').AsInteger :=    db_DistribuirGerarPagamento.FieldByName('CODIGO').AsInteger;
   db_DistribuirGerarPagamento.close;

   db_DistribuirBaixar.ParamByName('ACAO').AsString := 'N';
   db_DistribuirBaixar.ParamByName('RESPONSAVEL').AsString := qUsuario;
   db_DistribuirBaixar.ParamByName('OBSERVACAO').AsString  := '';
   db_DistribuirBaixar.ExecSQL;

   FrmFrameBotoes1.SpbSalvar.Enabled := True;
   FrmFrameBotoes1.SpbCancelar.Enabled := True;

   db_DistribuirGerarPagamento.Open;
   db_DistribuirGerarPagamento.Locate('CODIGO', nPedido, []);

   LogUsuario('terceirizado | Encerrar Remessa','Reabriu Remessa encerrada' + #13 + #10 +
              AcaoUserName[0]
              );
    }

   SPOP_DISTRIBUIR_PAGAR.ParamByName('NREMESSA').AsInteger      := db_DistribuirGerarPagamento.FieldByName('CODIGO').AsInteger;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('NFORNECEDOR').AsInteger   := db_DistribuirGerarPagamento.FieldByName('CODIGO').AsInteger;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('DVENCIMENTO').AsDate      := StrToDate(EditVencimento.text);
   SPOP_DISTRIBUIR_PAGAR.ParamByName('STIPOPAGMENTO').AsString  := ComboFormaPagamento.Text;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('NVALOR').AsFloat          := db_DistribuirGerarPagamento.FieldByName('VLR_TOTALPAGAR').AsFloat;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('ACAO').AsString           :='EXCLUIR';
   SPOP_DISTRIBUIR_PAGAR.ExecProc;

   db_DistribuirGerarPagamento.Refresh;


   aviso('Remessa foi reaberta.');

end;


procedure TFrmDistribuirPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FrmPrincipal.MnuDistribuir_Pagamentos.Enabled := True;

   FUsuario.prcLogUsuario('Terceirizado | Gerar Pagamento','saiu do modulo Terceirizado | Gerar Pagamento' );
   //
   FreeAndNil(FrmDistribuirPagamento);

end;

procedure TFrmDistribuirPagamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_escape then
      close;

end;

procedure TFrmDistribuirPagamento.FormShow(Sender: TObject);
begin

   top := 10;
   left := 10;

   FrmFrameBotoes1.SpbSalvar.Enabled := True;
   FrmFrameBotoes1.SpbCancelar.Enabled := True;

end;

procedure TFrmDistribuirPagamento.FrmFrameBotoes1SpbProcurarClick
  (Sender: TObject);
begin
   {
   if LocalizaDistribuicao.Execute then
   begin
      db_DistribuirGerarPagamento.Locate('CODIGO', LocalizaDistribuicao.ResultFieldAsInteger('CODIGO'), []);
   end;
   }

end;

procedure TFrmDistribuirPagamento.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin

   // ------ APROVAÇÃO/CANCELAMENTO DE PEDIDO

   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmDistribuirPagamento.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   AcaoUserName[0] :='';

   {
   AcaoUserName[0] :=
   'CÓDIGO................: ' + db_DistribuirGerarPagamento.FieldByName('CODIGO').AsString  +    #13 + #10 +
   'TERCEIRIZADO..........: ' + db_DistribuirGerarPagamento.FieldByName('FORNECEDOR').AsString+'-'+db_DistribuirGerarPagamento.FieldByName('FORNECEDOR_NOME').AsString +    #13 + #10 +
   'QUANTIDADE REMESSA....: ' + FormatFloat('###,##0',    db_DistribuirGerarPagamento.FieldByName('QTDE_REMESSA').AsFloat)  + #13 + #10 +
   'QUANTIDADE RETORNADA..: ' + FormatFloat('###,##0',    db_DistribuirGerarPagamento.FieldByName('QTDE_RETORNO').AsFloat)  + #13 + #10 +
   'QUANTIDADE RESTANTE...: ' + FormatFloat('###,##0',    db_DistribuirGerarPagamento.FieldByName('QTDE_RESTANTE').AsFloat) + #13 + #10 +
   'VALOR.................: ' + FormatFloat('###,##0.00', db_DistribuirGerarPagamento.FieldByName('VLR_TOTAL').AsFloat );

   if (db_DistribuirGerarPagamento.FieldByName('ENCERRADO').AsString = 'S') or
     (db_DistribuirGerarPagamento.FieldByName('ENCERRADO').AsString = 'SIM') then
   Begin
      BeepCritica;
      Informar('Remessa de Serviço ja está encerrada');
      abort;
   End;

   if ChecarCreditoCliente(db_DistribuirGerarPagamento.FieldByName('FORNECEDOR').AsInteger) Then
   begin
      AvisoSistema('Aprovação não autorizada!'+sLineBreak+
                   'O Terceirizado referente a remessa que esta tentando encerrar '+
                   'está bloqueado no sistema.');
      db_DistribuirGerarPagamento.Cancel;

      exit;
   end;

   ///  nesse caso havendo restante (possivelmente uma pendência) e necessário justificar,
   if (db_DistribuirGerarPagamento.FieldByName('QTDE_RESTANTE').AsFloat>0)   or
      (db_DistribuirGerarPagamento.FieldByName('QTDE_RETORNO').AsFloat < db_DistribuirGerarPagamento.FieldByName('QTDE_REMESSA').AsFloat )  then
   begin

      sJustificativa :='';
      Aviso('A quantidade retornada é menor que a quantidade enviada. '+
             'Na proxima tela apresente uma justificativa para constar nos arquivos da empresa.');
      FrmDistribuirEncerramentoJustificar := TFrmDistribuirEncerramentoJustificar.Create(Self);
      FrmDistribuirEncerramentoJustificar.Showmodal;

      AcaoUserName[0] := AcaoUserName[0]  +  #13 + #10 +
        'JUSTIFICATIVA.........: ' + sJustificativa;


   end;


   FrmAutenticarAcao := TFrmAutenticarAcao.create(self);
   FrmAutenticarAcao.ShowModal;
   if UsuarioAutenticarAcao=false then
   Begin
      LogUsuario('terceirizado | Encerrar Remessa','Tentou Encerrar Remessa: ' + #13 + #10 +
                 AcaoUserName[0]
                 );

      Informar('Sua senha eletrônica não foi autênticada' + #13 +
        'O Pedido de Compra não pode ser aprovado');

      exit;
   End;
   }


   SPOP_DISTRIBUIR_PAGAR.ParamByName('NREMESSA').AsInteger      := db_DistribuirGerarPagamento.FieldByName('CODIGO').AsInteger;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('NFORNECEDOR').AsInteger   := db_DistribuirGerarPagamento.FieldByName('CODIGO').AsInteger;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('DVENCIMENTO').AsDate      := StrToDate(EditVencimento.text);
   SPOP_DISTRIBUIR_PAGAR.ParamByName('STIPOPAGMENTO').AsString  := ComboFormaPagamento.Text;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('NVALOR').AsFloat          := db_DistribuirGerarPagamento.FieldByName('VLR_TOTALPAGAR').AsFloat;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('ACAO').AsString           :='INCLUIR';
   SPOP_DISTRIBUIR_PAGAR.ExecProc;

   db_DistribuirGerarPagamento.Refresh;


   {
   LogUsuario('terceirizado | Encerrar Remessa','Encerrou Remessa' + #13 + #10 +
              AcaoUserName[0]
              );
   }

   sJustificativa :='';
   aviso('Encerramento concluido com sucesso.');

end;



end.

