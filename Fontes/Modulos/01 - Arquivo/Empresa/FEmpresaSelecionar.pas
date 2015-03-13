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

unit FEmpresaSelecionar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB,   FFrameBarra, Grids,
  DBGrids, Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmEmpresaSelecionar = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    db_Parametros:  TFDQuery;
    DS_Parametros: TDataSource;
    Panel1: TPanel;
    BtnSelecionar: TButton;
    BtnEditar: TButton;
    BtnSair: TButton;
    DBGrid1: TDBGrid;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmpresaSelecionar: TFrmEmpresaSelecionar;

implementation

uses FEmpresa, Global, SQLServer, Biblioteca, FPrincipal;

{$R *.dfm}

procedure TFrmEmpresaSelecionar.BtnSelecionarClick(Sender: TObject);
begin
   FSistema.Empresa :=db_Parametros.FieldByName('EMPRESA').AsInteger;
   FParametrosAtualizaDados;

   close;

end;

procedure TFrmEmpresaSelecionar.BtnEditarClick(Sender: TObject);
begin
   FrmEmpresa := TFrmEmpresa.Create(self);
   FrmEmpresa.ShowModal;
   db_Parametros.Close;
   db_Parametros.Open;

end;

procedure TFrmEmpresaSelecionar.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmEmpresaSelecionar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_Parametros.Close;
end;

procedure TFrmEmpresaSelecionar.FormCreate(Sender: TObject);
begin
   db_Parametros.Open;

end;

procedure TFrmEmpresaSelecionar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if key=vk_F4 then
      BtnEditarClick(Sender);

   if key=vk_escape then
      close;


end;

end.
