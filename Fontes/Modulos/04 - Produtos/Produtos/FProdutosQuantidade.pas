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

unit FProdutosQuantidade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, ExtCtrls, FFrameBotoes, Grids, DBGrids, DB,
          ComCtrls, StdCtrls, Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmProdutosQuantidade = class(TForm)
      FrmFrameBotoes1: TFrmFrameBotoes;
      Panel1: TPanel;
      FrmFrameBarra1: TFrmFrameBarra;
      db_referencias: TFDQuery;
      DS_Referencia: TDataSource;
    db_referenciasEMPRESA: TIntegerField;
    db_referenciasCODIGO: TIntegerField;
    db_referenciasREFERENCIA: TStringField;
    db_referenciasGRUPO: TIntegerField;
    db_referenciasSUBGRUPO: TIntegerField;
    db_referenciasTIPO_PRODUTO: TStringField;
    db_referenciasGRIFE: TIntegerField;
    db_referenciasCOLECAO: TIntegerField;
    db_referenciasFAIXA_ETARIA: TIntegerField;
    db_referenciasESTILISTA: TIntegerField;
    db_referenciasETIQUETA: TIntegerField;
    db_referenciasGRADE: TIntegerField;
    db_referenciasEMBALAGEM: TIntegerField;
    db_referenciasCOMPOSICAO: TIntegerField;
    db_referenciasGENERO: TIntegerField;
    db_referenciasNCM: TStringField;
    db_referenciasDESCRICAO: TStringField;
    db_referenciasCLASSIFICAO_FISCAL: TStringField;
    db_referenciasSITUACAO_TRIBUTARIA: TStringField;
    db_referenciasDATA: TSQLTimeStampField;
    db_referenciasDT_ULTIMA_COMPRA: TSQLTimeStampField;
    db_referenciasDT_ULTIMA_VENDA: TSQLTimeStampField;
    db_referenciasDT_VALIDADE: TSQLTimeStampField;
    db_referenciasGERAR_CODBARRA: TStringField;
    db_referenciasCOMPOSICAO_DESCRICAO: TStringField;
    db_referenciasCODIGO_BARRA: TStringField;
    db_referenciasCODIGO_FABRICANTE: TStringField;
    db_referenciasUNIDADE: TStringField;
    db_referenciasOZ: TBCDField;
    db_referenciasPESO: TBCDField;
    db_referenciasPESO_LIQUIDO: TBCDField;
    db_referenciasPESO_M2: TBCDField;
    db_referenciasQTDE_TECIDOS: TBCDField;
    db_referenciasQTDE_OPCOES: TBCDField;
    db_referenciasPRAZOENTREGA: TIntegerField;
    db_referenciasLOTE: TStringField;
    db_referenciasNUM_SERIE: TStringField;
    db_referenciasCOMISSAO_VAREJO: TBCDField;
    db_referenciasCOMISSAO_ATACADO: TBCDField;
    db_referenciasCOMISSAO_REPRESENTANTE: TBCDField;
    db_referenciasREGISTROINPI: TStringField;
    db_referenciasVOLUME: TBCDField;
    db_referenciasPROMOCAO: TStringField;
    db_referenciasMARCA: TStringField;
    db_referenciasLOCALIZACAO: TStringField;
    db_referenciasATIVO: TStringField;
    db_referenciasINSTRUCOES: TStringField;
    db_referenciasTOTAL_RESERVA: TBCDField;
    db_referenciasTOTAL_ORDEMPRODUCAO: TBCDField;
    db_referenciasTOTAL_QTDEMATPRIMA: TBCDField;
    db_referenciasTOTAL_VLRMATPRIMA: TBCDField;
    db_referenciasTOTAL_PROCESSO_TEMPO: TBCDField;
    db_referenciasTOTAL_PROCESSO_CUSTOS: TBCDField;
    db_referenciasTOTAL_CUSTOS_PERCENTUAL: TBCDField;
    db_referenciasTOTAL_CUSTOS_VALOR: TBCDField;
    db_referenciasSALDO_IMPLANTACAO: TBCDField;
    db_referenciasESTOQUEMINIMO: TBCDField;
    db_referenciasESTOQUEMAXIMO: TBCDField;
    db_referenciasESTOQUESALDO: TBCDField;
    db_referenciasMG_LUCRO: TBCDField;
    db_referenciasIPI: TBCDField;
    db_referenciasICMS: TBCDField;
    db_referenciasPIS: TBCDField;
    db_referenciasCOFINS: TBCDField;
    db_referenciasPUBLICIDADE: TBCDField;
    db_referenciasINADIMPLENCIA: TBCDField;
    db_referenciasADMINISTRATIVO: TBCDField;
    db_referenciasIMPORTACAO: TBCDField;
    db_referenciasPERC_FRETE: TBCDField;
    db_referenciasFINANCEIRO: TBCDField;
    db_referenciasIMPOSTOS_OUTROS: TBCDField;
    db_referenciasMARKUP: TBCDField;
    db_referenciasIR: TBCDField;
    db_referenciasPRC_CUSTOBRUTO: TBCDField;
    db_referenciasPRC_CUSTOPRODUCAO: TBCDField;
    db_referenciasPRC_CUSTO: TBCDField;
    db_referenciasPRC_VENDA: TBCDField;
    db_referenciasLUCRO_LIQUIDO: TBCDField;
    db_referenciasDETALHES: TStringField;
    db_referenciasPRODUCAO_TEMPO: TBCDField;
    db_referenciasPRODUCAO_CUSTOS: TBCDField;
    db_referenciasCOR: TStringField;
    db_referenciasTAMANHO: TStringField;
    db_referenciasFORNECEDOR: TIntegerField;
    db_ProdutosGrade: TFDQuery;
    ProgressBar1: TProgressBar;
    EditPesquisa: TLabeledEdit;
    BitBtn1: TBitBtn;
    rdg_Produtos: TRadioGroup;
    dbGrid_Produtos: TDBGrid;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure db_referenciasBeforeDelete(DataSet: TDataSet);
      procedure db_referenciasNewRecord(DataSet: TDataSet);
    procedure dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditPesquisaChange(Sender: TObject);
    procedure rdg_ProdutosClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmProdutosQuantidade: TFrmProdutosQuantidade;
   bAlterouGrade : Boolean;

