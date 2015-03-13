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

unit FOrdemProducaoPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FFrameBarra, StdCtrls, Buttons, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, Mask;

type
  TFrmOrdemProducaoPedidos = class(TForm)
    Panel1: TPanel;
    FrmFrameBarra1: TFrmFrameBarra;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    W7Panel1: TPanel;
    gbxPedidosChecar: TGroupBox;
    chkPedidos: TCheckBox;
    gbxSelecionarPedidos: TGroupBox;
    btnPedidosSelecionar: TBitBtn;
    gbxPedidosFiltros: TGroupBox;
    pnPeriodo: TPanel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    MskDataIni: TMaskEdit;
    MskDataFim: TMaskEdit;
    rgpPeriodoData: TRadioGroup;
    gbxClientes: TGroupBox;
    EditClienteNome: TEdit;
    EditCliente: TIDBEditDialog;
    chkCliente: TCheckBox;
    gbxRepresentante: TGroupBox;
    chkRepres: TCheckBox;
    EditNomeVendedor: TEdit;
    EditVendedor: TIDBEditDialog;
    W7Panel2: TPanel;
    Panel2: TPanel;
    rgpSelecionar: TRadioGroup;
    rgpPrevisao: TGroupBox;
    EditPrevisao: TMaskEdit;
    dbEditLote: TIDBEditDialog;
    Label1: TLabel;
    EditLoteProducao: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure chkRepresClick(Sender: TObject);
    procedure rgpSelecionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chkPedidosClick(Sender: TObject);
    procedure rgpPeriodoDataClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MskDataFimChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrdemProducaoPedidos: TFrmOrdemProducaoPedidos;

implementation

uses FPrincipal, Global, Biblioteca, FOrdemProducao, SQLServer;

{$R *.dfm}

procedure TFrmOrdemProducaoPedidos.BitBtn1Click(Sender: TObject);
begin
   if rgpSelecionar.ItemIndex<0 then
   begin
      avisosistema('Selecione como deve Gerar produção');
      Exit;
   end;
   lblnCancelar :=False;

   dtDataIni     :=StrToDateDef(MskDataIni.Text,Date);
   dtDataFim     :=StrToDateDef(MskDataFim.Text,Date);
   dtPrevisao    :=StrToDateDef(EditPrevisao.Text,Date);
   strCliente    :=EditCliente.Text;
   strVendedor   :=EditVendedor.Text;
   nLoteProducao :=StrToIntDef(dbEditLote.text,0);

   if rgpSelecionar.ItemIndex=1 then
   begin
      if fncChecarPeriodoPedidosProduzir( dtDataIni,
                                       dtDataFim,
                                       StrToIntDef(strCliente,0),
                                       StrToIntDef(strVendedor,0)
                                      )=False then
      Begin
         Informar('Não há Pedidos de Vendas disponivel para produção dentro no periodo (ou cliente/vendedor) informado.');
         Abort;
      End;
   end;

   Close;

end;

procedure TFrmOrdemProducaoPedidos.BitBtn2Click(Sender: TObject);
begin
   lblnCancelar :=True;
   Close;
end;

procedure TFrmOrdemProducaoPedidos.chkClienteClick(Sender: TObject);
begin
   if chkCliente.Checked = True then
   Begin
      EditCliente.Enabled := False;
      lblnTodosClientes   := True;
   End
   Else
   Begin
      EditCliente.Enabled := True;
      lblnTodosClientes   := False;
      EditCliente.SetFocus;
   End;
end;

procedure TFrmOrdemProducaoPedidos.chkRepresClick(Sender: TObject);
begin
   if chkRepres.Checked = True then
   Begin
      lblnTodosClientes    := True;
      EditVendedor.Enabled := False;
   End
   Else
   Begin
      lblnTodosClientes    := False;
      EditVendedor.Enabled := True;
      EditVendedor.SetFocus;
   End;
end;

procedure TFrmOrdemProducaoPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrmOrdemProducaoPedidos.FormCreate(Sender: TObject);
begin
   // Se clicar no botão cancelar ou clicar no X do formulario
   lblnCancelar :=True;
   dtDataIni   :=Date;
   dtDataFim   :=Date;

   MskDataIni.Text   := DateToStr(dtDataIni);
   MskDataFim.Text   := DateToStr(dtDataFim+5);
   EditPrevisao.Text := DateToStr(dtDataFim+30);

end;

procedure TFrmOrdemProducaoPedidos.FormShow(Sender: TObject);
begin
   chkPedidosClick(Sender);
   rgpPeriodoDataClick(Sender);
   chkClienteClick(Sender);
   chkRepresClick(Sender);
   rgpSelecionarClick(Sender);
   rgpPeriodoDataClick(Sender);
end;

procedure TFrmOrdemProducaoPedidos.MskDataFimChange(Sender: TObject);
begin
   dtDataFim          :=  StrToDateTimeDef(EditPrevisao.text,date+20);
   EditPrevisao.Text  :=  DateToStr(dtDataFim);
end;

procedure TFrmOrdemProducaoPedidos.chkPedidosClick(Sender: TObject);
begin
   if chkPedidos.Checked = True then
   Begin
      lblnTodosPedidos              := True;
      gbxPedidosFiltros.Cursor      := crDefault;
      pnPeriodo.Enabled             := True;
      gbxClientes.Enabled           := True;
      gbxRepresentante.Enabled      := True;
      btnPedidosSelecionar.Enabled  := False;
      gbxPedidosFiltros.SetFocus;
   End
   Else
   Begin
      lblnTodosPedidos              := False;
      gbxPedidosFiltros.Cursor      := crNoDrop;
      pnPeriodo.Enabled             := False;
      gbxClientes.Enabled           := False;
      gbxRepresentante.Enabled      := False;
      btnPedidosSelecionar.Enabled  := True;
      btnPedidosSelecionar.SetFocus;
   End;
end;


procedure TFrmOrdemProducaoPedidos.rgpPeriodoDataClick(Sender: TObject);
begin
   case rgpPeriodoData.ItemIndex of
      0 : strPeriodoData   :='ENTREGA';
      1 : strPeriodoData   :='EMISSAO';
   end;

end;

procedure TFrmOrdemProducaoPedidos.rgpSelecionarClick(Sender: TObject);
begin
   case rgpSelecionar.ItemIndex of
      0,-1: Begin
             strNatureza                  :='MANUAL';
             gbxSelecionarPedidos.Cursor   := crNoDrop;
             gbxPedidosFiltros.Enabled     := False;
             gbxPedidosChecar.Enabled      := False;
             EditPrevisao.SetFocus;
           End;

      1  : Begin
             strNatureza                  :='PEDIDOS';
             gbxSelecionarPedidos.Cursor   := crDefault;
             gbxPedidosFiltros.Enabled     := True;
             gbxPedidosChecar.Enabled      := True;

             if fncChecarPedidosProduzir=False then
             Begin
                Informar('Não há Pedidos de Vendas aprovados/disponiveis para Produção');
                Abort;
             End;
          End;
   end;
end;

end.
