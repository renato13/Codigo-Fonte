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


unit FProdutos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, ImgList, DB,
   DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Mask, Math,
   Buttons, ComCtrls, Shellapi,      
   Menus,   ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBotoes,
   FFrameBarra, Dialogs, ExtDlgs,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
   TFrmProdutos = class(TForm)
      Panel1: TPanel;
      DS_Referencia: TDataSource;
      CB_Copiar: TCheckBox;
      db_ChecarExistencia: TFDQuery;
      db_referencias: TFDQuery;
      ds_ClassificacaoFiscal: TDataSource;
      db_ClassificacaoFiscal: TFDQuery;
      db_SituacaoTributaria: TFDQuery;
      ds_SituacaoTributaria: TDataSource;
      db_CountEstoque: TFDQuery;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      db_TipoProduto: TFDQuery;
      DS_TipoProduto: TDataSource;
      PageControl1: TPageControl;
      Tab0: TTabSheet;
      TabSheet1: TTabSheet;
      Panel2: TPanel;
      Label12: TLabel;
      DBRadioGroup4: TDBRadioGroup;
    EditTipProduto: TDBLookupComboBox;
      GroupBox2: TGroupBox;
      DBMemo1: TDBMemo;
      GroupBox3: TGroupBox;
      Panel4: TPanel;
      SpeedButton6: TSpeedButton;
      SpeedButton7: TSpeedButton;
      OpenPictureDialog1: TOpenPictureDialog;
      ds_referencia_Fotos: TDataSource;
      db_referencia_Fotos: TFDQuery;
      FotoReferencia: TImage;
      db_referenciasCODIGO: TIntegerField;
      db_referenciasEMPRESA: TIntegerField;
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
      db_referenciasGERAR_CODBARRA: TStringField;
      db_referenciasCOMPOSICAO_DESCRICAO: TStringField;
      db_referenciasCODIGO_BARRA: TStringField;
      db_referenciasCODIGO_FABRICANTE: TStringField;
      db_referenciasUNIDADE: TStringField;
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
      db_referenciasPRC_CUSTO: TBCDField;
      db_referenciasPRC_VENDA: TBCDField;
      db_referenciasLUCRO_LIQUIDO: TBCDField;
      db_referenciasDETALHES: TStringField;
      db_referenciasPRODUCAO_TEMPO: TBCDField;
      db_referenciasPRODUCAO_CUSTOS: TBCDField;
      db_referenciasCOR: TStringField;
      db_referenciasTAMANHO: TStringField;
      db_referenciasFORNECEDOR: TIntegerField;
    db_referenciasOZ: TBCDField;
    SPPEDIDO_MATERIAPRIMAIMPORTAR: TFDStoredProc;
    db_referenciasDESCRICAOREDUZIDA: TStringField;
    db_referenciasPRC_CUSTOPRODUCAO: TBCDField;
    db_referenciasREFERENCIAREDUZIDA: TStringField;
    dbProcurarFichaTecnica: TIDBEditDialog;
    db_referenciasFASE: TIntegerField;
    db_referenciasMARKUPID: TIntegerField;
    db_referenciasCFOPDENTROESTADO: TIntegerField;
    db_referenciasCFOPFORAESTADO: TIntegerField;
    BtnGrades: TButton;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    Label6: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label17: TLabel;
    Label27: TLabel;
    Label4: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    DBEdit_CodigoBarra: TDBEdit;
    EditUnidade: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    EditCodigoFabricante: TDBEdit;
    EditGrupo: TIDBEditDialog;
    Edit1: TEdit;
    EditSubGrupo: TIDBEditDialog;
    Edit2: TEdit;
    DBEdit5: TDBEdit;
    EditOZ: TDBEdit;
    EditEtiquetas: TIDBEditDialog;
    EditNomeEtiqueta: TEdit;
    DBEdit7: TDBEdit;
    EditColecao: TIDBEditDialog;
    EditNomeColecao: TEdit;
    gpbImpostos: TGroupBox;
    Label10: TLabel;
    Label13: TLabel;
    Label22: TLabel;
    Label7: TLabel;
    Label21: TLabel;
    Label1: TLabel;
    Label24: TLabel;
    Label15: TLabel;
    Label5: TLabel;
    BtnFormular1: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit8: TDBEdit;
    EditQtde: TDBEdit;
    EditMarkup: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit15: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox4: TGroupBox;
    EditFornecedor: TIDBEditDialog;
    EditNomeCliente: TEdit;
    Label2: TLabel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit_Referencia: TDBEdit;
    EditData: TDBEdit;
    DBEditDescricao: TDBEdit;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    Label32: TLabel;
    EditCFOP: TIDBEditDialog;
    NomeCFOP: TEdit;
    Edit3: TEdit;
    IDBEditDialog1: TIDBEditDialog;
    painelPrecos: TGroupBox;
    Label26: TLabel;
    BtnFormular2: TSpeedButton;
    Label8: TLabel;
    Label20: TLabel;
    DBEdit_PrcCusto: TDBEdit;
    DBEdit_MLucro: TDBEdit;
    DBEdit_PrcVenda: TDBEdit;
    dbEditPesquisar: TIDBEditDialog;
    EditNomeNCM: TEdit;
    db_referenciasDATA: TSQLTimeStampField;
    db_referenciasDT_ULTIMA_COMPRA: TSQLTimeStampField;
    db_referenciasDT_ULTIMA_VENDA: TSQLTimeStampField;
    db_referenciasDT_VALIDADE: TSQLTimeStampField;
    db_referenciasHORAS: TTimeField;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);

      procedure FormShow(Sender: TObject);
      procedure db_referenciasMG_LUCROChange(Sender: TField);

      procedure CalculaCustos;
      procedure db_referenciasPERC_FRETEChange(Sender: TField);
      procedure db_referenciasICMS_ALIQChange(Sender: TField);
      procedure db_referenciasICMS_REDChange(Sender: TField);
      procedure db_referenciasICMS_SUBST_TRIBChange(Sender: TField);
      procedure db_referenciasMARKUPChange(Sender: TField);
      procedure DBEdit_ReferenciaExit(Sender: TObject);
      procedure db_referenciasQTD_TOTALChange(Sender: TField);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure SpeedButton1Click(Sender: TObject);
      procedure db_ExcluirEstoqueDeleteError(DataSet: TDataSet;
        E: EDatabaseError; var Action: TDataAction);
      procedure db_referenciasAfterPost(DataSet: TDataSet);
      procedure db_referenciasBeforePost(DataSet: TDataSet);
      procedure db_referenciasNewRecord(DataSet: TDataSet);
      procedure BtnFormular1Click(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure db_referenciasIPIChange(Sender: TField);
      procedure db_referenciasICMSChange(Sender: TField);
      procedure db_referenciasPISChange(Sender: TField);
      procedure db_referenciasPESO_M2Change(Sender: TField);
      procedure db_referenciasPESO_LIQUIDOChange(Sender: TField);
      procedure db_referenciasPostError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure db_referenciasDeleteError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure db_referenciasEditError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure db_referenciasPRC_CUSTOChange(Sender: TField);
      procedure db_referenciasPRC_VENDAChange(Sender: TField);
      procedure BtnGradesClick(Sender: TObject);
      procedure SpeedButton6Click(Sender: TObject);
      procedure Atualizar_Foto;
      procedure db_referencia_FotosBeforePost(DataSet: TDataSet);
      procedure SpeedButton7Click(Sender: TObject);
    procedure db_referenciasPRC_CUSTOBRUTOChange(Sender: TField);
    procedure db_referenciasAfterScroll(DataSet: TDataSet);
    procedure db_referenciasBeforeOpen(DataSet: TDataSet);
    procedure db_referenciasDESCRICAOChange(Sender: TField);
    procedure db_referenciasESTOQUESALDOChange(Sender: TField);

   private
      { Private declarations }

      nESTOQUESALDO, nPESO_LIQUIDO, nPESO_M2, NPRC_CUSTOBRUTO, nTOTAL: Double;

      nTeste: Double;

   public
      { Public declarations }
   end;

var

   FrmProdutos: TFrmProdutos;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, FBaseDados,
  FProdutosGrade, FProdutosGradeEditar, MovProdutos;

{$R *.dfm}

procedure TFrmProdutos.FormCreate(Sender: TObject);
begin

   //BtnFormular1.Visible := False;
   //BtnFormular2.Visible := False;

   //EditQtde.Width := EditQtde.Width + BtnFormular1.Width;
   //DBEdit_PrcCusto.Width := DBEdit_PrcCusto.Width + BtnFormular2.Width;


   FrmFrameBotoes1.DataSource := DS_Referencia;
   db_referencias.close;
   db_referencias.Open;
   db_referencia_Fotos.Open;

   db_ClassificacaoFiscal.Open;
   db_SituacaoTributaria.Open;
   db_TipoProduto.Open;

   // A=automático (numerico)     /    M=manual (até 30 caracteres)
   If BaseDados.db_Parametros.FieldByName('PRODUTO_CODIFICACAO')
     .AsString = 'AUTO' Then
   begin
      DBEdit_Referencia.Enabled := False;
   End
   else
   begin
      DBEdit_Referencia.Enabled := True;
   end;

   FrmProdutosGrade := TFrmProdutosGrade.create(self);

   if (fncUsuario_retCampo(nUsuario,'PERMISSAO_PRODUTOVERPRECOS')='N') Then
   begin
      painelPrecos.Visible  :=False;
      gpbImpostos.Visible   :=False;
   end;


end;

procedure TFrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   FUsuario.prcLogUsuario('controle de estoque', 'Finalizou o uso do módulo controle de estoque' );

   db_referencias.close;
   db_referencia_Fotos.close;

   db_ClassificacaoFiscal.close;
   db_SituacaoTributaria.close;
   db_TipoProduto.close;

   FreeAndNil(FrmProdutos);

end;

// o processo de editar e gravar atualia varios campos padronizados do estoque
procedure TFrmProdutos.FormShow(Sender: TObject);
begin
   FUsuario.prcLogUsuario('controle de estoque','Acessou o módulo controle de estoque');
end;

procedure TFrmProdutos.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   // A=automático     /    M=manual
   If BaseDados.db_Parametros.FieldByName('PRODUTO_CODIFICACAO')
     .AsString = 'MANUAL' Then
   begin
      DBEdit_Referencia.Enabled := True;
   end;

   // A=automático     /    M=manual
   If BaseDados.db_Parametros.FieldByName('PRODUTO_CODIFICACAO')
     .AsString = 'AUTO' Then
   begin
      DBEdit_Referencia.Enabled := False;
   end;

   FrmFrameBotoes1.SpbAdicionarClick(Sender);


   If BaseDados.db_Parametros.FieldByName('PRODUTO_CODIFICACAO')
     .AsString = 'MANUAL' Then
   begin

      Wtexto[3] := ZeroEsquerda(db_referencias.FieldByName('CODIGO').AsString,
        BaseDados.db_Parametros.FieldByName('PRODUTO_PRODUTO').AsInteger);

      db_referencias.FieldByName('REFERENCIA').AsString := Wtexto[3];
      db_referencias.ParamByName('REFERENCIA').AsString := Wtexto[3];
      Wtexto[3] := '';

   End;

   // definir foco inicial
   {
   If BaseDados.db_Parametros.FieldByName('PRODUTO_CODIFICACAO')
     .AsString = 'MANUAL' Then
      EditTipProduto.SetFocus
   else
      EditTipProduto.SetFocus;

   }
   if CB_Copiar.Checked then
   begin
      db_referencias.FieldByName('LOCALIZACAO').AsString := Achar[00];
      db_referencias.FieldByName('GRUPO').AsString := Achar[01];
      db_referencias.FieldByName('SUBGRUPO').AsString := Achar[02];
      db_referencias.FieldByName('DESCRICAO').AsString := Achar[03];
      db_referencias.FieldByName('UNIDADE').AsString := Achar[04];
      db_referencias.FieldByName('CODIGO_FABRICANTE').AsString := Achar[06];



   end;
   EditTipProduto.SetFocus;

end;

procedure TFrmProdutos.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   Atualizar_Foto;

end;

procedure TFrmProdutos.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmProdutos.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);
   db_referencias.ParamByName('REFERENCIA').Clear;
   Atualizar_Foto;

