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

unit FFaseProducaoRetornoTerceirizados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, StdCtrls, Buttons, ExtCtrls, Mask, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB,   DBCtrls,
  ComCtrls, Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmFaseProducaoRetornoTerceirizados = class(TForm)
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    gbxFaseAtual0: TGroupBox;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    ProgressBar1: TProgressBar;
    SP_GerarPagamento:  TFDStoredProc;
    Label1: TLabel;
    Label5: TLabel;
    btnGrade: TSpeedButton;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    editTerceirizado: TIDBEditDialog;
    EditQtde: TDBEdit;
    IDBEditDialog2: TIDBEditDialog;
    Edit2: TEdit;
    GroupBox3: TGroupBox;
    EditPagamento: TIDBEditDialog;
    EditNomeFormaPagto: TEdit;
    EditTotalPagar: TEdit;
    editVencimento: TDateTimePicker;
    editCustoUnitario: TEdit;
    db_Andamento: TFDQuery;
    db_AndamentoEMPRESA: TIntegerField;
    db_AndamentoCODIGO: TIntegerField;
    db_AndamentoORDEMPRODUCAO: TIntegerField;
    db_AndamentoDATA: TSQLTimeStampField;
    db_AndamentoDATARETORNO: TSQLTimeStampField;
    db_AndamentoTERCEIRIZADO: TIntegerField;
    db_AndamentoFASE: TIntegerField;
    db_AndamentoTERCEIRIZADOORIGEM: TIntegerField;
    db_AndamentoDATARETORNOORIGEM: TSQLTimeStampField;
    db_AndamentoFASEORIGEM: TIntegerField;
    db_AndamentoQTDE_ENVIADA: TIntegerField;
    db_AndamentoQTDE_RETORNADA: TIntegerField;
    db_AndamentoQTDE_PERDAS: TIntegerField;
    db_AndamentoQTDE_DEFEITOS: TIntegerField;
    db_AndamentoVLR_UNITARIO: TBCDField;
    db_AndamentoOBSERVACAO: TStringField;
    db_AndamentoGEROUPAGAMENTO: TStringField;
    db_AndamentoENCERRADO: TStringField;
    db_AndamentoReferencias: TFDQuery;
    db_AndamentoReferenciasEMPRESA: TIntegerField;
    db_AndamentoReferenciasCODIGO: TIntegerField;
    db_AndamentoReferenciasORDEMPRODUCAO: TIntegerField;
    db_AndamentoReferenciasDATA: TSQLTimeStampField;
    db_AndamentoReferenciasDATARETORNO: TSQLTimeStampField;
    db_AndamentoReferenciasTERCEIRIZADO: TIntegerField;
    db_AndamentoReferenciasFASE: TIntegerField;
    db_AndamentoReferenciasREFERENCIA: TStringField;
    db_AndamentoReferenciasCOR_ID: TIntegerField;
    db_AndamentoReferenciasCOR: TStringField;
    db_AndamentoReferenciasTAMANHO_ID: TIntegerField;
    db_AndamentoReferenciasTAMANHO: TStringField;
    db_AndamentoReferenciasORDEM_GRADE: TStringField;
    db_AndamentoReferenciasQTDE_ENVIADA: TIntegerField;
    db_AndamentoReferenciasQTDE_RETORNADA: TIntegerField;
    db_AndamentoReferenciasQTDE_PERDAS: TIntegerField;
    db_AndamentoReferenciasQTDE_DEFEITOS: TIntegerField;
    db_AndamentoReferenciasVLR_UNIT: TBCDField;
    db_AndamentoReferenciasFASECONCLUIDA: TStringField;
    db_AndamentoSomar: TFDQuery;
    ds_AndamentoReferencias: TDataSource;
    ds_Andamento: TDataSource;
    Label2: TLabel;
    SP_TerceirizadoCalcular: TFDStoredProc;
    procedure btnGradeClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure db_AndamentoAfterPost(DataSet: TDataSet);
    procedure BtnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure db_AndamentoBeforeOpen(DataSet: TDataSet);
    procedure db_AndamentoBeforePost(DataSet: TDataSet);
    procedure db_AndamentoReferenciasBeforePost(DataSet: TDataSet);
    procedure db_AndamentoReferenciasBeforeDelete(DataSet: TDataSet);
    procedure db_AndamentoReferenciasBeforeInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_AndamentoReferenciasQTDE_ENVIADAChange(Sender: TField);
    procedure db_AndamentoQTDE_ENVIADAChange(Sender: TField);
    procedure editCustoUnitarioChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure prcAndamentoSomar;
    procedure prcReabrirTabelas;
    procedure prcCalcularValorPagar;
    { Private declarations }
  public
    procedure prcSalvar;
    { Public declarations }
  end;

