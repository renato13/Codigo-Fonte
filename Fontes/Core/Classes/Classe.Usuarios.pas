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

unit Classe.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Classe.Criptografia;


Type
   TUsuarioPedidoVenda = Class
   Private
     FAprovar	                      :  Boolean;
     FVisualizarPreco               :  Boolean;
     FAlterarPagamento	            :  Boolean;
     FDesconto	                    :  Boolean;
     function  GetAlterarPagamento: Boolean;
     function  GetAprovar: Boolean;
     function  GetDesconto: Boolean;
     function  GetVisualizarPreco: Boolean;
     procedure SetAlterarPagamento(const Value: Boolean);
     procedure SetAprovar(const Value: Boolean);
     procedure SetDesconto(const Value: Boolean);
     procedure SetVisualizarPreco(const Value: Boolean);
   Public
     property Aprovar	              :  Boolean  Read  GetAprovar	           Write  SetAprovar;
     property VisualizarPreco 	    :  Boolean  Read  GetVisualizarPreco     Write  SetVisualizarPreco;
     property AlterarPagamento	    :  Boolean  Read  GetAlterarPagamento    Write  SetAlterarPagamento;
     property Desconto	            :  Boolean  Read  GetDesconto	           Write  SetDesconto;
   End;

   TUsuarioProducao = Class
   Private
     FAprovar	                      :  Boolean;
     FFaseMovimentar	              :  Boolean;
     FAtualizarEstoque	            :  Boolean;
     function GetAprovar: Boolean;
     function GetAtualizarEstoque: Boolean;
     function GetFaseMovimentar: Boolean;
     procedure SetAprovar(const Value: Boolean);
     procedure SetAtualizarEstoque(const Value: Boolean);
     procedure SetFaseMovimentar(const Value: Boolean);
   Public
     property Aprovar	              :  Boolean   Read  GetAprovar	            Write   SetAprovar;
     property FaseMovimentar	      :  Boolean   Read  GetFaseMovimentar	    Write   SetFaseMovimentar;
     property AtualizarEstoque	    :  Boolean   Read  GetAtualizarEstoque    Write   SetAtualizarEstoque;

   End;

   TUsuarioEstoque = Class
   Private
     FInventario	                  :  Boolean;
     FVisualizarPreco	              :  Boolean;
     function GetInventario: Boolean;
     function GetVisualizarPreco: Boolean;
     procedure SetInventario(const Value: Boolean);
     procedure SetVisualizarPreco(const Value: Boolean);
   Public
     property Inventario	          :  Boolean   Read  GetInventario	        Write   SetInventario;
     property VisualizarPrecos	    :  Boolean   Read  GetVisualizarPreco     Write   SetVisualizarPreco;

   End;


   TUsuarioNotaFiscal = Class
   Private
     FCancelarNFe	                  :  Boolean;
     function GetCancelarNFe: Boolean;
     procedure SetCancelarNFe(const Value: Boolean);
   Public
     property CancelarNFe	          :  Boolean   Read  GetCancelarNFe  Write  SetCancelarNFe;
   End;


   TUsuario = Class
   Private
     FCriptografar                  : TCriptografia;
     FUsuarioCodigo                 : Integer;
     FUsuarioNome	                  : String;
     FUsuarioSenha			            : String;
     FSenhaEncriptada               : String;
     FSenhaDecriptada               : String;
     FBloquear		                  : Boolean;
     FOnline			                  : Boolean;
     FPedidoVenda                   : TUsuarioPedidoVenda;
     FProducao                      : TUsuarioProducao;
     FEstoque                       : TUsuarioEstoque;
     FNotaFiscal                    : TUsuarioNotaFiscal;

     function GetBloquear: Boolean;
     function GetCodigo: Integer;
     function GetOnline: Boolean;
     function GetSenha: String;
     function GetUserName: String;
     procedure SetBloquear(const Value: Boolean);
     procedure SetCodigo(const Value: Integer);
     procedure SetEstoque(const Value: TUsuarioEstoque);
     procedure SetNotaFiscal(const Value: TUsuarioNotaFiscal);
     procedure SetOnline(const Value: Boolean);
     procedure SetPedidoVenda(const Value: TUsuarioPedidoVenda);
     procedure SetProducao(const Value: TUsuarioProducao);
     procedure SetSenha(const Value: String);
     procedure SetUserName(const Value: String);

     function  GetSenhaDecriptada: String;
     function  GetSenhaEncriptada: String;
    procedure SetSenhaDecriptada(const Value: String);
    procedure SetSenhaEncriptada(const Value: String);
   Public
     constructor Create;
     destructor  Destroy;
     Function  Autenticar: Boolean;
     procedure prcLogUsuario(Modulo,AcaoUsuario: WideString);

     property UsuarioCodigo         : Integer               Read  GetCodigo	         Write  SetCodigo;
     property UsuarioNome           : String                Read  GetUserName        Write  SetUserName;
     property UsuarioSenha          : String                Read  GetSenha		       Write  SetSenha;

     property SenhaEncriptada       : String                Read  GetSenhaEncriptada Write SetSenhaEncriptada;
     property SenhaDecriptada       : String                Read  GetSenhaDecriptada Write SetSenhaDecriptada;

     property Bloquear		          : Boolean               Read  GetBloquear        Write  SetBloquear;
     property Online			          : Boolean               Read  GetOnline	         Write  SetOnline;
     property PedidoVenda           : TUsuarioPedidoVenda   Read  FPedidoVenda       Write  SetPedidoVenda;
     property Producao              : TUsuarioProducao      Read  FProducao          Write  SetProducao;
     property Estoque               : TUsuarioEstoque       Read  FEstoque           Write  SetEstoque;
     property NotaFiscal            : TUsuarioNotaFiscal    Read  FNotaFiscal        Write  SetNotaFiscal;
   End;