end;

procedure TFrmProdutos.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   dbProcurarFichaTecnica.SearchQuery.Clear;
   dbProcurarFichaTecnica.SearchQuery.Add('SELECT *  FROM VIEW_REFERENCIAS');
   dbProcurarFichaTecnica.SearchQuery.Add('WHERE');
   dbProcurarFichaTecnica.SearchQuery.Add('EMPRESA='+IntToStr(FSistema.Empresa));
   dbProcurarFichaTecnica.SearchQuery.Add('AND');
   dbProcurarFichaTecnica.SearchQuery.Add('%WHERE%');
   dbProcurarFichaTecnica.SearchQuery.Add('');

   if dbProcurarFichaTecnica.Execute then
   begin

      db_referencias.Close;
      db_referencias.ParamByName('EMPRESA').AsInteger   := FSistema.Empresa ;
      db_referencias.ParamByName('REFERENCIA').AsString := dbProcurarFichaTecnica.ResultFieldAsString('REFERENCIA');
      db_referencias.open;

      Atualizar_Foto;
   end;

end;

procedure TFrmProdutos.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmProdutos.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);
   Atualizar_Foto;

end;

procedure TFrmProdutos.db_referenciasMG_LUCROChange(Sender: TField);
begin

   db_referencias.FieldByName('PRC_VENDA').AsFloat := 0;
   CalculaCustos;

   if (db_referencias.state in [dsEdit]) then
      FUsuario.prcLogUsuario('controle de estoque', 'alterou a margem de lucro do produto '+strReferencia );

