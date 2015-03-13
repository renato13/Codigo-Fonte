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


unit FTerceirizadoLancaFinanceiro;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Buttons,
   Mask, DBCtrls, Grids, DBGrids, DB,    
   Menus,  ActnList,  FFrameBotoes, FFrameBotoes_II,
   ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBarra,
     frxClass, frxDBSet,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type

   TFrmTerceirizadoLancaFinanceiro = class(TForm)
      Panel1: TPanel;
      PainelDicas: TPanel;
      ProgressBar1: TProgressBar;
      GRPTop: TGroupBox;
      Label7: TLabel;
      Label5: TLabel;
      EditData: TDBEdit;
      EditCodigo: TDBEdit;
      GRPItens: TGroupBox;
      DBGrid_Produtos: TDBGrid;
      PainelBottom: TPanel;
      Shape3: TShape;
      Label3: TLabel;
      DBEdit1: TDBEdit;
      DBEdit3: TDBEdit;
      Shape1: TShape;
      Label2: TLabel;
      EditNomeCliente: TEdit;
      FrmFrameBarra1: TFrmFrameBarra;
    EditTerceirizado: TIDBEditDialog;
    frx_DistribuirReferencias: TfrxDBDataset;
    db_TerceirizadosReferencias:  TFDQuery;
    ds_TerceirizadosReferencias: TDataSource;
    frx_Terceirizados: TfrxDBDataset;
    db_Terceirizados: TFDQuery;
    ds_Terceirizados: TDataSource;
    frx_Servicos: TfrxReport;
    db_TerceirizadosEMPRESA: TIntegerField;
    db_TerceirizadosCODIGO: TIntegerField;
    db_TerceirizadosORDEMPRODUCAO: TIntegerField;
    db_TerceirizadosDATA: TSQLTimeStampField;
    db_TerceirizadosDATARETORNO: TSQLTimeStampField;
    db_TerceirizadosTERCEIRIZADO: TIntegerField;
    db_TerceirizadosFASE: TIntegerField;
    db_TerceirizadosQTDE_TOTAL: TIntegerField;
    db_TerceirizadosVLR_TOTAL: TBCDField;
    db_TerceirizadosOBSERVACAO: TStringField;
    db_TerceirizadosENCERRADO: TStringField;
    db_TerceirizadosGEROUPAGAMENTO: TStringField;
    dbView_Terceirizados: TFDQuery;
    FrmFrameBotoes1: TFrmFrameBotoes;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    LocalizaDistribuicao: TIDBEditDialog;
    db_TerceirizadosReferenciasEMPRESA: TIntegerField;
    db_TerceirizadosReferenciasCODIGO: TIntegerField;
    db_TerceirizadosReferenciasORDEMPRODUCAO: TIntegerField;
    db_TerceirizadosReferenciasREFERENCIA: TStringField;
    db_TerceirizadosReferenciasDESCRICAO: TStringField;
    db_TerceirizadosReferenciasCOR_ID: TIntegerField;
    db_TerceirizadosReferenciasCOR: TStringField;
    db_TerceirizadosReferenciasTAMANHO_ID: TIntegerField;
    db_TerceirizadosReferenciasTAMANHO: TStringField;
    db_TerceirizadosReferenciasORDEM_GRADE: TStringField;
    db_TerceirizadosReferenciasQUANTIDADE: TIntegerField;
    db_TerceirizadosReferenciasVLR_UNIT: TBCDField;
    db_TerceirizadosReferenciasVLR_TOTAL: TBCDField;
    db_Somar: TFDQuery;
    db_SomarQTDE_TOTAL: TIntegerField;
    db_SomarVLR_TOTAL: TBCDField;
    dbProcurarProduto: TIDBEditDialog;
    db_CtaPagar: TFDQuery;
    db_CtaPagarEMPRESA: TIntegerField;
    db_CtaPagarCODIGO: TIntegerField;
    db_CtaPagarFORNECEDOR: TIntegerField;
    db_CtaPagarNOTAFISCAL: TIntegerField;
    db_CtaPagarSERIENF: TStringField;
    db_CtaPagarDATA: TSQLTimeStampField;
    db_CtaPagarVENCIMENTO: TSQLTimeStampField;
    db_CtaPagarDATA_PAGTO: TSQLTimeStampField;
    db_CtaPagarDOCUMENTO: TStringField;
    db_CtaPagarPARCELA: TIntegerField;
    db_CtaPagarCFOP: TIntegerField;
    db_CtaPagarESPECIE: TStringField;
    db_CtaPagarTIPO: TStringField;
    db_CtaPagarVALOR: TBCDField;
    db_CtaPagarVALOR_PAGO: TBCDField;
    db_CtaPagarVALOR_SALDO: TBCDField;
    db_CtaPagarDEPARTAMENTO: TIntegerField;
    db_CtaPagarPLANO_CONTAS: TStringField;
    db_CtaPagarHISTORICO: TStringField;
    db_CtaPagarOBSERVACAO: TStringField;
    db_CtaPagarQUITADO: TStringField;
    DS_CtaPagar: TDataSource;
    db_CtaPagarPAGTOTERCEIRIZADO: TStringField;
    frx_dbCtaPagar: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure GRPTopExit(Sender: TObject);
    procedure db_TerceirizadosBeforePost(DataSet: TDataSet);
    procedure db_TerceirizadosNewRecord(DataSet: TDataSet);
    procedure db_TerceirizadosBeforeOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
    procedure DBGrid_ProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
    procedure db_TerceirizadosReferenciasBeforePost(DataSet: TDataSet);
    procedure db_TerceirizadosReferenciasQUANTIDADEChange(Sender: TField);
    procedure db_TerceirizadosReferenciasAfterOpen(DataSet: TDataSet);
    procedure db_TerceirizadosReferenciasAfterPost(DataSet: TDataSet);
    procedure DBGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_TerceirizadosReferenciasVLR_UNITChange(Sender: TField);
    procedure db_CtaPagarBeforeOpen(DataSet: TDataSet);
    procedure db_CtaPagarBeforePost(DataSet: TDataSet);
    procedure FrmFrameBotoes1SpbExtraClick(Sender: TObject);
    procedure FormResize(Sender: TObject);

   private
      { Private declarations }
      Novo: Boolean;

   public
      { Public declarations }
   end;

