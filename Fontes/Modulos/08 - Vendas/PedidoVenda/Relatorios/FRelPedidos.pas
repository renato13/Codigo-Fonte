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


unit FRelPedidos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask,   FrmRelatorios, ISFEdit,
   ISFEditbtn, ISFdbEditbtn, uEstSearchDialogZeos, IDBEdit, frxClass, frxDBSet,
  DB,   Spin, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelPedidos = class(TForm)
      Panel1: TPanel;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      MskDataFim: TMaskEdit;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      RadioG_Ordem: TRadioGroup;
      RdPedidos: TRadioGroup;
      RdgFiltro: TRadioGroup;
    FrameRelatorios1: TFrameRelatorios;
    db_ComissaoPedidos:  TFDQuery;
    fsd_ComissaoPedidos: TfrxDBDataset;
    GroupBox1: TGroupBox;
    EditClienteNome: TEdit;
    EditCliente: TIDBEditDialog;
    chkCliente: TCheckBox;
    fsr_ComissaoPedidos: TfrxReport;
    DB_FaturadoParcial: TFDQuery;
    frxDB_FaturadoParcial: TfrxDBDataset;
    fsr_FaturadoParcial: TfrxReport;
    fsr_PedidosEstoque: TfrxReport;
    db_PedidosEstoque: TFDQuery;
    frxDB_PedidosEstoque: TfrxDBDataset;
    frxDB_PedidoGrade: TfrxDBDataset;
    db_PedidoGrade: TFDQuery;
    fsr_PedidoGrade: TfrxReport;
    frxDB_RankingProdutos: TfrxDBDataset;
    db_RankingProdutos: TFDQuery;
    fsr_RankingProdutos: TfrxReport;
    EditNomeVendedor: TEdit;
    EditVendedor: TIDBEditDialog;
    chkRepres: TCheckBox;
    Panel3: TPanel;
    RadioG: TRadioGroup;
    frxDB_RankingProdutosGrade: TfrxDBDataset;
    db_RankingProdutosGrade: TFDQuery;
    fsr_RankingProdutosGrade: TfrxReport;
    gbxHanking: TGroupBox;
    rdgHankingOpcoes: TRadioGroup;
    fsd_Pedidos: TfrxDBDataset;
    db_Pedidos: TFDQuery;
    fsr_Pedidos: TfrxReport;
    fsr_ConferenciaPedidos: TfrxReport;
    db_ConferenciaPedidos: TFDQuery;
    frxBD_ConferenciaPedidos: TfrxDBDataset;
    GroupBox_OP_Produtos: TGroupBox;
    chk_Referencia: TCheckBox;
    PainelProdutos: TPanel;
    EditProdutoB: TIDBEditDialog;
    EditProdutoA: TIDBEditDialog;
    Panel4: TPanel;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    fsr_FaturadoParcialSintetico: TfrxReport;
    DB_FaturadoParcialSintetico: TFDQuery;
    frxDB_FaturadoParcialSintetico: TfrxDBDataset;
      procedure Btn_SairClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure chkRepresClick(Sender: TObject);
      procedure EditMarcaKeyPress(Sender: TObject; var Key: Char);
      procedure DCodClienteKeyPress(Sender: TObject; var Key: Char);
      procedure RadioGClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSairClick(Sender: TObject);
    procedure db_ComissaoPedidosBeforeOpen(DataSet: TDataSet);
    procedure chk_ReferenciaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

   private
    procedure ScriptPedido;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelPedidos: TFrmRelPedidos;

implementation

uses Biblioteca, Global, FPrincipal, SQLServer;

{$R *.DFM}

procedure TFrmRelPedidos.Btn_SairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelPedidos.chkClienteClick(Sender: TObject);
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

procedure TFrmRelPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(FrmRelPedidos);
end;

procedure TFrmRelPedidos.FormCreate(Sender: TObject);
begin
   CodIni := '';
   CodFim := '';
   Achar[0] := '';
   //MskDataIni.Text := dateToStr(Date - 60);
   //MskDataFim.Text := dateToStr(Date + 365);

end;

procedure TFrmRelPedidos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;

end;

procedure TFrmRelPedidos.FormShow(Sender: TObject);
begin
     if UpperCase(FSistema.ExeName)<>'VESTISPCP' then
        FrameRelatorios1.LblBarraTitulo.Caption :='Relatórios de Ordens de Serviços';

end;

Procedure TFrmRelPedidos.MskDataIniExit(Sender: TObject);
Begin
   MskDataIni.Text := fncDataValidar(MskDataIni.Text);
End;

procedure TFrmRelPedidos.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.Text := fncDataValidar(MskDataFim.Text);
end;

