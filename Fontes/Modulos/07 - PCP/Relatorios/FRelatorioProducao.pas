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


unit FRelatorioProducao;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Mask, StdCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos, ExtCtrls, frxClass, frxDBSet, DB,    
   FrmRelatoriosBotoes, Grids,
   DBGrids, FFrameBarra,   FrmRelatorios, Menus,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
   TFrmRelatorioProducao = class(TForm)
      PainelPrincipal: TPanel;
      FrameRelatoriosBotoes1: TFrameRelatoriosBotoes;
    frxNecessidade: TfrxReport;
    FRXDB_Necessidade: TfrxDBDataset;
    db_Necessidade: TFDQuery;
    FrameRelatorios1: TFrameRelatorios;
    frxDBFichasTecnicas: TfrxDBDataset;
    frxFichasTecnicas: TfrxReport;
    dbFichasTecnicas: TFDQuery;
    PainelParametros: TPanel;
    Panel3: TPanel;
    GroupBox_Colecao: TGroupBox;
    chk_Colecao: TCheckBox;
    PainelColecao: TPanel;
    Edit1: TEdit;
    EditColecao: TIDBEditDialog;
    GroupBox_Grife: TGroupBox;
    chk_Grife: TCheckBox;
    PainelGrife: TPanel;
    Edit2: TEdit;
    EditGrife: TIDBEditDialog;
    GroupBox_OP_Produtos: TGroupBox;
    chk_Referencia: TCheckBox;
    PainelProdutos: TPanel;
    EditProdutoB: TIDBEditDialog;
    EditProdutoA: TIDBEditDialog;
    GRPPeriodo: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    MskDataFim: TMaskEdit;
    MskDataIni: TMaskEdit;
    RadioData_OP: TRadioGroup;
    RadioGroup_Estagio: TRadioGroup;
    PopUpBarraBotoesImprimir: TPopupMenu;
    Imprimir1: TMenuItem;
    DB_PecasProduzidas: TFDQuery;
    frxPecasProduzidas: TfrxReport;
    frxDB_PecasProduzidas: TfrxDBDataset;
    frxDBD_EstoqueDisponivel: TfrxDBDataset;
    frxEstoqueDisponivel: TfrxReport;
    DB_EstoqueDisponivel: TFDQuery;
    FRX_ListagemOP: TfrxReport;
    db_ListagemOP: TFDQuery;
    frxDB_Listagem: TfrxDBDataset;
    GroupBox_OP_Lote: TGroupBox;
    chk_OP: TCheckBox;
    Painel_OP: TPanel;
    Panel1: TPanel;
    frxFasesLocalizacao: TfrxReport;
    db_FasesLocalizacao: TFDQuery;
    frxdb_FasesLocalizacao: TfrxDBDataset;
    SP_GerarNecessidades: TFDStoredProc;
    GroupBox_Fase: TGroupBox;
    chk_Fase: TCheckBox;
    PainelFase: TPanel;
    GroupBox1: TGroupBox;
    chklote: TCheckBox;
    Painel_Lote: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    chkdefeitos: TCheckBox;
    PainelDefeitos: TPanel;
    EditDefeito: TIDBEditDialog;
    Edit3: TEdit;
    GroupBox4: TGroupBox;
    chkperdas: TCheckBox;
    PainelPerdas: TPanel;
    EditPerda: TIDBEditDialog;
    Edit4: TEdit;
    EditFase1: TIDBEditDialog;
    GroupBox5: TGroupBox;
    EditQualidade: TIDBEditDialog;
    Edit5: TEdit;
    chkQualidades: TCheckBox;
    frxReport1: TfrxReport;
    UniQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    EditFase2: TIDBEditDialog;
    Edit_OP1: TIDBEditDialog;
    Edit_OP2: TIDBEditDialog;
    Edit_lote1: TIDBEditDialog;
    Edit_lote2: TIDBEditDialog;
    frxNecessidadeAnalitico: TfrxReport;
    db_NecessidadeAnalitico: TFDQuery;
    FRXDB_frxAndamentoFasesAnalitico: TfrxDBDataset;
    frxFasesHistoricos: TfrxReport;
    db_FasesHistoricos: TFDQuery;
    frxdb_FasesHistoricos: TfrxDBDataset;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    RadioTipo_Relatorio: TRadioGroup;
    rdgNecessidade: TRadioGroup;
    SP_GerarNecessidadesEstoque: TFDStoredProc;
    grpTerceirizado: TGroupBox;
    EditNomeCliente: TEdit;
    chkFornecedor: TCheckBox;
    EditFornecedor: TIDBEditDialog;
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure chk_GrifeClick(Sender: TObject);
      procedure chk_ColecaoClick(Sender: TObject);
      procedure chk_OPClick(Sender: TObject);
    procedure chk_ReferenciaClick(Sender: TObject);
    procedure FrameRelatoriosBotoes1SpbSairClick(Sender: TObject);
    procedure FrameRelatoriosBotoes1SpbImprimirClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure chk_FaseClick(Sender: TObject);
    procedure chkloteClick(Sender: TObject);
    procedure chkdefeitosClick(Sender: TObject);
    procedure chkperdasClick(Sender: TObject);
    procedure chkQualidadesClick(Sender: TObject);
    procedure RadioTipo_RelatorioClick(Sender: TObject);
    procedure chkFornecedorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

   private
      { Private declarations }

      Procedure MontaEscriptSQL;

   public
      { Public declarations }
   end;