var
   FrmTerceirizadoLancaFinanceiro: TFrmTerceirizadoLancaFinanceiro;

   wOperacao: String;
   nValorInteiro,
   nValorParcial,
   nValorDesconto,
   nTotalNFReal,
   nValorRealPedido   : Real;
   bGerarParcelaExterna   : Boolean;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global,  FBaseDados,
     FOpcaoVenda, FVendaCodigoBarra, FGeraParcelasCupomNaoFiscal, FRelEntregas,
  FTerceirizadoLancaFinanceiroPagar;

{$R *.dfm}


procedure TFrmTerceirizadoLancaFinanceiro.DBGrid_ProdutosKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

 if KEY=VK_F8 then
 begin
   if dbProcurarProduto.Execute then
   begin
      If not(db_TerceirizadosReferencias.state in [dsEdit]) then
         db_TerceirizadosReferencias.Edit;

      db_TerceirizadosReferencias.FieldByName('REFERENCIA').AsString := dbProcurarProduto.ResultFieldAsString('REFERENCIA');
      db_TerceirizadosReferencias.FieldByName('DESCRICAO').AsString  := dbProcurarProduto.ResultFieldAsString('DESCRICAO');
      If (db_TerceirizadosReferencias.state in [dsEdit]) then
         db_TerceirizadosReferencias.Post;
   end;
 end;

end;

