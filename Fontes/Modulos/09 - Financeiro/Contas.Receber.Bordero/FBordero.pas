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


unit FBordero;

interface

uses
   Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Grids, ExtCtrls, Mask, Buttons, DBGrids, DBCtrls, Db, DBTables,
   Menus, SysUtils, ComCtrls, QRCtrls, ImgList,  
   Variants,    
    ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos, FFrameBotoes, FFrameBarra, 
     frxClass, frxDBSet,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmBordero = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    EditCodigo: TDBEdit;
    EditData: TDBEdit;
    DBEdit9: TDBEdit;
    EditContaCorrente: TEdit;
    EditConta_Credito: TIDBEditDialog;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    ds_Bordero: TDataSource;
    ds_BorderoLista: TDataSource;
    db_Bordero:  TFDQuery;
    db_BorderoLista: TFDQuery;
    db_BorderoListaEMPRESA: TIntegerField;
    db_BorderoListaCODIGO: TIntegerField;
    db_BorderoListaDOCUMENTO: TStringField;
    db_BorderoListaTIPO: TStringField;
    db_BorderoListaVALOR: TBCDField;
    db_BorderoListaVALORLIQUIDO: TBCDField;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    db_BorderoListaDATA: TSQLTimeStampField;
    db_BorderoListaVENCIMENTO: TSQLTimeStampField;
    db_BorderoEMPRESA: TIntegerField;
    db_BorderoCODIGO: TIntegerField;
    db_BorderoEMISSAO: TStringField;
    db_BorderoDOCUMENTO: TStringField;
    db_BorderoCTACORRENTE: TIntegerField;
    db_BorderoCONTACAIXA: TIntegerField;
    db_BorderoCARTEIRA: TIntegerField;
    db_BorderoPLN_CONTA: TStringField;
    db_BorderoTITULOSQTDE: TIntegerField;
    db_BorderoTITULOSVALOR: TBCDField;
    db_BorderoJUROS: TBCDField;
    db_BorderoTARIFA: TBCDField;
    db_BorderoPRAZOMEDIO: TIntegerField;
    db_BorderoOBSERVACAO: TStringField;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbLocalizaBordero: TIDBEditDialog;
    db_BorderoListaDIAS: TIntegerField;
    db_somar: TFDQuery;
    db_somarQTDETITULOS: TIntegerField;
    db_somarQTDEDIAS: TIntegerField;
    db_somarVALOR: TBCDField;
    db_somarVALORLIQUIDO: TBCDField;
    db_BorderoTITULOSVALORBRUTO: TBCDField;
    db_BorderoVALORJUROS: TBCDField;
    db_BorderoVALORTARIFAS: TBCDField;
    db_BorderoListaVALORJUROS: TBCDField;
    db_BorderoListaVALORTARIFAS: TBCDField;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    db_BorderoListaCLIENTE: TIntegerField;
    db_BorderoListaCLIENTE_NOME: TStringField;
    dbDlgProcurar: TIDBEditDialog;
    db_BorderoListaCODIGOFINRECEBER: TIntegerField;
    Label10: TLabel;
    dbfx_Bordero: TfrxDBDataset;
    dbfx_BorderoLista: TfrxDBDataset;
    frx_Bordero: TfrxReport;
    ContaProcurar: TIDBEditDialog;
    EditNomeContaCaixa: TEdit;
    IDBEditDialog1: TIDBEditDialog;
    Edit1: TEdit;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure db_BorderoListaAfterOpen(DataSet: TDataSet);
    procedure db_BorderoListaAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure db_BorderoListaBeforePost(DataSet: TDataSet);
    procedure db_BorderoNewRecord(DataSet: TDataSet);
    procedure db_BorderoBeforeOpen(DataSet: TDataSet);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
    procedure db_BorderoListaAfterPost(DataSet: TDataSet);
    procedure db_BorderoListaAfterDelete(DataSet: TDataSet);
    procedure db_BorderoListaDATAChange(Sender: TField);
    procedure db_BorderoListaVENCIMENTOChange(Sender: TField);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_BorderoListaCLIENTEChange(Sender: TField);
    procedure db_BorderoListaVALORChange(Sender: TField);
    procedure db_BorderoListaVALORJUROSChange(Sender: TField);
    procedure db_BorderoListaVALORTARIFASChange(Sender: TField);
    procedure db_BorderoListaDIASChange(Sender: TField);
    procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);

   private
    procedure prcCalcularTitulos;
    procedure prcCalcularDias;

    procedure prcCalcularLinhaJuros;
    procedure prcCalcularLinhaTarifas;
    procedure prcCalcularLinhaTitulo;
    procedure prcRecalcularLinhas;
    procedure prcMarcarDuplicata;
      { Private declarations }

   public
      { Public declarations }

   end;

var
   FrmBordero: TFrmBordero;
   vlrvar: Integer;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;


{$R *.DFM}

