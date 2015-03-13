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


unit FControleBancario;

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
   TFrmControleBancario = class(TForm)
      PageControl1: TPageControl;
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
      DS_CtrlBancario: TDataSource;
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
      EditContaCorrente: TEdit;
      EditConta_Credito: TIDBEditDialog;
      db_CtrlBancario:  TFDQuery;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      Navegador: TDBNavigator;
      DCodPlano: TIDBEditDialog;
    db_CtrlBancarioCODIGO: TIntegerField;
    db_CtrlBancarioDOCUMENTO: TStringField;
    db_CtrlBancarioCTA_CORRENTE: TIntegerField;
    db_CtrlBancarioDEPARTAMENTO: TIntegerField;
    db_CtrlBancarioPLN_CONTA: TStringField;
    db_CtrlBancarioDC: TStringField;
    db_CtrlBancarioDATA: TSQLTimeStampField;
    db_CtrlBancarioMES: TIntegerField;
    db_CtrlBancarioANO: TIntegerField;
    db_CtrlBancarioHISTORICO: TStringField;
    db_CtrlBancarioVLR_CREDITO: TBCDField;
    db_CtrlBancarioVLR_DEBITO: TBCDField;
    db_CtrlBancarioEFETIVADO: TStringField;
    ContaProcurar: TIDBEditDialog;
    EditNomeContaCaixa: TEdit;
    db_CtrlBancarioCONTACAIXA: TIntegerField;
    dbEditPesquisar: TIDBEditDialog;
      procedure db_CtrlBancarioAfterScroll(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);

      procedure DbGrid_ItensKeyPress(Sender: TObject; var Key: Char);
      procedure Sair1Click(Sender: TObject);

      // Rotinas Tercerizadas

      procedure Mnu_SairClick(Sender: TObject);
      procedure DbGrid_NotaFiscalDblClick(Sender: TObject);
      procedure db_CtrlBancarioNewRecord(DataSet: TDataSet);
      procedure EditPlanoExit(Sender: TObject);
      procedure db_CtrlBancarioPLN_CONTAChange(Sender: TField);
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
   FrmControleBancario: TFrmControleBancario;
   vlrvar: Integer;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FRelMovBancario,
  Classe.Usuarios;

{$R *.DFM}

procedure TFrmControleBancario.FormCreate(Sender: TObject);
begin

   PageControl1.ActivePage := Tab_Principal;

   FrmFrameBotoes1.DataSource := DS_CtrlBancario;
   db_CtrlBancario.open;

End;

procedure TFrmControleBancario.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
      close;

end;

procedure TFrmControleBancario.FormResize(Sender: TObject);
begin
  DimensionarGrid(DbGrid_NotaFiscal,self);

end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbAdicionarClick
  (Sender: TObject);
begin

   PageControl1.ActivePage := Tab_Edicao;

   db_CtrlBancario.close;
   db_CtrlBancario.open;
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditDocumento.SetFocus;

end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   PageControl1.ActivePage := Tab_Principal;

end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin

   AcaoUserName[0] := 'Deletou registro do movimento bancário: ' + #13 + #10 +
     'Documento.......: ' + db_CtrlBancario.FieldByName('DOCUMENTO').AsString +
     #13 + #10 + 'Data............: ' + db_CtrlBancario.FieldByName('DATA')
     .AsString + #13 + #10 + 'Operação........: ' + db_CtrlBancario.FieldByName
     ('DC').AsString + #13 + #10 + 'Historico.......: ' +
     db_CtrlBancario.FieldByName('HISTORICO').AsString + #13 + #10 +
     'Valor...........: ' + iif(db_CtrlBancario.FieldByName('VLR_CREDITO')
     .AsFloat = 0, db_CtrlBancario.FieldByName('VLR_CREDITO').AsString,
     db_CtrlBancario.FieldByName('VLR_DEBITO').AsString);

   FrmFrameBotoes1.SpbExcluirClick(Sender);

   FUsuario.prcLogUsuario('controle bancario',AcaoUserName[0]);

end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin
   FrmRelMovBancario := TFrmRelMovBancario.Create(self);
   FrmRelMovBancario.Showmodal;
end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      FrmFrameBotoes1.SpbCancelarClick(Sender);
      db_CtrlBancario.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   End;
end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmControleBancario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_CtrlBancario.close;

   FreeAndNil( FrmControleBancario );

end;

procedure TFrmControleBancario.DbGrid_ItensKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmControleBancario.Sair1Click(Sender: TObject);
begin
   close;

end;

procedure TFrmControleBancario.ValidarCampos;
begin

   If  BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString) = 'CREDITO' then
   begin

      LblCredito.Enabled := True;
      EditCredito.Enabled := True;

      LblDebito.Enabled := False;
      EditDebito.Enabled := False;

      If (db_CtrlBancario.state in [dsedit, dsinsert]) then
         db_CtrlBancario.FieldByName('VLR_DEBITO').AsFloat := 0;

   end;

   If BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString) = 'DEBITO' then
   begin

      LblDebito.Enabled := True;
      EditDebito.Enabled := True;

      LblCredito.Enabled := False;
      EditCredito.Enabled := False;

      If (db_CtrlBancario.state in [dsedit, dsinsert]) then
         db_CtrlBancario.FieldByName('VLR_CREDITO').AsFloat := 0;

   end;

end;

procedure TFrmControleBancario.Mnu_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmControleBancario.DbGrid_NotaFiscalDblClick(Sender: TObject);
begin

   PageControl1.ActivePage := Tab_Edicao;
   TDatas := db_CtrlBancario.FieldByName('DATA').AsDateTime;

End;

procedure TFrmControleBancario.db_CtrlBancarioNewRecord(DataSet: TDataSet);
begin

   LblCredito.Enabled := False;
   LblDebito.Enabled := False;
   EditCredito.Enabled := False;
   EditDebito.Enabled := False;

   db_CtrlBancario.FieldByName('DATA').AsDateTime := Date;

end;

procedure TFrmControleBancario.db_CtrlBancarioPLN_CONTAChange(Sender: TField);
begin
   ValidarCampos;

   db_CtrlBancario.FieldByName('DC').AsString := BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString);;

end;

procedure TFrmControleBancario.EditPlanoExit(Sender: TObject);
begin

   If BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString) = 'CREDITO' then
   begin

      LblCredito.Enabled := True;
      EditCredito.Enabled := True;

      LblDebito.Enabled := False;
      EditDebito.Enabled := False;

      If (db_CtrlBancario.state in [dsedit, dsinsert]) then
         db_CtrlBancario.FieldByName('VLR_DEBITO').AsFloat := 0;

   end;

   If BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString) = 'DEBITO' then
   begin

      LblDebito.Enabled := True;
      EditDebito.Enabled := True;

      LblCredito.Enabled := False;
      EditCredito.Enabled := False;

      If (db_CtrlBancario.state in [dsedit, dsinsert]) then
         db_CtrlBancario.FieldByName('VLR_CREDITO').AsFloat := 0;

   end;

end;

procedure TFrmControleBancario.db_CtrlBancarioAfterScroll(DataSet: TDataSet);
begin

   If BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString)= 'CREDITO' then
   begin

      LblCredito.Enabled := True;
      EditCredito.Enabled := True;

      LblDebito.Enabled := False;
      EditDebito.Enabled := False;

   end;

   If BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString) = 'DEBITO' then
   begin

      LblDebito.Enabled := True;
      EditDebito.Enabled := True;

      LblCredito.Enabled := False;
      EditCredito.Enabled := False;

   end;

end;

End.
