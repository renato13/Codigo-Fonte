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

unit FOrdemProducaoMateriaPrimaBaixar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, ExtCtrls, FFrameBotoes, Grids, DBGrids, DB,
          ComCtrls, StdCtrls, Buttons, ISFEdit, ISFEditbtn,
   ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
   TFrmOrdemProducaoMateriaPrimaBaixar = class(TForm)
      Panel1: TPanel;
      FrmFrameBarra1: TFrmFrameBarra;
    db_MateriaPrima: TFDQuery;
    ds_MateriaPrima: TDataSource;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    SP_BaixarEstoque: TFDStoredProc;
    Panel3: TPanel;
    ds_MateriaPrimaTecidos: TDataSource;
    db_MateriaPrimaTecidos: TFDQuery;
    db_MateriaPrimaTecidosGrade: TFDQuery;
    ds_MateriaPrimaTecidosGrade: TDataSource;
    db_MateriaPrimaGrade: TFDQuery;
    ds_MateriaPrimaGrade: TDataSource;
    GroupBox1: TGroupBox;
    dbGrid_ProdutosMateriaPrima: TDBGrid;
    GroupBox2: TGroupBox;
    GridMateriaPrimaTecidos: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox19: TGroupBox;
    DBGrid5: TDBGrid;
    GroupBox18: TGroupBox;
    GridMateriaPrimaGrade: TDBGrid;
    db_MateriaPrimaOrigem: TFDQuery;
    db_MateriaPrimaOrigemORDEMPRODUCAO: TIntegerField;
    db_MateriaPrimaOrigemCODIGO: TIntegerField;
    db_MateriaPrimaOrigemREFERENCIA: TStringField;
    db_MateriaPrimaOrigemDESCRICAO: TStringField;
    db_MateriaPrimaOrigemUND: TStringField;
    db_MateriaPrimaOrigemCOMPOSICAO_DESCRICAO: TStringField;
    db_MateriaPrimaOrigemDIMENSIONAMENTO: TStringField;
    db_MateriaPrimaOrigemCOR: TStringField;
    db_MateriaPrimaOrigemTAMANHO: TStringField;
    db_MateriaPrimaOrigemQTDE: TBCDField;
    db_MateriaPrimaOrigemQTDE_CONSUMOSTOTAL: TBCDField;
    db_MateriaPrimaOrigemVLR_UNIT: TBCDField;
    db_MateriaPrimaOrigemVLR_CUSTOTOTAL: TBCDField;
    db_MateriaPrimaOrigemESTOQUE: TBCDField;
    db_MateriaPrimaOrigemNECESSIDADE: TBCDField;
    ds_MateriaPrimaOrigem: TDataSource;
    db_MateriaPrimaGradeOrigem: TFDQuery;
    ds_MateriaPrimaGradeOrigem: TDataSource;
    db_MateriaPrimaTecidosOrigem: TFDQuery;
    ds_MateriaPrimaTecidosOrigem: TDataSource;
    db_MateriaPrimaTecidosGradeOrigem: TFDQuery;
    ds_MateriaPrimaTecidosGradeOrigem: TDataSource;
    db_MateriaPrimaTecidosGradeSomar: TFDQuery;
    db_MateriaPrimaGradeSomar: TFDQuery;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure db_MateriaPrimaBeforePost(DataSet: TDataSet);
    procedure db_MateriaPrimaTecidosBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure db_MateriaPrimaTecidosGradeAfterPost(DataSet: TDataSet);
    procedure db_MateriaPrimaGradeAfterPost(DataSet: TDataSet);
   private
      { Private declarations }
      blInserir,
      blImportando    : Boolean;
 public
      { Public declarations }
   end;

var
   FrmOrdemProducaoMateriaPrimaBaixar: TFrmOrdemProducaoMateriaPrimaBaixar;
   bAlterouGrade : Boolean;

implementation