var
  FrmFaseProducaoRetornoTerceirizados: TFrmFaseProducaoRetornoTerceirizados;

  lbPermiteDeletar  : Boolean;


implementation

uses FPrincipal, Biblioteca, Global, SQLServer, FFaseProducao,
  FFaseProducaoRetornoTerceirizadosGrade;

{$R *.dfm}


procedure TFrmFaseProducaoRetornoTerceirizados.BtnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmFaseProducaoRetornoTerceirizados.btnGradeClick(Sender: TObject);
begin
   prcSalvar;
   lbPermiteDeletar :=False;
   prcReabrirTabelas;
   FrmFaseProducaoRetornoTerceirizadosGrade := TFrmFaseProducaoRetornoTerceirizadosGrade.Create(self);
   FrmFaseProducaoRetornoTerceirizadosGrade.ShowModal;
   lbPermiteDeletar :=True;
   prcSalvar;
   prcAndamentoSomar;
end;

procedure TFrmFaseProducaoRetornoTerceirizados.db_AndamentoAfterPost(
  DataSet: TDataSet);
begin
   nRemessa :=db_Andamento.FieldByName('CODIGO').AsInteger;
   db_Andamento.ParamByName('CODIGO').AsInteger :=nRemessa;
end;

procedure TFrmFaseProducaoRetornoTerceirizados.db_AndamentoBeforeOpen(
  DataSet: TDataSet);
begin
   db_Andamento.ParamByName('EMPRESA').AsInteger :=FSistema.Empresa;
end;

procedure TFrmFaseProducaoRetornoTerceirizados.db_AndamentoBeforePost(
  DataSet: TDataSet);
begin
   db_Andamento.FieldByName('EMPRESA').AsInteger :=FSistema.Empresa;
end;

procedure TFrmFaseProducaoRetornoTerceirizados.db_AndamentoQTDE_ENVIADAChange(
  Sender: TField);
begin
   prcCalcularValorPagar;
end;

procedure TFrmFaseProducaoRetornoTerceirizados.db_AndamentoReferenciasBeforeDelete(
  DataSet: TDataSet);
begin
  if lbPermiteDeletar=False then
     abort;
end;

procedure TFrmFaseProducaoRetornoTerceirizados.db_AndamentoReferenciasBeforeInsert(
  DataSet: TDataSet);
begin
  if lbPermiteDeletar=False then
     abort;

end;

procedure TFrmFaseProducaoRetornoTerceirizados.db_AndamentoReferenciasBeforePost(
  DataSet: TDataSet);
begin
   db_AndamentoReferencias.FieldByName('EMPRESA').AsInteger              := db_Andamento.FieldByName('EMPRESA').AsInteger;
   db_AndamentoReferencias.FieldByName('CODIGO').AsInteger               := db_Andamento.FieldByName('CODIGO').AsInteger;
   db_AndamentoReferencias.FieldByName('ORDEMPRODUCAO').AsInteger        := db_Andamento.FieldByName('ORDEMPRODUCAO').AsInteger;
   db_AndamentoReferencias.FieldByName('DATA').AsDateTime                := db_Andamento.FieldByName('DATA').AsDateTime;
   db_AndamentoReferencias.FieldByName('DATARETORNO').AsDateTime         := db_Andamento.FieldByName('DATARETORNO').AsDateTime;
   db_AndamentoReferencias.FieldByName('TERCEIRIZADO').AsInteger         := db_Andamento.FieldByName('TERCEIRIZADO').AsInteger;
   db_AndamentoReferencias.FieldByName('FASE').AsInteger                 := db_Andamento.FieldByName('FASE').AsInteger;
   db_AndamentoReferencias.FieldByName('FASECONCLUIDA').AsString         := 'N';

