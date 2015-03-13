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


Unit FBancos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Menus, Mask, DBCtrls, DB,  
          ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmBancos = class(TForm)
      GroupBox1: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label5: TLabel;
      EditNOME: TDBEdit;
      DBEdit_Codigo: TDBEdit;
      Panel4: TPanel;
      BtnSair: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnNovaNF: TBitBtn;
      BtnProcurar: TBitBtn;
      DS_BANCOS: TDataSource;
      DB_BANCOS:  TFDQuery;
      SpeedButton1: TSpeedButton;
    dbEditPesquisar: TIDBEditDialog;
      procedure SpeedButton1Click(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure Btn_SairClick(Sender: TObject);
      procedure Salvar1Click(Sender: TObject);
      procedure Cancelar1Click(Sender: TObject);
      procedure Excluir1Click(Sender: TObject);
      procedure Sair1Click(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure BtnNovaNFClick(Sender: TObject);
      procedure BtnProcurarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmBancos: TFrmBancos;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.DFM}

procedure TFrmBancos.FormCreate(Sender: TObject);
begin
   DB_BANCOS.open;

end;

procedure TFrmBancos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
      close;

end;

procedure TFrmBancos.Btn_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmBancos.Salvar1Click(Sender: TObject);
begin
   BtnSalvar.Click;
end;

procedure TFrmBancos.SpeedButton1Click(Sender: TObject);
begin

   AvisoSistema(' Nº do banco se refere a identificação do banco. ' + #13 + #10
     + #13 + #10 + 'Exemplos: ' + #13 + #10 + '001 - BANCO DO BRASIL  ' + #13 +
     #10 + '341 - ITAU   ' + #13 + #10 + 'e assim por diante...  ');

end;

procedure TFrmBancos.Cancelar1Click(Sender: TObject);
begin
   BtnCancelar.Click;
end;

procedure TFrmBancos.Excluir1Click(Sender: TObject);
begin
   BtnExcluir.Click;
end;

procedure TFrmBancos.Sair1Click(Sender: TObject);
begin
   BtnSair.Click;
end;

procedure TFrmBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DB_BANCOS.close;

   FreeAndNil( FrmBancos );

end;

procedure TFrmBancos.BtnCancelarClick(Sender: TObject);
begin

   DB_BANCOS.Cancel;

end;

procedure TFrmBancos.BtnExcluirClick(Sender: TObject);
begin

   If DB_BANCOS.IsEmpty then
   Begin
      BeepCritica;
      Informar('Não há dados para excluir');
      exit;
   end;

   If Pergunta('Deseja realmente excluir este registro?') = False then
      exit;

   DB_BANCOS.Delete;

end;

procedure TFrmBancos.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmBancos.BtnSalvarClick(Sender: TObject);
begin

   If Empty(DB_BANCOS.FieldByName('CODIGO').AsString) = True then
   Begin
      BeepCritica;
      Informar('Informe o Código do banco');
      DBEdit_Codigo.SetFocus;
   End;

   // SALVAR REGISTRO
   If (DB_BANCOS.state in [dsEdit, dsInsert]) then
   Begin
      DB_BANCOS.Post;
   End;

end;

procedure TFrmBancos.BtnNovaNFClick(Sender: TObject);
begin

   DB_BANCOS.Append;
   DBEdit_Codigo.SetFocus;

end;

procedure TFrmBancos.BtnProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      DB_BANCOS.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   End;
end;

end.
