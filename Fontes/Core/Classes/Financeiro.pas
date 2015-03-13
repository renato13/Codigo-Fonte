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


unit Financeiro;

interface

uses DBTables, Forms, Classes, Windows, Controls, Variants, ComCtrls,
   WinTypes, WinProcs, Tabs, ExtCtrls, DB, DBCtrls, Grids, Menus, Dialogs,
   StdCtrls, Messages, Graphics, shellapi, BDE, Sysutils, Printers,
     Uni;

// Proximo Numero
function CalcularProximoNumero(Tbl_CtaReceber: TFDQuery;
  wProximoNumero: string): string;

function Formatar(Texto: string; TamanhoDesejado: integer;
  AcrescentarADireita: boolean = true; CaracterAcrescentar: char = ' '): string;

Var

   TblVenda, TblCtaReceber, TblCtaPagar, TblCaixa, TblProdutos, TblPedido,
     TblCompra: TFDQuery;

implementation

uses Biblioteca, Global, Firebird, FPrincipal;

// Proximo Numero
function CalcularProximoNumero(Tbl_CtaReceber: TFDQuery;
  wProximoNumero: string): string;
begin

   wInteger[0] := StrToInt(wProximoNumero) + 1;

   if not(Tbl_CtaReceber.State in [dsedit]) then
      Tbl_CtaReceber.edit;

   Tbl_CtaReceber.FieldByName('NossoNumero').AsString :=
     Formatar(IntToStr(wInteger[0]), 13, // tamanho padrão
     false, '0');
   Result := Tbl_CtaReceber.FieldByName('NossoNumero').AsString;

end;

function Formatar(Texto: string; TamanhoDesejado: integer;
  AcrescentarADireita: boolean = true; CaracterAcrescentar: char = ' '): string;
{
  OBJETIVO: Acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante
  fique com o tamanho desejado

  Texto : Texto original
  TamanhoDesejado: Tamanho que a string resultante deverá ter
  AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
  TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
  Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
  FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
  Se o tamanho do texto form MAIOR que o desejado, eliminar últimos caracteres do texto
}
var
   QuantidadeAcrescentar, TamanhoTexto, PosicaoInicial: integer;

begin
   case CaracterAcrescentar of
      '0' .. '9', 'a' .. 'z', 'A' .. 'Z':
         ; { Não faz nada }
   else
      CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto, 1, TamanhoDesejado) +
        StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar) +
        Copy(Texto, PosicaoInicial, TamanhoDesejado);

   Result := AnsiUpperCase(Texto);
end;

///
/// Criar recebimento parcial
///


end.
