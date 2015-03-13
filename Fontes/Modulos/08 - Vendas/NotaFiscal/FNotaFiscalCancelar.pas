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

unit FNotaFiscalCancelar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FFrameBarra, ExtCtrls, Buttons, DBCtrls, DB, Vcl.Mask,
   classe.global;

type
   TFrmNotaFiscalCancelar = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnSair: TBitBtn;
    PnlValorDevolucao: TPanel;
    GroupBox1: TGroupBox;
    dbMemoJustificar: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    painelCaracteres: TPanel;
    grpOpcaoCancelar: TRadioGroup;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbMemoJustificarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmNotaFiscalCancelar: TFrmNotaFiscalCancelar;

implementation

uses Global, Biblioteca, FBaseDados, SQLServer, FNotaFiscal,
  FNotaFiscalProcessamento, Classe.Usuarios;

{$R *.dfm}


procedure TFrmNotaFiscalCancelar.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmNotaFiscalCancelar.dbMemoJustificarChange(Sender: TObject);
begin
   strJustificativa :='';
   strJustificativa:=Trim(dbMemoJustificar.Text);
   painelCaracteres.Caption :=Concat(' caracteres: ',IntToStr( Length(strJustificativa) )  );
end;

procedure TFrmNotaFiscalCancelar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if (BaseDados.db_Vendas.state in [dsedit,dsinsert] ) then
      BaseDados.db_Vendas.Cancel;

   Action :=Cafree;

end;

procedure TFrmNotaFiscalCancelar.FormCreate(Sender: TObject);
begin

   Caption :='Nota Fiscal: ' + IntToStr(inNotaFiscal) +' | Cancelar ';

   strSimNao:='';

   BaseDados.db_Vendas.Edit;
   BaseDados.db_Vendas.FieldByName('CANCELAMENTO_DATA').AsDateTime        := Now;
   BaseDados.db_Vendas.FieldByName('CANCELAMENTO_USUARIO').AsWideString   := FUsuario.UsuarioNome;
   if (BaseDados.db_Vendas.state in [dsedit,dsinsert] ) then
      BaseDados.db_Vendas.Post;

   BaseDados.db_Vendas.Refresh;

   FUsuario.prcLogUsuario('Nota Fiscal | Cancelar','Entrou no modulo de cancelamento de NF-e numero ' + IntToStr(inNotaFiscal)  );


end;

procedure TFrmNotaFiscalCancelar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_ESCAPE then
   begin
      BtnSairClick(Sender);
   end;

end;

procedure TFrmNotaFiscalCancelar.FormShow(Sender: TObject);
begin
   dbMemoJustificarChange(Sender);
end;

procedure TFrmNotaFiscalCancelar.BtnOkClick(Sender: TObject);
begin
   if (BaseDados.db_Vendas.state in [dsedit,dsinsert] ) then
      BaseDados.db_Vendas.Post;

   strJustificativa :='';
   strJustificativa:=Trim(dbMemoJustificar.Text);
   strJustificativa:=UpperCase(strJustificativa);

   painelCaracteres.Caption :=Concat(' caracteres: ',IntToStr( Length(strJustificativa) )  );

   if Length(strJustificativa)<16 then
   begin
     AvisoSistemaErro('Escreva uma justificativa válida para o cancelamento da Nota Fiscal.'
                      +sLineBreak
                      +sLineBreak
                      +'O minimo é 16 caracteres.' );

     exit;
   end;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------

   case grpOpcaoCancelar.ItemIndex of
       0:   strOpcaoCancelar :='PARCIAL';
       1:   strOpcaoCancelar :='TUDO';
   end;

   strSimNao:='OK';

   Close;


end;

end.
