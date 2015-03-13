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

unit FServidorSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, StdCtrls, ExtCtrls, Buttons, FileCtrl, DBCtrls, DB,
  IniFiles,  Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus, FFrameBarra;

type
   TFrmServidorSistema = class(TForm)
      PopupMenu1: TPopupMenu;
      restaurarpadres1: TMenuItem;
    FrmFrameBarra1: TFrmFrameBarra;
    AdvSmoothPanel1: TPanel;
    PainelMsg: TLabel;
    EditServerIP: TLabeledEdit;
    EditDB: TLabeledEdit;
    EditSenha: TLabeledEdit;
    EditPorta: TLabeledEdit;
    BtnServidor: TBitBtn;
    W7Panel1: TPanel;
    BtnOk: TButton;
    BtnCancelar: TButton;
    BtnTestar: TButton;
    btnfechar: TButton;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnTestarClick(Sender: TObject);
      procedure BtnOkClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure BtnServidorClick(Sender: TObject);
      procedure restaurarpadres1Click(Sender: TObject);
      procedure btnfecharClick(Sender: TObject);
   private
      { Private declarations }
      SQLConexaoTeste: TFDConnection;
      procedure prcSetarClasseUsuario;
      procedure prcCamposFormulario;

   public
      { Public declarations }
   end;

var
   FrmServidorSistema: TFrmServidorSistema;

implementation

uses Biblioteca, FPrincipal, Global, FServidorComputadoresRede;

{$R *.dfm}

procedure TFrmServidorSistema.FormCreate(Sender: TObject);
begin
   FInfFile.InfLoad;
   prcCamposFormulario;
   SQLConexaoTeste              := TFDConnection.create(nil);
   SQLConexaoTeste.LoginPrompt  := False;
   SQLConexaoTeste.Connected    := False;
   SQLConexaoTeste.DriverName                  := FrmPrincipal.DBConexao.DriverName;
   SQLConexaoTeste.Params.Values['Server']     := FrmPrincipal.DBConexao.Params.Values['Server'];
   SQLConexaoTeste.Params.Values['Database']   := FrmPrincipal.DBConexao.Params.Values['Database'];
   SQLConexaoTeste.Params.Values['port']       := FrmPrincipal.DBConexao.Params.Values['port'];
   SQLConexaoTeste.Params.Values['user_name']  := FrmPrincipal.DBConexao.Params.Values['user_name'];
   SQLConexaoTeste.Params.Values['password']   := FrmPrincipal.DBConexao.Params.Values['password'];
end;

procedure TFrmServidorSistema.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_ESCAPE then
      close;
end;

procedure TFrmServidorSistema.restaurarpadres1Click(Sender: TObject);
begin
   EditServerIP.text  := 'localhost';
   EditPorta.text     := '1433';
   EditDB.text        := 'Vestis';
   EditSenha.text     := 'sql2014'; //Decript( '12/3qurt' );
end;

procedure TFrmServidorSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SQLConexaoTeste.Free;
   Action := Cafree;
end;

Procedure TFrmServidorSistema.prcSetarClasseUsuario;
begin
   FBancoDados.Nome     :=EditDB.Text;
   FBancoDados.Endereco :=EditServerIP.Text;
   FBancoDados.Porta    :=StrToIntDef((EditPorta.Text),0);
   FBancoDados.Senha    :=EditSenha.Text;
end;

procedure TFrmServidorSistema.BtnTestarClick(Sender: TObject);
begin

   PainelMsg.Caption := 'aguarde, conectando ao servidor remoto...';
   prcSetarClasseUsuario;

   SQLConexaoTeste.LoginPrompt  := False;
   SQLConexaoTeste.Connected    := False;
   SQLConexaoTeste.DriverName   := 'MSSQL';
   Update;
   Try
      SQLConexaoTeste.Params.Values['Server']     := FBancoDados.Endereco;
      SQLConexaoTeste.Params.Values['Database']   := FBancoDados.Nome;
      SQLConexaoTeste.Params.Values['port']       := IntToStr(FBancoDados.Porta);
      SQLConexaoTeste.Params.Values['user_name']  := FBancoDados.Usuario;
      SQLConexaoTeste.Params.Values['password']   := FBancoDados.Senha;
      SQLConexaoTeste.Connected                   := True;

      PainelMsg.Caption := '';
      Aviso('Sucesso na conexão com servidor');
      SQLConexaoTeste.Connected := False;
      ConexaoGlobal :=True;
   except
      ConexaoGlobal :=False;
      SQLConexaoTeste.Connected := False;
      AvisoSistema('Falha na conexão com o servidor'+
           sLineBreak+
           'verifique: '+
           sLineBreak+
           '- nome ou IP do servidor'+
           sLineBreak+
           '- firewall do Windows (liberar a porta 1433)'+
           sLineBreak+
           '- nome do banco de dados'+
           sLineBreak+
           '- Senha "sa" do servidor SQL Server'
      );
   end;
   PainelMsg.Caption := '';
   Update;

end;

procedure TFrmServidorSistema.BtnServidorClick(Sender: TObject);
begin
   FrmServidorComputadoresRede := TFrmServidorComputadoresRede.create(self);
   FrmServidorComputadoresRede.ShowModal;

   // EditServerIP.Text :=DeletaCaract(EditServerIP.Text ,'\');

end;

procedure TFrmServidorSistema.btnfecharClick(Sender: TObject);
begin
   blTerminate := True;
   FrmPrincipal.TerminarAplicacao;
end;

procedure TFrmServidorSistema.BtnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmServidorSistema.BtnOkClick(Sender: TObject);
begin

   SQLConexaoTeste.Connected := False;

   prcSetarClasseUsuario;

   FInfFile.infSave;

   AvisoSistema('O Sistema será fechado.' +
                sLineBreak+
                sLineBreak+
                'E execute-o novamente, para carregar as configurações adequadas.');


   btnfecharClick(Sender);


end;

Procedure TFrmServidorSistema.prcCamposFormulario;
begin
   EditDB.Text         := FBancoDados.Nome;
   EditServerIP.Text   := FBancoDados.Endereco;
   EditPorta.Text      := IntToStr(FBancoDados.Porta);
   EditSenha.Text      := FBancoDados.SenhaDecriptada;
end;



end.



