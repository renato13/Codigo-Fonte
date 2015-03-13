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

unit FEtiquetasWindows;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, ExtCtrls, DBCtrls, Buttons, StdCtrls, DB,
       frxClass, frxDBSet, frxBarcod,
   frxDMPClass, ComCtrls, Mask, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Samples.Spin;

type
   TFrmEtiquetasWindows = class(TForm)
      Panel1: TPanel;
      Panel2: TPanel;
      FrmFrameBarra1: TFrmFrameBarra;
      ds_EtiquetasLayout: TDataSource;
      db_EtiquetasLayout:  TFDQuery;
      GroupBox1: TGroupBox;
      ComboEtiquetas: TDBLookupComboBox;
      BtnImprimir: TButton;
      BtnSair: TButton;
      db_lista: TFDQuery;
      DB_Produtos: TFDQuery;
      DS_Produtos: TDataSource;
      frxDBListaProdutos: TfrxDBDataset;
      frxDBEtiquetas: TfrxDBDataset;
      SpeedButton1: TSpeedButton;
      ProgressBar1: TProgressBar;
      frxReport1: TfrxReport;
      ds_lista: TDataSource;
    dsEtiquetasTamanho: TDataSource;
    dbEtiquetasTamanho: TFDQuery;
    dsEtiquetasCor: TDataSource;
    dbEtiquetasCor: TFDQuery;
    db_TipoProduto: TFDQuery;
    DS_TipoProduto: TDataSource;
    dbProcurarFichaTecnica: TIDBEditDialog;
    gbxProdutos: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditReferencia: TLabeledEdit;
    NumQtdeEtiquetas: TSpinEdit;
    EditCor: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    gbxOrdemProducao: TGroupBox;
    rdpFiltro: TRadioGroup;
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
    EditOP: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure SpeedButton1Click(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSairClick(Sender: TObject);
      procedure BtnImprimirClick(Sender: TObject);
    procedure EditReferenciaExit(Sender: TObject);
    procedure EditReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rdpFiltroClick(Sender: TObject);
   private
      { Private declarations }

      FTyp: TfrxBarcodeType;

      Procedure MontarDados;
      Procedure configurarEtiqueta;
      procedure DadosCortamanho;
      procedure ConverterNumeros;


   public
      { Public declarations }

   end;


var
   FrmEtiquetasWindows: TFrmEtiquetasWindows;



implementation

uses FEtiquetaConfigurar, Global, Biblioteca,
   FCompras, FastReport, FEtiquetasWindowsCriarGrade;

{$R *.dfm}

procedure TFrmEtiquetasWindows.BtnImprimirClick(Sender: TObject);
begin

   if ComboEtiquetas.text = '' then
   Begin
      Informar('Selecione o Layout de Etiqueta');
      ComboEtiquetas.SetFocus;
      exit;
   End;

   prcStatusMessage('Etiquetas de produtos','processando informações, aguarde...',True);
   MontarDados;
   ConfigurarEtiqueta;
   prcStatusMessage('','',false);

   frxReport1.ShowReport;

end;

procedure TFrmEtiquetasWindows.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmEtiquetasWindows.configurarEtiqueta;
var
   Page: TfrxReportPage;

begin

   /// ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
   /// configurar o papel
   /// ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

   Page := TfrxReportPage(frxReport1.Pages[1]);
   Page.PaperSize := DMPAPER_USER;
   Page.TopMargin := db_EtiquetasLayout.FieldByName('MG_TOPO').AsFloat;
   Page.BottomMargin := db_EtiquetasLayout.FieldByName('MG_RODAPE').AsFloat;
   Page.LeftMargin := db_EtiquetasLayout.FieldByName('MG_ESQUERDA').AsFloat;
   Page.RightMargin := db_EtiquetasLayout.FieldByName('MG_DIREITA').AsFloat;
   Page.PaperWidth := db_EtiquetasLayout.FieldByName('PG_LARGURA').AsFloat +
     db_EtiquetasLayout.FieldByName('COL_DISTANCIA').AsFloat;
   Page.PaperHeight := db_EtiquetasLayout.FieldByName('PG_COMPRIMENTO').AsFloat;

   /// ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
   /// configurar medidas das colunas
   /// ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
   Page.Columns := db_EtiquetasLayout.FieldByName('COL_QUANTIDADES').AsInteger;
   Page.ColumnWidth := db_EtiquetasLayout.FieldByName('COL_LARGURA').AsFloat;
   frxReport1.Variables['col_comprimento'] :=
     MilimetrosParaPixels(db_EtiquetasLayout.FieldByName
     ('COL_COMPRIMENTO').AsFloat);

   // ------------------------------------------------------------------------
   // linha anulada, nao surte efeito desejado
   // frxReport1.Variables['col_distancia']    := db_EtiquetasLayout.FieldByName('COL_DISTANCIA').AsFloat;
   // ------------------------------------------------------------------------

   /// ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
   /// configurar os campos
   /// ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

   /// ------------------------------------------------------------------------
   /// CODIGO DO PRODUTO
   /// ------------------------------------------------------------------------
   // Coluna
   frxReport1.Variables['prd_coluna'] := db_EtiquetasLayout.FieldByName
     ('PRD_COLUNA').AsFloat + 10;
   // Linha
   frxReport1.Variables['prd_linha'] := db_EtiquetasLayout.FieldByName
     ('PRD_LINHA').AsFloat;
   // largura
   frxReport1.Variables['prd_largura'] := db_EtiquetasLayout.FieldByName
     ('PRD_LARGURA').AsFloat;
   // comprimento
   frxReport1.Variables['prd_comprimento'] := db_EtiquetasLayout.FieldByName
     ('PRD_COMPRIMENTO').AsFloat;
   // visivel
   frxReport1.Variables['prd_visivel'] :=
     (db_EtiquetasLayout.FieldByName('PRD_VISIVEL').AsString = 'SIM');

   /// ------------------------------------------------------------------------
   /// CODIGO DE BARRAS DO PRODUTO
   /// ------------------------------------------------------------------------
   // Coluna
   frxReport1.Variables['cb_tipo'] :=       db_EtiquetasLayout.FieldByName('TIPOCODIGOBARRA').AsString;

   frxReport1.Variables['cb_coluna'] := db_EtiquetasLayout.FieldByName     ('CB_COLUNA').AsFloat + 10;
   // Linha
   frxReport1.Variables['cb_linha'] := db_EtiquetasLayout.FieldByName     ('CB_LINHA').AsFloat;
   // largura
   frxReport1.Variables['cb_largura'] := db_EtiquetasLayout.FieldByName     ('CB_LARGURA').AsFloat;
   // comprimento
   frxReport1.Variables['cb_comprimento'] := db_EtiquetasLayout.FieldByName      ('CB_COMPRIMENTO').AsFloat;
   // visivel
   frxReport1.Variables['cb_visivel'] :=       (db_EtiquetasLayout.FieldByName('CB_VISIVEL').AsString = 'SIM');


   /// ------------------------------------------------------------------------
   /// DESCRICAÇÃO DO PRODUTO
   /// ------------------------------------------------------------------------
   // Coluna
   frxReport1.Variables['dsc_coluna'] := db_EtiquetasLayout.FieldByName
     ('DSC_COLUNA').AsFloat + 10;
   // Linha
   frxReport1.Variables['dsc_linha'] := db_EtiquetasLayout.FieldByName
     ('DSC_LINHA').AsFloat;
   // largura
   frxReport1.Variables['dsc_largura'] := db_EtiquetasLayout.FieldByName
     ('DSC_LARGURA').AsFloat;
   // comprimento
   frxReport1.Variables['dsc_comprimento'] := db_EtiquetasLayout.FieldByName
     ('DSC_COMPRIMENTO').AsFloat;
   // visivel
   frxReport1.Variables['dsc_visivel'] :=
     (db_EtiquetasLayout.FieldByName('DSC_VISIVEL').AsString = 'SIM');

   /// ------------------------------------------------------------------------
   /// UNIDADE DE MEDIDA DO PRODUTO
   /// ------------------------------------------------------------------------
   // Coluna
   frxReport1.Variables['und_coluna'] := db_EtiquetasLayout.FieldByName
     ('UND_COLUNA').AsFloat + 10;
   // Linha
   frxReport1.Variables['und_linha'] := db_EtiquetasLayout.FieldByName
     ('UND_LINHA').AsFloat;
   // largura
   frxReport1.Variables['und_largura'] := db_EtiquetasLayout.FieldByName
     ('UND_LARGURA').AsFloat;
   // comprimento
   frxReport1.Variables['und_comprimento'] := db_EtiquetasLayout.FieldByName
     ('UND_COMPRIMENTO').AsFloat;
   // visivel
   frxReport1.Variables['und_visivel'] :=
     (db_EtiquetasLayout.FieldByName('UND_VISIVEL').AsString = 'SIM');

   /// ------------------------------------------------------------------------
   /// TAMANHO DO PRODUTO
   /// ------------------------------------------------------------------------
   // Coluna
   frxReport1.Variables['tam_coluna'] := db_EtiquetasLayout.FieldByName
     ('TAM_COLUNA').AsFloat + 10;
   // Linha
   frxReport1.Variables['tam_linha'] := db_EtiquetasLayout.FieldByName
     ('TAM_LINHA').AsFloat;
   // largura
   frxReport1.Variables['tam_largura'] := db_EtiquetasLayout.FieldByName
     ('TAM_LARGURA').AsFloat;
   // comprimento
   frxReport1.Variables['tam_comprimento'] := db_EtiquetasLayout.FieldByName
     ('TAM_COMPRIMENTO').AsFloat;
   // visivel
   frxReport1.Variables['tam_visivel'] :=
     (db_EtiquetasLayout.FieldByName('TAM_VISIVEL').AsString = 'SIM');

   /// ------------------------------------------------------------------------
   /// VALOR (PREÇO DE VENDA) DO PRODUTO
   /// ------------------------------------------------------------------------
   // Coluna
   frxReport1.Variables['vlr_coluna'] := db_EtiquetasLayout.FieldByName
     ('VLR_COLUNA').AsFloat + 10;
   // Linha
   frxReport1.Variables['vlr_linha'] := db_EtiquetasLayout.FieldByName
     ('VLR_LINHA').AsFloat;
   // largura
   frxReport1.Variables['vlr_largura'] := db_EtiquetasLayout.FieldByName
     ('VLR_LARGURA').AsFloat;
   // comprimento
   frxReport1.Variables['vlr_comprimento'] := db_EtiquetasLayout.FieldByName
     ('VLR_COMPRIMENTO').AsFloat;
   // visivel
   frxReport1.Variables['vlr_visivel'] :=
     (db_EtiquetasLayout.FieldByName('VLR_VISIVEL').AsString = 'SIM');

   /// ------------------------------------------------------------------------
   /// FORNECEDOR DO PRODUTO
   /// ------------------------------------------------------------------------
   // Coluna
   frxReport1.Variables['frn_coluna'] := db_EtiquetasLayout.FieldByName('FRN_COLUNA').AsFloat + 10;
   // Linha
   frxReport1.Variables['frn_linha'] := db_EtiquetasLayout.FieldByName('FRN_LINHA').AsFloat;
   // largura
   frxReport1.Variables['frn_largura'] := db_EtiquetasLayout.FieldByName('FRN_LARGURA').AsFloat;
   // comprimento
   frxReport1.Variables['frn_comprimento'] := db_EtiquetasLayout.FieldByName('FRN_COMPRIMENTO').AsFloat;
   // visivel
   frxReport1.Variables['frn_visivel'] :=  (db_EtiquetasLayout.FieldByName('FRN_VISIVEL').AsString = 'SIM');

end;


procedure TFrmEtiquetasWindows.FormCreate(Sender: TObject);
begin
   db_EtiquetasLayout.open;

end;

procedure TFrmEtiquetasWindows.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmEtiquetasWindows.SpeedButton1Click(Sender: TObject);
begin

   FrmEtiquetaConfigurar := TFrmEtiquetaConfigurar.create(self);
   FrmEtiquetaConfigurar.Showmodal;

   db_EtiquetasLayout.close;
   db_EtiquetasLayout.open;

end;

procedure TFrmEtiquetasWindows.DadosCortamanho;
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


procedure TFrmEtiquetasWindows.MontarDados;
var
   ncontador,
   ntotalizador: integer;
begin

   if rdpFiltro.ItemIndex=1 then
   begin
      if StrToIntDef(EditOP.Text,0)=0 then
      begin
        Erro('Informe a Ordem de Produção');
        exit;
      end;
   end;

   // classificar etiquetas
   if rdpFiltro.ItemIndex=2 then
   begin
      strProduto     := AllTrim(EditReferencia.text);
      strCor         := dbEtiquetasCor.FieldByName('COR').AsString;
      strTamanho     := dbEtiquetasTamanho.FieldByName('TAMANHO').AsString;
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
         db_lista.FieldByName('PRECO').AsFloat            :=  0;
         db_lista.FieldByName('QUANTIDADE').AsInteger     :=  ntotalizador;
         db_lista.POST;
      END;

      DB_Produtos.next;
   end;
end;  // if (rdpFiltro.ItemIndex in [0,1,2]) then
db_lista.open;


end;

procedure TFrmEtiquetasWindows.rdpFiltroClick(Sender: TObject);
begin

   if rdpFiltro.ItemIndex=2 then
   Begin
      gbxProdutos.Visible  := True;
      EditReferencia.SetFocus;
   End
   else
      gbxProdutos.Visible  := false;


   if rdpFiltro.ItemIndex=1 then
      gbxOrdemProducao.Visible  := True
   else
      gbxOrdemProducao.Visible  := false;


   if rdpFiltro.ItemIndex=3 then
   begin

      FrmEtiquetasWindowsCriarGrade:=TFrmEtiquetasWindowsCriarGrade.create(self);
      FrmEtiquetasWindowsCriarGrade.Showmodal;
   end;



end;

procedure TFrmEtiquetasWindows.EditReferenciaExit(Sender: TObject);
begin
   DadosCortamanho;

end;

procedure TFrmEtiquetasWindows.EditReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin


   IF Key = VK_F8 Then
   begin
      if dbProcurarFichaTecnica.Execute then
         EditReferencia.text := dbProcurarFichaTecnica.ResultFieldAsString('REFERENCIA');
   end;

end;

procedure TFrmEtiquetasWindows.ConverterNumeros;
begin
 //
end;


end.