end;

procedure TFrmProdutos.db_referenciasNewRecord(DataSet: TDataSet);
begin

   db_referencias.FieldByName('DATA').AsDateTime := Date;
   db_referencias.FieldByName('ATIVO').AsString   := 'S';
   db_referencias.FieldByName('UNIDADE').AsString := 'UN';
   db_referencias.FieldByName('CODIGO_BARRA').AsString := '7899999999999';

   {
     db_referencias.FIELDBYNAME('PESO').AsInteger                   :=0;
     db_referencias.FIELDBYNAME('PESO_LIQUIDO').AsInteger           :=0;
     db_referencias.FIELDBYNAME('VOLUME').AsInteger                 :=0;
     db_referencias.FIELDBYNAME('GRUPO').AsInteger                  :=0;
     db_referencias.FIELDBYNAME('SUBGRUPO').AsInteger               :=0;
     db_referencias.FIELDBYNAME('EMBALAGEM').AsInteger              :=0;
     db_referencias.FIELDBYNAME('COMPOSICAO').AsInteger             :=0;
     db_referencias.FIELDBYNAME('TOTAL_RESERVA').AsInteger          :=0;
     db_referencias.FIELDBYNAME('SALDO_IMPLANTACAO').AsInteger      :=0;
     db_referencias.FIELDBYNAME('ESTOQUEMINIMO').AsInteger          :=0;
     db_referencias.FIELDBYNAME('ESTOQUEMAXIMO').AsInteger          :=0;
     db_referencias.FIELDBYNAME('ESTOQUESALDO').AsInteger           :=0;
     db_referencias.FIELDBYNAME('MARKUP').AsFloat                   :=0;
     db_referencias.FIELDBYNAME('PRC_CUSTO').AsInteger              :=0;
     db_referencias.FIELDBYNAME('PRC_VENDA').AsInteger              :=0;

     // Parametros de custos
     db_referencias.FIELDBYNAME('COMISSAO_VAREJO').AsInteger        :=0;
     db_referencias.FIELDBYNAME('COMISSAO_ATACADO').AsInteger       :=0;
     db_referencias.FIELDBYNAME('COMISSAO_REPRESENTANTE').AsInteger :=0;
     db_referencias.FIELDBYNAME('MG_LUCRO').AsInteger               :=0;
     db_referencias.FIELDBYNAME('LUCRO_LIQUIDO').AsInteger          :=0;
     db_referencias.FIELDBYNAME('PERC_FRETE').AsInteger             :=0;
     db_referencias.FIELDBYNAME('PUBLICIDADE').AsInteger            :=0;
     db_referencias.FIELDBYNAME('INADIMPLENCIA').AsInteger          :=0;
     db_referencias.FIELDBYNAME('ADMINISTRATIVO').AsInteger         :=0;
     db_referencias.FIELDBYNAME('IMPORTACAO').AsInteger             :=0;

     // impostos
     db_referencias.FIELDBYNAME('IPI').AsInteger                    :=0;
     db_referencias.FIELDBYNAME('IPI_CREDITO').AsInteger            :=0;
     db_referencias.FIELDBYNAME('ICMS').AsInteger                   :=0;
     db_referencias.FIELDBYNAME('ICMS_CREDITO').AsInteger           :=0;
     db_referencias.FIELDBYNAME('PIS').AsInteger                    :=0;
     db_referencias.FIELDBYNAME('COFINS').AsInteger                 :=0;
     db_referencias.FIELDBYNAME('IR').AsInteger                     :=0;
   }

