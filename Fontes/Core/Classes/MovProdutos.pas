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


UNIT MovProdutos;

interface

Uses Classes, Windows, StdCtrls, WinTypes, Sysutils, WinProcs, Forms,
   Tabs, ExtCtrls, DB, DBCtrls,
   DBTables, Grids, Menus, Dialogs, Controls, Messages,
   Graphics, MMSystem, shellapi, Printers, variants;

// Monstar codigo do produto
Function MontarCodigoProduto(Grupo, Subgrupo, Codigo: String): String;

implementation

uses Global, {FBaseDados, FParametros,}  Biblioteca, FBaseDados;

// preencher NN zeros na frente do código
Function MontarCodigoProduto(Grupo, Subgrupo, Codigo: String): String;
var
   xSeparador: String;
begin

   BaseDados.db_Parametros.close;
   BaseDados.db_Parametros.Open;

   xSeparador := '';
   Wtexto[0] := '';
   Wtexto[1] := '';
   Wtexto[2] := '';
   Wtexto[3] := '';

   xSeparador := BaseDados.db_Parametros.FieldByName('PRODUTO_SEPARADOR').AsString;
   Wtexto[0] := ZeroEsquerda(Grupo, BaseDados.db_Parametros.FieldByName('PRODUTO_GRUPO').AsInteger);
   Wtexto[1] := ZeroEsquerda(Subgrupo, BaseDados.db_Parametros.FieldByName('PRODUTO_SUBGRUPO').AsInteger);
   Wtexto[2] := ZeroEsquerda(Codigo, BaseDados.db_Parametros.FieldByName('PRODUTO_PRODUTO').AsInteger);
   Wtexto[3] := Wtexto[0] + xSeparador + Wtexto[1] + xSeparador + Wtexto[2];

   Result := Wtexto[3];

end;

End.