var
   FrmRelatorioProducao: TFrmRelatorioProducao;

implementation

uses FPrincipal, Biblioteca, Biblioteca_pcp, Global, FBaseDados;

{$R *.dfm}

procedure TFrmRelatorioProducao.chk_FaseClick(Sender: TObject);
begin
   if chk_Fase.Checked then
   begin
      PainelFase.Enabled := False;
   end
   else
   begin
      PainelFase.Enabled := True;
      EditFase1.setfocus;
   end;

end;

procedure TFrmRelatorioProducao.chkFornecedorClick(Sender: TObject);
begin
   if chkFornecedor.Checked = true then
   Begin
      EditFornecedor.Enabled := False;
   End
   Else
   Begin
      EditFornecedor.Enabled := true;
      EditFornecedor.SetFocus;
   End;

end;

procedure TFrmRelatorioProducao.chkloteClick(Sender: TObject);
begin
   if chklote.Checked then
   begin
      Painel_Lote.Enabled := False;
   end
   else
   begin
      Painel_Lote.Enabled := True;
      Edit_lote1.Setfocus;
   end;

end;

procedure TFrmRelatorioProducao.chkdefeitosClick(Sender: TObject);
begin
   if chkdefeitos.Checked then
   begin
      PainelDefeitos.Enabled := False;
   end
   else
   begin
      PainelDefeitos.Enabled := True;
      EditDefeito.setfocus;
   end;

end;

procedure TFrmRelatorioProducao.chkperdasClick(Sender: TObject);
begin
   if chkperdas.Checked then
   begin
      PainelPerdas.Enabled := False;
   end
   else
   begin
      PainelPerdas.Enabled := True;
      EditPerda.setfocus;
   end;

end;

procedure TFrmRelatorioProducao.chkQualidadesClick(Sender: TObject);
begin
   if chkQualidades.Checked = true then
   Begin
      EditQualidade.Enabled := False;
   End
   Else
   Begin
      EditQualidade.Enabled := true;
      EditQualidade.SetFocus;
   End;

end;

procedure TFrmRelatorioProducao.chk_ColecaoClick(Sender: TObject);
begin

   if chk_Colecao.Checked then
   begin
      PainelColecao.Enabled := False;
   end
   else
   begin
      PainelColecao.Enabled := True;
   end;

end;

procedure TFrmRelatorioProducao.chk_GrifeClick(Sender: TObject);
begin

   if chk_Grife.Checked then
   begin
      PainelGrife.Enabled := False;
   end
   else
   begin
      PainelGrife.Enabled := True;
   end;

end;

procedure TFrmRelatorioProducao.chk_OPClick(Sender: TObject);
begin

   if chk_OP.Checked then
   begin
      Painel_OP.Enabled := False;
   end
   else
   begin
      Painel_OP.Enabled := True;
      Edit_OP1.Setfocus;

   end;

end;