procedure TFrmBordero.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key=VK_F8 then
   begin
      if dbDlgProcurar.execute then
      begin
         if not (db_BorderoLista.State in [dsedit, dsinsert]) then
            db_BorderoLista.Edit;

         db_BorderoLista.FieldByName('CODIGOFINRECEBER').AsInteger             :=dbDlgProcurar.ResultFieldAsInteger('CODIGO') ;
         db_BorderoLista.FieldByName('DOCUMENTO').AsString                     :=dbDlgProcurar.ResultFieldAsString('DOCUMENTO') ;
         db_BorderoLista.FieldByName('CLIENTE').AsInteger                      :=dbDlgProcurar.ResultFieldAsInteger('CLIENTE') ;
         db_BorderoLista.FieldByName('CLIENTE_NOME').AsString                  :=fncCliente_retCampo(dbDlgProcurar.ResultFieldAsInteger('CLIENTE'),'NOME') ;
         db_BorderoLista.FieldByName('DATA').AsDateTime                        :=dbDlgProcurar.ResultFieldAsDateTime('DATA') ;
         db_BorderoLista.FieldByName('VENCIMENTO').AsDateTime                  :=dbDlgProcurar.ResultFieldAsDateTime('VENCIMENTO') ;
         db_BorderoLista.FieldByName('TIPO').AsString                          :=dbDlgProcurar.ResultFieldAsString('ESPECIE') ;
         db_BorderoLista.FieldByName('VALOR').AsFloat                          :=dbDlgProcurar.ResultFieldAsFloat('VALOR') ;
         if  (db_BorderoLista.State in [dsedit, dsinsert]) then
            db_BorderoLista.Post;
      end;

   end;

end;

procedure TFrmBordero.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmBordero.db_BorderoBeforeOpen(DataSet: TDataSet);
begin
   db_Bordero.ParamByName('EMPRESA').AsInteger   :=FSistema.Empresa;
end;

procedure TFrmBordero.db_BorderoListaAfterDelete(DataSet: TDataSet);
begin
   prcCalcularTitulos;
end;

procedure TFrmBordero.db_BorderoListaAfterOpen(DataSet: TDataSet);
begin
  DimensionarGrid(DBGrid1,self);
end;

procedure TFrmBordero.db_BorderoListaAfterPost(DataSet: TDataSet);
begin
   prcCalcularTitulos;
end;

procedure TFrmBordero.db_BorderoListaAfterScroll(DataSet: TDataSet);
begin
  DimensionarGrid(DBGrid1,self);
end;

procedure TFrmBordero.db_BorderoListaBeforePost(DataSet: TDataSet);
begin
   db_BorderoLista.FieldByName('EMPRESA').AsInteger :=db_Bordero.FieldByName('EMPRESA').AsInteger;
   db_BorderoLista.FieldByName('CODIGO').AsInteger  :=db_Bordero.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmBordero.db_BorderoListaCLIENTEChange(Sender: TField);
begin
   db_BorderoLista.FieldByName('CLIENTE_NOME').AsString                  :=fncCliente_retCampo(db_BorderoLista.FieldByName('CLIENTE').AsInteger,'NOME') ;
end;

procedure TFrmBordero.db_BorderoListaDATAChange(Sender: TField);
begin
   prcCalcularDias;
end;

procedure TFrmBordero.db_BorderoListaDIASChange(Sender: TField);
begin
   prcCalcularLinhaJuros;
end;

procedure TFrmBordero.db_BorderoListaVENCIMENTOChange(Sender: TField);
begin
   prcCalcularDias;
end;

procedure TFrmBordero.db_BorderoNewRecord(DataSet: TDataSet);
begin
   db_Bordero.FieldByName('EMPRESA').AsInteger   :=FSistema.Empresa;
   db_Bordero.FieldByName('EMISSAO').AsDateTime  :=date;

end;

procedure TFrmBordero.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_Bordero.close;
   db_BorderoLista.close;

   FreeAndNil( FrmBordero );

end;


procedure TFrmBordero.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := ds_Bordero;
   db_Bordero.Open;
   db_BorderoLista.Open;
end;

procedure TFrmBordero.FormResize(Sender: TObject);
begin
  DimensionarGrid(DBGrid1,self);

end;

procedure TFrmBordero.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  EditData.SetFocus;

end;

procedure TFrmBordero.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmBordero.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmBordero.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmBordero.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin
   prcMarcarDuplicata;
   frx_Bordero.Variables['snomeconta'] := EditContaCorrente.Text;
   frx_Bordero.ShowReport;

end;

procedure TFrmBordero.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbLocalizaBordero.Execute then
   begin
       FrmFrameBotoes1.SpbCancelarClick(Sender);
      db_Bordero.First;
      db_Bordero.Locate('CODIGO',dbLocalizaBordero.ResultFieldAsInteger('CODIGO'),[]);
   end;

end;

procedure TFrmBordero.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmBordero.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
   if (db_BorderoLista.State in [dsedit,dsinsert] ) then
      db_BorderoLista.post;

end;

