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

unit FRelFechamentoCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, Mask, DB,    
      FrmRelatorios, 
  ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBarra;

type
  TFrmRelFechamentoCaixa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtnSair: TBitBtn;
    Btn_Imprimir: TBitBtn;
    GrpPlanoContas: TGroupBox;
    chkPlanos: TCheckBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    MskDataIni: TMaskEdit;
    MskDataFim: TMaskEdit;
    RadioMovimentacao: TRadioGroup;
    RadioStatus: TRadioGroup;
    FrameRelatorios1: TFrameRelatorios;
    DCodPlano: TIDBEditDialog;
    EditNomePlanoContas: TEdit;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    chkDepartamento: TCheckBox;
    EditDepartamento: TIDBEditDialog;
    EditDepartamentoNome: TEdit;
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure chkPlanosClick(Sender: TObject);
    procedure MskDataIniExit(Sender: TObject);
    procedure MskDataFimExit(Sender: TObject);
    procedure chkDepartamentoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFechamentoCaixa: TFrmRelFechamentoCaixa;

implementation

uses Biblioteca, Global, FBaseDados,
  FRelDemonstrativoAnalitico, FRelFechamentoCaixaAnalitico;

{$R *.DFM}


procedure TFrmRelFechamentoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  action :=cafree;
end;


procedure TFrmRelFechamentoCaixa.Btn_ImprimirClick(Sender: TObject);
begin

   FrmRelFechamentoCaixaAnalitico:=TFrmRelFechamentoCaixaAnalitico.create(self);
End;

procedure TFrmRelFechamentoCaixa.chkDepartamentoClick(Sender: TObject);
begin

  if chkDepartamento.Checked=true then
  Begin
    EditDepartamento.Enabled   :=False;
  End
  Else
  Begin
    EditDepartamento.Enabled   :=True;
  End;

end;

procedure TFrmRelFechamentoCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin

  If Key = #27 then
     Close;

end;

procedure TFrmRelFechamentoCaixa.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmRelFechamentoCaixa.chkPlanosClick(Sender: TObject);
begin

  if chkPlanos.Checked=true then
  Begin
    DCodPlano.Enabled           :=False;
    EditNomePlanoContas.Enabled :=False;
  End
  Else
  Begin
    DCodPlano.Enabled           :=True;
    EditNomePlanoContas.Enabled :=True;
  End;


end;

procedure TFrmRelFechamentoCaixa.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text:=fncDataValidar(MskDataIni.text);
end;

procedure TFrmRelFechamentoCaixa.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.text:=fncDataValidar(MskDataFim.text);

end;

end.
