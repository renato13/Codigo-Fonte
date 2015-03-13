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

unit FCartaEmitirGeral;

interface

uses
   Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Buttons, DB,    
   ComCtrls, DBCtrls, Mask, Grids, DBGrids,    FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmCartaEmitirGeral = class(TForm)
      Panel1: TPanel;
      Panel2: TPanel;
      Panel4: TPanel;
      BtnSair: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnProcurar: TBitBtn;
      db_EmitirCartas:  TFDQuery;
      db_CartaCadastros: TFDQuery;
      ds_EmitirCartas: TDataSource;
      DbRichCarta: TDBRichEdit;
      db_clientes: TFDQuery;
      DBNavigator1: TDBNavigator;
      ds_cliente: TDataSource;
      DS_CartaCadastros: TDataSource;
      db_Inadimplencia: TFDQuery;
      GroupBox1: TGroupBox;
      EditCarta: TEdit;
      Label3: TLabel;
      DBEdit2: TDBEdit;
      Label2: TLabel;
      DBEdit1: TDBEdit;
      Label1: TLabel;
      GroupBox2: TGroupBox;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      Label5: TLabel;
      MskDataFim: TMaskEdit;
      db_InadimplenciaPadrao: TFDQuery;
      btnpadrao: TSpeedButton;
      BitBtn2: TBitBtn;
      BitBtn1: TBitBtn;
      ProgressBar1: TProgressBar;
      ds_Inadimplencia: TDataSource;
      db_InadimplenciaChecar: TFDQuery;
      db_EmitirCartasCODIGO: TIntegerField;
      db_EmitirCartasCARTA: TIntegerField;
      db_EmitirCartasDATA: TDateField;
      db_EmitirCartasTEXTO: TStringField;
      DS_InadimplenciaChecar: TDataSource;
      bbtnOk: TBitBtn;
      lblReceber: TLabel;
      db_InadimplenciaSUM: TFDQuery;
      db_EmitirCartasCLIENTE: TIntegerField;
      db_EmitirCartasHORA: TTimeField;
      procedure FormCreate(Sender: TObject);
      procedure db_EmitirCartasCARTAChange(Sender: TField);
      procedure BitBtn1Click(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure BtnNovoClick(Sender: TObject);
      procedure db_EmitirCartasNewRecord(DataSet: TDataSet);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure db_InadimplenciaBeforeOpen(DataSet: TDataSet);
      procedure GroupBox2Exit(Sender: TObject);
      procedure btnpadraoClick(Sender: TObject);
      procedure BitBtn2Click(Sender: TObject);
      procedure db_CartaCadastrosBeforeOpen(DataSet: TDataSet);
      procedure EditCartaExit(Sender: TObject);
      procedure bbtnOkClick(Sender: TObject);
      procedure db_InadimplenciaSUMBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCartaEmitirGeral: TFrmCartaEmitirGeral;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global,  FBaseDados;

{$R *.dfm}

procedure TFrmCartaEmitirGeral.bbtnOkClick(Sender: TObject);
begin

   If db_EmitirCartas.IsEmpty then
   Begin
      BeepCritica;
      Informar('Não há dados para envio de email');
      Exit;
   end;

   if pergunta
     (' Esta recurso envia todas as cartas de cobranças geradas para os seus respectivos destinatáruos... continuar? ')
     = false then
      Exit;

   db_EmitirCartas.first;
   while not db_EmitirCartas.eof do
   begin

      {
      FrmEmail_Servico := TFrmEmail_Servico.create(self);
      FrmEmail_Servico.edtTo.Text :=
        UpperCase(db_clientes.FieldByName('email').AsString);
      FrmEmail_Servico.edtCC.Text :=
        LowerCase(BaseDados.db_Parametros.FieldByName('E_MAIL').AsString);
      // FrmEmail_Servico.edtSubject.Text  :='NOTIFICAÇÃO DE COBRANÇA';

      FrmEmail_Servico.edtSubject.Text := 'NOTIFICAÇÃO DE COBRANÇA [' +
        UpperCase(BaseDados.db_Parametros.FieldByName('NOMEFANTASIA')
        .AsString) + ']';

      FrmEmail_Servico.Memo1.Clear;
      FrmEmail_Servico.Memo1.Text := DbRichCarta.Text;
      FrmEmail_Servico.ShowModal;
      }

   end;

end;

procedure TFrmCartaEmitirGeral.FormCreate(Sender: TObject);
begin

   db_EmitirCartas.Open;
   db_clientes.Open;
   db_CartaCadastros.Open;

   btnpadraoClick(Sender);

   db_Inadimplencia.Open;

end;

procedure TFrmCartaEmitirGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_EmitirCartas.Close;
   db_clientes.Close;
   db_CartaCadastros.Close;

   Action := Cafree;

end;

procedure TFrmCartaEmitirGeral.BitBtn1Click(Sender: TObject);
begin

   If Empty(AllTrim(EditCarta.Text)) then
   begin
      BeepCritica;
      Informar(' Informe uma carta que esteja cadastrada no sistema ');
      Exit;
   end;

   if pergunta('Gerar Carta(s)?') = false then
      Exit;

   db_CartaCadastros.Close;
   db_CartaCadastros.Open;

   db_clientes.Close;
   db_clientes.Open;

   db_Inadimplencia.Close;
   db_Inadimplencia.Open;

   ProgressBar1.Max := db_Inadimplencia.RecordCount;
   ProgressBar1.Position := 0;
   db_Inadimplencia.first;

   db_InadimplenciaChecar.Close;
   db_InadimplenciaChecar.Open;

   While not db_Inadimplencia.eof do
   begin

      TextoLongo[0] := ''; // Intepretar CAMPOS da carta
      TextoLongo[1] := ''; // Montar colunas
      TextoLongo[2] := ''; // Montar Lista de Faturas

      db_EmitirCartas.Append;
      db_EmitirCartas.FieldByName('CLIENTE').AsString :=
        db_Inadimplencia.FieldByName('CLIENTE').AsString;
      db_EmitirCartas.FieldByName('CARTA').AsString := AllTrim(EditCarta.Text);

      If (db_EmitirCartas.state in [dsEdit, dsinsert]) then
      begin
         db_EmitirCartas.post;
      end;

      TextoLongo[0] := db_CartaCadastros.FieldByName('TEXTO').AsString;

      // Traduzir Todos o Texto

      // TRADUZIR NOME DA EMPRESA
      TextoLongo[0] := SubstituirCampoTexto(TextoLongo[0], '[%RAZAO-EMPRESA%]',
        BaseDados.db_Parametros.FieldByName('RAZAO_SOCIAL').AsString);

      // TRADUZIR NOME DO CLIENTE
      TextoLongo[0] := SubstituirCampoTexto(TextoLongo[0],
        '[%NOME-DO-CLIENTE%]', db_clientes.FieldByName('NOME').AsString + #13 +
        #10 + 'e-mail: ' + db_clientes.FieldByName('email').AsString + #13 + #10
        + 'Fone: ' + db_clientes.FieldByName('fone').AsString

        );

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
        '-----------------------------------------------------------------------------------------------------'
        + #13 + #10 +
        'DOCUMENTO       DATA:        VENCIMENTO:      DIAS DE ATRASO:         VALOR:     VALOR COM JUROS:       '
        + #13 + #10 +
        '-----------------------------------------------------------------------------------------------------';

      wFloat[0] := 0;
      wFloat[1] := 0;

      while not db_InadimplenciaChecar.eof do
      begin

         wFloat[0] := wFloat[0] + db_InadimplenciaChecar.FieldByName
           ('VALOR').AsFloat;
         wFloat[1] := wFloat[1] + db_InadimplenciaChecar.FieldByName
           ('VALOR_TOTAL').AsFloat;

         TextoLongo[2] := TextoLongo[2] +
           CampoTexto(db_InadimplenciaChecar.FieldByName('DOCUMENTO').AsString,
           16) + CampoTexto(db_InadimplenciaChecar.FieldByName('DATA').AsString,
           13) + CampoTexto(db_InadimplenciaChecar.FieldByName('VENCIMENTO')
           .AsString, 20) + CampoInteger
           (db_InadimplenciaChecar.FieldByName('DIAS_ATRASO').AsInteger, 05) +
           StringOfChar(' ', 10) +
           CampoValor(db_InadimplenciaChecar.FieldByName('VALOR').AsFloat, 12) +
           StringOfChar(' ', 07) +
           CampoValor(db_InadimplenciaChecar.FieldByName('VALOR_TOTAL').AsFloat,
           12) + #13 + #10;

         db_InadimplenciaChecar.next;

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


      // db_InadimplenciaChecar.close; // Como não precisará mais,~então feche.

      If not(db_EmitirCartas.state in [dsEdit]) then
         db_EmitirCartas.Edit;

      db_EmitirCartas.FieldByName('TEXTO').AsString := '';
      db_EmitirCartas.FieldByName('TEXTO').AsString := TextoLongo[0];


      // ------------------------------------------------------------------

      If (db_EmitirCartas.state in [dsEdit, dsinsert]) then
      begin
         db_EmitirCartas.post;
      end;

      ProgressBar1.Position := ProgressBar1.Position + 1;
      db_Inadimplencia.next;

   End;

   ProgressBar1.Position := 0;
   Aviso('Cartas geradas com sucesso!');

end;

procedure TFrmCartaEmitirGeral.BitBtn2Click(Sender: TObject);
begin

   if pergunta('Excluir todas as cartas?') = false then
      Exit;

   db_EmitirCartas.first;
   while not db_EmitirCartas.eof do
      db_EmitirCartas.Delete;

   Aviso('Cartas excluidas com sucesso!');

end;

procedure TFrmCartaEmitirGeral.BtnExcluirClick(Sender: TObject);
begin

   If db_EmitirCartas.IsEmpty then
   Begin
      BeepCritica;
      Informar('Não há dados para excluir');
      Exit;
   end;

   db_EmitirCartas.Delete;

end;

procedure TFrmCartaEmitirGeral.BtnNovoClick(Sender: TObject);
begin
   db_EmitirCartas.Append;

end;

procedure TFrmCartaEmitirGeral.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmCartaEmitirGeral.db_CartaCadastrosBeforeOpen(DataSet: TDataSet);
begin

   if AllTrim(EditCarta.Text) > '' then
      db_CartaCadastros.ParamByName('CARTA').AsInteger :=
        StrToInt(AllTrim(EditCarta.Text));

end;

procedure TFrmCartaEmitirGeral.db_EmitirCartasCARTAChange(Sender: TField);
begin
   db_CartaCadastros.Close;
   db_CartaCadastros.Open;
end;

procedure TFrmCartaEmitirGeral.db_EmitirCartasNewRecord(DataSet: TDataSet);
begin
   db_EmitirCartas.FieldByName('DATA').AsDateTime := Date;
   db_EmitirCartas.FieldByName('HORA').AsString := Copy(TimeToStr(Time), 1, 5);
end;

procedure TFrmCartaEmitirGeral.db_InadimplenciaBeforeOpen(DataSet: TDataSet);
begin

   db_Inadimplencia.ParamByName('VENCIMENTO1').AsDate :=
     StrToDate(MskDataIni.Text);
   db_Inadimplencia.ParamByName('VENCIMENTO2').AsDate :=
     StrToDate(MskDataFim.Text);
end;

procedure TFrmCartaEmitirGeral.EditCartaExit(Sender: TObject);
begin

   if Empty(AllTrim(EditCarta.Text)) then
      Exit;

   db_CartaCadastros.Close;
   db_CartaCadastros.Open;

   if db_CartaCadastros.RecordCount < 1 then
   begin
      BeepAlerta;
      db_CartaCadastros.Close;
      Informar('Carta inexistente. Confira');
      EditCarta.setfocus;
      Exit;
   end;

end;

procedure TFrmCartaEmitirGeral.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      Close;

end;

procedure TFrmCartaEmitirGeral.GroupBox2Exit(Sender: TObject);
begin
   db_Inadimplencia.Close;
   db_Inadimplencia.Open;

   db_InadimplenciaSUM.Close;
   db_InadimplenciaSUM.Open;

   lblReceber.caption := 'A Receber: ' +
     FormatFloat(FormatSettings.CurrencyString + ' ###,##0.00',
     db_InadimplenciaSUM.FieldByName('TOTAL').AsFloat);

   db_InadimplenciaSUM.Close;

end;

procedure TFrmCartaEmitirGeral.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.Text := fncDataValidar(MskDataFim.Text);
end;

procedure TFrmCartaEmitirGeral.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.Text := fncDataValidar(MskDataIni.Text);

end;

procedure TFrmCartaEmitirGeral.db_InadimplenciaSUMBeforeOpen(DataSet: TDataSet);
begin

   db_InadimplenciaSUM.ParamByName('VENCIMENTO1').AsDate :=
     StrToDate(MskDataIni.Text);
   db_InadimplenciaSUM.ParamByName('VENCIMENTO2').AsDate :=
     StrToDate(MskDataFim.Text);

end;

procedure TFrmCartaEmitirGeral.btnpadraoClick(Sender: TObject);
begin

   db_InadimplenciaPadrao.Close;
   db_InadimplenciaPadrao.Open;

   MskDataIni.Text := DateToStr(db_InadimplenciaPadrao.FieldByName('MIN')
     .AsDateTime);
   MskDataFim.Text := DateToStr(db_InadimplenciaPadrao.FieldByName('MAX')
     .AsDateTime);

   db_InadimplenciaPadrao.Close;

end;

end.