end;

procedure TFrmProdutos.db_referenciasAfterPost(DataSet: TDataSet);
begin
   strReferencia := db_referencias.FieldByName('REFERENCIA').AsString;
   db_referencias.ParamByName('EMPRESA').AsInteger   := FSistema.Empresa ;
   db_referencias.ParamByName('REFERENCIA').AsString := db_referencias.FieldByName('REFERENCIA').AsString;

   Achar[00] := db_referencias.FieldByName('LOCALIZACAO').AsString;
   Achar[01] := db_referencias.FieldByName('GRUPO').AsString;
   Achar[02] := db_referencias.FieldByName('SUBGRUPO').AsString;
   Achar[03] := db_referencias.FieldByName('DESCRICAO').AsString;
   Achar[04] := db_referencias.FieldByName('UNIDADE').AsString;
   Achar[06] := db_referencias.FieldByName('CODIGO_FABRICANTE').AsString;


   {
   if (db_referencias.FieldByName('TIPO_PRODUTO').AsString='ACA') then
   begin
      BtnGrades.Enabled := True;
      BtnGrades.Visible := True;
   end
   else
   begin
      BtnGrades.Enabled := False;
      BtnGrades.Visible := False;
   end;
   }


   SPPEDIDO_MATERIAPRIMAIMPORTAR.ParamByName('ACAO').AsString :=  'INSERT';
   SPPEDIDO_MATERIAPRIMAIMPORTAR.ExecProc;