end;

procedure TFrmFaseProducaoRetornoTerceirizados.db_AndamentoReferenciasQTDE_ENVIADAChange(
  Sender: TField);
begin

   // se a quantidade digitada for maior que a disponivel, avisar o usuário

   if fncFaseValidarQuantidade(strReferencia,
                            nOrdemProducao,
                            nFaseOrigem,
                            db_AndamentoReferencias.FieldByName('COR_ID').AsInteger,
                            db_AndamentoReferencias.FieldByName('TAMANHO_ID').AsInteger,
                            db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger
                            )=True Then
   Begin

       Erro('A quantidade que você digitou é maior que a quantidade disponivel.');
       db_AndamentoReferencias.Cancel;
       Abort;
   End;


end;

procedure TFrmFaseProducaoRetornoTerceirizados.editCustoUnitarioChange(
  Sender: TObject);
begin
   prcCalcularValorPagar;
end;

procedure TFrmFaseProducaoRetornoTerceirizados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


  {Clicando no botão "Gravar..." a variavel lbPermiteDeletar é configurada
   para False (do qual nao permitirá deletar o registro ao sair do formulario)
   Mas se clicar em Cancelar ou no X do formulario, significa que o usuário
  desistou e deseja cancelar/deletar o que fez.}

  if lbPermiteDeletar then
  begin
     if not db_Andamento.IsEmpty then
         db_Andamento.Delete;
  end;

  db_Andamento.Close;
  db_AndamentoReferencias.Close;
  db_AndamentoSomar.Close;


  Action :=Cafree;

end;

procedure TFrmFaseProducaoRetornoTerceirizados.FormCreate(Sender: TObject);
begin
   blAlterado :=False;
end;

procedure TFrmFaseProducaoRetornoTerceirizados.FormShow(Sender: TObject);
begin

   lbPermiteDeletar :=True;
   editVencimento.Date := Date+30;

   if not db_Andamento.Active then
      db_Andamento.Open;

   if db_Andamento.IsEmpty then
   begin
      db_Andamento.Append;
      db_Andamento.FieldByName('TERCEIRIZADOORIGEM').AsInteger   :=  nTerceirizadoOrigem;
      db_Andamento.FieldByName('DATARETORNOORIGEM').AsDateTime   :=  Date;
      db_Andamento.FieldByName('FASEORIGEM').AsInteger           :=  nFaseOrigem;

      db_Andamento.FieldByName('EMPRESA').AsInteger              :=  FSistema.Empresa;
      db_Andamento.FieldByName('ORDEMPRODUCAO').AsInteger        :=  nOrdemProducao;
      db_Andamento.FieldByName('DATA').AsDateTime                :=  Date;
      db_Andamento.FieldByName('DATARETORNO').AsDateTime         :=  Date+5;
      db_Andamento.FieldByName('TERCEIRIZADO').AsInteger         :=  0;
      db_Andamento.FieldByName('FASE').AsInteger                 :=  nFaseDestino;
      db_Andamento.FieldByName('QTDE_ENVIADA').AsInteger         :=  0;
      db_Andamento.FieldByName('VLR_UNITARIO').AsFloat           :=  0;
      db_Andamento.FieldByName('ENCERRADO').AsString             := 'S';
      db_Andamento.Post;
   end;
   db_Andamento.Close;
   db_Andamento.Open;

   // adicionar itens
   if not db_AndamentoReferencias.Active then
      db_AndamentoReferencias.Open;

   if db_AndamentoReferencias.IsEmpty then
   begin
      FrmFaseProducao.db_ReferenciasFaseGrade.First;

      while not FrmFaseProducao.db_ReferenciasFaseGrade.Eof do
      begin
         db_AndamentoReferencias.Append;
         db_AndamentoReferencias.FieldByName('REFERENCIA').AsString       := strReferencia;
         db_AndamentoReferencias.FieldByName('COR_ID').AsInteger          := FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR_ID').AsInteger;
         db_AndamentoReferencias.FieldByName('COR').AsString              := FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR').AsString;
         db_AndamentoReferencias.FieldByName('TAMANHO_ID').AsInteger      := FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO_ID').AsInteger;
         db_AndamentoReferencias.FieldByName('TAMANHO').AsString          := FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString;
         db_AndamentoReferencias.FieldByName('ORDEM_GRADE').AsString      := FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('ORDEM_GRADE').AsString;
         db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger    := FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('QTDE_PRODUZIR').AsInteger;
         db_AndamentoReferencias.Post;

         FrmFaseProducao.db_ReferenciasFaseGrade.next;
         Application.ProcessMessages;
      end;

   end;

   nRemessa                :=db_Andamento.FieldByName('CODIGO').AsInteger;
   editCustoUnitario.Text := FloatToStr(nValorDigitado);

   prcReabrirTabelas;
   prcAndamentoSomar;
   prcReabrirTabelas;

