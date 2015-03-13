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


unit FControleCaixa;

interface

uses
   Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Grids, ExtCtrls, Mask, Buttons, DBGrids, DBCtrls, Db, DBTables,
   Menus, SysUtils, ComCtrls, QRCtrls, ImgList,  
   Variants,    
   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos, FFrameBotoes, FFrameBarra,
    
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type

   TFrmControleCaixa = class(TForm)
      PaginaCaixa: TPageControl;
      Tab_Principal: TTabSheet;
      Tab_Edicao: TTabSheet;
      DbGrid_NotaFiscal: TDBGrid;
      Panel2: TPanel;
      DBTextNF: TDBText;
      Panel3: TPanel;
      DBText1: TDBText;
      Panel4: TPanel;
      DBText2: TDBText;
      Panel5: TPanel;
      DBText3: TDBText;
      Panel6: TPanel;
      DBText4: TDBText;
      DS_Caixa: TDataSource;
      db_CAIXA: TFDQuery;
      Label3: TLabel;
      EditDocumento: TDBEdit;
      Label4: TLabel;
      DBEdit4: TDBEdit;
      Label7: TLabel;
      DBEdit9: TDBEdit;
      LblCredito: TLabel;
      EditCredito: TDBEdit;
      EditDebito: TDBEdit;
      LblDebito: TLabel;
      EditNomePlanoContas: TEdit;
      Edit2: TEdit;
      EstSearchDialogZeos1: TIDBEditDialog;
      Navegador: TDBNavigator;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      DCodPlano: TIDBEditDialog;
    db_CAIXACODIGO: TIntegerField;
    db_CAIXADATA: TSQLTimeStampField;
    db_CAIXADOCUMENTO: TStringField;
    db_CAIXADEPARTAMENTO: TIntegerField;
    db_CAIXAPLN_CONTA_CLASSE: TIntegerField;
    db_CAIXAPLN_CONTA: TStringField;
    db_CAIXADC: TStringField;
    db_CAIXAHISTORICO: TStringField;
    db_CAIXAVLR_CREDITO: TBCDField;
    db_CAIXAVLR_DEBITO: TBCDField;
    db_CAIXAMES: TIntegerField;
    db_CAIXAANO: TIntegerField;
    db_CAIXAFORMA_PAGTO: TIntegerField;
    db_CAIXAEFETIVADO: TStringField;
    db_CAIXACONTACAIXA: TIntegerField;
    EditNomeContaCaixa: TEdit;
    ContaProcurar: TIDBEditDialog;
    dbEditPesquisar: TIDBEditDialog;
      procedure db_CAIXAAfterScroll(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);

      procedure DbGrid_ItensKeyPress(Sender: TObject; var Key: Char);
      procedure Sair1Click(Sender: TObject);

      // Rotinas Tercerizadas

      procedure Mnu_SairClick(Sender: TObject);
      procedure DbGrid_NotaFiscalDblClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure db_CAIXANewRecord(DataSet: TDataSet);
      procedure db_CAIXAPLN_CONTAChange(Sender: TField);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

   private
      { Private declarations }

      Procedure ValidarCampos;

   public
      { Public declarations }

   end;

var
   FrmControleCaixa: TFrmControleCaixa;
   vlrvar: Integer;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FRelMovCaixa, Classe.Usuarios;


{$R *.DFM}

procedure TFrmControleCaixa.FormCreate(Sender: TObject);
begin

   PaginaCaixa.ActivePage := Tab_Principal;
   FrmFrameBotoes1.DataSource := DS_Caixa;

   db_CAIXA.Open;

End;

procedure TFrmControleCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
      close;

end;

procedure TFrmControleCaixa.FormResize(Sender: TObject);
begin
  DimensionarGrid(DbGrid_NotaFiscal,self);

end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   PaginaCaixa.ActivePage := Tab_Edicao;

   db_CAIXA.close;
   db_CAIXA.open;
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditDocumento.SetFocus;

end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   PaginaCaixa.ActivePage := Tab_Principal;

end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   AcaoUserName[0] := 'Deletou registro do movimento de caixa: ' +sLineBreak+
     'Documento.......: ' + db_CAIXA.FieldByName('DOCUMENTO').AsString + #13 +#10 +
     'Data............: ' + db_CAIXA.FieldByName('DATA').AsString + #13 +     #10 +
     'Operação........: ' + db_CAIXA.FieldByName('DC').AsString + #13 +     #10 +
     'Historico.......: ' + db_CAIXA.FieldByName('HISTORICO').AsString +     #13 + #10 +
     'Valor...........: ' + iif(db_CAIXA.FieldByName('VLR_CREDITO').AsFloat = 0, db_CAIXA.FieldByName('VLR_CREDITO').AsString,     db_CAIXA.FieldByName('VLR_DEBITO').AsString);

   FrmFrameBotoes1.SpbExcluirClick(Sender);

   FUsuario.prcLogUsuario('controle de caixa',AcaoUserName[0]);

