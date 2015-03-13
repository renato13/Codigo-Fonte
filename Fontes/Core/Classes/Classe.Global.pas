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


Unit Classe.Global;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IniFiles,
  Classe.Sistema,
  Classe.EMail,
  Classe.Parametros,
  Classe.Usuarios,
  Classe.Criptografia,
  Classe.SQLConexao,
  Classe.BancoDados,
  App.IniFiles,
  Classe.Beep,
  Classe.Exeinfo;

  Procedure CriarObjetos;
  Procedure DestruirObjetos;
  Procedure InitVariables;
  Procedure FParametrosAtualizaDados;

Var
   FMailConfig     : TMailConfig;
   FSistema        : TSistema;
   FParametros     : TParametros;
   FUsuario        : TUsuario;
   FCriptografia   : TCriptografia;
   FSQLConexao     : TSQLConexao;
   FBancoDados     : TBancoDados;
   FInfFile        : TInfFile;
   FAvisoSonoro    : TBTBeeper;
   FExeInfo        : TExeInfo;

implementation

uses SQLServer;

procedure FParametrosAtualizaDados;
begin
   FParametros :=  GetParametros;
end;


Procedure CriarObjetos;
begin
   FMailConfig     := TMailConfig.Create;
   FSistema        := TSistema.Create;
   FParametros     := TParametros.Create;
   FUsuario        := TUsuario.Create;
   FCriptografia   := TCriptografia.Create;
   FSQLConexao     := TSQLConexao.Create;
   FBancoDados     := TBancoDados.Create;
   FInfFile        := TInfFile.Create;
   FAvisoSonoro    := TBTBeeper.Create(Application);
   FExeInfo        := TExeInfo.Create(Application);

end;

procedure DestruirObjetos;
begin
   if Assigned(FMailConfig) then
      FMailConfig.Free;

   if Assigned(FSistema) then
      FSistema.Destroy;

   if Assigned(FParametros) then
      FParametros.Destroy;

   if Assigned(FUsuario) then
      FUsuario.Destroy;

   if Assigned(FCriptografia) then
      FCriptografia.Destroy;

   if Assigned(FBancoDados) then
      FBancoDados.Destroy;

   if Assigned(FSQLConexao) then
      FSQLConexao.Destroy;

   if Assigned(FInfFile) then
      FInfFile.Free;

   if Assigned(FAvisoSonoro) then
      FAvisoSonoro.Free;

   if Assigned(FExeInfo) then
      FExeInfo.Free;

end;

Procedure InitVariables;
begin
//
end;

end.
