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

unit FRelFaturamento;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, Db,
   SqlExpr, Grids, DBGrids, FrmRelatorios, ISFEdit, ISFEditbtn, ISFdbEditbtn,
   uEstSearchDialogZeos, IDBEdit,   frxClass, frxDBSet,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelFaturamento = class(TForm)
      Panel1: TPanel;
      PainelBotoes: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      RadioG_Ordem: TRadioGroup;
      RadioNF: TRadioGroup;
    FrameRelatorios1: TFrameRelatorios;
    db_ComissaoPedidos:  TFDQuery;
    fsd_ComissaoPedidos: TfrxDBDataset;
    db_ComissaoPedidosDATA: TSQLTimeStampField;
    db_ComissaoPedidosCLIENTE: TIntegerField;
    db_ComissaoPedidosCLIENTE_NOME: TStringField;
    db_ComissaoPedidosCPF_CNPJ: TStringField;
    db_ComissaoPedidosFORMA_PAGTO: TStringField;
    db_ComissaoPedidosVENDEDOR: TIntegerField;
    db_ComissaoPedidosVENDEDORNOME: TStringField;
    db_ComissaoPedidosVENDEDORSALARIO: TBCDField;
    db_ComissaoPedidosCOMISSAOCADASTRO: TBCDField;
    db_ComissaoPedidosCOMISSAOPEDIDO: TBCDField;
    db_ComissaoPedidosCOMISSAO_VALORVIACADASTRO: TBCDField;
    db_ComissaoPedidosCOMISSAO_VALORVIAPEDIDO: TBCDField;
    db_ComissaoPedidosCOMISSAO_COM_SALARIO: TBCDField;
    db_ComissaoPedidosVALORTOTAL: TBCDField;
    db_ComissaoPedidosSTATUS: TStringField;
    fsr_ComissaoPedidos: TfrxReport;
    db_ComissaoPedidosEMPRESA: TIntegerField;
    db_ComissaoPedidosCODIGO: TIntegerField;
    db_ComissaoPedidosAPROVADO: TStringField;
    Panel2: TPanel;
    RadioG: TRadioGroup;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    MskDataIni: TMaskEdit;
    MskDataFim: TMaskEdit;
    GroupBox1: TGroupBox;
    EditClienteNome: TEdit;
    EditCliente: TIDBEditDialog;
    chkCliente: TCheckBox;
    chkRepres: TCheckBox;
    EditVendedor: TIDBEditDialog;
    EditNomeVendedor: TEdit;
    GroupBox3: TGroupBox;
    CodigoProdutos: TGroupBox;
    EditProdutoInicio: TIDBEditDialog;
    EditProdutoFim: TIDBEditDialog;
      procedure Btn_SairClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSairClick(Sender: TObject);
      procedure chkRepresClick(Sender: TObject);
      procedure chkClienteClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure RadioGClick(Sender: TObject);
    procedure db_ComissaoPedidosBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);

   private
    procedure ScriptPedido;
      { Private declarations }

   public
      { Public declarations }

   end;

var
   FrmRelFaturamento: TFrmRelFaturamento;

implementation

uses Biblioteca, FPrincipal, Global, FBaseDados,
   FFat_RelRepres,
   FFat_RelCurvaABC_Clientes, FFat_RelCurvaABCVendedores,
   FFat_RelCurvaABCFormaPagto, FFat_RelResumo_CFOP,
   FFat_RelComissao, FFat_RelComissaoAnalitico,
   FFat_RelNFAnalitico,
   FFat_RelNFAnaliticoProdutos, FFat_RelNotaFiscal;

{$R *.DFM}

procedure TFrmRelFaturamento.Btn_SairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelFaturamento.FormShow(Sender: TObject);
begin
  TRadioGroup(RadioG.Controls[2]).Enabled:= False;
  TRadioGroup(RadioG.Controls[3]).Enabled:= False;
end;

procedure TFrmRelFaturamento.FormCreate(Sender: TObject);
begin

   CodIni := '';
   CodFim := '';
   MskDataIni.Text := dateToStr(Date);
   MskDataFim.Text := dateToStr(Date);

end;

procedure TFrmRelFaturamento.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.Text := fncDataValidar(MskDataIni.Text);
end;

procedure TFrmRelFaturamento.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.Text := fncDataValidar(MskDataFim.Text);
end;

