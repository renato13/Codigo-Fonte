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

unit FRelatorioUsuario;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, DBCtrls, DB, Grids, DBGrids, StdCtrls, Buttons,
       FFrameBarra,   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmUsuarioLog = class(TForm)
      GroupBox2: TGroupBox;
      GridUsuario: TDBGrid;
      db_Usuario:  TFDQuery;
      DS_Usuario: TDataSource;
      db_UsuarioLog: TFDQuery;
      DS_Log: TDataSource;
      GroupBox1: TGroupBox;
      GroupBox3: TGroupBox;
      DBGrid1: TDBGrid;
      DBMemo1: TDBMemo;
      Panel1: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      FrmFrameBarra1: TFrmFrameBarra;
    db_UsuarioLogCODIGO: TIntegerField;
    db_UsuarioLogUSERNAME: TStringField;
    db_UsuarioLogDATA: TSQLTimeStampField;
    db_UsuarioLogHORAS: TTimeField;
    db_UsuarioLogMODULO: TStringField;
    db_UsuarioLogACAO: TStringField;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmUsuarioLog: TFrmUsuarioLog;

implementation

uses Biblioteca;

{$R *.dfm}

procedure TFrmUsuarioLog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_Usuario.close;
   db_UsuarioLog.close;

   Action := cafree;
end;

procedure TFrmUsuarioLog.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmUsuarioLog.FormCreate(Sender: TObject);
begin
   db_Usuario.open;
   db_UsuarioLog.open;

end;

procedure TFrmUsuarioLog.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_F12 then
   begin
      If pergunta('Deseja realmente limpar todos os LOGs do usuário ' +
        db_Usuario.fieldbyname('UserName').asstring + '?') = true then
      begin
         db_UsuarioLog.first;
         While not db_UsuarioLog.eof do
         begin
            db_UsuarioLog.Delete;
         end;
         Aviso('Todos os LOGs foram excluidos');
      end;
   end;

end;

end.
