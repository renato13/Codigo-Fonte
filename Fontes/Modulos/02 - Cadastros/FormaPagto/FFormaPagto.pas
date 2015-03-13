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

unit FFormaPagto;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Grids, DBGrids,
   Mask, DB,     
   FFrameBotoes, FFrameBarra,   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmFormaPagto = class(TForm)
      PgFPagto: TPageControl;
      TabRegistros: TTabSheet;
      TabEditar: TTabSheet;
      DBGrid: TDBGrid;
      DBRG_arredond: TDBRadioGroup;
      GroupBox2: TGroupBox;
      DBEdit_Multiplicador: TDBEdit;
      Label7: TLabel;
      DBEdit_nome: TDBEdit;
      DBEdit1: TDBEdit;
      Label2: TLabel;
      Label3: TLabel;
      Label5: TLabel;
      DBEdit_indice: TDBEdit;
      GroupBox1: TGroupBox;
      DBGrid1: TDBGrid;
      DBCheckBox1: TDBCheckBox;
      Label1: TLabel;
      DBEdit2: TDBEdit;
      DS_FormaPagto: TDataSource;
      DS_Prazos: TDataSource;
      db_FormaPagto:  TFDQuery;
      db_FormaPagtoDias: TFDQuery;
      db_FormaPagtoDiasCODIGO: TIntegerField;
      db_FormaPagtoDiasDIAS: TIntegerField;
      db_FormaPagtoDiasDIA_FIXO: TIntegerField;
      DBRadioGroup1: TDBRadioGroup;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
    db_FormaPagtoCODIGO: TIntegerField;
    db_FormaPagtoNOME: TStringField;
    db_FormaPagtoACRESCIMO: TBCDField;
    db_FormaPagtoDESCONTO: TBCDField;
    db_FormaPagtoVENCIMENTO_DIA: TIntegerField;
    db_FormaPagtoTIPO_PAGAMENTO: TStringField;
    db_FormaPagtoARRED_SN: TStringField;
    db_FormaPagtoARREDONDAR: TStringField;
    db_FormaPagtoPARCELAMINIMA: TBCDField;
    DBEdit3: TDBEdit;
    Label4: TLabel;
      procedure FormCreate(Sender: TObject);
      procedure DBGridDblClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure db_FormaPagtoNewRecord(DataSet: TDataSet);
      procedure db_FormaPagtoDiasBeforePost(DataSet: TDataSet);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure DBGrid1Enter(Sender: TObject);
    procedure db_FormaPagtoDiasAfterDelete(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
    FrmFormaPagto: TFrmFormaPagto;

implementation

uses FBaseDados, Biblioteca, FPrincipal, Global;

{$R *.dfm}

procedure TFrmFormaPagto.FormCreate(Sender: TObject);
begin

   FrmFrameBotoes1.DataSource := DS_FormaPagto;
   PgFPagto.ActivePageIndex := 0;
   db_FormaPagto.Open;
   db_FormaPagtoDias.Open;

   //
end;

procedure TFrmFormaPagto.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   PgFPagto.ActivePage := TabEditar;
   DBEdit_nome.SetFocus;

end;

procedure TFrmFormaPagto.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   PgFPagto.ActivePage := TabRegistros;

end;

procedure TFrmFormaPagto.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmFormaPagto.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmFormaPagto.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmFormaPagto.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   If (db_FormaPagtoDias.state in [dsEdit, dsInsert]) then
   Begin
      // Salvar Prazos
      db_FormaPagtoDias.Post;
   End;

end;

procedure TFrmFormaPagto.DBGrid1Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   If (db_FormaPagtoDias.state in [dsEdit, dsInsert]) then
   Begin
      // Salvar Prazos
      db_FormaPagtoDias.Post;
   End;

end;

procedure TFrmFormaPagto.DBGridDblClick(Sender: TObject);
begin
   PgFPagto.ActivePage := TabEditar;
end;

procedure TFrmFormaPagto.db_FormaPagtoDiasAfterDelete(DataSet: TDataSet);
begin
   db_FormaPagtoDias.refresh;
end;

procedure TFrmFormaPagto.db_FormaPagtoDiasBeforePost(DataSet: TDataSet);
begin
   db_FormaPagtoDias.FieldByName('CODIGO').AsInteger :=
     db_FormaPagto.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmFormaPagto.db_FormaPagtoNewRecord(DataSet: TDataSet);
begin
   db_FormaPagto.FieldByName('ARREDONDAR').AsString := 'P';
   db_FormaPagto.FieldByName('ARRED_SN').AsString := 'N';

end;

procedure TFrmFormaPagto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_FormaPagto.Close;
   Action :=Cafree;

end;

end.