uses FPrincipal, Biblioteca, Global,
    FProdutosQuantidadeGrade, FProdutosQuantidadeGradeEditar,
  FProdutosQuantidadeCodigoBarras, FOrdemProducao, FBaseDados_PCP, SQLServer,
  Classe.Usuarios;

{$R *.dfm}

procedure TFrmOrdemProducaoMateriaPrimaBaixar.BitBtn1Click(Sender: TObject);
begin
   {
    db_MateriaPrima.Close;

   if EditPesquisa.Text='' then
      EditPesquisa.Text:='%';

   //db_MateriaPrima.SQL.Clear;
   //db_MateriaPrima.SQL.Add(ScriptSQL);
   db_MateriaPrima.ParamByName('Procurar').AsString := '%' + EditPesquisa.Text + '%';
   db_MateriaPrima.Open;

   dbGrid_Produtos.SetFocus;
   }

end;

procedure TFrmOrdemProducaoMateriaPrimaBaixar.Button1Click(Sender: TObject);
begin

   if  db_MateriaPrima.IsEmpty then
   begin
      blInserir :=False;
     Erro('Não há itens para baixar');
     exit;
   end;


   if (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'N') or
     (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'NAO') then
   Begin
      BeepCritica;
      AvisoSistema('Ordem de Produção ainda não foi aprovada.');
      abort;
   End;

   if not db_MateriaPrima.IsEmpty then
   begin
     db_MateriaPrima.first;
     while not db_MateriaPrima.Eof do
     begin
        if (db_MateriaPrima.FieldByName('BAIXADO').AsString='S')  then
           blInserir :=True;

        db_MateriaPrima.next;
     end;
     db_MateriaPrima.first;
   end;


   if blInserir=True then
   begin
      blInserir :=False;
     AvisoSistema('Itens ja foram baixados');
     exit;
   end;
   blInserir :=False;

   if pergunta('Deseja realmente baixar os itens?')=false then
      exit;

   SP_BaixarEstoque.ParamByName('NORDEMPRODUCAO').AsInteger  :=  nOrdemProducao;
   SP_BaixarEstoque.ParamByName('ACAO').AsString             :=  'BAIXAR';
   SP_BaixarEstoque.ExecProc;
   SP_BaixarEstoque.Close;

   db_MateriaPrima.first;
   while not db_MateriaPrima.Eof do
   begin
      db_MateriaPrima.Edit;
      db_MateriaPrima.FieldByName('BAIXADO').AsAnsiString  :='S';
      db_MateriaPrima.Post;
      db_MateriaPrima.next;
   end;
   db_MateriaPrima.first;

   db_MateriaPrimaTecidos.first;
   while not db_MateriaPrimaTecidos.Eof do
   begin
      db_MateriaPrimaTecidos.Edit;
      db_MateriaPrimaTecidos.FieldByName('BAIXADO').AsAnsiString  :='S';
      db_MateriaPrimaTecidos.Post;
      db_MateriaPrimaTecidos.next;
   end;
   db_MateriaPrimaTecidos.first;


   FUsuario.prcLogUsuario('ordem de produção | Matéria Prima','Baixou Matéria Prima (diminiu do estoque) referente Ordem de Produção: ' + IntToStr(nOrdemProducao)  );
   aviso('Processamento de baixa concluido!')

end;

