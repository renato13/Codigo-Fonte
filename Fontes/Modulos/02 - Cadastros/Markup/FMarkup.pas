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

unit FMarkup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FFrameBarra, Grids, DBGrids, StdCtrls, DB,    
    Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmMarkup = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    FrmFrameBarra1: TFrmFrameBarra;
    db_Markup:  TFDQuery;
    db_MarkupCODIGO: TIntegerField;
    db_MarkupMARKUP: TBCDField;
    db_MarkupOUTROSIMPOSTOS: TBCDField;
    db_MarkupICMS: TBCDField;
    db_MarkupIPI: TBCDField;
    db_MarkupPUBLICIDADE: TBCDField;
    db_MarkupINADIMPLENCIA: TBCDField;
    db_MarkupADMINISTRATIVO: TBCDField;
    db_MarkupFINANCEIRO: TBCDField;
    db_MarkupPIS: TBCDField;
    db_MarkupCOFINS: TBCDField;
    db_MarkupIR: TBCDField;
    db_MarkupIMPORTACAO: TBCDField;
    db_MarkupFRETE: TBCDField;
    db_MarkupMARGEMLUCRO: TBCDField;
    ds_Markup: TDataSource;
    GroupBox23: TGroupBox;
    DBGrid1: TDBGrid;
    db_MarkupEMPRESA: TIntegerField;
    Button1: TButton;
    db_MarkupNOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_MarkupAfterOpen(DataSet: TDataSet);
    procedure db_MarkupBeforeOpen(DataSet: TDataSet);
    procedure db_MarkupBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMarkup: TFrmMarkup;

implementation

uses Biblioteca, Global, SQLServer;

{$R *.dfm}

procedure TFrmMarkup.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmMarkup.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmMarkup.db_MarkupAfterOpen(DataSet: TDataSet);
begin
  DimensionarGrid(DBGrid1,self);

end;

procedure TFrmMarkup.db_MarkupBeforeOpen(DataSet: TDataSet);
begin
   db_Markup.ParamByName('EMPRESA').AsInteger:= FSistema.Empresa;

end;

procedure TFrmMarkup.db_MarkupBeforePost(DataSet: TDataSet);
begin
   db_Markup.FieldByName('EMPRESA').AsInteger:= FSistema.Empresa;
end;

procedure TFrmMarkup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_Markup.close;
   FreeAndNil(FrmMarkup);
end;

procedure TFrmMarkup.FormCreate(Sender: TObject);
begin
   db_Markup.open;
end;

procedure TFrmMarkup.FormResize(Sender: TObject);
begin
  DimensionarGrid(DBGrid1,self);

end;

end.
