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

unit Classe.BancoDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IniFiles,
  Data.DB,  
  Classe.Criptografia,
   App.Constantes;

Type

   TBancoDados = Class
   Private
     FSQLNome         : String;
     FSQLVersao       : String;
     FNome            : WideString;
     FEndereco        : WideString;
     FPorta           : Integer;
     FUsuario         : String;
     FSenha           : String;
     FSenhaEncriptada : String;
     FSenhaDecriptada : String;
     FCriptografar    : TCriptografia;

     function GetEndereco: WideString;
     function GetNome: WideString;
     function GetPorta: Integer;
     function GetSenha: String;
     function GetSenhaDecriptada: String;
     function  GetSenhaEncriptada: String;
     function  GetUsuario: String;
     procedure SetEndereco(const Value: WideString);
     procedure SetNome(const Value: WideString);
     procedure SetPorta(const Value: Integer);
     procedure SetSenha(const Value: String);
     procedure SetUsuario(const Value: String);
     procedure SetSenhaEncriptada(const Value: String);
    function GetSQLNome: String;
    function GetSQLVersao: String;
    procedure SetSQLNome(const Value: String);
    procedure SetSQLVersao(const Value: String);
   Public
     constructor Create;
     destructor  Destroy;

     property SQLNome               : String            Read  GetSQLNome            Write SetSQLNome;
     property SQLVersao             : String            Read  GetSQLVersao          Write SetSQLVersao;
     property Nome                  : WideString        Read  GetNome               Write SetNome;
     property Endereco              : WideString        Read  GetEndereco           Write SetEndereco;
     property Porta                 : Integer           Read  GetPorta              Write SetPorta;
     property Usuario               : String            Read  GetUsuario            Write SetUsuario;
     property Senha                 : String            Read  GetSenha              Write SetSenha;
     property SenhaEncriptada       : String            Read  GetSenhaEncriptada    Write SetSenhaEncriptada;
     property SenhaDecriptada       : String            Read  GetSenhaDecriptada;

   End;

implementation

{ TBancoDados }


constructor TBancoDados.Create;
begin
  FCriptografar    := TCriptografia.Create;

  FNome            := DATABASE_NOME;
  FUsuario         := DATABASE_USUARIO;
  FSenha           := DATABASE_SENHA;
  FPorta           := DATABASE_PORTA;
  FEndereco        := DATABASE_SERVIDOR;

  FSQLNome         := DATABASE_GERENCIADOR;
  FSQLVersao       := DATABASE_VERSAO;

end;

destructor TBancoDados.Destroy;
begin
  if Assigned(FCriptografar) then
     FCriptografar.Free;
end;

function TBancoDados.GetEndereco: WideString;
begin
  Result := Trim(FEndereco);
end;

function TBancoDados.GetNome: WideString;
begin
  Result := Trim(FNome);
end;

function TBancoDados.GetPorta: Integer;
begin
  Result := FPorta;
end;

function TBancoDados.GetSenha: String;
begin
  Result := Trim(FSenha);
end;

function TBancoDados.GetSenhaDecriptada: String;
begin
   Result := FCriptografar.fncDecript(FSenhaEncriptada);
end;

function TBancoDados.GetSenhaEncriptada: String;
begin
   //Result := FCriptografar.fncDecript(FSenhaEncriptada);
   Result := FCriptografar.fncEncript(FSenha);
End;


function TBancoDados.GetSQLNome: String;
begin
   Result := FSQLNome;
end;

function TBancoDados.GetSQLVersao: String;
begin
   Result := FSQLVersao;
end;

function TBancoDados.GetUsuario: String;
begin
   Result := Trim(FUsuario);
end;

procedure TBancoDados.SetEndereco(const Value: WideString);
begin
   FEndereco := Trim(Value);
end;

procedure TBancoDados.SetNome(const Value: WideString);
begin
   FNome := Trim(Value);
end;

procedure TBancoDados.SetPorta(const Value: Integer);
begin
   FPorta := Value;
end;

procedure TBancoDados.SetSenha(const Value: String);
begin
   FSenha := Trim(Value);
end;


procedure TBancoDados.SetSenhaEncriptada(const Value: String);
begin
   FSenhaEncriptada := Value;
end;

procedure TBancoDados.SetSQLNome(const Value: String);
begin
   FSQLNome := Value;
end;

procedure TBancoDados.SetSQLVersao(const Value: String);
begin
   FSQLVersao := Value;
end;

procedure TBancoDados.SetUsuario(const Value: String);
begin
   FUsuario := Trim(Value);
end;

end.
