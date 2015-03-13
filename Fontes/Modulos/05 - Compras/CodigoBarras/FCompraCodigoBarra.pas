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


unit FCompraCodigoBarra;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls,   db, Buttons, jpeg, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos;

type
   TFrmCompraCodigoBarra = class(TForm)
      Panel3: TPanel;
      lbl_atalhos: TLabel;
      Edit_produto: TLabeledEdit;
      PainelMsg: TPanel;
      EditQtde: TLabeledEdit;
      Panel1: TPanel;
    dbProcurarFichaTecnica: TIDBEditDialog;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure Edit_produtoKeyPress(Sender: TObject; var Key: Char);
      procedure Edit_produtoKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure EditQtdeKeyPress(Sender: TObject; var Key: Char);
      procedure EditQtdeExit(Sender: TObject);
   private
      { Private declarations }

      // utilizado para LEITORES DE CODIGO DE BARRAS
      ViaLeitor: Boolean;

   public
      { Public declarations }
   end;

var
   FrmCompraCodigoBarra: TFrmCompraCodigoBarra;

implementation

uses Biblioteca, Global, FCompras, FProdutos;

{$R *.dfm}

procedure TFrmCompraCodigoBarra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
   Begin
      close;
   End;

   // Ajuda
   If Key = VK_F1 then
   Begin

      MostraAjuda('Código de Barras',
        'Passe o a luz do Leitor no código de barras do produto ou digite o código manualmente e tecle ENTER. '
        + #13 + #10 + '' + #13 + #10 +
        '[F3  - Acrescentar]  - Adiciona produto quando você informa o Código' +
        #13 + #10 +
        '[F4  - Diminuir]     - Diminui produto quando você informa o Código' +
        #13 + #10 +
        '[F5  - Automático    - Entrada via Leitor de Código de Barras  ' + #13
        + #10 + '[F6  - Manual        - Entrada manual de produtos (sem utilização de Leitor de Código de Barras)  '
        + #13 + #10 + '[F8  - Localizar]    - Localizar produto' + #13 + #10 +
        '[ESC - Sair]         - Sair do módulo código de barras ');

   End;

   // Acrescentar
   If Key = VK_F3 then
   Begin
      Achar[99] := '+';
      PainelMsg.Caption := 'Acrescentar';
      PainelMsg.Color := clWhite;
      PainelMsg.Font.Color := clRed;
      Update;
   End;

   // Dimunir
   If Key = VK_F4 then
   Begin
      Achar[99] := '-';
      PainelMsg.Color := clRed;
      PainelMsg.Font.Color := clWhite;
      PainelMsg.Caption := 'Diminuir';
      Update;
   End;

   // Lançamento automático
   If Key = VK_F5 then
   Begin
      EditQtde.Visible := false;
      ViaLeitor := True;
      EditQtde.text := '0';
   End;

   // Lançamento manual
   If Key = VK_F6 then
   Begin
      EditQtde.Visible := True;
      ViaLeitor := false;
      EditQtde.text := '0';
   End;

   If Key = vk_f9 then
   begin
      FrmProdutos := TFrmProdutos.create(self);
      FrmProdutos.Showmodal;
   end;

end;

procedure TFrmCompraCodigoBarra.Edit_produtoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   IF Key = VK_F8 Then
   begin
      if dbProcurarFichaTecnica.Execute then
         Edit_produto.text := dbProcurarFichaTecnica.ResultFieldAsString('REFERENCIA');
   end;

end;

procedure TFrmCompraCodigoBarra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   // checar se o produto existe
   wInteger[0] := 0; // Quantidade disponivel do tamanho U
   wInteger[1] := 0; // Quantidade disponivel do tamanho P
   wInteger[2] := 0; // Quantidade disponivel do tamanho M
   wInteger[3] := 0; // Quantidade disponivel do tamanho G
   wInteger[4] := 0; // Quantidade disponivel do tamanho GG

   Action := cafree;
end;

procedure TFrmCompraCodigoBarra.FormCreate(Sender: TObject);
begin

   Edit_produto.text := '';
   Achar[99] := '+'; // irá adicionar o item na lista
   ViaLeitor := False;

   lbl_atalhos.Caption :=
     '<F1>-Ajuda     -     <F5>-Automático     -     <F6>-Manual     -     <ESC>-Sair'
     + #13 + #10 +
     '<F3>-Acrescentar     <F4>-Diminuir     <F9> Cadastro de Produtos'

end;

procedure TFrmCompraCodigoBarra.Edit_produtoKeyPress(Sender: TObject;
  var Key: Char);
