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

unit FEtiquetacaixa;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, StdCtrls, Buttons,
     Grids, DBGrids,    
     frxClass, frxDBSet, FFrameBarra, ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmEtiquetacaixa = class(TForm)
    db_notasfiscais:  TFDQuery;
    ds_notasfiscais: TDataSource;
    db_clientes: TFDQuery;
    dbfp_notasfiscais: TfrxDBDataset;
    dbfp_clientes: TfrxDBDataset;
    frx_Romeio: TfrxReport;
    db_notasfiscaisEMPRESA: TIntegerField;
    db_notasfiscaisNOTAFISCAL: TIntegerField;
    db_notasfiscaisCLIENTE: TIntegerField;
    db_notasfiscaisCLIENTE_NOME: TStringField;
    db_notasfiscaisDATA: TSQLTimeStampField;
    db_notasfiscaisTRANSPORTADORA_NOME: TStringField;
    db_notasfiscaisTRANSPORTADORA_VOLUME: TIntegerField;
    db_notasfiscaisCLIENTE_FONE: TStringField;
    db_notasfiscaisVLR_TOTAL: TBCDField;
    DBGrid1: TDBGrid;
    FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    Panel2: TPanel;
    EditQtde: TLabeledEdit;
    BtnImprimir: TBitBtn;
    BtnProcurar: TBitBtn;
    BtnSair: TBitBtn;
    dbProcurarNFe: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnProcurarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure db_notasfiscaisAfterScroll(DataSet: TDataSet);
    procedure BtnSairClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

   private
    procedure CarregarDados;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmEtiquetacaixa: TFrmEtiquetacaixa;

implementation

uses FPrincipal, SQLServer, Global, Biblioteca;


{$R *.dfm}

procedure TFrmEtiquetacaixa.FormCreate(Sender: TObject);
begin
   CarregarDados;
end;

procedure TFrmEtiquetacaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_notasfiscais.Close;

   FreeAndNil( FrmEtiquetacaixa );

end;

procedure TFrmEtiquetacaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_F8 then
   begin
      BtnProcurar.Click;
   End;


end;

procedure TFrmEtiquetacaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #27 then
   begin
      EditQtde.text := '';
      BtnSairClick(Sender);
   end;

end;

procedure TFrmEtiquetacaixa.FormResize(Sender: TObject);
begin
  DimensionarGrid(DBGrid1,self);
end;

procedure TFrmEtiquetacaixa.BtnImprimirClick(Sender: TObject);
begin
     db_clientes.Close;
     db_clientes.Close;
     db_clientes.ParamByName('EMPRESA').AsInteger      := FSistema.Empresa;
     db_clientes.ParamByName('NOTAFISCAL').AsInteger   := db_notasfiscais.Fieldbyname('NOTAFISCAL').AsInteger;

     frx_Romeio.ShowReport;

     db_clientes.Close;

end;

procedure TFrmEtiquetacaixa.BtnProcurarClick(Sender: TObject);
begin
   if dbProcurarNFe.Execute then
   begin
      db_notasfiscais.Locate('CODIGO',dbProcurarNFe.ResultFieldAsInteger('CODIGO'),[]);
   end;
end;

procedure TFrmEtiquetacaixa.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmEtiquetacaixa.CarregarDados;
begin

   db_notasfiscais.close;
   db_notasfiscais.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   //db_notasfiscais.ParamByName('DATA1').AsDate  := Date-600;
   //db_notasfiscais.ParamByName('DATA2').AsDate  := Date;
   db_notasfiscais.open;

end;



procedure TFrmEtiquetacaixa.db_notasfiscaisAfterScroll(DataSet: TDataSet);
begin
   EditQtde.Text := db_notasfiscais.FieldByname('TRANSPORTADORA_VOLUME').AsString;
end;

end.
