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

unit FCartaEmitir;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Buttons, DB,    
   ComCtrls, DBCtrls, Mask, Grids, DBGrids, 
   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,  
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmCartaEmitir = class(TForm)
      Panel1: TPanel;
      Panel2: TPanel;
      Panel4: TPanel;
      BtnSair: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnNovo: TBitBtn;
      BtnProcurar: TBitBtn;
      db_EmitirCartas: TFDQuery;
      db_CartaCadastros: TFDQuery;
      ds_EmitirCartas: TDataSource;
      db_EmitirCartasCODIGO: TIntegerField;
      db_EmitirCartasCARTA: TIntegerField;
      db_EmitirCartasDATA: TDateField;
      Label1: TLabel;
      Label2: TLabel;
      DBEdit1: TDBEdit;
      DBEdit2: TDBEdit;
      db_clientes: TFDQuery;
      Label3: TLabel;
      DBEdit3: TDBEdit;
      DBEdit4: TDBEdit;
      BitBtn1: TBitBtn;
      DBNavigator1: TDBNavigator;
      ds_cliente: TDataSource;
      DS_CartaCadastros: TDataSource;
      db_Inadimplencia: TFDQuery;
      SpeedButton1: TSpeedButton;
      bbtnOk: TBitBtn;
      DbRichCarta: TDBRichEdit;
      db_EmitirCartasTEXTO: TStringField;
      EditEmail: TLabeledEdit;
      BitBtn2: TBitBtn;
      db_EmitirCartasCLIENTE: TIntegerField;
      db_EmitirCartasHORA: TTimeField;
      EditCliente: TIDBEditDialog;
      EditNomeCliente: TEdit;
      procedure FormCreate(Sender: TObject);
      procedure db_EmitirCartasCLIENTEChange(Sender: TField);
      procedure db_EmitirCartasCARTAChange(Sender: TField);
      procedure BitBtn1Click(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnNovoClick(Sender: TObject);
      procedure db_clientesBeforeOpen(DataSet: TDataSet);
      procedure db_EmitirCartasNewRecord(DataSet: TDataSet);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure SpeedButton1Click(Sender: TObject);
      procedure bbtnOkClick(Sender: TObject);
      procedure EditClienteChange(Sender: TObject);
      procedure BitBtn2Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCartaEmitir: TFrmCartaEmitir;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global,  FBaseDados,
  FCartaEmitirImprimir;

{$R *.dfm}

procedure TFrmCartaEmitir.bbtnOkClick(Sender: TObject);
begin
   {
   FrmEmail_Servico := TFrmEmail_Servico.create(self);
   FrmEmail_Servico.edtTo.Text := UpperCase(db_clientes.FieldByName('email')
     .AsString);
   FrmEmail_Servico.edtCC.Text :=
     LowerCase(BaseDados.db_Parametros.FieldByName('E_MAIL').AsString);
   // FrmEmail_Servico.edtSubject.Text  :='NOTIFICAÇÃO DE COBRANÇA';

   FrmEmail_Servico.edtSubject.Text := UpperCase(Trim(EditEmail.Text));

   FrmEmail_Servico.Memo1.Clear;
   FrmEmail_Servico.Memo1.Text := DbRichCarta.Text;
   FrmEmail_Servico.ShowModal;
   }

end;

procedure TFrmCartaEmitir.BitBtn1Click(Sender: TObject);

begin

   if Empty(db_EmitirCartas.FieldByName('CLIENTE').AsString) or
     Empty(db_clientes.FieldByName('NOME').AsString) then
   begin
      BeepCritica;
      Informar(' Informe um cliente que esteja inadimplente  ');
      Exit;
   end;

   if Empty(db_EmitirCartas.FieldByName('CARTA').AsString) or
     Empty(db_CartaCadastros.FieldByName('NOME').AsString) then
   begin
      BeepCritica;
      Informar(' Informe uma carta que esteja cadastrada no sistema ');
      Exit;
   end;

   TextoLongo[0] := ''; // Intepretar CAMPOS da carta
   TextoLongo[1] := ''; // Montar colunas
   TextoLongo[2] := ''; // Montar Lista de Faturas

   TextoLongo[0] := db_CartaCadastros.FieldByName('TEXTO').AsString;

   // Traduzir Todos o Texto

   // TRADUZIR NOME DA EMPRESA
   TextoLongo[0] := SubstituirCampoTexto(TextoLongo[0], '[%RAZAO-EMPRESA%]',
     BaseDados.db_Parametros.FieldByName('RAZAO_SOCIAL').AsString);

   // TRADUZIR NOME DO CLIENTE
   TextoLongo[0] := SubstituirCampoTexto(TextoLongo[0], '[%NOME-DO-CLIENTE%]',
     db_clientes.FieldByName('NOME').AsString);

   // TRADUZIR E-MAIL DA EMPRESA CREDORA
   TextoLongo[0] := SubstituirCampoTexto(TextoLongo[0], '[%MAIL-EMPRESA%]',
     BaseDados.db_Parametros.FieldByName('E_MAIL').AsString);

   // TRADUZIR SITE DA EMPRESA CREDORA
   TextoLongo[0] := SubstituirCampoTexto(TextoLongo[0], '[%SITE-EMPRESA%]',
     BaseDados.db_Parametros.FieldByName('SITE').AsString);

   // TRADUZIR CIDADE DA EMPRESA CREDORA
   TextoLongo[0] := SubstituirCampoTexto(TextoLongo[0], '[%CIDADE-EMPRESA%]',
     BaseDados.db_Parametros.FieldByName('CIDADE').AsString);

   // TRADUZIR UF (ESTADO) DA EMPRESA CREDORA
   TextoLongo[0] := SubstituirCampoTexto(TextoLongo[0], '[%UF-EMPRESA%]',
     BaseDados.db_Parametros.FieldByName('UF').AsString);

   TextoLongo[1] :=
     '---------------------------------------------------------------------------------------------------'
     + #13 + #10 +
     'DOCUMENTO       DATA:        VENCIMENTO:      DIAS DE ATRASO:         VALOR:     VALOR COM JUROS:  '
     + #13 + #10 +
     '---------------------------------------------------------------------------------------------------';

   wFloat[0] := 0;
   wFloat[1] := 0;

   db_Inadimplencia.close;
   db_Inadimplencia.ParamByName('CLIENTE').AsString :=
     db_EmitirCartas.FieldByName('CLIENTE').AsString;
   db_Inadimplencia.open;

   if db_Inadimplencia.RecordCount <= 0 then
   begin
      BeepCritica;
      Informar('Erro ao gerar carta... base vazia');
      Exit;
   end;

   db_Inadimplencia.First;
   while not db_Inadimplencia.Eof do
   begin

      wFloat[0] := wFloat[0] + db_Inadimplencia.FieldByName('VALOR').AsFloat;
      wFloat[1] := wFloat[1] + db_Inadimplencia.FieldByName
        ('VALOR_TOTAL').AsFloat;

      TextoLongo[2] := TextoLongo[2] +
        CampoTexto(db_Inadimplencia.FieldByName('DOCUMENTO').AsString, 16) +
        CampoTexto(db_Inadimplencia.FieldByName('DATA').AsString, 13) +
        CampoTexto(db_Inadimplencia.FieldByName('VENCIMENTO').AsString, 20) +
        CampoInteger(db_Inadimplencia.FieldByName('DIAS_ATRASO').AsInteger, 05)
        + StringOfChar(' ', 10) +
        CampoValor(db_Inadimplencia.FieldByName('VALOR').AsFloat, 12) +
        StringOfChar(' ', 07) +
        CampoValor(db_Inadimplencia.FieldByName('VALOR_TOTAL').AsFloat, 12) +
        #13 + #10;

      db_Inadimplencia.next;
   end;

   // TRADUZIR COLUNAS COM DADOS DAS FATURAS
   TextoLongo[0] := SubstituirCampoTexto(TextoLongo[0], '[%TITULO-FATURAS%]',
     TextoLongo[1]);

   // TRADUZIR COLUNAS COM DADOS DAS FATURAS
   TextoLongo[0] := SubstituirCampoTexto(TextoLongo[0], '[%DADOS-FATURAS%]',
     TextoLongo[2]);

   // TRADUZIR CAMPO VALOR
   TextoLongo[0] := SubstituirCampoTexto(TextoLongo[0],
     '[%TOTAL-FATURAS-VALORES%]', CampoValor(wFloat[0], 16));

   // TRADUZIR CAMPO VALOR COM JUROS
   TextoLongo[0] := SubstituirCampoTexto(TextoLongo[0],
     '[%TOTAL-FATURAS-JUROS%]', CampoValor(wFloat[1], 16));

   db_Inadimplencia.close; // Como não precisará mais,~então feche.

   If not(db_EmitirCartas.state in [dsEdit]) then
      db_EmitirCartas.Edit;

   db_EmitirCartas.FieldByName('TEXTO').AsString := '';
   db_EmitirCartas.FieldByName('TEXTO').AsString := TextoLongo[0];

end;

procedure TFrmCartaEmitir.BitBtn2Click(Sender: TObject);
begin
   BtnSalvarClick(Sender);

   FrmCartaEmitirImprimir := TFrmCartaEmitirImprimir.create(self);

end;

procedure TFrmCartaEmitir.BtnCancelarClick(Sender: TObject);
begin
   db_EmitirCartas.Cancel;

end;

procedure TFrmCartaEmitir.BtnExcluirClick(Sender: TObject);
begin

   If db_EmitirCartas.IsEmpty then
   Begin
      BeepCritica;
      Informar('Não há dados para excluir');
      Exit;
   end;

   db_EmitirCartas.Delete;

end;

procedure TFrmCartaEmitir.BtnNovoClick(Sender: TObject);
begin

   db_EmitirCartas.Append;

   EditCliente.SetFocus;
end;

procedure TFrmCartaEmitir.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCartaEmitir.BtnSalvarClick(Sender: TObject);
begin

   If (db_EmitirCartas.state in [dsEdit, dsInsert]) then
   Begin
      db_EmitirCartas.Post;
   End;

end;

procedure TFrmCartaEmitir.db_clientesBeforeOpen(DataSet: TDataSet);
begin

   db_clientes.ParamByName('CODIGO').AsInteger := StrToInt(EditCliente.Text);

end;

procedure TFrmCartaEmitir.db_EmitirCartasCARTAChange(Sender: TField);
begin
   db_CartaCadastros.close;
   db_CartaCadastros.open;
end;

procedure TFrmCartaEmitir.db_EmitirCartasCLIENTEChange(Sender: TField);
begin
   db_clientes.close;
   db_clientes.open;

end;

procedure TFrmCartaEmitir.db_EmitirCartasNewRecord(DataSet: TDataSet);
begin
   db_EmitirCartas.FieldByName('DATA').AsDateTime := Date;
   db_EmitirCartas.FieldByName('HORA').AsDateTime := Time;
end;

procedure TFrmCartaEmitir.EditClienteChange(Sender: TObject);
begin
   db_clientes.close;
   db_clientes.open;
end;

procedure TFrmCartaEmitir.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   db_EmitirCartas.close;
   db_clientes.close;
   db_CartaCadastros.close;

   Action := Cafree;

end;

procedure TFrmCartaEmitir.FormCreate(Sender: TObject);
begin

   db_EmitirCartas.open;
   db_clientes.open;
   db_CartaCadastros.open;

   EditEmail.Text := 'NOTIFICAÇÃO DE COBRANÇA [' +
     UpperCase(BaseDados.db_Parametros.FieldByName('NOMEFANTASIA')
     .AsString) + ']';

end;

procedure TFrmCartaEmitir.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmCartaEmitir.SpeedButton1Click(Sender: TObject);
begin
   aviso('Esta Carta de Cobrança possui: ' + IntToStr(length(DbRichCarta.Text))
     + ' caracteres contando com espaços. ');

end;

end.