implementation


{ TUsuarioPedidoVenda }

uses  Classe.BancoDados, Classe.Global, FAutenticarAcao;


function TUsuarioPedidoVenda.GetAlterarPagamento: Boolean;
begin
  Result := FAlterarPagamento;
end;

function TUsuarioPedidoVenda.GetAprovar: Boolean;
begin
   Result := FAprovar;
end;

function TUsuarioPedidoVenda.GetDesconto: Boolean;
begin
   Result := FDesconto;
end;

function TUsuarioPedidoVenda.GetVisualizarPreco: Boolean;
begin
   Result := FVisualizarPreco;
end;

procedure TUsuarioPedidoVenda.SetAlterarPagamento(const Value: Boolean);
begin
   FAlterarPagamento :=Value;
end;

procedure TUsuarioPedidoVenda.SetAprovar(const Value: Boolean);
begin
   FAprovar :=Value;
end;

procedure TUsuarioPedidoVenda.SetDesconto(const Value: Boolean);
begin
   FDesconto :=Value;
end;

procedure TUsuarioPedidoVenda.SetVisualizarPreco(const Value: Boolean);
begin
   FVisualizarPreco :=Value;
end;

{ TUsuariosNotaFiscal }

function TUsuarioNotaFiscal.GetCancelarNFe: Boolean;
begin
  Result := FCancelarNFe;
end;

procedure TUsuarioNotaFiscal.SetCancelarNFe(const Value: Boolean);
begin
   FCancelarNFe := Value;
end;

{ TUsuarioProducao }

function TUsuarioProducao.GetAprovar: Boolean;
begin
   Result := FAprovar;
end;

function TUsuarioProducao.GetAtualizarEstoque: Boolean;
begin
   Result := FAtualizarEstoque;
end;

function TUsuarioProducao.GetFaseMovimentar: Boolean;
begin
   Result := FFaseMovimentar;
end;

procedure TUsuarioProducao.SetAprovar(const Value: Boolean);
begin
   FAprovar := Value;
