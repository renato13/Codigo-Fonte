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

unit FRomaneio;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, DB, Grids, DBGrids,
       FrmRelatorios,   frxClass, frxDBSet, Classe.Global,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRomaneio = class(TForm)
      Panel1: TPanel;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      MskDataFim: TMaskEdit;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      DBGrid1: TDBGrid;
    ds_transportadora: TDataSource;
    db_transportadora:  TFDQuery;
    FrameRelatorios1: TFrameRelatorios;
    dbromaneio_clientes: TFDQuery;
    dbfp_romaneio_clientes: TfrxDBDataset;
    frx_Romeio: TfrxReport;
    dbfp_transportadora: TfrxDBDataset;
      procedure Btn_SairClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSairClick(Sender: TObject);
      procedure DBGrid1Enter(Sender: TObject);
      procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);

   private
    procedure CarregarDados;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRomaneio: TFrmRomaneio;

implementation

uses Biblioteca, FPrincipal, Global;

{$R *.DFM}

procedure TFrmRomaneio.Btn_SairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRomaneio.MskDataIniExit(Sender: TObject);
begin
   if TESTAR_DATA(MskDataIni.text) = false then
   begin
      Aviso('Data Inválida...');
      MskDataIni.setfocus;
   end;
   CarregarDados;

end;

procedure TFrmRomaneio.MskDataFimExit(Sender: TObject);
begin
   if TESTAR_DATA(MskDataFim.text) = false then
   begin
      Aviso('Data Inválida...');
      MskDataFim.setfocus;
   end;


   CarregarDados;

end;

procedure TFrmRomaneio.Btn_ImprimirClick(Sender: TObject);
begin

     dbromaneio_clientes.Close;
     dbromaneio_clientes.ParamByName('EMPRESA').AsInteger          := FSistema.Empresa;
     dbromaneio_clientes.ParamByName('DATA1').AsDate               := StrTodate(MskDataIni.text);
     dbromaneio_clientes.ParamByName('DATA2').AsDate               := StrTodate(MskDataFim.text);
     dbromaneio_clientes.ParamByName('TRANSPORTADORA').AsInteger   := db_transportadora.Fieldbyname('TRANSPORTADORA').AsInteger;

     frx_Romeio.ShowReport;

     dbromaneio_clientes.Close;

   {
   Try
      wInteger[0] := db_transportadora.Fieldbyname('TRANSP').AsInteger;
   Except
      wInteger[0] := 0;
   End;

   FrmPrintRomaneio := TFrmPrintRomaneio.Create(Self);
   }

End;

procedure TFrmRomaneio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      Close;

end;

procedure TFrmRomaneio.FormResize(Sender: TObject);
begin
  DimensionarGrid(DBGrid1,self);
end;

procedure TFrmRomaneio.FormShow(Sender: TObject);
begin
   CarregarDados;
end;

procedure TFrmRomaneio.GroupBox2Exit(Sender: TObject);
begin
   CarregarDados;
end;

procedure TFrmRomaneio.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRomaneio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TFrmRomaneio.FormCreate(Sender: TObject);
begin

   MskDataIni.text := dateToStr(Date);
   MskDataFim.text := dateToStr(Date);

   CarregarDados;

end;

procedure TFrmRomaneio.DBGrid1Enter(Sender: TObject);
begin
   CarregarDados;
end;

procedure TFrmRomaneio.DBGrid1DblClick(Sender: TObject);
begin
   Btn_Imprimir.Click;
end;

procedure TFrmRomaneio.CarregarDados;
begin
   db_transportadora.close;
   db_transportadora.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_transportadora.ParamByName('DATA1').AsDate  := StrTodate(MskDataIni.text);
   db_transportadora.ParamByName('DATA2').AsDate  := StrTodate(MskDataFim.text);
   db_transportadora.open;
   DimensionarGrid(DBGrid1,self);

end;

end.