procedure TFrmOrdemProducaoMateriaPrimaBaixar.Button2Click(Sender: TObject);
begin

   if  db_MateriaPrima.IsEmpty then
   begin
      blInserir :=False;
     Erro('Não há itens para estornar');
     exit;
   end;

   if (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'N') or
     (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'NAO') then
   Begin
      BeepCritica;
      AvisoSistema('Ordem de Produção ainda não foi aprovada.');
      abort;
   End;


   if not db_MateriaPrima.IsEmpty then
   begin
     db_MateriaPrima.first;
     while not db_MateriaPrima.Eof do
     begin
        if (db_MateriaPrima.FieldByName('BAIXADO').AsString='N')  then
           blInserir :=True;

        db_MateriaPrima.next;
     end;
     db_MateriaPrima.first;
   end;

   if blInserir=True then
   begin
      blInserir :=False;
     AvisoSistema('Não ha itens para estornar');
     exit;
   end;
   blInserir :=False;

   if pergunta('Deseja realmente estornar os itens?')=false then
      exit;

   SP_BaixarEstoque.ParamByName('NORDEMPRODUCAO').AsInteger  :=  nOrdemProducao;
   SP_BaixarEstoque.ParamByName('ACAO').AsString             :=  'DEVOLVER';
   SP_BaixarEstoque.ExecProc;
   SP_BaixarEstoque.Close;

   db_MateriaPrima.first;
   while not db_MateriaPrima.Eof do
   begin
      db_MateriaPrima.Edit;
      db_MateriaPrima.FieldByName('BAIXADO').AsAnsiString  :='N';
      db_MateriaPrima.Post;
      db_MateriaPrima.next;
   end;
   db_MateriaPrima.first;

   db_MateriaPrimaTecidos.first;
   while not db_MateriaPrimaTecidos.Eof do
   begin
      db_MateriaPrimaTecidos.Edit;
      db_MateriaPrimaTecidos.FieldByName('BAIXADO').AsAnsiString  :='N';
      db_MateriaPrimaTecidos.Post;
      db_MateriaPrimaTecidos.next;
   end;
   db_MateriaPrimaTecidos.first;


   FUsuario.prcLogUsuario('ordem de produção | Matéria Prima','Estornou Matéria Prima (devolveu ao estoque) referente Ordem de Produção: ' + IntToStr(nOrdemProducao)  );
   aviso('Processamento de estorno concluido!')

end;

procedure TFrmOrdemProducaoMateriaPrimaBaixar.Button3Click(Sender: TObject);
begin
   close;
end;

procedure TFrmOrdemProducaoMateriaPrimaBaixar.db_MateriaPrimaBeforePost(
  DataSet: TDataSet);
begin
   db_MateriaPrima.FieldByName('EMPRESA').AsInteger           :=FSistema.Empresa;
   db_MateriaPrima.FieldByName('CODIGO').AsInteger            :=nOrdemProducao;
end;

procedure TFrmOrdemProducaoMateriaPrimaBaixar.db_MateriaPrimaGradeAfterPost(
  DataSet: TDataSet);
begin
   if blImportando=True then
      exit;

   db_MateriaPrimaGradeSomar.Close;
   db_MateriaPrimaGradeSomar.Open;

   db_MateriaPrima.Edit;
   db_MateriaPrima.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat   := db_MateriaPrimaGradeSomar.FieldByName('QUANTIDADE').AsFloat;
   db_MateriaPrima.FieldByName('NECESSIDADE').AsFloat          := (db_MateriaPrima.FieldByName('ESTOQUE').AsFloat - db_MateriaPrima.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat );
   db_MateriaPrima.Post;

   db_MateriaPrimaGradeSomar.Close;

end;

procedure TFrmOrdemProducaoMateriaPrimaBaixar.db_MateriaPrimaTecidosBeforePost(
  DataSet: TDataSet);
begin
   db_MateriaPrimaTecidos.FieldByName('EMPRESA').AsInteger           :=FSistema.Empresa;
   db_MateriaPrimaTecidos.FieldByName('CODIGO').AsInteger            :=nOrdemProducao;

end;

procedure TFrmOrdemProducaoMateriaPrimaBaixar.db_MateriaPrimaTecidosGradeAfterPost(
  DataSet: TDataSet);