end;

procedure TFrmProdutos.db_referenciasAfterScroll(DataSet: TDataSet);
begin
   strReferencia := db_referencias.FieldByName('REFERENCIA').AsString;
   {
   if (db_referencias.FieldByName('TIPO_PRODUTO').AsString='ACA') then
   begin
      BtnGrades.Enabled := True;
      BtnGrades.Visible := True;
   end
   else
   begin
      BtnGrades.Enabled := False;
      BtnGrades.Visible := False;
   end;
   }
end;

procedure TFrmProdutos.db_referenciasBeforeOpen(DataSet: TDataSet);
begin
   db_referencias.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmProdutos.db_referenciasBeforePost(DataSet: TDataSet);
begin
   strReferencia := db_referencias.FieldByName('REFERENCIA').AsString;

   if (db_referencias.FieldByName('PRC_CUSTO').AsFloat <= 0) and
     (db_referencias.FieldByName('PRC_VENDA').AsFloat > 0) then
   begin
      db_referencias.FieldByName('PRC_CUSTO').AsFloat :=
        db_referencias.FieldByName('PRC_VENDA').AsFloat;
   end;

   wCampo[0] := 'DESCRICAO';
   wCampo[1] := 'GRUPO';
   wCampo[2] := 'SUBGRUPO';

   {
     ValidarCamposT( DS_Referencia );
   }

   If BaseDados.db_Parametros.FieldByName('PRODUTO_CODIFICACAO').AsString = 'AUTO' Then
   begin
      if db_referencias.FieldByName('GRUPO').AsString='' then
      begin
         avisosistema('Campo GRUPO é obrigatório');
         EditGrupo.SetFocus;
         abort;
      end;

      if (db_referencias.FieldByName('TIPO_PRODUTO').AsString<>'ACA') then
      begin
         db_referencias.FieldByName('REFERENCIA').AsString := MontarCodigoProduto(db_referencias.FieldByName('GRUPO').AsString,
                                                                                  db_referencias.FieldByName('SUBGRUPO').AsString,
                                                                                  db_referencias.FieldByName('CODIGO').AsString
                                                                                  );
      end;
   end;


   If Empty(db_referencias.FieldByName('UNIDADE').AsString) then
      db_referencias.FieldByName('UNIDADE').AsString := 'UN';

   If BaseDados.db_Parametros.FieldByName('PRODUTO_CODIFICACAO').AsString <> 'AUTO' Then
   begin
      If Empty(db_referencias.FieldByName('REFERENCIA').AsString) then
      begin
         Informar('Informe a Referência do produto');
         DBEdit_Referencia.SetFocus;
         Abort;
      End;
   end;

   If Empty(db_referencias.FieldByName('TIPO_PRODUTO').AsString) then
   begin
      Informar('Tipo de produto é obrigatorio');
      EditTipProduto.SetFocus;
      Abort;
   End;

   if Empty(db_referencias.FieldByName('CODIGO_BARRA').AsString) or
   (db_referencias.FieldByName('CODIGO_BARRA').AsString = '0')   then
      db_referencias.FieldByName('CODIGO_BARRA').AsString := '7899999999999';

   if Valida_EAN(fncProduto_retCampo(strReferencia,'CODIGO_BARRA'))=false Then
      db_referencias.FieldByName('CODIGO_BARRA').AsString := '7899999999999';


   if (db_referencias.FieldByName('TIPO_PRODUTO').AsString='ACA')       or
      (db_referencias.FieldByName('TIPO_PRODUTO').AsString='ACABADO')   then
   Begin
      if db_referencias.FieldByName('NCM').AsString='' Then
         db_referencias.FieldByName('NCM').AsString := BuscaNCMPadrao;
   End;


   CalculaCustos;

