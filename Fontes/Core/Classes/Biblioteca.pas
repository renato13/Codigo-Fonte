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


unit Biblioteca;

interface

uses DBTables, Classes, Windows, Controls, Variants, ComCtrls,
   WinTypes, WinProcs, Tabs, ExtCtrls, DBCtrls,
   Grids, Menus, Dialogs, StdCtrls, Messages, Graphics, WinSock,
   Printers, shellapi, MMSystem, Sysutils, DBGrids,
   frxClass, frxExportMail,  Character, Math, Forms,

   FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
   FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
   FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
   FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,

   Classe.Global;

type

   PNetResourceArray = ^TNetResourceArray;

   TNetResourceArray = array [0 .. 100] of TNetResource;
   TStrArray = array of string;
   TExplodeArray = array of String;

   /// /////////////////////////////////////////////////////////////////////
   ///
   /// /////////////////////////////////////////////////////////////////////

function iif(Condicao: Boolean; retornaTrue, retornaFalse: Variant): Variant;

Procedure BeepCritica;
Procedure BeepAlerta;

Function ZeroEsquerda(Valor: String; Tamanho: Integer): String;

{ Valida data no formato ddmmaa ou no formato ddmmaaaa }
function Testar_Data(Dado: string): Boolean;

{ Valida sigla de estados brasileiros }
function UF_Brasil(Dado: string): Boolean;

{ Valida valor nulo }
function RSS00003(Dado: string): Boolean;

{ Verifica CNPJ }
function CNPJ(Dado: string): Boolean;

{ Verifica CPF }
function CPF(Dado: string): Boolean;

{ testa se é número }
function TestNumero(oNumero: String): Boolean;

{ testa se é float }
function TestFloat(oNumero: String): Boolean;

{ alltrim do clipper }
function Alltrim(Text: string): string;

{ rtrim do clipper }
function Rtrim(Text: string): string;

{ mensagem utilizado "Application.MessageBox" }

{ mensagens do sistema }
function Aviso(Mensagem: String): String;

{ mensagens do erro }
function Erro(Mensagem: String): String;

{ rotina para pergunta }
function pergunta(Mensagem: String): Boolean;

function Ok_Cancela(Mensagem, Aviso: String): Boolean;

Function Mensagem(Mensagem: String): String;

Function Atencao(Mensagem: String): String;

Function Informar(Mensagem: String): String;

{ strzero do clipper }
function StrZero(Num: Real; Zeros, Deci: Integer): string;

Function SerieHD(FDrive: String): String;

function DeletaCaract(texto, tipo: string): string;
function DeletaPalavra(texto, tipo: string): string;

{ Informa o tempo que se passou entre datas }
function Idade(Nascimento: TDateTime): String;

{ Testa se a variavel string está vazia ou não }
function Empty(xValue: Variant): Boolean;

function GetFileDate(TheFileName: string): string;

function FileDate(Arquivo: String): String;
function FillDir(Const AMask: string): TStringList;
Function RecycleBin(sFileName: string): Boolean;
function NumLinhasArq(Arqtexto: String): Integer;
function FileCopy(source, dest: String): Boolean;
function ExtractName(const Filename: String): String;
function FileTypeName(const aFile: String): String;
Procedure ZapFiles(vMasc: String);
function PrintImage(Origem: String): Boolean;
Function TestaPlaca(Value: Integer): Boolean;
function DiscoNoDrive(const drive: char): Boolean;
function NumeroSerie(Unidade: PChar): String;
function DetectaDrv(const drive: char): Boolean;
function NumeroDeCores: Integer;
function Percentdisk(Unidade: byte): Integer;
function IsPrinter: Boolean;
function CorrentPrinter: String;
{ Retorna o tamanho de um arquivo }
function fileSize(const Filename: String): LongInt;
{ Retorna o último acesso ao arquivo especificado }
function GetFileLastAccessTime(sFileName: string): TDateTime;

{ criar arquivo TXT }
function MakeTxt(Destino: string): Boolean;

{ procurar arquivos }
procedure ProcuraArquivos(const AEspArq: string; ASubDiretorio: Boolean;
  AResult: TStrings);

{ Funções de Extenso
  Como usar --> Local_do_retorno.caption := extenso(strtofloat(Entrada)); }
function ExtCem(pCem: String): String;
function Extenso(pValor: Extended): String;
function StrZero1(Numero: Real; qtdezeros, Decimais: Integer): string;
function StripDouble(pString: String): String;
{ Fim das Funções Extenso }

{ MessageBox }
function Box(Aviso: String; Cabeca: String): Boolean;

{ Testa CPF }
function ValidaCPF(sCPF: string): string;

{ --> Filtra todos os numeros de uma string }
function SoNumero(Texto:String):String;
function SoLetras(Texto:WideString):WideString;

function FormataDDD(Telefone: String): String;
Function FormataFone(Telefone: String): String;

{ ** PEGA APENAS O TEXTO INDICADO NO PEDIDO ** }
function PegaTexto(texto: String; Qte: Integer): String;

// --> formata a string com o tamanho desejado
function FormataTexto(texto: String; Tamanho: Integer): String;
{ Use apenas If Deletar=True Then faça... }
Function Deletar: Boolean;

Function Formata_CNPJ_CPF(texto: String): String;

Function Formata_CEP(CEP: String): String;

Function UF_CEP(CEP: Integer): String; { Retorna o estado da união }

Procedure MostraAjuda(Titulo: String; texto: WideString);

Function Desconto(Valor, nDesconto: Real): Real;
Function ValorComDesconto(Valor, nDesconto: Real): Real;
Function ValorComAcrescimo(Valor, nAcrescimo: Real): Real;
Function ConverteRealDolar(vReal, vDolar: Real): Real;
Function ConverteRealEuro(vReal, vEuro: Real): Real;

function Acima(X: Real): Integer;

// pega a data de um campo EditMask/Edit, confere e retornar no formato padrão
function fncDataValidar(Dado: string): String;

{ Calcula juros simples }
Function Calc_Juros(Valor, Juros: Real; Atraso: Double; Dias: Integer): Real;
Function Calc_JurosComposto(Valor, Juros: Real; Atraso: Double;
  Dias: Integer): Real;

Function fncGeraPercentual(Valor, Percentual: Currency): Currency;

Function DescobrirPercentual(ValorMenor, ValorMaior: Double): Double;

Function Dia(vData: TDate): Integer;
Function Mes(vData: TDate): Integer;
Function Ano(vData: TDate): Integer;

Procedure Desfazer(Formulario: TForm);
Function CampoTexto(Valor: String; Tamanho: Integer): String;
Function CampoValor(Valor: Real; Tamanho: Integer): String;
Function CampoInteger(Valor: Real; Tamanho: Integer): String;

procedure ImprimeLinha(Nlin, Ncol: Integer; Var LinhaAtual: Integer;
  Var Arquivo: Text; texto: Variant);

function ArrendondarDecimais(Valor:Real) : Real;

{ * ========================================================================== *
  Repete um determinado texto um determinado numero de vezes.
  "REPLICATE" do clipper.
  * ========================================================================== * }
function Replicate(Caractere: char; nCaracteres: Integer): string;

// insere nnn espaços em branco
function Space(nCaracteres: Integer): WideString;

// Log texto de sistema
procedure AddLog(LogTxt: WideString; NomeArquivo, xTimer: String);

// -------------------------------------------------------------------
function Pad(AValue: string; Const ALength: Integer;
  Const ASide: TAlignment): string;
function PadC(AValue: string; Const ALength: Integer): string;

// gera um nome de arquivo (data +  horas )
function GeraArquivo: string;

Procedure AvisoSistema(texto: WideString);
Procedure AvisoSistemaErro(texto: WideString);

Function AvisoQuestao(Titulo, texto: WideString): Boolean;

Function Protegido(Tabela: TFDQuery): Boolean;

Function Centrar(FTextBuf: string; Cols: Integer): String;

Procedure Crosstab(aQuery: TFDQuery; aGrid: tStringGrid; ctColumn: Integer); overload;
Procedure CrossTab(dbDados:TFDQuery; stScriptSQL, stCampoLinhas, stTituloLinha, stCampoColunas , stCampoSomar, stWhere, sCampoOrderBy:String; stOperador:String='Sum'); overload;


Function ListarMenu(Menu: TMainMenu; Tag_Numero: Integer): TStrings;

procedure FixDBGridColumnsWidth(const DBGrid: TDBGrid);


function SubstituirCampoTexto(Text, oldstring, newstring: string): string;
function SubstituiStr (S,Localizar,Substituir : string) : string;

function PrimeiroNome(Nome: String): String;
Function CampoCodigo(Valor: String; Tamanho: Integer): String;

Procedure CriaCodigo(Cod: String; Imagem: TCanvas);

function EncontrarTexto(TextoBase, Value: WideString): Integer;

// Procedure TratarErros(Texto: WideString);
Procedure TratarErros(Mensagem: String);
Procedure FormMensagem(Mensagem: String);

Procedure FormularioErro(E: EDatabaseError);

procedure ValidarCamposT(DataSource: TDataSource);

/// //////////////////////////////////////////////////////////////////////////
function CharIsAlpha(const C: char): Boolean;
function CharIsNum(const C: char): Boolean;
function CharIsAlphaNum(const C: char): Boolean;
function OnlyNumber(const Value: string): String;
function OnlyAlpha(const Value: string): String;
function OnlyAlphaNum(const Value: string): String;

function AsciiToHex(const AString: string): string;
Function HexToAscii(const HexStr: String): String;

/// Validar email
function ValidEmail(email: string): Boolean;

procedure GetComputers(Workgroup: String; Retorno: TStrings);

function CreateNetResourceList(ResourceType: DWord; NetResource: PNetResource;
  out Entries: DWord; out List: PNetResourceArray): Boolean;

procedure ScanNetworkResources(ResourceType, DisplayType: DWord;
  List: TStrings);

function Explode(var a: TStrArray; Border, S: string): Integer;
function Implode(const cSeparator: String; const cArray: TExplodeArray): String;

function MilimetrosParaPixels(Milimetros: Double): Integer;
function DiaSemana(Data: TDateTime): String;

function nDiaSemana(Dia: Integer): String;

// Funciona com EAN8 e EAN13
function Valida_EAN(CODIGO_EAN: String): Boolean;
function DigitoVerificadorCidade( Codigo : String ) : String;


{ Com a Função é possível permitir a entrada de somente letras, números ou letras e números. }
function ValidarCampo(var Key: Char; TipoFiltro: Byte = 0): Boolean;

function ValorParcela(C : Real; J : Real; N : Real) : Real;
Procedure StatusAbrirBuscaCEP(Status:Integer);

function Fix(X: Extended): Extended;
function RoundN(X: Extended): Extended;
function RoundX(X: Extended): Extended;

function CriaSubDir(const NomeSubDir: string): boolean;

procedure DimensionarGrid(dbg: TDbGrid; var fmformulario);
function fncPrimeiraLetra(p_texto: string): string;

Procedure prcStatusMessage(sTitulo,sMessage: string;lbAbrir:boolean);

function Base64Encode(const S: AnsiString): AnsiString;

function Base64Decode(const S: AnsiString): AnsiString;

function fncTipoPessoa ( strID : String) : String;

{ ********************************************************************** }
{ ****************  iniciar codificações ******************************* }
{ ********************************************************************** }

const
  Base64Charset = AnsiString('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/');




implementation


