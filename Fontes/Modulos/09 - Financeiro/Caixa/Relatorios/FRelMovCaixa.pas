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

unit FRelMovCaixa;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, FrmRelatorios, FDatas, frxClass, frxDBSet,
   DB,        Grids, DBGrids, ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmRelMovCaixa = class(TForm)
      Panel1: TPanel;
      RadioG: TRadioGroup;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      GroupBox3: TGroupBox;
      chkPlanos: TCheckBox;
      RadioGSaldoAnterior: TRadioGroup;
      FrameDatas1: TFrameDatas;
    FrameRelatorios1: TFrameRelatorios;
    frxRFechamentoCaixa: TfrxReport;
    dbFrxFechamentoCaixa: TfrxDBDataset;
    dbFechamentoCaixa: TFDQuery;
    EditPlanoContas: TIDBEditDialog;
    EditNomePlanoContas: TEdit;
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure chkPlanosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelMovCaixa: TFrmRelMovCaixa;

implementation

uses Biblioteca, Global, FBaseDados,
   FRelMovCaixaSaldoDiarioAnalitico, FRelCaixaSimplificado, FPrincipal;
{$R *.DFM}

procedure TFrmRelMovCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   FreeAndNil( FrmRelMovCaixa );
end;

procedure TFrmRelMovCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
      close;

end;

procedure TFrmRelMovCaixa.Btn_ImprimirClick(Sender: TObject);
begin

   // Atlz_SaldoCX( BaseDados.ADO_Geral, BaseDados.ADO_SaldoCaixa );
   // substituir  por outro comando desenvolvido e mais eficiente. Verificar.

   // Totais por conta
   If RadioG.ItemIndex = 0 then
   Begin
      FrmRelCaixaSintetico := TFrmRelCaixaSintetico.create(self);
   End;

   // Saldo Diário - Anaitico
   If RadioG.ItemIndex = 1 then
   Begin
      FrmRelMovCaixaSaldoDiarioAnalitico := TFrmRelMovCaixaSaldoDiarioAnalitico.create(self);
   End;

   If RadioG.ItemIndex = 2 then
   Begin
      dbFechamentoCaixa.close;
      dbFechamentoCaixa.ParamByName('DATA_INI').AsDate :=        StrToDate(FrameDatas1.MskDataIni.text);
      dbFechamentoCaixa.ParamByName('DATA_FIM').AsDate :=        StrToDate(FrameDatas1.MskDataFim.text);
      dbFechamentoCaixa.open;
      frxRFechamentoCaixa.ShowReport;
   End;

End;

procedure TFrmRelMovCaixa.FormShow(Sender: TObject);
begin
     TRadioGroup(RadioG.Controls[0]).Enabled:= False;
     TRadioGroup(RadioG.Controls[1]).Enabled:= False;
end;

procedure TFrmRelMovCaixa.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmRelMovCaixa.chkPlanosClick(Sender: TObject);
begin

   if chkPlanos.Checked = true then
   Begin
      EditPlanoContas.Enabled := False;
   End
   Else
   Begin
      EditPlanoContas.Enabled := true;
      EditPlanoContas.SetFocus;
   End;

end;

end.
