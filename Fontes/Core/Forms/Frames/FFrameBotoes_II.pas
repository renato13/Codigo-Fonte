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

unit FFrameBotoes_II;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Menus,
  Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Classe.Global;

type

   TFrmFrameBotoes_II = class(TFrame)
      PainelBotoes: TPanel;
      SpbSair: TSpeedButton;
      SpbImprimir: TSpeedButton;
      SpbProcurar: TSpeedButton;
      SpbExcluir: TSpeedButton;
      SpbCancelar: TSpeedButton;
      SpbSalvar: TSpeedButton;
      SpbEditar: TSpeedButton;
      SpbAdicionar: TSpeedButton;
      SpbExtra1: TSpeedButton;
      SpbExtra2: TSpeedButton;
      PopupMenu1: TPopupMenu;
      Helpdabarradebotes1: TMenuItem;

      procedure SpbCancelarClick(Sender: TObject);
      procedure SpbSalvarClick(Sender: TObject);
      procedure SpbEditarClick(Sender: TObject);
      procedure SpbExcluirClick(Sender: TObject);
      procedure SpbUltimoClick(Sender: TObject);
      procedure SpbProximoClick(Sender: TObject);
      procedure SpbAnteriorClick(Sender: TObject);
      procedure SpbPrimeiroClick(Sender: TObject);
      procedure SpbSairClick(Sender: TObject);
      procedure SpbAdicionarClick(Sender: TObject);
      procedure FrameResize(Sender: TObject);
   private
    function ChecarCampo(stCampo: String): Boolean;
      { Private declarations }

   public
      { Public declarations }

      DataSource: TDataSource;

      procedure AtivaEdicao;
      procedure DesativaEdicao;

   end;

implementation

uses FPrincipal, Biblioteca, Global;

{$R *.dfm}

procedure TFrmFrameBotoes_II.SpbEditarClick(Sender: TObject);
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

procedure TFrmFrameBotoes_II.SpbSairClick(Sender: TObject);
begin
   // Screen.FocusedForm.Close;
   Screen.ActiveForm.Close;

end;

procedure TFrmFrameBotoes_II.SpbSalvarClick(Sender: TObject);
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
      // Aviso('Dados salvos com sucesso.');

   end;

   DesativaEdicao;

end;

procedure TFrmFrameBotoes_II.SpbCancelarClick(Sender: TObject);
begin

   if DataSource.DataSet.IsEmpty then
   begin
      Informar('Não há registro na tela');
      Abort;
   end;

   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if (DataSource.DataSet.State in [dsInsert, dsEdit]) then
      DataSource.DataSet.Cancel;

   DesativaEdicao;

end;

procedure TFrmFrameBotoes_II.SpbExcluirClick(Sender: TObject);
begin

   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if DataSource.DataSet.IsEmpty then
   begin
      Informar('Não há dados para excluir');
      Abort;
   end;

   if not(DataSource.DataSet.State in [dsInsert, dsEdit]) then
   begin
      if pergunta('Deseja excluir este registro?') then
      begin
         DataSource.DataSet.Delete;
      end;
   end;

   DesativaEdicao;

end;

procedure TFrmFrameBotoes_II.SpbPrimeiroClick(Sender: TObject);
begin

   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if not(DataSource.DataSet.State in [dsInsert, dsEdit]) then
      DataSource.DataSet.First;

end;

procedure TFrmFrameBotoes_II.SpbAdicionarClick(Sender: TObject);
begin
   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if not(DataSource.DataSet.State in [dsInsert, dsEdit]) then
      DataSource.DataSet.Append;

   AtivaEdicao;

end;

procedure TFrmFrameBotoes_II.SpbAnteriorClick(Sender: TObject);
begin

   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if not(DataSource.DataSet.State in [dsInsert, dsEdit]) then
      DataSource.DataSet.Prior;

end;

procedure TFrmFrameBotoes_II.SpbProximoClick(Sender: TObject);
begin

   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if not(DataSource.DataSet.State in [dsInsert, dsEdit]) then
      DataSource.DataSet.Next;

end;

procedure TFrmFrameBotoes_II.SpbUltimoClick(Sender: TObject);
begin

   if not DataSource.DataSet.Active then
      DataSource.DataSet.Active := True;

   if not(DataSource.DataSet.State in [dsInsert, dsEdit]) then
      DataSource.DataSet.Last;

end;

procedure TFrmFrameBotoes_II.AtivaEdicao;
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

procedure TFrmFrameBotoes_II.DesativaEdicao;
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

procedure TFrmFrameBotoes_II.FrameResize(Sender: TObject);
begin
   DesativaEdicao;
end;

function TFrmFrameBotoes_II.ChecarCampo(stCampo:String) : Boolean;
Var
   i: integer;
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
