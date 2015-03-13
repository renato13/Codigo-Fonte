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

unit reinit;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms;

procedure ReinitializeForms;
function LoadNewResourceModule(Locale: LCID): Longint;

implementation

type
   TAsInheritedReader = class(TReader)
   public
      procedure ReadPrefix(var Flags: TFilerFlags;
        var AChildPos: Integer); override;
   end;

procedure TAsInheritedReader.ReadPrefix(var Flags: TFilerFlags;
  var AChildPos: Integer);
begin
   inherited ReadPrefix(Flags, AChildPos);
   Include(Flags, ffInherited);
end;

function SetResourceHInstance(NewInstance: Longint): Longint;
var
   CurModule: PLibModule;
begin
   CurModule := LibModuleList;
   Result := 0;
   while CurModule <> nil do
   begin
      if CurModule.Instance = HInstance then
      begin
         if CurModule.ResInstance <> CurModule.Instance then
            FreeLibrary(CurModule.ResInstance);
         CurModule.ResInstance := NewInstance;
         Result := NewInstance;
         Exit;
      end;
      CurModule := CurModule.Next;
   end;
end;

function LoadNewResourceModule(Locale: LCID): Longint;
var
   FileName: array [0 .. 260] of char;
   P: PChar;
   LocaleName: array [0 .. 4] of char;
   NewInst: Longint;
begin
   GetModuleFileName(HInstance, FileName, SizeOf(FileName));
   GetLocaleInfo(Locale, LOCALE_SABBREVLANGNAME, LocaleName,
     SizeOf(LocaleName));
   P := PChar(@FileName) + lstrlen(FileName);
   while (P^ <> '.') and (P <> @FileName) do
      Dec(P);
   NewInst := 0;
   Result := 0;
   if P <> @FileName then
   begin
      Inc(P);
      if LocaleName[0] <> #0 then
      begin
         // Then look for a potential language/country translation
         lstrcpy(P, LocaleName);
         NewInst := LoadLibraryEx(FileName, 0, LOAD_LIBRARY_AS_DATAFILE);
         if NewInst = 0 then
         begin
            // Finally look for a language only translation
            LocaleName[2] := #0;
            lstrcpy(P, LocaleName);
            NewInst := LoadLibraryEx(FileName, 0, LOAD_LIBRARY_AS_DATAFILE);
         end;
      end;
   end;
   if NewInst <> 0 then
      Result := SetResourceHInstance(NewInst)
end;

function InternalReloadComponentRes(const ResName: string; HInst: THandle;
  var Instance: TComponent): Boolean;
var
   HRsrc: THandle;
   ResStream: TResourceStream;
   AsInheritedReader: TAsInheritedReader;
begin { avoid possible EResNotFound exception }
   if HInst = 0 then
      HInst := HInstance;
   HRsrc := FindResource(HInst, PChar(ResName), RT_RCDATA);
   Result := HRsrc <> 0;
   if not Result then
      Exit;
   ResStream := TResourceStream.Create(HInst, ResName, RT_RCDATA);
   try
      AsInheritedReader := TAsInheritedReader.Create(ResStream, 4096);
      try
         Instance := AsInheritedReader.ReadRootComponent(Instance);
      finally
         AsInheritedReader.Free;
      end;
   finally
      ResStream.Free;
   end;
   Result := True;
end;

function ReloadInheritedComponent(Instance: TComponent;
  RootAncestor: TClass): Boolean;

   function InitComponent(ClassType: TClass): Boolean;
   begin
      Result := False;
      if (ClassType = TComponent) or (ClassType = RootAncestor) then
         Exit;
      Result := InitComponent(ClassType.ClassParent);
      Result := InternalReloadComponentRes(ClassType.ClassName,
        FindResourceHInstance(FindClassHInstance(ClassType)), Instance)
        or Result;
   end;

begin
   Result := InitComponent(Instance.ClassType);
end;

procedure ReinitializeForms;
var
   Count: Integer;
   I: Integer;
   Form: TForm;
begin
   Count := Screen.FormCount;
   for I := 0 to Count - 1 do
   begin
      Form := Screen.Forms[I];
      ReloadInheritedComponent(Form, TForm);
   end;
end;

end.