implementation

uses FPrincipal, Biblioteca, Global,
    FProdutosQuantidadeGrade, FProdutosQuantidadeGradeEditar,
  FProdutosQuantidadeCodigoBarras, SQLServer;

{$R *.dfm}

procedure TFrmProdutosQuantidade.BitBtn1Click(Sender: TObject);
begin
   {
    db_referencias.Close;

   if EditPesquisa.Text='' then
      EditPesquisa.Text:='%';

   //db_referencias.SQL.Clear;
   //db_referencias.SQL.Add(ScriptSQL);
   db_referencias.ParamByName('Procurar').AsString := '%' + EditPesquisa.Text + '%';
   db_referencias.Open;

   dbGrid_Produtos.SetFocus;
   }

end;

procedure TFrmProdutosQuantidade.dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   // ativado somente se o cursor estive na coluna QUANTIDADE
   IF Key = VK_F2 Then
   begin

      bAlterouGrade := False;

      // if dbGrid_Produtos.SelectedField=db_referenciasQTDE then
      if (dbGrid_Produtos.SelectedField = db_referenciasESTOQUESALDO) and
        not empty(db_referencias.FieldByName('REFERENCIA').AsString) then
      Begin
         strProduto :=db_referencias.FieldByName('REFERENCIA').AsString;

        if ValidarReferenciaCorTamanho(strProduto) Then
        begin
            FrmProdutosQuantidadeGradeEditar := TFrmProdutosQuantidadeGradeEditar.Create(self);
            FrmProdutosQuantidadeGradeEditar.ShowModal;
        end;
         strProduto :='';
      End;

   End;
   bAlterouGrade := False;




end;



procedure TFrmProdutosQuantidade.db_referenciasBeforeDelete(DataSet: TDataSet);
begin
   abort;
end;

procedure TFrmProdutosQuantidade.db_referenciasNewRecord(DataSet: TDataSet);
begin
   abort;
end;

procedure TFrmProdutosQuantidade.EditPesquisaChange(Sender: TObject);
var
 sstring : string;
begin
    db_referencias.Close;


   sstring :='';
   sstring :=EditPesquisa.Text;

   if sstring='' then
      sstring:='%';

   db_referencias.ParamByName('PROCURAR').AsString := '%' + sstring + '%';
   db_referencias.Open;


end;

procedure TFrmProdutosQuantidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_referencias.close;
   Action := Cafree;

end;

procedure TFrmProdutosQuantidade.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_Referencia;
   db_referencias.close;
   db_referencias.Open;
   EditPesquisaChange(Sender);
   rdg_ProdutosClick(Sender);

   //{incompativel para FireDac} if (fncUsuario_retCampo(nUsuario,'PERMISSAO_ESTOQUEINVENTARIO')='N') Then
   //{incompativel para FireDac}    db_referencias.ReadOnly :=True;

end;

procedure TFrmProdutosQuantidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_F9 Then
   begin
      if (fncUsuario_retCampo(nUsuario,'PERMISSAO_ESTOQUEINVENTARIO')='N') Then
      begin
         AvisoSistemaErro('Você não possui permissão para movimentar atualizar estoque via código de barras');
         Abort;
      end;



      // vincular tecidos na referencia
      If (db_referencias.State in [dsedit, dsinsert]) then
      Begin
         db_referencias.Post;
      End;

      FrmProdutosQuantidadeCodigoBarras := TFrmProdutosQuantidadeCodigoBarras.Create(self);
      FrmProdutosQuantidadeCodigoBarras.ShowModal;

      db_referencias.RefreshRecord;

   end;


   if Key = vk_escape then
      close;
end;

procedure TFrmProdutosQuantidade.FrmFrameBotoes1SpbAdicionarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);

end;

procedure TFrmProdutosQuantidade.FrmFrameBotoes1SpbCancelarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmProdutosQuantidade.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmProdutosQuantidade.FrmFrameBotoes1SpbExcluirClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmProdutosQuantidade.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmProdutosQuantidade.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmProdutosQuantidade.rdg_ProdutosClick(Sender: TObject);
begin

   db_referencias.close;

   if rdg_Produtos.ItemIndex=0 then
      db_referencias.ParamByName('TIPO').AsString := '%';

   if rdg_Produtos.ItemIndex=1 then
      db_referencias.ParamByName('TIPO').AsString := 'ACA';

   if rdg_Produtos.ItemIndex=2 then
      db_referencias.ParamByName('TIPO').AsString := 'MAT';

   if rdg_Produtos.ItemIndex=3 then
      db_referencias.ParamByName('TIPO').AsString := 'TCD';

   db_referencias.open;
   EditPesquisaChange(Sender);

end;

end.
