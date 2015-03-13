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

unit FFaseProducaoTransferirFase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, StdCtrls, Buttons, ExtCtrls, Mask, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB,   DBCtrls,
  ComCtrls, frxClass, frxDBSet, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmFaseProducaoTransferirFase = class(TForm)
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    gbxFaseAtual0: TGroupBox;
    Label1: TLabel;
    EditDataRetorno: TDBEdit;
    dbEditPesquisarFasesGrade: TIDBEditDialog;
    gbxFaseSeguinte: TGroupBox;
    Label2: TLabel;
    EditDataProximoInicio: TDBEdit;
    dbEditPesquisarFasesDestino: TIDBEditDialog;
    EditNomeFaseProxima: TEdit;
    EditDataProximoRetorno: TDBEdit;
    Label3: TLabel;
    gbxFaseSeguinte2: TGroupBox;
    LabeledEdit2: TDBEdit;
    btnGrade: TSpeedButton;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    EditTerceirizado: TIDBEditDialog;
    EditNomeTerceirizado: TEdit;
    EditValor: TDBEdit;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    EditNomeFaseAtual: TEdit;
    Edit1: TEdit;
    IDBEditDialog1: TIDBEditDialog;
    db_Andamento:  TFDQuery;
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
    ds_Andamento: TDataSource;
    ds_AndamentoReferencias: TDataSource;
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
    db_AndamentoSomar: TFDQuery;
    ProgressBar1: TProgressBar;
    db_AndamentoReferenciasFASECONCLUIDA: TStringField;
    SP_TerceirizadoCalcular: TFDStoredProc;
    frx_DistribuirTerceirizados: TfrxDBDataset;
    db_DistribuirTerceirizados: TFDQuery;
    db_DistribuirTerceirizadosEMPRESA: TIntegerField;
    db_DistribuirTerceirizadosCODIGO: TIntegerField;
    db_DistribuirTerceirizadosORDEMPRODUCAO: TIntegerField;
    db_DistribuirTerceirizadosDATA: TSQLTimeStampField;
    db_DistribuirTerceirizadosDATARETORNO: TSQLTimeStampField;
    db_DistribuirTerceirizadosTERCEIRIZADO: TIntegerField;
    db_DistribuirTerceirizadosTERCEIRIZADO_NOME: TStringField;
    db_DistribuirTerceirizadosFASE: TIntegerField;
    db_DistribuirTerceirizadosFASE_NOME: TStringField;
    db_DistribuirTerceirizadosCNPJ: TStringField;
    db_DistribuirTerceirizadosIE: TStringField;
    db_DistribuirTerceirizadosENDERECO: TStringField;
    db_DistribuirTerceirizadosBAIRRO: TStringField;
    db_DistribuirTerceirizadosCEP: TStringField;
    db_DistribuirTerceirizadosNOMECIDADE: TStringField;
    db_DistribuirTerceirizadosUF: TStringField;
    db_DistribuirTerceirizadosDDD: TIntegerField;
    db_DistribuirTerceirizadosFONE: TStringField;
    db_DistribuirTerceirizadosFAX: TStringField;
    db_DistribuirTerceirizadosCONTATO: TStringField;
    db_DistribuirTerceirizadosEMAIL: TStringField;
    db_DistribuirTerceirizadosQTDE_ENVIADA: TIntegerField;
    db_DistribuirTerceirizadosQTDE_RETORNADA: TIntegerField;
    db_DistribuirTerceirizadosQTDE_RESTANTE: TIntegerField;
    db_DistribuirTerceirizadosQTDE_PERDAS: TIntegerField;
    db_DistribuirTerceirizadosQTDE_DEFEITOS: TIntegerField;
    db_DistribuirTerceirizadosVLR_UNITARIO: TBCDField;
    db_DistribuirTerceirizadosVLR_TOTAL: TBCDField;
    db_DistribuirTerceirizadosOBSERVACAO: TStringField;
    db_DistribuirTerceirizadosENCERRADO: TStringField;
    db_DistribuirTerceirizadosGEROUPAGAMENTO: TStringField;
    db_DistribuirGrade: TFDQuery;
    ds_DistribuirTerceirizados: TDataSource;
    frx_DistribuirReferencias: TfrxDBDataset;
    FrxDistribuir: TfrxReport;
    BitBtn4: TBitBtn;
    db_OPLocalizacao: TFDQuery;
    db_DistribuirTerceirizadosNUMERO: TStringField;
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
    procedure BitBtn4Click(Sender: TObject);
    procedure db_DistribuirTerceirizadosBeforeOpen(DataSet: TDataSet);
  private
    procedure prcAndamentoSomar;
    procedure prcReabrirTabelas;
    procedure prcRecalcular;
    { Private declarations }
  public
    procedure prcSalvar;
    { Public declarations }
  end;

