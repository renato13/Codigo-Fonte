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

unit FOrdemCorte;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, FFrameBotoes, ExtCtrls, Grids, DBGrids, StdCtrls,
   DBCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, db,
   uEstSearchDialogZeos, Mask, Buttons, IDBEdit, frxClass,    
   frxDBSet, DBAccess;

type
   TFrmOrdemCorte = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
      GroupBox1: TGroupBox;
      GroupBox2: TGroupBox;
      Panel1: TPanel;
      Panel3: TPanel;
      Panel5: TPanel;
      Label4: TLabel;
      Label5: TLabel;
      Label7: TLabel;
      DBEdit3: TDBEdit;
      DBEdit1: TDBEdit;
      DBEdit6: TDBEdit;
      LocalizaOrdemProducao: TIDBEditDialog;
      EditOPNome: TEdit;
      LocalizaOrdemCorte: TIDBEditDialog;
    FRX_OrdemCorte: TfrxReport;
      GroupBox3: TGroupBox;
      dbGrid_Referencias: TDBGrid;
      GridMateriaPrima: TDBGrid;
    db_MateriaPrima: TFDQuery;
    ds_MateriaPrimaTecidos: TDataSource;
    db_MateriaPrimaTecidos: TFDQuery;
    db_MateriaPrimaTecidosCODIGO: TIntegerField;
    db_MateriaPrimaTecidosPRODUTO: TStringField;
    db_MateriaPrimaTecidosDESCRICAO: TStringField;
    db_MateriaPrimaTecidosUND: TStringField;
    db_MateriaPrimaTecidosQTDE_METROS: TBCDField;
    db_MateriaPrimaTecidosVLR_UNIT: TBCDField;
    db_MateriaPrimaTecidosVLR_TOTAL: TBCDField;
    db_MateriaPrimaTecidosCOMPOSICAO: TIntegerField;
    db_MateriaPrimaTecidosCOMPOSICAO_DESCRICAO: TStringField;
    db_MateriaPrimaTecidosDIMENSIONAMENTO: TStringField;
    db_MateriaPrimaTecidosCOR: TStringField;
    db_MateriaPrimaTecidosTAMANHO: TStringField;
    ds_MateriaPrima: TDataSource;
    dts_MateriaPrimaGrade: TfrxDBDataset;
    ds_MateriaPrimaGrade: TDataSource;
    db_MateriaPrimaGrade: TFDQuery;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
      procedure SpeedButton1Click(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure LocalizaOrdemProducaoEnter(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmOrdemCorte: TFrmOrdemCorte;

implementation

uses FPrincipal, FBaseDados_PCP, Biblioteca, Global,
   UsuariosAcao;

{$R *.dfm}

procedure TFrmOrdemCorte.FormCreate(Sender: TObject);
begin

   Top := 10;
   Left := 10;

   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_OrdemCorte;

   FrmPrincipal.Mnu_OrdemCorte.Enabled := false;

   BaseDados_PCP.db_OrdemCorte.Close;
   BaseDados_PCP.db_OrdemCorte.Params.ParamByName('CODIGO').Clear;
   BaseDados_PCP.db_OrdemCorte.open;

   BaseDados_PCP.db_OrdemCorte_Enfesto.open;
   db_OrdemProduzir.open;

   // Reabrirtabela;

end;

procedure TFrmOrdemCorte.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_escape then
      Close;

end;

procedure TFrmOrdemCorte.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FrmPrincipal.Mnu_OrdemCorte.Enabled := True;

   BaseDados_PCP.db_OrdemCorte.Close;
   BaseDados_PCP.db_OrdemCorte_Enfesto.Close;

   Action := Cafree;
end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   LocalizaOrdemProducao.SetFocus;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   BaseDados_PCP.db_OrdemCorte_Enfesto.Cancel;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);
   BaseDados_PCP.db_OrdemCorte_Enfesto.edit;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);
   db_OrdemProduzir.Close;
   db_OrdemProducao_Referencias.Close;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   db_MateriaPrima.close;
   db_MateriaPrimaTecidos.close;

   db_OrdemProduzir.Close;
   db_OrdemProduzir.ParamByName('ORDEMPRODUCAO').Clear;
   db_OrdemProduzir.ParamByName('ORDEMPRODUCAO').AsInteger := BaseDados_PCP.db_OrdemCorte.FieldByName('ORDEM_PRODUCAO').AsInteger;
   db_OrdemProduzir.open;

   FRX_OrdemCorte.ShowReport;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if LocalizaOrdemCorte.Execute then
   begin

      BaseDados_PCP.db_OrdemCorte.Close;
      BaseDados_PCP.db_OrdemCorte.ParamByName('CODIGO').Clear;
      BaseDados_PCP.db_OrdemCorte.ParamByName('CODIGO').AsInteger :=
        LocalizaOrdemCorte.ResultFieldAsInteger('CODIGO');
      BaseDados_PCP.db_OrdemCorte.open;

      db_OrdemProducao_Referencias.Close;
      db_OrdemProducao_Referencias.ParamByName('ORDEMPRODUCAO').Clear;
      db_OrdemProducao_Referencias.ParamByName('ORDEMPRODUCAO').AsInteger :=
        BaseDados_PCP.db_OrdemCorte.FieldByName('ORDEM_PRODUCAO').AsInteger;
      db_OrdemProducao_Referencias.open;

   end;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   // close;
   Screen.FocusedForm.Close;
end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   If (BaseDados_PCP.db_OrdemCorte_Enfesto.state in [dsedit, dsinsert]) then
   begin
      BaseDados_PCP.db_OrdemCorte_Enfesto.Post;
   end;

end;

procedure TFrmOrdemCorte.LocalizaOrdemProducaoEnter(Sender: TObject);
begin

   If (BaseDados_PCP.db_OrdemCorte.state in [dsedit, dsinsert]) then
   Begin
      BaseDados_PCP.db_OrdemCorte.Post;
   End;

end;

procedure TFrmOrdemCorte.SpeedButton1Click(Sender: TObject);
begin

   avisosistema(' Por que FECHAR? ' + #13 + #10 +
     ' Se não fechar, não será possivel emitir ordem de produção. ' +
     ' Somente é possivel produzir após finalizaçao do departamento de corte.' +
     #13 + #10 + #13 + #10 +
     ' Atenção: A Ordem e Corte deve ser fechada somente após real término do corte das peças. '

     );

end;

end.