procedure TFrmRelPedidos.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmRelPedidos.Btn_ImprimirClick(Sender: TObject);
begin
   dtDataIni           := StrToDate(MskDataIni.text);
   dtDataFim           := StrToDate(MskDataFim.text);
   strCliente         := Trim(EditCliente.text);
   strVendedor        := Trim(EditVendedor.text);

   // por Data de Entrega
   If RadioG_Ordem.ItemIndex = 0 then
   Begin
      strOrdemDados := 'CODIGO, CLIENTE_NOME ';
   End;

   // por Ordem de Pedido
   If RadioG_Ordem.ItemIndex = 1 then
   Begin
      strOrdemDados := 'DATA_ENTREGA,  CLIENTE_NOME ';
   End;

   // por nome do cliente
   If RadioG_Ordem.ItemIndex = 2 then
   Begin
      strOrdemDados := 'DATA, CLIENTE_NOME ';
   End;

   // por nome do cliente
   If RadioG_Ordem.ItemIndex = 3 then
   Begin
      strOrdemDados := 'CLIENTE_NOME, DATA ';
   End;

   {
   If (RadioG.ItemIndex in [1,3,4,5,6]) then
   Begin
      // por nome do cliente
      If RadioG_Ordem.ItemIndex = 4 then
      Begin
         OrdemDados := 'REFERENCIA ';
      End;
   End;
   }

   case RadioG.ItemIndex of

      0:Begin
            ScriptPedido;
            fsr_Pedidos.ShowReport;
         End;

      1:Begin
            ScriptPedido;
            fsr_PedidoGrade.ShowReport;
         End;

      2:Begin
            ScriptPedido;
            fsr_ComissaoPedidos.ShowReport;
         End;
      3:Begin
            ScriptPedido;
            fsr_FaturadoParcial.ShowReport;
         End;
      4:Begin
            ScriptPedido;
            fsr_PedidosEstoque.ShowReport;
         End;

      5:Begin
            ScriptPedido;
            fsr_RankingProdutos.ShowReport;
         End;

      6:Begin
            ScriptPedido;
            fsr_RankingProdutosGrade.ShowReport;
         End;
      7:Begin
            ScriptPedido;
            fsr_ConferenciaPedidos.ShowReport;
         End;

      8:Begin
            ScriptPedido;
            fsr_FaturadoParcialSintetico.ShowReport;
         End;
   End;

End;

