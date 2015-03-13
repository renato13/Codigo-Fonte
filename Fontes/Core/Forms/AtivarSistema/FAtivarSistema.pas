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

unit FAtivarSistema;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, FFrameBarra, Mask, DBCtrls, DB, WinInet,
           IniFiles,
   Classe.Global,
   App.Constantes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
   TFrmAtivarSistema = class(TForm)
      Panel1: TPanel;
      BtnAtivar: TButton;
      BtnSair: TButton;
      Panel2: TPanel;
      FrmFrameBarra1: TFrmFrameBarra;
      DS_AtivacaoRemota: TDataSource;
      Panel3: TPanel;
      Panel4: TPanel;
      Label2: TLabel;
      Label3: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      EditLimiteUsuarios: TDBEdit;
      EditDataExpira: TDBEdit;
      EditLimiteDias: TEdit;
      EditDataInicial: TDBEdit;
      Panel5: TPanel;
      Label4: TLabel;
      DBEdit10: TDBEdit;
      db_AtivacaoRemota: TFDQuery;
    DBConexaoRemota: TFDConnection;
      lblStatus: TLabel;
      db_AtivacaoLocal: TFDQuery;
      DS_AtivacaoLocal: TDataSource;
      db_AtivacaoRemotaCODIGO: TIntegerField;
      db_AtivacaoRemotaDATA_LIBERACAO: TDateField;
      db_AtivacaoRemotaDATA_VALIDADE: TDateField;
      db_AtivacaoRemotaUSUARIOS: TIntegerField;
      db_AtivacaoRemotaNOME: TStringField;
      db_AtivacaoRemotaEMAIL: TStringField;
      db_AtivacaoRemotaSISTEMA: TStringField;
      db_AtivacaoRemotaLIBERADO: TStringField;
      db_AtivacaoRemotaultimo_acesso: TSQLTimeStampField;
      db_AtivacaoRemotasistema_nome: TStringField;
      db_AtivacaoRemotasistema_versao: TStringField;
      db_AtivacaoRemotasistema_descricao: TStringField;
      db_AtivacaoRemotasistema_tipo: TStringField;
      procedure BtnSairClick(Sender: TObject);
      procedure BtnAtivarClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure db_AtivacaoLocalAfterPost(DataSet: TDataSet);
      procedure DBConexaoRemotaBeforeConnect(Sender: TObject);
      procedure db_AtivacaoLocalAfterScroll(DataSet: TDataSet);
      procedure FormShow(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmAtivarSistema: TFrmAtivarSistema;

implementation

uses FPrincipal, Biblioteca, MD5, Global;

{$R *.dfm}

procedure TFrmAtivarSistema.BtnAtivarClick(Sender: TObject);
Var
   varString: string;
   ndias: Double;

begin

   ndias := 0;

   If InternetGetConnectedState(@i, 0) = False then
   begin
      BeepCritica;
      AvisoSistema(#13 + #10 +
        'Para ATIVAR é necessário estar conectado à internet.' + #13 + #10 + #13
        + #10 + 'Verifique sua conexão e tente novamente.' + #13 + #10);
      Exit;

   end;

   db_AtivacaoRemota.close;
   db_AtivacaoRemota.ParamByName('EMAIL').AsString :=
     LowerCase(db_AtivacaoLocal.FieldByName('EMAIL').AsString);
   db_AtivacaoRemota.Open;

   if db_AtivacaoRemota.RecordCount < 1 then
   begin

      db_AtivacaoRemota.close;

      BeepCritica;
      AvisoSistema(#13 + #10 + 'O Email ' + db_AtivacaoLocal.FieldByName
        ('EMAIL').AsString + ' não foi encontrado em nosso banco de dados.' +
        #13 + #10 + #13 + #10 +
        'Enquanto não comprar o sistema, não será possivel ativar para versão completa e nao terá direito direito a suporte técnico.'
        + #13 + #10);
      Exit;
   end;

   // ...........................................................................
   // Se tudo correu bem (aprovado=true) então gravar no banco de dados
   // ...........................................................................

   varString := db_AtivacaoLocal.FieldByName('EMAIL').AsString;

   db_AtivacaoLocal.close;
   db_AtivacaoLocal.Open;

   While not db_AtivacaoLocal.eof do
      db_AtivacaoLocal.Delete;

   db_AtivacaoLocal.close;
   db_AtivacaoLocal.Open;
   db_AtivacaoLocal.Append;
   db_AtivacaoLocal.FieldByName('EMAIL').AsString := varString;
   db_AtivacaoLocal.FieldByName('DATA_ATIVACAO').AsDateTime :=          db_AtivacaoRemota.FieldByName('DATA_LIBERACAO').AsDateTime;
   db_AtivacaoLocal.FieldByName('VALIDADE_ATIVACAO').AsDateTime :=      db_AtivacaoRemota.FieldByName('DATA_VALIDADE').AsDateTime;
   db_AtivacaoLocal.FieldByName('LIMITE_USUARIOS').AsInteger :=         db_AtivacaoRemota.FieldByName('USUARIOS').AsInteger;
   db_AtivacaoLocal.FieldByName('LIBERADO').AsString :=                 db_AtivacaoRemota.FieldByName('LIBERADO').AsString;

   db_AtivacaoLocal.FieldByName('sistema_nome').AsString :=               db_AtivacaoRemota.FieldByName('sistema_nome').AsString;
   db_AtivacaoLocal.FieldByName('sistema_versao').AsString :=             db_AtivacaoRemota.FieldByName('sistema_versao').AsString;
   db_AtivacaoLocal.FieldByName('sistema_descricao').AsString :=          db_AtivacaoRemota.FieldByName('sistema_descricao').AsString;
   db_AtivacaoLocal.FieldByName('sistema_tipo').AsString :=               db_AtivacaoRemota.FieldByName('sistema_tipo').AsString;
   db_AtivacaoLocal.Post;

   // gravar no INI local
   { TO-DO: Reativar gravacao de ativação do sitema }
   {
   FInfFile := TIniFile.Create(FSistema.ArquivoCFG);
   FInfFile.WriteString('PARAMETROS', 'sistema_nome',        db_AtivacaoRemota.FieldByName('sistema_nome').AsString);
   FInfFile.WriteString('PARAMETROS', 'sistema_versao',      db_AtivacaoRemota.FieldByName('sistema_versao').AsString);
   FInfFile.WriteString('PARAMETROS', 'sistema_descricao',   db_AtivacaoRemota.FieldByName('sistema_descricao').AsString);
   FInfFile.WriteString('PARAMETROS', 'sistema_tipo',        db_AtivacaoRemota.FieldByName('sistema_tipo').AsString);
   FInfFile.Free;
   }
   ndias := db_AtivacaoLocal.FieldByName('VALIDADE_ATIVACAO').AsDateTime - db_AtivacaoLocal.FieldByName('DATA_ATIVACAO').AsDateTime;

   db_AtivacaoRemota.Edit;
   db_AtivacaoRemota.FieldByName('ultimo_acesso').AsDateTime := Now;
   db_AtivacaoRemota.Post;

   db_AtivacaoRemota.close;
   DBConexaoRemota.Close;

   if (db_AtivacaoLocal.FieldByName('LIBERADO').AsString <> 'S') or
     (Date > db_AtivacaoLocal.FieldByName('VALIDADE_ATIVACAO').AsDateTime) or
     (ndias <= 0) then
   Begin
      blnUsuarioAutorizado := False;
      AvisoSistema('Sistema não autorizado para uso neste computador.  ' + #13 +
        #10 + #13 + #10 +
        'Entre em contato com a YYYY SISTEMAS para regularização.');

      Exit;
   End;

   db_AtivacaoLocal.close;
   blnUsuarioAutorizado := True;
   AvisoSistema('Sistema ativado com sucesso!' + #13 + #10 + #13 + #10 +
     'Para concluir ATIVAÇÃO, feche o sistema e abra novamente.');

   close;

end;

procedure TFrmAtivarSistema.BtnSairClick(Sender: TObject);
begin
   /// ////////////////////////////////////////////////////////////////////
   /// Se esta variável AcessoOK  estiver como TRUE todo acesso ao sistema
   /// será PERMITIDO. Certificando que é um usuário autentico.
   /// Autorizado por nossa empresa.
   /// ////////////////////////////////////////////////////////////////////

   blnUsuarioAutorizado := False;

   close;

end;

procedure TFrmAtivarSistema.DBConexaoRemotaBeforeConnect(Sender: TObject);
begin
   {
   DBConexaoRemota.Server   := REMOTO_DATABASE_SERVIDOR;
   DBConexaoRemota.Database := REMOTO_DATABASE_NOME;
   DBConexaoRemota.Username := REMOTO_DATABASE_USUARIO;
   DBConexaoRemota.Password := REMOTO_DATABASE_SENHA;
   DBConexaoRemota.Port     := REMOTO_DATABASE_PORTA;
   }
end;

procedure TFrmAtivarSistema.db_AtivacaoLocalAfterPost(DataSet: TDataSet);
begin

   if db_AtivacaoLocal.FieldByName('LIBERADO').AsString = 'S' then
   begin
      lblStatus.caption := 'Status do sistema: LIBERADO';
   end
   else
   begin
      lblStatus.caption := 'Status do sistema: BLOQUEADO';
   end;

   EditLimiteDias.Text := FormatFloat('###,##0',
     db_AtivacaoLocal.FieldByName('VALIDADE_ATIVACAO').AsDateTime -
     db_AtivacaoLocal.FieldByName('DATA_ATIVACAO').AsDateTime);

end;

procedure TFrmAtivarSistema.db_AtivacaoLocalAfterScroll(DataSet: TDataSet);
begin

   if db_AtivacaoLocal.FieldByName('LIBERADO').AsString = 'S' then
   begin
      lblStatus.caption := 'Status do sistema: LIBERADO';
   end
   else
   begin
      lblStatus.caption := 'Status do sistema: BLOQUEADO';
   end;

   EditLimiteDias.Text := FormatFloat('###,##0',
     db_AtivacaoLocal.FieldByName('VALIDADE_ATIVACAO').AsDateTime -
     db_AtivacaoLocal.FieldByName('DATA_ATIVACAO').AsDateTime);

end;

procedure TFrmAtivarSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   DBConexaoRemota.Close;

end;

procedure TFrmAtivarSistema.FormCreate(Sender: TObject);
begin

   blnUsuarioAutorizado := False;

   {  reconfigurar para FireDac
   DBConexaoRemota.Disconnect;

   DBConexaoRemota.Server   := REMOTO_DATABASE_SERVIDOR;
   DBConexaoRemota.Database := REMOTO_DATABASE_NOME;
   DBConexaoRemota.Username := REMOTO_DATABASE_USUARIO;
   DBConexaoRemota.Password := REMOTO_DATABASE_SENHA;
   DBConexaoRemota.Port     := REMOTO_DATABASE_PORTA;
   }

   db_AtivacaoRemota.Open;
   db_AtivacaoLocal.Open;

   EditLimiteDias.Text := FormatFloat('###,##0',
     db_AtivacaoLocal.FieldByName('VALIDADE_ATIVACAO').AsDateTime -
     db_AtivacaoLocal.FieldByName('DATA_ATIVACAO').AsDateTime);

   if db_AtivacaoLocal.FieldByName('LIBERADO').AsString = 'S' then
   begin
      lblStatus.caption := 'Status do sistema: LIBERADO';
   end
   else
   begin
      lblStatus.caption := 'Status do sistema: BLOQUEADO';
   end;

end;

procedure TFrmAtivarSistema.FormShow(Sender: TObject);
begin

   If InternetGetConnectedState(@i, 0) = False then
   begin
      FormMensagem(#13 + #10 +
        'Para ATIVAR é necessário estar conectado à internet.' + #13 + #10 + #13
        + #10 + 'Verifique sua conexão.' + #13 + #10);
   end;

end;


end.
