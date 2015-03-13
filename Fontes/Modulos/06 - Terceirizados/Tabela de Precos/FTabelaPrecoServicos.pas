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

unit FTabelaPrecoServicos;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, FFrameBarra, FFrameBotoes,
   Mask, DBCtrls, Grids, DBGrids,   ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmTabelaPrecoServicos = class(TForm)
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
    db_TabelaPreco:  TFDQuery;
    ds_TabelaPreco: TDataSource;
    GroupBox4: TGroupBox;
    dbGrid_Tabela: TDBGrid;
    db_TabelaPrecoCODIGO: TIntegerField;
    db_TabelaPrecoDATA_ATUALIZADA: TSQLTimeStampField;
    db_TabelaPrecoNOME: TStringField;
    db_TabelaPrecoVLR_UNIT: TBCDField;
    PopupMenu1: TPopupMenu;
    mnuPreenchergradea: TMenuItem;
    db_TabelaInserts: TFDQuery;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_TabelaPrecoNewRecord(DataSet: TDataSet);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure db_TabelaPrecoBeforePost(DataSet: TDataSet);
    procedure mnuPreenchergradeaClick(Sender: TObject);
    procedure dbGrid_TabelaKeyPress(Sender: TObject; var Key: Char);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
   private
    procedure Incluir(snome: string);
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmTabelaPrecoServicos: TFrmTabelaPrecoServicos;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Global;

{$R *.dfm}

procedure TFrmTabelaPrecoServicos.FormCreate(Sender: TObject);
begin

   FrmFrameBotoes1.DataSource := ds_TabelaPreco;
   db_TabelaPreco.open;

end;

procedure TFrmTabelaPrecoServicos.FormShow(Sender: TObject);
begin

  if UpperCase(FSistema.ExeName)<>'VESTISPCP' then
    PopupMenu1.Items.Delete(0);

end;

procedure TFrmTabelaPrecoServicos.FrmFrameBotoes1SpbAdicionarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  dbGrid_Tabela.SetFocus;

end;

procedure TFrmTabelaPrecoServicos.FrmFrameBotoes1SpbCancelarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmTabelaPrecoServicos.FrmFrameBotoes1SpbEditarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmTabelaPrecoServicos.FrmFrameBotoes1SpbExcluirClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmTabelaPrecoServicos.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmTabelaPrecoServicos.FrmFrameBotoes1SpbSalvarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmTabelaPrecoServicos.mnuPreenchergradeaClick(
  Sender: TObject);
begin

   if not db_TabelaPreco.IsEmpty then
   begin
     if pergunta('Há itens na grade. '+ sLineBreak+
                 'Este processo irá excluir tudo '+
                 'e refazer a grade... Deseja continuar?')=false then
     begin
        exit;
     end;
   end;

   db_TabelaPreco.first;
   while not db_TabelaPreco.eof do
      db_TabelaPreco.delete;

   //-----------------------------------------------------

   Incluir('CORTE');
   Incluir('COSTURA');
   Incluir('BORDADO');
   Incluir('ACABAMENTO');
   Incluir('LAVANDERIA');

   db_TabelaPreco.Refresh;

end;

procedure TFrmTabelaPrecoServicos.Incluir(snome:string);
begin

   snome:=UpperCase(Trim(snome) );
   db_TabelaInserts.ParamByName('SNOME').AsString :=snome;
   db_TabelaInserts.ExecSQL;

end;


procedure TFrmTabelaPrecoServicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_TabelaPreco.close;
   FreeAndNil(FrmTabelaPrecoServicos);
end;

procedure TFrmTabelaPrecoServicos.dbGrid_TabelaKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmTabelaPrecoServicos.db_TabelaPrecoBeforePost(DataSet: TDataSet);
begin
   db_TabelaPreco.FieldByName('DATA_ATUALIZADA').AsDateTime :=Date;
   db_TabelaPreco.FieldByName('NOME').AsString :=Trim(db_TabelaPreco.FieldByName('NOME').AsString);
end;

procedure TFrmTabelaPrecoServicos.db_TabelaPrecoNewRecord(DataSet: TDataSet);
begin
   db_TabelaPreco.FieldByName('DATA_ATUALIZADA').AsDateTime :=Date;
end;

end.