procedure TFrmRelFaturamento.Btn_ImprimirClick(Sender: TObject);
begin

   case RadioNF.ItemIndex of

      0:
         Tipo_NF := ' OPERACAO  LIKE ' + QuotedStr('%');

      1:
         Tipo_NF := ' OPERACAO=' + QuotedStr('S');

      2,3:
         Tipo_NF := ' OPERACAO=' + QuotedStr('E');

      4:
         Tipo_NF := ' OPERACAO=' + QuotedStr('C');

      5:
         Tipo_NF := ' TIPONF=' + QuotedStr('PDV');

   end;

   case RadioG_Ordem.ItemIndex of

      0:
         strOrdemDados := 'NOTAFISCAL ';
      1:
         strOrdemDados := 'DATA, NOTAFISCAL, CLIENTE_NOME ';
      2:
         strOrdemDados := 'CLIENTE_NOME, EMISSAO ';
      3:
         strOrdemDados := 'VENDEDOR_NOME, EMISSAO ';

   end;

   // -------------------------------------------------------------------------
   // Mostra relatorio selecionado
   // -------------------------------------------------------------------------

   // relatório de notas - Contabilidade
   case RadioG.ItemIndex of

      0:
         FrmFat_RelNotaFiscal := TFrmFat_RelNotaFiscal.create(self);
      1:
         FrmFat_RelRepres := TFrmFat_RelRepres.create(self);
      2:
         FrmFat_RelComissao := TFrmFat_RelComissao.create(self);
      3:
         FrmFat_RelComissaoAnalitico :=  TFrmFat_RelComissaoAnalitico.create(self);
      4:
         FrmFat_RelNFAnalitico := TFrmFat_RelNFAnalitico.create(self);
      5:
         FrmFat_RelNFAnaliticoProdutos :=            TFrmFat_RelNFAnaliticoProdutos.create(self);

      {
      6:
         FrmFat_RelConferenciaProdutosICMS :=
           TFrmFat_RelConferenciaProdutosICMS.create(self);
      }

      7:
         FrmFat_RelCurvaABC_Clientes :=            TFrmFat_RelCurvaABC_Clientes.create(self);
      8:
         FrmFat_RelCurvaABCVendedores :=           TFrmFat_RelCurvaABCVendedores.create(self);
      9:
         FrmFat_RelCurvaABCFormaPagto :=           TFrmFat_RelCurvaABCFormaPagto.create(self);
      10:
         FrmFat_RelResumo_CFOP :=                  TFrmFat_RelResumo_CFOP.create(self);

      11:Begin
            ScriptPedido;
            fsr_ComissaoPedidos.ShowReport;
         End;

   End;

End;

Procedure TFrmRelFaturamento.ScriptPedido;
begin
//
   dtDataIni := StrToDate(MskDataIni.Text);
   dtDataFim := StrToDate(MskDataFim.Text);

   db_ComissaoPedidos.close;
   db_ComissaoPedidos.sql.clear;
   db_ComissaoPedidos.sql.add('SELECT * FROM VIEW_PEDIDOSCOMISSAO');
   db_ComissaoPedidos.sql.add('WHERE');
   db_ComissaoPedidos.sql.add('EMPRESA=:EMPRESA');
   db_ComissaoPedidos.sql.add('AND');
   db_ComissaoPedidos.sql.add('DATA between :DATA1 AND :DATA2');


   if not chkCliente.Checked then
   Begin
      db_ComissaoPedidos.sql.add('AND');
      db_ComissaoPedidos.sql.add('CLIENTE=:CLIENTE');
      db_ComissaoPedidos.ParamByName('CLIENTE').AsInteger :=        StrToInt(FrmRelFaturamento.EditCliente.Text);
   End;

   if not chkRepres.Checked then
   Begin
      db_ComissaoPedidos.sql.add('AND');
      db_ComissaoPedidos.sql.add('VENDEDOR=:VENDEDOR');
      db_ComissaoPedidos.ParamByName('VENDEDOR').AsInteger :=        StrToInt(FrmRelFaturamento.EditCliente.Text);
   End;

   db_ComissaoPedidos.sql.add('ORDER BY VENDEDORNOME, CLIENTE_NOME');
   db_ComissaoPedidos.ParamByName('DATA1').AsDateTime := dtDataIni;
   db_ComissaoPedidos.ParamByName('DATA2').AsDateTime := dtDataFim;

   db_ComissaoPedidos.open;

end;

procedure TFrmRelFaturamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      Close;

end;


procedure TFrmRelFaturamento.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelFaturamento.chkRepresClick(Sender: TObject);
begin

   if chkRepres.Checked = true then
   Begin
      EditVendedor.Enabled := False;

   End
   Else
   Begin
      EditVendedor.Enabled := true;
      EditVendedor.SetFocus;
   End;

end;

procedure TFrmRelFaturamento.db_ComissaoPedidosBeforeOpen(DataSet: TDataSet);
begin
   db_ComissaoPedidos.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelFaturamento.chkClienteClick(Sender: TObject);
begin
   if chkCliente.Checked = true then
   Begin
      EditCliente.Enabled := False;
   End
   Else
   Begin
      EditCliente.Enabled := true;
      EditCliente.SetFocus;
   End;

end;

procedure TFrmRelFaturamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FreeAndNil(FrmRelFaturamento);
   //Action := Cafree;
end;

procedure TFrmRelFaturamento.RadioGClick(Sender: TObject);
begin

   If (RadioG.ItemIndex = 5) then
   Begin
      CodigoProdutos.Visible := true;
   End
   else
   begin
      CodigoProdutos.Visible := False;
   end;

end;

end.
