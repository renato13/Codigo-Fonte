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

unit Classe.Criptografia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

Type
   TCriptografia = Class
   Private
      FEncriptar  : WideString;
      FDecriptar  : WideString;
      Procedure prcLimparVariaveis;
   Public
     function  fncEncript(Encript: WideString): WideString;
     function  fncDecript(Decript: WideString): WideString;
   end;

implementation

{ TCriptografia }

procedure TCriptografia.prcLimparVariaveis;
begin
  FEncriptar  :='';
  FDecriptar  :='';
end;

function TCriptografia.fncDecript(Decript: WideString): WideString;
var
   strEncriptar            : WideString;
   StrEncriptado           : WideString;
   intComprimento          : Integer;
   intContador             : Integer;
   intOrdinal              : Integer;
   strOrdinal              : WideString;
   intRestoDivisor         : Integer;
begin
   strEncriptar := Decript;
   StrEncriptado := '';
   intComprimento := Length(Decript);
   intRestoDivisor := Length(Decript) mod 2;
   For intContador := intComprimento downto 1 do
      StrEncriptado := StrEncriptado + Copy(strEncriptar, intContador, 1);
   strEncriptar := '';
   For intContador := 1 To intComprimento do
   begin
      strOrdinal := Copy(StrEncriptado, intContador, 1);
      intOrdinal := ord(strOrdinal[1]);
      if intRestoDivisor > 0 then
      begin
         if not(intContador / 2 = Int(intContador / 2)) then
            strEncriptar := strEncriptar + CHR(intOrdinal + 1)
         else
            strEncriptar := strEncriptar + CHR(intOrdinal - 1);
      end
      else
      begin
         if intContador / 2 = Int(intContador / 2) then
            strEncriptar := strEncriptar + CHR(intOrdinal + 1)
         else
            strEncriptar := strEncriptar + CHR(intOrdinal - 1);
      end;
   end;
   StrEncriptado := strEncriptar;
   Result := StrEncriptado;

   prcLimparVariaveis;
end;

function TCriptografia.fncEncript(Encript: WideString): WideString;
var
   strEncriptar            : WideString;
   StrEncriptado           : WideString;
   intComprimento          : Integer;
   intContador             : Integer;
   intOrdinal              : Integer;
   strOrdinal              : WideString;
begin
   strEncriptar := Encript;
   StrEncriptado := '';
   intComprimento := Length(Encript);
   for intContador := intComprimento downto 1 do
      StrEncriptado := StrEncriptado + Copy(strEncriptar, intContador, 1);
   strEncriptar := '';
   For intContador := 1 To intComprimento do
   begin
      strOrdinal := Copy(StrEncriptado, intContador, 1);
      intOrdinal := ord(strOrdinal[1]);
      if intContador / 2 = Int(intContador / 2) then
         strEncriptar := strEncriptar + CHR(intOrdinal + 1)
      else
         strEncriptar := strEncriptar + CHR(intOrdinal - 1);
   end;
   StrEncriptado := strEncriptar;
   Result := StrEncriptado;

   prcLimparVariaveis;

end;

end.