Procedure TFrmRelPedidos.ScriptPedido;
begin
//

   case RadioG.ItemIndex of

      0:Begin

         fsr_Pedidos.Variables['rptParametro'] := '';

         db_Pedidos.close;
         db_Pedidos.sql.clear;
         db_Pedidos.sql.add('SELECT * FROM VIEW_PEDIDOSVENDAS');
         db_Pedidos.sql.add('WHERE');
         db_Pedidos.sql.add('EMPRESA=:EMPRESA');
         db_Pedidos.sql.add('AND');

         if RdgFiltro.ItemIndex=0 then
            db_Pedidos.sql.add('DATA between :DATA1 AND :DATA2');

         if RdgFiltro.ItemIndex=1 then
            db_Pedidos.sql.add('DATA_ENTREGA between :DATA1 AND :DATA2');

         if not chkCliente.Checked then
         Begin
            db_Pedidos.sql.add('AND');
            db_Pedidos.sql.add('CLIENTE=:CLIENTE');
            db_Pedidos.ParamByName('CLIENTE').AsInteger :=        StrToIntDef(strCliente,0);
         End;

         if not chkRepres.Checked then
         Begin
            db_Pedidos.sql.add('AND');
            db_Pedidos.sql.add('VENDEDOR=:VENDEDOR');
            db_Pedidos.ParamByName('VENDEDOR').AsInteger :=       StrToIntDef(strVendedor,0);
         End;

         if RdPedidos.ItemIndex = 0 then
            fsr_Pedidos.Variables['rptParametro'] := QuotedStr (RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Todos os Pedidos)');

         if RdPedidos.ItemIndex = 1 then
         Begin
            fsr_Pedidos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Não Aprovados)');
            db_Pedidos.sql.add(' AND ');
            db_Pedidos.sql.add(' APROVADO IN (''N'',''NAO'')');
         End;

         if RdPedidos.ItemIndex = 2 then
         Begin
            fsr_Pedidos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Aprovados)');
            db_Pedidos.sql.add(' AND ');
            db_Pedidos.sql.add(' APROVADO IN (''S'',''SIM'')');
         End;

         if RdPedidos.ItemIndex = 3 then
         Begin
            fsr_Pedidos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Faturados)');
            db_Pedidos.sql.add(' AND ');
            db_Pedidos.sql.add(' STATUS IN (''S'',''SIM'')');
            db_Pedidos.sql.add(' AND ');
            db_Pedidos.sql.add(' APROVADO IN (''S'',''SIM'')');
         End;


         if RdPedidos.ItemIndex = 4 then
         Begin
            fsr_Pedidos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Não Faturados)');
            db_Pedidos.sql.add(' AND ');
            db_Pedidos.sql.add(' STATUS IN (''N'',''NAO'')');
         End;

         if RdgFiltro.ItemIndex=0 then
            db_Pedidos.sql.add(' ORDER BY DATA, CLIENTE_NOME ');

         if RdgFiltro.ItemIndex=1 then
            db_Pedidos.sql.add(' ORDER BY DATA_ENTREGA, CLIENTE_NOME ');


         db_Pedidos.ParamByName('DATA1').AsDateTime := dtDataIni;
         db_Pedidos.ParamByName('DATA2').AsDateTime := dtDataFim;
         db_Pedidos.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;


      End;


      1:Begin

         fsr_FaturadoParcial.Variables['rptParametro'] := '';

         db_PedidoGrade.close;
         db_PedidoGrade.sql.clear;
         db_PedidoGrade.sql.add('SELECT * FROM VIEW_PEDIDOSGRADE');
         db_PedidoGrade.sql.add('WHERE');

         if RdgFiltro.ItemIndex=0 then
            db_PedidoGrade.sql.add('DATA between :DATA1 AND :DATA2');

         if RdgFiltro.ItemIndex=1 then
            db_PedidoGrade.sql.add('DATAENTREGA between :DATA1 AND :DATA2');


         if not chkCliente.Checked then
         Begin
            db_PedidoGrade.sql.add('AND');
            db_PedidoGrade.sql.add('CLIENTE=:CLIENTE');
            db_PedidoGrade.ParamByName('CLIENTE').AsInteger :=        StrToIntDef(strCliente,0);
         End;

         if not chkRepres.Checked then
         Begin
            db_PedidoGrade.sql.add('AND');
            db_PedidoGrade.sql.add('VENDEDOR=:VENDEDOR');
            db_PedidoGrade.ParamByName('VENDEDOR').AsInteger :=       StrToIntDef(strVendedor,0);
         End;

         if not chk_Referencia.Checked then
         begin
            db_PedidoGrade.sql.add('AND');
            db_PedidoGrade.sql.add('REFERENCIA between :SREFERENCIA1 AND :SREFERENCIA2');
            db_PedidoGrade.ParamByName('SREFERENCIA1').AsString :=       AllTrim(EditProdutoA.Text);
            db_PedidoGrade.ParamByName('SREFERENCIA2').AsString :=       AllTrim(EditProdutoB.Text);
         end;

         if RdPedidos.ItemIndex = 0 then
            fsr_PedidoGrade.Variables['rptParametro'] := QuotedStr (RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Todos os Pedidos)');


         db_PedidoGrade.sql.add(' ORDER BY REFERENCIA, COR, ORDEM_GRADE, CLIENTE ');

      If RadioG_Ordem.ItemIndex = 4 then
      Begin
         strOrdemDados := ' ';
      End;


         db_PedidoGrade.ParamByName('DATA1').AsDateTime := dtDataIni;
         db_PedidoGrade.ParamByName('DATA2').AsDateTime := dtDataFim;


      End;

      2:Begin
         fsr_ComissaoPedidos.Variables['rptParametro'] := '';

         db_ComissaoPedidos.close;
         db_ComissaoPedidos.sql.clear;
         db_ComissaoPedidos.sql.add('SELECT * FROM VIEW_PEDIDOSCOMISSAO');
         db_ComissaoPedidos.sql.add('WHERE');
         db_ComissaoPedidos.sql.add('EMPRESA=:EMPRESA');
         db_ComissaoPedidos.sql.add('AND');
         db_ComissaoPedidos.sql.add('DATAFATURAMENTO between :DATA1 AND :DATA2');
         //db_ComissaoPedidos.sql.add('AND');
         //db_ComissaoPedidos.sql.add('APROVADO='+QuotedStr('SIM'));
         //db_ComissaoPedidos.sql.add('AND');
         //db_ComissaoPedidos.sql.add('STATUS='+QuotedStr('SIM'));
         //db_ComissaoPedidos.sql.add('AND');
         //db_ComissaoPedidos.sql.add('COMISSAO_VALORVIAPEDIDO>0');

         if not chkCliente.Checked then
         Begin
            db_ComissaoPedidos.sql.add('AND');
            db_ComissaoPedidos.sql.add('CLIENTE=:CLIENTE');
            db_ComissaoPedidos.ParamByName('CLIENTE').AsInteger :=        StrToIntDef(strCliente,0);
         End;

         if not chkRepres.Checked then
         Begin
            db_ComissaoPedidos.sql.add('AND');
            db_ComissaoPedidos.sql.add('VENDEDOR=:VENDEDOR');
            db_ComissaoPedidos.ParamByName('VENDEDOR').AsInteger :=       StrToIntDef(strVendedor,0);
         End;

         if RdPedidos.ItemIndex = 0 then
            fsr_ComissaoPedidos.Variables['rptParametro'] := QuotedStr (RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Todos os Pedidos)');

         if RdPedidos.ItemIndex = 1 then
         Begin
            fsr_ComissaoPedidos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Não Aprovados)');
            db_ComissaoPedidos.sql.add(' AND ');
            db_ComissaoPedidos.sql.add(' APROVADO  IN (''N'',''NAO'')');
         End;

         if RdPedidos.ItemIndex = 2 then
         Begin
            fsr_ComissaoPedidos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Aprovados)');
            db_ComissaoPedidos.sql.add(' AND ');
            db_ComissaoPedidos.sql.add(' APROVADO IN (''S'',''SIM'')');
         End;

         if RdPedidos.ItemIndex = 3 then
         Begin
            fsr_ComissaoPedidos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Faturados)');
            db_ComissaoPedidos.sql.add(' AND ');
            db_ComissaoPedidos.sql.add(' STATUS IN (''S'',''SIM'')');
         End;

         if RdPedidos.ItemIndex = 4 then
         Begin
            fsr_ComissaoPedidos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Não Faturados)');
            db_ComissaoPedidos.sql.add(' AND ');
            db_ComissaoPedidos.sql.add(' STATUS IN (''N'',''NAO'')');
         End;

         db_ComissaoPedidos.sql.add('ORDER BY VENDEDORNOME, CLIENTE_NOME');
         db_ComissaoPedidos.ParamByName('DATA1').AsDateTime := dtDataIni;
         db_ComissaoPedidos.ParamByName('DATA2').AsDateTime := dtDataFim;

      End;


      3:Begin
         fsr_FaturadoParcial.Variables['rptParametro'] := '';

         DB_FaturadoParcial.close;
         DB_FaturadoParcial.sql.clear;
         DB_FaturadoParcial.sql.add('SELECT * FROM VIEW_PEDIDO_PARCIAL');
         DB_FaturadoParcial.sql.add('WHERE');

         if RdgFiltro.ItemIndex=0 then
            DB_FaturadoParcial.sql.add('DATA between :DATA1 AND :DATA2');

         if RdgFiltro.ItemIndex=1 then
            DB_FaturadoParcial.sql.add('DATAENTREGA between :DATA1 AND :DATA2');

         if not chkCliente.Checked then
         Begin
            DB_FaturadoParcial.sql.add('AND');
            DB_FaturadoParcial.sql.add('CLIENTE=:CLIENTE');
            DB_FaturadoParcial.ParamByName('CLIENTE').AsInteger :=        StrToIntDef(strCliente,0);
         End;

         if not chkRepres.Checked then
         Begin
            DB_FaturadoParcial.sql.add('AND');
            DB_FaturadoParcial.sql.add('VENDEDOR=:VENDEDOR');
            DB_FaturadoParcial.ParamByName('VENDEDOR').AsInteger :=       StrToIntDef(strVendedor,0);
         End;

         if not chk_Referencia.Checked then
         begin
            DB_FaturadoParcial.sql.add('AND');
            DB_FaturadoParcial.sql.add('REFERENCIA between :SREFERENCIA1 AND :SREFERENCIA2');
            DB_FaturadoParcial.ParamByName('SREFERENCIA1').AsString :=       AllTrim(EditProdutoA.Text);
            DB_FaturadoParcial.ParamByName('SREFERENCIA2').AsString :=       AllTrim(EditProdutoB.Text);
         end;


         //if RdPedidos.ItemIndex = 0 then
         //   fsr_FaturadoParcial.Variables['rptParametro'] := QuotedStr (RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Todos os Pedidos)');



         if RdPedidos.ItemIndex = 0 then
            fsr_FaturadoParcial.Variables['rptParametro'] := QuotedStr (RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Todos os Pedidos)');

         if RdPedidos.ItemIndex = 1 then
         Begin
            fsr_FaturadoParcial.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Não Aprovados)');
            //DB_FaturadoParcial.sql.add(' AND ');
            //DB_FaturadoParcial.sql.add(' APROVADO=''NAO'' OR APROVADO=''N''  ');
         End;

         if RdPedidos.ItemIndex = 2 then
         Begin
            fsr_FaturadoParcial.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Aprovados)');
            //DB_FaturadoParcial.sql.add(' AND ');
            //DB_FaturadoParcial.sql.add(' APROVADO=''SIM'' OR APROVADO=''S''');
         End;

         if RdPedidos.ItemIndex = 3 then
         Begin
            fsr_FaturadoParcial.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Faturados)');
            //DB_FaturadoParcial.sql.add(' AND ');
            //DB_FaturadoParcial.sql.add(' STATUS=''S'' OR STATUS=''SIM''  ');
         End;


         if RdPedidos.ItemIndex = 4 then
         Begin
            fsr_FaturadoParcial.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Não Faturados)');
            DB_FaturadoParcial.sql.add(' AND ');
            DB_FaturadoParcial.sql.add(' STATUS IN (''N'',''NAO'')');
         End;



         DB_FaturadoParcial.sql.add(' ORDER BY CLIENTE_NOME, DATA, DATAENTREGA, REFERENCIA, COR, ORDEM_GRADE   ');

         DB_FaturadoParcial.ParamByName('DATA1').AsDateTime := dtDataIni;
         DB_FaturadoParcial.ParamByName('DATA2').AsDateTime := dtDataFim;

         prcStatusMessage('Faturamento Parcial de Pedidos','processando informações, aguarde...',True);
         DB_FaturadoParcial.open;
         prcStatusMessage('Faturamento Parcial de Pedidos','',False);

      End;
    4:Begin
         fsr_FaturadoParcial.Variables['rptParametro'] := '';

         db_PedidosEstoque.close;
         db_PedidosEstoque.sql.clear;
         db_PedidosEstoque.sql.add('SELECT * FROM VIEW_PEDIDO_X_ESTOQUE');
         db_PedidosEstoque.sql.add('WHERE');

         if RdgFiltro.ItemIndex=0 then
            db_PedidosEstoque.sql.add('DATA between :DATA1 AND :DATA2');

         if not chkCliente.Checked then
         Begin
            db_PedidosEstoque.sql.add('AND');
            db_PedidosEstoque.sql.add('CLIENTE=:CLIENTE');
            db_PedidosEstoque.ParamByName('CLIENTE').AsInteger :=        StrToIntDef(strCliente,0);
         End;

         if not chkRepres.Checked then
         Begin
            db_PedidosEstoque.sql.add('AND');
            db_PedidosEstoque.sql.add('VENDEDOR=:VENDEDOR');
            db_PedidosEstoque.ParamByName('VENDEDOR').AsInteger :=       StrToIntDef(strVendedor,0);
         End;

         if not chk_Referencia.Checked then
         begin
            db_PedidosEstoque.sql.add('AND');
            db_PedidosEstoque.sql.add('REFERENCIA between :SREFERENCIA1 AND :SREFERENCIA2');
            db_PedidosEstoque.ParamByName('SREFERENCIA1').AsString :=       AllTrim(EditProdutoA.Text);
            db_PedidosEstoque.ParamByName('SREFERENCIA2').AsString :=       AllTrim(EditProdutoB.Text);
         end;

         if RdPedidos.ItemIndex = 0 then
            fsr_FaturadoParcial.Variables['rptParametro'] := QuotedStr (RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Todos os Pedidos)');


         db_PedidosEstoque.sql.add(' ORDER BY REFERENCIA, COR, ORDEM_GRADE, DATA, CLIENTE_NOME ');

         db_PedidosEstoque.ParamByName('DATA1').AsDateTime := dtDataIni;
         db_PedidosEstoque.ParamByName('DATA2').AsDateTime := dtDataFim;


      End;

     5:Begin
         fsr_RankingProdutos.Variables['rptParametro'] := '';

         db_RankingProdutos.close;
         db_RankingProdutos.sql.clear;
         db_RankingProdutos.sql.add('SELECT');
         db_RankingProdutos.sql.add('    DISTINCT');

         if SpinEdit1.Value>0 then
            db_RankingProdutos.sql.add('TOP '+IntToStr(SpinEdit1.Value));

         db_RankingProdutos.sql.add('    TBLGLOBAL.EMPRESA,');
         //db_RankingProdutos.sql.add('    TBLGLOBAL.CODIGO,');
         //db_RankingProdutos.sql.add('    TBLGLOBAL.CLIENTE,');
         //db_RankingProdutos.sql.add('    TBLGLOBAL.CLIENTE_NOME,');
         db_RankingProdutos.sql.add('    TBLGLOBAL.REFERENCIA,');
         db_RankingProdutos.sql.add('    TBLGLOBAL.DESCRICAO,');
         db_RankingProdutos.sql.add('    TBLGLOBAL.VALOR_UNIT,');
         db_RankingProdutos.sql.add('    TBLGLOBAL.QTDE_ESTOQUE,');
         db_RankingProdutos.sql.add('    QUANTIDADE=SUM(TBLGLOBAL.QUANTIDADE),');
         db_RankingProdutos.sql.add('    VLR_TOTAL=SUM(TBLGLOBAL.VLR_TOTAL)');
         //db_RankingProdutos.sql.add('    PERCENTUALQTDE=( CAST(  SUM(TBLGLOBAL.QUANTIDADE) AS FLOAT)   / ( SELECT  SUM(TBLQTDE.QUANTIDADE)    FROM  VIEW_PEDIDOS_VENDIDOS TBLQTDE WHERE  TBLQTDE.EMPRESA=TBLGLOBAL.EMPRESA AND  TBLQTDE.CODIGO=TBLGLOBAL.CODIGO )  * 100) ,');
         //db_RankingProdutos.sql.add('    PERCENTUALVLR=(SUM(TBLGLOBAL.VLR_TOTAL)                       / ( SELECT  SUM(TBLVLR.VLR_TOTAL)      FROM  VIEW_PEDIDOS_VENDIDOS TBLVLR  WHERE  TBLVLR.EMPRESA=TBLGLOBAL.EMPRESA  AND  TBLVLR.CODIGO=TBLGLOBAL.CODIGO  )  * 100)');
         db_RankingProdutos.sql.add('');
         db_RankingProdutos.sql.add('FROM  VIEW_PEDIDOS_VENDIDOS TBLGLOBAL');
         db_RankingProdutos.sql.add('WHERE');
         db_RankingProdutos.sql.add('');
         db_RankingProdutos.sql.add('');

         if RdgFiltro.ItemIndex=0 then
            db_RankingProdutos.sql.add('TBLGLOBAL.DATA between :DATA1 AND :DATA2');

         if RdgFiltro.ItemIndex=1 then
            db_RankingProdutos.sql.add('TBLGLOBAL.DATAENTREGA between :DATA1 AND :DATA2');

         if not chkCliente.Checked then
         Begin
            db_RankingProdutos.sql.add('AND');
            db_RankingProdutos.sql.add('TBLGLOBAL.CLIENTE=:CLIENTE');
            db_RankingProdutos.ParamByName('CLIENTE').AsInteger :=        StrToIntDef(strCliente,0);
         End;

         if not chkRepres.Checked then
         Begin
            db_RankingProdutos.sql.add('AND');
            db_RankingProdutos.sql.add('TBLGLOBAL.VENDEDOR=:VENDEDOR');
            db_RankingProdutos.ParamByName('VENDEDOR').AsInteger :=       StrToIntDef(strVendedor,0);
         End;

         if RdPedidos.ItemIndex = 0 then
            fsr_RankingProdutos.Variables['rptParametro'] := QuotedStr (RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Todos os Pedidos)');

         if RdPedidos.ItemIndex = 1 then
         Begin
            fsr_RankingProdutos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Não Aprovados)');
            db_RankingProdutos.sql.add(' AND ');
            db_RankingProdutos.sql.add(' APROVADO=''NAO'' OR APROVADO=''N''  ');
         End;

         if RdPedidos.ItemIndex = 2 then
         Begin
            fsr_RankingProdutos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Aprovados)');
            db_RankingProdutos.sql.add(' AND ');
            db_RankingProdutos.sql.add(' APROVADO IN (''S'',''SIM'')');
         End;

         if RdPedidos.ItemIndex = 3 then
         Begin
            fsr_RankingProdutos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Faturados)');
            db_RankingProdutos.sql.add(' AND ');
            db_RankingProdutos.sql.add(' STATUS IN (''S'',''SIM'')');
         End;

         if RdPedidos.ItemIndex = 4 then
         Begin
            fsr_RankingProdutos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Não Faturados)');
            db_RankingProdutos.sql.add(' AND ');
            db_RankingProdutos.sql.add(' STATUS IN (''N'',''NAO'')');
         End;

         if not chk_Referencia.Checked then
         begin
            db_RankingProdutos.sql.add('AND');
            db_RankingProdutos.sql.add('REFERENCIA between :SREFERENCIA1 AND :SREFERENCIA2');
            db_RankingProdutos.ParamByName('SREFERENCIA1').AsString :=       AllTrim(EditProdutoA.Text);
            db_RankingProdutos.ParamByName('SREFERENCIA2').AsString :=       AllTrim(EditProdutoB.Text);
         end;

         db_RankingProdutos.sql.add('GROUP  BY');
         db_RankingProdutos.sql.add('    TBLGLOBAL.EMPRESA,');
         //db_RankingProdutos.sql.add('    TBLGLOBAL.CODIGO,');
         db_RankingProdutos.sql.add('    TBLGLOBAL.REFERENCIA,');
         db_RankingProdutos.sql.add('    TBLGLOBAL.DESCRICAO,');
         db_RankingProdutos.sql.add('    TBLGLOBAL.VALOR_UNIT,');
         db_RankingProdutos.sql.add('    TBLGLOBAL.QTDE_ESTOQUE');

         if rdgHankingOpcoes.ItemIndex = 0 then
            db_RankingProdutos.sql.add(' ORDER BY QUANTIDADE DESC  ');

         if rdgHankingOpcoes.ItemIndex = 1 then
            db_RankingProdutos.sql.add(' ORDER BY VLR_TOTAL  DESC  ');



         db_RankingProdutos.ParamByName('DATA1').AsDateTime := dtDataIni;
         db_RankingProdutos.ParamByName('DATA2').AsDateTime := dtDataFim;


       End;


     6:Begin
         fsr_RankingProdutos.Variables['rptParametro'] := '';

         db_RankingProdutosGrade.close;
         db_RankingProdutosGrade.sql.clear;
         db_RankingProdutosGrade.sql.add('SELECT');
         db_RankingProdutosGrade.sql.add('DISTINCT');
         if SpinEdit1.Value>0 then
            db_RankingProdutosGrade.sql.add('TOP '+IntToStr(SpinEdit1.Value));
         db_RankingProdutosGrade.sql.add('TBLGLOBAL.EMPRESA,');
         //db_RankingProdutosGrade.sql.add('TBLGLOBAL.CODIGO,');
         db_RankingProdutosGrade.sql.add('TBLGLOBAL.REFERENCIA,');
         db_RankingProdutosGrade.sql.add('TBLGLOBAL.DESCRICAO,');
         db_RankingProdutosGrade.sql.add('TBLGLOBAL.COR,');
         db_RankingProdutosGrade.sql.add('TBLGLOBAL.TAMANHO,');
         db_RankingProdutosGrade.sql.add('TBLGLOBAL.ORDEM_GRADE,');
         db_RankingProdutosGrade.sql.add('TBLGLOBAL.VALOR_UNIT,');
         db_RankingProdutosGrade.sql.add('TBLGLOBAL.QTDE_ESTOQUE,');
         db_RankingProdutosGrade.sql.add('QUANTIDADE=SUM(TBLGLOBAL.QUANTIDADE),');
         db_RankingProdutosGrade.sql.add('VLR_TOTAL=SUM(TBLGLOBAL.VLR_TOTAL)');
         db_RankingProdutosGrade.sql.add('FROM  VIEW_PEDIDOS_VENDIDOS_GRADE TBLGLOBAL');
         db_RankingProdutosGrade.sql.add('WHERE');
         db_RankingProdutosGrade.sql.add('');
         db_RankingProdutosGrade.sql.add('');

         if RdgFiltro.ItemIndex=0 then
            db_RankingProdutosGrade.sql.add('TBLGLOBAL.DATA between :DATA1 AND :DATA2');

         if RdgFiltro.ItemIndex=1 then
            db_RankingProdutosGrade.sql.add('TBLGLOBAL.DATAENTREGA between :DATA1 AND :DATA2');

         if not chkCliente.Checked then
         Begin
            db_RankingProdutosGrade.sql.add('AND');
            db_RankingProdutosGrade.sql.add('TBLGLOBAL.CLIENTE=:CLIENTE');
            db_RankingProdutosGrade.ParamByName('CLIENTE').AsInteger :=        StrToIntDef(strCliente,0);
         End;

         if not chkRepres.Checked then
         Begin
            db_RankingProdutosGrade.sql.add('AND');
            db_RankingProdutosGrade.sql.add('TBLGLOBAL.VENDEDOR=:VENDEDOR');
            db_RankingProdutosGrade.ParamByName('VENDEDOR').AsInteger :=       StrToIntDef(strVendedor,0);
         End;

         if RdPedidos.ItemIndex = 0 then
            fsr_RankingProdutosGrade.Variables['rptParametro'] := QuotedStr (RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Todos os Pedidos)');

         if RdPedidos.ItemIndex = 1 then
         Begin
            fsr_RankingProdutosGrade.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Não Aprovados)');
            db_RankingProdutosGrade.sql.add(' AND ');
            db_RankingProdutosGrade.sql.add(' APROVADO IN (''N'',''NAO'')');
         End;

         if RdPedidos.ItemIndex = 2 then
         Begin
            fsr_RankingProdutosGrade.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Aprovados)');
            db_RankingProdutosGrade.sql.add(' AND ');
            db_RankingProdutosGrade.sql.add(' APROVADO IN (''S'',''SIM'')');
         End;

         if RdPedidos.ItemIndex = 3 then
         Begin
            fsr_RankingProdutosGrade.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Faturados)');
            db_RankingProdutosGrade.sql.add(' AND ');
            db_RankingProdutosGrade.sql.add(' STATUS IN (''S'',''SIM'')');
         End;


         if not chk_Referencia.Checked then
         begin
            db_RankingProdutosGrade.sql.add('AND');
            db_RankingProdutosGrade.sql.add('REFERENCIA between :SREFERENCIA1 AND :SREFERENCIA2');
            db_RankingProdutosGrade.ParamByName('SREFERENCIA1').AsString :=       AllTrim(EditProdutoA.Text);
            db_RankingProdutosGrade.ParamByName('SREFERENCIA2').AsString :=       AllTrim(EditProdutoB.Text);
         end;


         if RdPedidos.ItemIndex = 4 then
         Begin
            fsr_RankingProdutosGrade.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Não Faturados)');
            db_RankingProdutosGrade.sql.add(' AND ');
            db_RankingProdutosGrade.sql.add(' STATUS IN (''N'',''NAO'')');
         End;


         db_RankingProdutosGrade.sql.add('GROUP  BY');
         db_RankingProdutosGrade.sql.add('    TBLGLOBAL.EMPRESA,');
         //db_RankingProdutosGrade.sql.add('    TBLGLOBAL.CODIGO,');
         db_RankingProdutosGrade.sql.add('    TBLGLOBAL.REFERENCIA,');
         db_RankingProdutosGrade.sql.add('    TBLGLOBAL.DESCRICAO,');
         db_RankingProdutosGrade.sql.add('    TBLGLOBAL.COR,');
         db_RankingProdutosGrade.sql.add('    TBLGLOBAL.TAMANHO,');
         db_RankingProdutosGrade.sql.add('    TBLGLOBAL.ORDEM_GRADE,');
         db_RankingProdutosGrade.sql.add('    TBLGLOBAL.VALOR_UNIT,');
         db_RankingProdutosGrade.sql.add('    TBLGLOBAL.QTDE_ESTOQUE');

         if rdgHankingOpcoes.ItemIndex = 0 then
            db_RankingProdutosGrade.sql.add(' ORDER BY QUANTIDADE DESC ');

         if rdgHankingOpcoes.ItemIndex = 1 then
            db_RankingProdutosGrade.sql.add(' ORDER BY VLR_TOTAL  DESC ');

         db_RankingProdutosGrade.ParamByName('DATA1').AsDateTime := dtDataIni;
         db_RankingProdutosGrade.ParamByName('DATA2').AsDateTime := dtDataFim;


       End;

    7:Begin
         fsr_ConferenciaPedidos.Variables['rptParametro'] := '';

         db_ConferenciaPedidos.close;
         db_ConferenciaPedidos.sql.clear;
         db_ConferenciaPedidos.sql.add('SELECT * FROM VIEW_PEDIDOCONFERENCIA');
         db_ConferenciaPedidos.sql.add('WHERE');
         //db_ConferenciaPedidos.sql.add(' NOTAFISCAL>0 ');
         //db_ConferenciaPedidos.sql.add('AND');

         if RdgFiltro.ItemIndex=0 then
            db_ConferenciaPedidos.sql.add('DATA between :DATA1 AND :DATA2');

         if RdgFiltro.ItemIndex=1 then
            db_ConferenciaPedidos.sql.add('DATAFATURAMENTO between :DATA1 AND :DATA2');

         if not chkCliente.Checked then
         Begin
            db_ConferenciaPedidos.sql.add('AND');
            db_ConferenciaPedidos.sql.add('CLIENTE=:CLIENTE');
            db_ConferenciaPedidos.ParamByName('CLIENTE').AsInteger :=        StrToIntDef(strCliente,0);
         End;

         if not chkRepres.Checked then
         Begin
            db_ConferenciaPedidos.sql.add('AND');
            db_ConferenciaPedidos.sql.add('VENDEDOR=:VENDEDOR');
            db_ConferenciaPedidos.ParamByName('VENDEDOR').AsInteger :=       StrToIntDef(strVendedor,0);
         End;

         if RdPedidos.ItemIndex = 0 then
            fsr_ConferenciaPedidos.Variables['rptParametro'] := QuotedStr (RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Todos os Pedidos)');

         if RdPedidos.ItemIndex = 3 then
         Begin
            fsr_ConferenciaPedidos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Faturados)');
            db_ConferenciaPedidos.sql.add(' AND ');
            db_ConferenciaPedidos.sql.add(' FATURADO IN (''S'',''SIM'')');
         End;


         if RdPedidos.ItemIndex = 4 then
         Begin
            fsr_ConferenciaPedidos.Variables['rptParametro'] := QuotedStr(RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Não Faturados)');
            db_ConferenciaPedidos.sql.add(' AND ');
            db_ConferenciaPedidos.sql.add(' FATURADO IN (''N'',''NAO'')');
         End;


         db_ConferenciaPedidos.sql.add(' ORDER BY CODIGO, DATAFATURAMENTO, NOTAFISCAL   ');
         db_ConferenciaPedidos.ParamByName('DATA1').AsDateTime := dtDataIni;
         db_ConferenciaPedidos.ParamByName('DATA2').AsDateTime := dtDataFim;


      End;

      8:Begin
         fsr_FaturadoParcialSintetico.Variables['rptParametro'] := '';

         DB_FaturadoParcialSintetico.close;
         DB_FaturadoParcialSintetico.sql.clear;
         DB_FaturadoParcialSintetico.sql.add('');
         DB_FaturadoParcialSintetico.sql.add('SELECT');
         DB_FaturadoParcialSintetico.sql.add('      REFERENCIA');
         DB_FaturadoParcialSintetico.sql.add('      ,DESCRICAO');
         DB_FaturadoParcialSintetico.sql.add('      ,QTDEVENDIDA=SUM(QTDEVENDIDA)');
         DB_FaturadoParcialSintetico.sql.add('      ,QTDECONFERIDA=SUM(QTDECONFERIDA)');
         DB_FaturadoParcialSintetico.sql.add('      ,QTDERESTANTE=SUM(QTDERESTANTE)');
         DB_FaturadoParcialSintetico.sql.add('      ,VALOR_QTDEVENDIDA=SUM(VALOR_QTDEVENDIDA)');
         DB_FaturadoParcialSintetico.sql.add('      ,VALOR_QTDECONFERIDA=SUM(VALOR_QTDECONFERIDA)');
         DB_FaturadoParcialSintetico.sql.add('      ,VALOR_QTDERESTANTE=SUM(VALOR_QTDERESTANTE)');
         DB_FaturadoParcialSintetico.sql.add('      ,QTDEFATURADA=SUM(QTDEFATURADA)');
         DB_FaturadoParcialSintetico.sql.add('      ,QTDERESTANTEFATURAR=SUM(QTDERESTANTEFATURAR)');
         DB_FaturadoParcialSintetico.sql.add('');
         DB_FaturadoParcialSintetico.sql.add(',VLRFATURADO=SUM(VLRFATURADO)');

         DB_FaturadoParcialSintetico.sql.add('FROM VIEW_PEDIDO_PARCIALSINTETICO');
         DB_FaturadoParcialSintetico.sql.add('');
         DB_FaturadoParcialSintetico.sql.add('');
         DB_FaturadoParcialSintetico.sql.add('WHERE');


         if RdgFiltro.ItemIndex=0 then
            DB_FaturadoParcialSintetico.sql.add('DATA  between :DATA1 AND :DATA2');

         if RdgFiltro.ItemIndex=1 then
            DB_FaturadoParcialSintetico.sql.add('DATAENTREGA between :DATA1 AND :DATA2');

         if RdPedidos.ItemIndex = 0 then
            fsr_FaturadoParcialSintetico.Variables['rptParametro'] := QuotedStr (RdgFiltro.Items.Strings[RdgFiltro.ItemIndex] + ': ' + MskDataIni.Text + '  -  ' + MskDataFim.Text + ' - (Todos os Pedidos)');

         DB_FaturadoParcialSintetico.sql.add(' GROUP BY       REFERENCIA,       DESCRICAO ');

        DB_FaturadoParcialSintetico.sql.add(' ORDER BY REFERENCIA ');

         //if RdgFiltro.ItemIndex=0 then
         //   DB_FaturadoParcialSintetico.sql.add(' ORDER BY REFERENCIA ');

         //if RdgFiltro.ItemIndex=1 then
         //   DB_FaturadoParcialSintetico.sql.add(' ORDER BY REFERENCIA   ');

         DB_FaturadoParcialSintetico.ParamByName('DATA1').AsDateTime := dtDataIni;
         DB_FaturadoParcialSintetico.ParamByName('DATA2').AsDateTime := dtDataFim;

         prcStatusMessage('Faturamento Parcial de Pedidos','processando informações, aguarde...',True);
         DB_FaturadoParcialSintetico.open;
         prcStatusMessage('Faturamento Parcial de Pedidos','',False);




      End;


   end;


