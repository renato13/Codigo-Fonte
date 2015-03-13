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

unit FFaseProducaoDefeito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, StdCtrls, Buttons, ExtCtrls, Mask, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB,   DBCtrls,
  ComCtrls, jpeg, Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmFaseProducaoDefeito = class(TForm)
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    db_Defeito:  TFDQuery;
    ProgressBar1: TProgressBar;
    ds_Defeito: TDataSource;
    gbxFaseSeguinte: TGroupBox;
    Label2: TLabel;
    EditData: TDBEdit;
    dbEditPesquisarFasesDestino: TIDBEditDialog;
    EditNomeFaseProxima: TEdit;
    EditTerceirizado: TIDBEditDialog;
    EditNomeTerceirizado: TEdit;
    Edit1: TEdit;
    EditDefeito: TIDBEditDialog;
    Label5: TLabel;
    LabeledEdit2: TDBEdit;
    GroupBox3: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    lblCor: TLabel;
    lblTamanho: TLabel;
    Label4: TLabel;
    db_DefeitoEMPRESA: TIntegerField;
    db_DefeitoCODIGO: TIntegerField;
    db_DefeitoAPROVADO: TStringField;
    db_DefeitoDATA: TSQLTimeStampField;
    db_DefeitoREFERENCIA: TStringField;
    db_DefeitoDATAREGISTRO: TSQLTimeStampField;
    db_DefeitoCOR_ID: TIntegerField;
    db_DefeitoCOR: TStringField;
    db_DefeitoTAMANHO_ID: TIntegerField;
    db_DefeitoTAMANHO: TStringField;
    db_DefeitoORDEM_GRADE: TStringField;
    db_DefeitoQTDEPERDAS: TIntegerField;
    db_DefeitoTERCEIRIZADO: TIntegerField;
    db_DefeitoFASE: TIntegerField;
    db_DefeitoCELULA: TIntegerField;
    db_DefeitoMAQUINA: TIntegerField;
    db_DefeitoOPERADOR: TIntegerField;
    db_DefeitoPROCESSO: TIntegerField;
    db_DefeitoTURNO: TIntegerField;
    db_DefeitoQUALIDADE: TIntegerField;
    db_DefeitoDEFEITO: TIntegerField;
    db_DefeitoOBSERVACAO: TStringField;
    IDBEditDialog1: TIDBEditDialog;
    Edit2: TEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure db_DefeitoBeforeOpen(DataSet: TDataSet);
    procedure db_DefeitoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure db_DefeitoQTDEPERDASChange(Sender: TField);
  private
    { Private declarations }
  public
    procedure prcSalvar;
    { Public declarations }
  end;

var
  FrmFaseProducaoDefeito: TFrmFaseProducaoDefeito;

  lbPermiteDeletar  : Boolean;


implementation

uses FPrincipal, Biblioteca, Global, SQLServer, FFaseProducao,
  FFaseProducaoTransferirFaseGrade;

{$R *.dfm}


procedure TFrmFaseProducaoDefeito.BtnCancelarClick(Sender: TObject);
begin
   nQuantidadeDigitada :=0;
   close;

end;

procedure TFrmFaseProducaoDefeito.BtnOkClick(Sender: TObject);
begin
   prcSalvar;

   if pergunta('Deseja realmente concluir a Transferencia de fase?')=false then
      exit;


   lbPermiteDeletar :=False;
   nQuantidadeDigitada :=db_Defeito.FieldByName('QTDEPERDAS').AsInteger;

   AvisoSistema('Transferencia concluida com sucesso');

   close;

end;

procedure TFrmFaseProducaoDefeito.db_DefeitoBeforeOpen(
  DataSet: TDataSet);
begin
   db_Defeito.ParamByName('EMPRESA').AsInteger :=FSistema.Empresa;
   db_Defeito.ParamByName('CODIGO').AsInteger  :=nOrdemProducao;
end;

procedure TFrmFaseProducaoDefeito.db_DefeitoBeforePost(
  DataSet: TDataSet);
begin
   db_Defeito.FieldByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_Defeito.FieldByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_Defeito.FieldByName('APROVADO').AsString   :=  prcOrdemProducaoItens_retCampo(nOrdemProducao,'APROVADO');
   db_Defeito.FieldByName('DATA').AsDateTime     :=  StrToDate( prcOrdemProducaoItens_retCampo(nOrdemProducao,'DATA') );
   db_Defeito.FieldByName('REFERENCIA').AsString :=  strReferencia;
end;

procedure TFrmFaseProducaoDefeito.db_DefeitoQTDEPERDASChange(Sender: TField);
begin
   if (db_Defeito.FieldByName('QTDEPERDAS').AsInteger > FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('QTDE_PRODUZIR').AsInteger) then
   begin
      Erro('A quantidade que voce esta tentando informar como Defeito é maior que a quantidade disponivel.');
      db_Defeito.Cancel;
      Abort;
   end;

end;

procedure TFrmFaseProducaoDefeito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


  {Clicando no botão "Gravar..." a variavel lbPermiteDeletar é configurada
   para False (do qual nao permitirá deletar o registro ao sair do formulario)
   Mas se clicar em Cancelar ou no X do formulario, significa que o usuário
  desistou e deseja cancelar/deletar o que fez.}

  if lbPermiteDeletar then
  begin
     nQuantidadeDigitada :=0;

     if not db_Defeito.IsEmpty then
         db_Defeito.Delete;
  end;

  db_Defeito.Close;


  Action :=Cafree;

end;

procedure TFrmFaseProducaoDefeito.FormCreate(Sender: TObject);
begin
   lblCor.Caption       := '['+UpperCase( FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR').AsString)+']';
   lblTamanho.Caption   := '['+UpperCase(  FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString)+']';
   db_Defeito.Open;
end;

procedure TFrmFaseProducaoDefeito.FormShow(Sender: TObject);
begin

   lbPermiteDeletar :=True;

   if not db_Defeito.Active then
      db_Defeito.Open;

   db_Defeito.Append;
   db_Defeito.FieldByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_Defeito.FieldByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_Defeito.FieldByName('APROVADO').AsString   :=  prcOrdemProducaoItens_retCampo(nOrdemProducao,'APROVADO');
   db_Defeito.FieldByName('DATA').AsDateTime     :=  StrToDate( prcOrdemProducaoItens_retCampo(nOrdemProducao,'DATA') );
   db_Defeito.FieldByName('FASE').AsInteger      :=  nFaseOrigem;
   db_Defeito.FieldByName('REFERENCIA').AsString :=  strReferencia;

   db_Defeito.FieldByName('COR_ID').AsInteger     :=  FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR_ID').AsInteger;
   db_Defeito.FieldByName('TAMANHO_ID').AsInteger :=  FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO_ID').AsInteger;

   db_Defeito.FieldByName('COR').AsString        :=   FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR').AsString;
   db_Defeito.FieldByName('TAMANHO').AsString    :=   FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString;
   db_Defeito.FieldByName('DATAREGISTRO').AsDateTime  :=  Date;

   db_Defeito.Post;

   EditData.SetFocus;

end;

procedure TFrmFaseProducaoDefeito.prcSalvar;
begin
   if (db_Defeito.State in [dsedit,dsinsert]) then
      db_Defeito.Post;
end;



end.