procedure TFrmRelatorioProducao.chk_ReferenciaClick(Sender: TObject);
begin

   if chk_Referencia.Checked then
   begin
      PainelProdutos.Enabled := False;
   end
   else
   begin
      PainelProdutos.Enabled := True;
   end;

end;

procedure TFrmRelatorioProducao.FormCreate(Sender: TObject);
Var
   i: integer;
begin

   //MskDataIni.text := DateToStr(date-30);
   //MskDataFim.text := DateToStr(date+30);

   {
     for I := 1 to RadioTipo_Relatorio.Items.Count - 1 do
     begin
     TRadioGroup(RadioTipo_Relatorio.Controls[I]).Enabled:= False;
     end;
   }

 RadioTipo_Relatorio.Columns :=2;

end;

procedure TFrmRelatorioProducao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


   if Key = vk_escape then
      close;

end;

procedure TFrmRelatorioProducao.FormShow(Sender: TObject);
begin
   //TRadioGroup(RadioTipo_Relatorio.Controls[8]).Visible:= False;
   TRadioGroup(RadioTipo_Relatorio.Controls[9]).Visible:= False;
   TRadioGroup(RadioTipo_Relatorio.Controls[10]).Visible:= False;
   TRadioGroup(RadioTipo_Relatorio.Controls[11]).Visible:= False;
   TRadioGroup(RadioTipo_Relatorio.Controls[12]).Visible:= False;

end;

procedure TFrmRelatorioProducao.FrameRelatoriosBotoes1SpbImprimirClick(
  Sender: TObject);
begin
   dtDataIni := StrToDate(MskDataIni.text);
   dtDataFim := StrToDate(MskDataFim.text);
   strFornecedor := Trim(EditFornecedor.text);

   MontaEscriptSQL;

   case RadioTipo_Relatorio.ItemIndex of

      0   :  FRX_ListagemOP.ShowReport;
      1   :  frxNecessidade.ShowReport;
      2   :  frxFichasTecnicas.ShowReport;
      3   :  frxPecasProduzidas.ShowReport;
      4   :  frxEstoqueDisponivel.ShowReport;
      5   :  frxFasesLocalizacao.ShowReport;
      6   :  frxFasesHistoricos.ShowReport;
      7   :  frxNecessidadeAnalitico.ShowReport;

   End;

end;

procedure TFrmRelatorioProducao.FrameRelatoriosBotoes1SpbSairClick(
  Sender: TObject);
begin
  FrameRelatoriosBotoes1.SpbSairClick(Sender);

end;

procedure TFrmRelatorioProducao.Imprimir1Click(Sender: TObject);
begin
   FrameRelatoriosBotoes1SpbImprimirClick(sender);
end;

