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

unit FFaseProducaoPerdaEstornar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, StdCtrls, Buttons, ExtCtrls, Mask, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB,   DBCtrls,
  ComCtrls, jpeg, Grids, DBGrids, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmFaseProducaoPerdaEstornar = class(TForm)
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    db_Perda:  TFDQuery;
    ProgressBar1: TProgressBar;
    ds_Perda: TDataSource;
    GroupBox3: TGroupBox;
    Image1: TImage;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    editQuantidade: TLabeledEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure db_PerdaBeforeOpen(DataSet: TDataSet);
    procedure db_PerdaBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure db_PerdaAfterOpen(DataSet: TDataSet);
    procedure db_PerdaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure prcSalvar;
    { Public declarations }
  end;

var
  FrmFaseProducaoPerdaEstornar: TFrmFaseProducaoPerdaEstornar;



implementation

uses FPrincipal, Biblioteca, Global, SQLServer, FFaseProducao,
  FFaseProducaoTransferirFaseGrade;

{$R *.dfm}


procedure TFrmFaseProducaoPerdaEstornar.BtnCancelarClick(Sender: TObject);
begin
   nQuantidadeDigitada :=0;
   close;

end;

procedure TFrmFaseProducaoPerdaEstornar.BtnOkClick(Sender: TObject);
begin
   prcSalvar;


   nQuantidadeDigitada := StrToIntDef(editQuantidade.Text ,0);

   if nQuantidadeDigitada<1 then
   begin
      Erro('Informe a quantidade que deseja estornar.');
      editQuantidade.SetFocus;
      exit;
   end;

   if  (db_Perda.IsEmpty)  then
   begin
      Erro('Não ha registro para ser estornado.');
      exit;
   end;

   if (nQuantidadeDigitada > FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('QTDE_PERDA').AsInteger) then
   begin
      Erro('A quantidade que voce esta tentando estornar é maior que a quantidade real.');
      exit;
   end;



   if pergunta('Deseja realmente estornar este defeito?')=false then
      exit;



   // se a quantidade informada for a mesma que da tabela, significa que esta estornando tudo
   // diante disso deletar o registro para evitar qualquer outra movimentação

   // se a quantidade informada for menor que da tabela, entao diminuir.
   if  (nQuantidadeDigitada<db_Perda.FieldByName('QTDEPERDAS').AsInteger) then
   begin
      db_Perda.edit;
      db_Perda.FieldByName('QTDEPERDAS').AsInteger := db_Perda.FieldByName('QTDEPERDAS').AsInteger - nQuantidadeDigitada;
      db_Perda.post;
   end;

   if  (nQuantidadeDigitada=db_Perda.FieldByName('QTDEPERDAS').AsInteger) then
   begin
      db_Perda.Delete;
   end;


   AvisoSistema('Defeito estornado com sucesso');

   close;

end;

procedure TFrmFaseProducaoPerdaEstornar.db_PerdaAfterOpen(
  DataSet: TDataSet);
begin
   editQuantidade.Text := IntToStr( StrToIntDef(db_Perda.FieldByName('QTDEPERDAS').AsString,0) );

end;

procedure TFrmFaseProducaoPerdaEstornar.db_PerdaAfterScroll(
  DataSet: TDataSet);
begin
   editQuantidade.Text := IntToStr( StrToIntDef(db_Perda.FieldByName('QTDEPERDAS').AsString,0) );

end;

procedure TFrmFaseProducaoPerdaEstornar.db_PerdaBeforeOpen(
  DataSet: TDataSet);
begin
   db_Perda.ParamByName('EMPRESA').AsInteger :=FSistema.Empresa;
   db_Perda.ParamByName('CODIGO').AsInteger  :=nOrdemProducao;
end;

procedure TFrmFaseProducaoPerdaEstornar.db_PerdaBeforePost(
  DataSet: TDataSet);
begin
   db_Perda.FieldByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_Perda.FieldByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_Perda.FieldByName('APROVADO').AsString   :=  prcOrdemProducaoItens_retCampo(nOrdemProducao,'APROVADO');
   db_Perda.FieldByName('DATA').AsDateTime     :=  StrToDate( prcOrdemProducaoItens_retCampo(nOrdemProducao,'DATA') );
   db_Perda.FieldByName('REFERENCIA').AsString :=  strReferencia;
end;

procedure TFrmFaseProducaoPerdaEstornar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  db_Perda.Close;
  Action :=Cafree;

end;

procedure TFrmFaseProducaoPerdaEstornar.FormCreate(Sender: TObject);
begin
   nQuantidadeDigitada :=0;
   db_Perda.Open;
end;

procedure TFrmFaseProducaoPerdaEstornar.FormShow(Sender: TObject);
begin

   db_Perda.close;
   db_Perda.ParamByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_Perda.ParamByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_Perda.Open;

   DBGrid1.SetFocus;

end;

procedure TFrmFaseProducaoPerdaEstornar.prcSalvar;
begin
   if (db_Perda.State in [dsedit,dsinsert]) then
      db_Perda.Post;
end;



end.