procedure TFrmTerceirizadoLancaFinanceiro.DBGrid_ProdutosKeyPress(
  Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmTerceirizadoLancaFinanceiro.db_CtaPagarBeforeOpen(
  DataSet: TDataSet);
begin
   db_CtaPagar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmTerceirizadoLancaFinanceiro.db_CtaPagarBeforePost(
  DataSet: TDataSet);
begin

   db_CtaPagar.FieldByName('VALOR_SALDO').AsFloat         :=db_CtaPagar.FieldByName('VALOR').AsFloat;

   db_CtaPagar.FieldByName('TIPO').AsString := 'PAGAR';

   db_CtaPagar.FieldByName('EMPRESA').AsInteger   := FSistema.Empresa ;

   db_CtaPagar.FieldByName('NOTAFISCAL').AsInteger :=
     db_Terceirizados.FieldByName('CODIGO').AsInteger;

   db_CtaPagar.FieldByName('FORNECEDOR').AsInteger :=
     db_Terceirizados.FieldByName('TERCEIRIZADO').AsInteger;

   db_CtaPagar.FieldByName('DATA').AsDateTime :=
     db_Terceirizados.FieldByName('DATARETORNO').AsDateTime;

   db_CtaPagar.FieldByName('HISTORICO').AsString := 'TERCEIRIZADO/PAGAMENTO | CODIGO: ' +
     db_Terceirizados.FieldByName('CODIGO').AsString + ' | LANÇADO POR: '+UpperCase (FUsuario.UsuarioNome);

end;

procedure TFrmTerceirizadoLancaFinanceiro.db_TerceirizadosBeforeOpen(
  DataSet: TDataSet);
begin
   db_Terceirizados.ParamByName('EMPRESA').AsInteger :=FSistema.Empresa;
end;

procedure TFrmTerceirizadoLancaFinanceiro.db_TerceirizadosBeforePost(
  DataSet: TDataSet);
begin
   if db_Terceirizados.FieldByName('TERCEIRIZADO').AsInteger<1  then
   begin
      AvisoSistema('Campo TERCEIRIZADO  é obrigatório');
      EditTerceirizado.SetFocus;
      abort;
   end;
end;

procedure TFrmTerceirizadoLancaFinanceiro.db_TerceirizadosNewRecord(
  DataSet: TDataSet);
begin
   db_Terceirizados.FieldByName('DATA').AsDateTime         :=Date;
   db_Terceirizados.FieldByName('DATARETORNO').AsDateTime  :=Date;
   db_Terceirizados.FieldByName('ORDEMPRODUCAO').AsInteger :=0;
end;

procedure TFrmTerceirizadoLancaFinanceiro.db_TerceirizadosReferenciasAfterOpen(
  DataSet: TDataSet);
begin
  DimensionarGrid(DBGrid_Produtos,self);
end;

procedure TFrmTerceirizadoLancaFinanceiro.db_TerceirizadosReferenciasAfterPost(
  DataSet: TDataSet);
begin
   db_Somar.close;
   db_Somar.open;
   db_Terceirizados.Edit;
   db_Terceirizados.FieldByName('QTDE_TOTAL').AsFloat :=db_Somar.FieldByName('QTDE_TOTAL').AsFloat;
   db_Terceirizados.FieldByName('VLR_TOTAL').AsFloat  :=db_Somar.FieldByName('VLR_TOTAL').AsFloat;
   db_Terceirizados.Post;
   db_Somar.close;

end;

procedure TFrmTerceirizadoLancaFinanceiro.db_TerceirizadosReferenciasBeforePost(
  DataSet: TDataSet);
begin
  db_TerceirizadosReferencias.FieldByName('EMPRESA').AsInteger            := db_Terceirizados.FieldByName('EMPRESA').AsInteger;
  db_TerceirizadosReferencias.FieldByName('CODIGO').AsInteger             := db_Terceirizados.FieldByName('CODIGO').AsInteger;
  db_TerceirizadosReferencias.FieldByName('ORDEMPRODUCAO').AsInteger      := db_Terceirizados.FieldByName('ORDEMPRODUCAO').AsInteger;
end;

procedure TFrmTerceirizadoLancaFinanceiro.db_TerceirizadosReferenciasQUANTIDADEChange(
  Sender: TField);
begin
   db_TerceirizadosReferencias.FieldByName('VLR_TOTAL').AsFloat :=
      (db_TerceirizadosReferencias.FieldByName('QUANTIDADE').AsFloat * db_TerceirizadosReferencias.FieldByName('VLR_UNIT').AsFloat)
end;

procedure TFrmTerceirizadoLancaFinanceiro.db_TerceirizadosReferenciasVLR_UNITChange(
  Sender: TField);
begin
   db_TerceirizadosReferencias.FieldByName('VLR_TOTAL').AsFloat :=
      (db_TerceirizadosReferencias.FieldByName('QUANTIDADE').AsFloat * db_TerceirizadosReferencias.FieldByName('VLR_UNIT').AsFloat)

end;

procedure TFrmTerceirizadoLancaFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_Terceirizados.close;
   db_TerceirizadosReferencias.close;


   FreeAndNil(FrmTerceirizadoLancaFinanceiro);
end;

procedure TFrmTerceirizadoLancaFinanceiro.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := ds_Terceirizados;
   db_Terceirizados.open;
   db_TerceirizadosReferencias.open;
end;

procedure TFrmTerceirizadoLancaFinanceiro.FormResize(Sender: TObject);
begin
  DimensionarGrid(DBGrid_Produtos,self);

end;

procedure TFrmTerceirizadoLancaFinanceiro.FrmFrameBotoes1SpbAdicionarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  EditTerceirizado.SetFocus;

end;

procedure TFrmTerceirizadoLancaFinanceiro.FrmFrameBotoes1SpbCancelarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);
  db_TerceirizadosReferencias.Cancel;

