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

unit FRecibo;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB,    
   DBCtrls, Mask, ACBrBase, ACBrExtenso,    ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBarra, FFrameBotoes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRecibo = class(TForm)
      db_recibo: TFDQuery;
      GroupBox1: TGroupBox;
      Label2: TLabel;
      Label5: TLabel;
      EditNOME: TDBEdit;
      ds_recibo: TDataSource;
      GroupBox2: TGroupBox;
      EditValor: TDBEdit;
      Label3: TLabel;
      DBEdit2: TDBEdit;
      Label1: TLabel;
      EditReferencia: TDBEdit;
      Label4: TLabel;
      Editdata: TDBEdit;
      Label6: TLabel;
      ACBrExtenso1: TACBrExtenso;
      GroupBox3: TGroupBox;
      DBMemo1: TDBMemo;
      DBRadioGroup1: TDBRadioGroup;
    db_reciboCODIGO: TIntegerField;
    db_reciboDATA: TSQLTimeStampField;
    db_reciboTIPO: TStringField;
    db_reciboNOME: TStringField;
    db_reciboEXTENSO: TStringField;
    db_reciboVALOR: TBCDField;
    db_reciboHISTORICO: TStringField;
    FrmFrameBarra1: TFrmFrameBarra;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbEditPesquisar: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure db_reciboVALORChange(Sender: TField);
    procedure db_reciboNewRecord(DataSet: TDataSet);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRecibo: TFrmRecibo;

implementation

uses FPrincipal, Global, Biblioteca, FReciboImprimir, FBaseDados;

{$R *.dfm}

procedure TFrmRecibo.FormCreate(Sender: TObject);
begin
   ///
   FrmFrameBotoes1.DataSource := ds_recibo;
   db_recibo.open;
end;

procedure TFrmRecibo.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   Editdata.SetFocus;

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
   FrmReciboImprimir := TFrmReciboImprimir.create(self);

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      FrmFrameBotoes1.SpbCancelarClick(Sender);
      db_recibo.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   End;

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmRecibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   //
   db_recibo.close;

   FreeAndNil( FrmRecibo );

end;

procedure TFrmRecibo.db_reciboNewRecord(DataSet: TDataSet);
begin
   db_recibo.FieldByname('DATA').AsDateTime := Date;
   db_recibo.FieldByname('TIPO').AsString := 'C';

end;

procedure TFrmRecibo.db_reciboVALORChange(Sender: TField);
begin

   ACBrExtenso1.Valor := db_recibo.FieldByname('Valor').AsFloat;

   db_recibo.FieldByname('EXTENSO').AsString := UpperCase(ACBrExtenso1.Texto);

end;

end.
