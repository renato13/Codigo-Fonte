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

unit FFichaTecnica;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids,
   Mask, DBCtrls, ToolWin, jpeg, FFrameBotoes, ISFEdit, ISFEditbtn,
   ISFdbEditbtn, FFrameBotoes_II, ExtDlgs,
   uEstSearchDialogZeos, IDBEdit,    
     frxClass, frxDBSet,  
   DBCGrids, Menus, FFrameBarra,

   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
   FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
   FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS,
   FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
   FireDAC.Comp.DataSet;


type
   THackDBGrid=class(TDBGrid);

   TFrmFichaTecnica = class(TForm)
      Tab_Principal: TPageControl;
      Tab_0: TTabSheet;
      Tab_2: TTabSheet;
      GroupBox1: TGroupBox;
      Label1: TLabel;
      EditReferencia: TDBEdit;
      EditGrife: TIDBEditDialog;
      EditNomeGrife: TEdit;
      EditColecao: TIDBEditDialog;
      EditNomeColecao: TEdit;
      EditFaixaEtaria: TIDBEditDialog;
      EditNomeFaixaEtaria: TEdit;
      EditEtiquetas: TIDBEditDialog;
      EditNomeEtiqueta: TEdit;
      Tab_3: TTabSheet;
      GroupBox10: TGroupBox;
      GB_Foto: TGroupBox;
      Panel4: TPanel;
      Panel5: TPanel;
      Label22: TLabel;
      Label23: TLabel;
      DBEdit27: TDBEdit;
      DBEdit28: TDBEdit;
      OpenPictureDialog1: TOpenPictureDialog;
      Edit1: TEdit;
      EstSearchDialogZeos2: TIDBEditDialog;
      Edit2: TEdit;
      DBEdit2: TDBEdit;
      Label2: TLabel;
      Tab_1: TTabSheet;
      GroupBox11: TGroupBox;
      GroupBox3: TGroupBox;
    GridProcessos: TDBGrid;
      db_CountEstoque: TFDQuery;
      Panel1: TPanel;
      GrupoMateriaPrima: TGroupBox;
      GridMateriaPrima: TDBGrid;
      SpeedButton6: TSpeedButton;
      SpeedButton7: TSpeedButton;
      TabSheet1: TTabSheet;
      Panel7: TPanel;
      GroupBox5: TGroupBox;
      Panel10: TPanel;
      SpeedButton2: TSpeedButton;
      SpeedButton4: TSpeedButton;
      GroupBox7: TGroupBox;
      Panel11: TPanel;
      SpeedButton1: TSpeedButton;
      SpeedButton3: TSpeedButton;
      Panel12: TPanel;
      Label12: TLabel;
      Label13: TLabel;
      DBEdit8: TDBEdit;
      DBEdit17: TDBEdit;
      GroupBox13: TGroupBox;
      Panel13: TPanel;
      SpeedButton8: TSpeedButton;
      SpeedButton9: TSpeedButton;
      GroupBox14: TGroupBox;
      Panel14: TPanel;
      SpeedButton10: TSpeedButton;
      SpeedButton11: TSpeedButton;
      GroupBox9: TGroupBox;
    GridMaquinas: TDBGrid;
      dts_MateriasPrimas: TfrxDBDataset;
      dts_Tecidos: TfrxDBDataset;
      dts_cores: TfrxDBDataset;
      dst_processos: TfrxDBDataset;
      dts_maquinas: TfrxDBDataset;
      dts_medidas: TfrxDBDataset;
      dts_Fotos: TfrxDBDataset;
      dts_Referencia: TfrxDBDataset;
      frxR_FichaTecnica: TfrxReport;
      db_view_referencias: TFDQuery;
      tds_ViewReferencia: TfrxDBDataset;
      db_ReferenciaGrade: TFDQuery;
    fxdbReferenciaGrade: TfrxDBDataset;
      EditGradeTamanhos: TIDBEditDialog;
      EditNomeGrade: TEdit;
      DBCheckBox1: TDBCheckBox;
      GroupBox4: TGroupBox;
      Label6: TLabel;
      Label26: TLabel;
      Label5: TLabel;
      Label8: TLabel;
      SpeedButton5: TSpeedButton;
      DBEdit13: TDBEdit;
      DBEdit_prcvenda: TDBEdit;
      DBEdit5: TDBEdit;
      EditQtde: TDBEdit;
      GroupBox6: TGroupBox;
      GridGradeCores: TDBGrid;
      GroupBox16: TGroupBox;
      DBGrid4: TDBGrid;
      db_GradeLista: TFDQuery;
      ds_GradeLista: TDataSource;
      db_GradeListaNometamanho: TStringField;
      db_GradeListaCODIGO: TIntegerField;
      db_GradeListaID_TAMANHO: TIntegerField;
      db_GradeListaORDEM: TStringField;
      db_GradeListaDESCRICAO: TStringField;
      db_GradeListaTAMANHO: TStringField;
      DBEdit1: TDBEdit;
      Label3: TLabel;
    EstSearchDialogZeos1: TIDBEditDialog;
    Panel6: TPanel;
    FotoReferencia: TImage;
    Panel8: TPanel;
    FotoFrente: TImage;
    Panel9: TPanel;
    FotoCostas: TImage;
    Panel16: TPanel;
    FotoPerfilDireito: TImage;
    Panel17: TPanel;
    FotoPerfilEsquerdo: TImage;
    LocalizaOrdemMaquina: TIDBEditDialog;
    PainelGridProcessos: TPanel;
    Label9: TLabel;
    Panel15: TPanel;
    Button1: TButton;
    DBMemo2: TDBMemo;
    DBCtrlGrid1: TDBCtrlGrid;
    Panel18: TPanel;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    GroupBox17: TGroupBox;
    DBMemo3: TDBMemo;
    tds_ReferenciaFotos: TfrxDBDataset;
    EditOZ: TDBEdit;
    Label30: TLabel;
    PopupMenu1: TPopupMenu;
    Panel3: TPanel;
    GroupBox8: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox15: TGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox12: TGroupBox;
    DBMemo1: TDBMemo;
    Panel19: TPanel;
    Label4: TLabel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    DBEdit20: TDBEdit;
    frxReportImagem: TfrxReport;
    fxdbPathFotos: TfrxDBDataset;
    frxFichaCusto: TfrxReport;
    GrupoServicosExternos: TGroupBox;
    GridServicosExternos: TDBGrid;
    BuscaServicoExterno: TIDBEditDialog;
    fxdbServicosExternos: TfrxDBDataset;
    db_ReferenciaGradeCODIGO: TIntegerField;
    db_ReferenciaGradeREFERENCIA: TStringField;
    db_ReferenciaGradeIDENTIFICADOR: TStringField;
    db_ReferenciaGradeDESCRICAO: TStringField;
    db_ReferenciaGradeCOR_CODIGO: TIntegerField;
    db_ReferenciaGradeCOR: TStringField;
    db_ReferenciaGradeGRADE_ID: TIntegerField;
    db_ReferenciaGradeTAMANHO_ORDEM: TStringField;
    db_ReferenciaGradeTAMANHO_CODIGO: TIntegerField;
    db_ReferenciaGradeTAMANHO: TStringField;
    GroupBox18: TGroupBox;
    GridMateriaPrimaGrade: TDBGrid;
    PopupMateriaPrimaGrade: TPopupMenu;
    Deletar1: TMenuItem;
    Excluirtudo1: TMenuItem;
    dts_MateriaPrimaGrade: TfrxDBDataset;
    DBEdit10: TDBEdit;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    Label7: TLabel;
    DBEdit12: TDBEdit;
    Label20: TLabel;
    FrmFrameBarra1: TFrmFrameBarra;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbProcurarTecidos: TIDBEditDialog;
    dbProcurarFichaTecnica: TIDBEditDialog;
    dbProcurarMateriaPrima: TIDBEditDialog;
    dbEditPesquisarCores: TIDBEditDialog;
    dbEditPesquisarProcessos: TIDBEditDialog;
    dbEditPesquisarFasesGrade: TIDBEditDialog;
    EditNomeFase: TEdit;
    Panel20: TPanel;
    GroupBox2: TGroupBox;
    GridMateriaPrimaTecidos: TDBGrid;
    GroupBox19: TGroupBox;
    DBGrid5: TDBGrid;
    dts_TecidoGrade: TfrxDBDataset;
    dbEditPesquisarCoresTecidos: TIDBEditDialog;
    SP_MarkupAplicar: TFDStoredProc;
    EditMarkup: TIDBEditDialog;
    EditMarkupNome: TEdit;
    dbfrx_MARKUP: TfrxDBDataset;
    db_MARKUP: TFDQuery;
    editPesquisaMateriaCor: TIDBEditDialog;
    editPesquisaMateriaTamanho: TIDBEditDialog;
    PopupMateriaPrimaGradeTecidos: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure ValidarCampos;
      procedure Reabrirtabela;
      procedure FormResize(Sender: TObject);
      procedure BtnNovoClick(Sender: TObject);
      procedure GridMateriaPrimaKeyPress(Sender: TObject; var Key: Char);
      procedure GridGradeCoresKeyPress(Sender: TObject; var Key: Char);
      procedure GridProcessosKeyPress(Sender: TObject; var Key: Char);
      procedure DBGrid5KeyPress(Sender: TObject; var Key: Char);
      procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
      procedure DBGrid6KeyPress(Sender: TObject; var Key: Char);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbPrimeiroClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAnteriorClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProximoClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
      procedure FotoReferenciaClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
      procedure GridMateriaPrimaEditButtonClick(Sender: TObject);
      procedure GridGradeCoresKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure GridGradeCoresEditButtonClick(Sender: TObject);
      procedure SpeedButton5Click(Sender: TObject);
      procedure GridMateriaPrimaTecidosKeyPress(Sender: TObject; var Key: Char);
      procedure GridMateriaPrimaTecidosEditButtonClick(Sender: TObject);
      procedure GridMateriaPrimaTecidosKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure GridMateriaPrimaKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure SpeedButton6Click(Sender: TObject);
      procedure SpeedButton7Click(Sender: TObject);
      procedure SpeedButton1Click(Sender: TObject);
      procedure SpeedButton3Click(Sender: TObject);
      procedure SpeedButton2Click(Sender: TObject);
      procedure SpeedButton4Click(Sender: TObject);
      procedure SpeedButton10Click(Sender: TObject);
      procedure SpeedButton11Click(Sender: TObject);
      procedure SpeedButton8Click(Sender: TObject);
      procedure SpeedButton9Click(Sender: TObject);
      procedure EditGradeTamanhosChange(Sender: TObject);
      procedure GridGradeCoresDrawColumnCell(Sender: TObject; const Rect: TRect;
        DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridProcessosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridProcessosEditButtonClick(Sender: TObject);
    procedure GridMaquinasEditButtonClick(Sender: TObject);
    procedure GridMaquinasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GroupBox6Enter(Sender: TObject);
    procedure GroupBox2Enter(Sender: TObject);
    procedure GrupoMateriaPrimaEnter(Sender: TObject);
    procedure GroupBox9Enter(Sender: TObject);
    procedure GroupBox15Enter(Sender: TObject);
    procedure GroupBox8Enter(Sender: TObject);
    procedure Tab_PrincipalEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure GridServicosExternosKeyPress(Sender: TObject; var Key: Char);
    procedure GridServicosExternosEditButtonClick(Sender: TObject);
    procedure GridServicosExternosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrupoServicosExternosEnter(Sender: TObject);
    procedure Deletar1Click(Sender: TObject);
    procedure Excluirtudo1Click(Sender: TObject);
    procedure GridMateriaPrimaGradeKeyPress(Sender: TObject; var Key: Char);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure DBGrid5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridMateriaPrimaGradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
   private
      { Private declarations }

      Procedure Atualizar_Foto;
    procedure prcTecidosAdicionar;
    procedure prcTecidosMateriaPrima;

   public
      { Public declarations }
   end;



var
   FrmFichaTecnica: TFrmFichaTecnica;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FBaseDados_PCP,
  FFichaTecnicaGradeFoto, FFichaTecnicaImprimir;


{$R *.dfm}

procedure TFrmFichaTecnica.Reabrirtabela;
Var
   igrade: Integer;

begin

   igrade := StrToIntDef (EditGradeTamanhos.text,0);

   BaseDados_PCP.db_MateriaPrimaTecidos.Close;
   BaseDados_PCP.db_MateriaPrimaTecidosGrade.Close;

   BaseDados_PCP.db_MateriaPrima.Close;
   BaseDados_PCP.db_MateriaPrimaGrade.Close;
   BaseDados_PCP.db_cores_Modelos.Close;
   BaseDados_PCP.db_pcp_processos.Close;
   BaseDados_PCP.db_PCP_Custos.Close;
   BaseDados_PCP.db_PCP_Medidas.Close;
   BaseDados_PCP.db_pcp_Maquinas.Close;
   BaseDados_PCP.db_pcp_MedidasPosLavagem.Close;
   BaseDados_PCP.db_referencia_Fotos.Close;
   db_GradeLista.Close;

   BaseDados_PCP.db_MateriaPrimaTecidos.open;
   BaseDados_PCP.db_MateriaPrimaTecidosGrade.open;
   BaseDados_PCP.db_MateriaPrima.open;
   BaseDados_PCP.db_MateriaPrimaGrade.open;
   BaseDados_PCP.db_cores_Modelos.open;
   BaseDados_PCP.db_pcp_processos.open;
   BaseDados_PCP.db_PCP_Custos.open;
   BaseDados_PCP.db_PCP_Medidas.open;
   BaseDados_PCP.db_pcp_MedidasPosLavagem.open;
   BaseDados_PCP.db_referencia_Fotos.open;

   BaseDados_PCP.db_pcp_Maquinas.open;

   // Atualizar grade de tamanhos
   db_GradeLista.ParamByName('GRADE').Clear;;
   db_GradeLista.ParamByName('GRADE').AsInteger := igrade;
   db_GradeLista.open;


   DimensionarGrid(GridMateriaPrimaTecidos,self);
   DimensionarGrid(GridMateriaPrima,self);


End;

procedure TFrmFichaTecnica.SpeedButton10Click(Sender: TObject);
begin

   if empty(BaseDados_PCP.db_referencias.FieldByname('REFERENCIA')
     .AsString) Then
   begin
      TratarErros('Não há produto na tela para vincular foto.');
      Exit;
   end;

   if OpenPictureDialog1.Execute then
   begin
      if not(BaseDados_PCP.db_referencias.State in [dsEdit, dsInsert]) then
      begin

         FrmFrameBotoes1.SpbEditar.Click;

         BaseDados_PCP.db_referencia_Fotos.FieldByname
           ('FOTO_PEFIL_DIREITO_PATH').AsString :=
           (OpenPictureDialog1.FileName);
         FrmFrameBotoes1.SpbSalvar.Click;
      end;
   end;

   Atualizar_Foto;

end;

procedure TFrmFichaTecnica.SpeedButton11Click(Sender: TObject);
begin

   if empty(BaseDados_PCP.db_referencias.FieldByname('REFERENCIA')
     .AsString) Then
   begin
      TratarErros('Não há produto na tela para excluir foto.');
      Exit;
   end;

   if not(BaseDados_PCP.db_referencias.State in [dsEdit, dsInsert]) then
   begin

      FrmFrameBotoes1.SpbEditar.Click;

      BaseDados_PCP.db_referencia_Fotos.FieldByname
        ('FOTO_PEFIL_DIREITO_PATH').Clear;
      FrmFrameBotoes1.SpbSalvar.Click;
   end;

   Atualizar_Foto;

end;

procedure TFrmFichaTecnica.SpeedButton1Click(Sender: TObject);
begin

   if empty(BaseDados_PCP.db_referencias.FieldByname('REFERENCIA')
     .AsString) Then
   begin
      TratarErros('Não há produto na tela para vincular foto.');
      Exit;
   end;

   if OpenPictureDialog1.Execute then
   begin
      if not(BaseDados_PCP.db_referencias.State in [dsEdit, dsInsert]) then
      begin

         FrmFrameBotoes1.SpbEditar.Click;

         BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_FRENTE_PATH')
           .AsString := (OpenPictureDialog1.FileName);
         FrmFrameBotoes1.SpbSalvar.Click;
      end;
   end;

   Atualizar_Foto;

end;

procedure TFrmFichaTecnica.SpeedButton2Click(Sender: TObject);
begin

   if empty(BaseDados_PCP.db_referencias.FieldByname('REFERENCIA')
     .AsString) Then
   begin
      TratarErros('Não há produto na tela para vincular foto.');
      Exit;
   end;

   if OpenPictureDialog1.Execute then
   begin
      if not(BaseDados_PCP.db_referencias.State in [dsEdit, dsInsert]) then
      begin

         FrmFrameBotoes1.SpbEditar.Click;

         BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_COSTA_PATH')
           .AsString := (OpenPictureDialog1.FileName);
         FrmFrameBotoes1.SpbSalvar.Click;
      end;
   end;

   Atualizar_Foto;

end;

procedure TFrmFichaTecnica.SpeedButton3Click(Sender: TObject);
begin

   if empty(BaseDados_PCP.db_referencias.FieldByname('REFERENCIA')
     .AsString) Then
   begin
      TratarErros('Não há produto na tela para excluir foto.');
      Exit;
   end;

   if not(BaseDados_PCP.db_referencias.State in [dsEdit, dsInsert]) then
   begin

      FrmFrameBotoes1.SpbEditar.Click;

      BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_FRENTE_PATH').Clear;
      FrmFrameBotoes1.SpbSalvar.Click;
   end;

   Atualizar_Foto;

end;

procedure TFrmFichaTecnica.SpeedButton4Click(Sender: TObject);
begin

   if empty(BaseDados_PCP.db_referencias.FieldByname('REFERENCIA')
     .AsString) Then
   begin
      TratarErros('Não há produto na tela para excluir foto.');
      Exit;
   end;

   if not(BaseDados_PCP.db_referencias.State in [dsEdit, dsInsert]) then
   begin

      FrmFrameBotoes1.SpbEditar.Click;

      BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_COSTA_PATH').Clear;
      FrmFrameBotoes1.SpbSalvar.Click;
   end;

   Atualizar_Foto;

end;

procedure TFrmFichaTecnica.SpeedButton5Click(Sender: TObject);
begin

   AvisoSistema
     ('O campo "Quantidade Atual" somente poderá ser modificado nas seguintes situações: '
     + #13 + #10 + #13 + #10 + 'Produção: ' + #13 + #10 +
     'Ao informar a quantidade produzida o estoque aumentará modificando automaticamente o campo "Quantidade Atual".  '
     + #13 + #10 + #13 + #10 + 'Vendas/Nota Fiscal de Saída: ' + #13 + #10 +
     'O estoque diminuirá modificando automaticamente o campo "Quantidade Atual".  '
     + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 +
     'Dessa forma você terá um estoque confiável ');

end;

procedure TFrmFichaTecnica.SpeedButton6Click(Sender: TObject);
begin

   if empty(BaseDados_PCP.db_referencias.FieldByname('REFERENCIA').AsString) Then
   begin
      TratarErros('Não há produto na tela para vincular foto.');
      Exit;
   end;

   if OpenPictureDialog1.Execute then
   begin
      if not(BaseDados_PCP.db_referencias.State in [dsEdit, dsInsert]) then
      begin

         FrmFrameBotoes1.SpbEditar.Click;
         BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_PATH').AsString :=(OpenPictureDialog1.FileName);
         FrmFrameBotoes1.SpbSalvar.Click;

      end;
   end;

   Atualizar_Foto;

end;

procedure TFrmFichaTecnica.SpeedButton7Click(Sender: TObject);
begin

   if empty(BaseDados_PCP.db_referencias.FieldByname('REFERENCIA')
     .AsString) Then
   begin
      TratarErros('Não há produto na tela para excluir foto.');
      Exit;
   end;

   if not(BaseDados_PCP.db_referencias.State in [dsEdit, dsInsert]) then
   begin

      FrmFrameBotoes1.SpbEditar.Click;

      BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_PATH').Clear;
      FrmFrameBotoes1.SpbSalvar.Click;

   end;

   Atualizar_Foto;

end;

procedure TFrmFichaTecnica.SpeedButton8Click(Sender: TObject);
begin

   if empty(BaseDados_PCP.db_referencias.FieldByname('REFERENCIA')
     .AsString) Then
   begin
      TratarErros('Não há produto na tela para vincular foto.');
      Exit;
   end;

   if OpenPictureDialog1.Execute then
   begin
      if not(BaseDados_PCP.db_referencias.State in [dsEdit, dsInsert]) then
      begin

         FrmFrameBotoes1.SpbEditar.Click;

         BaseDados_PCP.db_referencia_Fotos.FieldByname
           ('FOTO_PEFIL_ESQUERDO_PATH').AsString :=
           (OpenPictureDialog1.FileName);
         FrmFrameBotoes1.SpbSalvar.Click;
      end;
   end;

   Atualizar_Foto;

end;

procedure TFrmFichaTecnica.SpeedButton9Click(Sender: TObject);
begin

   if empty(BaseDados_PCP.db_referencias.FieldByname('REFERENCIA')
     .AsString) Then
   begin
      TratarErros('Não há produto na tela para excluir foto.');
      Exit;
   end;

   if not(BaseDados_PCP.db_referencias.State in [dsEdit, dsInsert]) then
   begin

      FrmFrameBotoes1.SpbEditar.Click;

      BaseDados_PCP.db_referencia_Fotos.FieldByname
        ('FOTO_PEFIL_ESQUERDO_PATH').Clear;
      FrmFrameBotoes1.SpbSalvar.Click;
   end;

   Atualizar_Foto;

end;

procedure TFrmFichaTecnica.Tab_PrincipalEnter(Sender: TObject);
begin
   FrmFrameBotoes1SpbSalvarClick(Sender);

end;

procedure TFrmFichaTecnica.FormCreate(Sender: TObject);
begin
   Top := 10;
   Left := 10;
   Tab_Principal.ActivePageIndex := 0;
   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_referencias;

   FrmPrincipal.Mnu_PCP_FichaTecnica.Enabled := false;

   BaseDados_PCP.db_referencias.Close;
   BaseDados_PCP.db_referencias.ParamByName('CODIGO').Clear;
   BaseDados_PCP.db_referencias.open;

   Reabrirtabela;

end;

procedure TFrmFichaTecnica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FrmPrincipal.Mnu_PCP_FichaTecnica.Enabled := True;

   BaseDados_PCP.db_referencias.Close;
   BaseDados_PCP.db_MateriaPrimaTecidos.Close;
   BaseDados_PCP.db_MateriaPrimaTecidosGrade.Close;
   BaseDados_PCP.db_MateriaPrima.Close;
   BaseDados_PCP.db_MateriaPrimaGrade.Close;
   BaseDados_PCP.db_cores_Modelos.Close;
   BaseDados_PCP.db_pcp_processos.Close;
   BaseDados_PCP.db_PCP_Custos.Close;
   BaseDados_PCP.db_PCP_Medidas.Close;
   BaseDados_PCP.db_pcp_MedidasPosLavagem.Close;
   BaseDados_PCP.db_pcp_Maquinas.Close;
   BaseDados_PCP.db_referencia_Fotos.Close;

   iAchar[0] := 0;

   FreeAndNil(FrmFichaTecnica);

end;

procedure TFrmFichaTecnica.ValidarCampos;
begin
   //

End;

procedure TFrmFichaTecnica.FormResize(Sender: TObject);
begin
   // FixDBGridColumnsWidth(DBGrid4);
end;

procedure TFrmFichaTecnica.Atualizar_Foto;
begin
 try
   // foto principal
   if fileexists(BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_PATH')
     .AsString) then
   Begin
      FotoReferencia.Picture.LoadFromFile
        (BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_PATH').AsString);
   End
   Else
   Begin
      FotoReferencia.Picture := Nil;
   End;

   // foto frente
   if fileexists(BaseDados_PCP.db_referencia_Fotos.FieldByname
     ('FOTO_FRENTE_PATH').AsString) then
   Begin
      FotoFrente.Picture.LoadFromFile
        (BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_FRENTE_PATH')
        .AsString);
   End
   Else
   Begin
      FotoFrente.Picture := Nil;
   End;

   // foto costas
   if fileexists(BaseDados_PCP.db_referencia_Fotos.FieldByname
     ('FOTO_COSTA_PATH').AsString) then
   Begin
      FotoCostas.Picture.LoadFromFile
        (BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_COSTA_PATH')
        .AsString);
   End
   Else
   Begin
      FotoCostas.Picture := Nil;
   End;

   // foto perfil direito
   if fileexists(BaseDados_PCP.db_referencia_Fotos.FieldByname
     ('FOTO_PEFIL_DIREITO_PATH').AsString) then
   Begin
      FotoPerfilDireito.Picture.LoadFromFile
        (BaseDados_PCP.db_referencia_Fotos.FieldByname
        ('FOTO_PEFIL_DIREITO_PATH').AsString);
   End
   Else
   Begin
      FotoPerfilDireito.Picture := Nil;
   End;

   // foto perfil esquerdo
   if fileexists(BaseDados_PCP.db_referencia_Fotos.FieldByname
     ('FOTO_PEFIL_ESQUERDO_PATH').AsString) then
   Begin
      FotoPerfilEsquerdo.Picture.LoadFromFile
        (BaseDados_PCP.db_referencia_Fotos.FieldByname
        ('FOTO_PEFIL_ESQUERDO_PATH').AsString);
   End
   Else
   Begin
      FotoPerfilEsquerdo.Picture := Nil;
   End;
 except
 end;

   Update;

end;

procedure TFrmFichaTecnica.BtnNovoClick(Sender: TObject);
begin
   BaseDados_PCP.db_referencias.Append;
   EditReferencia.Setfocus;
end;

procedure TFrmFichaTecnica.Button1Click(Sender: TObject);
begin
   PainelGridProcessos.visible :=False;
end;

procedure TFrmFichaTecnica.GridMateriaPrimaEditButtonClick
  (Sender: TObject);
begin

   // if (GridMateriaPrima.Columns.Items[0].Index=1) then
   if (GridMateriaPrima.SelectedField.FieldName = 'PRODUTO') then
      prcTecidosMateriaPrima;

end;

procedure TFrmFichaTecnica.GridMateriaPrimaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   IF Key = VK_F8 Then
      prcTecidosMateriaPrima;

end;

procedure TFrmFichaTecnica.GridMateriaPrimaKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmFichaTecnica.GridServicosExternosEditButtonClick(
  Sender: TObject);
begin

   if (GridServicosExternos.SelectedField.FieldName = 'CODIGOCUSTO') then
   begin

      if BuscaServicoExterno.Execute then
      begin

         If not(BaseDados_PCP.db_pcp_Custos.State in [dsEdit]) then
            BaseDados_PCP.db_pcp_Custos.Edit;

         BaseDados_PCP.db_pcp_Custos.FieldByname('CODIGOCUSTO').AsInteger :=BuscaServicoExterno.ResultFieldAsInteger('CODIGO');

      End;

   end;

end;

procedure TFrmFichaTecnica.GridServicosExternosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   IF Key = VK_F8 Then
   begin

      if BuscaServicoExterno.Execute then
      begin

         If not(BaseDados_PCP.db_pcp_Custos.State in [dsEdit]) then
            BaseDados_PCP.db_pcp_Custos.Edit;

         BaseDados_PCP.db_pcp_Custos.FieldByname('CODIGOCUSTO').AsInteger :=BuscaServicoExterno.ResultFieldAsInteger('CODIGO');

      End;

   end;

end;

procedure TFrmFichaTecnica.GridServicosExternosKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmFichaTecnica.GridGradeCoresDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

   Try

      If (BaseDados_PCP.db_cores_Modelos.FieldByname('COR').AsString <> '') then
      Begin

         GridGradeCores.Canvas.Brush.Color :=
           StringToColor(BaseDados_PCP.db_cores_Modelos.FieldByname('COR')
           .AsString); // "pinta" a celula inteira
         // GridGradeCores.Canvas.Font.Color   := clRed;      // "Pinta" a letra
         GridGradeCores.Canvas.FillRect(Rect);
         GridGradeCores.DefaultDrawColumnCell(Rect, DataCol, Column, State);

      End;
   Except
   End;

end;

procedure TFrmFichaTecnica.GridGradeCoresEditButtonClick
  (Sender: TObject);
begin

   if dbEditPesquisarCores.Execute then
   begin
      if not(BaseDados_PCP.ds_Cores_Modelos.DataSet.State
        in [dsEdit, dsInsert]) then
         BaseDados_PCP.ds_Cores_Modelos.DataSet.Edit;

      BaseDados_PCP.ds_Cores_Modelos.DataSet.FieldByname('ID_COR').AsInteger :=dbEditPesquisarCores.ResultFieldAsInteger('CODIGO');
   End;

end;

procedure TFrmFichaTecnica.GridGradeCoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF Key = VK_F8 Then
   begin

     if dbEditPesquisarCores.Execute then
     begin
        if not(BaseDados_PCP.ds_Cores_Modelos.DataSet.State
          in [dsEdit, dsInsert]) then
           BaseDados_PCP.ds_Cores_Modelos.DataSet.Edit;

        BaseDados_PCP.ds_Cores_Modelos.DataSet.FieldByname('ID_COR').AsInteger :=dbEditPesquisarCores.ResultFieldAsInteger('CODIGO');
     End;

   end;

end;

procedure TFrmFichaTecnica.GridGradeCoresKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmFichaTecnica.prcTecidosAdicionar;
begin

   if dbProcurarTecidos.Execute then
   begin

       If not(BaseDados_PCP.ds_MateriaPrimaTecidos.State in [dsEdit]) then
          BaseDados_PCP.ds_MateriaPrimaTecidos.Edit;
       BaseDados_PCP.db_MateriaPrimaTecidos.FieldByname('REFERENCIA').AsString             := dbProcurarTecidos.ResultFieldAsString('REFERENCIA');

   end;

end;

procedure TFrmFichaTecnica.prcTecidosMateriaPrima;
begin

   if dbProcurarMateriaPrima.Execute then
   begin

      If not(BaseDados_PCP.DS_MateriaPrima.State in [dsEdit]) then
         BaseDados_PCP.DS_MateriaPrima.Edit;

      BaseDados_PCP.DS_MateriaPrima.DataSet.FieldByname('REFERENCIA').AsString             := dbProcurarMateriaPrima.ResultFieldAsString('REFERENCIA');

   end;

end;


procedure TFrmFichaTecnica.GridMateriaPrimaTecidosEditButtonClick
  (Sender: TObject);
begin

   if (GridMateriaPrimaTecidos.SelectedField.FieldName = 'PRODUTO') then
      prcTecidosAdicionar;


end;

procedure TFrmFichaTecnica.GridMateriaPrimaTecidosKeyDown
  (Sender: TObject; var Key: Word; Shift: TShiftState);
begin

   IF Key = VK_F8 Then
      prcTecidosAdicionar;

end;

procedure TFrmFichaTecnica.GridMateriaPrimaTecidosKeyPress
  (Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmFichaTecnica.GridProcessosEditButtonClick(Sender: TObject);
begin

   if (GridProcessos.SelectedField.FieldName = 'ID_PROCESSO') then
   begin
      if dbEditPesquisarProcessos.Execute then
      begin
         If not(BaseDados_PCP.ds_pcp_processos.State in [dsEdit]) then
            BaseDados_PCP.ds_pcp_processos.Edit;

         BaseDados_PCP.ds_pcp_processos.DataSet.FieldByname('ID_PROCESSO').AsInteger :=dbEditPesquisarProcessos.ResultFieldAsInteger('CODIGO');
      End;
   end;

   if (GridProcessos.SelectedField.FieldName = 'INSTRUCOES') then
   begin
      PainelGridProcessos.visible :=True;
   end;

end;

procedure TFrmFichaTecnica.GridProcessosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_F8 Then
   begin
      if dbEditPesquisarProcessos.Execute then
      begin
         If not(BaseDados_PCP.ds_pcp_processos.State in [dsEdit]) then
            BaseDados_PCP.ds_pcp_processos.Edit;

         BaseDados_PCP.ds_pcp_processos.DataSet.FieldByname('ID_PROCESSO').AsInteger :=dbEditPesquisarProcessos.ResultFieldAsInteger('CODIGO');
      End;

   end;

end;

procedure TFrmFichaTecnica.GridProcessosKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmFichaTecnica.GroupBox15Enter(Sender: TObject);
begin
   FrmFrameBotoes1SpbSalvarClick(Sender);

end;

procedure TFrmFichaTecnica.GroupBox2Enter(Sender: TObject);
begin
   FrmFrameBotoes1SpbSalvarClick(Sender);
end;

procedure TFrmFichaTecnica.GroupBox6Enter(Sender: TObject);
begin
   FrmFrameBotoes1SpbSalvarClick(Sender);
end;

procedure TFrmFichaTecnica.GroupBox8Enter(Sender: TObject);
begin
   FrmFrameBotoes1SpbSalvarClick(Sender);

end;

procedure TFrmFichaTecnica.GroupBox9Enter(Sender: TObject);
begin
   FrmFrameBotoes1SpbSalvarClick(Sender);

end;

procedure TFrmFichaTecnica.GrupoMateriaPrimaEnter(Sender: TObject);
begin

   If (BaseDados_PCP.DS_MateriaPrima.DataSet.State in [dsEdit, dsInsert]) then
   begin
      BaseDados_PCP.DS_MateriaPrima.DataSet.Post;
   end;

end;

procedure TFrmFichaTecnica.GrupoServicosExternosEnter(Sender: TObject);
begin
   FrmFrameBotoes1SpbSalvarClick(Sender);

end;

procedure TFrmFichaTecnica.MenuItem1Click(Sender: TObject);
begin
   if not BaseDados_PCP.db_MateriaPrimaTecidosGrade.IsEmpty then
      BaseDados_PCP.db_MateriaPrimaTecidosGrade.Delete;

end;

procedure TFrmFichaTecnica.MenuItem2Click(Sender: TObject);
begin

   if not BaseDados_PCP.db_MateriaPrimaTecidosGrade.IsEmpty then
      while not BaseDados_PCP.db_MateriaPrimaTecidosGrade.eof do
         BaseDados_PCP.db_MateriaPrimaTecidosGrade.Delete;

end;

procedure TFrmFichaTecnica.DBGrid5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF Key = VK_F8 Then
   begin
     dbEditPesquisarCoresTecidos.SearchQuery.Clear;
     dbEditPesquisarCoresTecidos.SearchQuery.Add('SELECT DISTINCT COR_CODIGO, COR FROM VIEW_GRADEREFERENCIA');
     dbEditPesquisarCoresTecidos.SearchQuery.Add('WHERE');
     dbEditPesquisarCoresTecidos.SearchQuery.Add('CODIGO='+fncProduto_retCampo(BaseDados_PCP.db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString,'CODIGO') );
     dbEditPesquisarCoresTecidos.SearchQuery.Add('AND');
     dbEditPesquisarCoresTecidos.SearchQuery.Add('REFERENCIA='+QuotedStr(BaseDados_PCP.db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString)   );
     dbEditPesquisarCoresTecidos.SearchQuery.Add('AND');
     dbEditPesquisarCoresTecidos.SearchQuery.Add('GRADE_ID='+IntToStr(RetornaGradeReferencia(BaseDados_PCP.db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString))  );
     dbEditPesquisarCoresTecidos.SearchQuery.Add('AND');
     dbEditPesquisarCoresTecidos.SearchQuery.Add('%WHERE%');
     dbEditPesquisarCoresTecidos.SearchQuery.Add('ORDER BY COR');
     dbEditPesquisarCoresTecidos.SearchQuery.Add('');


     if dbEditPesquisarCoresTecidos.Execute then
     begin
        if not(BaseDados_PCP.ds_Cores_Modelos.DataSet.State
          in [dsEdit, dsInsert]) then

           BaseDados_PCP.db_MateriaPrimaTecidosGrade.Edit;

        BaseDados_PCP.db_MateriaPrimaTecidosGrade.FieldByname('COR_ID').AsInteger   :=dbEditPesquisarCoresTecidos.ResultFieldAsInteger('COR_CODIGO');
        BaseDados_PCP.db_MateriaPrimaTecidosGrade.FieldByname('COR_NOME').AsString  :=dbEditPesquisarCoresTecidos.ResultFieldAsString('COR');

     End;

   end;

end;

procedure TFrmFichaTecnica.DBGrid5KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmFichaTecnica.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF Key = VK_F8 Then
   begin
      if dbEditPesquisarProcessos.Execute then
      begin
         If not(BaseDados_PCP.ds_pcp_processos.State in [dsEdit]) then
            BaseDados_PCP.ds_pcp_processos.Edit;

         BaseDados_PCP.ds_pcp_processos.DataSet.FieldByname('ID_PROCESSO').AsInteger :=dbEditPesquisarProcessos.ResultFieldAsInteger('CODIGO');
      End;
   end;

end;

procedure TFrmFichaTecnica.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmFichaTecnica.GridMateriaPrimaGradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF Key = VK_F8 Then
   begin

     if (GridMateriaPrimaGrade.SelectedField.FieldName = 'PADRAOCORNOME') then
     begin
        editPesquisaMateriaCor.SearchQuery.Clear;
        editPesquisaMateriaCor.SearchQuery.Add('SELECT DISTINCT COR_CODIGO, COR FROM VIEW_GRADEREFERENCIA');
        editPesquisaMateriaCor.SearchQuery.Add('WHERE');
        editPesquisaMateriaCor.SearchQuery.Add('CODIGO='+fncProduto_retCampo(BaseDados_PCP.db_MateriaPrimaGrade.FieldByName('REFERENCIA').AsString,'CODIGO') );
        editPesquisaMateriaCor.SearchQuery.Add('AND');
        editPesquisaMateriaCor.SearchQuery.Add('REFERENCIA='+QuotedStr(BaseDados_PCP.db_MateriaPrimaGrade.FieldByName('REFERENCIA').AsString)   );
        editPesquisaMateriaCor.SearchQuery.Add('AND');
        editPesquisaMateriaCor.SearchQuery.Add('GRADE_ID='+IntToStr(RetornaGradeReferencia(BaseDados_PCP.db_MateriaPrimaGrade.FieldByName('REFERENCIA').AsString))  );
        editPesquisaMateriaCor.SearchQuery.Add('AND');
        editPesquisaMateriaCor.SearchQuery.Add('%WHERE%');
        editPesquisaMateriaCor.SearchQuery.Add('ORDER BY COR');
        editPesquisaMateriaCor.SearchQuery.Add('');

        if editPesquisaMateriaCor.Execute then
        begin
           if not(BaseDados_PCP.db_MateriaPrimaGrade.State in [dsEdit, dsInsert]) then

              BaseDados_PCP.db_MateriaPrimaGrade.Edit;

           BaseDados_PCP.db_MateriaPrimaGrade.FieldByname('PADRAOCORID').AsInteger   :=editPesquisaMateriaCor.ResultFieldAsInteger('COR_CODIGO');
           BaseDados_PCP.db_MateriaPrimaGrade.FieldByname('PADRAOCORNOME').AsString  :=editPesquisaMateriaCor.ResultFieldAsString('COR');

        End; //if (GridMateriaPrima.SelectedField.FieldName = 'TAMANHOPADRAO') then
     end;

     if (GridMateriaPrimaGrade.SelectedField.FieldName = 'TAMANHOPADRAO') then
     begin
        editPesquisaMateriaTamanho.SearchQuery.Clear;
        editPesquisaMateriaTamanho.SearchQuery.Add('SELECT DISTINCT TAMANHO_CODIGO, TAMANHO, TAMANHO_ORDEM  FROM VIEW_GRADEREFERENCIA');
        editPesquisaMateriaTamanho.SearchQuery.Add('WHERE');
        editPesquisaMateriaTamanho.SearchQuery.Add('CODIGO='+fncProduto_retCampo(BaseDados_PCP.db_MateriaPrimaGrade.FieldByName('REFERENCIA').AsString,'CODIGO') );
        editPesquisaMateriaTamanho.SearchQuery.Add('AND');
        editPesquisaMateriaTamanho.SearchQuery.Add('REFERENCIA='+QuotedStr(BaseDados_PCP.db_MateriaPrimaGrade.FieldByName('REFERENCIA').AsString)   );
        editPesquisaMateriaTamanho.SearchQuery.Add('AND');
        editPesquisaMateriaTamanho.SearchQuery.Add('GRADE_ID='+IntToStr(RetornaGradeReferencia(BaseDados_PCP.db_MateriaPrimaGrade.FieldByName('REFERENCIA').AsString))  );
        editPesquisaMateriaTamanho.SearchQuery.Add('AND');
        editPesquisaMateriaTamanho.SearchQuery.Add('%WHERE%');
        editPesquisaMateriaTamanho.SearchQuery.Add('ORDER BY TAMANHO_ORDEM');
        editPesquisaMateriaTamanho.SearchQuery.Add('');
        if editPesquisaMateriaTamanho.Execute then
        begin
           if not(BaseDados_PCP.db_MateriaPrimaGrade.State in [dsEdit, dsInsert]) then

              BaseDados_PCP.db_MateriaPrimaGrade.Edit;

           BaseDados_PCP.db_MateriaPrimaGrade.FieldByname('TAMANHOPADRAO').AsString   :=editPesquisaMateriaTamanho.ResultFieldAsString('TAMANHO');

        End;
     end;  //if (GridMateriaPrima.SelectedField.FieldName = 'TAMANHOPADRAO') then


   end;


end;

procedure TFrmFichaTecnica.GridMateriaPrimaGradeKeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmFichaTecnica.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmFichaTecnica.DBGrid4KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmFichaTecnica.GridMaquinasEditButtonClick(Sender: TObject);
begin

   if (GridMaquinas.SelectedField.FieldName = 'ID_MAQUINA') then
   begin
      if LocalizaOrdemMaquina.Execute then
      begin
            If not(BaseDados_PCP.ds_pcp_Maquinas.State in [dsEdit]) then
               BaseDados_PCP.ds_pcp_Maquinas.Edit;

            BaseDados_PCP.ds_pcp_Maquinas.DataSet.FieldByname('ID_MAQUINA').AsInteger :=LocalizaOrdemMaquina.ResultFieldAsInteger('CODIGO');
      End;
   end;

end;

procedure TFrmFichaTecnica.GridMaquinasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_F8 Then
   begin
      if LocalizaOrdemMaquina.Execute then
      begin
            If not(BaseDados_PCP.ds_pcp_Maquinas.State in [dsEdit]) then
               BaseDados_PCP.ds_pcp_Maquinas.Edit;

            BaseDados_PCP.ds_pcp_Maquinas.DataSet.FieldByname('ID_MAQUINA').AsInteger :=LocalizaOrdemMaquina.ResultFieldAsInteger('CODIGO');
      End;
   end;

end;

procedure TFrmFichaTecnica.DBGrid6KeyPress(Sender: TObject;
  var Key: Char);
begin

   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmFichaTecnica.Deletar1Click(Sender: TObject);
begin

   if not BaseDados_PCP.db_MateriaPrimaGrade.IsEmpty then
      BaseDados_PCP.db_MateriaPrimaGrade.Delete;

end;

procedure TFrmFichaTecnica.EditGradeTamanhosChange(Sender: TObject);
Var
   igrade: Integer;

begin

   try
      igrade := StrToInt(EditGradeTamanhos.text);
   except
      igrade := 0;
   end;

   db_GradeLista.Close;
   db_GradeLista.ParamByName('GRADE').Clear;;
   db_GradeLista.ParamByName('GRADE').AsInteger := igrade;
   db_GradeLista.open;
   db_GradeLista.Refresh;

end;

procedure TFrmFichaTecnica.Excluirtudo1Click(Sender: TObject);
begin

   if not BaseDados_PCP.db_MateriaPrimaGrade.IsEmpty then
      while not BaseDados_PCP.db_MateriaPrimaGrade.eof do
         BaseDados_PCP.db_MateriaPrimaGrade.Delete;

end;

procedure TFrmFichaTecnica.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   {
   IF Key = VK_F6 THEN
   Begin

      if Tab_Principal.ActivePageIndex <= 0 then
      begin
         Tab_Principal.ActivePageIndex := 0;
         Exit;
      end;

      Tab_Principal.ActivePageIndex := Tab_Principal.ActivePageIndex - 1;

   End;

   // Proximo
   IF Key = VK_F7 THEN
   Begin
      // if  Tab_Principal.ActivePageIndex>=3  then
      if Tab_Principal.ActivePageIndex >= Tab_Principal.PageCount - 1 then
      begin
         Tab_Principal.ActivePageIndex := 0;
         Exit;
      end;

      Tab_Principal.ActivePageIndex := Tab_Principal.ActivePageIndex + 1;
   End;
   }


   {
   If Key = VK_Escape then
   begin
      // se estiver em modo edição apenas cancelar

      Close;

   end;
   }

end;

procedure TFrmFichaTecnica.FrmFrameBotoes1SpbAdicionarClick
  (Sender: TObject);
begin

   Tab_Principal.ActivePageIndex := 0;

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditReferencia.Setfocus;

end;

procedure TFrmFichaTecnica.FrmFrameBotoes1SpbEditarClick
  (Sender: TObject);
begin

   FrmFrameBotoes1.SpbEditarClick(Sender);
   BaseDados_PCP.db_MateriaPrima.Edit;
   BaseDados_PCP.db_MateriaPrimaTecidos.Edit;
   BaseDados_PCP.db_cores_Modelos.Edit;
   BaseDados_PCP.db_pcp_processos.Edit;
   BaseDados_PCP.db_PCP_Custos.Edit;
   BaseDados_PCP.db_PCP_Medidas.Edit;
   BaseDados_PCP.db_pcp_MedidasPosLavagem.Edit;
   BaseDados_PCP.db_referencia_Fotos.Edit;

end;

procedure TFrmFichaTecnica.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmFichaTecnica.FrmFrameBotoes1SpbSalvarClick
  (Sender: TObject);
begin

   ValidarCampos;

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   iAchar[0] := BaseDados_PCP.db_referencias.FieldByname('CODIGO').AsInteger;

   // **************************************************************************
   // Salvar sub tabelas (mestre-detalhe)
   // **************************************************************************
   If (BaseDados_PCP.DS_MateriaPrima.DataSet.State in [dsEdit, dsInsert]) then
   begin
      BaseDados_PCP.DS_MateriaPrima.DataSet.Post;
   end;

   If (BaseDados_PCP.ds_Cores_Modelos.DataSet.State in [dsEdit, dsInsert]) then
   begin
      BaseDados_PCP.ds_Cores_Modelos.DataSet.Post;
   end;

   If (BaseDados_PCP.ds_pcp_processos.DataSet.State in [dsEdit, dsInsert]) then
   begin
      BaseDados_PCP.ds_pcp_processos.DataSet.Post;
   end;

   If (BaseDados_PCP.ds_PCP_Custos.DataSet.State in [dsEdit, dsInsert]) then
   begin
      BaseDados_PCP.ds_PCP_Custos.DataSet.Post;
   end;

   If (BaseDados_PCP.ds_PCP_Medidas.DataSet.State in [dsEdit, dsInsert]) then
   begin
      BaseDados_PCP.ds_PCP_Medidas.DataSet.Post;
   end;

   If (BaseDados_PCP.ds_PCP_Maquinas.DataSet.State in [dsEdit, dsInsert]) then
   begin
      BaseDados_PCP.ds_PCP_Maquinas.DataSet.Post;
   end;

   If (BaseDados_PCP.ds_referencia_Fotos.DataSet.State in [dsEdit,
     dsInsert]) then
   begin
      BaseDados_PCP.ds_referencia_Fotos.DataSet.Post;
   end;

   // **************************************************************************
   // Depois de salvar, aplicar ApplyUpdate
   // **************************************************************************

   nMarkup := BaseDados_PCP.db_referencias.FieldByname('MARKUPID').AsInteger;

   if (nMarkup>0) then
   begin
      Try
         SP_MarkupAplicar.ParamByName('CODIGO').AsInteger  := BaseDados_PCP.db_referencias.FieldByname('CODIGO').AsInteger;
         SP_MarkupAplicar.ParamByName('NMARKUP').AsInteger := nMarkup;
         SP_MarkupAplicar.ExecProc;
      Finally
         SP_MarkupAplicar.close;
      End;
   end;


   Reabrirtabela;
   BaseDados_PCP.db_referencias.Close;
   BaseDados_PCP.db_referencias.ParamByName('CODIGO').AsInteger := iAchar[0];
   BaseDados_PCP.db_referencias.open;

   Atualizar_Foto;

   //Aviso('Dados salvos com sucesso.');

end;

procedure TFrmFichaTecnica.FrmFrameBotoes1SpbCancelarClick
  (Sender: TObject);
begin

   FrmFrameBotoes1.SpbCancelarClick(Sender);

   BaseDados_PCP.db_MateriaPrima.Cancel;
   BaseDados_PCP.db_MateriaPrimaTecidos.Cancel;
   BaseDados_PCP.db_cores_Modelos.Cancel;
   BaseDados_PCP.db_pcp_processos.Cancel;
   BaseDados_PCP.db_PCP_Custos.Cancel;
   BaseDados_PCP.db_PCP_Medidas.Cancel;
   BaseDados_PCP.db_pcp_MedidasPosLavagem.Cancel;
   BaseDados_PCP.db_referencia_Fotos.Cancel;

end;

procedure TFrmFichaTecnica.FrmFrameBotoes1SpbExcluirClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);
   Atualizar_Foto;

end;

procedure TFrmFichaTecnica.FrmFrameBotoes1SpbProcurarClick
  (Sender: TObject);
begin

   if dbProcurarFichaTecnica.Execute then
   begin

      BaseDados_PCP.db_referencias.Close;
      BaseDados_PCP.db_referencias.ParamByName('CODIGO').AsInteger := dbProcurarFichaTecnica.ResultFieldAsInteger('CODIGO');
      BaseDados_PCP.db_referencias.open;

      Reabrirtabela;
      Atualizar_Foto;
   end;

end;

procedure TFrmFichaTecnica.FrmFrameBotoes1SpbPrimeiroClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbPrimeiroClick(Sender);

end;

procedure TFrmFichaTecnica.FrmFrameBotoes1SpbAnteriorClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbAnteriorClick(Sender);

end;

procedure TFrmFichaTecnica.FrmFrameBotoes1SpbProximoClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbProximoClick(Sender);

end;

procedure TFrmFichaTecnica.FrmFrameBotoes1SpbUltimoClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbUltimoClick(Sender);

end;

procedure TFrmFichaTecnica.FotoReferenciaClick(Sender: TObject);
begin

   if BaseDados_PCP.db_referencias.FieldByname('GRADE').AsInteger <= 0 then
   begin
      BeepCritica;
      Informar('Ainda não foi informado uma grade de tamanho');
      EditGradeTamanhos.Setfocus;

      Exit;
   end;

   if BaseDados_PCP.db_cores_Modelos.RecordCount <= 0 then
   begin
      BeepCritica;
      Informar('Ainda não foi informado uma grade de cores');

      Tab_Principal.ActivePage := Tab_1;
      GridGradeCores.Setfocus;
      Exit;
   end;

   FrmFichaTecnicaGradeFoto := TFrmFichaTecnicaGradeFoto.create(self);
   FrmFichaTecnicaGradeFoto.ShowModal;

end;

procedure TFrmFichaTecnica.FrmFrameBotoes1SpbImprimirClick
  (Sender: TObject);
begin

   db_MARKUP.close;
   FrmFichaTecnicaImprimir := TFrmFichaTecnicaImprimir.create(self);
   FrmFichaTecnicaImprimir.ShowModal;

   if sFichaTecnica='' then
      exit;

   db_view_referencias.Close;
   db_view_referencias.open;

   db_ReferenciaGrade.Close;
   db_ReferenciaGrade.open;


   if sFichaTecnica='FICHATECNICA' then
   Begin
      frxR_FichaTecnica.ShowReport;
   End;

   if sFichaTecnica='FICHATECNICAIMAGEM' then
   Begin
      frxReportImagem.ShowReport;
   End;

   if sFichaTecnica='FICHACUSTO' then
   Begin

      {
      SP_MarkupAplicar.ParamByName('CODIGO').AsInteger  := BaseDados_PCP.db_referencias.FieldByname('CODIGO').AsInteger;
      SP_MarkupAplicar.ParamByName('NMARKUP').AsInteger := nMarkup;
      SP_MarkupAplicar.ExecProc;
      SP_MarkupAplicar.close;
      }

      frxFichaCusto.ShowReport;
   End;

   db_ReferenciaGrade.Close;
   db_view_referencias.Close;

end;

end.