{ Módulos externos - Inclua nesta lista os nomes das Unit's necessárias }
uses Global, FPrincipal, FAvisoSistema, FQuestionar, FAvisoSistemaErro,
    FErrorForm, fBaseComponentes;

function iif(Condicao: Boolean; retornaTrue, retornaFalse: Variant): Variant;
begin
   if Condicao then
      Result := retornaTrue
   else
      Result := retornaFalse;
end;

Procedure BeepCritica;
begin
  FAvisoSonoro.BeepFor(1000, 200); // fim
end;

Procedure BeepAlerta;
begin
  FAvisoSonoro.BeepFor(600, 700); // fim
end;

Function ZeroEsquerda(Valor: String; Tamanho: Integer): String;
Begin

   while Length(Valor) < Tamanho do
      Valor := '0' + Valor;

   Result := Valor;

End;

function TestNumero(oNumero: String): Boolean;
var
   n: Integer;
begin
   Result := true;
   try
      n := StrToInt(oNumero);
   except
      on EConvertError do
         Result := false;
   end;
end;

function TestFloat(oNumero: String): Boolean;
var
   n: Real;
begin
   Result := true;
   n := 0;
   try
      n := StrToFloat(oNumero);
   except
      on EConvertError do
         Result := false;
   end;
end;

{ Valida data no formato ddmmaa ou no formato ddmmaaaa }
function Testar_Data(Dado: string): Boolean;
begin
   Result := true;
   Try
      TDatas := StrTodate(Dado);
      Result := true;
   Except
      ;
      Result := false;
   End;
end;

{ Valida sigla de estados brasileiros }
function UF_Brasil(Dado: string): Boolean;
const
   Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
var
   Posicao: Integer;
begin
   Result := true;
   if Dado <> '' then
   begin
      Posicao := Pos(UpperCase(Dado), Estados);
      if (Posicao = 0) or ((Posicao mod 2) = 0) then
         Result := false
   end;
end; { TESTA_UF }

{ Valida valor nulo }
function RSS00003(Dado: string): Boolean;
begin
   if (Dado = '') or (Dado = '0') then
      Result := false
   else
      Result := true;
end; { RSS00003 }

{ Valida dígito verificador de CNPJ }
function CNPJ(Dado: string): Boolean;
var
   D1: array [1 .. 12] of byte;
   I, DF1, DF2, DF3, DF4, DF5, DF6, Resto1, Resto2, PrimeiroDigito,
     SegundoDigito: Integer;
begin

   Dado := DeletaCaract(Dado, '.');
   Dado := DeletaCaract(Dado, '/');
   Dado := DeletaCaract(Dado, '-');

   Result := true;
   if Length(Dado) = 14 then
   begin
      for I := 1 to 12 do
         if Dado[I] in ['0' .. '9'] then
            D1[I] := StrToInt(Dado[I])
         else
            Result := false;
      if Result then
      begin
         DF1 := 0;
         DF2 := 0;
         DF3 := 0;
         DF4 := 0;
         DF5 := 0;
         DF6 := 0;
         Resto1 := 0;
         Resto2 := 0;
         PrimeiroDigito := 0;
         SegundoDigito := 0;
         DF1 := 5 * D1[1] + 4 * D1[2] + 3 * D1[3] + 2 * D1[4] + 9 * D1[5] + 8 *
           D1[6] + 7 * D1[7] + 6 * D1[8] + 5 * D1[9] + 4 * D1[10] + 3 * D1[11] +
           2 * D1[12];
         DF2 := DF1 div 11;
         DF3 := DF2 * 11;
         Resto1 := DF1 - DF3;
         if (Resto1 = 0) or (Resto1 = 1) then
            PrimeiroDigito := 0
         else
            PrimeiroDigito := 11 - Resto1;
         DF4 := 6 * D1[1] + 5 * D1[2] + 4 * D1[3] + 3 * D1[4] + 2 * D1[5] + 9 *
           D1[6] + 8 * D1[7] + 7 * D1[8] + 6 * D1[9] + 5 * D1[10] + 4 * D1[11] +
           3 * D1[12] + 2 * PrimeiroDigito;
         DF5 := DF4 div 11;
         DF6 := DF5 * 11;
         Resto2 := DF4 - DF6;
         if (Resto2 = 0) or (Resto2 = 1) then
            SegundoDigito := 0
         else
            SegundoDigito := 11 - Resto2;
         if (PrimeiroDigito <> StrToInt(Dado[13])) or
           (SegundoDigito <> StrToInt(Dado[14])) then
            Result := false;
      end;
   end
   else if Length(Dado) <> 0 then
      Result := false;
end; { TESTA_CGC }

{ Valida dígito verificador de CPF }
function CPF(Dado: string): Boolean;
var
   D1: array [1 .. 9] of byte;
   I, DF1, DF2, DF3, DF4, DF5, DF6, Resto1, Resto2, PrimeiroDigito,
     SegundoDigito: Integer;
begin

   Dado := DeletaCaract(Dado, '.');
   Dado := DeletaCaract(Dado, '/');
   Dado := DeletaCaract(Dado, '-');

   Result := true;
   if Length(Dado) = 11 then
   begin
      for I := 1 to 9 do
         if Dado[I] in ['0' .. '9'] then
            D1[I] := StrToInt(Dado[I])
         else
            Result := false;
      if Result then
      begin
         DF1 := 0;
         DF2 := 0;
         DF3 := 0;
         DF4 := 0;
         DF5 := 0;
         DF6 := 0;
         Resto1 := 0;
         Resto2 := 0;
         PrimeiroDigito := 0;
         SegundoDigito := 0;
         DF1 := 10 * D1[1] + 9 * D1[2] + 8 * D1[3] + 7 * D1[4] + 6 * D1[5] + 5 *
           D1[6] + 4 * D1[7] + 3 * D1[8] + 2 * D1[9];
         DF2 := DF1 div 11;
         DF3 := DF2 * 11;
         Resto1 := DF1 - DF3;
         if (Resto1 = 0) or (Resto1 = 1) then
            PrimeiroDigito := 0
         else
            PrimeiroDigito := 11 - Resto1;
         DF4 := 11 * D1[1] + 10 * D1[2] + 9 * D1[3] + 8 * D1[4] + 7 * D1[5] + 6
           * D1[6] + 5 * D1[7] + 4 * D1[8] + 3 * D1[9] + 2 * PrimeiroDigito;
         DF5 := DF4 div 11;
         DF6 := DF5 * 11;
         Resto2 := DF4 - DF6;
         if (Resto2 = 0) or (Resto2 = 1) then
            SegundoDigito := 0
         else
            SegundoDigito := 11 - Resto2;
         if (PrimeiroDigito <> StrToInt(Dado[10])) or
           (SegundoDigito <> StrToInt(Dado[11])) then
            Result := false;
      end;
   end
   else if Length(Dado) <> 0 then
      Result := false;
end; { TESTA_CPF }

function Alltrim(Text: string): string;
begin
   while Pos(' ', Text) > 0 do
      Delete(Text, Pos(' ', Text), 1);
   Result := Text;
end;

function Rtrim(Text: string): string;
var
   n: Integer;
begin
   for n := Length(Text) downto 1 do
   begin
      if Copy(Text, n, 1) <> ' ' then
         break;
      Delete(Text, n, 1);
   end;
   Result := Text;
end;

function StrZero(Num: Real; Zeros, Deci: Integer): string;
var
   tam, z: Integer;
   res, zer: string;
begin
   Str(Num: Zeros: Deci, res);
   res := Alltrim(res);
   tam := Length(res);
   zer := '';
   for z := 1 to (Zeros - tam) do
      zer := zer + '0';
   Result := zer + res;
end;

{ mensagem utilizado "Application.MessageBox" }
function Aviso(Mensagem: String): String;
Var
   Msg: String;
begin
   Msg := '';
   if not Empty(FUsuario.UsuarioNome) then
   begin
      Msg := FUsuario.UsuarioNome + ', ' + #13 + #10 + Mensagem;
   end
   else
   begin
      Msg := Mensagem;
   end;

   Application.MessageBox(PChar(Msg), 'Informação', mb_ok + MB_ICONINFORMATION);

end;

{ mensagem utilizado "Application.MessageBox" sobre erros }
function Erro(Mensagem: String): String;
Var
   Msg: String;
begin

   Msg := '';
   if not Empty(FUsuario.UsuarioNome) then
   begin
      Msg := FUsuario.UsuarioNome + ', ' + #13 + #10 + Mensagem;
   end
   else
   begin
      Msg := Mensagem;
   end;

   // raise ErroExcecao.Create( Mensagem );

   Application.MessageBox(PChar(Msg), 'Erro do usuário', mb_ok + MB_ICONERROR);


end;

// rotina para pergunta
function pergunta(Mensagem: String): Boolean;
Var
   Msg: String;
begin
   Msg := '';
   if not Empty(FUsuario.UsuarioNome) then
   begin
      Msg := FUsuario.UsuarioNome + ', ' + #13 + #10 + Mensagem;
   end
   else
   begin
      Msg := Mensagem;
   end;

   If (Application.MessageBox(PChar(Msg), 'Atenção', mb_YesNo + mb_iconQuestion)
     = IDYES) then
      Result := true
   else
      Result := false;
end;

function Mensagem(Mensagem: String): String;
Var
   Msg: String;
begin
   Msg := '';
   if not Empty(FUsuario.UsuarioNome) then
   begin
      Msg := FUsuario.UsuarioNome + ', ' + #13 + #10 + Mensagem;
   end
   else
   begin
      Msg := Mensagem;
   end;

   Application.MessageBox(PChar(Msg), 'Mensagem', MB_ICONEXCLAMATION);
end;

Function Atencao(Mensagem: String): String;
Var
   Msg: String;
begin
   Msg := '';
   if not Empty(FUsuario.UsuarioNome) then
   begin
      Msg := FUsuario.UsuarioNome + ', ' + #13 + #10 + Mensagem;
   end
   else
   begin
      Msg := Mensagem;
   end;

   Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING);
end;

Function Informar(Mensagem: String): String;
Var
   Msg: String;
begin
   Msg := '';
   if not Empty(FUsuario.UsuarioNome) then
   begin
      Msg := FUsuario.UsuarioNome + ', ' + #13 + #10 + Mensagem;
   end
   else
   begin
      Msg := Mensagem;
   end;

   Application.MessageBox(PChar(Msg), 'Atenção', MB_ICONWARNING);
end;

{ mensagem utilizado "Application.MessageBox" }
function Ok_Cancela(Mensagem, Aviso: String): Boolean;
Var
   Msg: String;
begin
   Msg := '';
   if not Empty(FUsuario.UsuarioNome) then
   begin
      Msg := FUsuario.UsuarioNome + ', ' + #13 + #10 + Mensagem;
   end
   else
   begin
      Msg := Mensagem;
   end;

   if Empty(Aviso) then
      Aviso := 'Atenção';

   If (Application.MessageBox(PChar(Msg), PChar(Aviso),
     MB_OKCANCEL + MB_DEFBUTTON1 + mb_iconQuestion) = IDOK) then
      Result := true
   else
      Result := false;

end;

{ ****************** }
Function SerieHD(FDrive: String): String;
var
   Serial: DWord;
   DirLen, Flags: DWord;
   DLabel: Array [0 .. 11] of char;
