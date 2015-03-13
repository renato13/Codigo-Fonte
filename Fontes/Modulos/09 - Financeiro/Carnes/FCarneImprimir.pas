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

unit FCarneImprimir;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids,
   ACBrNFeDANFEClass, ACBrNFe, pcnConversao, DB,
       frxClass, frxDBSet,   ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type

   TFrmCarneImprimir = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel1: TPanel;
      Panel2: TPanel;
      BitBtn1: TBitBtn;
      BtnSair: TBitBtn;
      Panel3: TPanel;
      BitBtn9: TBitBtn;
      BitBtn10: TBitBtn;
      ds_ctaReceber: TDataSource;
      DBGrid2: TDBGrid;
      db_ctaReceber: TFDQuery;
      frxReport1: TfrxReport;
      dbCarnes: TfrxDBDataset;
      db_ctaReceberCODIGO: TIntegerField;
      db_ctaReceberNOTAFISCAL: TIntegerField;
      db_ctaReceberDOCUMENTO: TStringField;
      db_ctaReceberNOSSONUMERO: TStringField;
      db_ctaReceberDATA: TDateField;
      db_ctaReceberVENCIMENTO: TDateField;
      db_ctaReceberVALOR: TBCDField;
      db_ctaReceberCLIENTE: TIntegerField;
      db_ctaReceberNOME_CLIENTE: TStringField;
      db_ctaReceberVENDEDOR: TIntegerField;
      db_ctaReceberNOME_VENDEDOR: TStringField;
      db_ctaReceberIMPRESSO: TStringField;
      db_ctaReceberENDERECO: TStringField;
      db_ctaReceberCEP: TStringField;
      db_ctaReceberCPF_CNPJ: TStringField;
      db_ctaReceberTIPO: TStringField;
      db_ctaReceberNOME_CIDADE: TStringField;
      db_ctaReceberUF: TStringField;
      db_ctaReceberPLN_CONTA: TStringField;
      db_ctaReceberPLN_CONTA_NOME: TStringField;
      db_ctaReceberRG_IE: TStringField;
      frxReport2: TfrxReport;
    dbDlgProcurar: TIDBEditDialog;
      procedure BtnSairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure BitBtn10Click(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BitBtn1Click(Sender: TObject);
   private
      { Private declarations }
      procedure FecharTabelas;
      procedure AbrirTabelas;
   public
      { Public declarations }
   end;

var
   FrmCarneImprimir: TFrmCarneImprimir;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.dfm}

procedure TFrmCarneImprimir.AbrirTabelas;
begin
   db_ctaReceber.Open;

end;

procedure TFrmCarneImprimir.BitBtn10Click(Sender: TObject);
begin

   if dbDlgProcurar.Execute then
   begin
      db_ctaReceber.Close;
      db_ctaReceber.ParamByName('NOTAFISCAL').AsInteger := dbDlgProcurar.ResultFieldAsInteger('NOTAFISCAL');
      db_ctaReceber.Open;
   end;

end;

procedure TFrmCarneImprimir.BitBtn1Click(Sender: TObject);
begin
   frxReport1.ShowReport;
end;

procedure TFrmCarneImprimir.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmCarneImprimir.FecharTabelas;
begin
   db_ctaReceber.Close;

end;

procedure TFrmCarneImprimir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_ctaReceber.Close;
end;

procedure TFrmCarneImprimir.FormCreate(Sender: TObject);
begin
   db_ctaReceber.Close;
   db_ctaReceber.Open;
end;

procedure TFrmCarneImprimir.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F8 then
   begin
      BitBtn10Click(Sender);
   end;

   if Key = VK_ESCAPE then
      Close;

end;

end.