procedure TFrmRelatorioProducao.MontaEscriptSQL;
begin

   /// --------------------------------------------------------------------
   ///
   /// --------------------------------------------------------------------

   db_ListagemOP.close;
   db_ListagemOP.sql.clear;

   db_ListagemOP.sql.add(' SELECT * FROM VIEW_ORDEMPRODUCAO ');
   db_ListagemOP.sql.add(' WHERE ');
   db_ListagemOP.sql.add(' CODIGO > 0 ');
   db_ListagemOP.sql.add(' AND ');
   db_ListagemOP.sql.add(' QTDE_TOTAL > 0 ');
   db_ListagemOP.sql.add(' AND ');
   db_ListagemOP.sql.add('  ');

   /// --------------------------------------------------------------------
   ///
   /// --------------------------------------------------------------------

   db_Necessidade.close;
   db_Necessidade.sql.clear;
   db_Necessidade.sql.add('  ');
   db_Necessidade.sql.add(' SELECT * FROM TBL_NECESSIDADES ');
   db_Necessidade.sql.add('  ');


   /// --------------------------------------------------------------------
   ///
   /// --------------------------------------------------------------------

   dbFichasTecnicas.close;
   dbFichasTecnicas.sql.clear;
   dbFichasTecnicas.sql.add('  SELECT * FROM VIEW_REFERENCIAS  ') ;
   dbFichasTecnicas.sql.add('  WHERE  ') ;
   dbFichasTecnicas.sql.add('  TIPO_PRODUTO IN (''ACA'',''ACABADO'')  ') ;
   //dbFichasTecnicas.sql.add(' AND ');
   dbFichasTecnicas.sql.add('    ') ;


   db_FasesLocalizacao.close;
   db_FasesLocalizacao.sql.clear;
   db_FasesLocalizacao.sql.add('  SELECT  * FROM FNC_PCPFASERELOCALIZACAO(:NEMPRESA)     ') ;
   db_FasesLocalizacao.sql.add('  WHERE                                                            ') ;
   db_FasesLocalizacao.sql.add('  CODIGO>0                                                            ') ;
   db_FasesLocalizacao.sql.add('    ') ;
   db_FasesLocalizacao.ParamByName('NEMPRESA').AsInteger  :=  FSistema.Empresa;

   db_FasesHistoricos.close;
   db_FasesHistoricos.sql.clear;
   db_FasesHistoricos.sql.add('  SELECT DISTINCT  * FROM VIEW_PCPFASESHISTORICOS     ') ;
   db_FasesHistoricos.sql.add('  WHERE                                                            ') ;
   db_FasesHistoricos.sql.add('  ORDEMPRODUCAO>0                                                            ') ;
   db_FasesHistoricos.sql.add('    ') ;

   // parametros para filtrar os registros selecionados pelo usuário
   case RadioTipo_Relatorio.ItemIndex of

      0: begin // Listagem da Produção

            // retornar dados pela data de abertura da OP
            if RadioData_OP.ItemIndex = 0 then
            begin
               db_ListagemOP.sql.add(' data between :DATA_INI and :DATA_FIM  ');
               db_ListagemOP.ParamByName('DATA_INI').AsDate :=                 StrToDate(MskDataIni.text);
               db_ListagemOP.ParamByName('DATA_FIM').AsDate :=                 StrToDate(MskDataFim.text);
            end;

            // retornar dados pela data de encerramento da OP
            if RadioData_OP.ItemIndex = 1 then
            begin
               db_ListagemOP.sql.add(' DATAFECHAMENTO between :DATA_INI and :DATA_FIM  ');
               db_ListagemOP.ParamByName('DATA_INI').AsDate :=                  StrToDate(MskDataIni.text);
               db_ListagemOP.ParamByName('DATA_FIM').AsDate :=                  StrToDate(MskDataFim.text);
            end;

            // retornar dados pelo intervalo de OP
            if not chk_OP.Checked then
            begin
               db_ListagemOP.sql.add(' AND   CODIGO between :op_op1 and :op_op2  ');
               db_ListagemOP.ParamByName('op_op1').AsInteger :=                 StrToInt(Edit_OP1.text);
               db_ListagemOP.ParamByName('op_op2').AsInteger :=                 StrToInt(Edit_OP2.text);
            end;

            // retornar dados pelo intervalo de LOTE
            if not chklote.Checked then
            begin
               db_ListagemOP.sql.add(' AND   lote between :op_lote1 and :op_lote2  ');
               db_ListagemOP.ParamByName('op_lote1').AsInteger :=                 StrToIntDef(Edit_lote1.text,0);
               db_ListagemOP.ParamByName('op_lote2').AsInteger :=                 StrToIntDef(Edit_lote2.text,0);
            end;

            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Referencia.Checked then
            begin
               db_ListagemOP.sql.add(' AND   referencia between :referencia1 and :referencia2  ');
               db_ListagemOP.ParamByName('referencia1').AsString :=                 Trim(EditProdutoA.text);
               db_ListagemOP.ParamByName('referencia2').AsString :=                 Trim(EditProdutoB.text);
            end;

            // retornar dados pela grife
            if not chk_Grife.Checked then
            begin
               db_ListagemOP.sql.add(' AND   grife=:grife ');
               db_ListagemOP.ParamByName('grife').AsInteger :=                 StrToInt(EditGrife.text);
            end;

            // retornar dados pela coleção
            if not chk_Colecao.Checked then
            begin
               db_ListagemOP.sql.add(' AND   colecao=:colecao ');
               db_ListagemOP.ParamByName('colecao').AsInteger :=                 StrToInt(EditColecao.text);
            end;

            // retornar dados pelo estágio (status de conclusão) da OP
            // Que esteja em produção (aberto)
            if RadioGroup_Estagio.ItemIndex = 1 then
            begin
               db_ListagemOP.sql.add(' AND   ENCERRADO=' + QuotedStr('N'));
            end;

            // retornar dados pelo estágio (status de conclusão) da OP
            // Com produção encerrada (fechada)
            if RadioGroup_Estagio.ItemIndex = 2 then
            begin
               db_ListagemOP.sql.add(' AND   ENCERRADO=' + QuotedStr('S'));
            end;


         end;  // Listagem da Produção

      1: begin // Necessidade de Produção
             prcStatusMessage('Necessidade de Produção','processando informações, aguarde...',True);


             if rdgNecessidade.ItemIndex=0 then
             begin
                SP_GerarNecessidades.ParamByName('NEMPRESA').AsInteger  := FSistema.Empresa;
                SP_GerarNecessidades.ParamByName('DATA_INI').AsDate     := StrToDate(MskDataIni.text);
                SP_GerarNecessidades.ParamByName('DATA_FIM').AsDate     := StrToDate(MskDataFim.text);
                SP_GerarNecessidades.ExecProc;
                SP_GerarNecessidades.close;

                //frxNecessidade.Variables['rptParametro'] := QuotedStr (rdgNecessidade.Items.Strings[RdgFiltro.ItemIndex] + ' - Data de Entrega: ' + MskDataIni.Text + '  -  ' + MskDataFim.Text { + ' - (Todos os Pedidos)'} );
                frxNecessidade.Variables['rptParametro'] := QuotedStr (rdgNecessidade.Items.Strings[rdgNecessidade.ItemIndex] + ' - Data de Entrega: ' + MskDataIni.Text + '  -  ' + MskDataFim.Text { + ' - (Todos os Pedidos)'} );
             end;

             if rdgNecessidade.ItemIndex=1 then
             begin
                SP_GerarNecessidadesEstoque.ParamByName('NEMPRESA').AsInteger  := FSistema.Empresa;
                SP_GerarNecessidadesEstoque.ParamByName('DATA_INI').AsDate     := StrToDate(MskDataIni.text);
                SP_GerarNecessidadesEstoque.ParamByName('DATA_FIM').AsDate     := StrToDate(MskDataFim.text);
                SP_GerarNecessidadesEstoque.ExecProc;
                SP_GerarNecessidadesEstoque.close;

                frxNecessidade.Variables['rptParametro'] := QuotedStr (rdgNecessidade.Items.Strings[rdgNecessidade.ItemIndex] + ' - Data de Entrega: ' + MskDataIni.Text + '  -  ' + MskDataFim.Text { + ' - (Todos os Pedidos)'} );
             end;

            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Referencia.Checked then
            begin
               db_Necessidade.sql.add(' WHERE   referencia between :referencia1 and :referencia2  ');
               db_Necessidade.ParamByName('referencia1').AsString :=                 Trim(EditProdutoA.text);
               db_Necessidade.ParamByName('referencia2').AsString :=                 Trim(EditProdutoB.text);
            end;

            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Colecao.Checked then
            begin
               db_Necessidade.sql.add(' WHERE   colecao=:ncolecao  ');
               db_Necessidade.ParamByName('ncolecao').AsInteger :=  StrToIntDef(EditColecao.text,0);
            end;

            db_Necessidade.sql.add(' order by REFERENCIA, COR, ORDEM_GRADE ');
            prcStatusMessage('','',false);

         end;  // Risco de Produção Acima do Necessário

      2: begin // Fichas tecnicas cadastradas

            // retornar dados pela data de abertura da OP
            if RadioData_OP.ItemIndex = 0 then
            begin
               dbFichasTecnicas.sql.add(' AND data  between :DATA_INI and :DATA_FIM  ');
               dbFichasTecnicas.ParamByName('DATA_INI').AsDate :=   StrToDate(MskDataIni.text);
               dbFichasTecnicas.ParamByName('DATA_FIM').AsDate :=   StrToDate(MskDataFim.text);
            end;

            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Referencia.Checked then
            begin
               dbFichasTecnicas.sql.add(' AND  REFERENCIA between :referencia1 and :referencia2  ');
               dbFichasTecnicas.ParamByName('referencia1').AsString :=  Trim(EditProdutoA.text);
               dbFichasTecnicas.ParamByName('referencia2').AsString :=  Trim(EditProdutoB.text);
            end;

            // retornar dados pela grife
            if not chk_Grife.Checked then
            begin
               dbFichasTecnicas.sql.add(' AND  grife=:grife ');
               dbFichasTecnicas.ParamByName('grife').AsInteger :=                 StrToInt(EditGrife.text);
            end;

            // retornar dados pela coleção
            if not chk_Colecao.Checked then
            begin
               dbFichasTecnicas.sql.add(' AND  colecao=:colecao ');
               dbFichasTecnicas.ParamByName('colecao').AsInteger :=                  StrToInt(EditColecao.text);
            end;

            dbFichasTecnicas.sql.add('  ORDER BY GRUPO_NOME, REFERENCIA  ') ;


         end;  // Necessidade de Produção

      3:
         begin
            DB_EstoqueDisponivel.close;
            DB_EstoqueDisponivel.sql.clear;
            DB_EstoqueDisponivel.sql.add('select');
            //DB_EstoqueDisponivel.sql.add('distinct(referencia),');
            DB_EstoqueDisponivel.sql.add('referencia,');
            DB_EstoqueDisponivel.sql.add('ORDEM_GRADE,');
            DB_EstoqueDisponivel.sql.add('DESCRICAO,');
            DB_EstoqueDisponivel.sql.add('cor,');
            DB_EstoqueDisponivel.sql.add('tamanho,');
            DB_EstoqueDisponivel.sql.add('QUANTIDADE');

            if chkQualidades.Checked = true Then
            BEGIN
              DB_EstoqueDisponivel.sql.add('from  VIEW_CADPRODUTOS_GRADES');


                 // retornar dados pelo intervalo de Referencias/Produtos
              if not chk_Referencia.Checked then
              begin
                 DB_EstoqueDisponivel.sql.add('  WHERE referencia between :referencia1 and :referencia2  ');
                 DB_EstoqueDisponivel.ParamByName('referencia1').AsString :=  Trim(EditProdutoA.text);
                 DB_EstoqueDisponivel.ParamByName('referencia2').AsString :=  Trim(EditProdutoB.text);
              end;
            END;

            if chkQualidades.Checked = false Then
            begin
               DB_EstoqueDisponivel.sql.add('from  VIEW_CADPRODUTOS_GRADESQUALIDADE') ;
               DB_EstoqueDisponivel.sql.add('where QUALIDADE=:NQUALIDADE');
               DB_EstoqueDisponivel.ParamByName('NQUALIDADE').AsInteger :=StrToIntDef(EditQualidade.text,0);
            end;

         end;

      4:
         begin
            DB_EstoqueDisponivel.close;
            DB_EstoqueDisponivel.sql.clear;
            DB_EstoqueDisponivel.sql.add('select');
            //DB_EstoqueDisponivel.sql.add('distinct(referencia),');
            DB_EstoqueDisponivel.sql.add('referencia,');
            DB_EstoqueDisponivel.sql.add('ORDEM_GRADE,');
            DB_EstoqueDisponivel.sql.add('DESCRICAO,');
            DB_EstoqueDisponivel.sql.add('cor,');
            DB_EstoqueDisponivel.sql.add('tamanho,');
            DB_EstoqueDisponivel.sql.add('QUANTIDADE');

            if chkQualidades.Checked = true Then
            BEGIN
              DB_EstoqueDisponivel.sql.add('from  VIEW_CADPRODUTOS_GRADES');


                 // retornar dados pelo intervalo de Referencias/Produtos
              if not chk_Referencia.Checked then
              begin
                 DB_EstoqueDisponivel.sql.add('  WHERE referencia between :referencia1 and :referencia2  ');
                 DB_EstoqueDisponivel.ParamByName('referencia1').AsString :=  Trim(EditProdutoA.text);
                 DB_EstoqueDisponivel.ParamByName('referencia2').AsString :=  Trim(EditProdutoB.text);
              end;
            END;

            if chkQualidades.Checked = false Then
            begin
               DB_EstoqueDisponivel.sql.add('from  VIEW_CADPRODUTOS_GRADESQUALIDADE') ;
               DB_EstoqueDisponivel.sql.add('where QUALIDADE=:NQUALIDADE');
               DB_EstoqueDisponivel.ParamByName('NQUALIDADE').AsInteger :=StrToIntDef(EditQualidade.text,0);
            end;


         end;

      5:
         begin
            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Referencia.Checked then
            begin
               db_FasesLocalizacao.sql.add  (' AND  REFERENCIA between :referencia1 and :referencia2  ');
               db_FasesLocalizacao.ParamByName('referencia1').AsString :=  Trim(EditProdutoA.text);
               db_FasesLocalizacao.ParamByName('referencia2').AsString :=  Trim(EditProdutoB.text);
            end;



            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Referencia.Checked then
            begin
               db_FasesLocalizacao.sql.add  (' AND  REFERENCIA between :referencia1 and :referencia2  ');
               db_FasesLocalizacao.ParamByName('referencia1').AsString :=  Trim(EditProdutoA.text);
               db_FasesLocalizacao.ParamByName('referencia2').AsString :=  Trim(EditProdutoB.text);
            end;


            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Fase.Checked then
            begin
               db_FasesLocalizacao.sql.add  (' AND  FASE between :nfase1 and :nfase2    ');
               db_FasesLocalizacao.ParamByName('NFASE1').AsInteger  :=  StrToIntDef(EditFase1.text,0);
               db_FasesLocalizacao.ParamByName('NFASE2').AsInteger  :=  StrToIntDef(EditFase2.text,0);
            end;

            // retornar dados pelo intervalo de OP
            if not chk_OP.Checked then
            begin
               db_FasesLocalizacao.sql.add(' AND   CODIGO between :op_op1 and :op_op2  ');
               db_FasesLocalizacao.ParamByName('op_op1').AsInteger :=                 StrToInt(Edit_OP1.text);
               db_FasesLocalizacao.ParamByName('op_op2').AsInteger :=                 StrToInt(Edit_OP2.text);
            end;

            // retornar dados pelo intervalo de LOTE
            if not chklote.Checked then
            begin
               db_FasesLocalizacao.sql.add(' AND   lote between :op_lote1 and :op_lote2  ');
               db_FasesLocalizacao.ParamByName('op_lote1').AsInteger :=                 StrToIntDef(Edit_lote1.text,0);
               db_FasesLocalizacao.ParamByName('op_lote2').AsInteger :=                 StrToIntDef(Edit_lote2.text,0);
            end;

            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Colecao.Checked then
            begin
               db_FasesLocalizacao.sql.add(' AND   colecao=:ncolecao  ');
               db_FasesLocalizacao.ParamByName('ncolecao').AsInteger :=  StrToIntDef(EditColecao.text,0);
            end;

            if not chkFornecedor.Checked then
            begin
               db_FasesLocalizacao.sql.add(' AND   terceirizado=:nterceirizado  ');
               db_FasesLocalizacao.ParamByName('nterceirizado').AsInteger :=  StrToIntDef(strFornecedor,0);
            end;

            db_FasesLocalizacao.sql.add('  ORDER BY                           ') ;
            db_FasesLocalizacao.sql.add('                                        ') ;
            db_FasesLocalizacao.sql.add('  FASEORDEM,                                 ') ;
            db_FasesLocalizacao.sql.add('  CODIGO,                            ') ;
            db_FasesLocalizacao.sql.add('  REFERENCIA                         ') ;
            db_FasesLocalizacao.sql.add('                                        ') ;

         end;

      6:
         begin
            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Referencia.Checked then
            begin
               db_FasesHistoricos.sql.add  (' AND  REFERENCIA between :referencia1 and :referencia2  ');
               db_FasesHistoricos.ParamByName('referencia1').AsString :=  Trim(EditProdutoA.text);
               db_FasesHistoricos.ParamByName('referencia2').AsString :=  Trim(EditProdutoB.text);
            end;



            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Referencia.Checked then
            begin
               db_FasesHistoricos.sql.add  (' AND  REFERENCIA between :referencia1 and :referencia2  ');
               db_FasesHistoricos.ParamByName('referencia1').AsString :=  Trim(EditProdutoA.text);
               db_FasesHistoricos.ParamByName('referencia2').AsString :=  Trim(EditProdutoB.text);
            end;


            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Fase.Checked then
            begin
               db_FasesHistoricos.sql.add  (' AND  FASE between :nfase1 and :nfase2    ');
               db_FasesHistoricos.ParamByName('NFASE1').AsInteger  :=  StrToIntDef(EditFase1.text,0);
               db_FasesHistoricos.ParamByName('NFASE2').AsInteger  :=  StrToIntDef(EditFase2.text,0);
            end;

            // retornar dados pelo intervalo de OP
            if not chk_OP.Checked then
            begin
               db_FasesHistoricos.sql.add(' AND   ORDEMPRODUCAO between :op_op1 and :op_op2  ');
               db_FasesHistoricos.ParamByName('op_op1').AsInteger :=                 StrToInt(Edit_OP1.text);
               db_FasesHistoricos.ParamByName('op_op2').AsInteger :=                 StrToInt(Edit_OP2.text);
            end;

            // retornar dados pelo intervalo de LOTE
            if not chklote.Checked then
            begin
               db_FasesHistoricos.sql.add(' AND   lote between :op_lote1 and :op_lote2  ');
               db_FasesHistoricos.ParamByName('op_lote1').AsInteger :=                 StrToIntDef(Edit_lote1.text,0);
               db_FasesHistoricos.ParamByName('op_lote2').AsInteger :=                 StrToIntDef(Edit_lote2.text,0);
            end;

            if not chkFornecedor.Checked then
            begin
               db_FasesHistoricos.sql.add(' AND   terceirizado=:nterceirizado  ');
               db_FasesHistoricos.ParamByName('nterceirizado').AsInteger :=  StrToIntDef(strFornecedor,0);
            end;

            db_FasesHistoricos.sql.add('  ORDER BY                           ') ;
            db_FasesHistoricos.sql.add('                                        ') ;
            db_FasesHistoricos.sql.add('  FASEORDEM,                                 ') ;
            db_FasesHistoricos.sql.add('  ORDEMPRODUCAO,                           ') ;
            db_FasesHistoricos.sql.add('  REFERENCIA                         ') ;
            db_FasesHistoricos.sql.add('                                        ') ;

         end;


      7:  begin // Necessidade de Produção
             prcStatusMessage('Necessidade de Produção','processando informações, aguarde...',True);

             SP_GerarNecessidades.ParamByName('NEMPRESA').AsInteger  := FSistema.Empresa;
             SP_GerarNecessidades.ParamByName('DATA_INI').AsDate     := StrToDate(MskDataIni.text);
             SP_GerarNecessidades.ParamByName('DATA_FIM').AsDate     := StrToDate(MskDataFim.text);
             SP_GerarNecessidades.ExecProc;
             SP_GerarNecessidades.close;

            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Referencia.Checked then
            begin
               db_Necessidade.sql.add(' WHERE   referencia between :referencia1 and :referencia2  ');
               db_Necessidade.ParamByName('referencia1').AsString :=                 Trim(EditProdutoA.text);
               db_Necessidade.ParamByName('referencia2').AsString :=                 Trim(EditProdutoB.text);
            end;

            db_Necessidade.sql.add(' order by REFERENCIA, COR, ORDEM_GRADE ');
            prcStatusMessage('','',false);

         end;  // Risco de Produção Acima do Necessário


      8:
         begin

         end;

   End;

end;

procedure TFrmRelatorioProducao.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.text := fncDataValidar(MskDataFim.text);
end;

procedure TFrmRelatorioProducao.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);
end;

procedure TFrmRelatorioProducao.RadioTipo_RelatorioClick(Sender: TObject);
begin

   if RadioTipo_Relatorio.ItemIndex=1 then
      rdgNecessidade.Visible :=True
   else
      rdgNecessidade.Visible :=False;


   if (RadioTipo_Relatorio.ItemIndex in [5,6]) then
      grpTerceirizado.Visible :=True
   else
      grpTerceirizado.Visible :=False;

end;

end.


