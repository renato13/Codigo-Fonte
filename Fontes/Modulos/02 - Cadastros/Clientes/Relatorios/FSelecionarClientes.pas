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

unit FSelecionarClientes;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, DB,     Grids,
   DBGrids, StdCtrls, ExtCtrls, Buttons, ImgList,
     FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmSelecionarClientes = class(TForm)
      Panel4: TPanel;
      Panel1: TPanel;
      RDSelecao: TRadioGroup;
      EditPesquisa: TLabeledEdit;
      DS_Dados: TDataSource;
      DB_Clientes:  TFDQuery;
      DB_ClientesUpdate: TFDQuery;
    BtnDesmarcarTudo: TSpeedButton;
      Btn_Imprimir: TBitBtn;
      BtnSair: TBitBtn;
      DBAdvGrid1: TDBGrid;
    BtnMarcarTudo: TSpeedButton;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure RDSelecaoClick(Sender: TObject);
      procedure EditPesquisaChange(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure BtnDesmarcarTudoClick(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
    procedure BtnMarcarTudoClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmSelecionarClientes: TFrmSelecionarClientes;

implementation

uses FPrincipal, FRelEtiquetaCliente, Global, Biblioteca,
   FEtiquetaClienteSelecao;

{$R *.dfm}

procedure TFrmSelecionarClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;
end;

procedure TFrmSelecionarClientes.RDSelecaoClick(Sender: TObject);
begin
   EditPesquisa.Editlabel.caption := RDSelecao.Items.Strings
     [RDSelecao.ItemIndex];

   ScriptSQL := ' SELECT *  FROM CAD_CLIENTES ';
   ScriptSQL := ScriptSQL + ' WHERE ';

   If RDSelecao.ItemIndex = 0 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(NOME) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY NOME ';
   End;

   If RDSelecao.ItemIndex = 1 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(CPF_CNPJ) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY CPF_CNPJ ';
   End;

   If RDSelecao.ItemIndex = 2 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(VENDEDOR) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY VENDEDOR ';
   End;

   If RDSelecao.ItemIndex = 3 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(NOMECIDADE) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY NOMECIDADE, NOME ';
   End;

   If RDSelecao.ItemIndex = 4 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(UF) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY UF, NOME ';
   End;


   EditPesquisa.SetFocus;
   EditPesquisaChange(Sender);

end;

procedure TFrmSelecionarClientes.EditPesquisaChange(Sender: TObject);
begin
   DB_Clientes.close;
   DB_Clientes.SQL.Clear;
   DB_Clientes.SQL.Add(ScriptSQL);

   if not (RDSelecao.ItemIndex in [2,4]) then
      DB_Clientes.ParamByName('Procurar').AsString :=  '%' + EditPesquisa.Text + '%'
   else
      DB_Clientes.ParamByName('Procurar').AsString :=EditPesquisa.Text;

   DB_Clientes.Open;

end;

procedure TFrmSelecionarClientes.FormShow(Sender: TObject);
begin
   RDSelecaoClick(Sender);
   EditPesquisaChange(Sender);
   EditPesquisa.SetFocus;

end;

procedure TFrmSelecionarClientes.BtnDesmarcarTudoClick(Sender: TObject);
begin

   DB_ClientesUpdate.close;
   DB_ClientesUpdate.SQL.Clear;
   DB_ClientesUpdate.SQL.Add('UPDATE  CAD_CLIENTES SET ETIQUETA=' + QuotedStr('N') );
   DB_ClientesUpdate.ExecSQL;

   DB_Clientes.Refresh;

end;

procedure TFrmSelecionarClientes.BtnMarcarTudoClick(Sender: TObject);
begin

   DB_ClientesUpdate.close;
   DB_ClientesUpdate.SQL.Clear;
   DB_ClientesUpdate.SQL.Add('UPDATE  CAD_CLIENTES SET ETIQUETA=' + QuotedStr('S') );
   DB_ClientesUpdate.SQL.Add(' WHERE ');


   If RDSelecao.ItemIndex = 2 Then
   Begin
      DB_ClientesUpdate.SQL.Add(' UPPER(VENDEDOR)=:Procurar');
   End;

   If RDSelecao.ItemIndex = 3 Then
   Begin
      DB_ClientesUpdate.SQL.Add(' UPPER(NOMECIDADE)=:Procurar');
   End;

   If RDSelecao.ItemIndex = 4 Then
   Begin
      DB_ClientesUpdate.SQL.Add(' UPPER(UF)=:Procurar ');
   End;

   if not (RDSelecao.ItemIndex in [2,4]) then
      DB_ClientesUpdate.ParamByName('Procurar').AsString :=  '%' + EditPesquisa.Text + '%'
   else
      DB_ClientesUpdate.ParamByName('Procurar').AsString :=EditPesquisa.Text;

   DB_ClientesUpdate.ExecSQL;
   DB_Clientes.Refresh;

end;

procedure TFrmSelecionarClientes.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmSelecionarClientes.Btn_ImprimirClick(Sender: TObject);
begin
   FrmEtiquetaClienteSelecao := TFrmEtiquetaClienteSelecao.create(self);

end;

end.