begin

   if blImportando=True then
      exit;

   db_MateriaPrimaTecidosGradeSomar.Close;
   db_MateriaPrimaTecidosGradeSomar.Open;

   db_MateriaPrimaTecidos.Edit;
   db_MateriaPrimaTecidos.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat   := db_MateriaPrimaTecidosGradeSomar.FieldByName('QUANTIDADE').AsFloat;
   db_MateriaPrimaTecidos.FieldByName('NECESSIDADE').AsFloat          := (db_MateriaPrimaTecidos.FieldByName('ESTOQUE').AsFloat - db_MateriaPrimaTecidos.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat );
   db_MateriaPrimaTecidos.Post;

   db_MateriaPrimaTecidosGradeSomar.Close;

end;

procedure TFrmOrdemProducaoMateriaPrimaBaixar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   FUsuario.prcLogUsuario('ordem de produção | Matéria Prima','saiu do módulo Baixa de Matéria Prima. Referente Ordem de Produção: ' + IntToStr(nOrdemProducao)  );
   db_MateriaPrima.close;
   Action := Cafree;

end;

procedure TFrmOrdemProducaoMateriaPrimaBaixar.FormCreate(Sender: TObject);

begin

   FUsuario.prcLogUsuario('ordem de produção | Matéria Prima','Entrou no módulo Baixa de Matéria Prima. Referente Ordem de Produção: ' + IntToStr(nOrdemProducao)  );

   blImportando :=True;
   // -------------------------------------------------------------------
   // ativar tabelas fontes de dados
   // -------------------------------------------------------------------
   db_MateriaPrimaOrigem.close;
   db_MateriaPrimaTecidosOrigem.close;


   db_MateriaPrimaOrigem.Close;
   db_MateriaPrimaOrigem.ParamByName('ORDEMPRODUCAO').Clear;
   db_MateriaPrimaOrigem.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   db_MateriaPrimaOrigem.open;

   db_MateriaPrimaGradeOrigem.Close;
   db_MateriaPrimaGradeOrigem.open;

   db_MateriaPrimaTecidosOrigem.Close;
   db_MateriaPrimaTecidosOrigem.ParamByName('ORDEMPRODUCAO').Clear;
   db_MateriaPrimaTecidosOrigem.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   db_MateriaPrimaTecidosOrigem.open;

   db_MateriaPrimaTecidosGradeOrigem.Close;
   db_MateriaPrimaTecidosGradeOrigem.open;

   // -------------------------------------------------------------------
   // ativar tabelas fontes de dados
   // -------------------------------------------------------------------

   db_MateriaPrima.close;
   db_MateriaPrima.ParamByName('EMPRESA').AsInteger           :=FSistema.Empresa;
   db_MateriaPrima.ParamByName('CODIGO').AsInteger            :=nOrdemProducao;
   db_MateriaPrima.Open;

   db_MateriaPrimaGrade.close;
   db_MateriaPrimaGrade.Open;

   db_MateriaPrimaTecidos.close;
   db_MateriaPrimaTecidos.ParamByName('EMPRESA').AsInteger           :=FSistema.Empresa;
   db_MateriaPrimaTecidos.ParamByName('CODIGO').AsInteger            :=nOrdemProducao;
   db_MateriaPrimaTecidos.Open;

   db_MateriaPrimaTecidosGrade.close;
   db_MateriaPrimaTecidosGrade.Open;

   // -------------------------------------------------------------------
   //    MATERIA PRIMA
   // -------------------------------------------------------------------

   blInserir :=False;
   if not db_MateriaPrima.IsEmpty then
   begin
     db_MateriaPrima.first;
     while not db_MateriaPrima.Eof do
     begin
        if (db_MateriaPrima.FieldByName('BAIXADO').AsString<>'S')  then
           blInserir :=True;

        db_MateriaPrima.next;
     end;
     db_MateriaPrima.first;
   end;

   if blInserir=True then
   begin
     db_MateriaPrima.first;
     while not db_MateriaPrima.Eof do
        db_MateriaPrima.Delete;
   end;

   if not db_MateriaPrimaOrigem.IsEmpty then
   begin
      //if db_MateriaPrimaOrigem.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat>0 then
      //begin
         if (db_MateriaPrima.IsEmpty) then
         begin
            db_MateriaPrimaOrigem.first;
            while not db_MateriaPrimaOrigem.Eof do
            begin
               db_MateriaPrima.Append;
               db_MateriaPrima.FieldByName('EMPRESA').AsInteger           :=FSistema.Empresa;
               db_MateriaPrima.FieldByName('CODIGO').AsInteger            :=db_MateriaPrimaOrigem.FieldByName('ORDEMPRODUCAO').AsInteger;
               db_MateriaPrima.FieldByName('REFERENCIAID').AsInteger      :=RetornaReferenciaCodigoID(db_MateriaPrimaOrigem.FieldByName('REFERENCIA').AsString);
               db_MateriaPrima.FieldByName('REFERENCIA').AsString         :=db_MateriaPrimaOrigem.FieldByName('REFERENCIA').AsString;
               db_MateriaPrima.FieldByName('DESCRICAO').AsString          :=db_MateriaPrimaOrigem.FieldByName('DESCRICAO').AsString;
               db_MateriaPrima.FieldByName('QTDE_ESTIMADA').AsFloat       :=db_MateriaPrimaOrigem.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat;
               db_MateriaPrima.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat  :=db_MateriaPrimaOrigem.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat;
               db_MateriaPrima.FieldByName('ESTOQUE').AsFloat             :=db_MateriaPrimaOrigem.FieldByName('ESTOQUE').AsFloat;
               db_MateriaPrima.FieldByName('NECESSIDADE').AsFloat         :=db_MateriaPrimaOrigem.FieldByName('NECESSIDADE').AsFloat;
               db_MateriaPrima.FieldByName('BAIXADO').AsString            :='N';
               db_MateriaPrima.Post;

               db_MateriaPrimaOrigem.next;
            end;
            db_MateriaPrima.first;
            db_MateriaPrimaOrigem.first;
         end;
      //end;
   end;
   blInserir :=False;

   // -------------------------------------------------------------------
   //    MATERIA PRIMA - GRADE
   // -------------------------------------------------------------------
   db_MateriaPrimaOrigem.first;
   while not db_MateriaPrimaOrigem.Eof do
   begin
      if not db_MateriaPrimaGradeOrigem.IsEmpty then
      begin
         //if db_MateriaPrimaGradeOrigem.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat>0 then
         //begin
          //if (db_MateriaPrimaGrade.IsEmpty) then
          //begin
             db_MateriaPrimaGradeOrigem.first;
             while not db_MateriaPrimaGradeOrigem.Eof do
             begin
                db_MateriaPrimaGrade.Append;
                db_MateriaPrimaGrade.FieldByName('EMPRESA').AsInteger         := FSistema.Empresa;
                db_MateriaPrimaGrade.FieldByName('CODIGO').AsInteger          := db_MateriaPrimaGradeOrigem.FieldByName('ORDEMPRODUCAO').AsInteger ;
                db_MateriaPrimaGrade.FieldByName('REFERENCIAID').AsInteger    := RetornaReferenciaCodigoID(db_MateriaPrimaGradeOrigem.FieldByName('REFERENCIA').AsString);
                db_MateriaPrimaGrade.FieldByName('REFERENCIA').AsString       := db_MateriaPrimaGradeOrigem.FieldByName('REFERENCIA').AsString ;
                db_MateriaPrimaGrade.FieldByName('COR_ID').AsInteger          := db_MateriaPrimaGradeOrigem.FieldByName('COR_ID').AsInteger;
                db_MateriaPrimaGrade.FieldByName('COR').AsString              := db_MateriaPrimaGradeOrigem.FieldByName('COR').AsString;
                db_MateriaPrimaGrade.FieldByName('PADRAOCORID').AsInteger     := db_MateriaPrimaGradeOrigem.FieldByName('PADRAOCORID').AsInteger;
                db_MateriaPrimaGrade.FieldByName('PADRAOCORNOME').AsString    := db_MateriaPrimaGradeOrigem.FieldByName('PADRAOCORNOME').AsString;
                db_MateriaPrimaGrade.FieldByName('TAMANHO_ID').AsInteger      := db_MateriaPrimaGradeOrigem.FieldByName('TAMANHO_ID').AsInteger;
                db_MateriaPrimaGrade.FieldByName('TAMANHO').AsString          := db_MateriaPrimaGradeOrigem.FieldByName('TAMANHO').AsString;
                db_MateriaPrimaGrade.FieldByName('TAMANHOPADRAO').AsString    := db_MateriaPrimaGradeOrigem.FieldByName('TAMANHOPADRAO').AsString;
                db_MateriaPrimaGrade.FieldByName('ORDEM_GRADE').AsString      := db_MateriaPrimaGradeOrigem.FieldByName('ORDEM_GRADE').AsString;
                db_MateriaPrimaGrade.FieldByName('QUANTIDADE').AsFloat        := db_MateriaPrimaGradeOrigem.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat;
                db_MateriaPrimaGrade.Post;

                db_MateriaPrimaGradeOrigem.next;
             end;
             db_MateriaPrimaGrade.first;
             db_MateriaPrimaGradeOrigem.first;
          //end;
         //end;
      end;
      db_MateriaPrimaOrigem.next;
   end;

   blInserir :=False;

   // -------------------------------------------------------------------
   //    MATERIA PRIMA  - TECIDOS
   // -------------------------------------------------------------------
   blInserir :=False;
   if not db_MateriaPrimaTecidos.IsEmpty then
   begin
     db_MateriaPrimaTecidos.first;
     while not db_MateriaPrimaTecidos.Eof do
     begin
        if (db_MateriaPrimaTecidos.FieldByName('BAIXADO').AsString<>'S')  then
           blInserir :=True;

        db_MateriaPrimaTecidos.next;
     end;
     db_MateriaPrimaTecidos.first;
   end;

   if blInserir=True then
   begin
     db_MateriaPrimaTecidos.first;
     while not db_MateriaPrimaTecidos.Eof do
        db_MateriaPrimaTecidos.Delete;
   end;

   if not db_MateriaPrimaTecidosOrigem.IsEmpty then
   begin
      //if db_MateriaPrimaTecidosOrigem.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat>0 then
      //begin
         if db_MateriaPrimaTecidos.IsEmpty then
         begin
            db_MateriaPrimaTecidosOrigem.first;
            while not db_MateriaPrimaTecidosOrigem.Eof do
            begin
               db_MateriaPrimaTecidos.Append;
               db_MateriaPrimaTecidos.FieldByName('EMPRESA').AsInteger           :=FSistema.Empresa;
               db_MateriaPrimaTecidos.FieldByName('CODIGO').AsInteger            :=nOrdemProducao;
               db_MateriaPrimaTecidos.FieldByName('REFERENCIAID').AsInteger      :=RetornaReferenciaCodigoID(db_MateriaPrimaTecidosOrigem.FieldByName('REFERENCIA').AsString);
               db_MateriaPrimaTecidos.FieldByName('REFERENCIA').AsString         :=db_MateriaPrimaTecidosOrigem.FieldByName('REFERENCIA').AsString;
               db_MateriaPrimaTecidos.FieldByName('DESCRICAO').AsString          :=db_MateriaPrimaTecidosOrigem.FieldByName('DESCRICAO').AsString;
               db_MateriaPrimaTecidos.FieldByName('QTDE_ESTIMADA').AsFloat       :=db_MateriaPrimaTecidosOrigem.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat;
               db_MateriaPrimaTecidos.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat  :=db_MateriaPrimaTecidosOrigem.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat;
               db_MateriaPrimaTecidos.FieldByName('ESTOQUE').AsFloat             :=db_MateriaPrimaTecidosOrigem.FieldByName('ESTOQUE').AsFloat;
               db_MateriaPrimaTecidos.FieldByName('NECESSIDADE').AsFloat         :=db_MateriaPrimaTecidosOrigem.FieldByName('NECESSIDADE').AsFloat;
               db_MateriaPrimaTecidos.FieldByName('BAIXADO').AsString            :='N';
               db_MateriaPrimaTecidos.Post;

               db_MateriaPrimaTecidosOrigem.next;
            end;
            db_MateriaPrimaTecidos.first;
            db_MateriaPrimaTecidosOrigem.first;
         end;
      //end;
   end;
   blInserir :=False;

   // -------------------------------------------------------------------
   //    MATERIA PRIMA - TECIDOS
   // -------------------------------------------------------------------
   db_MateriaPrimaTecidosOrigem.first;
   while not db_MateriaPrimaTecidosOrigem.Eof do
   begin

      if not db_MateriaPrimaTecidosOrigem.IsEmpty then
      begin
         if db_MateriaPrimaTecidosOrigem.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat>0 then
         begin
          //if (db_MateriaPrimaTecidosGrade.IsEmpty) then
          //begin
             db_MateriaPrimaTecidosGradeOrigem.first;
             while not db_MateriaPrimaTecidosGradeOrigem.Eof do
             begin
                db_MateriaPrimaTecidosGrade.Append;
                db_MateriaPrimaTecidosGrade.FieldByName('EMPRESA').AsInteger              := FSistema.Empresa;
                db_MateriaPrimaTecidosGrade.FieldByName('CODIGO').AsInteger               := db_MateriaPrimaTecidosGradeOrigem.FieldByName('ORDEMPRODUCAO').AsInteger ;
                db_MateriaPrimaTecidosGrade.FieldByName('REFERENCIAID').AsInteger         := RetornaReferenciaCodigoID(db_MateriaPrimaTecidosGradeOrigem.FieldByName('REFERENCIA').AsString);
                db_MateriaPrimaTecidosGrade.FieldByName('REFERENCIA').AsString            := db_MateriaPrimaTecidosGradeOrigem.FieldByName('REFERENCIA').AsString ;
                db_MateriaPrimaTecidosGrade.FieldByName('REFERENCIA_COR_ID').AsInteger    := db_MateriaPrimaTecidosGradeOrigem.FieldByName('REFERENCIA_COR_ID').AsInteger;
                db_MateriaPrimaTecidosGrade.FieldByName('REFERENCIA_COR_NOME').AsString   := db_MateriaPrimaTecidosGradeOrigem.FieldByName('REFERENCIA_COR_NOME').AsString;
                db_MateriaPrimaTecidosGrade.FieldByName('COR_ID').AsInteger               := db_MateriaPrimaTecidosGradeOrigem.FieldByName('COR_ID').AsInteger;
                db_MateriaPrimaTecidosGrade.FieldByName('COR_NOME').AsString              := db_MateriaPrimaTecidosGradeOrigem.FieldByName('COR').AsString;
                db_MateriaPrimaTecidosGrade.FieldByName('TAMANHO_ID').AsInteger           := db_MateriaPrimaTecidosGradeOrigem.FieldByName('TAMANHO_ID').AsInteger;
                db_MateriaPrimaTecidosGrade.FieldByName('TAMANHO').AsString               := db_MateriaPrimaTecidosGradeOrigem.FieldByName('TAMANHO').AsString;
                db_MateriaPrimaTecidosGrade.FieldByName('ORDEM_GRADE').AsString           := db_MateriaPrimaTecidosGradeOrigem.FieldByName('ORDEM_GRADE').AsString;
                db_MateriaPrimaTecidosGrade.FieldByName('QUANTIDADE').AsFloat             := db_MateriaPrimaTecidosGradeOrigem.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat;
                db_MateriaPrimaTecidosGrade.Post;

                db_MateriaPrimaTecidosGradeOrigem.next;
             end;
             db_MateriaPrimaTecidosGradeOrigem.first;
             //db_MateriaPrimaTecidosGrade.first;
          //end;
         end;
      end;
      db_MateriaPrimaTecidosOrigem.Next;
   end;
   blInserir :=False;

   // -------------------------------------------------------------------------
   //    fechar tabelas fontes.. pra nao ficar ocupando espaço na memoria RAM
   // -------------------------------------------------------------------------
   db_MateriaPrimaOrigem.close;
   db_MateriaPrimaTecidosOrigem.close;
   db_MateriaPrimaGradeOrigem.Close;

   // -------------------------------------------------------------------------
   //    reabrir
   // -------------------------------------------------------------------------
   db_MateriaPrima.close;
   db_MateriaPrimaGrade.close;
   db_MateriaPrimaTecidos.close;
   db_MateriaPrimaTecidosGrade.close;

   db_MateriaPrima.Open;
   db_MateriaPrimaGrade.Open;

   db_MateriaPrimaTecidos.Open;
   db_MateriaPrimaTecidosGrade.Open;




   // -------------------------------------------------------------------------
   //    recalcular aviamentos/etc...
   // -------------------------------------------------------------------------
   db_MateriaPrima.First;
   while not db_MateriaPrima.eof do
   begin
      db_MateriaPrimaGradeSomar.Close;
      db_MateriaPrimaGradeSomar.Open;
      db_MateriaPrima.Edit;
      if db_MateriaPrimaGradeSomar.FieldByName('QUANTIDADE').AsFloat>0 then
         db_MateriaPrima.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat   := db_MateriaPrimaGradeSomar.FieldByName('QUANTIDADE').AsFloat;
      db_MateriaPrima.FieldByName('NECESSIDADE').AsFloat          := (db_MateriaPrima.FieldByName('ESTOQUE').AsFloat - db_MateriaPrima.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat );
      db_MateriaPrima.Post;
      db_MateriaPrimaGradeSomar.Close;

      db_MateriaPrima.Next;
   end;
   db_MateriaPrima.First;

   // -------------------------------------------------------------------------
   //    recalcular tecidos
   // -------------------------------------------------------------------------
   db_MateriaPrimaTecidos.First;
   while not db_MateriaPrimaTecidos.eof do
   begin

      db_MateriaPrimaTecidosGradeSomar.Close;
      db_MateriaPrimaTecidosGradeSomar.Open;

      db_MateriaPrimaTecidos.Edit;
      if db_MateriaPrimaTecidosGradeSomar.FieldByName('QUANTIDADE').AsFloat>0 then
         db_MateriaPrimaTecidos.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat   := db_MateriaPrimaTecidosGradeSomar.FieldByName('QUANTIDADE').AsFloat;
      db_MateriaPrimaTecidos.FieldByName('NECESSIDADE').AsFloat := (db_MateriaPrimaTecidos.FieldByName('ESTOQUE').AsFloat - db_MateriaPrimaTecidos.FieldByName('QTDE_CONSUMOSTOTAL').AsFloat );
      db_MateriaPrimaTecidos.Post;
      db_MateriaPrimaTecidosGradeSomar.Close;

      db_MateriaPrimaTecidos.Next;
   end;
   db_MateriaPrimaTecidos.First;

   blImportando :=False;


end;

procedure TFrmOrdemProducaoMateriaPrimaBaixar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vk_escape then
      close;
end;

procedure TFrmOrdemProducaoMateriaPrimaBaixar.FormResize(Sender: TObject);
begin
   DimensionarGrid(dbGrid_ProdutosMateriaPrima,self);
   DimensionarGrid(GridMateriaPrimaTecidos,self);
end;

procedure TFrmOrdemProducaoMateriaPrimaBaixar.FormShow(Sender: TObject);
begin
   DimensionarGrid(dbGrid_ProdutosMateriaPrima,self);
   DimensionarGrid(GridMateriaPrimaTecidos,self);
end;

end.
