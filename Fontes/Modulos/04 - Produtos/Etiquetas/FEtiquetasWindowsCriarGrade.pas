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

unit FEtiquetasWindowsCriarGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DBCtrls, Spin, DB,  
      ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos, Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmEtiquetasWindowsCriarGrade = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Button3: TButton;
    gbxProdutos: TGroupBox;
    dsEtiquetasCor: TDataSource;
    dbEtiquetasCor:  TFDQuery;
    dbEtiquetasTamanho: TFDQuery;
    dsEtiquetasTamanho: TDataSource;
    EditReferencia: TLabeledEdit;
    EditCor: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    NumQtdeEtiquetas: TSpinEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    dbProcurarFichaTecnica: TIDBEditDialog;
    BitBtn1: TBitBtn;
    db_dados: TFDQuery;
    ds_dados: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditReferenciaExit(Sender: TObject);
    procedure EditCorExit(Sender: TObject);
    procedure EditReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure DadosCortamanho;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEtiquetasWindowsCriarGrade: TFrmEtiquetasWindowsCriarGrade;

implementation

uses FEtiquetasWindows, Global, Biblioteca, SQLServer, FPrincipal;

{$R *.dfm}

procedure TFrmEtiquetasWindowsCriarGrade.BitBtn1Click(Sender: TObject);
var
   ncontador,
   ntotalizador: integer;
begin
   ntotalizador :=0;

   ntotalizador    :=NumQtdeEtiquetas.Value;


   strProduto     := AllTrim(EditReferencia.text);
   if strProduto='' then
      exit;

   strCor         := EditCor.text;
   strTamanho     := DBLookupComboBox1.text;

   FOR ncontador := 1 TO ntotalizador DO
   BEGIN
      db_dados.append;
      db_dados.FieldByName('CODIGOPRODUTO').AsString   :=  strProduto;
      db_dados.FieldByName('CODIGOBARRA').AsString     :=  fncIdentificadorReferenciaTXT(strProduto,strCor,strTamanho);
      db_dados.FieldByName('DESCRICAO').AsString       :=  fncProduto_retCampo(strProduto,'DESCRICAO');
      db_dados.FieldByName('UNIDADE').AsString         :=  fncProduto_retCampo(strProduto,'UNIDADE');
      db_dados.FieldByName('COR').AsString             := strCor;
      db_dados.FieldByName('TAMANHO').AsString         := strTamanho;
      db_dados.FieldByName('PRECO').AsFloat            := 0;
      db_dados.FieldByName('QUANTIDADE').AsInteger     :=  1;
      db_dados.POST;
   END;


end;

procedure TFrmEtiquetasWindowsCriarGrade.DadosCortamanho;
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

procedure TFrmEtiquetasWindowsCriarGrade.Button2Click(Sender: TObject);
begin
   close;
end;

procedure TFrmEtiquetasWindowsCriarGrade.Button3Click(Sender: TObject);
begin
    db_dados.close;
    db_dados.sql.clear;
    db_dados.sql.add(' delete from CONFIG_ETIQUETAS01_TEMP  ');
    db_dados.ExecSQL;


    db_dados.close;
    db_dados.sql.clear;
    db_dados.sql.add(' select * from CONFIG_ETIQUETAS01_TEMP  ');
    db_dados.open;
    db_dados.Refresh;

    if not db_dados.isempty then
    begin
      db_dados.First;
      while not db_dados.eof do
         db_dados.Delete;
    end;

    db_dados.close;
    db_dados.open;

end;


procedure TFrmEtiquetasWindowsCriarGrade.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmEtiquetasWindowsCriarGrade.EditCorExit(Sender: TObject);
begin
DadosCortamanho;
end;

procedure TFrmEtiquetasWindowsCriarGrade.EditReferenciaExit(Sender: TObject);
begin
DadosCortamanho;
end;

procedure TFrmEtiquetasWindowsCriarGrade.EditReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF Key = VK_F8 Then
   begin
      if dbProcurarFichaTecnica.Execute then
         EditReferencia.text := dbProcurarFichaTecnica.ResultFieldAsString('REFERENCIA');
   end;

end;

procedure TFrmEtiquetasWindowsCriarGrade.FormCreate(Sender: TObject);
begin
      db_dados.open;

end;

end.
