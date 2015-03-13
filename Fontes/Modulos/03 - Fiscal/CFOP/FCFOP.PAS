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

unit FCFOP;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, DBCtrls, Mask, Grids,
   DBGrids, ImgList,        ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, FFrameBotoes, FFrameBarra, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmCFOP = class(TForm)
      PageControl: TPageControl;
      Tab_Principal: TTabSheet;
      Tab_Editar: TTabSheet;
      DBGrid1: TDBGrid;
      Label1: TLabel;
      Label2: TLabel;
      EditCodigo: TDBEdit;
      EditNome: TDBEdit;
      DBRadioGroup1: TDBRadioGroup;
      DBRadioGroup2: TDBRadioGroup;
      DBRadioGroup3: TDBRadioGroup;
      DBRadioGroup4: TDBRadioGroup;
      DBRadioGroup5: TDBRadioGroup;
      DBRadioGroup6: TDBRadioGroup;
      GroupBox1: TGroupBox;
      DBMemo_Fisco: TDBMemo;
      GroupBox2: TGroupBox;
      Label7: TLabel;
      EditReduc: TDBEdit;
      GroupBox3: TGroupBox;
      DBMemo1: TDBMemo;
      DS_CFOP: TDataSource;
      db_CFOP:  TFDQuery;
    db_CFOPCODIGO: TIntegerField;
    db_CFOPDESCRICAO: TStringField;
    db_CFOPNFE: TStringField;
    db_CFOPDENTRO_ESTADO: TStringField;
    db_CFOPDETALHE: TStringField;
    db_CFOPFISCO: TStringField;
    db_CFOPOPERACAO: TStringField;
    db_CFOPCALCULA_ICMS: TStringField;
    db_CFOPCALCULA_IPI: TStringField;
    db_CFOPCALCULA_ISS: TStringField;
    db_CFOPCALCULA_SEFAZ: TStringField;
    db_CFOPCALCULA_COFINS: TStringField;
    db_CFOPREDUCAO_ICMS: TBCDField;
    db_CFOPREDUCAO_IPI: TBCDField;
    db_CFOPDESCONTO_SEFAZ: TBCDField;
    db_CFOPDESCONTO_COFINS: TBCDField;
    db_CFOPDESCONTO_PIS: TBCDField;
    db_CFOPRECUPERA_ICMS: TStringField;
    db_CFOPRECUPERA_IPI: TStringField;
    db_CFOPDESCONTO_SUFRAMA: TBCDField;
    db_CFOPBAIXA_ESTOQUE: TStringField;
    db_CFOPSUFRAMA: TStringField;
    FrmFrameBarra1: TFrmFrameBarra;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbEditPesquisarCFOP: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure DBGrid1DblClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCFOP: TFrmCFOP;

implementation

uses Biblioteca, FBaseDados;

{$R *.dfm}

procedure TFrmCFOP.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := ds_CFOP;
   PageControl.ActivePage := Tab_Principal;
   db_CFOP.Open;
end;

procedure TFrmCFOP.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
  PageControl.ActivePage := Tab_Editar;
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  EditCodigo.SetFocus;

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);
   PageControl.ActivePage := Tab_Principal;

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisarCFOP.Execute then
   begin
      db_CFOP.Locate('CODIGO', dbEditPesquisarCFOP.ResultFieldAsInteger('CODIGO'), []);
   End;

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmCFOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_CFOP.CLOSE;

   Action := CAFREE;

end;

procedure TFrmCFOP.DBGrid1DblClick(Sender: TObject);
begin
   PageControl.ActivePage := Tab_Editar;
end;

end.