end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   FrmRelMovCaixa := TFrmRelMovCaixa.create(self);
   FrmRelMovCaixa.Showmodal;

end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      FrmFrameBotoes1.SpbCancelarClick(Sender);
      db_CAIXA.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   End;
end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmControleCaixa.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmControleCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_CAIXA.close;

   FreeAndNil( FrmControleCaixa );

end;

procedure TFrmControleCaixa.DbGrid_ItensKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmControleCaixa.Sair1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmControleCaixa.ValidarCampos;
begin

   If BuscaPlanoContasTipo(db_CAIXA.FieldByName('PLN_CONTA').AsString) = 'CREDITO' then
   begin

      LblCredito.Enabled := True;
      EditCredito.Enabled := True;

      LblDebito.Enabled := False;
      EditDebito.Enabled := False;

      If (db_CAIXA.state in [dsedit, dsinsert]) then
         db_CAIXA.FieldByName('VLR_DEBITO').AsFloat := 0;

   end;

   If BuscaPlanoContasTipo(db_CAIXA.FieldByName('PLN_CONTA').AsString) = 'DEBITO' then
   begin

      LblDebito.Enabled := True;
      EditDebito.Enabled := True;

      LblCredito.Enabled := False;
      EditCredito.Enabled := False;

      If (db_CAIXA.state in [dsedit, dsinsert]) then
         db_CAIXA.FieldByName('VLR_CREDITO').AsFloat := 0;

   end;

end;

procedure TFrmControleCaixa.Mnu_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmControleCaixa.DbGrid_NotaFiscalDblClick(Sender: TObject);
begin

   PaginaCaixa.ActivePage := Tab_Edicao;
   TDatas := db_CAIXA.FieldByName('DATA').AsDateTime;

End;

procedure TFrmControleCaixa.BtnExcluirClick(Sender: TObject);
begin

   If db_CAIXA.IsEmpty then
   Begin
      Informar('Não há dados para excluir');
      Exit;
   end;

   AcaoUserName[0] := 'Deletou registro do movimento de caixa: ' +sLineBreak+
     'Data Movimento..: ' + db_CAIXA.FieldByName('DATA').AsString +sLineBreak+
     'Operacao........: ' + BuscaPlanoContasTipo(db_CAIXA.FieldByName('PLN_CONTA').AsString) + #13 +#10 +
     'Historico.......: ' + db_CAIXA.FieldByName('HISTORICO').AsString + sLineBreak+
     'Valor...........: ' + iif(db_CAIXA.FieldByName('VLR_CREDITO').AsFloat = 0, db_CAIXA.FieldByName('VLR_CREDITO').AsString,db_CAIXA.FieldByName('VLR_DEBITO').AsString);

   If Pergunta('Deseja realmente excluir este registro?') = False Then
      Exit;

   db_CAIXA.Delete;
   FUsuario.prcLogUsuario('controle de caixa',AcaoUserName[0]);

End;

procedure TFrmControleCaixa.db_CAIXANewRecord(DataSet: TDataSet);
begin

   LblCredito.Enabled := False;
   LblDebito.Enabled := False;
   EditCredito.Enabled := False;
   EditDebito.Enabled := False;

   db_CAIXA.FieldByName('DATA').AsDateTime := Date;

end;

procedure TFrmControleCaixa.db_CAIXAPLN_CONTAChange(Sender: TField);
begin

   ValidarCampos;

   db_CAIXA.FieldByName('PLN_CONTA_CLASSE').AsInteger :=     BuscaPlanoContasID(db_CAIXA.FieldByName('PLN_CONTA').AsString);
   db_CAIXA.FieldByName('DC').AsString := BuscaPlanoContasTipo(db_CAIXA.FieldByName('PLN_CONTA').AsString);

end;

procedure TFrmControleCaixa.db_CAIXAAfterScroll(DataSet: TDataSet);
begin

   If BuscaPlanoContasTipo(db_CAIXA.FieldByName('PLN_CONTA').AsString) = 'CREDITO' then
   begin

      LblCredito.Enabled := True;
      EditCredito.Enabled := True;

      LblDebito.Enabled := False;
      EditDebito.Enabled := False;

   end;

   If BuscaPlanoContasTipo(db_CAIXA.FieldByName('PLN_CONTA').AsString) = 'DEBITO' then
   begin

      LblDebito.Enabled := True;
      EditDebito.Enabled := True;

      LblCredito.Enabled := False;
      EditCredito.Enabled := False;

   end;

end;

End.
