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

unit App.IniFiles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IniFiles;

Type
  TInfFile = Class
  Private
     FIniConfiguracao: TIniFile;
  Public
    procedure InfLoad;
    procedure InfSave;
    function  InfLoadItem(strSessao, strChave: String; ValueDefault:Variant): Variant;
    procedure InfSaveItem(strSessao, strChave: String; ValueDefault:Variant);

  End;


implementation

uses Classe.Global;



procedure TInfFile.InfLoad;
begin
   FIniConfiguracao := TIniFile.create(FSistema.ArquivoCFG);
   FBancoDados.Nome                := FIniConfiguracao.ReadString('PARAMETROS',    'Database',      'Vestis');
   FBancoDados.Endereco            := FIniConfiguracao.ReadString('PARAMETROS',    'Server',        'localhost');
   FBancoDados.Porta               := FIniConfiguracao.ReadInteger('PARAMETROS',   'porta',         1433);
   FBancoDados.SenhaEncriptada     := FIniConfiguracao.ReadString('PARAMETROS',    'senha',         '42/3krr'); // senha: sql2015
   FBancoDados.Senha               := FBancoDados.SenhaDecriptada;
   FIniConfiguracao.Free;
end;

procedure TInfFile.InfSave;
begin
   FIniConfiguracao := TIniFile.create(FSistema.ArquivoCFG);
   FIniConfiguracao.WriteString('PARAMETROS',  'Database', FBancoDados.Nome            );
   FIniConfiguracao.WriteString('PARAMETROS',  'Server',   FBancoDados.Endereco        );
   FIniConfiguracao.WriteInteger('PARAMETROS', 'porta',    FBancoDados.Porta           );
   FIniConfiguracao.WriteString('PARAMETROS',  'senha',    FBancoDados.SenhaEncriptada );
   FIniConfiguracao.Free;
end;

function TInfFile.InfLoadItem(strSessao, strChave: String; ValueDefault:Variant): Variant;
begin
   FIniConfiguracao := TIniFile.create(FSistema.ArquivoCFG);
   Result           := FIniConfiguracao.ReadInteger(strSessao, strChave, ValueDefault );
   FIniConfiguracao.Free;
end;

procedure TInfFile.InfSaveItem(strSessao, strChave: String;
  ValueDefault: Variant);
begin
   FIniConfiguracao := TIniFile.create(FSistema.ArquivoCFG);
   FIniConfiguracao.WriteInteger(strSessao, strChave, ValueDefault);
   FIniConfiguracao.Free;
end;




end.