end;

procedure TFrmFaseProducaoRetornoTerceirizados.BtnOkClick(Sender: TObject);
begin

   prcSalvar;
   nRemessa :=db_Andamento.FieldByName('CODIGO').AsInteger;

   if StrToFloatDef(EditTotalPagar.Text,0)<=0 then
   begin
     erro('Não há valor a pagar. ' +
          sLineBreak+
          sLineBreak+
          'Verifique os campos:'+
          sLineBreak+
          '-- Quantidade Retornada'+
          sLineBreak+
          '-- Custo Unitário'+
          sLineBreak+
          '-- Total a Pagar');
     exit;
   end;

   {
   if StrToIntDef(EditPagamento.Text,0)<=0 then
   begin
     erro('Informe a Forma de Pagamento');
     exit;
   end;
   }

   if pergunta('Deseja realmente concluir e gerar pagamento?')=false then
      exit;


   SP_GerarPagamento.ParamByName('NEMPRESA').AsInteger      := FSistema.Empresa;
   SP_GerarPagamento.ParamByName('NREMESSA').AsInteger      := inFaseTransferencia;
   SP_GerarPagamento.ParamByName('NFFASE').AsInteger        := nFaseOrigem;
   SP_GerarPagamento.ParamByName('NFORNECEDOR').AsInteger   := nTerceirizadoOrigem;
   SP_GerarPagamento.ParamByName('DDATA').AsDate            := db_Andamento.FieldByName('DATARETORNOORIGEM').AsDateTime;
   SP_GerarPagamento.ParamByName('DVENCIMENTO').AsDate      := editVencimento.Date;
   SP_GerarPagamento.ParamByName('NFORMA_PAGTO').AsInteger  := StrToIntDef(EditPagamento.Text,0);
   SP_GerarPagamento.ParamByName('STIPOPAGMENTO').AsString  := '';
   SP_GerarPagamento.ParamByName('NVALOR').AsFloat          := StrToFloatDef(EditTotalPagar.Text,0);
   SP_GerarPagamento.ParamByName('ACAO').AsString           :='INCLUIR';
   SP_GerarPagamento.ExecProc;
   SP_GerarPagamento.close;


   SP_TerceirizadoCalcular.ParamByName('NEMPRESA').AsInteger      := FSistema.Empresa;
   SP_TerceirizadoCalcular.ParamByName('NREMESSA').AsInteger      := nRemessa;
   SP_TerceirizadoCalcular.ParamByName('NQUANTIDADE').AsInteger   := db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger;
   SP_TerceirizadoCalcular.ExecProc;
   SP_TerceirizadoCalcular.close;




   lbPermiteDeletar :=False;
   blAlterado :=True;
   AvisoSistema('Contas a pagar gerada com sucesso');

   close;





   (*
   // ---------------------------------------------------------------
   //  Baixar grade de uma fase para outra - percorrendo registros
   // ---------------------------------------------------------------

   db_AndamentoReferencias.Close;
   db_AndamentoReferencias.Open;
   ProgressBar1.Max      := db_AndamentoReferencias.RecordCount;
   ProgressBar1.Position :=0;

   // registrar Andamento - Normal
   db_AndamentoReferencias.First;
   while not db_AndamentoReferencias.Eof do
   begin
      prcFaseAndamento(   db_Andamento.FieldByName('TERCEIRIZADO').AsInteger,
                          nOrdemProducao,
                          db_Andamento.FieldByName('CODIGO').AsInteger,
                          nFaseOrigem,
                          nFaseDestino,
                          db_AndamentoReferencias.FieldByName('COR_ID').AsInteger,
                          db_AndamentoReferencias.FieldByName('TAMANHO_ID').AsInteger,
                          strReferencia,
                          db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger
                         );


 prcFaseAndamentoBaixar(  inFaseTransferencia,
                          nFaseOrigem,
                          db_AndamentoReferencias.FieldByName('COR_ID').AsInteger,
                          db_AndamentoReferencias.FieldByName('TAMANHO_ID').AsInteger,
                          strReferencia,
                          db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger
                         );

      db_AndamentoReferencias.Next;
      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;
   end;
   ProgressBar1.Position :=0;



   // registrar Andamento - Defeitos
   FrmFaseProducao.db_ReferenciasFaseGrade.First;
   while not FrmFaseProducao.db_ReferenciasFaseGrade.Eof do
   begin
      prcFaseDefeitoAndamento(nOrdemProducao,
                          nFaseOrigem,
                          nFaseDestino,
                          FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR_ID').AsInteger,
                          FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO_ID').AsInteger,
                          strReferencia,
                          FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('QTDE_DEFEITO').AsInteger
                         );
      FrmFaseProducao.db_ReferenciasFaseGrade.Next;
      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;
   end;
   ProgressBar1.Position :=0;


   // registrar Andamento - Perdas
   FrmFaseProducao.db_ReferenciasFaseGrade.First;
   while not FrmFaseProducao.db_ReferenciasFaseGrade.Eof do
   begin
      prcFasePerdaAndamento(nOrdemProducao,
                          nFaseOrigem,
                          nFaseDestino,
                          FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR_ID').AsInteger,
                          FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO_ID').AsInteger,
                          strReferencia,
                          FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('QTDE_PERDA').AsInteger
                         );
      FrmFaseProducao.db_ReferenciasFaseGrade.Next;
      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;
   end;
   ProgressBar1.Position :=0;


   lbPermiteDeletar :=False;
   FrmFaseProducao.prcReabrirTabela;
   *)


