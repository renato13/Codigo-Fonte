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


unit FFrameBotoes;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Buttons, DB, DBConsts, ExtCtrls, Biblioteca, Global, Menus,
   
   Classe.Global;

type

   TFrmFrameBotoes = class(TFrame)
    W7Panel1: TPanel;
    SpbExtra: TSpeedButton;
    SpbSair: TSpeedButton;
    SpbImprimir: TSpeedButton;
    SpbProcurar: TSpeedButton;
    SpbExcluir: TSpeedButton;
    SpbCancelar: TSpeedButton;
    SpbSalvar: TSpeedButton;
    SpbEditar: TSpeedButton;
    SpbAdicionar: TSpeedButton;
      procedure SpbUltimoClick(Sender: TObject);
      procedure SpbProximoClick(Sender: TObject);
      procedure SpbAnteriorClick(Sender: TObject);
      procedure SpbPrimeiroClick(Sender: TObject);
      procedure FrameResize(Sender: TObject);
    procedure SpbSairClick(Sender: TObject);
    procedure SpbExcluirClick(Sender: TObject);
    procedure SpbCancelarClick(Sender: TObject);
    procedure SpbSalvarClick(Sender: TObject);
    procedure SpbEditarClick(Sender: TObject);
    procedure SpbAdicionarClick(Sender: TObject);

   private
    function ChecarCampo(stCampo: String): Boolean;
      { Private declarations }

   public
      { Public declarations }

      // DataSource    : TDataSource;
      FDataSource: TDataSource;
      procedure AtivaEdicao;
      procedure DesativaEdicao;
      procedure ChecarCampos;

   protected

   published

      property DataSource: TDataSource read FDataSource write FDataSource;

      // property DataSource: TDataSource read FDataSource write SetDataSource;
      // property DataSource: TDataSource read FDataSource;

   end;

var
   i: integer;

implementation

uses FPrincipal;

{$R *.dfm}

procedure TFrmFrameBotoes.SpbEditarClick(Sender: TObject);
begin

   if DataSource.DataSet.IsEmpty then
   begin
      Aviso('Não há dados para alterar.' + #13 + #10 + #13 + #10 +
        'Localize o registro desejado ou inclua clicando no primeiro botão');
      Abort;
   end;

   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if not(DataSource.DataSet.State in [dsInsert, dsEdit]) then
      DataSource.DataSet.Edit;

   AtivaEdicao;

end;

procedure TFrmFrameBotoes.SpbExcluirClick(Sender: TObject);
begin
   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if DataSource.DataSet.IsEmpty then
   begin
      Informar('Não há dados para excluir');
      Abort;
   end;

   if not pergunta('Deseja realmente excluir este registro?') then
   begin
      Abort;
   end;

   DataSource.DataSet.Delete;

   DesativaEdicao;

end;

procedure TFrmFrameBotoes.SpbSairClick(Sender: TObject);
begin
   Screen.ActiveForm.Close;

end;

procedure TFrmFrameBotoes.SpbSalvarClick(Sender: TObject);
begin
    if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;


   if (DataSource.DataSet.State in [dsInsert, dsEdit]) then
   begin
      if ChecarCampo('EMPRESA') then
      Begin
         DataSource.DataSet.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
      End;
      DataSource.DataSet.Post;
   End;

   DesativaEdicao;

end;

procedure TFrmFrameBotoes.SpbCancelarClick(Sender: TObject);
begin

   if DataSource.DataSet.IsEmpty then
   begin
      exit;
   end;

   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if (DataSource.DataSet.State in [dsInsert, dsEdit]) then
   begin
      DataSource.DataSet.Cancel;
      // aviso('Alterações foram desfeitas.');
   end;

   DesativaEdicao;

end;

procedure TFrmFrameBotoes.SpbPrimeiroClick(Sender: TObject);
begin

   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if not(DataSource.DataSet.State in [dsInsert, dsEdit]) then
      DataSource.DataSet.First;

end;

procedure TFrmFrameBotoes.SpbAdicionarClick(Sender: TObject);
begin

   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if not(DataSource.DataSet.State in [dsInsert, dsEdit]) then
      DataSource.DataSet.Append;

   AtivaEdicao;

end;

procedure TFrmFrameBotoes.SpbAnteriorClick(Sender: TObject);
begin

   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if not(DataSource.DataSet.State in [dsInsert, dsEdit]) then
      DataSource.DataSet.Prior;

end;

procedure TFrmFrameBotoes.SpbProximoClick(Sender: TObject);
begin

   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if not(DataSource.DataSet.State in [dsInsert, dsEdit]) then
      DataSource.DataSet.Next;

end;

procedure TFrmFrameBotoes.SpbUltimoClick(Sender: TObject);
begin

   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if not(DataSource.DataSet.State in [dsInsert, dsEdit]) then
      DataSource.DataSet.Last;

end;

procedure TFrmFrameBotoes.AtivaEdicao;
begin

   SpbAdicionar.Enabled := False;
   SpbExcluir.Enabled := False;
   SpbEditar.Enabled := False;
   SpbProcurar.Enabled := False;
   SpbImprimir.Enabled := False;
   SpbSair.Enabled := False;

   SpbSalvar.Enabled := True;
   SpbCancelar.Enabled := True;

end;

procedure TFrmFrameBotoes.DesativaEdicao;
begin

   SpbAdicionar.Enabled := True;
   SpbExcluir.Enabled := True;
   SpbEditar.Enabled := True;
   SpbProcurar.Enabled := True;
   SpbImprimir.Enabled := True;
   SpbSair.Enabled := True;

   SpbSalvar.Enabled := False;
   SpbCancelar.Enabled := False;

end;

procedure TFrmFrameBotoes.FrameResize(Sender: TObject);
begin
   DesativaEdicao;

end;

procedure TFrmFrameBotoes.ChecarCampos;
begin

   // checar se o campo existe
   for i := 0 to DataSource.DataSet.FieldCount - 1 do
   Begin
      if DataSource.DataSet.Fields[i].Required then
      begin

         if Empty(DataSource.DataSet.Fields[i].AsString) then
         begin
            // TratarErros('O campo '+UpperCase(DataSource.DataSet.Fields[i].FieldName) + ' é obrigatório. Verifique.')  ;
            Abort;
         end;

      end;
   End;

end;

function TFrmFrameBotoes.ChecarCampo(stCampo:String) : Boolean;
begin

  Result := False;

  // checar se o campo existe
  for i := 0 to DataSource.DataSet.FieldCount - 1 do
  Begin
    if (UpperCase( DataSource.DataSet.Fields[i].FieldName )=stCampo)  and
        (DataSource.DataSet.Fields[i].Tag<>99)                        then
    begin
      Result := True;
      Break;
    end;
  End;

end;

end.