end;


procedure TFrmRelPedidos.chkRepresClick(Sender: TObject);
begin
   if chkRepres.Checked = true then
   Begin
      EditVendedor.Enabled := False;

   End
   Else
   Begin
      EditVendedor.Enabled := true;
      EditVendedor.SelectAll;
      EditVendedor.SetFocus;
   End;

end;

procedure TFrmRelPedidos.chk_ReferenciaClick(Sender: TObject);
begin
   if chk_Referencia.Checked then
   begin
      PainelProdutos.Enabled := False;
   end
   else
   begin
      PainelProdutos.Enabled := True;
   end;

end;

procedure TFrmRelPedidos.db_ComissaoPedidosBeforeOpen(DataSet: TDataSet);
begin
   db_ComissaoPedidos.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelPedidos.EditMarcaKeyPress(Sender: TObject; var Key: Char);
begin

   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
   Begin
      Key := #0;
      BeepCritica;
      Erro('Esse campo é somente numerico' + #13 + #10 +
        'Tecle F8 para pesquisar as marcas cadastradas');
   End;

end;

procedure TFrmRelPedidos.DCodClienteKeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
   Begin
      Key := #0;
      BeepCritica;
      Erro('Esse campo é somente numerico' + #13 + #10 +
        'Tecle F8 para pesquisar os clientes');
   End;

end;

procedure TFrmRelPedidos.RadioGClick(Sender: TObject);
begin

   TRadioGroup(RdPedidos.Controls[3]).Enabled := true;

   If RadioG.ItemIndex = 7 then
      RdPedidos.ItemIndex :=3
   else
      RdPedidos.ItemIndex :=0;

   If (RadioG.ItemIndex = 1) then
   Begin
      TRadioGroup(RdPedidos.Controls[3]).Enabled := False;
   End;

   If (RadioG.ItemIndex = 2) then
   Begin
      TRadioGroup(RdPedidos.Controls[3]).Enabled := False;
   End;

   If (RadioG.ItemIndex in [5,6]) then
      gbxHanking.Visible := True
   else
      gbxHanking.Visible := false;


end;

end.