procedure TFrmBordero.GroupBox1Exit(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
   prcRecalcularLinhas;

end;

procedure TFrmBordero.GroupBox2Exit(Sender: TObject);
begin
   if (db_BorderoLista.State in [dsedit,dsinsert] ) then
      db_BorderoLista.post;

end;

procedure TFrmBordero.prcCalcularDias;
begin
  //
  db_BorderoLista.FieldByName('DIAS').AsFloat :=
      db_BorderoLista.FieldByName('VENCIMENTO').AsDateTime - db_BorderoLista.FieldByName('DATA').AsDateTime ;

  if db_BorderoLista.FieldByName('DIAS').AsInteger<0 then
     db_BorderoLista.FieldByName('DIAS').AsInteger :=0;

end;

procedure TFrmBordero.prcCalcularLinhaJuros;
begin
   db_BorderoLista.FieldByName('VALORJUROS').AsFloat :=Calc_Juros(db_BorderoLista.FieldByName('VALOR').AsFloat,
                                                                  db_Bordero.FieldByName('JUROS').AsFloat,
                                                                  0,
                                                                  db_BorderoLista.FieldByName('DIAS').AsInteger
                                                                  );
end;

procedure TFrmBordero.prcRecalcularLinhas;
begin

//   if  (db_Bordero.State in [dsedit, dsinsert]) then
//      db_Bordero.Post;

   if db_BorderoLista.IsEmpty then
      exit;


   db_BorderoLista.First;
   while not db_BorderoLista.eof do
   begin
      db_BorderoLista.edit;

      prcCalcularLinhaJuros;
      prcCalcularLinhaTarifas;
      prcCalcularLinhaTitulo;
      db_BorderoLista.post;

      db_BorderoLista.Next;

   end;
   db_BorderoLista.First;

end;


procedure TFrmBordero.prcMarcarDuplicata;
begin
   if db_BorderoLista.IsEmpty then
      exit;

   db_BorderoLista.First;
   while not db_BorderoLista.eof do
   begin
      prcContasReceberDescontato(db_BorderoLista.FieldByName('CODIGOFINRECEBER').AsInteger,
                                  db_Bordero.FieldByName('CTACORRENTE').AsInteger,
                                  db_Bordero.FieldByName('CONTACAIXA').AsInteger,
                                  db_Bordero.FieldByName('CARTEIRA').AsInteger,
                                 'S'
                                  );
      db_BorderoLista.Next;

   end;
   db_BorderoLista.First;
end;

procedure TFrmBordero.prcCalcularLinhaTarifas;
begin
   db_BorderoLista.FieldByName('VALORTARIFAS').AsFloat :=  Desconto(db_BorderoLista.FieldByName('VALOR').AsFloat,
                                                                    db_Bordero.FieldByName('TARIFA').AsFloat
                                                                    );
end;

procedure TFrmBordero.prcCalcularLinhaTitulo;
Var
  nValorLocal : Real;

begin
   nValorLocal := 0;

   nValorLocal := db_BorderoLista.FieldByName('VALOR').AsFloat
                  -
                  db_BorderoLista.FieldByName('VALORJUROS').AsFloat
                  -
                  db_BorderoLista.FieldByName('VALORTARIFAS').AsFloat;


   db_BorderoLista.FieldByName('VALORLIQUIDO').AsFloat := nValorLocal;


end;

procedure TFrmBordero.db_BorderoListaVALORChange(Sender: TField);
begin
   prcCalcularLinhaJuros;
   prcCalcularLinhaTarifas;
   prcCalcularLinhaTitulo;
end;



procedure TFrmBordero.db_BorderoListaVALORJUROSChange(Sender: TField);
begin
   prcCalcularLinhaTitulo;
end;

procedure TFrmBordero.db_BorderoListaVALORTARIFASChange(Sender: TField);
begin
   prcCalcularLinhaTitulo;
end;

procedure TFrmBordero.prcCalcularTitulos;
begin
  //
   db_somar.close;
   db_somar.ParamByName('EMPRESA').AsInteger :=db_Bordero.FieldByName('EMPRESA').AsInteger;
   db_somar.ParamByName('CODIGO').AsInteger  :=db_Bordero.FieldByName('CODIGO').AsInteger;
   db_somar.open;


  db_Bordero.edit;
  db_Bordero.FieldByName('TITULOSQTDE').AsFloat         := db_somar.FieldByName('QTDETITULOS').AsFloat;
  db_Bordero.FieldByName('TITULOSVALORBRUTO').AsFloat   := db_somar.FieldByName('VALOR').AsFloat;
  db_Bordero.FieldByName('TITULOSVALOR').AsFloat        := db_somar.FieldByName('VALORLIQUIDO').AsFloat;
  db_Bordero.FieldByName('PRAZOMEDIO').AsFloat          := db_somar.FieldByName('QTDEDIAS').AsFloat / db_somar.FieldByName('QTDETITULOS').AsFloat ;
  db_Bordero.post;

   db_somar.close;

end;

End.