var
  FrmFaseProducaoTransferirFase: TFrmFaseProducaoTransferirFase;

  lbPermiteDeletar  : Boolean;


implementation

uses FPrincipal, Biblioteca, Global, SQLServer, FFaseProducao,
  FFaseProducaoTransferirFaseGrade;

{$R *.dfm}


procedure TFrmFaseProducaoTransferirFase.BitBtn4Click(Sender: TObject);
begin
   prcSalvar;
   prcRecalcular;
   nRemessa :=db_Andamento.FieldByName('CODIGO').AsInteger;

   db_DistribuirTerceirizados.Close;
   db_DistribuirGrade.close;
   db_DistribuirTerceirizados.ParamByName('EMPRESA').AsInteger      := FSistema.Empresa;
   db_DistribuirTerceirizados.ParamByName('CODIGO').AsInteger       := nRemessa;

   db_DistribuirTerceirizados.Open;
   db_DistribuirGrade.Open;

   // EmailConfigurar('');

   FrxDistribuir.ShowReport;
   db_DistribuirTerceirizados.Close;
   db_DistribuirGrade.close;

end;

procedure TFrmFaseProducaoTransferirFase.BtnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmFaseProducaoTransferirFase.btnGradeClick(Sender: TObject);
begin
   prcSalvar;
   lbPermiteDeletar :=False;
   prcReabrirTabelas;
   FrmFaseProducaoTransferirFaseGrade := TFrmFaseProducaoTransferirFaseGrade.Create(self);
   FrmFaseProducaoTransferirFaseGrade.ShowModal;
   lbPermiteDeletar :=True;
   prcSalvar;
   prcAndamentoSomar;
end;

