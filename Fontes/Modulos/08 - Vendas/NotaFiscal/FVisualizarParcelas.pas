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

unit FVisualizarParcelas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls, DBTables,
   variants,          FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmVisualizarParcelas = class(TForm)
      GroupBox1: TGroupBox;
      DBGrid1: TDBGrid;
      Panel2: TPanel;
      Label8: TLabel;
      DBEdit4: TDBEdit;
      DS_CtaReceber: TDataSource;
      db_CtaReceber:  TFDQuery;
      db_CtaReceberCLIENTE: TStringField;
      db_CtaReceberDOCUMENTO: TStringField;
      db_CtaReceberDATA: TDateField;
      db_CtaReceberVENC: TDateField;
      db_CtaReceberVALOR: TBCDField;
      db_CtaReceberQUITADO: TStringField;
      db_CtaReceberFPAGTO: TStringField;
      db_CtaReceberVENDEDOR: TStringField;
      db_CtaReceberPLANO_C: TStringField;
      db_CtaReceberNRO_NOTA: TStringField;
      PainelBotoes: TPanel;
      BtnSair: TBitBtn;
      BtnGerar: TBitBtn;
      db_CtaReceberGERARBOLETO: TStringField;
      db_CtaReceberNOSSONUMERO: TStringField;
      db_CtaReceberCODIGO: TIntegerField;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure bbtn_excluiClick(Sender: TObject);
      procedure BtnGerarClick(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure FormCreate(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }

      totparc: integer;

   public
      { Public declarations }
   end;

var
   FrmVisualizarParcelas: TFrmVisualizarParcelas;
   i, TotReg: integer;

implementation

uses Biblioteca, FPrincipal, Global, FCtaReceber;

{$R *.DFM}

procedure TFrmVisualizarParcelas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_CtaReceber.close;

   Action := caFree;

end;

procedure TFrmVisualizarParcelas.FormCreate(Sender: TObject);
begin
   db_CtaReceber.close;
   db_CtaReceber.open;
end;

procedure TFrmVisualizarParcelas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_escape then
      close;

end;

procedure TFrmVisualizarParcelas.bbtn_excluiClick(Sender: TObject);
begin
   db_CtaReceber.delete;
end;

procedure TFrmVisualizarParcelas.BtnGerarClick(Sender: TObject);
begin

   If (db_CtaReceber.state in [dsedit, dsinsert]) then
      db_CtaReceber.post;

   close;

End;

procedure TFrmVisualizarParcelas.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmVisualizarParcelas.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

end.