end;

procedure TFrmProdutos.db_referenciasDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmProdutos.db_referenciasDESCRICAOChange(Sender: TField);
begin
   if (db_referencias.state in [dsEdit]) then
      FUsuario.prcLogUsuario('controle de estoque', 'alterou a descrição do produto '+strReferencia );

end;

procedure TFrmProdutos.db_referenciasEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmProdutos.db_referenciasESTOQUESALDOChange(Sender: TField);
begin
   if (db_referencias.state in [dsEdit]) then
      FUsuario.prcLogUsuario('controle de estoque', 'alterou a quantidade em estoque do produto '+strReferencia );

end;

procedure TFrmProdutos.BtnGradesClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);



   If Empty(db_referencias.FieldByName('REFERENCIA').AsString) then
   begin
      Informar('Informe a Referência do produto');
      DBEdit_Referencia.SetFocus;
      Abort;
   End;

   FrmFrameBotoes1.SpbEditarClick(Sender);
   FrmProdutosGrade.ShowModal;
end;

procedure TFrmProdutos.CalculaCustos;

begin


   wFloat[0] := 0;
   wFloat[1] := 0;
   wFloat[2] := 0;
   wFloat[3] := 0;
   wFloat[4] := 0;
   wFloat[99] := 0;

   // Calcular fração do rolo de tecido

   nPESO_LIQUIDO    :=db_referencias.FieldByName('PESO_LIQUIDO').AsFloat;
   nPESO_M2         :=db_referencias.FieldByName('PESO_M2').AsFloat;


   NPRC_CUSTOBRUTO  :=db_referencias.FieldByName('PRC_CUSTOBRUTO').AsFloat;


   // Peso liquido do rolo do tecido
   if wFloat[110]<=0 then
   wFloat[110] :=1;

   // Peso do metro quadrado do tecido
   if nPESO_M2<=0 then
   begin
   nPESO_M2 :=1;
   end;


   nESTOQUESALDO  := (nPESO_LIQUIDO / nPESO_M2);

   if nESTOQUESALDO<=0 then
   begin
   nESTOQUESALDO :=1;
   nPESO_M2      :=0;
   end;


   nTOTAL := NPRC_CUSTOBRUTO / nESTOQUESALDO;

   if nPESO_M2<=0 then
   begin
      nESTOQUESALDO :=0;
   end;

   //db_referencias.FieldByName('PRC_CUSTO').AsFloat     := nTOTAL;

   // db_referencias.FieldByName('ESTOQUESALDO').AsFloat  := nESTOQUESALDO;


   if db_referencias.FieldByName('MG_LUCRO').AsFloat <= 0 then
   Begin

      nTeste := 0;
      nTeste := DescobrirPercentual(db_referencias.FieldByName('PRC_CUSTO')
        .AsFloat, db_referencias.FieldByName('PRC_VENDA').AsFloat);

      if nTeste > 0 then
         db_referencias.FieldByName('MG_LUCRO').AsFloat := nTeste;

   End
   else
   begin
      nTeste := db_referencias.FieldByName('MG_LUCRO').AsFloat;
   end;

   // IPI
   wFloat[1] := fncGeraPercentual(db_referencias.FieldByName('PRC_CUSTO').AsFloat,
     db_referencias.FieldByName('IPI').AsFloat);

   // Frete
   wFloat[2] := fncGeraPercentual(db_referencias.FieldByName('PRC_CUSTO').AsFloat,
     db_referencias.FieldByName('PERC_FRETE').AsFloat);

   // ICMS
   wFloat[3] := fncGeraPercentual(db_referencias.FieldByName('PRC_CUSTO').AsFloat,
     db_referencias.FieldByName('ICMS').AsFloat);

   // MARKUP
   wFloat[4] := fncGeraPercentual(db_referencias.FieldByName('PRC_CUSTO').AsFloat,
     db_referencias.FieldByName('MARKUP').AsFloat);

   wFloat[0] := fncGeraPercentual(db_referencias.FieldByName('PRC_CUSTO').AsFloat,
     db_referencias.FieldByName('MG_LUCRO').AsFloat);

   db_referencias.FieldByName('LUCRO_LIQUIDO').AsFloat := wFloat[0];

   wFloat[97] := db_referencias.FieldByName('PRC_VENDA').AsFloat;
   wFloat[98] := ArrendondarDecimais(db_referencias.FieldByName('PRC_CUSTO').AsFloat);

   wFloat[99] := ArrendondarDecimais(wFloat[0] + wFloat[1] + wFloat[2] + wFloat[3] +
     wFloat[4]);

   wFloat[100] := wFloat[98] + wFloat[99];

   wFloat[100] := ArrendondarDecimais(wFloat[100]);

   db_referencias.FieldByName('PRC_VENDA').AsFloat := wFloat[100];

   nTeste := 0;

