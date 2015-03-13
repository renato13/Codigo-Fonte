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


unit FComprasEtiquetas;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, ExtCtrls, DBCtrls, Buttons, StdCtrls, DB,
       frxClass, frxDBSet,
   frxDMPClass, ComCtrls, Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmComprasEtiquetas = class(TForm)
      Panel1: TPanel;
      Panel2: TPanel;
      FrmFrameBarra1: TFrmFrameBarra;
      ds_EtiquetasLayout: TDataSource;
      db_EtiquetasLayout: TFDQuery;
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
      frxReport2: TfrxReport;
      db_estoque: TFDQuery;
      ds_lista: TDataSource;
      procedure FormCreate(Sender: TObject);
      procedure SpeedButton1Click(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSairClick(Sender: TObject);
      procedure BtnImprimirClick(Sender: TObject);
   private
      { Private declarations }

      Procedure MontarDados;
      Procedure configurarEtiqueta;

   public
      { Public declarations }

   end;

var
   FrmComprasEtiquetas: TFrmComprasEtiquetas;

implementation

uses FEtiquetaConfigurar, Global, Biblioteca,
   FCompras, FastReport;

{$R *.dfm}

procedure TFrmComprasEtiquetas.BtnImprimirClick(Sender: TObject);
begin

   configurarEtiqueta;
   MontarDados;

   frxReport1.ShowReport;

end;

procedure TFrmComprasEtiquetas.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmComprasEtiquetas.configurarEtiqueta;
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
   frxReport1.Variables['cb_coluna'] := db_EtiquetasLayout.FieldByName
     ('CB_COLUNA').AsFloat + 10;
   // Linha
   frxReport1.Variables['cb_linha'] := db_EtiquetasLayout.FieldByName
     ('CB_LINHA').AsFloat;
   // largura
   frxReport1.Variables['cb_largura'] := db_EtiquetasLayout.FieldByName
     ('CB_LARGURA').AsFloat;
   // comprimento
   frxReport1.Variables['cb_comprimento'] := db_EtiquetasLayout.FieldByName
     ('CB_COMPRIMENTO').AsFloat;
   // visivel
   frxReport1.Variables['cb_visivel'] :=
     (db_EtiquetasLayout.FieldByName('CB_VISIVEL').AsString = 'SIM');

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
   frxReport1.Variables['frn_coluna'] := db_EtiquetasLayout.FieldByName
     ('FRN_COLUNA').AsFloat + 10;
   // Linha
   frxReport1.Variables['frn_linha'] := db_EtiquetasLayout.FieldByName
     ('FRN_LINHA').AsFloat;
   // largura
   frxReport1.Variables['frn_largura'] := db_EtiquetasLayout.FieldByName
     ('FRN_LARGURA').AsFloat;
   // comprimento
   frxReport1.Variables['frn_comprimento'] := db_EtiquetasLayout.FieldByName
     ('FRN_COMPRIMENTO').AsFloat;
   // visivel
   frxReport1.Variables['frn_visivel'] :=
     (db_EtiquetasLayout.FieldByName('FRN_VISIVEL').AsString = 'SIM');

end;

procedure TFrmComprasEtiquetas.MontarDados;
var
   x: integer;
begin

   db_estoque.close;

   db_lista.close;
   db_lista.sql.clear;
   db_lista.sql.add(' delete from CONFIG_ETIQUETAS01_TEMP  ');
   db_lista.ExecSQL;

   db_lista.close;
   db_lista.sql.clear;
   db_lista.sql.add(' select * from CONFIG_ETIQUETAS01_TEMP  ');
   db_lista.open;
   {
     AsBarcode1.Left   := FiguraCodigoBarra.Left;
     AsBarcode1.Height := FiguraCodigoBarra.Height-1;
     //AsBarcode1.Width  := FiguraCodigoBarra.Width -1;
     AsBarcode1.Top    := FiguraCodigoBarra.Top;
   }

   CodIni := '';
   CodFim := 'ZZZZZZZZZZZZZZZZZZ';

   iAchar[0] := FrmCompras.db_Compras.FieldByName('CODIGO').AsInteger;

   sqlMaster := '';
   // sqlMaster  :=sqlMaster  + ' SELECT A.CODIGO, A.DESCRICAO, A.GRUPO, A.SUBGRUPO, A.QTD_TOTAL, ';
   sqlMaster := sqlMaster + ' SELECT * FROM COMPRAS_ITENS ';
   sqlMaster := sqlMaster + ' WHERE ';
   sqlMaster := sqlMaster + ' CODIGO=:COMPRAS ';
   sqlMaster := sqlMaster + ' ORDER BY PRODUTO';

   DB_Produtos.close;
   DB_Produtos.sql.clear;
   DB_Produtos.sql.add(sqlMaster);
   DB_Produtos.ParamByName('COMPRAS').AsInteger := iAchar[0];
   DB_Produtos.open;

   // cria lista de etiquetas
   db_lista.close;
   db_lista.open;

   db_estoque.open;

   while not DB_Produtos.eof do
   begin

      FOR x := 1 TO (DB_Produtos.FieldByName('QUANTIDADE').AsInteger) DO
      BEGIN
         db_lista.append;

         db_lista.FieldByName('DESCRICAO').AsString :=
           UPPERCASE(DB_Produtos.FieldByName('DESCRICAO').AsString);;
         db_lista.FieldByName('CODIGOPRODUTO').AsString :=
           UPPERCASE(DB_Produtos.FieldByName('PRODUTO').AsString);
         // db_lista.FieldByname('CODIGOBARRA').AsString        :=Copy(UPPERCASE(DB_Produtos.FieldByname('PRODUTO').AsString),1,10 );
         db_lista.FieldByName('CODIGOBARRA').AsString :=
           UPPERCASE(DB_Produtos.FieldByName('PRODUTO').AsString);
         db_lista.FieldByName('UNIDADE').AsString :=
           UPPERCASE(DB_Produtos.FieldByName('UND').AsString);
         db_lista.FieldByName('PRECO').AsFloat :=
           db_estoque.FieldByName('PRC_VENDA').AsFloat;
         db_lista.FieldByName('QUANTIDADE').AsInteger :=
           DB_Produtos.FieldByName('QUANTIDADE').AsInteger;

         db_lista.POST;
      END;

      DB_Produtos.next;
   end;

   db_estoque.close;

end;

procedure TFrmComprasEtiquetas.FormCreate(Sender: TObject);
begin
   db_EtiquetasLayout.open;

end;

procedure TFrmComprasEtiquetas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmComprasEtiquetas.SpeedButton1Click(Sender: TObject);
begin

   FrmEtiquetaConfigurar := TFrmEtiquetaConfigurar.create(self);
   FrmEtiquetaConfigurar.Showmodal;

   db_EtiquetasLayout.close;
   db_EtiquetasLayout.open;

end;

end.