begin
   Try
      GetVolumeInformation(PChar(FDrive + ':\'), DLabel, 12, @Serial, DirLen,
        Flags, nil, 0);
      Result := IntToHex(Serial, 8);
   Except
      Result := '';
   end;
end;

{ excluir caractere especifico }
function DeletaCaract(texto, tipo: string): string;
begin
   while Pos(tipo, texto) > 0 do
      Delete(texto, Pos(tipo, texto), 1);
   Result := texto;

end;

function DeletaPalavra(texto, tipo: string): string;
var
   Tamanho: Integer;
begin
   Tamanho := Length(tipo);

   while Pos(tipo, texto) > 0 do
      Delete(texto, Pos(tipo, texto), Tamanho);
   Result := texto;

end;

// Informa o tempo que se passou entre datas
function Idade(Nascimento: TDateTime): String;
Type
   Data = Record
      Ano: Word;
      Mes: Word;
      Dia: Word;
   End;
Const
   Qdm: String = '312831303130313130313031'; // Qtde dia no mes
Var
   Dth: Data; // Data de hoje
   Dtn: Data; // Data de nascimento
   anos, meses, Dias, nrd: Shortint; // Usadas para calculo da idade
begin
   DecodeDate(Date, Dth.Ano, Dth.Mes, Dth.Dia);
   DecodeDate(Nascimento, Dtn.Ano, Dtn.Mes, Dtn.Dia);
   anos := Dth.Ano - Dtn.Ano;
   meses := Dth.Mes - Dtn.Mes;
   if meses < 0 then
   begin
      Dec(anos);
      meses := meses + 12;
   end;
   Dias := Dth.Dia - Dtn.Dia;
   if Dias < 0 then
   begin
      nrd := StrToInt(Copy(Qdm, (Dth.Mes - 1) * 2 - 1, 2));
      if ((Dth.Mes - 1) = 2) and ((Dth.Ano Div 4) = 0) then
      begin
         Inc(nrd);
      end;
      Dias := Dias + nrd;
      meses := meses - 1;
   end;

   Result := IntToStr(anos) + ' anos ' + IntToStr(meses) + ' meses e ' +
     IntToStr(Dias) + ' dias';
end;

{ Testa se a variavel string está vazia ou não }
{
  function Empty(inString:String): Boolean;
  Var
  index : Byte;
  Begin

  // --------------------------------------------------------------------
  // original
  index := 1;
  Empty := True;
  while (index <= Length(inString))and (index <> 0) do
  begin
  if (inString[index]='') or (inString[index]=' ') Then
  begin
  inc(index)
  end
  else
  Begin
  Empty := False;
  index := 0
  end;
  end;

  // --------------------------------------------------------------------




  end;
}

function Empty(xValue: Variant): Boolean;
var
   sTmp: String;
   iDia, iMes, iAno: Word;
begin
   { Pré-Definição do Retorno }
   Result := false;

   if xValue = Null then
   begin
      Result := true;
      Exit;
   end;

   if VarType(xValue) = VarEmpty then
      Result := true;

   if VarType(xValue) = varNull then
      Result := true;

   if VarType(xValue) = varSmallInt then
      Result := (xValue = 0);

   if VarType(xValue) = varInteger then
      Result := (xValue = 0);

   if VarType(xValue) = varSingle then
      Result := (xValue = 0);

   if VarType(xValue) = varDouble then
      Result := (xValue = 0);

   if VarType(xValue) = varCurrency then
      Result := (xValue = 0);

   if VarType(xValue) = varDate then
   begin
      Result := (xValue = Null);
      if not Result then
      begin
         DecodeDate(xValue, iAno, iMes, iDia);
         if ((iDia = 30) and (iMes = 12) and (iAno = 1899)) then
            Result := true;
      end;

      if not Result then
      begin
         sTmp := DateToStr(xValue);
         sTmp := StringReplace(sTmp, '/', '', [rfReplaceAll]);
         sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
         sTmp := StringReplace(sTmp, '.', '', [rfReplaceAll]);
         Result := Empty(sTmp);
      end;
   end;

   if VarType(xValue) = varString then
      Result := (Length(StringReplace(xValue, ' ', '', [rfReplaceAll])) = 0);

   if VarType(xValue) = varUString then
      Result := (Length(StringReplace(xValue, ' ', '', [rfReplaceAll])) = 0);

   if VarType(xValue) = varOleStr then
      Result := (xValue = Null);

   if VarType(xValue) = varDispatch then
      Result := (xValue = Null);

   if VarType(xValue) = varByte then
      Result := (xValue = Null);

end;

Function TestaPlaca(Value: Integer): Boolean;
{ Testa se existe uma placa de som no seu computador }
begin
   if WaveOutGetNumDevs > 0 then
   begin
      Result := true
   end
   else
   begin
      Result := false;
   end;
end;

function DiscoNoDrive(const drive: char): Boolean;
{ Detecta se há disco no Drive }
var
   DriveNumero: byte;
   EMode: Word;
begin
   Result := false;
   DriveNumero := ord(drive);
   if DriveNumero >= ord('a') then
   begin
      Dec(DriveNumero, $20);
      EMode := SetErrorMode(SEM_FAILCRITICALERRORS);
   end;
   try
      if DiskSize(DriveNumero - $40) = -1 then
      begin
         Result := false;
      end
      else
      begin
         Result := true;
      end;
   Except
      SetErrorMode(EMode);
   end;
end;

function NumeroSerie(Unidade: PChar): String;
{ Retorna o Número serial da unidade especificada }
var
   VolName, SysName: AnsiString;
   SerialNo, MaxCLength, FileFlags: DWord;
begin
   try
      SetLength(VolName, 255);
      SetLength(SysName, 255);
      GetVolumeInformation(Unidade, PChar(VolName), 255, @SerialNo, MaxCLength,
        FileFlags, PChar(SysName), 255);
      Result := IntToHex(SerialNo, 8);
   except
      Result := ' ';
   end;
end;

function DetectaDrv(const drive: char): Boolean;
{ Detecta quantas unidade possui no computador }
var
   Letra: string;
begin
   Letra := drive + ':\';
   if GetDriveType(PChar(Letra)) < 2 then
   begin
      Result := false;
   end
   else
   begin
      Result := true;
   end;
end;

function NumeroDeCores: Integer;
{ Retorna a quantidade atual de cores no Windows (16, 256, 65536 = 16 ou 24 bit }
var
   DC: HDC;
   BitsPorPixel: Integer;
begin
   DC := GetDc(0); // 0 = vídeo
   BitsPorPixel := GetDeviceCaps(DC, BitsPixel);
   Result := 2 shl (BitsPorPixel - 1);
end;

function Percentdisk(Unidade: byte): Integer;
{ Retorna a porcentagem de espaço livre em uma unidade de disco }
var
   a, B, Percentual: LongInt;
begin
   if DiskFree(Unidade) <> -1 then
   begin
      a := DiskFree(Unidade) div 1024;
      B := DiskSize(Unidade) div 1024;
      Percentual := (a * 100) div B;
      Result := Percentual;
   end
   else
   begin
      Result := -1;
   end;
end;

function IsPrinter: Boolean;
Const
   PrnStInt: byte = $17;
   StRq: byte = $02;
   PrnNum: Word = 0; { 0 para LPT1, 1 para LPT2, etc. }
Var
   nResult: byte;
Begin (* IsPrinter *)
   Asm
      mov ah,StRq;
      mov dx,PrnNum;
      Int $17;
      mov nResult,ah;
   end;
   IsPrinter := (nResult and $80) = $80;
End;

function CorrentPrinter: String;
// Retorna a impressora padrão do windows
// Requer a unit printers declarada na clausula uses da unit
var
   Device: array [0 .. 255] of char;
   Driver: array [0 .. 255] of char;
   Port: array [0 .. 255] of char;
   hDMode: THandle;
begin
   Printer.GetPrinter(Device, Driver, Port, hDMode);
   Result := Device + ' na porta ' + Port;
end;

function GetFileDate(TheFileName: string): string;
var
   FHandle: Integer;
begin
   FHandle := FileOpen(TheFileName, 0);
   Result := DateToStr((FileDateToDateTime(FileGetDate(FHandle))));
   FileClose(FHandle);
end;

function FileDate(Arquivo: String): String;
{ Retorna a data e a hora de um arquivo }
var
   FHandle: Integer;
begin
   if not fileexists(Arquivo) then
   begin
      Result := 'Nome de Arquivo Inválido';
   end
   else
   begin
      FHandle := FileOpen(Arquivo, 0);
      try
         Result := DateTimeToStr(FileDateToDateTime(FileGetDate(FHandle)));
      finally
         FileClose(FHandle);
      end;
   end;
end;

{ Apaga arquivos usando mascaras tipo: *.*,  *.txt ou *.in* }
Procedure ZapFiles(vMasc: String);
Var
   Dir: TsearchRec;
   Erro: Integer;
Begin
   Erro := FindFirst(vMasc, faArchive, Dir);
   While Erro = 0 do
   Begin
      DeleteFile(ExtractFilePAth(vMasc) + Dir.Name);
      Erro := FindNext(Dir);
   End;
   FindClose(Dir);
End;

function FillDir(Const AMask: string): TStringList;
{ Retorna uma TStringlist de todos os arquivos localizados
  no path corrente , Esta função trabalha com mascaras }
var
   SearchRec: TsearchRec;
   intControl: Integer;
begin
   Result := TStringList.Create;
   intControl := FindFirst(AMask, faAnyFile, SearchRec);
   if intControl = 0 then
   begin
      while (intControl = 0) do
      begin
         Result.Add(SearchRec.Name);
         intControl := FindNext(SearchRec);
      end;
      FindClose(SearchRec);
   end;
end;

Function RecycleBin(sFileName: string): Boolean;
// Envia um arquivo para a lixeira ( requer a unit Shellapi.pas)
var
   fos: TSHFileOpStruct;
Begin
   FillChar(fos, SizeOf(fos), 0);
   With fos do
   begin
      wFunc := FO_DELETE;
      pFrom := PChar(sFileName);
      fFlags := FOF_ALLOWUNDO or FOF_NOCONFIRMATION or FOF_SILENT;
   end;
   Result := (0 = ShFileOperation(fos));
end;

function NumLinhasArq(Arqtexto: String): Integer;
// Retorna o número de linhas que um arquivo possui
Var
   f: Textfile;
   cont: Integer;
Begin

   cont := 0;

   AssignFile(f, Arqtexto);

   Reset(f);
   While not eof(f) Do
   begin
      ReadLn(f);
      cont := cont + 1;
   end;
   Closefile(f);
   Result := cont;
end;

function FileCopy(source, dest: String): Boolean;
{ copia um arquivo de um lugar para outro. Retornando falso em caso de erro }
var
   fSrc, fDst, len: Integer;
   size: LongInt;
   buffer: packed array [0 .. 2047] of byte;
begin
   if source <> dest then
   begin
      fSrc := FileOpen(source, fmOpenRead);
      if fSrc >= 0 then
      begin
         size := FileSeek(fSrc, 0, 2);
         FileSeek(fSrc, 0, 0);
         fDst := FileCreate(dest);
         if fDst >= 0 then
         begin
            while size > 0 do
            begin
               len := FileRead(fSrc, buffer, SizeOf(buffer));
               FileWrite(fDst, buffer, len);
               size := size - len;
            end;
            FileSetDate(fDst, FileGetDate(fSrc));
            FileClose(fDst);
            FileSetAttr(dest, FileGetAttr(source));
            Result := true;
         end
         else
         begin
            Result := false;
         end;
         FileClose(fSrc);
      end;
   end;
end;

function ExtractName(const Filename: String): String;
{ Retorna o nome do Arquivo sem extensão }
var
   aExt: String;
   aPos: Integer;
begin
   aExt := ExtractFileExt(Filename);
   Result := ExtractFileName(Filename);
   if aExt <> '' then
   begin
      aPos := Pos(aExt, Result);
      if aPos > 0 then
      begin
         Delete(Result, aPos, Length(aExt));
      end;
   end;
end;

function FileTypeName(const aFile: String): String;
{ Retorna descrição do tipo do arquivo. Requer a unit ShellApi }
var
   aInfo: TSHFileInfo;
begin
   if SHGetFileInfo(PChar(aFile), 0, aInfo, SizeOf(aInfo), SHGFI_TYPENAME)
     <> 0 then
      Result := StrPas(aInfo.szTypeName)
   else
   begin
      Result := ExtractFileExt(aFile);
      Delete(Result, 1, 1);
      Result := Result + ' File';
   end;
end;

function PrintImage(Origem: String): Boolean;
// imprime um bitmap selecionado retornando falso em caso negativo
// requer as units Graphics e printers declaradas na clausula Uses
var
   Imagem: TBitmap;
begin
   if fileexists(Origem) then
   begin
      Imagem := TBitmap.Create;
      Imagem.LoadFromFile(Origem);
      with Printer do
      begin
         BeginDoc;
         Canvas.Draw((PageWidth - Imagem.Width) div 2,
           (PageHeight - Imagem.Height) div 2, Imagem);
         EndDoc;
      end;
      Imagem.Free;
      Result := true;
   end
   else
   begin
      Result := false;
   end;
end;

{ Retorna o tamanho de um arquivo }
function fileSize(const Filename: String): LongInt;
var
   SearchRec: TsearchRec;
begin { !Win32! -> GetFileSize }
   if FindFirst(Filename, faAnyFile, SearchRec) = 0 then
      Result := SearchRec.size
   else
      Result := 0;
   FindClose(SearchRec);
end;

{ Retorna o último acesso ao arquivo especificado }
function GetFileLastAccessTime(sFileName: string): TDateTime;
var
   ffd: TWin32FindData;
   dft: DWord;
   lft: TFileTime;
   h: THandle;
begin
   // get file information
   h := Windows.FindFirstFile(PChar(sFileName), ffd);
   if (INVALID_HANDLE_VALUE <> h) then
   begin
      Windows.FindClose(h);
      FileTimeToLocalFileTime(ffd.ftLastAccessTime, lft);
      FileTimeToDosDateTime(lft, LongRec(dft).Hi, LongRec(dft).Lo);
      Result := FileDateToDateTime(dft);
   end;
end;

{ criar arquivo TXT }
function MakeTxt(Destino: string): Boolean;
var
   TxtArq: Textfile;
begin
   try
      AssignFile(TxtArq, Destino);
      Rewrite(TxtArq);
      Closefile(TxtArq);
      Result := true;
   Except
      begin
         Erro('Não foi possivel criar arquivo');
         Result := false;
      end;
   end;

end;

{ procurar arquivos }
procedure ProcuraArquivos(const AEspArq: string; ASubDiretorio: Boolean;
  AResult: TStrings);
var
   srAux: TsearchRec;
   cFullPath: string;
   cEspArq: string;
begin
   // Determina o caminho completo e a especificação de arquivos
   cFullPath := ExtractFilePAth(AEspArq);
   cEspArq := ExtractFileName(AEspArq);

   // Inicializa a pesquisa de arquivos
   if FindFirst(AEspArq, faAnyFile - faDirectory, srAux) = 0 then
      repeat
         AResult.Add(cFullPath + srAux.Name);
         // Verifica se há mais arquivos que satisfaçam a especificação
      until FindNext(srAux) <> 0;

   // Encerra a pesquisa
   FindClose(srAux);

   // Inicializa a pesquisa de diretórios
   if ASubDiretorio then
      if FindFirst(cFullPath + '*.*', faDirectory, srAux) = 0 then
         repeat
            // Despresa o diretório corrente e o pai
            if ((srAux.attr and faDirectory) = faDirectory) and
              (srAux.Name <> '.') and (srAux.Name <> '..') then
               ProcuraArquivos(cFullPath + srAux.Name + '\' + cEspArq,
                 ASubDiretorio, AResult);
            // Verifica se há mais diretórios
         until FindNext(srAux) <> 0;

   // Encerra a pesquisa
   FindClose(srAux);
end;

function StrZero1(Numero: Real; qtdezeros, Decimais: Integer): string;
var
   Tamanho, y: Integer;
   xdeci, xsig: string;
begin
   Str(Numero: qtdezeros: Decimais, xdeci);
   xdeci := trimright(trimleft(xdeci));
   Tamanho := Length(xdeci);
   xsig := '';
   for y := 1 to (qtdezeros - Tamanho) do
      xsig := xsig + '0';
   Result := xsig + xdeci;
end;

function Extenso(pValor: Extended): String;
const
   aCifra: Array [1 .. 6, 1 .. 2] of String = (('TRILHÃO,', 'TRILHOES,'),
     ('BILHAO,', 'BILHÕES,'), ('MILHAO,', 'MILHÕES,'), ('MIL,', 'MIL,'),
     ('    ', '   '), ('CENTAVO', 'CENTAVOS'));
var
   tStr, tExtenso, tSubs: String;
   tX, tCentavos: Integer;
begin
   tSubs := ' ';
   tExtenso := ' ';
   tStr := StrZero1(pValor, 18, 2); { funcao disponível neste livro }
   tCentavos := StrToInt(Copy(tStr, 17, 2));
   if pValor > 0 then
   begin
      if tCentavos > 0 then
         tExtenso := ExtCem(StrZero1(tCentavos, 3, 0)) +
           aCifra[6, Trunc(iif(tCentavos = 1, 1, 2))];
      if Trunc(pValor) > 0 then
         tExtenso := iif(Trunc(pValor) = 1, 'REAL', ' REAIS') +
           iif(tCentavos > 0, ' E   ', '') + tExtenso;
      for tX := 5 Downto 1 do
      begin
         tSubs := Copy(tStr, (tX * 3) - 2, 3);
         if StrToInt(tSubs) > 0 then
            tExtenso := ExtCem(tSubs) + aCifra
              [tX, Trunc(iif(StrToInt(tSubs) = 1, 1, 2))] + '   ' + tExtenso;
      end;
   end;
   Result := StripDouble(tExtenso);
end;

function ExtCem(pCem: String): String;
const
   aCent: Array [1 .. 9] of string = ('CENTO', 'DUZENTOS', 'TREZENTOS',
     'QUATROCENTOS', 'QUINHENTOS', 'SEISCENTOS', 'SETECENTOS', 'OITOCENTOS',
     'NOVECENTOS');
   aVint: Array [1 .. 9] of string = ('ONZE', 'DOZE', 'TREZE', 'QUATORZE',
     'QUINZE', 'DEZESSEIS', 'DEZESSETE', 'DEZOITO', 'DEZENOVE');
   aDez: Array [1 .. 9] of string = ('DEZ', 'VINTE', 'TRINTA', 'QUARENTA',
     'CINQUENTA', 'SESSENTA', 'SETENTA', 'OITENTA', 'NOVENTA');
   aUnit: Array [1 .. 9] of string = ('UM', 'DOIS', 'TREIS', 'QUATRO', 'CINCO',
     'SEIS', 'SETE', 'OITO', 'NOVE');
var
   aVal: Array [1 .. 3] of Integer;
   Text: String;
begin
   Text := '';
   aVal[1] := StrToInt(Copy(pCem, 1, 1));
   aVal[2] := StrToInt(Copy(pCem, 2, 1));
   aVal[3] := StrToInt(Copy(pCem, 3, 1));
   if StrToInt(pCem) > 0 then
   begin
      if StrToInt(pCem) = 100 then
         Text := 'CEM'
      else
      begin
         if aVal[1] > 0 then
            Text := aCent[aVal[1]] + iif((aVal[2] + aVal[3]) > 0, ' E ', ' ');
         if (aVal[2] = 1) and (aVal[3] > 0) then
            Text := Text + ' ' + aVint[aVal[3]]
         else
         begin
            if aVal[2] > 0 then
               Text := Text + ' ' + aDez[aVal[2]] +
                 iif(aVal[3] > 0, ' E ', ' ');
            Text := Text + iif(aVal[3] > 0, ' ' + aUnit[aVal[3]], ' ');
         end;
      end;
   end;
   Text := Text + ' ';
   Result := Text;
end;

function StripDouble(pString: String): String;
begin
   while Pos('  ', pString) > 0 do
      Delete(pString, Pos('  ', pString), 1);
   Result := pString;
end;

function Box(Aviso: String; Cabeca: String): Boolean;
begin
   If (Application.MessageBox(PChar(Aviso), PChar(Cabeca), 36)) = 6 Then
   Begin;
      Result := true;
      Exit;
   End;
   Result := false;
end;

function ValidaCPF(sCPF: string): string;
var
   sDigs, sVal: string;
   iSTot, iSTot2: Integer;
   I: Integer;
begin

   Result := '---';

   sCPF := Trim(sCPF);
   iSTot := 0;
   iSTot2 := 0;
   if Length(sCPF) = 11 then
   begin
      for I := 9 downto 1 do
      begin
         iSTot := iSTot + StrToInt(Copy(sCPF, I, 1)) * (11 - I);
         iSTot2 := iSTot2 + StrToInt(Copy(sCPF, I, 1)) * (12 - I);
      end;
      iSTot := iSTot mod 11;
      sDigs := sDigs + IntToStr(iif(iSTot < 2, 0, 11 - iSTot));

      iSTot2 := iSTot2 + 2 * StrToInt(sDigs);
      iSTot2 := iSTot2 mod 11;
      sDigs := sDigs + IntToStr(iif(iSTot2 < 2, 0, 11 - iSTot2));

      sVal := Copy(sCPF, 10, 2);
      Result := iif(sDigs = sVal, '', sDigs);
   end
End;


function SoNumero(Texto:String):String;
var
   vContString: integer;
   vString: string;
begin
   vString:='';
   for vContString:= 1 To Length(Texto) Do
   begin
     if (Texto[vContString] in ['0'..'9']) then
       begin
         vString:= vString + Copy(Texto, vContString, 1);
       end;
   end;

   if vString<>'' then
     result:=vString
   else
     result:='0';
end;

function SoLetras(Texto:WideString):WideString;
var
   vContString: integer;
   vString: string;
begin
   vString:='';
   for vContString:= 1 To Length(Texto) Do
   begin
     if ( Texto[vContString]  in [#32,'A'..'Z','a'..'z']) then
       begin
         vString:= vString + Copy(Texto, vContString, 1);
       end;
   end;

   if vString<>'' then
     result:=vString
   else
     result:='';
end;

function FormataDDD(Telefone: String): String;
var
   wDDD, wFONE: String;
begin

   wDDD := '';
   wFONE := '';

   wDDD := SoNumero(Telefone);

   // testar se tamanho corresponde ao minimo do formato de telefone do Brasil
   // exemplo dd+fone (0000000000)

   if Length(wDDD) < 10 then
      Exit;

   wDDD := Copy(wDDD, 1, 2);

   Result := wDDD;

end;

function FormataFone(Telefone: String): String;
var
   wDDD, wFONE: String;
begin
   wDDD := '';
   wFONE := '';

   wFONE := SoNumero(Telefone);

   // testar se tamanho corresponde ao minimo do formato de telefone do Brasil
   // exemplo dd+fone (0000000000)

   if Length(wFONE) < 10 then
      Exit;

   wFONE := Copy(wFONE, 3, 4) + '-' + Copy(wFONE, 7, 10);

   Result := wFONE;

end;

{ ** PEGA APENAS O TEXTO INDICADO NO PEDIDO ** }
function PegaTexto(texto: String; Qte: Integer): String;
Var
   I, a: Integer;
begin
   I := 0;
   a := 0;
   While Qte >= a do
   begin
      Result := Copy(texto, I + 1, 2);
      I := I + 3;
      Inc(a);
   end;
End;

function FormataTexto(texto: String; Tamanho: Integer): String;
Var
   X: Integer;
begin

   X := Length(texto);
   Result := texto;
   while Tamanho >= X do
   begin
      Result := Result + '&nbsp';
      Inc(X);
   end;

end;

Function Deletar: Boolean;
begin
   if Application.MessageBox('Deseja apagar este registro?', 'Atenção',
     36) = 6 Then
      Result := true
   Else
      Result := false;
End;

Function Formata_CEP(CEP: String): String;
Begin
   // Limpar simbolos padrões do CEP
   CEP := DeletaCaract(CEP, '-');
   CEP := DeletaCaract(CEP, '.');

   Result := Copy(CEP, 1, 5) + '-' + Copy(CEP, 6, 3);
End;

Function Formata_CNPJ_CPF(texto: String): String;
Begin

   // Limpar simbolos padrões do CNPJ e CPF
   texto := SoNumero(texto);

   // 11 digitos significa CPF
   If Length(texto) = 11 then
   begin

      Result := Copy(texto, 1, 3) + '.' + Copy(texto, 4, 3) + '.' +
        Copy(texto, 7, 3) + '-' + Copy(texto, 10, 2);

   end;

   // 14 digitos significa CNPJ
   If Length(texto) = 14 then
   begin

      Result := Copy(texto, 1, 2) + '.' + Copy(texto, 3, 3) + '.' +
        Copy(texto, 6, 3) + '/' + Copy(texto, 9, 4) + '-' + Copy(texto, 13, 2);
   end;
   {
   // 15 digitos significa CNPJ
   If Length(texto) = 14 then
   begin

      Result := Copy(texto, 1, 2) + '.' + Copy(texto, 3, 3) + '.' +
        Copy(texto, 6, 3) + '/' + Copy(texto, 9, 4) + '-' + Copy(texto, 13, 2);
   end;
   }

   // 14 digitos significa CNPJ
   If Length(texto) > 15 then
   begin
      Result := '0';
   end;

End;

Function UF_CEP(CEP: Integer): String;
begin

   CEP := StrToInt(Copy(IntToStr(CEP), 0, 2));

   Case CEP of
      0 .. 20:
         Result := 'SP';
      21 .. 28:
         Result := 'RJ';
      29 .. 35:
         Result := 'ES';
      36 .. 40:
         Result := 'MG';
      41 .. 48:
         Result := 'BA';
      49 .. 50:
         Result := 'SE';
      51 .. 56:
         Result := 'PE';
      57:
         Result := 'AL';
      58:
         Result := 'PB';
      59:
         Result := 'RN';
      60:
         Result := '..';
      61 .. 63:
         Result := 'CE';
      64:
         Result := 'PI';
      65:
         Result := 'MA';
      66 .. 67:
         Result := 'PA';
      68:
         Result := 'AP';
      69:
         Result := 'AM';
      70 .. 77:
         Result := '..';
      78:
         Result := 'MT';
      79:
         Result := 'MS';
      80 .. 86:
         Result := 'PR';
   end;

end;

Procedure MostraAjuda(Titulo: String; texto: WideString);
Begin
   {
   FrmAjuda := TFrmAjuda.Create(nil);
   FrmAjuda.MemoAjuda.Clear;
   FrmAjuda.MemoAjuda.Text := texto;
   FrmAjuda.Caption := 'Ajuda sobre ' + Titulo;
   FrmAjuda.ShowModal;
   }
End;

{ ------------------------------------------------------------------------------------------- }

{ desconto percentual }
Function Desconto(Valor, nDesconto: Real): Real;
Begin
   Result :=0;
   Result := ((Valor * nDesconto) / 100);
end;

Function ValorComDesconto(Valor, nDesconto: Real): Real;
Begin
   Result :=0;
   if nDesconto<=0 then
      exit;
   Result := Valor - ((Valor * nDesconto) / 100);
end;

{ desconto percentual }
Function ValorComAcrescimo(Valor, nAcrescimo: Real): Real;
Begin
   Result :=0;
   if nAcrescimo<=0 then
      exit;
   Result := Valor + ((Valor * nAcrescimo) / 100);
end;

Function ConverteRealDolar(vReal, vDolar: Real): Real;
Begin
   Result := 0;
   // se for igual a zero, retornar para nao dar erro de divisão por Zero.
   if vDolar=0 then
      exit;

   Result := (vReal / vDolar );
end;

Function ConverteRealEuro(vReal, vEuro: Real): Real;
Begin
   Result := 0;
   // se for igual a zero, retornar para nao dar erro de divisão por Zero.
   if vEuro=0 then
      exit;

   Result := (vReal / vEuro );

end;

{ **************************************************************** }
{ Financeiro }
{ **************************************************************** }

function Acima(X: Real): Integer;
begin
   Result := Integer(Trunc(X));
   If Frac(X) > 0 then
      Inc(Result);
end;

// pega a data de um campo EditMask/Edit, confere e retornar no formato padrão
function fncDataValidar(Dado: string): String;
Begin
   Result := DateToStr( StrToDateDef(Dado,date ));
end;

{ Calcula juros simples }
Function Calc_Juros(Valor, Juros: Real; Atraso: Double; Dias: Integer): Real;
var
   Calc: Real;
Begin
   // Valor / 100 * juros / 30 * (dias_atraso + dias_cobranca)
   Calc := 0;
   Calc := ((Valor / 100) * (Juros / 30) * (Atraso + Dias));
   Result := Calc;

end;

{ Calcula juros composto }
Function Calc_JurosComposto(Valor, Juros: Real; Atraso: Double; Dias: Integer): Real;
var
   Calc: Real;

Begin

   Calc := 0;
   // calc :=(Valor * (1+Juros)++((Atraso+dias)/30) )-valor;
   Calc := (Valor * (1 + Juros) + ((Atraso + Dias) / 30)) - Valor;
   Result := Calc;

end;

Function fncGeraPercentual(Valor, Percentual: Currency): Currency;
begin

   Result := 0;
   Percentual := Percentual / 100;
   Valor := Valor * Percentual;
   Result := Valor;

   {
     Percentual := Percentual / 100;
     try
     valor := valor * Percentual;
     finally
     result := valor;
     end;
   }

end;

Function DescobrirPercentual(ValorMenor, ValorMaior: Double): Double;
var
   nvalor1, ndiferenca1: Double;

begin

   Result := 0;
   nvalor1 := 0;
   ndiferenca1 := 0;

   ndiferenca1 := ValorMaior - ValorMenor;

   // se for Igual ou Menor que zero, sair.
   if ndiferenca1 <= 0 then
      Exit;

   nvalor1 := ((ndiferenca1 / ValorMenor) * 100);

   if nvalor1 < 0 then
      nvalor1 := 0;

   Result := nvalor1;

end;

// informa o Dia de uma data
Function Dia(vData: TDate): Integer;
Begin
   DecodeDate(vData, Year, Month, Day);
   Result := Day;

end;

// informa o Mes de uma data
Function Mes(vData: TDate): Integer;
Begin
   DecodeDate(vData, Year, Month, Day);
   Result := Month;
end;

// informa o Ano de uma data
Function Ano(vData: TDate): Integer;
Begin
   DecodeDate(vData, Year, Month, Day);
   Result := Year;
end;

Procedure Desfazer(Formulario: TForm);
var
   I: Integer;
begin

   {
     // ocultar todos os botoes
     For i := 0 to ComponentCount - 1 do
     if Components[i] is TEdit then
     Begin
     TEdit(Components[I]).Perform(EM_UNDO, 0, 0);
     End;
   }

end;

//
Function CampoTexto(Valor: String; Tamanho: Integer): String;
Begin
   while Length(Valor) < Tamanho do
      Valor := Valor + ' ';
   Result := Copy(Valor, 1, Tamanho);

End;

Function CampoInteger(Valor: Real; Tamanho: Integer): String;
Var
   texto: string;
Begin

   texto := FloatToStr(Valor);
   texto := DeletaCaract(texto, '-');
   texto := DeletaCaract(texto, '.');
   texto := DeletaCaract(texto, ',');

   while Length(texto) < Tamanho do
      texto := ' ' + texto;
   // while Length(Texto) < Tamanho do Texto := '0'+ Texto;

   Result := texto;

End;


function ArrendondarDecimais(Valor:Real) : Real;
Var
 sValor: String;
begin
   Result    := 0;
   Result    := StrToFloat(FormatFloat('####0.00', Valor));
end;


procedure ImprimeLinha(Nlin, Ncol: Integer; Var LinhaAtual: Integer;
  Var Arquivo: Text; texto: Variant);
{ Função para impressão de linhas em um relatório }
var
   X: Integer;
begin

   Write(Arquivo, #13);
   If Nlin <> LinhaAtual then
   begin

      for X := LinhaAtual to (Nlin - 1) do
      begin
         WriteLn(Arquivo, '');
         LinhaAtual := LinhaAtual + 1;
      end;

   end;

   If Ncol > 0 then
   begin
      For X := 0 to Ncol do
      begin
         Write(Arquivo, ' ');
      end;
   end;

   Write(Arquivo, texto);

end;

{ * ========================================================================== *
  Repete um determinado texto um determinado numero de vezes.
  "REPLICATE" do clipper.
  * ========================================================================== * }
function Replicate(Caractere: char; nCaracteres: Integer): string;
var
   n: Integer;
   CadeiaCar: string;
begin
   Result := '';
   CadeiaCar := '';

   for n := 1 to nCaracteres do
   Begin
      CadeiaCar := CadeiaCar + Caractere;
   End;

   Result := CadeiaCar;

end;

function Space(nCaracteres: Integer): WideString;
var
   n: Integer;
   CadeiaCar: WideString;
begin
   Result := '';
   CadeiaCar := '';

   for n := 1 to nCaracteres do
   Begin
      CadeiaCar := CadeiaCar + ' ';
   End;

   Result := CadeiaCar;

end;

// Log texto de sistema
procedure AddLog(LogTxt: WideString; NomeArquivo, xTimer: String);
var
   log: Textfile;
begin

{
   LogTxt := Trim(LogTxt);

   NomeArquivo := Trim(NomeArquivo);

   xTimer := UpperCase(xTimer);

   If Empty(NomeArquivo) then
   begin
      NomeArquivo := 'c:\SisCom.Log';

   End;

   // registrar Data e Hora do log
   If xTimer = 'S' then
   begin
      LogTxt := #13 + #10 + '(' + DateToStr(Date) + ' - ' + TimeToStr(time) +
        ')  ' + #13 + #10 + LogTxt;
   end;

   try
      AssignFile(log, NomeArquivo);
      if not fileexists(NomeArquivo) then
         Rewrite(log, NomeArquivo);
      Append(log);
      WriteLn(log, LogTxt);
   finally
      Closefile(log);
   end;
}
end;

// ----------------------------------------------------
function Pad(AValue: string; Const ALength: Integer;
  Const ASide: TAlignment): string;
begin
   AValue := Trim(AValue);
   if Length(AValue) > ALength then
      AValue := Copy(AValue, 1, ALength);
   case ASide of
      taLeftJustify:
         while Length(AValue) < ALength do
            AValue := AValue + ' ';
      taRightJustify:
         while Length(AValue) < ALength do
            AValue := ' ' + AValue;
      taCenter:
         while Length(AValue) < ALength do
            if (Length(AValue) mod 2) = 0 then
               AValue := AValue + ' '
            else
               AValue := ' ' + AValue;
   end;
   Result := AValue;
end;

{ ---------- }
function PadC(AValue: string; Const ALength: Integer): string;
begin
   Result := Pad(AValue, ALength, taCenter);
end;

// gera um nome de arquivo (data +  horas )
function GeraArquivo: string;
Var
   TempText: String;
begin

   // montar nome do arquivo
   TempText := '';
   {
     TempText  :='BKP_'+
     IntToStr( Dia(date) )+'-'+
     IntToStr( Mes(date) )+'-'+
     IntToStr( Ano(date) )+
     '_'+
     Copy(TimeToStr(Time),1,8);
   }

   TempText := '';
   TempText := IntToStr(Dia(Date)) + IntToStr(Mes(Date)) + IntToStr(Ano(Date));

   TempText := DeletaCaract(TempText, ':');
   TempText := DeletaCaract(TempText, ',');
   TempText := DeletaCaract(TempText, '.');

   Result := TempText;

end;

Procedure AvisoSistema(texto: WideString);
begin
   FrmAvisoSistema := TFrmAvisoSistema.Create(Nil);
   FrmAvisoSistema.LblBarraTitulo.Caption :=Concat('Atenção, ',FUsuario.UsuarioNome, '...');
   FrmAvisoSistema.MemoAviso.Lines.Add('');
   FrmAvisoSistema.MemoAviso.Lines.Add(texto);
   FrmAvisoSistema.ShowModal;
   {
     Informar('Este módulo estará liberado após pagamento da linceça de uso...'+sLineBreak+sLineBreak
     'atendimento@yyyy.com.br'+sLineBreak+sLineBreak
     'www.yyyy.com.br');

     Abort;
   }
End;

Procedure AvisoSistemaErro(texto: WideString);
begin
   FrmAvisoSistemaErro := TFrmAvisoSistemaErro.Create(Nil);
   FrmAvisoSistemaErro.LblBarraTitulo.Caption :=Concat('Atenção, ',FUsuario.UsuarioNome, '...');
   FrmAvisoSistemaErro.MemoAviso.Lines.Add('');
   FrmAvisoSistemaErro.MemoAviso.Lines.Add(texto);
   FrmAvisoSistemaErro.ShowModal;
   {
     Informar('Este módulo estará liberado após pagamento da linceça de uso...'+sLineBreak+sLineBreak
     'atendimento@yyyy.com.br'+sLineBreak+sLineBreak
     'www.yyyy.com.br');

     Abort;
   }
End;

Function AvisoQuestao(Titulo, texto: WideString): Boolean;
begin

   FrmQuestionar := TFrmQuestionar.Create(Nil);
   FrmQuestionar.Caption := Titulo;
   FrmQuestionar.MemoAviso.Text := texto;
   If FrmQuestionar.ShowModal = mrOk then
   Begin
      Result := true;
   End
   else
   begin
      Result := false;
   end;

end;

// se houver registros na tebela DETALHES (master/detail), então a tabela
// MESTRE não pode ser alterada
// se Estiver
Function Protegido(Tabela: TFDQuery): Boolean;
begin

   Result := false;
   if Tabela.RecordCount > 0 then
   Begin
      Tabela.First; // posicionar no primeiro registro
      Result := true; // Proteger a Tabela Mestre. Existe dados.
   end;

end;

// Centralizar TEXTO de acordo com a quantidade de colunas
// Muito utilizado em relatorios para impressoras MATRICIAIS
Function Centrar(FTextBuf: string; Cols: Integer): String;
begin

   Result := StringOfChar(#32, (Cols - Length(FTextBuf)) div 2) + FTextBuf;

end;

{ This Procedure places a crosstab of the Query result "DB" into a
  String Grid, "CT", Columns to the left of CT Column in DB are Row
  lables, the CtColumn is the Column Lable.  The Data to the Right of
  ctColumn is the Data (Must be Sumed, Maxed, etc,in the Query)

  For the procedure to function correctly, the Query must return a
  result sorted on the columns through ctColumn.

}

Procedure Crosstab(aQuery: TFDQuery; aGrid: tStringGrid; ctColumn: Integer);

   Function FindColumn: Integer;
   Var
      C, X, n: Integer;
   Begin
      with aGrid do
      Begin
         C := ctColumn;
         While C < ColCount Do
         Begin
            X := CompareText(Cells[C, 0], aQuery.Fields[ctColumn].AsString);
            If X = 0 Then
            Begin
               FindColumn := C;
               Exit;
            End;
            If X > 0 Then
            Begin
               ColCount := ColCount + 1;
               For n := ColCount DownTo (C + 1) Do
                  Cols[n] := Cols[n - 1];
               For n := 0 To RowCount Do
                  Cells[C, n] := '';
               Cells[C, 0] := aQuery.Fields[ctColumn].AsString;
               FindColumn := C;
               Exit;
            End;
            If X < 0 Then
               Inc(C);
         End;
         ColCount := ColCount + 1;
         Cells[C, 0] := aQuery.Fields[ctColumn].AsString;
         FindColumn := C;
      End;
   End;

   Function FindRow: Integer;
   Var
      r, C: Integer;
   Begin
      with aGrid do
      Begin
         r := RowCount - 1;
         C := 0;
         While ((0 = CompareText(Cells[C, r], aQuery.Fields[C].AsString)) AND
           (C < ctColumn)) Do
            Inc(C);
         If C <> ctColumn Then
         Begin
            Inc(r);
            RowCount := RowCount + 1;
            For C := 0 to (ctColumn - 1) Do
               Cells[C, r] := aQuery.Fields[C].AsString;
         End;
         FindRow := r;
      End;
   End;

Var
   C: Integer;
begin
   aQuery.Open;
   aQuery.First;
   If aQuery.eof Then
      Exit; { Nothing to Crosstab }
   aGrid.RowCount := 2;
   aGrid.ColCount := ctColumn;
   For C := 0 to (ctColumn - 1) Do
      aGrid.Cells[C, 0] := aQuery.Fields[C].FieldName;
   For C := 0 to (ctColumn - 1) Do
      aGrid.Cells[C, 1] := aQuery.Fields[C].AsString;
   with aGrid do
      While Not aQuery.eof Do
      Begin
         Cells[FindColumn, FindRow] := aQuery.Fields[ctColumn + 1].AsString;
         aQuery.Next;
      end;
   aGrid.FixedCols := ctColumn;
   aGrid.FixedRows := 1;
end;



Procedure CrossTab(dbDados:TFDQuery; stScriptSQL, stCampoLinhas, stTituloLinha, stCampoColunas , stCampoSomar, stWhere, sCampoOrderBy:String; stOperador:String='Sum');
Var
sStrScript, sValue, sScriptInicial : String;
Begin

   With dbDados do
   Begin
      DisableControls;
      Screen.Cursor := crSQLWait;

      if sCampoOrderBy>'' then
         sScriptInicial :='SELECT DISTINCT '+stCampoColunas + Concat(',',sCampoOrderBy)+ ' FROM ('+stScriptSQL+') AS COLUMNS '
      else
         sScriptInicial :='SELECT DISTINCT '+stCampoColunas+' FROM ('+stScriptSQL+') AS COLUMNS ';

      if sCampoOrderBy>'' then
      begin
         sScriptInicial := sScriptInicial + ' ORDER BY '+sCampoOrderBy;
      end;

      Try
         Close;
         SQL.Clear;
         SQL.Add(sScriptInicial);
         Open;

         If stTituloLinha = '' Then stTituloLinha := stCampoLinhas;
         sStrScript := 'SELECT '+stCampoLinhas+' as '+#39+stTituloLinha+#39+',';

         While not dbDados.Eof do
         Begin
            sValue := dbDados.FieldByName(stCampoColunas).AsString;
            If sValue='' Then
               sValue := 'Não Informado';

            sValue := StringReplace(sValue,'.','_',[rfReplaceAll]);
            sStrScript := sStrScript + stOperador+'( CASE '+stCampoColunas+' WHEN '+#39+sValue+#39+' THEN '+stCampoSomar+' END) as '+#39+sValue+#39+',';
            dbDados.Next;

         End;

         sStrScript := sStrScript + ' '+stOperador+'('+stCampoSomar+') as TOTAL';
         sStrScript := sStrScript + ' FROM ('+stScriptSQL+' AS B  ) AS A ';
         //Str := Str + ' FROM ('+stScriptSQL+' AS B  '+sOrderBy+' ) AS A ';
         sStrScript := sStrScript + ' ';
         if stWhere>'' then
         begin
            sStrScript := sStrScript + stWhere;
         end;
         sStrScript := sStrScript + ' ';
         sStrScript := sStrScript + ' GROUP BY '+stCampoLinhas+' ORDER BY '+stCampoLinhas+'';
         //dbDados.Close;
         //dbDados.SQL.Text := Str;

         dbDados.close;
         dbDados.sql.clear;
         dbDados.sql.add(sStrScript);
         dbDados.open;
      Finally
         Screen.Cursor := crDefault;
         EnableControls;
      End;
   End;

End;

Function ListarMenu(Menu: TMainMenu; Tag_Numero: Integer): TStrings;
var
   X, y: Integer;
   Lista: TStringList;
begin

   Lista := TStringList.Create;
   For X := 0 to Menu.Items.Count - 1 do
   Begin

      if Menu.Items[X].Caption <> '-' then
         Lista.Add(CampoTexto('==> ' + UpperCase(Menu.Items[X].Caption) +
           ' <==', 40) + ' - ' + UpperCase(CampoTexto(Menu.Items[X].Name, 30)));

      For y := 0 to Menu.Items[X].Count - 1 do
         if Menu.Items[X].Items[y].Tag = Tag_Numero then
         begin
            if Menu.Items[X].Items[y].Caption <> '-' then
               Lista.Add(CampoTexto(Menu.Items[X].Items[y].Caption, 40) + ' - '
                 + UpperCase(CampoTexto(Menu.Items[X].Items[y].Name, 30)));

         end;

      Lista.Add('');
   end;
   Result := Lista;

end;

{ substitui uma palavra por outra }
function SubstituirCampoTexto(Text, oldstring, newstring: string): string;
var
   atual, strtofind, originalstr: PChar;
   NewText: string;
   lenoldstring, lennewstring, m, index: Integer;
begin

   NewText := Text;
   originalstr := PChar(Text);
   strtofind := PChar(oldstring);
   lenoldstring := Length(oldstring);
   lennewstring := Length(newstring);
   atual := StrPos(originalstr, strtofind);
   index := 0;

   while atual <> nil do
   begin
      m := atual - originalstr - index + 1;
      Delete(NewText, m, lenoldstring);
      Insert(newstring, NewText, m);
      Inc(index, lenoldstring - lennewstring);
      atual := StrPos(atual + lenoldstring, strtofind);
   end;

   Result := NewText;

end;

function SubstituiStr (S,Localizar,Substituir : string) : string;
var
   Retorno: String;
   Posicao: Integer;
begin
   Retorno := S;
   //Obtendo a posição inicial da substring Localizar na string Localizar.
   Posicao := Pos (Localizar, Retorno);
   if Posicao <> 0 then // Verificando se a substring Localizar existe.
   begin
      // Excluindo a Localizar.
      Delete(Retorno, Posicao, Length (Localizar));
      // Inserindo a string do parâmetro Substituir
      Insert(Substituir, Retorno , Posicao);
   end;
Result := Retorno;
end;


function PrimeiroNome(Nome: String): String;
var
   PNome: String;
begin

   PNome := '';
   if Pos(' ', Nome) <> 0 then
      PNome := Copy(Nome, 1, Pos(' ', Nome) - 1);

   Result := PNome;
end;

Function CampoCodigo(Valor: String; Tamanho: Integer): String;
Var
   texto: string;
Begin

   while Length(Valor) < Tamanho do
      Valor := ' ' + Valor;
   Result := Copy(Valor, 1, Tamanho);

End;

Function CampoValor(Valor: Real; Tamanho: Integer): String;
Var
   texto: string;
Begin

   texto := FormatFloat('###,##0.00', Valor);
   while Length(texto) < Tamanho do
      texto := ' ' + texto;

   Result := texto;

End;

Procedure CriaCodigo(Cod: String; Imagem: TCanvas);
Const
   digitos: array ['0' .. '9'] of string[5] = ('00110', '10001', '01001',
     '11000', '00101', '10100', '01100', '00011', '10010', '01010');
Var
   Numero: String;
   Cod1: Array [1 .. 1000] Of char;
   Cod2: Array [1 .. 1000] Of char;
   Codigo: Array [1 .. 1000] Of char;
   Digito: String;
   c1, c2: Integer;
   X, y, z, h: LongInt;
   a, B, C, D: TPoint;
   I: Boolean;
Begin
   Numero := Cod;
   For X := 1 to 1000 Do
   Begin
      Cod1[X] := #0;
      Cod2[X] := #0;
      Codigo[X] := #0;
   End;
   c1 := 1;
   c2 := 1;
   X := 1;
   For y := 1 to Length(Numero) div 2 do
   Begin
      Digito := digitos[Numero[X]];
      For z := 1 to 5 do
      Begin
         Cod1[c1] := Digito[z];
         Inc(c1);
      End;
      Digito := digitos[Numero[X + 1]];
      For z := 1 to 5 do
      Begin
         Cod2[c2] := Digito[z];
         Inc(c2);
      End;
      Inc(X, 2);
   End;
   y := 5;
   Codigo[1] := '0';
   Codigo[2] := '0';
   Codigo[3] := '0';
   Codigo[4] := '0'; { Inicio do Codigo }
   For X := 1 to c1 - 1 do
   begin
      Codigo[y] := Cod1[X];
      Inc(y);
      Codigo[y] := Cod2[X];
      Inc(y);
   end;
   Codigo[y] := '1';
   Inc(y); { Final do Codigo }
   Codigo[y] := '0';
   Inc(y);
   Codigo[y] := '0';
   Imagem.Pen.Width := 1;
   Imagem.Brush.Color := ClWhite;
   Imagem.Pen.Color := ClWhite;
   a.X := 1;
   a.y := 0;
   B.X := 1;
   B.y := 79;
   C.X := 2000;
   C.y := 79;
   D.X := 2000;
   D.y := 0;
   Imagem.Polygon([a, B, C, D]);
   Imagem.Brush.Color := ClBlack;
   Imagem.Pen.Color := ClBlack;
   X := 0;
   I := true;
   for y := 1 to 1000 do
   begin
      If Codigo[y] <> #0 Then
      Begin
         If Codigo[y] = '0' then
            h := 1
         Else
            h := 3;
         a.X := X;
         a.y := 0;
         B.X := X;
         B.y := 79;
         C.X := X + h - 1;
         C.y := 79;
         D.X := X + h - 1;
         D.y := 0;
         If I Then
            Imagem.Polygon([a, B, C, D]);
         I := Not(I);
         X := X + h;
      End;
   end;
end;

{ }
procedure FixDBGridColumnsWidth(const DBGrid: TDBGrid);
var
   I: Integer;
   TotWidth: Integer;
   VarWidth: Integer;
   ResizableColumnCount: Integer;
   AColumn: TColumn;

begin
   // Largura total de todas as colunas antes do redimensionamento
   TotWidth := 0;
   // Como dividir qualquer espaço extra na grade
   VarWidth := 0;
   // Quantas colunas precisam de auto-redimensionamento
   ResizableColumnCount := 0;

   for I := 0 to -1 + DBGrid.Columns.Count do
   begin
      TotWidth := TotWidth + DBGrid.Columns[I].Width;
      if DBGrid.Columns[I].Field.Tag <> 0 then
         Inc(ResizableColumnCount);
   end;

   // adiciona 1px para a linha de separação de colunas
   if dgColLines in DBGrid.Options then
      TotWidth := TotWidth + DBGrid.Columns.Count;

   // Adiciona indicador de largura
   if dgIndicator in DBGrid.Options then
      TotWidth := TotWidth + IndicatorWidth;

   // Largura recebe o valor de "left"
   VarWidth := DBGrid.ClientWidth - TotWidth;

   // Distribuição por igual da VarWidth
   // para todas as colunas auto-redimensionáveis
   if ResizableColumnCount > 0 then
      VarWidth := VarWidth div ResizableColumnCount;

   for I := 0 to -1 + DBGrid.Columns.Count do
   begin
      AColumn := DBGrid.Columns[I];
      if AColumn.Field.Tag <> 0 then
      begin
         AColumn.Width := AColumn.Width + VarWidth;
         if AColumn.Width < AColumn.Field.Tag then
            AColumn.Width := AColumn.Field.Tag;
      end;
   end;
end;

function EncontrarTexto(TextoBase, Value: WideString): Integer;
var
   nErrorCode, nPosicao: Integer;
   tErrorCode: WideString;
begin

   TextoBase := UpperCase(TextoBase);
   Value := UpperCase(Value);

   nPosicao := Pos(Value, TextoBase);
   tErrorCode := UpperCase(tErrorCode);
   tErrorCode := Copy(TextoBase, (nPosicao + Length(Value)), 10);
   tErrorCode := Alltrim(tErrorCode);

   nPosicao := 0;
   Try
      nPosicao := StrToInt(tErrorCode);
   Except
      nPosicao := 0;
   End;

   Result := nPosicao;

end;

// Procedure TratarErros(Texto: WideString);
Procedure TratarErros(Mensagem: String);

begin

   AvisoSistema(Mensagem);

   exit;

   BeepCritica;

   FrmErrorForm := TFrmErrorForm.Create(Nil);
   FrmErrorForm.MemoAviso.Clear;
   FrmErrorForm.MemoAviso.Lines.Add(Mensagem);
   FrmErrorForm.MemoAviso.Lines.Add('');
   FrmErrorForm.ModuloID.Clear;
   FrmErrorForm.ModuloID.Lines.Add('Módulo: ' + Screen.FocusedForm.Caption);
   // FrmErrorForm.ModuloID.Lines.Add('ID:     '+Screen.FocusedForm.Name);
   FrmErrorForm.ShowModal;

   Abort;

end;

Procedure FormMensagem(Mensagem: String);

begin

   BeepCritica;

   FrmErrorForm := TFrmErrorForm.Create(Nil);
   FrmErrorForm.Caption := 'Informação';
   FrmErrorForm.MemoAviso.Clear;
   FrmErrorForm.MemoAviso.Lines.Add(Mensagem);
   FrmErrorForm.MemoAviso.Lines.Add('');
   FrmErrorForm.ModuloID.Clear;
   FrmErrorForm.ModuloID.Lines.Add('Módulo: ' + Screen.FocusedForm.Caption);
   // FrmErrorForm.ModuloID.Lines.Add('ID:     '+Screen.FocusedForm.Name);
   FrmErrorForm.ShowModal;

end;

Procedure FormularioErro(E: EDatabaseError);
var
   nErrorCode, nPosicao: Integer;
   tErrorCode, tTitulo, msgTexto: WideString;

begin

   msgTexto := E.Message;

   nErrorCode := EncontrarTexto(msgTexto, 'ERROR CODE:');

   case nErrorCode of

      0:
         Begin
            tTitulo := 'Erro';
            tErrorCode := msgTexto;
         End;

      803, -803:
         Begin
            tTitulo := 'Erro de Usuário: 803';
            tErrorCode := 'Registro duplicado. Violação da chave primária';
         End;

      836, -836:
         Begin
            tTitulo := 'Erro de Usuário: 836';
            tErrorCode :=
              'Registro não pode ser excluído (tentativa de violar a integridade de dados).';
         End;

      625, -625:
         Begin
            tTitulo := 'Erro de Usuário: 625';
            tErrorCode :=
              'Campo obrigatório não foi preenchido. Verifique e preencha corretamente.';
         End;

      530, -530:
         Begin
            tTitulo := 'Erro de Usuário: 530';
            tErrorCode := 'Integridade de dados. ' +
              'Você está tentando excluir um registro que está sendo utilizado por outro módulo. '
              + #13 + #10 + #13 + #10 +
            // 'Outra probabilidade: O registro que você está tentando deletar está protegido e sendo utilizado por outro módulo do sistema. ';
              'Informação: Primeiro exclua os registros que dependem deste e somente depois tente deletar novamente. ';
         End;

      902, -902:
         Begin
            tTitulo := 'Erro de Usuário: 902';
            tErrorCode :=
              'Endereço de conexão com o banco de dados SQL está incorreto. ';
         End;

      904, -904:
         Begin
            tTitulo := 'Erro de Usuário: 904';
            tErrorCode :=
              'Servidor SQL não está ativo ou não foi instalado corretamente. ';
         End;

   end;

   BeepCritica;

   FrmErrorForm := TFrmErrorForm.Create(Nil);
   FrmErrorForm.Caption := tTitulo;
   FrmErrorForm.MemoAviso.Clear;
   FrmErrorForm.MemoAviso.Lines.Add(tErrorCode);
   FrmErrorForm.MemoAviso.Lines.Add('');
   FrmErrorForm.ModuloID.Clear;
   FrmErrorForm.ModuloID.Lines.Add('Módulo: ' + Screen.FocusedForm.Caption);
   FrmErrorForm.ModuloID.Lines.Add('ID:     ' + Screen.FocusedForm.Name);
   FrmErrorForm.ShowModal;

   Abort;

end;

procedure ValidarCamposT(DataSource: TDataSource);
Var

   wq, I: Integer;

begin

   wq := 0;
   I := 0;

   // contar quantos campos foram informados para serem checados
   for I := 0 to DataSource.DataSet.FieldCount - 1 do
   Begin
      if (Trim(wCampo[I]) > '') then
      begin
         Inc(wq);
      end;
   End;

   // checar se o campo existe
   for I := 0 to wq - 1 do
   Begin
      If (DataSource.DataSet.FieldByName(wCampo[I]).AsString = '') or
        (DataSource.DataSet.FieldByName(wCampo[I]).AsString = '0') then
      begin
         TratarErros('O campo ' + UpperCase(DataSource.DataSet.FindField
           (wCampo[I]).DisplayLabel) + ' é obrigatório. Verifique.');
         Abort;
      end;
   End;

end;


// .......................................................................

{ -----------------------------------------------------------------------------
  *** Extraido de JclStrings.pas  - Project JEDI Code Library (JCL) ***
  Retorna <True> se <C> é Alpha maiusculo/minusculo
  ---------------------------------------------------------------------------- }
function CharIsAlpha(const C: char): Boolean;
begin
   Result := (C in ['A' .. 'Z', 'a' .. 'z']);
end;

{ -----------------------------------------------------------------------------
  *** Extraido de JclStrings.pas  - Project JEDI Code Library (JCL) ***
  Retorna <True> se <C> é Númerico
  ---------------------------------------------------------------------------- }
function CharIsNum(const C: char): Boolean;
begin
   Result := (C in ['0' .. '9']);
end;

{ -----------------------------------------------------------------------------
  *** Extraido de JclStrings.pas  - Project JEDI Code Library (JCL) ***
  Retorna <True> se <C> é Alpha maiusculo/minusculo ou Numerico
  ---------------------------------------------------------------------------- }
function CharIsAlphaNum(const C: char): Boolean;
begin
   Result := (CharIsAlpha(C) or CharIsNum(C));
end;

{ -----------------------------------------------------------------------------
  Retorna uma String apenas com os char Numericos contidos em <Value>
  ---------------------------------------------------------------------------- }
function OnlyNumber(const Value: string): String;
Var
   I: Integer;
begin
   Result := '';
   For I := 1 to Length(Value) do
   begin
      if CharIsNum(Value[I]) then
         Result := Result + Value[I];
   end;
end;

{ -----------------------------------------------------------------------------
  Retorna uma String apenas com os char Alpha contidos em <Value>
  ---------------------------------------------------------------------------- }
function OnlyAlpha(const Value: string): String;
Var
   I: Integer;
begin
   Result := '';
   For I := 1 to Length(Value) do
   begin
      if CharIsAlpha(Value[I]) then
         Result := Result + Value[I];
   end;
end;

{ -----------------------------------------------------------------------------
  Retorna uma String apenas com os char Alpha-Numericos contidos em <Value>
  ---------------------------------------------------------------------------- }
function OnlyAlphaNum(const Value: string): String;
Var
   I: Integer;
begin
   Result := '';
   For I := 1 to Length(Value) do
   begin
      if CharIsAlphaNum(Value[I]) then
         Result := Result + Value[I];
   end;
end;

{ -----------------------------------------------------------------------------
  Converte uma String pela sua representação em HexaDecimal
  Ex: "C080" em Hexadecimal é igual a "+Ç" em ASCII que é igual a 49280 que é
  igual a "1100000010000000" em binário
  Portanto se AString = "+Ç", Result = "C080"
  ---------------------------------------------------------------------------- }
function AsciiToHex(const AString: string): string;
Var
   I: Integer;
begin
   Result := '';
   for I := 1 to Length(AString) do
      Result := Result + IntToHex(ord(AString[I]), 2);
end;

{ -----------------------------------------------------------------------------
  Converte uma String em HexaDecimal <HexStr> pela sua representação em ASCII
  Ex: "C080" em Hexadecimal é igual a "+Ç" em ASCII que é igual a 49280 que é
  igual a "1100000010000000" em binário
  Portanto se HexStr = "CO80", Result = "+Ç"
  ---------------------------------------------------------------------------- }
Function HexToAscii(const HexStr: String): String;
Var
   B: byte;
   Cmd: String;
begin
   Result := '';
   Cmd := Trim(HexStr);
   while Cmd <> '' do
   begin
      B := StrToIntDef('$' + Copy(Cmd, 1, 2), 32);
      Cmd := Trim(Copy(Cmd, 3, Length(Cmd)));

      Result := Result + CHR(B);
   end;
end;

///
/// Validar email
///
function ValidEmail(email: string): Boolean;
// Returns True if the email address is valid
// Author: Ernesto D'Spirito
const
   // Valid characters in an "atom"
   atom_chars = [#33 .. #255] - ['(', ')', '<', '>', '@', ',', ';', ':', '\',
     '/', '"', '.', '[', ']', #127];
   // Valid characters in a "quoted-string"
   quoted_string_chars = [#0 .. #255] - ['"', #13, '\'];
   // Valid characters in a subdomain
   letters = ['A' .. 'Z', 'a' .. 'z'];
   letters_digits = ['0' .. '9', 'A' .. 'Z', 'a' .. 'z'];
   subdomain_chars = ['-', '0' .. '9', 'A' .. 'Z', 'a' .. 'z'];
type
   States = (STATE_BEGIN, STATE_ATOM, STATE_QTEXT, STATE_QCHAR, STATE_QUOTE,
     STATE_LOCAL_PERIOD, STATE_EXPECTING_SUBDOMAIN, STATE_SUBDOMAIN,
     STATE_HYPHEN);
var
   State: States;
   I, n, subdomains: Integer;
   C: char;
begin
   State := STATE_BEGIN;
   n := Length(email);
   I := 1;
   subdomains := 1;
   while (I <= n) do
   begin
      C := email[I];
      case State of
         STATE_BEGIN:
            if C in atom_chars then
               State := STATE_ATOM
            else if C = '"' then
               State := STATE_QTEXT
            else
               break;
         STATE_ATOM:
            if C = '@' then
               State := STATE_EXPECTING_SUBDOMAIN
            else if C = '.' then
               State := STATE_LOCAL_PERIOD
            else if not(C in atom_chars) then
               break;
         STATE_QTEXT:
            if C = '\' then
               State := STATE_QCHAR
            else if C = '"' then
               State := STATE_QUOTE
            else if not(C in quoted_string_chars) then
               break;
         STATE_QCHAR:
            State := STATE_QTEXT;
         STATE_QUOTE:
            if C = '@' then
               State := STATE_EXPECTING_SUBDOMAIN
            else if C = '.' then
               State := STATE_LOCAL_PERIOD
            else
               break;
         STATE_LOCAL_PERIOD:
            if C in atom_chars then
               State := STATE_ATOM
            else if C = '"' then
               State := STATE_QTEXT
            else
               break;
         STATE_EXPECTING_SUBDOMAIN:
            if C in letters then
               State := STATE_SUBDOMAIN
            else
               break;
         STATE_SUBDOMAIN:
            if C = '.' then
            begin
               Inc(subdomains);
               State := STATE_EXPECTING_SUBDOMAIN
            end
            else if C = '-' then
               State := STATE_HYPHEN
            else if not(C in letters_digits) then
               break;
         STATE_HYPHEN:
            if C in letters_digits then
               State := STATE_SUBDOMAIN
            else if C <> '-' then
               break;
      end;
      Inc(I);
   end;
   if I <= n then
      Result := false
   else
      Result := (State = STATE_SUBDOMAIN) and (subdomains >= 2);
end;

procedure GetComputers(Workgroup: String; Retorno: TStrings);

Var

   EnumHandle: THandle;

   WorkgroupRS: TNetResource;

   Buf: Array [1 .. 500] of TNetResource;

   BufSize: cardinal;

   Entries: cardinal;

   Result: DWord;

begin

   Retorno.Clear;

   Workgroup := Workgroup + #0;

   FillChar(WorkgroupRS, SizeOf(WorkgroupRS), 0);

   With WorkgroupRS do
   begin

      dwScope := 2;

      dwType := 3;

      dwDisplayType := 1;

      dwUsage := 2;

      lpRemoteName := @Workgroup[1];

   end;

   WNetOpenEnum(RESOURCE_GLOBALNET,

     RESOURCETYPE_ANY,

     0,

     @WorkgroupRS,

     EnumHandle);

   Repeat

      Entries := 1;

      BufSize := SizeOf(Buf);

      Result := WNetEnumResource(EnumHandle, Entries, @Buf, BufSize);

      If (Result = NO_ERROR) and (Entries = 1) then
      begin

         Retorno.Add(StrPas(Buf[1].lpRemoteName));

      end;

   Until (Entries <> 1) or (Result <> NO_ERROR);

   WNetCloseEnum(EnumHandle);

end; { Find All computers }

/// //////////////////////////////////////////////////////////////////////

function CreateNetResourceList(ResourceType: DWord; NetResource: PNetResource;
  out Entries: DWord; out List: PNetResourceArray): Boolean;
var
   EnumHandle: THandle;
   BufSize: DWord;
   res: DWord;
begin
   Result := false;
   List := nil;
   Entries := 0;
   if WNetOpenEnum(RESOURCE_GLOBALNET, ResourceType, 0, NetResource, EnumHandle)
     = NO_ERROR then
   begin
      try
         BufSize := $4000; // 16 kByte
         GetMem(List, BufSize);
         try
            repeat
               Entries := DWord(-1);
               FillChar(List^, BufSize, 0);
               res := WNetEnumResource(EnumHandle, Entries, List, BufSize);
               if res = ERROR_MORE_DATA then
               begin
                  ReAllocMem(List, BufSize);
               end;
            until not(res = ERROR_MORE_DATA);

            Result := res = NO_ERROR;
            if not Result then
            begin
               FreeMem(List);
               List := nil;
               Entries := 0;
            end;
         except
            FreeMem(List);
            raise;
         end;
      finally
         WNetCloseEnum(EnumHandle);
      end;
   end;
end;

{
  como usar:

  Lista os Pcs em rede Código:

  procedure TForm1.Button1Click(Sender : TObject);
  begin
  ScanNetworkResources(RESOURCETYPE_DISK, RESOURCEDISPLAYTYPE_SERVER, ListBox1.Items);
  end;

  -----------------------------------------------------------

  lista os compartilhamentos
  Código:
  procedure TForm1.Button1Click(Sender : TObject);
  begin
  ScanNetworkResources(RESOURCETYPE_DISK, RESOURCEDISPLAYTYPE_SHARE, ListBox1.Items);
  end;


  -----------------------------------------------------------
  Lista tudo:
  Código:
  procedure TForm1.Button1Click(Sender : TObject);
  begin
  ScanNetworkResources(RESOURCETYPE_DISK, RESOURCEDISPLAYTYPE_GENERIC, ListBox1.Items);
  end;


}

procedure ScanNetworkResources(ResourceType, DisplayType: DWord;
  List: TStrings);

   procedure ScanLevel(NetResource: PNetResource);
   var
      Entries: DWord;
      NetResourceList: PNetResourceArray;
      I: Integer;
   begin
      if CreateNetResourceList(ResourceType, NetResource, Entries,
        NetResourceList) then
         try
            for I := 0 to Integer(Entries) - 1 do
            begin
               if (DisplayType = RESOURCEDISPLAYTYPE_GENERIC) or
                 (NetResourceList[I].dwDisplayType = DisplayType) then
               begin
                  List.AddObject(NetResourceList[I].lpRemoteName,
                    Pointer(NetResourceList[I].dwDisplayType));
               end;
               if not((NetResourceList[I].dwUsage and
                 RESOURCEUSAGE_CONTAINER) = 0) then
                  ScanLevel(@NetResourceList[I]);
            end;
         finally
            FreeMem(NetResourceList);
         end;
   end;

begin
   ScanLevel(nil);
end;

// from: http://www.swissdelphicenter.ch/torry/showcode.php?id=1326
function Explode(var a: TStrArray; Border, S: string): Integer;

{
  Como usar:

  sLinha :='Nome1;endereco1;telefone1';

  Explode(campos, ';', sLinha);

  Resultado:
  FieldByName('NOME').AsString     := campos[0];
  FieldByName('ENDERECO').AsString := campos[1];
  FieldByName('TELEFONE').AsString := campos[2];
  FieldByName('CAMPO...').AsString := campos[...];
  e assim por diante...
}

var
   S2: string;
begin
   Result := 0;
   S2 := S + Border;
   repeat
      SetLength(a, Length(a) + 1);
      a[Result] := Copy(S2, 0, Pos(Border, S2) - 1);
      Delete(S2, 1, Length(a[Result] + Border));
      Inc(Result);
   until S2 = '';
end;

function Implode(const cSeparator: String; const cArray: TExplodeArray): String;
var
   I: Integer;
begin
   Result := '';
   for I := 0 to Length(cArray) - 1 do
   begin
      Result := Result + cSeparator + cArray[I];
   end;
   System.Delete(Result, 1, Length(cSeparator));

end;

function MilimetrosParaPixels(Milimetros: Double): Integer;
begin
   Result := Round(Screen.PixelsPerInch * Milimetros / 25.4);
end;

function DiaSemana(Data: TDateTime): String;
begin
   case DayOfWeek(Data) of
      1:
         Result := 'Domingo';
      2:
         Result := 'Segunda-feira';
      3:
         Result := 'Terça-feira';
      4:
         Result := 'Quarta-feira';
      5:
         Result := 'Quinta-feira';
      6:
         Result := 'Sexta-feira';
      7:
         Result := 'Sábado';
   end;
end;

function nDiaSemana(Dia: Integer): String;
begin
   case Dia of
      1:
         Result := 'Domingo';
      2:
         Result := 'Segunda-feira';
      3:
         Result := 'Terca-feira';
      4:
         Result := 'Quarta-feira';
      5:
         Result := 'Quinta-feira';
      6:
         Result := 'Sexta-feira';
      7:
         Result := 'Sabado';
   end;
end;

// Funciona com EAN8 e EAN13
function Valida_EAN(CODIGO_EAN: String): Boolean;
var
   Temp1, Temp2: Integer;
   Temp3: String;
begin

   Temp2 := 0;
   Temp3 := '';

   CODIGO_EAN := SoNumero(CODIGO_EAN);

   if (CODIGO_EAN = '') then
      CODIGO_EAN := '0';

   try
      StrToInt(CODIGO_EAN);
   except
      CODIGO_EAN := '0';
   end;

   // Inverte, retirando o dígito
   for Temp1 := Length(CODIGO_EAN) - 1 downto 1 do
      Temp3 := Temp3 + CODIGO_EAN[Temp1];

   // Multiplica as posições impares por 3, fazendo o somatório
   for Temp1 := 1 to Length(Temp3) do

      if Temp1 mod 2 = 0 then
         Temp2 := Temp2 + StrToInt(Temp3[Temp1])
      else
         Temp2 := Temp2 + StrToInt(Temp3[Temp1]) * 3;

   // 10 menos o resto da divisão
   Temp2 := 10 - Round(Frac(Temp2 / 10) * 10);

   Result := Temp2 = StrToInt(Copy(CODIGO_EAN, Length(CODIGO_EAN), 1));

end;


function DigitoVerificadorCidade( Codigo : String ) : String;
var
  i, Valor, Soma: integer;
  Digito: string;
const
  PESO = '1212120';
  NAO_VALIDAR = '|2201919|2202251|2201988|2611533|3117836|3152131|4305871|5203939|5203962|';
begin
  if Length(Codigo) < 6 then
   begin
     Result := 'Tamanho Inválido';
     exit;
   end;
  if pos('|' + copy(Codigo, 1, 6), NAO_VALIDAR) > 0 then
  begin
    Result := copy(NAO_VALIDAR,pos('|' + Codigo, NAO_VALIDAR)+1,7);
    exit;
  end;
  soma := 0;
  for i := 1 to 6 do
  begin
    valor := StrToInt(copy(Codigo, i, 1)) * StrToInt(copy(PESO, i, 1));
    if valor > 9 then
      soma := soma + StrToInt(copy(IntToStr(valor), 1, 1)) + StrToInt(copy(IntToStr(valor), 2, 1))
    else
      soma := soma + valor;
  end;
  digito := IntToStr((10 - (soma mod 10)));
  if ((soma mod 10) = 0) then
    digito := '0';
  Result := copy(codigo,1,6) + Digito;

end;



{ Com a Função é possível permitir a entrada de somente letras, números ou letras e números. }
function ValidarCampo(var Key: Char; TipoFiltro: Byte = 0): Boolean;
begin
{

// Exemplos de uso
no evento OnKeyPress

- ValidateField(Key);

-  // Alterando o tipo de filtro.
-  ValidateField(Key, 2);

}

  case TipoFiltro of
    0 : if not (IsCharAlphaNumeric(Key)) then Key := #0;   // Aceita letras e números
    1 : if not (IsCharAlpha(Key))        then Key := #0;   // Aceita letras
    2 : if not (IsDigit(Key))            then Key := #0;   // Aceita Números
    else
      raise Exception.Create('Tipo de filtro inválido.');
  end;


end;

function ValorParcela(C : Real; J : Real; N : Real) : Real;
begin
{
C representa o valor do bem (capital)
J a taxa de juros mensal no formato '#.##'( ex: 3,00 - tres por cento)
N é o número de parcelas, em meses.
retorna o valor de cada parcela.
}
   Result := C*((J/100)/(1-( Power(1/(1+(J/100)),N) )));
end;

Procedure StatusAbrirBuscaCEP(Status:Integer);
Begin
{
   case ACBrNFe1.Status of
      stIdle:
         begin
            if (FrmCEPStatus <> nil) then
               FrmCEPStatus.Hide;
         end;
      stNFeStatusServico:
         begin
            if (FrmCEPStatus = nil) then
               FrmCEPStatus := TFrmCEPStatus.Create(Self);
            FrmCEPStatus.LblStatusLocalizacao.Caption :=
              'Procurando dados do CEP... aguarde';
            FrmCEPStatus.Show;
            FrmCEPStatus.BringToFront;
         end;
      stNFeRecepcao:
         begin
            if (FrmCEPStatus = nil) then
               FrmCEPStatus := TFrmCEPStatus.Create(Self);
            FrmCEPStatus.LblStatusLocalizacao.Caption := 'Procurando dados do CEP... aguarde';
            FrmCEPStatus.Show;
            FrmCEPStatus.BringToFront;
         end;
      stNfeRetRecepcao:
         begin
            if (FrmCEPStatus = nil) then
               FrmCEPStatus := TFrmCEPStatus.Create(Self);
            FrmCEPStatus.LblStatusLocalizacao.Caption := 'Recebendo dados da NFe...';
            FrmCEPStatus.Show;
            FrmCEPStatus.BringToFront;
         end;
      stNfeConsulta:
         begin
            if (FrmCEPStatus = nil) then
               FrmCEPStatus := TFrmCEPStatus.Create(Application);
            FrmCEPStatus.LblStatusLocalizacao.Caption := 'Consultando NFe...';
            FrmCEPStatus.Show;
            FrmCEPStatus.BringToFront;
         end;
      stNfeCancelamento:
         begin
            if (FrmCEPStatus = nil) then
               FrmCEPStatus := TFrmCEPStatus.Create(Application);
            FrmCEPStatus.LblStatusLocalizacao.Caption := 'Enviando cancelamento de NFe...';
            FrmCEPStatus.Show;
            FrmCEPStatus.BringToFront;
         end;
      stNfeInutilizacao:
         begin
            if (FrmCEPStatus = nil) then
               FrmCEPStatus := TFrmCEPStatus.Create(Application);
            FrmCEPStatus.LblStatusLocalizacao.Caption :=
              'Enviando pedido de Inutilização...';
            FrmCEPStatus.Show;
            FrmCEPStatus.BringToFront;
         end;
      stNFeRecibo:
         begin
            if (FrmCEPStatus = nil) then
               FrmCEPStatus := TFrmCEPStatus.Create(Application);
            FrmCEPStatus.LblStatusLocalizacao.Caption := 'Consultando Recibo de Lote...';
            FrmCEPStatus.Show;
            FrmCEPStatus.BringToFront;
         end;
      stNFeCadastro:
         begin
            if (FrmCEPStatus = nil) then
               FrmCEPStatus := TFrmCEPStatus.Create(Application);
            FrmCEPStatus.LblStatusLocalizacao.Caption := 'Consultando Cadastro...';
            FrmCEPStatus.Show;
            FrmCEPStatus.BringToFront;
         end;
      stNFeEnvDPEC:
         begin
            if (FrmCEPStatus = nil) then
               FrmCEPStatus := TFrmCEPStatus.Create(Application);
            FrmCEPStatus.LblStatusLocalizacao.Caption := 'Enviando DPEC...';
            FrmCEPStatus.Show;
            FrmCEPStatus.BringToFront;
         end;
      stNFeConsultaDPEC:
         begin
            if (FrmCEPStatus = nil) then
               FrmCEPStatus := TFrmCEPStatus.Create(Application);
            FrmCEPStatus.LblStatusLocalizacao.Caption := 'Consultando DPEC...';
            FrmCEPStatus.Show;
            FrmCEPStatus.BringToFront;
         end;
      stNFeEmail:
         begin
            if (FrmCEPStatus = nil) then
               FrmCEPStatus := TFrmCEPStatus.Create(Application);
            FrmCEPStatus.LblStatusLocalizacao.Caption := 'Enviando Email...';
            FrmCEPStatus.Show;
            FrmCEPStatus.BringToFront;
         end;
   end;

   Application.ProcessMessages;


}

End;


/// CHECAGENS
///


function Fix(X: Extended): Extended;

{ Retorna o primeiro inteiro menor que ou

  igual a um dado número.

  Int(3,7) = 3          Int(-3,7) = -3

  Fix(3,7) = 3          Fix(-3,1) = -4 }

begin
  if (X >= 0) or (Frac(X) = 0) then

    Result := Int(X)

  else
    Result := Int(X) - 1;

end;

function RoundN(X: Extended): Extended;

{ Arredonda um número "normalmente": caso a parte de fração
  seja >= 0,5 o número será arredondado “para cima” (ver RoundUp)
  caso contrário, se a parte de fração for < 0,5, o
  número será arredondado “para baixo” (ver RoundDn).
  RoundN(3,5) = 4     RoundN(-3,5) = -4

  RoundN(3,1) = 3     RoundN(-3,1) = -3 }

begin
  (*
  if Abs(Frac(X)) >= 0.5 then

    Result := RoundUp(X)

  else
    Result := RoundDn(X);

  *)
    Result := Int(X) + Int(Frac(X) * 2);

end;

function RoundX(X: Extended): Extended;

{ Arredonda o número "normalmente", porém levando em conta o sinal:
  se a parte de fração for >= 0,5, o número

  será arredondado “para cima” (ver RoundUpX)

  caso contrario, se a parte de fração for < 0,5,

  o número será arredondado “para baixo” (ver RoundDnX).

  RoundX(3,5) = 4     RoundX(-3,5) = -3 }

begin
  (*
  if Abs(Frac(X)) >= 0,5 then

    Result := RoundUpX(X)

  else
    Result := RoundDnX(X);

  *)
    Result := Fix(X + 0.5);

end;


function CriaSubDir(const NomeSubDir: string): boolean;
{Exemplo de uso:

- Chame a função no evento OnCreate do form:

procedure TForm1.FormCreate(Sender: TObject);
begin
  if not CriaSubDir('MeuSubDir') then
    ShowMessage('Não foi possível criar o sub-diretório MeuSubDir.');
end;
}

var
  Caminho: string;
begin

  Caminho := ExtractFilePath(ParamStr(0)) + NomeSubDir;
  if DirectoryExists(Caminho) then
    Result := true
  else
    Result := CreateDir(Caminho);
end;

procedure DimensionarGrid(dbg: TDbGrid; var fmformulario);
   type
      TArray = Array of integer;
   procedure AjustarColumns(Swidth,TSize:integer;Asize:TArray);
     var
       idx:integer;
   begin
     if Tsize = 0 then
        begin
           Tsize:=dbg.Columns.Count;
             for idx:=0 to dbg.Columns.Count-1 do
               dbg.Columns[Idx].Width:=
                     (dbg.Width- dbg.Canvas.TextWidth('AAAAAA')) div Tsize
        end
     else
      for idx:=0 to dbg.Columns.Count-1 do
        dbg.Columns[Idx].Width:=dbg.Columns[Idx].Width + (Swidth*Asize[idx] div Tsize);
    end;
  var
   Idx,Twidth,Tsize,Swidth: Integer;
   AWidth:TArray;
   Asize:TArray;
   NomeColuna:String;
begin

  Try
     SetLength(AWidth,dbg.Columns.Count);
     SetLength(ASize,dbg.Columns.Count);
     TWidth:=0;
     TSize:=0;
     Idx := 0;
     for Idx := 0 to dbg.Columns.Count - 1  do
     begin
        NomeColuna:=Dbg.Columns[Idx].Title.Caption;
        //dbg.Columns[Idx].Width := dbg.Canvas.TextWidth(Dbg.Columns[Idx].Title.Caption+'A');
        dbg.Columns[Idx].Width := dbg.Canvas.TextWidth(Dbg.Columns[Idx].Title.Caption+'AAA');

        AWidth[idx]:=dbg.Columns[Idx].Width+1;
        TWidth:= TWidth + AWidth[idx];
        Asize[idx]:= dbg.Columns[idx].Field.Size;
        Tsize:= Tsize+Asize[idx];
     end;
     if dgColLines in dbg.Options then
         TWidth:= TWidth+ Dbg.Columns.Count;

     //adiciona a largura da coluna indicada do cursor
     if dgIndicator in Dbg.Options then
        TWidth:=TWidth+IndicatorWidth;

     Swidth:=dbg.ClientWidth - TWidth;
     AjustarColumns(Swidth,TSize,Asize);
     dbg.Width:=dbg.Width + dbg.Canvas.TextWidth('AAAAAA');
     Dbg.Left:=(Tform(fmformulario).Width - dbg.Width) div 2 -  (dbg.Canvas.TextWidth('AA') div 2);

  Except
  end;


end;

function fncPrimeiraLetra(p_texto: string): string;
begin
 If p_texto <> '' Then
 result := UpperCase(Copy(p_texto,1,1))+LowerCase(Copy(p_texto,2,Length(p_texto)));
end;

Procedure prcStatusMessage(sTitulo,sMessage: string;lbAbrir:boolean);
begin

   {
   Application.ProcessMessages;
   if lbAbrir then
   begin
      if (FrmStatusNFe = nil) then
         FrmStatusNFe := TFrmStatusNFe.Create(Application);

      FrmStatusNFe.FrmFrameBarra1.LblBarraTitulo.Caption := sTitulo;
      FrmStatusNFe.lblStatus.Caption                     := sMessage;
      FrmStatusNFe.Show;
      FrmStatusNFe.BringToFront;
   end
   else
      FrmStatusNFe.close;

   }
   Application.ProcessMessages;

end;

// criptografia
function Base64Encode(const S: AnsiString): AnsiString;
var
  R, C : Byte;
  F, L, M, N, U : Integer;
  P : PAnsiChar;
begin
  L := Length(S);
  if L > 0 then
  begin
    M := L mod 3;
    N := (L div 3) * 4 + M;
    if M > 0 then Inc(N);
    U := N mod 4;
    if U > 0 then
    begin
      U := 4 - U;
      Inc(N, U);
    end;
    SetLength(Result, N);
    P := Pointer(Result);
    R := 0;
    for F := 0 to L - 1 do
    begin
      C := Byte(S [F + 1]);
      case F mod 3 of
        0 : begin
              P^ := Base64Charset[C shr 2 + 1];
              Inc(P);
              R := (C and 3) shl 4;
            end;
        1 : begin
              P^ := Base64Charset[C shr 4 + R + 1];
              Inc(P);
              R := (C and $0F) shl 2;
            end;
        2 : begin
              P^ := Base64Charset[C shr 6 + R + 1];
              Inc(P);
              P^ := Base64Charset[C and $3F + 1];
              Inc(P);
            end;
      end;
    end;
    if M > 0 then
    begin
      P^ := Base64Charset[R + 1];
      Inc(P);
    end;
    for F := 1 to U do
    begin
      P^ := '=';
      Inc(P);
    end;
  end else
    Result := '';
end;

// criptografia
function Base64Decode(const S: AnsiString): AnsiString;
var
  F, L, M, P: Integer;
  B, OutPos: Byte;
  OutB: Array[1..3] of Byte;
  Lookup: Array[AnsiChar] of Byte;
  R: PAnsiChar;
begin
  L := Length(S);
  P := 0;
  while (L - P > 0) and (S[L - P] = '=') do Inc(P);
  M := L - P;
  if M <> 0 then
  begin
    SetLength(Result, (M * 3) div 4);
    FillChar(Lookup, Sizeof(Lookup), #0);
    for F := 0 to 63 do
      Lookup[Base64Charset[F + 1]] := F;
    R := Pointer(Result);
    OutPos := 0;
    for F := 1 to L - P do
    begin
      B := Lookup[S[F]];
      case OutPos of
          0 : OutB[1] := B shl 2;
          1 : begin
                OutB[1] := OutB[1] or (B shr 4);
                R^ := AnsiChar(OutB[1]);
                Inc(R);
                OutB[2] := (B shl 4) and $FF;
              end;
          2 : begin
                OutB[2] := OutB[2] or (B shr 2);
                R^ := AnsiChar(OutB[2]);
                Inc(R);
                OutB[3] := (B shl 6) and $FF;
              end;
          3 : begin
                OutB[3] := OutB[3] or B;
                R^ := AnsiChar(OutB[3]);
                Inc(R);
              end;
        end;
      OutPos := (OutPos + 1) mod 4;
    end;
    if (OutPos > 0) and (P = 0) then
      if OutB[OutPos] <> 0 then
        Result := Result + AnsiChar(OutB[OutPos]);
  end else
    Result := '';
end;


function fncTipoPessoa ( strID : String) : String;
begin
   if strID='F' then
      result := 'FÍSICA';

   if strID='J' then
      result := 'JURÍDICA';

   if strID='' then
      result := 'INDEFINIDO';

end;

End.