end;

procedure TFrmProdutos.db_referenciasPERC_FRETEChange(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutos.db_referenciasPESO_LIQUIDOChange(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutos.db_referenciasPESO_M2Change(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutos.db_referenciasPISChange(Sender: TField);
begin
   CalculaCustos;

end;

procedure TFrmProdutos.db_referenciasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmProdutos.db_referenciasPRC_CUSTOBRUTOChange(Sender: TField);
begin
//  CalculaCustos;
end;

Procedure TFrmProdutos.db_referenciasPRC_CUSTOChange(Sender: TField);
begin
   CalculaCustos;
   if (db_referencias.state in [dsEdit]) then
      FUsuario.prcLogUsuario('controle de estoque', 'alterou o preço de custo do produto '+strReferencia );

end;

procedure TFrmProdutos.db_referenciasPRC_VENDAChange(Sender: TField);
begin

   if (db_referencias.FieldByName('PRC_CUSTO').AsFloat <= 0) and
     (db_referencias.FieldByName('PRC_VENDA').AsFloat > 0) then
   begin
      db_referencias.FieldByName('PRC_CUSTO').AsFloat :=
        db_referencias.FieldByName('PRC_VENDA').AsFloat;
   end;

   if (db_referencias.state in [dsEdit]) then
      FUsuario.prcLogUsuario('controle de estoque', 'alterou o preço de venda do produto '+strReferencia );

end;

procedure TFrmProdutos.db_referenciasICMSChange(Sender: TField);
begin
   CalculaCustos;
   if (db_referencias.state in [dsEdit]) then
      FUsuario.prcLogUsuario('controle de estoque', 'alterou icms do produto '+strReferencia );

end;

procedure TFrmProdutos.db_referenciasICMS_ALIQChange(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutos.db_referenciasICMS_REDChange(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutos.db_referenciasICMS_SUBST_TRIBChange(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutos.db_referenciasIPIChange(Sender: TField);
begin
   CalculaCustos;
   if (db_referencias.state in [dsEdit]) then
      FUsuario.prcLogUsuario('controle de estoque', 'alterou ipi do produto '+strReferencia );

end;

procedure TFrmProdutos.db_referenciasMARKUPChange(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutos.DBEdit_ReferenciaExit(Sender: TObject);
begin

   Wtexto[0] := db_referencias.FieldByName('REFERENCIA').AsString;
   db_ChecarExistencia.close;
   db_ChecarExistencia.ParamByName('REFERENCIA').AsString :=
     db_referencias.FieldByName('REFERENCIA').AsString;
   db_ChecarExistencia.Open;

   If (db_referencias.state in [dsEdit, dsInsert]) then
   Begin
      If db_ChecarExistencia.FieldByName('REGISTROS').AsInteger > 0 then
      Begin
         FrmFrameBotoes1.SpbCancelarClick(Sender);

         db_referencias.close;
         db_referencias.ParamByName('REFERENCIA').AsString := Wtexto[0];
         db_referencias.Open;

         Informar('Produto ' + db_referencias.FieldByName('REFERENCIA').AsString
           + ' já está cadastrado');
         DBEdit_Referencia.SetFocus;

      End;
   end;

   db_ChecarExistencia.close;
   Wtexto[0] := '';

end;

procedure TFrmProdutos.db_referenciasQTD_TOTALChange(Sender: TField);
begin

   If db_referencias.FieldByName('QTD_MAX').AsFloat > 0 then
   begin

      If db_referencias.FieldByName('QTD_TOTAL').AsFloat >
        db_referencias.FieldByName('QTD_MAX').AsFloat then
      begin

         BeepCritica;
         Informar('Estoque atual não pode ser maior que Estoque Máximo permitido ');
         db_referencias.FieldByName('QTD_TOTAL').AsFloat := 0;
         EditQtde.SetFocus;
         Abort;

      end;

   end;

end;

procedure TFrmProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_F5 then
   begin
      if (db_referencias.state in [dsBrowse]) then
         db_referencias.Refresh;
   end;


   if Key = vk_F7 then
   begin
      BtnGrades.Enabled := True;
      BtnGrades.Visible := True;
   end;

end;

procedure TFrmProdutos.db_referencia_FotosBeforePost(DataSet: TDataSet);
begin

   db_referencia_Fotos.FieldByName('CODIGO').AsInteger :=
     db_referencias.FieldByName('CODIGO').AsInteger;

   db_referencia_Fotos.FieldByName('REFERENCIA').AsString :=
     db_referencias.FieldByName('REFERENCIA').AsString;


end;

procedure TFrmProdutos.SpeedButton1Click(Sender: TObject);
begin

   AvisoSistema(' Você poderá liberar ou bloquear o campo "Código do Produto" '
     + #13 + #10 + #13 + #10 + 'Procedimentos: ' + #13 + #10 +
     'A) Acesse o menu Configurações->Parametros de Sistema   ' + #13 + #10 +
     #13 + #10 + 'B) Clique no Icone SISTEMA   ' + #13 + #10 + #13 + #10 +
     'C) Na caixa "codificação dos produtos" selecione uma das opções abaixo   '
     + #13 + #10 + #13 + #10 +
     '  1) Sequencial 6 digitos: Bloqueia o campo "Código do Produto" e gera codigos automaticamente '
     + #13 + #10 + #13 + #10 +
     '  2) Alfanumerico: Libera o campo "Código do Produto"  mas você terá de informar o código do produto manualmente ');

end;

procedure TFrmProdutos.SpeedButton6Click(Sender: TObject);
begin

   if Empty(db_referencias.FieldByName('REFERENCIA').AsString) Then
   begin
      TratarErros('Não há produto na tela para vincular foto.');
      Exit;
   end;

   if OpenPictureDialog1.Execute then
   begin

      db_referencia_Fotos.close;
      db_referencia_Fotos.open;

      if not (db_referencia_Fotos.state in [dsEdit, dsInsert]) then
         db_referencia_Fotos.Edit;

         db_referencia_Fotos.FieldByName('FOTO_PATH').AsString :=  (OpenPictureDialog1.FileName);

      if (db_referencia_Fotos.state in [dsEdit, dsInsert]) then
         db_referencia_Fotos.Post;

   end;

   Atualizar_Foto;

end;

procedure TFrmProdutos.SpeedButton7Click(Sender: TObject);
begin

   if Empty(db_referencias.FieldByName('REFERENCIA').AsString) Then
   begin
      TratarErros('Não há produto na tela para excluir foto.');
      Exit;
   end;

   if not(db_referencias.state in [dsEdit, dsInsert]) then
   begin

      db_referencia_Fotos.close;
      db_referencia_Fotos.open;

      db_referencia_Fotos.Edit;
      db_referencia_Fotos.FieldByName('FOTO_PATH').Clear;
      db_referencia_Fotos.Post;

   end;

   Atualizar_Foto;

end;

procedure TFrmProdutos.Atualizar_Foto;
begin

  try
     db_referencia_Fotos.close;
     db_referencia_Fotos.open;

     // foto principal
     if fileexists(db_referencia_Fotos.FieldByName('FOTO_PATH').AsString) then
     Begin
        FotoReferencia.Picture := Nil;
        FotoReferencia.Picture.LoadFromFile(db_referencia_Fotos.FieldByName('FOTO_PATH').AsString);
     End
     Else
     Begin
        FotoReferencia.Picture := Nil;
     End;

  finally
     db_referencia_Fotos.close;
  end;

  Update;

end;

procedure TFrmProdutos.BtnFormular1Click(Sender: TObject);
begin

   strProduto :=db_referencias.FieldByName('REFERENCIA').AsString;

   {
   if (db_referencias.FieldByName('TIPO_PRODUTO').AsString='ACA') then
   begin
      FrmProdutosQuantidadeGrade := TFrmProdutosQuantidadeGrade.Create(self);
      FrmProdutosQuantidadeGrade.ShowModal;
      slProduto :='';
   end
   else
   }
   if ValidarReferenciaCorTamanho(strProduto) Then
   Begin
      FrmProdutosGradeEditar := TFrmProdutosGradeEditar.create(self);
      FrmProdutosGradeEditar.ShowModal;
   End;
   strProduto :='';

end;

procedure TFrmProdutos.db_ExcluirEstoqueDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin

   aviso(E.Message);

end;


end.
