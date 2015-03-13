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

unit FFaseProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FFrameBarra, StdCtrls, Buttons, Grids, 
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DBCtrls, DBCGrids,
  Menus, DBGrids, frxClass, frxDBSet, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Data.DB, ISFEdit;

type
  TFrmFaseProducao = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    Panel2: TPanel;
    btnDefeitos: TBitBtn;
    BitBtn2: TBitBtn;
    AdvGroupBox1: TGroupBox;
    BoxFornecedor: TGroupBox;
    EditDescricao: TEdit;
    dbProcurarReferencia: TIDBEditDialog;
    btnPerdas: TBitBtn;
    GroupBox5: TGroupBox;
    DbGridReferencias: TDBGrid;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    btnTransferir: TBitBtn;
    LocalizaOrdemProducao: TIDBEditDialog;
    DBCtrlGrid1: TDBCtrlGrid;
    gbxFaseAtual: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    GroupBox1: TGroupBox;
    dbGridQuantidades: TDBGrid;
    db_FasesGradeLista:  TFDQuery;
    ds_FasesGradeLista: TDataSource;
    db_OrdemProducaoFases: TFDQuery;
    ds_OrdemProducaoFases: TDataSource;
    db_FasesDestino: TFDQuery;
    ds_FasesDestino: TDataSource;
    db_ReferenciasFaseGrade: TFDQuery;
    ds_ReferenciasFaseGrade: TDataSource;
    db_ReferenciasFaseGradeREFERENCIA: TStringField;
    db_ReferenciasFaseGradeCOR_ID: TIntegerField;
    db_ReferenciasFaseGradeCOR: TStringField;
    db_ReferenciasFaseGradeTAMANHO_ID: TIntegerField;
    db_ReferenciasFaseGradeTAMANHO: TStringField;
    db_ReferenciasFaseGradeORDEM_GRADE: TStringField;
    db_ReferenciasFaseGradeTAMANHO_1: TStringField;
    db_ReferenciasFaseGradeQTDE_PRODUZIR: TIntegerField;
    db_ReferenciasFaseGradeQTDE_TRANSFERIDA: TIntegerField;
    db_ReferenciasFaseGradeQTDE_PENDENTE: TIntegerField;
    db_ReferenciasFaseGradeQTDE_DEFEITO: TIntegerField;
    db_ReferenciasFaseGradeQTDE_PERDA: TIntegerField;
    btnRetoronServicos: TButton;
    db_ReferenciasFaseGradeTERCEIRIZADO: TIntegerField;
    db_ReferenciasFaseGradeFASETRANSFERENCIA: TIntegerField;
    btnEstornarDefeitos: TBitBtn;
    btnEstornarPerdas: TBitBtn;
    btnEncerrar: TBitBtn;
    BtnRemessas: TBitBtn;
    SP_OrdemProducaoFinalizar: TFDStoredProc;
    db_OrdemProducaoFasesCODIGO: TIntegerField;
    db_OrdemProducaoFasesFASE: TIntegerField;
    db_OrdemProducaoFasesREFERENCIA: TStringField;
    db_OrdemProducaoFasesDESCRICAO: TStringField;
    BitBtn4: TBitBtn;
    Panel4: TPanel;
    EditQuantidade: TLabeledEdit;
    procedure db_FasesGradeListaAfterScroll(DataSet: TDataSet);
    procedure LocalizaOrdemProducaoChange(Sender: TObject);
    procedure dbProcurarReferenciaChange(Sender: TObject);
    procedure dbProcurarReferenciaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure db_OrdemProducaoFasesAfterOpen(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTransferirClick(Sender: TObject);
    procedure dbGridQuantidadesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnEncerrarClick(Sender: TObject);
    procedure btnDefeitosClick(Sender: TObject);
    procedure btnPerdasClick(Sender: TObject);
    procedure btnRetoronServicosClick(Sender: TObject);
    procedure btnEstornarDefeitosClick(Sender: TObject);
    procedure btnEstornarPerdasClick(Sender: TObject);
    procedure BtnRemessasClick(Sender: TObject);
    procedure db_FasesGradeListaAfterClose(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    procedure fncOrdemProducaoFases;
    procedure fncRecarregarDadosGrade;
    procedure prcMontarPesquisaBotaoReferencia;
    procedure prcOrdemProducaoFinalizar;
    procedure prcChecarQuantidadeDisponivel;
    procedure prcSomarQuantidade;

    { Private declarations }
  public
    { Public declarations }
    procedure prcReabrirTabela;
  end;

var
  FrmFaseProducao: TFrmFaseProducao;
  nFaseOrigem  : Integer;
  nFaseDestino : Integer;
  wcor,wtamanho : string;
  strlFaseAtual, strlFaseSeguinte, lsOrdem : String;
  lnChecarQuantidades : Integer;


implementation

uses FPrincipal, Biblioteca, Global, SQLServer, FFaseProducaoTransferirFase,
  FFaseProducaoSelecionar, FFaseProducaoDefeito, FFaseProducaoPerda,
  FFaseProducaoRetornoTerceirizados,
  FFaseProducaoDefeitoEstornar, FFaseProducaoPerdaEstornar, FDistribuirRemessa,
  FFaseProducaoLancaEstoque;

{$R *.dfm}



procedure TFrmFaseProducao.btnEstornarDefeitosClick(Sender: TObject);
begin
   wcor     :=db_ReferenciasFaseGrade.FieldByName('COR').AsString;
   wtamanho :=db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString;

   if (db_ReferenciasFaseGrade.FieldByName('QTDE_DEFEITO').AsInteger<=0) then
   begin
      aviso('Não há defeito para ser estornado.');
      exit;
   end;

   nOrdemProducao      := StrToIntDef( LocalizaOrdemProducao.Text,0);
   strReferencia       := UpperCase(Trim(dbProcurarReferencia.Text));
   nFaseOrigem         := StrToIntDef( db_FasesGradeLista.FieldByName('FASE').AsString,0);
   nFaseDestino        := StrToIntDef( db_FasesDestino.FieldByName('FASE').AsString,0);


   FrmFaseProducaoDefeitoEstornar :=TFrmFaseProducaoDefeitoEstornar.Create(Self);
   FrmFaseProducaoDefeitoEstornar.Showmodal;

   if nQuantidadeDigitada>0 then
   begin
      prcFaseDefeitoEstornar(nOrdemProducao,
                          nFaseOrigem,
                          nFaseOrigem,
                          db_ReferenciasFaseGrade.FieldByName('COR_ID').AsInteger,
                          db_ReferenciasFaseGrade.FieldByName('TAMANHO_ID').AsInteger,
                          strReferencia,
                          nQuantidadeDigitada
                         );
   end;

   prcReabrirTabela;

end;

procedure TFrmFaseProducao.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TFrmFaseProducao.btnEstornarPerdasClick(Sender: TObject);
begin
   wcor     :=db_ReferenciasFaseGrade.FieldByName('COR').AsString;
   wtamanho :=db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString;

   if (db_ReferenciasFaseGrade.FieldByName('QTDE_PERDA').AsInteger<=0) then
   begin
      aviso('Não há perda para ser estornada.');
      exit;
   end;

   nOrdemProducao      := StrToIntDef( LocalizaOrdemProducao.Text,0);
   strReferencia       := UpperCase(Trim(dbProcurarReferencia.Text));
   nFaseOrigem         := StrToIntDef( db_FasesGradeLista.FieldByName('FASE').AsString,0);
   nFaseDestino        := StrToIntDef( db_FasesDestino.FieldByName('FASE').AsString,0);


   FrmFaseProducaoPerdaEstornar :=TFrmFaseProducaoPerdaEstornar.Create(Self);
   FrmFaseProducaoPerdaEstornar.Showmodal;

   if nQuantidadeDigitada>0 then
   begin
      prcFasePerdaEstornar(nOrdemProducao,
                          nFaseOrigem,
                          nFaseOrigem,
                          db_ReferenciasFaseGrade.FieldByName('COR_ID').AsInteger,
                          db_ReferenciasFaseGrade.FieldByName('TAMANHO_ID').AsInteger,
                          strReferencia,
                          nQuantidadeDigitada
                         );
   end;

   prcReabrirTabela;

end;

procedure TFrmFaseProducao.btnEncerrarClick(Sender: TObject);
begin
   if StrToIntDef(EditQuantidade.text,0)=0 then
      exit;

   strReferencia   := UpperCase(Trim(dbProcurarReferencia.Text));
   if (strReferencia='') and (db_OrdemProducaoFases.Active) then
   begin
      aviso('Informe a Referência');
      db_FasesDestino.close;
      exit;
   end;

   if fncOrdemProducaoEncerrado(nOrdemProducao)=True then
   begin
      Informar('Ordem de Produção ja foi finalizada');
      exit;
   end;

   if pergunta('Esse procedimento irá lançar no estoque de produtos acabados.'+
               sLineBreak+
               sLineBreak+
               'Tem certeza que deseja finalizar a Lote de Produção?'
               )=false then
     exit;

   prcOrdemProducaoFinalizar;

   prcReabrirTabela;

end;

procedure TFrmFaseProducao.BtnRemessasClick(Sender: TObject);
begin
   FrmDistribuirRemessa:=TFrmDistribuirRemessa.Create(self);
   FrmDistribuirRemessa.Show;
end;

procedure TFrmFaseProducao.btnDefeitosClick(Sender: TObject);
begin

   wcor     :=db_ReferenciasFaseGrade.FieldByName('COR').AsString;
   wtamanho :=db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString;

   if (db_ReferenciasFaseGrade.FieldByName('QTDE_PRODUZIR').AsInteger<=0) then
   begin
      Informar('Não há quantidade disponivel para informar defeito');
      exit;
   end;

   nOrdemProducao      := StrToIntDef( LocalizaOrdemProducao.Text,0);
   strReferencia       := UpperCase(Trim(dbProcurarReferencia.Text));
   nFaseOrigem         := StrToIntDef( db_FasesGradeLista.FieldByName('FASE').AsString,0);
   nFaseDestino        := StrToIntDef( db_FasesDestino.FieldByName('FASE').AsString,0);


   FrmFaseProducaoDefeito :=TFrmFaseProducaoDefeito.Create(Self);
   FrmFaseProducaoDefeito.Showmodal;

   if nQuantidadeDigitada>0 then
   begin
      prcFaseDefeito(nOrdemProducao,
                          nFaseOrigem,
                          nFaseOrigem,
                          db_ReferenciasFaseGrade.FieldByName('COR_ID').AsInteger,
                          db_ReferenciasFaseGrade.FieldByName('TAMANHO_ID').AsInteger,
                          strReferencia,
                          nQuantidadeDigitada
                         );
   end;

   prcReabrirTabela;

end;

procedure TFrmFaseProducao.btnPerdasClick(Sender: TObject);
begin
   wcor     :=db_ReferenciasFaseGrade.FieldByName('COR').AsString;
   wtamanho :=db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString;


   if (db_ReferenciasFaseGrade.FieldByName('QTDE_PRODUZIR').AsInteger<=0) then
   begin
      Informar('Não há quantidade disponivel para informar perda');
      exit;
   end;

   nOrdemProducao      := StrToIntDef( LocalizaOrdemProducao.Text,0);
   strReferencia       := UpperCase(Trim(dbProcurarReferencia.Text));
   nFaseOrigem         := StrToIntDef( db_FasesGradeLista.FieldByName('FASE').AsString,0);
   nFaseDestino        := StrToIntDef( db_FasesDestino.FieldByName('FASE').AsString,0);


   FrmFaseProducaoPerda :=TFrmFaseProducaoPerda.Create(Self);
   FrmFaseProducaoPerda.Showmodal;

   if nQuantidadeDigitada>0 then
   begin
      prcFasePerda(nOrdemProducao,
                          nFaseOrigem,
                          nFaseOrigem,
                          db_ReferenciasFaseGrade.FieldByName('COR_ID').AsInteger,
                          db_ReferenciasFaseGrade.FieldByName('TAMANHO_ID').AsInteger,
                          strReferencia,
                          nQuantidadeDigitada
                         );
   end;

   prcReabrirTabela;

end;

procedure TFrmFaseProducao.btnTransferirClick(Sender: TObject);
begin
    wcor     :=db_ReferenciasFaseGrade.FieldByName('COR').AsString;
    wtamanho :=db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString;

   prcChecarQuantidadeDisponivel;
   if (lnChecarQuantidades<=0) then
   begin
      db_ReferenciasFaseGrade.First;
      db_ReferenciasFaseGrade.Locate('COR;TAMANHO', VarArrayOf([wcor, wtamanho]),[]);
      aviso('Não há quantidade para Andamento de Fase');
      exit;
   end;


   db_ReferenciasFaseGrade.First;
   db_ReferenciasFaseGrade.Locate('COR;TAMANHO', VarArrayOf([wcor, wtamanho]),[]);
   if (db_FasesGradeLista.active=false) or (db_FasesDestino.active=false) then
      exit;

   if (db_OrdemProducaoFases.active=false) or (db_OrdemProducaoFases.IsEmpty) then
      exit;

   strReferencia   := UpperCase(Trim(dbProcurarReferencia.Text));

   if (strReferencia='') and (db_OrdemProducaoFases.Active) then
   begin
      aviso('Informe a Referência');
      db_FasesDestino.close;
      exit;
   end;

   nOrdemProducao      := StrToIntDef( LocalizaOrdemProducao.Text,0);
   strReferencia       := UpperCase(Trim(dbProcurarReferencia.Text));
   nFaseOrigem         := StrToIntDef( db_FasesGradeLista.FieldByName('FASE').AsString,0);
   nFaseDestino        := StrToIntDef( db_FasesDestino.FieldByName('FASE').AsString,0);
   nTerceirizadoOrigem := db_ReferenciasFaseGrade.FieldByName('TERCEIRIZADO').AsInteger;
   inFaseTransferencia := db_ReferenciasFaseGrade.FieldByName('FASETRANSFERENCIA').AsInteger;

   if (strReferencia='') then
   begin
      Aviso('É necessário informar a Referêcia');
      exit;
   end;

   if (nOrdemProducao=0) then
   begin
      Aviso('É necessário informar Ordem de Produção');
      exit;
   end;

   // significa que esta em alguma empresa terceirizada, e que necessita
   // fazer o retorno, para gerar contas a pagar;
   if (nTerceirizadoOrigem>0) and (blAlterado=false) then
   begin

      aviso('Esse serviço foi enviado para Terceirizado.'+
            sLineBreak+
            'Faça o Retorno de Serviços. Somente assim conseguirá transferir de fase.'
           );

      exit;
   end;

   if  (strlFaseAtual=strlFaseSeguinte) Then
   begin
      // mesmo sendo a ultima fase, checar se a OP ja foi finalizada
      if fncOrdemProducaoEncerrado(nOrdemProducao)=True then
      begin
         Informar('Ordem de Produção ja foi finalizada');
         exit;
      end;

      //If pergunta('Ultima fase... deseja encerrar e enviar produção para o estoque de produtos acabados?')=false then
      //   exit;

      prcOrdemProducaoFinalizar;
      exit;

   end;

   if (nFaseOrigem=nFaseDestino) and (db_FasesGradeLista.Eof=false) then
   begin
      Erro('Você não pode tentar mudar para a mesma fase.');
      exit;
   end;

   FrmFaseProducaoTransferirFase := TFrmFaseProducaoTransferirFase.Create(self);
   FrmFaseProducaoTransferirFase.ShowModal;
   nRemessa   :=0;
   blAlterado :=False;

   prcReabrirTabela;
   db_ReferenciasFaseGrade.First;
   db_ReferenciasFaseGrade.Locate('COR;TAMANHO', VarArrayOf([wcor, wtamanho]),[]);



end;

procedure TFrmFaseProducao.btnRetoronServicosClick(Sender: TObject);
begin
    wcor     :=db_ReferenciasFaseGrade.FieldByName('COR').AsString;
    wtamanho :=db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString;

   prcChecarQuantidadeDisponivel;
   if (lnChecarQuantidades<=0) then
   begin
      db_ReferenciasFaseGrade.First;
      db_ReferenciasFaseGrade.Locate('COR;TAMANHO', VarArrayOf([wcor, wtamanho]),[]);
      aviso('Não há quantidade para Andamento de Fase');
      exit;
   end;

   db_ReferenciasFaseGrade.First;
   db_ReferenciasFaseGrade.Locate('COR;TAMANHO', VarArrayOf([wcor, wtamanho]),[]);

   if (db_FasesGradeLista.active=false) or (db_FasesDestino.active=false) then
      exit;

   if (db_OrdemProducaoFases.active=false) or (db_OrdemProducaoFases.IsEmpty) then
      exit;

   strReferencia   := UpperCase(Trim(dbProcurarReferencia.Text));

   if (strReferencia='') and (db_OrdemProducaoFases.Active) then
   begin
      aviso('Informe a Referência');
      db_FasesDestino.close;
      exit;
   end;

   nOrdemProducao      := StrToIntDef( LocalizaOrdemProducao.Text,0);
   strReferencia       := UpperCase(Trim(dbProcurarReferencia.Text));
   nFaseOrigem         := StrToIntDef( db_FasesGradeLista.FieldByName('FASE').AsString,0);
   nFaseDestino        := StrToIntDef( db_FasesDestino.FieldByName('FASE').AsString,0);
   nTerceirizadoOrigem := db_ReferenciasFaseGrade.FieldByName('TERCEIRIZADO').AsInteger;
   inFaseTransferencia := db_ReferenciasFaseGrade.FieldByName('FASETRANSFERENCIA').AsInteger;
   nValorDigitado      := fncFaseReferencia_valor(nOrdemProducao,nTerceirizadoOrigem);

   if (strReferencia='') then
   begin
      Aviso('É necessário informar a Referêcia');
      exit;
   end;

   if (nOrdemProducao=0) then
   begin
      Aviso('É necessário informar Ordem de Produção');
      exit;
   end;

   // significa que esta em alguma empresa terceirizada, e que necessita
   // fazer o retorno, para gerar contas a pagar;
   if nTerceirizadoOrigem<=0 then
   begin
      aviso('Não há Terceirizado informado na fase anterior.' );

      exit;
   end;

   FrmFaseProducaoRetornoTerceirizados := TFrmFaseProducaoRetornoTerceirizados.Create(self);
   FrmFaseProducaoRetornoTerceirizados.Showmodal;

   if blAlterado=false then
      exit;

   btnTransferirClick(Sender);


end;

procedure TFrmFaseProducao.dbGridQuantidadesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

   if (Column.Field.FieldName = 'QTDE_PERDA') then  // saldo_atual deve ser trocado para o nome do campo que vc deseja alterar no seu dbgrid.
   begin
      if db_ReferenciasFaseGrade.FieldByName('QTDE_PERDA').AsFloat > 0 then
      begin
         dbGridQuantidades.Canvas.Brush.Color:= clRed;    //"pinta" a celula inteira
         dbGridQuantidades.Canvas.Font.Color:= clAqua;      //"Pinta" a letra
         dbGridQuantidades.Canvas.FillRect(Rect);
         dbGridQuantidades.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
   end;

   if (Column.Field.FieldName = 'QTDE_DEFEITO') then  // saldo_atual deve ser trocado para o nome do campo que vc deseja alterar no seu dbgrid.
   begin
      if db_ReferenciasFaseGrade.FieldByName('QTDE_DEFEITO').AsFloat > 0 then
      begin
         dbGridQuantidades.Canvas.Brush.Color:= $000080FF;    //"pinta" a celula inteira
         dbGridQuantidades.Canvas.Font.Color:= clAqua;      //"Pinta" a letra
         dbGridQuantidades.Canvas.FillRect(Rect);
         dbGridQuantidades.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
   end;


end;

procedure TFrmFaseProducao.dbProcurarReferenciaChange(Sender: TObject);
begin
   fncOrdemProducaoFases;
   fncRecarregarDadosGrade;
   db_FasesDestino.Next;

   DBCtrlGrid1.SetFocus;

end;

procedure TFrmFaseProducao.dbProcurarReferenciaEnter(Sender: TObject);
begin
   prcMontarPesquisaBotaoReferencia;
end;

procedure TFrmFaseProducao.db_FasesGradeListaAfterClose(DataSet: TDataSet);
begin
   prcSomarQuantidade;
end;

procedure TFrmFaseProducao.db_FasesGradeListaAfterScroll(DataSet: TDataSet);
begin
   fncRecarregarDadosGrade;
   strlFaseAtual     := db_FasesGradeLista.FieldByName('ORDEM').AsString;
   if not db_FasesDestino.Active then
      db_FasesDestino.open;
   db_FasesDestino.Locate('FASE',db_FasesGradeLista.FieldByName('FASE').AsInteger,[]);
   db_FasesDestino.Next;

end;

procedure TFrmFaseProducao.db_OrdemProducaoFasesAfterOpen(DataSet: TDataSet);
begin
  DimensionarGrid(DbGridReferencias,self);
end;

procedure TFrmFaseProducao.fncOrdemProducaoFases;
begin
   nOrdemProducao  := StrToIntDef( LocalizaOrdemProducao.Text,0);
   strReferencia   := UpperCase(Trim(dbProcurarReferencia.Text));

   if nOrdemProducao=0 then
   begin
      aviso('Informe a Ordem de Produção');
      exit;
   end;


   db_FasesGradeLista.close;
   db_FasesGradeLista.ParamByName('CODIGO').AsInteger    := StrToIntDef(fncProduto_retCampo(strReferencia,'FASE'),0);
   db_FasesGradeLista.Open;

   db_FasesDestino.close;
   db_FasesDestino.ParamByName('CODIGO').AsInteger    := StrToIntDef(fncProduto_retCampo(strReferencia,'FASE'),0);
   db_FasesDestino.Open;


end;

procedure TFrmFaseProducao.fncRecarregarDadosGrade;
begin
   nOrdemProducao  := StrToIntDef( LocalizaOrdemProducao.Text,0);
   strReferencia   := UpperCase(Trim(dbProcurarReferencia.Text));

   if (strReferencia='') and (db_OrdemProducaoFases.Active) then
   begin
      aviso('Informe a Referência');
      db_FasesDestino.close;
      exit;
   end;

   db_OrdemProducaoFases.close;
   db_OrdemProducaoFases.ParamByName('EMPRESA').AsInteger        := FSistema.Empresa;
   db_OrdemProducaoFases.ParamByName('CODIGO').AsInteger         := nOrdemProducao;
   db_OrdemProducaoFases.ParamByName('FASE').AsInteger           := db_FasesGradeLista.FieldByName('FASE').AsInteger;
   db_OrdemProducaoFases.ParamByName('REFERENCIA').AsString      := strReferencia;
   db_OrdemProducaoFases.Open;

   db_ReferenciasFaseGrade.close;
   db_ReferenciasFaseGrade.ParamByName('EMPRESA').AsInteger        := FSistema.Empresa;
   db_ReferenciasFaseGrade.ParamByName('CODIGO').AsInteger         := nOrdemProducao;
   db_ReferenciasFaseGrade.ParamByName('FASE').AsInteger           := db_FasesGradeLista.FieldByName('FASE').AsInteger;
   db_ReferenciasFaseGrade.ParamByName('REFERENCIA').AsString      := strReferencia;
   db_ReferenciasFaseGrade.Open;

   prcSomarQuantidade;


   db_FasesDestino.Open;
   db_FasesDestino.Last;
   strlFaseSeguinte  := db_FasesDestino.FieldByName('ORDEM').AsString;
   db_FasesDestino.First;


end;



procedure TFrmFaseProducao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_FasesGradeLista.Close;
   db_OrdemProducaoFases.Close;
   db_FasesDestino.Close;

   FreeAndNil(FrmFaseProducao);

end;

procedure TFrmFaseProducao.FormCreate(Sender: TObject);
begin

   btnTransferir.Visible         :=(fncUsuario_retCampo(nUsuario,'PERMISSAO_PRODUCAOFASEMOVIMENTAR')='S');

   btnRetoronServicos.Enabled    :=(fncUsuario_retCampo(nUsuario,'PERMISSAO_PRODUCAOFASEMOVIMENTAR')='S');
   btnDefeitos.Enabled           :=(fncUsuario_retCampo(nUsuario,'PERMISSAO_PRODUCAOFASEMOVIMENTAR')='S');
   btnEstornarDefeitos.Enabled   :=(fncUsuario_retCampo(nUsuario,'PERMISSAO_PRODUCAOFASEMOVIMENTAR')='S');
   btnPerdas.Enabled             :=(fncUsuario_retCampo(nUsuario,'PERMISSAO_PRODUCAOFASEMOVIMENTAR')='S');
   btnEstornarPerdas.Enabled     :=(fncUsuario_retCampo(nUsuario,'PERMISSAO_PRODUCAOFASEMOVIMENTAR')='S');
   BtnRemessas.Enabled           :=(fncUsuario_retCampo(nUsuario,'PERMISSAO_PRODUCAOFASEMOVIMENTAR')='S');

end;

procedure TFrmFaseProducao.FormResize(Sender: TObject);
begin
  DimensionarGrid(DbGridReferencias,self);
end;

procedure TFrmFaseProducao.FormShow(Sender: TObject);
begin
   LocalizaOrdemProducao.SetFocus;
end;

procedure TFrmFaseProducao.LocalizaOrdemProducaoChange(Sender: TObject);
begin
   prcMontarPesquisaBotaoReferencia;
   dbProcurarReferencia.SetFocus;


end;


procedure TFrmFaseProducao.prcMontarPesquisaBotaoReferencia;
begin

   nOrdemProducao  := StrToIntDef( LocalizaOrdemProducao.Text,0);

   dbProcurarReferencia.SearchQuery.Clear;
   dbProcurarReferencia.SearchQuery.Add('SELECT');
   dbProcurarReferencia.SearchQuery.Add('DISTINCT REFERENCIA, DESCRICAO');
   dbProcurarReferencia.SearchQuery.Add('FROM PCP_ORDEMPRODUCAO_ITENS');
   dbProcurarReferencia.SearchQuery.Add('INNER JOIN PCP_ORDEMPRODUCAO ON PCP_ORDEMPRODUCAO.EMPRESA=PCP_ORDEMPRODUCAO_ITENS.EMPRESA');
   dbProcurarReferencia.SearchQuery.Add('AND');
   dbProcurarReferencia.SearchQuery.Add('PCP_ORDEMPRODUCAO.CODIGO=PCP_ORDEMPRODUCAO_ITENS.CODIGO');
   dbProcurarReferencia.SearchQuery.Add('AND');
   dbProcurarReferencia.SearchQuery.Add('PCP_ORDEMPRODUCAO.ENCERRADO IN (''N'',''NAO'')');
   dbProcurarReferencia.SearchQuery.Add('WHERE');
   dbProcurarReferencia.SearchQuery.Add('PCP_ORDEMPRODUCAO.EMPRESA='+QuotedStr(IntToStr(FSistema.Empresa)) );
   dbProcurarReferencia.SearchQuery.Add('AND');
   dbProcurarReferencia.SearchQuery.Add('PCP_ORDEMPRODUCAO.CODIGO='+QuotedStr(IntToStr(nOrdemProducao)) );
   dbProcurarReferencia.SearchQuery.Add('AND');
   dbProcurarReferencia.SearchQuery.Add('%WHERE%');
   dbProcurarReferencia.SearchQuery.Add('ORDER BY REFERENCIA');
   dbProcurarReferencia.SearchQuery.Add('');


end;

procedure TFrmFaseProducao.prcOrdemProducaoFinalizar;
begin

   if (fncUsuario_retCampo(nUsuario,'PERMISSAO_PRODUCAOATUALIZARESTOQUE')='N') Then
   begin
      AvisoSistemaErro('Você não possui permissão para movimentar produtos para o Estoque');
      Abort;
   end;


   wcor                :=db_ReferenciasFaseGrade.FieldByName('COR').AsString;
   wtamanho            :=db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString;
   nOrdemProducao      := StrToIntDef( LocalizaOrdemProducao.Text,0);
   strReferencia       := UpperCase(Trim(dbProcurarReferencia.Text));
   nFaseOrigem         := StrToIntDef( db_FasesGradeLista.FieldByName('FASE').AsString,0);
   nFaseDestino        := StrToIntDef( db_FasesDestino.FieldByName('FASE').AsString,0);
   nTerceirizadoOrigem := db_ReferenciasFaseGrade.FieldByName('TERCEIRIZADO').AsInteger;
   inFaseTransferencia := db_ReferenciasFaseGrade.FieldByName('FASETRANSFERENCIA').AsInteger;

   if (FParametros.Producao.ProducaoFinalizar='') or
      (FParametros.Producao.ProducaoFinalizar='AUTOMATICO')  then
   begin
      SP_OrdemProducaoFinalizar.ParamByName('NEMPRESA').AsInteger           := FSistema.Empresa;
      SP_OrdemProducaoFinalizar.ParamByName('NORDEMPRODUCAO').AsInteger     := nOrdemProducao;
      SP_OrdemProducaoFinalizar.ParamByName('SREFERENCIA').AsString         := strReferencia;
      SP_OrdemProducaoFinalizar.ParamByName('SFASE').AsInteger              := nFaseDestino;
      SP_OrdemProducaoFinalizar.ParamByName('SVIA').AsString                := 'AUTOMATICO';
      SP_OrdemProducaoFinalizar.ExecProc;
      SP_OrdemProducaoFinalizar.close;
   end;

   if (FParametros.Producao.ProducaoFinalizar='CODIGOBARRAS') then
   begin
      FrmFaseProducaoLancaEstoque := TFrmFaseProducaoLancaEstoque.Create(self);
      FrmFaseProducaoLancaEstoque.ShowModal;
   end;

   prcReabrirTabela;

end;

procedure TFrmFaseProducao.prcChecarQuantidadeDisponivel;
begin
   lnChecarQuantidades :=0;

   db_ReferenciasFaseGrade.First;
   while not db_ReferenciasFaseGrade.Eof do
   begin
      lnChecarQuantidades := lnChecarQuantidades + db_ReferenciasFaseGrade.FieldByName('QTDE_PRODUZIR').AsInteger;
      FrmFaseProducao.db_ReferenciasFaseGrade.next;
      Application.ProcessMessages;
   end;
   db_ReferenciasFaseGrade.Refresh;
end;

procedure TFrmFaseProducao.prcReabrirTabela;
begin
   lsOrdem := db_FasesGradeLista.FieldByName('ORDEM').AsString;

   db_OrdemProducaoFases.Close;
   db_FasesGradeLista.Close;
   db_ReferenciasFaseGrade.Close;
   db_FasesDestino.Close;

   db_OrdemProducaoFases.Open;
   db_FasesGradeLista.Open;
   db_ReferenciasFaseGrade.Open;
   db_FasesDestino.open;

   db_FasesGradeLista.Locate('ORDEM',lsOrdem,[]);
   db_FasesDestino.Locate('ORDEM',lsOrdem,[]);
   db_FasesDestino.Next;

   db_ReferenciasFaseGrade.First;
   db_ReferenciasFaseGrade.Locate('COR;TAMANHO', VarArrayOf([wcor, wtamanho]),[]);

end;


procedure TFrmFaseProducao.prcSomarQuantidade;
Var
 nqtde : integer;
begin
   nqtde         :=0;

   db_ReferenciasFaseGrade.close;
   db_ReferenciasFaseGrade.open;
   while not db_ReferenciasFaseGrade.eof do
   begin
      nqtde         := nqtde + db_ReferenciasFaseGrade.FieldByName('QTDE_PRODUZIR').AsInteger;
      db_ReferenciasFaseGrade.Next;
   end;
   db_ReferenciasFaseGrade.first;

   EditQuantidade.text := FormatFloat('###,##0', nqtde);

end;

end.