end;

procedure TUsuarioProducao.SetAtualizarEstoque(const Value: Boolean);
begin
   FAtualizarEstoque := Value;
end;

procedure TUsuarioProducao.SetFaseMovimentar(const Value: Boolean);
begin
   FFaseMovimentar := Value;
end;

{ TUsuarioEstoque }

function TUsuarioEstoque.GetInventario: Boolean;
begin
   Result := FInventario;
end;

function TUsuarioEstoque.GetVisualizarPreco: Boolean;
begin
   Result := FVisualizarPreco;
end;

procedure TUsuarioEstoque.SetInventario(const Value: Boolean);
begin
   FInventario  := Value;
end;

procedure TUsuarioEstoque.SetVisualizarPreco(const Value: Boolean);
begin
   FVisualizarPreco  := Value;
end;

{ TUsuarios }

function TUsuario.Autenticar: Boolean;
Var
  UsuarioAutenticarAcao : Boolean;
begin

   Result := False;
   FrmAutenticarAcao := TFrmAutenticarAcao.create(nil);
   If FrmAutenticarAcao.ShowModal = mrOk then
   Begin
      If  UsuarioAutenticarAcao then
      Begin
         Result := True;
      End;
   End
   Else
   Begin
      If not UsuarioAutenticarAcao then
      Begin
         Result := False;
      End;
   End;
end;

constructor TUsuario.Create;
begin
   FUsuarioCodigo	 :=0;
   FUsuarioNome	   :='';
   FUsuarioSenha	 :='';
   FBloquear		   :=False;
   FOnline			   :=False;
   FPedidoVenda    :=TUsuarioPedidoVenda.Create;
   FProducao       :=TUsuarioProducao.Create;
   FEstoque        :=TUsuarioEstoque.Create;
   FNotaFiscal     :=TUsuarioNotaFiscal.Create;
   FCriptografar   :=TCriptografia.Create;

end;

destructor TUsuario.Destroy;
begin
   if Assigned(FPedidoVenda) then
      FPedidoVenda.Free;

   if Assigned(FProducao) then
      FProducao.Free;

   if Assigned(FEstoque) then
      FEstoque.Free;

   if Assigned(FNotaFiscal) then
      FNotaFiscal.Free;

   if Assigned(FCriptografar) then
      FCriptografar.Free;

end;

function TUsuario.GetBloquear: Boolean;
begin
   Result := FBloquear;
end;

function TUsuario.GetCodigo: Integer;
begin
   Result := FUsuarioCodigo;
end;

function TUsuario.GetOnline: Boolean;
begin
   Result := FOnline;
end;

function TUsuario.GetSenha: String;
begin
   Result := Trim(FUsuarioSenha);
end;

function TUsuario.GetSenhaDecriptada: String;
begin
  Result := FSenhaDecriptada;
end;

function TUsuario.GetSenhaEncriptada: String;
begin
   Result := FSenhaEncriptada;
end;

function TUsuario.GetUserName: String;
begin
   Result := Trim(FUsuarioNome);
end;

procedure TUsuario.prcLogUsuario(Modulo, AcaoUsuario: WideString);
Var
   FTBLOutrasFuncoes :  TFDQuery;
