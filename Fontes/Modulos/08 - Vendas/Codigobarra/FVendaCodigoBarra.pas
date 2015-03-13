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

unit FVendaCodigoBarra;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls,   db, Buttons, jpeg, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos;

type
   TFrmVendaCodigoBarra = class(TForm)
      Panel3: TPanel;
      Label18: TLabel;
      PainelMsg: TPanel;
      PainelDicas: TPanel;
      Image2: TImage;
      EditCodigo: TLabeledEdit;
      EditQtde: TLabeledEdit;
    dbProcurarFichaTecnica: TIDBEditDialog;
      procedure EditQtdeKeyPress(Sender: TObject; var Key: Char);
      procedure EditQtdeExit(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
      procedure FormActivate(Sender: TObject);
      procedure EditCodigoKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure EditCodigoEnter(Sender: TObject);
   private
      { Private declarations }

      ViaLeitor: Boolean;

   public
      { Public declarations }
   end;

var
   FrmVendaCodigoBarra: TFrmVendaCodigoBarra;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FVendaExpressa, Classe.Usuarios;

{$R *.dfm}

procedure TFrmVendaCodigoBarra.FormKeyDown(Sender: TObject; var Key: Word;
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

end;

procedure TFrmVendaCodigoBarra.EditCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_F8 Then
   begin
      if dbProcurarFichaTecnica.Execute then
         EditCodigo.text := dbProcurarFichaTecnica.ResultFieldAsString('REFERENCIA');
   end;


end;

procedure TFrmVendaCodigoBarra.FormClose(Sender: TObject;
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

procedure TFrmVendaCodigoBarra.FormCreate(Sender: TObject);
begin

   ViaLeitor := True;
   EditCodigo.text := '';
   Achar[99] := '+'; // irá adicionar o item na lista
   EditQtde.Visible := false;
   EditQtde.text := '0';

end;

procedure TFrmVendaCodigoBarra.EditCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin

   // db_VendasItens.FieldByName('QUANTIDADE').AsFloat;
   // codigo de barras
   If Key = #13 then
   Begin


      wTexto[99] := '';
      wTexto[98] := '';

      // codigo do produto
      wTexto[99] := Uppercase(alltrim(EditCodigo.text));

      EditCodigo.text := '';
      // checar se o produto existe
      wInteger[0] := 0; // Quantidade disponivel

      {
      FrmVendaExpressa.db_estoque.close;
      FrmVendaExpressa.db_estoque.ParamByName('REFERENCIA').AsString :=        wTexto[99];
      FrmVendaExpressa.db_estoque.Open;

      if FrmVendaExpressa.db_estoque.RecordCount < 1 then
      begin
         Erro('Produto não cadastrado no estoque');
         EditCodigo.SetFocus;
         FrmVendaExpressa.db_estoque.close;
         Exit;
      End;
      FrmVendaExpressa.db_estoque.first;

      // checar as quantidades
      wInteger[0] := FrmVendaExpressa.db_estoque.FieldByName('ESTOQUESALDO').AsInteger;
      }

      // se já existir, adicionar, caso contrário, inserir
      If FrmVendaExpressa.db_VendasItens.Locate('PRODUTO', wTexto[99], [])
        = True then
      begin
         FrmVendaExpressa.db_VendasItens.Edit;
      end
      Else
      begin
         FrmVendaExpressa.db_VendasItens.Append;
      End;

      // se for informado via leitor
      if ViaLeitor then
      begin

         // irá adicionar o item na lista
         If Achar[99] = '+' then
         begin
            FrmVendaExpressa.db_VendasItens.FieldByName('PRODUTO').AsString :=
              wTexto[99];
            FrmVendaExpressa.db_VendasItens.FieldByName('QUANTIDADE').AsInteger
              := FrmVendaExpressa.db_VendasItens.FieldByName('QUANTIDADE')
              .AsInteger + 1;
         End;

         If Achar[99] = '-' then
         begin
            FrmVendaExpressa.db_VendasItens.FieldByName('PRODUTO').AsString :=
              wTexto[99];
            FrmVendaExpressa.db_VendasItens.FieldByName('QUANTIDADE').AsInteger
              := FrmVendaExpressa.db_VendasItens.FieldByName('QUANTIDADE')
              .AsInteger - 1;

            if FrmVendaExpressa.db_VendasItens.FieldByName('QUANTIDADE')
              .AsInteger < 0 then
               FrmVendaExpressa.db_VendasItens.FieldByName('QUANTIDADE')
                 .AsInteger := 0;
         End;

         // salvar
         If (FrmVendaExpressa.db_VendasItens.State in [dsedit, dsinsert]) then
         Begin
            FrmVendaExpressa.db_VendasItens.post;
         end;

         EditCodigo.text := '';
         //FrmVendaExpressa.db_estoque.close;

      end { if ViaLeitor then... }
      else
      begin
         EditQtde.SetFocus;
      end;

   End;

end;

procedure TFrmVendaCodigoBarra.EditQtdeExit(Sender: TObject);
begin

   if TestNumero(EditQtde.text) = false then
      EditQtde.text := '0';

   if empty(EditQtde.text) or (StrToInt(EditQtde.text) < 0) then
      EditQtde.text := '0';

end;

procedure TFrmVendaCodigoBarra.EditQtdeKeyPress(Sender: TObject; var Key: Char);
begin

   If Key = #13 then
   begin
      // testar se é valor valido
      if TestNumero(EditQtde.text) = false then
      begin
         Informar('O campo quantidade não é um valor válido');
         EditQtde.SetFocus;
      end;

      // irá adicionar o item na lista
      If Achar[99] = '+' then
      begin
         {
           FrmCompras.ADO_COMPRAS_ITENS.FieldByName('PRODUTO').AsString:=wTexto[99];
           FrmCompras.ADO_COMPRAS_ITENS.FieldByName('QUANTIDADE').AsInteger:=
           FrmCompras.ADO_COMPRAS_ITENS.FieldByName('QUANTIDADE').AsInteger+StrToInt(EditQtde.text);
         }

         FrmVendaExpressa.db_VendasItens.FieldByName('PRODUTO').AsString :=
           wTexto[99];
         FrmVendaExpressa.db_VendasItens.FieldByName('QUANTIDADE').AsInteger :=
           FrmVendaExpressa.db_VendasItens.FieldByName('QUANTIDADE').AsInteger +
           +StrToInt(EditQtde.text);

      End;

      If Achar[99] = '-' then
      begin
         {
           FrmCompras.ADO_COMPRAS_ITENS.FieldByName('PRODUTO').AsString:=wTexto[99];
           FrmCompras.ADO_COMPRAS_ITENS.FieldByName('QUANTIDADE').AsInteger:=
           FrmCompras.ADO_COMPRAS_ITENS.FieldByName('QUANTIDADE').AsInteger-StrToInt(EditQtde.text);

           if FrmCompras.ADO_COMPRAS_ITENS.FieldByName('QUANTIDADE').AsInteger<0 then
           FrmCompras.ADO_COMPRAS_ITENS.FieldByName('QUANTIDADE').AsInteger:=0;
         }

         FrmVendaExpressa.db_VendasItens.FieldByName('PRODUTO').AsString :=
           wTexto[99];
         FrmVendaExpressa.db_VendasItens.FieldByName('QUANTIDADE').AsInteger :=
           FrmVendaExpressa.db_VendasItens.FieldByName('QUANTIDADE').AsInteger -
           StrToInt(EditQtde.text);

         if FrmVendaExpressa.db_VendasItens.FieldByName('QUANTIDADE')
           .AsInteger < 0 then
            FrmVendaExpressa.db_VendasItens.FieldByName('QUANTIDADE')
              .AsInteger := 0;

      End;

      // salvar
      If (FrmVendaExpressa.db_VendasItens.State in [dsedit, dsinsert]) then
      Begin
         FrmVendaExpressa.db_VendasItens.post;
      end;

      EditCodigo.text := '';
      EditQtde.text := '';

   End;

end;

procedure TFrmVendaCodigoBarra.FormActivate(Sender: TObject);
begin
   Top := FrmVendaExpressa.Top;

end;

procedure TFrmVendaCodigoBarra.EditCodigoEnter(Sender: TObject);
begin
   PainelDicas.Caption :=
     'Informe o Código do produto e tecle ENTER. F8 também pesquisa produtos';

end;

end.
