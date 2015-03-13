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

unit FHistoricoFuncionario;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls,
   ImgList, Mask, Db, Menus,  
          ISFEdit,
   ISFEditbtn, ISFdbEditbtn, uEstSearchDialogZeos, IDBEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmHistoricoFuncionario = class(TForm)
      Panel1: TPanel;
      BtnSair: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnNovo: TBitBtn;
      BtnExcluir: TBitBtn;
      PaginaHistorico: TPageControl;
      Tab_Principal: TTabSheet;
      Tab_Detalhes: TTabSheet;
      GridCadastrados: TDBGrid;
      Label2: TLabel;
      GBox2: TGroupBox;
      Label8: TLabel;
      Label11: TLabel;
      EditData: TDBEdit;
      EditValor: TDBEdit;
      BtnLocalizar: TBitBtn;
      Label13: TLabel;
      DBEdit6: TDBEdit;
      Label19: TLabel;
      EditPlano: TDBEdit;
      EditNome: TDBEdit;
      db_Departamento:  TFDQuery;
      PainelDicas: TPanel;
      Label9: TLabel;
      DBEdit4: TDBEdit;
      db_CaixaFuncionarios: TFDQuery;
      ds_CaixaFuncionarios: TDataSource;
      db_CaixaFuncionariosCODIGO: TIntegerField;
      db_CaixaFuncionariosFUNCIONARIO: TStringField;
      db_CaixaFuncionariosDATA: TDateField;
      db_CaixaFuncionariosVENCIMENTO: TDateField;
      db_CaixaFuncionariosDOCUMENTO: TStringField;
      db_CaixaFuncionariosTIPO: TStringField;
      db_CaixaFuncionariosDEPARTAMENTO: TStringField;
      db_CaixaFuncionariosHISTORICO: TStringField;
      db_CaixaFuncionariosVALOR: TBCDField;
      db_Vendedores: TFDQuery;
      Label1: TLabel;
      DBComboBox1: TDBComboBox;
      db_CaixaFuncionariosQUITADO: TStringField;
      db_CaixaFuncionariosNomeFuncionario: TStringField;
      db_CaixaFuncionariosNomeCentroCusto: TStringField;
      db_IncluirSequencia: TFDQuery;
      db_ChecarSequencia: TFDQuery;
      EditCodevendedor: TIDBEditDialog;
      EditVendedor1: TEdit;
      procedure BtnSairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure GridCadastradosDblClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnNovoClick(Sender: TObject);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure DbgridParcelasKeyPress(Sender: TObject; var Key: Char);
      procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
      procedure GridCadastradosCellClick(Column: TColumn);
      procedure Tab_DetalhesShow(Sender: TObject);
      procedure GridCadastradosDrawColumnCell(Sender: TObject;
        const Rect: TRect; DataCol: Integer; Column: TColumn;
        State: TGridDrawState);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmHistoricoFuncionario: TFrmHistoricoFuncionario;
   aPagar, aLancado, aPago: Real;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.dfm}

procedure TFrmHistoricoFuncionario.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmHistoricoFuncionario.FormCreate(Sender: TObject);
begin
   // Essa rotina é para suprir uma deficiencia de projeto
   // na tabela SEQUECICAS não existia o registri "FLL"
   // que identifica o SEQUENCIADOR de códigos para filiais.
   // As funções abaixo checa se exite. Se não existir, acrescenta.
   db_ChecarSequencia.Open;
   If db_ChecarSequencia.RecordCount < 1 then
   // incluir o sequenciador de códigos
   begin
      db_IncluirSequencia.ExecSQL;
   end;

   aPagar := 0;
   aLancado := 0;

   // PaginaHistorico.Pages[1].TabVisible:=false; {}
   PaginaHistorico.ActivePage := Tab_Principal;

   db_CaixaFuncionarios.Open;

   db_Vendedores.Open;

End;

procedure TFrmHistoricoFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_CaixaFuncionarios.Open;
   db_Departamento.Open;
   db_Vendedores.Open;

   Action := Cafree;
end;

procedure TFrmHistoricoFuncionario.GridCadastradosDblClick(Sender: TObject);
begin
   PaginaHistorico.ActivePage := Tab_Detalhes;
end;

procedure TFrmHistoricoFuncionario.BtnCancelarClick(Sender: TObject);
begin
   db_CaixaFuncionarios.Cancel;
   PaginaHistorico.ActivePage := Tab_Principal;
end;

procedure TFrmHistoricoFuncionario.BtnNovoClick(Sender: TObject);
begin

   // PaginaHistorico.Pages[1].TabVisible:=True; {}
   PaginaHistorico.ActivePage := Tab_Detalhes;

   db_CaixaFuncionarios.Append;
   db_CaixaFuncionarios.FieldByName('DATA').AsDateTime := Date;
   db_CaixaFuncionarios.FieldByName('QUITADO').AsString := 'N';

end;

procedure TFrmHistoricoFuncionario.BtnSalvarClick(Sender: TObject);
begin

   if (db_CaixaFuncionarios.State in [dsedit, dsinsert]) then
   Begin
      db_CaixaFuncionarios.Post;
   End;

   // Proteger;

end;

procedure TFrmHistoricoFuncionario.BtnExcluirClick(Sender: TObject);
Begin

   If not db_CaixaFuncionarios.IsEmpty then
   begin
      IF Pergunta('Deseja excluir este registro?') = TRUE THEN
      BEGIN
         db_CaixaFuncionarios.Delete;
      END;
   End
   Else
   Begin
      Erro('Não há dados para excluir.');
   End;

end;

procedure TFrmHistoricoFuncionario.DbgridParcelasKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmHistoricoFuncionario.DBGrid4KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmHistoricoFuncionario.GridCadastradosCellClick(Column: TColumn);
begin
   // Proteger;
end;

procedure TFrmHistoricoFuncionario.Tab_DetalhesShow(Sender: TObject);
begin
   Try
      EditCodevendedor.SetFocus;
   Except
   End;
end;

procedure TFrmHistoricoFuncionario.GridCadastradosDrawColumnCell
  (Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

   (* DBGrid zebrado *)
   if not odd(db_CaixaFuncionarios.RecNo) then // se for ímpar
      if not(gdSelected in State) then // se a célula não está selecionada
      begin
         GridCadastrados.Canvas.Brush.Color := $00FFEFDF;
         // define uma cor de fundo
         GridCadastrados.Canvas.FillRect(Rect); // pinta a célula
         GridCadastrados.DefaultDrawDataCell(Rect, Column.Field, State);
         // pinta o texto padrão
      end;

end;

procedure TFrmHistoricoFuncionario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_ESCAPE then
   Begin
      BtnSair.Click;
   End;

end;

End.