begin

   FTBLOutrasFuncoes := TFDQuery.Create(Application);
   FTBLOutrasFuncoes.Connection := FSQLConexao.SQLConexao;

   FTBLOutrasFuncoes.Close;
   FTBLOutrasFuncoes.SQL.Clear;
   FTBLOutrasFuncoes.SQL.Add     (' insert into USUARIOS_LOG             ');
   FTBLOutrasFuncoes.SQL.Add     ('                                      ');
   FTBLOutrasFuncoes.SQL.Add     (' (                                    ');
   FTBLOutrasFuncoes.SQL.Add     ('                                      ');
   FTBLOutrasFuncoes.SQL.Add     (' DATA,                                ');
   FTBLOutrasFuncoes.SQL.Add     (' HORAS,                               ');
   FTBLOutrasFuncoes.SQL.Add     (' CODIGO,                              ');
   FTBLOutrasFuncoes.SQL.Add     (' USERNAME,                            ');
   FTBLOutrasFuncoes.SQL.Add     (' MODULO,                              ');
   FTBLOutrasFuncoes.SQL.Add     (' ACAO                                 ');
   FTBLOutrasFuncoes.SQL.Add     (' )                                    ');
   FTBLOutrasFuncoes.SQL.Add     ('                                      ');
   FTBLOutrasFuncoes.SQL.Add     (' values                               ');
   FTBLOutrasFuncoes.SQL.Add     ('                                      ');
   FTBLOutrasFuncoes.SQL.Add     (' (                                    ');
   FTBLOutrasFuncoes.SQL.Add     (' :DATA,                               ');
   FTBLOutrasFuncoes.SQL.Add     (' :HORAS,                              ');
   FTBLOutrasFuncoes.SQL.Add     (' :CODIGO,                             ');
   FTBLOutrasFuncoes.SQL.Add     (' :USERNAME,                           ');
   FTBLOutrasFuncoes.SQL.Add     (' :MODULO,                             ');
   FTBLOutrasFuncoes.SQL.Add     (' :ACAO                                ');
   FTBLOutrasFuncoes.SQL.Add     ('                                      ');
   FTBLOutrasFuncoes.SQL.Add     (' )                                    ');

   FTBLOutrasFuncoes.ParamByName('DATA').AsDateTime     := Date;
   FTBLOutrasFuncoes.ParamByName('HORAS').AsTime        := Now ;
   FTBLOutrasFuncoes.ParamByName('CODIGO').AsInteger    := FUsuarioCodigo;
   FTBLOutrasFuncoes.ParamByName('USERNAME').AsString   := FUsuarioNome;
   FTBLOutrasFuncoes.ParamByName('MODULO').AsString     := UpperCase(Modulo);
   FTBLOutrasFuncoes.ParamByName('ACAO').AsWideString   := UpperCase( AcaoUsuario );

   FTBLOutrasFuncoes.ExecSQL;

   FTBLOutrasFuncoes.Close;

   if Assigned(FTBLOutrasFuncoes) then
      FTBLOutrasFuncoes.Free;
end;

procedure TUsuario.SetBloquear(const Value: Boolean);
begin
   FBloquear := Value;
end;

procedure TUsuario.SetCodigo(const Value: Integer);
begin
   FUsuarioCodigo := Value;
end;

procedure TUsuario.SetEstoque(const Value: TUsuarioEstoque);
begin
  FEstoque := Value;
end;

procedure TUsuario.SetNotaFiscal(const Value: TUsuarioNotaFiscal);
begin
  FNotaFiscal := Value;
end;

procedure TUsuario.SetOnline(const Value: Boolean);
begin
   FOnline := Value;
end;

procedure TUsuario.SetPedidoVenda(const Value: TUsuarioPedidoVenda);
begin
  FPedidoVenda := Value;
end;

procedure TUsuario.SetProducao(const Value: TUsuarioProducao);
begin
  FProducao := Value;
end;

procedure TUsuario.SetSenha(const Value: String);
begin
   FUsuarioSenha := Trim(Value);
end;

procedure TUsuario.SetSenhaDecriptada(const Value: String);
begin
   if (Trim(Value)='') Then
       FSenhaDecriptada := ''
   else
       FSenhaDecriptada := FCriptografar.fncDecript(  FSenhaEncriptada);
end;

procedure TUsuario.SetSenhaEncriptada(const Value: String);
begin
   if (Trim(Value)='') Then
       FSenhaEncriptada := ''
   else
       FSenhaEncriptada := FCriptografar.fncEncript(  FUsuarioSenha);
end;

procedure TUsuario.SetUserName(const Value: String);
begin
   FUsuarioNome := Trim(Value);
end;

end.