end;

procedure TFrmTerceirizadoLancaFinanceiro.FrmFrameBotoes1SpbEditarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmTerceirizadoLancaFinanceiro.FrmFrameBotoes1SpbExcluirClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmTerceirizadoLancaFinanceiro.FrmFrameBotoes1SpbExtraClick(
  Sender: TObject);
begin
   If db_Terceirizados.IsEmpty then
   Begin
      BeepCritica;
      Erro('Não há dados para gerar faturas.');
      Exit;
   End;

   db_CtaPagar.Close;
   db_CtaPagar.open;

   if (db_Terceirizados.FieldByName('VLR_TOTAL').AsFloat>0) Then
   begin
     if db_CtaPagar.IsEmpty then
     begin
        db_CtaPagar.Append;
        db_CtaPagar.FieldByName('EMPRESA').AsInteger           := FSistema.Empresa ;
        db_CtaPagar.FieldByName('DOCUMENTO').AsString          :='TERC-'+db_Terceirizados.FieldByName('CODIGO').AsString;
        db_CtaPagar.FieldByName('DATA').AsDateTime             :=db_Terceirizados.FieldByName('DATARETORNO').AsDateTime;
        db_CtaPagar.FieldByName('VENCIMENTO').AsDateTime       :=db_Terceirizados.FieldByName('DATARETORNO').AsDateTime+30;
        db_CtaPagar.FieldByName('VALOR').AsFloat               :=db_Terceirizados.FieldByName('VLR_TOTAL').AsFloat;
        db_CtaPagar.FieldByName('PAGTOTERCEIRIZADO').AsString  :='S';
        db_CtaPagar.post;
     end;
   end;

   FrmTerceirizadoLancaFinanceiroPagar :=TFrmTerceirizadoLancaFinanceiroPagar.Create(self);
   FrmTerceirizadoLancaFinanceiroPagar.Showmodal;
end;

procedure TFrmTerceirizadoLancaFinanceiro.FrmFrameBotoes1SpbImprimirClick(
  Sender: TObject);
begin
   dbView_Terceirizados.close;
   frx_Servicos.ShowReport;
end;

procedure TFrmTerceirizadoLancaFinanceiro.FrmFrameBotoes1SpbProcurarClick(
  Sender: TObject);
begin
   if LocalizaDistribuicao.Execute then
   begin
      db_Terceirizados.close;
      db_TerceirizadosReferencias.close;
      db_Terceirizados.ParamByName('CODIGO').AsInteger :=LocalizaDistribuicao.ResultFieldAsInteger('CODIGO');
      db_Terceirizados.Open;
      db_TerceirizadosReferencias.Open;
   end;

end;

procedure TFrmTerceirizadoLancaFinanceiro.FrmFrameBotoes1SpbSairClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmTerceirizadoLancaFinanceiro.FrmFrameBotoes1SpbSalvarClick(
  Sender: TObject);
begin

  FrmFrameBotoes1.SpbSalvarClick(Sender);

  if (db_TerceirizadosReferencias.state  in [dsedit,dsinsert]) then
     db_TerceirizadosReferencias.Post;

end;

procedure TFrmTerceirizadoLancaFinanceiro.GRPTopExit(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

end.