begin

   // codigo de barras
   if Key = #13 then
   begin

      Edit_produto.text := alltrim(Edit_produto.text);
      Edit_produto.text := UpperCase(Edit_produto.text);
      wTexto[99] := UpperCase(Edit_produto.text);

      if empty(Edit_produto.text) then
         exit;

      FrmCompras.DB_Estoque.close;
      FrmCompras.DB_Estoque.ParamByName('REFERENCIA').AsString :=  Edit_produto.text;
      FrmCompras.DB_Estoque.open;

      if FrmCompras.DB_Estoque.recordcount < 1 then
      begin
         BeepCritica;
         Informar('Produto ' + Edit_produto.text + ' não cadastrado');
         Edit_produto.setfocus;
         exit;
      end;

      FrmCompras.DB_Estoque.First;

      // checar se exite
      if FrmCompras.db_ComprasItens.Locate('PRODUTO', wTexto[99], [])
        = True then
      begin
         FrmCompras.db_ComprasItens.Edit;
      end
      else
      begin
         FrmCompras.db_ComprasItens.Append;
         FrmCompras.db_ComprasItens.FieldByName('PRODUTO').AsString :=    Edit_produto.text;
         FrmCompras.db_ComprasItens.FieldByName('DESCRICAO').AsString :=  FrmCompras.DB_Estoque.FieldByName('DESCRICAO').AsString;
         FrmCompras.db_ComprasItens.FieldByName('UND').AsString :=        FrmCompras.DB_Estoque.FieldByName('UNIDADE').AsString;
         FrmCompras.db_ComprasItens.FieldByName('ICMS').AsFloat :=        FrmCompras.DB_Estoque.FieldByName('ICMS').AsFloat;
         FrmCompras.db_ComprasItens.FieldByName('IPI').AsFloat :=         FrmCompras.DB_Estoque.FieldByName('IPI').AsFloat;
         FrmCompras.db_ComprasItens.FieldByName('VL_UNITARIO').AsFloat := FrmCompras.DB_Estoque.FieldByName('PRC_CUSTO').AsFloat;
      end;

      // se for informado via leitor
      if ViaLeitor then
      begin

         // irá adicionar o item na lista
         If Achar[99] = '+' then
         begin
            FrmCompras.db_ComprasItens.FieldByName('PRODUTO').AsString :=
              wTexto[99];
            FrmCompras.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat :=
              FrmCompras.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat + 1;
         End;

         If Achar[99] = '-' then
         begin
            FrmCompras.db_ComprasItens.FieldByName('PRODUTO').AsString :=
              wTexto[99];
            FrmCompras.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat :=
              FrmCompras.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat - 1;

            if FrmCompras.db_ComprasItens.FieldByName('QUANTIDADE')
              .AsFloat < 0 then
               FrmCompras.db_ComprasItens.FieldByName('QUANTIDADE')
                 .AsFloat := 0;
         End;

         // salvar
         If (FrmCompras.db_ComprasItens.State in [dsedit, dsinsert]) then
         Begin
            FrmCompras.db_ComprasItens.post;
         end;

         Edit_produto.text := '';
         FrmCompras.DB_Estoque.close;

         Edit_produto.setfocus;

      end { if ViaLeitor then... }
      else
      begin
         EditQtde.setfocus;
      end;

   end;

end;

procedure TFrmCompraCodigoBarra.EditQtdeKeyPress(Sender: TObject;
  var Key: Char);
begin

   if Key = #13 then
   begin

      // testar se é valor valido
      if TestNumero(EditQtde.text) = false then
      begin
         Informar('O campo quantidade não é um valor válido');
         EditQtde.setfocus;
      end;

      // irá adicionar o item na lista
      If Achar[99] = '+' then
      begin
         FrmCompras.db_ComprasItens.FieldByName('PRODUTO').AsString :=
           wTexto[99];
         FrmCompras.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat :=
           FrmCompras.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat +
           StrToFloat(EditQtde.text);
      End;

      If Achar[99] = '-' then
      begin
         FrmCompras.db_ComprasItens.FieldByName('PRODUTO').AsString :=
           wTexto[99];
         FrmCompras.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat :=
           FrmCompras.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat -
           StrToFloat(EditQtde.text);

         if FrmCompras.db_ComprasItens.FieldByName('QUANTIDADE')
           .AsFloat < 0 then
            FrmCompras.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat := 0;
      End;

      // salvar
      If (FrmCompras.db_ComprasItens.State in [dsedit, dsinsert]) then
      Begin
         FrmCompras.db_ComprasItens.post;
      end;

      Edit_produto.text := '';
      EditQtde.text := '';
      FrmCompras.DB_Estoque.close;

   End;

end;

procedure TFrmCompraCodigoBarra.EditQtdeExit(Sender: TObject);
begin

   if TestNumero(EditQtde.text) = false then
      EditQtde.text := '0';

   if empty(EditQtde.text) or (StrToFloat(EditQtde.text) < 0) then
      EditQtde.text := '0';

end;

end.
