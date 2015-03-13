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

unit FRelClientesMalaDireta;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, FrmRelatorios, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos;

type
   TFrmRelClientesMalaDireta = class(TForm)
      Panel1: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      Btn_ImprimirEmpresa: TBitBtn;
      Panel2: TPanel;
    RadioGTipoMala: TRadioGroup;
      RadioGroup1: TRadioGroup;
    FrameRelatorios1: TFrameRelatorios;
    GroupBox1: TGroupBox;
    EditClienteNome: TEdit;
    EditCliente: TIDBEditDialog;
    chkCliente: TCheckBox;
    BoxRepresentante: TGroupBox;
    chkVendedor: TCheckBox;
    EditNomeVendedor: TEdit;
    EditVendedor: TIDBEditDialog;
    BoxCidades: TGroupBox;
    chkCidade: TCheckBox;
    BoxEstados: TGroupBox;
    Label1: TLabel;
    chkEstado: TCheckBox;
    EditEstado: TComboBox;
    EditCidade: TIDBEditDialog;
    Edit1: TEdit;
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSairClick(Sender: TObject);
      procedure Btn_ImprimirEmpresaClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure chkVendedorClick(Sender: TObject);
    procedure chkCidadeClick(Sender: TObject);
    procedure chkEstadoClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelClientesMalaDireta: TFrmRelClientesMalaDireta;

implementation

uses Biblioteca, FPrincipal, FRelCliFones, FRelCliNumerica,
   FRelCliAlfa, FRelCliAnalitico, FRelCliCidades, FRelEtiquetaCliente,
   FRelCliBloqueados, Global, FRelEstados,
   FRelRepresentantes, FSelecionarClientes,
   FEtiquetaEmpresa;

{$R *.DFM}

procedure TFrmRelClientesMalaDireta.Btn_ImprimirClick(Sender: TObject);
begin

   //DataIni           := StrToDate(MskDataIni.text);
   //DataFim           := StrToDate(MskDataFim.text);
   strCliente       := Trim(EditCliente.text);
   strVendedor      := Trim(EditVendedor.text);
   strCidade        := Trim(EditCidade.text);
   strEstado           := uppercase( Trim(Copy(EditEstado.Text, 1, 2)) );

   // ordenar dados
   if RadioGroup1.ItemIndex = 0 then
      strOrdemDados := 'NOME';

   if RadioGroup1.ItemIndex = 1 then
      strOrdemDados := 'UF, NOMECIDADE, CEP, NOME';

   // Seleção Automatica;
   if RadioGTipoMala.ItemIndex = 0 then
   begin
      FrmEtiquetaCliente := TFrmEtiquetaCliente.create(self);
   end;

   // Seleção Manual;
   if RadioGTipoMala.ItemIndex = 1 then
   begin
      FrmSelecionarClientes := TFrmSelecionarClientes.create(self);
      FrmSelecionarClientes.ShowModal;
   end;



end;

procedure TFrmRelClientesMalaDireta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      Close;

end;

procedure TFrmRelClientesMalaDireta.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelClientesMalaDireta.Btn_ImprimirEmpresaClick(Sender: TObject);
begin
   FrmEtiquetaEmpresa := TFrmEtiquetaEmpresa.create(self);
end;

procedure TFrmRelClientesMalaDireta.chkCidadeClick(Sender: TObject);
begin
   if chkCidade.Checked = true then
   Begin
      EditCidade.Enabled := False;

   End
   Else
   Begin
      EditCidade.Enabled := true;
      EditCidade.SetFocus;
   End;

end;

procedure TFrmRelClientesMalaDireta.chkClienteClick(Sender: TObject);
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

procedure TFrmRelClientesMalaDireta.chkEstadoClick(Sender: TObject);
begin

   if chkEstado.Checked = true then
   Begin
      EditEstado.Enabled := False;

   End
   Else
   Begin
      EditEstado.Enabled := true;
      EditEstado.SetFocus;
   End;

end;

procedure TFrmRelClientesMalaDireta.chkVendedorClick(Sender: TObject);
begin
   if chkVendedor.Checked = true then
   Begin
      EditVendedor.Enabled := False;

   End
   Else
   Begin
      EditVendedor.Enabled := true;
      EditVendedor.SetFocus;
   End;

end;

end.