end;


procedure TFrmFaseProducaoRetornoTerceirizados.prcSalvar;
begin

   if (db_Andamento.State in [dsedit,dsinsert]) then
      db_Andamento.Post;

   if (db_AndamentoReferencias.State in [dsedit,dsinsert]) then
      db_AndamentoReferencias.Post;

end;

procedure TFrmFaseProducaoRetornoTerceirizados.prcAndamentoSomar;
begin
   db_AndamentoSomar.Close;
   db_AndamentoSomar.Open;

   db_Andamento.Edit;
   db_Andamento.FieldByName('QTDE_ENVIADA').AsInteger :=db_AndamentoSomar.FieldByName('QTDE_ENVIADA').AsInteger;
   db_Andamento.Post;
   db_AndamentoSomar.Close;
end;

procedure TFrmFaseProducaoRetornoTerceirizados.prcCalcularValorPagar;
begin
   EditTotalPagar.Text := FloatToStr( (db_Andamento.FieldByName('QTDE_ENVIADA').AsInteger * StrToFloat(editCustoUnitario.Text) ) );
end;

procedure TFrmFaseProducaoRetornoTerceirizados.prcReabrirTabelas;
begin

   db_AndamentoReferencias.Close;
   db_Andamento.Close;
   db_AndamentoReferencias.ParamByName('EMPRESA').Clear;
   db_AndamentoReferencias.ParamByName('CODIGO').Clear;
   db_Andamento.Open;
   db_AndamentoReferencias.Open;
end;

end.