procedure TFrmFaseProducaoTransferirFase.BtnOkClick(Sender: TObject);
begin
   prcSalvar;
   nRemessa :=db_Andamento.FieldByName('CODIGO').AsInteger;

   if pergunta('Deseja realmente concluir a Transferencia de fase?')=false then
      exit;

   // ---------------------------------------------------------------
   //  Baixar grade de uma fase para outra - percorrendo registros
   // ---------------------------------------------------------------

   db_AndamentoReferencias.Close;
   db_AndamentoReferencias.Open;
   ProgressBar1.Max      := db_AndamentoReferencias.RecordCount;
   ProgressBar1.Position :=0;
   nQuantidadeDigitada:=0;

   db_OPLocalizacao.close;
   db_OPLocalizacao.open;
   // registrar Andamento - Normal
   db_AndamentoReferencias.First;
   while not db_AndamentoReferencias.Eof do
   begin

      db_OPLocalizacao.Append;
      db_OPLocalizacao.FieldByName('EMPRESA').AsInteger                 := FSistema.Empresa;
      db_OPLocalizacao.FieldByName('ORDEMPRODUCAO').AsInteger           := nOrdemProducao;
      db_OPLocalizacao.FieldByName('LOTE').AsInteger                    := StrToIntDef( prcOrdemProducao_retCampo(nOrdemProducao,'LOTE'),0  ) ;
      db_OPLocalizacao.FieldByName('LOTE_NOME').AsString                := '';
      db_OPLocalizacao.FieldByName('DATAOP').AsDateTime                 := StrToDateDef( prcOrdemProducao_retCampo(nOrdemProducao,'DATA'),date  ) ;
      db_OPLocalizacao.FieldByName('DATAPREVISAO').AsDateTime           := StrToDateDef( prcOrdemProducao_retCampo(nOrdemProducao,'DATAPREVISAO'),date  ) ;
      db_OPLocalizacao.FieldByName('DATAOPFECHAMENTO').AsDateTime       := StrToDateDef( prcOrdemProducao_retCampo(nOrdemProducao,'DATAFECHAMENTO'),date  ) ;
      db_OPLocalizacao.FieldByName('DATAINICIOFASE').AsDateTime         := db_Andamento.FieldByName('DATA').AsDateTime;
      db_OPLocalizacao.FieldByName('DATARETORNOFASE').AsDateTime        := db_Andamento.FieldByName('DATARETORNO').AsDateTime;
      db_OPLocalizacao.FieldByName('TERCEIRIZADO').AsInteger            := db_Andamento.FieldByName('TERCEIRIZADO').AsInteger;
      db_OPLocalizacao.FieldByName('TERCEIRIZADO_NOME').AsString        := '';
      db_OPLocalizacao.FieldByName('FASE').AsInteger                    := db_Andamento.FieldByName('FASE').AsInteger;
      db_OPLocalizacao.FieldByName('FASE_NOME').AsString                := '';
      db_OPLocalizacao.FieldByName('REFERENCIA').AsString               := strReferencia;
      db_OPLocalizacao.FieldByName('DESCRICAO').AsString                := '';
      db_OPLocalizacao.FieldByName('QTDE_PRODUZIR').AsInteger           := db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger;
      db_OPLocalizacao.FieldByName('QTDE_TRANSFERIDA').AsInteger        := 0;
      db_OPLocalizacao.FieldByName('QTDE_PENDENTE').AsInteger           := 0;
      db_OPLocalizacao.FieldByName('QTDE_DEFEITO').AsInteger            := 0;
      db_OPLocalizacao.FieldByName('QTDE_PERDA').AsInteger              := 0;
      db_OPLocalizacao.post;

      nFaseDestino :=db_Andamento.FieldByName('FASE').AsInteger;


      prcFaseAndamento(   db_Andamento.FieldByName('TERCEIRIZADO').AsInteger,
                          nOrdemProducao,
                          db_Andamento.FieldByName('CODIGO').AsInteger,
                          nFaseOrigem,
                          nFaseDestino,
                          db_AndamentoReferencias.FieldByName('COR_ID').AsInteger,
                          db_AndamentoReferencias.FieldByName('TAMANHO_ID').AsInteger,
                          strReferencia,
                          db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger,
                          false
                         );

             {
             prcFaseAndamentoBaixar(  inFaseTransferencia,
                          nFaseOrigem,
                          db_AndamentoReferencias.FieldByName('COR_ID').AsInteger,
                          db_AndamentoReferencias.FieldByName('TAMANHO_ID').AsInteger,
                          strReferencia,
                          db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger
                         );

             }

      db_AndamentoReferencias.Next;
      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;
   end;
   db_OPLocalizacao.close;

   ProgressBar1.Position :=0;

   prcRecalcular;

   lbPermiteDeletar :=False;
   AvisoSistema('Transferencia concluida com sucesso');

   close;

end;

procedure TFrmFaseProducaoTransferirFase.prcRecalcular;
begin
   SP_TerceirizadoCalcular.ParamByName('NEMPRESA').AsInteger      := FSistema.Empresa;
   SP_TerceirizadoCalcular.ParamByName('NREMESSA').AsInteger      := nRemessa;
   SP_TerceirizadoCalcular.ParamByName('NQUANTIDADE').AsInteger   := db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger;
   SP_TerceirizadoCalcular.ExecProc;
   SP_TerceirizadoCalcular.close;
end;


procedure TFrmFaseProducaoTransferirFase.db_AndamentoAfterPost(
  DataSet: TDataSet);
begin
   nRemessa :=db_Andamento.FieldByName('CODIGO').AsInteger;
   db_Andamento.ParamByName('CODIGO').AsInteger :=nRemessa;
