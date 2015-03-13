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

unit FEtiquetasGerar;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, DB, System.Math,     
   Spin, FrmRelatorios, jpeg, DBCtrls, ComCtrls,
   frxClass, frxDBSet,   Menus, frxDesgn,
   ACBrDevice, ACBrETQ, ACBrBase, Grids, DBGrids, dblookup, FFrameBarra,
  ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client ;

type
   TFrmEtiquetasGerar = class(TForm)
      PainelPrincipal: TPanel;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      BoxConfiguracoes: TGroupBox;
      GroupBox1: TGroupBox;
      SpeedButton1: TSpeedButton;
      ComboEtiquetas: TDBLookupComboBox;
      db_EtiquetasLayout:  TFDQuery;
      ds_EtiquetasLayout: TDataSource;
    PopupMenu1: TPopupMenu;
    DesignReport1: TMenuItem;
    DesignReportPreview1: TMenuItem;
    Panel1: TPanel;
    ckMemoria: TCheckBox;
    ACBrETQ: TACBrETQ;
    editQtdeDescricao: TSpinEdit;
    Label2: TLabel;
    dsEtiquetasCor: TDataSource;
    dbEtiquetasCor: TFDQuery;
    dbEtiquetasTamanho: TFDQuery;
    dsEtiquetasTamanho: TDataSource;
    FrmFrameBarra1: TFrmFrameBarra;
    Image2: TImage;
    StringGridOpcoes: TStringGrid;
    Label6: TLabel;
    cbDPI: TComboBox;
    gbxOrdemProducao: TGroupBox;
    EditOP: TIDBEditDialog;
    ds_lista: TDataSource;
    db_lista: TFDQuery;
    db_listaDESCRICAO: TStringField;
    db_listaCODIGOFORNECEDOR: TStringField;
    db_listaFORNECEDOR: TStringField;
    db_listaGRUPO: TStringField;
    db_listaCODIGOBARRA: TStringField;
    db_listaCODIGOPRODUTO: TStringField;
    db_listaCOR: TStringField;
    db_listaTAMANHO: TStringField;
    db_listaUNIDADE: TStringField;
    db_listaPRECO: TBCDField;
    db_listaQUANTIDADE: TIntegerField;
    gbxProdutos: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditReferencia: TLabeledEdit;
    NumQtdeEtiquetas: TSpinEdit;
    EditCor: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    dbProcurarFichaTecnica: TIDBEditDialog;
    DS_Produtos: TDataSource;
    DB_Produtos: TFDQuery;
    ProgressBar1: TProgressBar;
    Panel3: TPanel;
    rdpFiltro: TRadioGroup;
    gbxPedidoVenda: TGroupBox;
    editPedidoVenda: TIDBEditDialog;
    chkCodigoCompleto: TCheckBox;

      procedure FormCreate(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure EditReferenciaKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure NumQtdeEtiquetasChange(Sender: TObject);
      procedure SpeedButton1Click(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ComboEtiquetasEnter(Sender: TObject);
    procedure EditReferenciaExit(Sender: TObject);
    procedure ModeloFimExit(Sender: TObject);
    procedure rdpFiltroClick(Sender: TObject);

   private
      { Private declarations }

     ColunaEsq,
     ColunaDir,
     LinhaCodigo,
     LinhaDescricao,
     LinhaCor,
     nAvanco,
     sTamanhoBarra,
     strLarguraGraficoBarras, strLarguraBarrinhas



      : String;

     nFonteSt_L,
     nFonteCodProd_L,
     nFonteCor_L,
     nFonteTAM_L,
     nFonteOP_L,
     nFonteLOTE_L,
     nFontePRECO_L,

     nFonteSt_R,
     nFonteCor_R,
     nFonteTAM_R,
     nFonteCodProd_R,
     nFonteOP_R,
     nFonteLOTE_R,
     nFontePRECO_R,


     nFonteSt_R3,
     nFonteCor_R3,
     nFonteTAM_R3,
     nFonteCodProd_R3,
     nFonteOP_R3,
     nFonteLOTE_R3,
     nFontePRECO_R3

       : integer;

     becExibeEtiqueta1,
     becExibeEtiqueta2,
     becExibeEtiqueta3   : TACBrETQBarraExibeCodigo;


     Procedure ImprimirEtiqueta;
     procedure AtivarACBrETQ;
     Function  ConverteTipoDriver(sDriver : String) : TACBrETQModelo;
    procedure DadosCortamanho;
    procedure prcCriarGrade;
    procedure prcMontarDados;

   public
      { Public declarations }
   end;

var
   FrmEtiquetasGerar: TFrmEtiquetasGerar;
   ncontador,
   ntotalizador,
   nProximaColuna,
   nMaximoColunas
    : Integer;


implementation

uses FPrincipal, Biblioteca, Global,
  FEtiquetaProdutosConfigurar, SQLServer, Biblioteca_pcp,
  FEtiquetasWindowsCriarGrade;

{$R *.DFM}

procedure TFrmEtiquetasGerar.FormCreate(Sender: TObject);
begin

   db_EtiquetasLayout.Open;

end;

procedure TFrmEtiquetasGerar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vk_escape then
      close;
end;

procedure TFrmEtiquetasGerar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_EtiquetasLayout.close;
   Action := cafree;
end;

procedure TFrmEtiquetasGerar.Btn_ImprimirClick(Sender: TObject);
VAR
   X, QTDE_ETIQUETAS: INTEGER;

begin

   ACBrETQ.Desativar;

   if ComboEtiquetas.text = '' then
   Begin
      Informar('Selecione o layout da etiqueta');
      ComboEtiquetas.SetFocus;
      exit;
   End;

   If NumQtdeEtiquetas.Value < 1 then
   Begin
      Informar('Informe a quantidade de etiquetas para cada produto');
      NumQtdeEtiquetas.SetFocus;
      exit;
   End;


   if rdpFiltro.ItemIndex=1 then
   begin
      if StrToIntDef(EditOP.Text,0)=0 then
      begin
        Erro('Informe a Ordem de Produção');
        exit;
      end;
   end;


   prcStatusMessage('Etiquetas de produtos','processando informações, aguarde...',True);
   prcMontarDados;
   prcStatusMessage('','',false);

   ACBrETQ.Desativar;

   Application.ProcessMessages;
   prcStatusMessage('Etiquetas de produtos','imprimindo etiquetas, aguarde...',True);
   ImprimirEtiqueta;
   prcStatusMessage('','',false);
   Application.ProcessMessages;

   AvisoSistema('Etiquetas foram impressas');

End;


procedure TFrmEtiquetasGerar.prcMontarDados;
begin

   // classificar etiquetas
   if rdpFiltro.ItemIndex=2 then
   begin
      strProduto     := AllTrim(EditReferencia.text);
      strCor         := dbEtiquetasCor.FieldByName('COR').AsString;
      strTamanho     := dbEtiquetasTamanho.FieldByName('TAMANHO').AsString;

      prcCriarGrade;

   end;

   if (rdpFiltro.ItemIndex in [0,1,2]) then
   begin
      db_lista.close;
      db_lista.sql.clear;
      db_lista.sql.add(' delete from CONFIG_ETIQUETAS01_TEMP  ');
      db_lista.ExecSQL;
   end;

   db_lista.close;
   db_lista.sql.clear;
   db_lista.sql.add(' select * from CONFIG_ETIQUETAS01_TEMP  ');
   db_lista.open;


   CodIni := '';
   CodFim := StringOfChar('Z',30);


    if (rdpFiltro.ItemIndex in [0,1,2]) then
    begin
      if rdpFiltro.ItemIndex=0 then
      begin
         DB_Produtos.close;
         DB_Produtos.sql.clear;
         DB_Produtos.sql.add('SELECT * FROM VIEW_CADPRODUTOS_GRADES');
         DB_Produtos.sql.add('WHERE');
         DB_Produtos.sql.add('QUANTIDADE>0 ');
         DB_Produtos.sql.add(' ');
         DB_Produtos.sql.add('ORDER BY REFERENCIA, COR, ORDEM_GRADE');
         DB_Produtos.open;
      end;

      if rdpFiltro.ItemIndex=1 then
      begin
         DB_Produtos.close;
         DB_Produtos.sql.clear;
         DB_Produtos.sql.add('SELECT * FROM VIEW_ORDEMPRODUCAO_GRADE');
         DB_Produtos.sql.add('WHERE');
         DB_Produtos.sql.add('QUANTIDADE>0 ');
         DB_Produtos.sql.add('AND ');
         DB_Produtos.sql.add('CODIGO=:NCODIGO ');
         DB_Produtos.sql.add(' ');
         DB_Produtos.sql.add(' ');
         DB_Produtos.sql.add('ORDER BY REFERENCIA, COR, ORDEM_GRADE');
         DB_Produtos.ParamByName('NCODIGO').AsInteger := StrToIntDef(EditOP.Text,0);
         DB_Produtos.open;
      end;


      if rdpFiltro.ItemIndex=2 then
      begin
         DB_Produtos.close;
         DB_Produtos.sql.clear;
         DB_Produtos.sql.add('SELECT * FROM VIEW_CADPRODUTOS_GRADES');
         DB_Produtos.sql.add('WHERE');
         DB_Produtos.sql.add('REFERENCIA=:SREFERENCIA ');
         DB_Produtos.sql.add('AND ');
         DB_Produtos.sql.add('COR=:SCOR ');
         DB_Produtos.sql.add('AND ');
         DB_Produtos.sql.add('TAMANHO=:STAMANHO ');
         DB_Produtos.sql.add(' ');
         DB_Produtos.sql.add('ORDER BY REFERENCIA');
         DB_Produtos.ParamByName('SREFERENCIA').AsString  := strProduto;
         DB_Produtos.ParamByName('SCOR').AsString         := strCor;
         DB_Produtos.ParamByName('STAMANHO').AsString     := strTamanho;
         DB_Produtos.open;
      end;


      // cria lista de etiquetas
      db_lista.close;
      db_lista.open;

      ntotalizador :=0;

      while not DB_Produtos.eof do
      begin

         if (rdpFiltro.ItemIndex in [0,1,2]) then
            ntotalizador    :=DB_Produtos.FieldByName('QUANTIDADE').AsInteger;

         if rdpFiltro.ItemIndex=2 then
            ntotalizador    :=NumQtdeEtiquetas.Value;

         FOR ncontador := 1 TO ntotalizador DO
         BEGIN
            db_lista.append;
            db_lista.FieldByName('CODIGOPRODUTO').AsString   :=  UPPERCASE(DB_Produtos.FieldByName('REFERENCIA').AsString);
            db_lista.FieldByName('CODIGOBARRA').AsString     :=  UPPERCASE(DB_Produtos.FieldByName('IDENTIFICADOR').AsString);
            db_lista.FieldByName('DESCRICAO').AsString       :=  UPPERCASE(DB_Produtos.FieldByName('DESCRICAO').AsString);;
            db_lista.FieldByName('UNIDADE').AsString         :=  UPPERCASE(DB_Produtos.FieldByName('UNIDADE').AsString);
            db_lista.FieldByName('COR').AsString             :=  UPPERCASE(DB_Produtos.FieldByName('COR').AsString);
            db_lista.FieldByName('TAMANHO').AsString         :=  UPPERCASE(DB_Produtos.FieldByName('TAMANHO').AsString);
            db_lista.FieldByName('PRECO').AsFloat            :=  StrToFloatDef(fncProduto_retCampo(UPPERCASE(DB_Produtos.FieldByName('REFERENCIA').AsString),'PRC_VENDA'),0);
            db_lista.FieldByName('QUANTIDADE').AsInteger     :=  ntotalizador;
            db_lista.POST;
         END;

         DB_Produtos.next;
      end;
    end;  // if (rdpFiltro.ItemIndex in [0,1,2]) then
    db_lista.open;


end;

procedure TFrmEtiquetasGerar.ImprimirEtiqueta;
begin

   nProximaColuna :=0;
   nMaximoColunas :=0;

   AtivarACBrETQ;

  // --------------------------------------------------------------------------------------
  // primeira coluna
  // --------------------------------------------------------------------------------------
  l_LinhaDescricao      := db_EtiquetasLayout.FieldByName('L_DESCRICAO_LINHA').AsInteger;
  l_LinhaCodProduto     := db_EtiquetasLayout.FieldByName('L_CODIGO_LINHA').AsInteger;
  l_LinhaCor            := db_EtiquetasLayout.FieldByName('L_COR_LINHA').AsInteger;
  l_LinhaTam            := db_EtiquetasLayout.FieldByName('L_TAMANHO_LINHA').AsInteger;
  l_LinhaCBARRA         := db_EtiquetasLayout.FieldByName('L_CODBARRAS_LINHA').AsInteger;
  l_LinhaOP             := db_EtiquetasLayout.FieldByName('L_OP_LINHA').AsInteger;
  l_LinhaLote           := db_EtiquetasLayout.FieldByName('L_LOTE_LINHA').AsInteger;
  l_LinhaPreco          := db_EtiquetasLayout.FieldByName('L_PRECO_LINHA').AsInteger;



  l_ColunaDescricao     := db_EtiquetasLayout.FieldByName('L_DESCRICAO_COLUNA').AsInteger;
  l_ColunaCodProduto    := db_EtiquetasLayout.FieldByName('L_CODIGO_COLUNA').AsInteger;
  l_ColunaCor           := db_EtiquetasLayout.FieldByName('L_COR_COLUNA').AsInteger;
  l_ColunaTam           := db_EtiquetasLayout.FieldByName('L_TAMANHO_COLUNA').AsInteger;
  l_ColunaCBARRA        := db_EtiquetasLayout.FieldByName('L_CODBARRAS_COLUNA').AsInteger;
  l_ColunaOP            := db_EtiquetasLayout.FieldByName('L_OP_COLUNA').AsInteger;
  l_ColunaLote          := db_EtiquetasLayout.FieldByName('L_LOTE_COLUNA').AsInteger;
  l_ColunaPreco         := db_EtiquetasLayout.FieldByName('L_PRECO_COLUNA').AsInteger;

  // --------------------------------------------------------------------------------------
  // segunda coluna
  // --------------------------------------------------------------------------------------
  r_LinhaDescricao      := db_EtiquetasLayout.FieldByName('R_DESCRICAO_LINHA').AsInteger;
  r_LinhaCodProduto     := db_EtiquetasLayout.FieldByName('R_CODIGO_LINHA').AsInteger;
  r_LinhaCor            := db_EtiquetasLayout.FieldByName('R_COR_LINHA').AsInteger;
  r_LinhaTam            := db_EtiquetasLayout.FieldByName('R_TAMANHO_LINHA').AsInteger;
  r_LinhaCBARRA         := db_EtiquetasLayout.FieldByName('R_CODBARRAS_LINHA').AsInteger;
  r_LinhaOP             := db_EtiquetasLayout.FieldByName('R_OP_LINHA').AsInteger;
  r_LinhaLote           := db_EtiquetasLayout.FieldByName('R_LOTE_LINHA').AsInteger;
  r_LinhaPreco          := db_EtiquetasLayout.FieldByName('R_PRECO_LINHA').AsInteger;



  r_ColunaDescricao     := db_EtiquetasLayout.FieldByName('R_DESCRICAO_COLUNA').AsInteger;
  r_ColunaCodProduto    := db_EtiquetasLayout.FieldByName('R_CODIGO_COLUNA').AsInteger;
  r_ColunaCor           := db_EtiquetasLayout.FieldByName('R_COR_COLUNA').AsInteger;
  r_ColunaTam           := db_EtiquetasLayout.FieldByName('R_TAMANHO_COLUNA').AsInteger;
  r_ColunaCBARRA        := db_EtiquetasLayout.FieldByName('R_CODBARRAS_COLUNA').AsInteger;
  r_ColunaOP            := db_EtiquetasLayout.FieldByName('R_OP_COLUNA').AsInteger;
  r_ColunaLote          := db_EtiquetasLayout.FieldByName('R_LOTE_COLUNA').AsInteger;
  r_ColunaPreco         := db_EtiquetasLayout.FieldByName('R_PRECO_COLUNA').AsInteger;

  // --------------------------------------------------------------------------------------
  // terceira coluna
  // --------------------------------------------------------------------------------------
  r3_LinhaDescricao      := db_EtiquetasLayout.FieldByName('R3_DESCRICAO_LINHA').AsInteger;
  r3_LinhaCodProduto     := db_EtiquetasLayout.FieldByName('R3_CODIGO_LINHA').AsInteger;
  r3_LinhaCor            := db_EtiquetasLayout.FieldByName('R3_COR_LINHA').AsInteger;
  r3_LinhaTam            := db_EtiquetasLayout.FieldByName('R3_TAMANHO_LINHA').AsInteger;
  r3_LinhaCBARRA         := db_EtiquetasLayout.FieldByName('R3_CODBARRAS_LINHA').AsInteger;
  r3_LinhaOP             := db_EtiquetasLayout.FieldByName('R3_OP_LINHA').AsInteger;
  r3_LinhaLote           := db_EtiquetasLayout.FieldByName('R3_LOTE_LINHA').AsInteger;
  r3_LinhaPreco          := db_EtiquetasLayout.FieldByName('R3_PRECO_LINHA').AsInteger;

  r3_ColunaDescricao     := db_EtiquetasLayout.FieldByName('R3_DESCRICAO_COLUNA').AsInteger;
  r3_ColunaCodProduto    := db_EtiquetasLayout.FieldByName('R3_CODIGO_COLUNA').AsInteger;
  r3_ColunaCor           := db_EtiquetasLayout.FieldByName('R3_COR_COLUNA').AsInteger;
  r3_ColunaTam           := db_EtiquetasLayout.FieldByName('R3_TAMANHO_COLUNA').AsInteger;
  r3_ColunaCBARRA        := db_EtiquetasLayout.FieldByName('R3_CODBARRAS_COLUNA').AsInteger;
  r3_ColunaOP            := db_EtiquetasLayout.FieldByName('R3_OP_COLUNA').AsInteger;
  r3_ColunaLote          := db_EtiquetasLayout.FieldByName('R3_LOTE_COLUNA').AsInteger;
  r3_ColunaPreco         := db_EtiquetasLayout.FieldByName('R3_PRECO_COLUNA').AsInteger;

  // --------------------------------------------------------------------------------------
  // terceira coluna
  // --------------------------------------------------------------------------------------
  nFonteSt_L        := db_EtiquetasLayout.FieldByName('L_DESCRICAO_FONTE').AsInteger;
  nFonteCodProd_L   := db_EtiquetasLayout.FieldByName('L_CODIGO_FONTE').AsInteger;
  nFonteCor_L       := db_EtiquetasLayout.FieldByName('L_COR_FONTE').AsInteger;
  nFonteTAM_L       := db_EtiquetasLayout.FieldByName('L_TAMANHO_FONTE').AsInteger;

  nFonteOP_L        := db_EtiquetasLayout.FieldByName('L_OP_FONTE').AsInteger;
  nFonteLOTE_L      := db_EtiquetasLayout.FieldByName('L_LOTE_FONTE').AsInteger;
  nFontePRECO_L     := db_EtiquetasLayout.FieldByName('L_PRECO_FONTE').AsInteger;

  nFonteSt_R        := db_EtiquetasLayout.FieldByName('R_DESCRICAO_FONTE').AsInteger;
  nFonteCodProd_R   := db_EtiquetasLayout.FieldByName('R_CODIGO_FONTE').AsInteger;
  nFonteCor_R       := db_EtiquetasLayout.FieldByName('R_COR_FONTE').AsInteger;
  nFonteTAM_R       := db_EtiquetasLayout.FieldByName('R_TAMANHO_FONTE').AsInteger;

  nFonteOP_R        := db_EtiquetasLayout.FieldByName('R_OP_FONTE').AsInteger;
  nFonteLOTE_R      := db_EtiquetasLayout.FieldByName('R_LOTE_FONTE').AsInteger;
  nFontePRECO_R     := db_EtiquetasLayout.FieldByName('R_PRECO_FONTE').AsInteger;

  nFonteSt_R3       := db_EtiquetasLayout.FieldByName('R3_DESCRICAO_FONTE').AsInteger;
  nFonteCodProd_R3  := db_EtiquetasLayout.FieldByName('R3_CODIGO_FONTE').AsInteger;
  nFonteCor_R3      := db_EtiquetasLayout.FieldByName('R3_COR_FONTE').AsInteger;
  nFonteTAM_R3      := db_EtiquetasLayout.FieldByName('R3_TAMANHO_FONTE').AsInteger;

  nFonteOP_R3        := db_EtiquetasLayout.FieldByName('R3_OP_FONTE').AsInteger;
  nFonteLOTE_R3      := db_EtiquetasLayout.FieldByName('R3_LOTE_FONTE').AsInteger;
  nFontePRECO_R3     := db_EtiquetasLayout.FieldByName('R3_PRECO_FONTE').AsInteger;

  becExibeEtiqueta1  := becNAO;
  becExibeEtiqueta2  := becNAO;
  becExibeEtiqueta3  := becNAO;

  if db_EtiquetasLayout.FieldByName('L_CODBARRAS_EXIBECODIGO').AsString='S' then
     becExibeEtiqueta1  :=becSIM;

  if db_EtiquetasLayout.FieldByName('R_CODBARRAS_EXIBECODIGO').AsString='S' then
     becExibeEtiqueta2  :=becSIM;

  if db_EtiquetasLayout.FieldByName('R3_CODBARRAS_EXIBECODIGO').AsString='S' then
     becExibeEtiqueta3  :=becSIM;


  //sLargura1         := FloatToStr(EditLarguraBarra1.Value) ;  //IntToStr(EditLargura1.Value);
  //sLargura2         := FloatToStr(EditLarguraBarra2.Value);  //IntToStr(EditLargura2.Value);

  strLarguraGraficoBarras     := db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURA').AsString;
  strLarguraBarrinhas         := db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURABARRAS').AsString;


  strOrdemProducao    :='';
  strLoteProducao     :='';

  nOrdemProducao :=StrToIntDef( EditOP.Text,0);
  nLoteProducao  :=StrToIntDef( prcOrdemProducao_retCampo( nOrdemProducao,'LOTE'),0);

  if rdpFiltro.ItemIndex=1 then
  begin
     strOrdemProducao    :='OP'+IntToStr( nOrdemProducao  );
     strLoteProducao     :='LT'+IntToStr( nLoteProducao  );
  end;

  // cria lista de etiquetas
  db_lista.close;
  db_lista.open;
  nEtiquetas :=0;
  ProgressBar1.Max       :=db_lista.RecordCount;
  ProgressBar1.Position  :=0;

  // ------------------------------------------------------------------------
  //  totalizar colunas
  // ------------------------------------------------------------------------
  nMaximoColunas :=0;

  If db_EtiquetasLayout.FieldByName('L_CODBARRAS_IMPRIMIR').AsString='S' then
     inc(nMaximoColunas);

  If db_EtiquetasLayout.FieldByName('R_CODBARRAS_IMPRIMIR').AsString='S' then
     inc(nMaximoColunas);

  If db_EtiquetasLayout.FieldByName('R3_CODBARRAS_IMPRIMIR').AsString='S' then
     inc(nMaximoColunas);

  // ------------------------------------------------------------------------
  //  imprimir etiquetas
  // ------------------------------------------------------------------------
  db_lista.First;
  nProximaColuna :=0;
  while not db_lista.eof do
  begin

     if (rdpFiltro.ItemIndex in [0,1,2]) then
        nEtiquetas    :=db_lista.FieldByName('QUANTIDADE').AsInteger;

     if rdpFiltro.ItemIndex=2 then
        nEtiquetas    :=NumQtdeEtiquetas.Value;

    strReferencia      := AllTrim(db_lista.FieldByName('CODIGOPRODUTO').AsString);
    strBarraGrafica    := AllTrim(db_lista.FieldByName('CODIGOBARRA').AsString);


    if strBarraGrafica='' then
    begin
       Erro('Referencia sem código de barras.'+
            sLineBreak+
            sLineBreak+
            'Precisa gerar codigo de barras da REFERÊNCIA ['+strReferencia+'] antes de imprimir etiqueta.');
       exit;
    end;

    if (chkCodigoCompleto.Checked=True) then
       strReferencia := strBarraGrafica;


    strDescricao        := copy( db_lista.FieldByName('DESCRICAO').AsString,1,editQtdeDescricao.Value );
    strCor              := 'COR: ' + copy( db_lista.FieldByName('COR').AsString,1,25);
    strTamanho          := 'TAM: ' + copy( db_lista.FieldByName('TAMANHO').AsString,1,20);
    strPreco            := FormatSettings.CurrencyString +' '+ FormatFloat('###,##0.00', db_lista.FieldByName('PRECO').AsFloat);

     //For ncontador := 1 TO nEtiquetas do
     //Begin

       inc(nProximaColuna);

       with ACBrETQ do
       begin
           if Modelo = etqPpla then
           begin


              //----------------------------------------------------------------------------
              // etiqueta - primeira coluna
              //----------------------------------------------------------------------------
              if (nProximaColuna=1) then
              begin
                 If db_EtiquetasLayout.FieldByName('L_DESCRICAO_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteSt_L,             1,     1,   l_LinhaDescricao,     l_ColunaDescricao,    strDescricao                                );

                 If db_EtiquetasLayout.FieldByName('L_CODIGO_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteCodProd_L,        1,     1,   l_LinhaCodProduto,    l_ColunaCodProduto,   strReferencia                              );

                 If db_EtiquetasLayout.FieldByName('L_COR_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteCor_L,            1,     1,   l_LinhaCor,           l_ColunaCor,          strCor                                      );

                 If db_EtiquetasLayout.FieldByName('L_TAMANHO_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteTam_L,            1,     1,   l_LinhaTam,           l_ColunaTam,          strTamanho                                      );

                 If db_EtiquetasLayout.FieldByName('L_OP_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteOP_L,              1,     1,   l_LinhaOP,           l_ColunaOP,          strOrdemProducao                                      );

                 If db_EtiquetasLayout.FieldByName('L_LOTE_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteLOTE_L,            1,     1,   l_LinhaLote,           l_ColunaLote,      strLoteProducao                                      );

                 If db_EtiquetasLayout.FieldByName('L_PRECO_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFontePRECO_L,            1,     1,   l_LinhaPreco,           l_ColunaPreco,      strPreco                                      );

                 If db_EtiquetasLayout.FieldByName('L_CODBARRAS_IMPRIMIR').AsString='S' then
                    ImprimirBarras(orNormal,    'E',                  strLarguraGraficoBarras,   strLarguraBarrinhas,   l_LinhaCBARRA,        l_ColunaCBARRA-5,     strBarraGrafica, inPrtEtiquetaAltura, becExibeEtiqueta1 );


              end;  //if nColuna=1 then

              //----------------------------------------------------------------------------
              // etiqueta - segunda coluna
              //----------------------------------------------------------------------------
              if nProximaColuna=2 then
              begin
                 If db_EtiquetasLayout.FieldByName('R_DESCRICAO_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteSt_R,             1,     1,   r_LinhaDescricao,     r_ColunaDescricao,    strDescricao                           );

                 If db_EtiquetasLayout.FieldByName('R_CODIGO_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteCodProd_R,        1,     1,   r_LinhaCodProduto,    r_ColunaCodProduto,   strReferencia                              );

                 If db_EtiquetasLayout.FieldByName('R_COR_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteCor_R,            1,     1,   r_LinhaCor,           r_ColunaCor,          strCor                                 );

                 If db_EtiquetasLayout.FieldByName('R_TAMANHO_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteTam_R,            1,     1,   r_LinhaTam,           r_ColunaTam,          strTamanho                                      );


                 If db_EtiquetasLayout.FieldByName('R_OP_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteOP_R,              1,     1,   r_LinhaOP,           r_ColunaOP,          strOrdemProducao                                      );

                 If db_EtiquetasLayout.FieldByName('R_LOTE_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteLOTE_R,            1,     1,   r_LinhaLote,          r_ColunaLote,      strLoteProducao                                      );

                 If db_EtiquetasLayout.FieldByName('R_PRECO_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFontePRECO_R,            1,     1,   r_LinhaPreco,           r_ColunaPreco,      strPreco                                      );

                 If db_EtiquetasLayout.FieldByName('R_CODBARRAS_IMPRIMIR').AsString='S' then
                    ImprimirBarras(orNormal,    'E'              ,     strLarguraGraficoBarras,   strLarguraBarrinhas,            r_LinhaCBARRA,       r_ColunaCBARRA-5,     strBarraGrafica, inPrtEtiquetaAltura, becExibeEtiqueta2 );

              end;  //if nColuna=2 then
              //----------------------------------------------------------------------------
              // etiqueta - terceira coluna
              //----------------------------------------------------------------------------
              if nProximaColuna=3 then
              begin
                 If db_EtiquetasLayout.FieldByName('R3_DESCRICAO_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteSt_R3,             1,     1,   r3_LinhaDescricao,     r3_ColunaDescricao,    strDescricao                           );

                 If db_EtiquetasLayout.FieldByName('R3_CODIGO_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteCodProd_R3,        1,     1,   r3_LinhaCodProduto,    r3_ColunaCodProduto,   strReferencia                              );

                 If db_EtiquetasLayout.FieldByName('R3_COR_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteCor_R3,            1,     1,   r3_LinhaCor,           r3_ColunaCor,          strCor                                 );

                 If db_EtiquetasLayout.FieldByName('R3_TAMANHO_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteTam_R3,            1,     1,   r3_LinhaTam,           r3_ColunaTam,          strTamanho                                      );

                 If db_EtiquetasLayout.FieldByName('R3_OP_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteOP_R3,              1,     1,   r3_LinhaOP,           r3_ColunaOP,          strOrdemProducao                                      );

                 If db_EtiquetasLayout.FieldByName('R3_LOTE_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFonteLOTE_R3,            1,     1,   r3_LinhaLote,         r3_ColunaLote,      strLoteProducao                                      );

                 If db_EtiquetasLayout.FieldByName('R3_PRECO_IMPRIMIR').AsString='S' then
                    ImprimirTexto(orNormal,     nFontePRECO_R3,            1,     1,   r3_LinhaPreco,           r3_ColunaPreco,      strPreco                                      );

                 If db_EtiquetasLayout.FieldByName('R3_CODBARRAS_IMPRIMIR').AsString='S' then
                    ImprimirBarras(orNormal,    'E'              ,     strLarguraGraficoBarras,   strLarguraBarrinhas,              r3_LinhaCBARRA,        r3_ColunaCBARRA-5,     strBarraGrafica, inPrtEtiquetaAltura, becExibeEtiqueta3 );
              end; //if nColuna=3 then

           End; //if Modelo = etqPpla then

       end; //with ACBrETQ do
       //ACBrETQ.Imprimir( nEtiquetas, inPrtEtiquetaAvanco);

     //end; // For ncontador := 1 TO nEtiquetas do


     ProgressBar1.Position  := ProgressBar1.Position + 1;
     Application.ProcessMessages;

     // se colunas for igual a quantidade de etiquetas
     {
     if nProximaColuna=nEtiquetas then
     Begin
        ACBrETQ.Imprimir( nEtiquetas, inPrtEtiquetaAvanco);
        nProximaColuna :=0;
     end;
     }

     // se atingiu terceira coluna, enviar para impressão
     if (nProximaColuna>=nMaximoColunas)  then
     begin
        ACBrETQ.Imprimir( 1 {nEtiquetas}, inPrtEtiquetaAvanco);
        nProximaColuna := 0;
     end;

     db_lista.next;

  end;

  if  (db_lista.eof) and (nProximaColuna>0) then
  begin
     ACBrETQ.Imprimir( 1 {nEtiquetas}, inPrtEtiquetaAvanco);
     nProximaColuna := 0;
  end;

  ProgressBar1.Position  :=0;
  ACBrETQ.Desativar;


end;



procedure TFrmEtiquetasGerar.prcCriarGrade;
begin

   strProduto     := AllTrim(EditReferencia.text);
   strCor         := dbEtiquetasCor.FieldByName('COR').AsString;
   strTamanho     := dbEtiquetasTamanho.FieldByName('TAMANHO').AsString;

   if fncValidaReferenciaQuantidadeGrade(strProduto)=false then
   begin

      GradeProduto_Montar(strProduto,
                          StringGridOpcoes
                          );

      CadProduto_EstoqueSalvar(StrToIntDef(fncProduto_retCampo(strProduto,'CODIGO'),0),
                                 strProduto,
                                 StringGridOpcoes);


   end;
end;



procedure TFrmEtiquetasGerar.rdpFiltroClick(Sender: TObject);
begin

   if rdpFiltro.ItemIndex=1 then
      gbxOrdemProducao.Visible  := True
   else
      gbxOrdemProducao.Visible  := false;

   if rdpFiltro.ItemIndex=2 then
   Begin
      gbxProdutos.Visible  := True;
      EditReferencia.SetFocus;
   End
   else
      gbxProdutos.Visible  := false;


   if rdpFiltro.ItemIndex=3 then
   begin
      FrmEtiquetasWindowsCriarGrade:=TFrmEtiquetasWindowsCriarGrade.create(self);
      FrmEtiquetasWindowsCriarGrade.Showmodal;
   end;

   if rdpFiltro.ItemIndex=4 then
      gbxPedidoVenda.Visible  := True
   else
      gbxPedidoVenda.Visible  := false;

end;

procedure TFrmEtiquetasGerar.AtivarACBrETQ;
begin
  // dados da impressora
  sPrtEtiquetaPorta     := db_EtiquetasLayout.FieldByName('PORTA').AsString;
  sPrtEtiquetaDriver    := db_EtiquetasLayout.FieldByName('DRIVER').AsString;
  sPrtEtiquetaTipo      := db_EtiquetasLayout.FieldByName('CODBARRAS_TIPO').AsString;
  inPrtEtiquetaAltura   := db_EtiquetasLayout.FieldByName('CODBARRAS_ALTURA').AsInteger;
  inPrtEtiquetaAvanco   := db_EtiquetasLayout.FieldByName('AVANCOPAPEL').AsInteger;

  {
  with ACBrETQ do
  begin
     DPI           := TACBrETQDPI(cbDPI.ItemIndex);
     Modelo        := ConverteTipoDriver(sPrtEtiquetaDriver);
     Porta         := sPrtEtiquetaPorta ;
     LimparMemoria := ckMemoria.Checked ;

     Ativar ;
  end ;
  }

  ACBrETQ.DPI           := TACBrETQDPI(cbDPI.ItemIndex);
  ACBrETQ.Modelo        := ConverteTipoDriver(sPrtEtiquetaDriver);
  ACBrETQ.Porta         := sPrtEtiquetaPorta ;
  ACBrETQ.LimparMemoria := ckMemoria.Checked ;

  ACBrETQ.Ativar ;


end ;



procedure TFrmEtiquetasGerar.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmEtiquetasGerar.EditReferenciaExit(Sender: TObject);
begin
   DadosCortamanho;
end;

procedure TFrmEtiquetasGerar.EditReferenciaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


   IF Key = VK_F8 Then
   begin
      if dbProcurarFichaTecnica.Execute then
         EditReferencia.text := dbProcurarFichaTecnica.ResultFieldAsString('REFERENCIA');
   end;

end;

procedure TFrmEtiquetasGerar.ModeloFimExit(Sender: TObject);
begin
   DadosCortamanho;
end;

procedure TFrmEtiquetasGerar.NumQtdeEtiquetasChange(Sender: TObject);
begin
   If NumQtdeEtiquetas.Value < 0 then
      NumQtdeEtiquetas.Value := 0;
end;

procedure TFrmEtiquetasGerar.SpeedButton1Click(Sender: TObject);
begin
   db_EtiquetasLayout.close;
   FrmEtiquetaProdutosConfigurar := TFrmEtiquetaProdutosConfigurar.create(self);
   FrmEtiquetaProdutosConfigurar.Show;
   db_EtiquetasLayout.Open;
   db_EtiquetasLayout.Refresh;

end;



procedure TFrmEtiquetasGerar.ComboEtiquetasEnter(Sender: TObject);
begin
   db_EtiquetasLayout.close;
   db_EtiquetasLayout.Open;

end;

Function TFrmEtiquetasGerar.ConverteTipoDriver(sDriver : String) : TACBrETQModelo;
begin
   sDriver :=UpperCase( Trim(sDriver) );
   Result :=TACBrETQModelo.etqNenhum;

   if sDriver='ETQPPLA' then
     Result :=TACBrETQModelo.ETQPPLA;

   if sDriver='ETQPPLB' then
     Result :=TACBrETQModelo.ETQPPLB;

   if sDriver='ETQZPLII' then
     Result :=TACBrETQModelo.ETQZPLII;

   if sDriver='ETQEPL2' then
     Result :=TACBrETQModelo.ETQEPL2;

end;

procedure TFrmEtiquetasGerar.DadosCortamanho;
begin
   // classificar etiquetas
   strProduto := AllTrim(EditReferencia.text);

   dbEtiquetasCor.Close;
   dbEtiquetasCor.ParamByName('SREFERENCIA').AsString := strProduto;
   dbEtiquetasCor.Open;

   strCor   := dbEtiquetasCor.FieldByName('COR_CODIGO').AsString;

   dbEtiquetasTamanho.Close;
   dbEtiquetasTamanho.ParamByName('SREFERENCIA').AsString := strProduto;
   dbEtiquetasTamanho.ParamByName('NCOR').AsInteger := StrToIntDef(strCor,0);
   dbEtiquetasTamanho.Open;

end;


end.
