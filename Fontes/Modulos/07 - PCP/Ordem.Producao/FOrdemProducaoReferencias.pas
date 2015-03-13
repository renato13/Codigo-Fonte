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

unit FOrdemProducaoReferencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FFrameBarra, StdCtrls, Buttons, Grids, DBGrids, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB;

type
  TFrmOrdemProducaoReferencias = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    FrmFrameBarra1: TFrmFrameBarra;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dbGrid_Referencias: TDBGrid;
    dbProcurarProdutos: TIDBEditDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbGrid_ReferenciasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbGrid_ReferenciasKeyPress(Sender: TObject; var Key: Char);
  private
    procedure GradeAbrir;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrdemProducaoReferencias: TFrmOrdemProducaoReferencias;

implementation

uses FOrdemProducaoGrade, FBaseDados_PCP, FPrincipal, Biblioteca, SQLServer,
  Global;

{$R *.dfm}

procedure TFrmOrdemProducaoReferencias.BitBtn1Click(Sender: TObject);
begin
   if (BaseDados_PCP.db_OrdemProducaoItens.State in [dsedit,dsinsert]) Then
      BaseDados_PCP.db_OrdemProducaoItens.Post;
   close;
end;

procedure TFrmOrdemProducaoReferencias.BitBtn2Click(Sender: TObject);
begin
   if (BaseDados_PCP.db_OrdemProducaoItens.State in [dsedit,dsinsert]) Then
      BaseDados_PCP.db_OrdemProducaoItens.Cancel;
   close;

end;

procedure TFrmOrdemProducaoReferencias.dbGrid_ReferenciasKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   // ativado somente se o cursor estive na coluna QUANTIDADE
   IF Key = VK_F2 Then
   begin
      strReferencia  := UpperCase( Trim(BaseDados_PCP.db_OrdemProducaoItens.FieldByName('REFERENCIA').AsString) );
      // if dbGrid_Produtos.SelectedField=db_PedidoItensQTDE then
      if  not empty(strReferencia) then
      Begin
         GradeAbrir;
      End;

   End;

   IF Key = VK_F8 Then
   begin
      if dbProcurarProdutos.Execute then
      begin
         If not(BaseDados_PCP.db_OrdemProducaoItens.state in [dsEdit]) then
            BaseDados_PCP.db_OrdemProducaoItens.Edit;

         BaseDados_PCP.db_OrdemProducaoItens.FieldByName('REFERENCIA').AsString    := dbProcurarProdutos.ResultFieldAsString('REFERENCIA');
         BaseDados_PCP.db_OrdemProducaoItens.Post;

         dbGrid_Referencias.Refresh;
      end;
   end;

end;

procedure TFrmOrdemProducaoReferencias.dbGrid_ReferenciasKeyPress(
  Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmOrdemProducaoReferencias.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    IF Key = VK_ESCAPE Then
      close;


end;

procedure TFrmOrdemProducaoReferencias.FormShow(Sender: TObject);
begin
   dbGrid_Referencias.SetFocus;
end;

procedure TFrmOrdemProducaoReferencias.GradeAbrir;
begin
   strReferencia  := UpperCase( Trim(BaseDados_PCP.db_OrdemProducaoItens.FieldByName('REFERENCIA').AsString) );

   if ValidarReferenciaCorTamanho(strReferencia)=false Then
      exit;

   if (BaseDados_PCP.db_OrdemProducaoItens.State in [dsedit,dsinsert]) Then
      BaseDados_PCP.db_OrdemProducaoItens.Post;

   FrmOrdemProducaoGrade := TFrmOrdemProducaoGrade.create(self);
   FrmOrdemProducaoGrade.ShowModal;


end;

end.