end;

procedure TFrmFaseProducaoTransferirFase.db_AndamentoBeforeOpen(
  DataSet: TDataSet);
begin
   db_Andamento.ParamByName('EMPRESA').AsInteger :=FSistema.Empresa;
end;

procedure TFrmFaseProducaoTransferirFase.db_AndamentoBeforePost(
  DataSet: TDataSet);
begin
   db_Andamento.FieldByName('EMPRESA').AsInteger :=FSistema.Empresa;
end;

procedure TFrmFaseProducaoTransferirFase.db_AndamentoReferenciasBeforeDelete(
  DataSet: TDataSet);
begin
  if lbPermiteDeletar=False then
     abort;
end;

procedure TFrmFaseProducaoTransferirFase.db_AndamentoReferenciasBeforeInsert(
  DataSet: TDataSet);
begin
  if lbPermiteDeletar=False then
     abort;

end;

procedure TFrmFaseProducaoTransferirFase.db_AndamentoReferenciasBeforePost(
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

procedure TFrmFaseProducaoTransferirFase.db_AndamentoReferenciasQTDE_ENVIADAChange(
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

procedure TFrmFaseProducaoTransferirFase.db_DistribuirTerceirizadosBeforeOpen(
  DataSet: TDataSet);
begin
   db_DistribuirTerceirizados.ParamByName('EMPRESA').AsInteger      := FSistema.Empresa;
end;

procedure TFrmFaseProducaoTransferirFase.FormClose(Sender: TObject;
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

procedure TFrmFaseProducaoTransferirFase.FormShow(Sender: TObject);
begin

   lbPermiteDeletar :=True;

   {
   if nRemessa>0 then
   begin
      db_Andamento.close;
      db_Andamento.ParamByName('EMPRESA').AsInteger  :=FSistema.Empresa;
      db_Andamento.ParamByName('CODIGO').AsInteger   :=nRemessa;
   end;
   }

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
      db_Andamento.Post;
   end;
   db_Andamento.Close;
   db_Andamento.Open;


   db_AndamentoReferencias.close;
   db_AndamentoReferencias.ParamByName('EMPRESA').AsInteger  :=db_AndamentoReferencias.FieldByName('EMPRESA').AsInteger;
   db_AndamentoReferencias.ParamByName('CODIGO').AsInteger   :=db_AndamentoReferencias.FieldByName('CODIGO').AsInteger;
   db_AndamentoReferencias.Open;


   if db_AndamentoReferencias.IsEmpty then
   begin
      FrmFaseProducao.db_ReferenciasFaseGrade.First;


      FrmFaseProducao.db_ReferenciasFaseGrade.close;
      FrmFaseProducao.db_ReferenciasFaseGrade.open;
      FrmFaseProducao.db_ReferenciasFaseGrade.Refresh;

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

   prcReabrirTabelas;
   prcAndamentoSomar;
   prcReabrirTabelas;


end;

procedure TFrmFaseProducaoTransferirFase.prcSalvar;
begin

   if (db_Andamento.State in [dsedit,dsinsert]) then
      db_Andamento.Post;

   if (db_AndamentoReferencias.State in [dsedit,dsinsert]) then
      db_AndamentoReferencias.Post;

end;

procedure TFrmFaseProducaoTransferirFase.prcAndamentoSomar;
begin

   db_AndamentoSomar.Close;
   db_AndamentoSomar.Open;

   db_Andamento.Edit;
   db_Andamento.FieldByName('QTDE_ENVIADA').AsInteger :=db_AndamentoSomar.FieldByName('QTDE_ENVIADA').AsInteger;
   db_Andamento.Post;
   db_AndamentoSomar.Close;


end;

procedure TFrmFaseProducaoTransferirFase.prcReabrirTabelas;
begin

   db_AndamentoReferencias.Close;
   db_Andamento.Close;
   db_AndamentoReferencias.ParamByName('EMPRESA').Clear;
   db_AndamentoReferencias.ParamByName('CODIGO').Clear;
   db_Andamento.Open;
   db_AndamentoReferencias.Open;
end;

end.
