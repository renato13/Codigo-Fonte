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


unit FTerceirizadosRelatorios;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Mask, StdCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos, ExtCtrls, frxClass, frxDBSet, DB,    
    FrmRelatoriosBotoes, Grids,
   DBGrids, FFrameBarra,   FrmRelatorios, Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmTerceirizadosRelatorios = class(TForm)
      PainelPrincipal: TPanel;
      FrameRelatoriosBotoes1: TFrameRelatoriosBotoes;
    FRXAgendaProducaoTerceirizados: TfrxReport;
    frxDB_AgendaProducaoTerceirizados: TfrxDBDataset;
    DB_AgendaProducaoTerceirizados:  TFDQuery;
    FrameRelatorios1: TFrameRelatorios;
    PainelParametros: TPanel;
    RadioTipo_Relatorio: TRadioGroup;
    Panel3: TPanel;
    GroupBox_OP_Lote: TGroupBox;
    chk_OP: TCheckBox;
    Painel_OP: TPanel;
    Edit_OP1: TIDBEditDialog;
    Edit_OP2: TIDBEditDialog;
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
    DB_RetornoServicos: TFDQuery;
    frxRetornoServicos: TfrxReport;
    frxDB_RetornoServicos: TfrxDBDataset;
    frxDBD_PerdasProducao: TfrxDBDataset;
    frxPerdasProducao: TfrxReport;
    DB_PerdasProducao: TFDQuery;
    frxRemessaServicos: TfrxReport;
    db_RemessaServicos: TFDQuery;
    frxDB_RemessaServicos: TfrxDBDataset;
    FRXAgendaProducaoFases: TfrxReport;
    DB_AgendaProducaoFases: TFDQuery;
    frxDB_AgendaProducaoFases: TfrxDBDataset;
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure chk_OPClick(Sender: TObject);
    procedure chk_ReferenciaClick(Sender: TObject);
    procedure FrameRelatoriosBotoes1SpbSairClick(Sender: TObject);
    procedure FrameRelatoriosBotoes1SpbImprimirClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);

   private
      { Private declarations }

      Procedure MontaEscriptSQL;

   public
      { Public declarations }
   end;

var
   FrmTerceirizadosRelatorios: TFrmTerceirizadosRelatorios;

implementation

uses FPrincipal, Biblioteca, Biblioteca_pcp, Global;

{$R *.dfm}

procedure TFrmTerceirizadosRelatorios.chk_OPClick(Sender: TObject);
begin

   if chk_OP.Checked then
   begin
      Painel_OP.Enabled := False;
   end
   else
   begin
      Painel_OP.Enabled := True;
   end;

end;

procedure TFrmTerceirizadosRelatorios.chk_ReferenciaClick(Sender: TObject);
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

procedure TFrmTerceirizadosRelatorios.FormCreate(Sender: TObject);
Var
   i: integer;
begin

   MskDataIni.text := DateToStr(date-30);
   MskDataFim.text := DateToStr(date);

   {
     for I := 1 to RadioTipo_Relatorio.Items.Count - 1 do
     begin
     TRadioGroup(RadioTipo_Relatorio.Controls[I]).Enabled:= False;
     end;
   }

end;

procedure TFrmTerceirizadosRelatorios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


   if Key = vk_escape then
      close;

end;

procedure TFrmTerceirizadosRelatorios.FrameRelatoriosBotoes1SpbImprimirClick(
  Sender: TObject);
begin

   MontaEscriptSQL;

   case RadioTipo_Relatorio.ItemIndex of

      0   :  frxRemessaServicos.ShowReport;
      1   :  frxRetornoServicos.ShowReport;
      2   :  FRXAgendaProducaoTerceirizados.ShowReport;
      3   :  FRXAgendaProducaoFases.ShowReport;

   End;

end;

procedure TFrmTerceirizadosRelatorios.FrameRelatoriosBotoes1SpbSairClick(
  Sender: TObject);
begin
  FrameRelatoriosBotoes1.SpbSairClick(Sender);

end;

procedure TFrmTerceirizadosRelatorios.Imprimir1Click(Sender: TObject);
begin
   FrameRelatoriosBotoes1SpbImprimirClick(sender);
end;

procedure TFrmTerceirizadosRelatorios.MontaEscriptSQL;
begin

   /// --------------------------------------------------------------------
   ///
   /// --------------------------------------------------------------------

   db_RemessaServicos.close;
   db_RemessaServicos.sql.clear;

   //db_RemessaServicos.sql.add(' SELECT DISTINCT(OP_LOTE) ');
   db_RemessaServicos.sql.add(' SELECT * FROM VIEW_PCPFASETRANSFERENCIA ');
   db_RemessaServicos.sql.add(' WHERE ');
   db_RemessaServicos.sql.add(' EMPRESA > 0  ');
   db_RemessaServicos.sql.add('  ');

   /// --------------------------------------------------------------------
   ///
   /// --------------------------------------------------------------------

   DB_RetornoServicos.close;
   DB_RetornoServicos.sql.clear;
   DB_RetornoServicos.sql.add(' SELECT * FROM VIEW_PCPFASETRANSFERENCIA    ') ;
   DB_RetornoServicos.sql.add(' WHERE   ') ;
   DB_RetornoServicos.sql.add(' CODIGO > 0 AND QTDE_RETORNO > 0   ') ;
   DB_RetornoServicos.sql.add('    ') ;

   /// --------------------------------------------------------------------
   ///
   /// --------------------------------------------------------------------

   DB_AgendaProducaoTerceirizados.close;
   DB_AgendaProducaoTerceirizados.sql.clear;
   DB_AgendaProducaoTerceirizados.sql.add('  SELECT * FROM VIEW_PCPFASEREFERENCIASALDOS  ') ;
   DB_AgendaProducaoTerceirizados.sql.add('  WHERE  ') ;
   DB_AgendaProducaoTerceirizados.sql.add('  REMESSA > 0   ') ;
   DB_AgendaProducaoTerceirizados.sql.add('  ');


   /// --------------------------------------------------------------------
   ///
   /// --------------------------------------------------------------------

   DB_AgendaProducaoFases.close;
   DB_AgendaProducaoFases.sql.clear;
   DB_AgendaProducaoFases.sql.add('  SELECT * FROM VIEW_PCPFASEREFERENCIASALDOS  ') ;
   DB_AgendaProducaoFases.sql.add('  WHERE  ') ;
   DB_AgendaProducaoFases.sql.add('  REMESSA > 0    ') ;
   DB_AgendaProducaoFases.sql.add('  ');



   /// --------------------------------------------------------------------
   ///
   /// --------------------------------------------------------------------

   DB_PerdasProducao.close;
   DB_PerdasProducao.sql.clear;
   DB_PerdasProducao.sql.add('  SELECT * FROM VIEW_REFERENCIAS  ') ;
   DB_PerdasProducao.sql.add('  WHERE  ') ;
   DB_PerdasProducao.sql.add('  TIPO_PRODUTO=''ACA''  ') ;
   //DB_PerdasProducao.sql.add(' AND ');
   DB_PerdasProducao.sql.add('    ') ;


   // parametros para filtrar os registros selecionados pelo usuário
   case RadioTipo_Relatorio.ItemIndex of

      0: begin // Listagem da Produção

            // retornar dados pela data de abertura da OP
            if RadioData_OP.ItemIndex = 0 then
            begin
               db_RemessaServicos.sql.add(' AND    data between :DATA_INI and :DATA_FIM  ');
               db_RemessaServicos.ParamByName('DATA_INI').AsDate :=                 StrToDate(MskDataIni.text);
               db_RemessaServicos.ParamByName('DATA_FIM').AsDate :=                 StrToDate(MskDataFim.text);
            end;

            // retornar dados pela data de encerramento da OP
            if RadioData_OP.ItemIndex = 1 then
            begin
               db_RemessaServicos.sql.add(' AND    DATARETORNO between :DATA_INI and :DATA_FIM  ');
               db_RemessaServicos.ParamByName('DATA_INI').AsDate :=                 StrToDate(MskDataIni.text);
               db_RemessaServicos.ParamByName('DATA_FIM').AsDate :=                 StrToDate(MskDataFim.text);
            end;

            // retornar dados pelo intervalo de OP
            if not chk_OP.Checked then
            begin
               db_RemessaServicos.sql.add(' AND   ORDEMPRODUCAO between :op_lote1 and :op_lote2  ');
               db_RemessaServicos.ParamByName('op_lote1').AsInteger :=                 StrToInt(Edit_OP1.text);
               db_RemessaServicos.ParamByName('op_lote2').AsInteger :=                 StrToInt(Edit_OP2.text);
            end;

            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Referencia.Checked then
            begin
               {
               db_RemessaServicos.sql.add(' AND   referencia between :referencia1 and :referencia2  ');
               db_RemessaServicos.ParamByName('referencia1').AsString :=                 Trim(EditProdutoA.text);
               db_RemessaServicos.ParamByName('referencia2').AsString :=                 Trim(EditProdutoB.text);
               }
            end;

            // retornar dados pelo estágio (status de conclusão) da OP
            // Que esteja em produção (aberto)
            if RadioGroup_Estagio.ItemIndex = 1 then
            begin
               db_RemessaServicos.sql.add(' AND   ENCERRADO=' + QuotedStr('N'));
            end;

            // retornar dados pelo estágio (status de conclusão) da OP
            // Com produção encerrada (fechada)
            if RadioGroup_Estagio.ItemIndex = 2 then
            begin
               db_RemessaServicos.sql.add(' AND   ENCERRADO=' + QuotedStr('S'));
            end;

            db_RemessaServicos.sql.add('  Order by data, TERCEIRIZADO_NOME  ') ;

         end;  // Listagem da Produção

      1: begin // Necessidade de Produção


            // retornar dados pela data de abertura da OP
            if RadioData_OP.ItemIndex = 0 then
            begin
               DB_RetornoServicos.sql.add(' AND    data between :DATA_INI and :DATA_FIM  ');
               DB_RetornoServicos.ParamByName('DATA_INI').AsDate :=                 StrToDate(MskDataIni.text);
               DB_RetornoServicos.ParamByName('DATA_FIM').AsDate :=                 StrToDate(MskDataFim.text);
            end;

            // retornar dados pela data de encerramento da OP
            if RadioData_OP.ItemIndex = 1 then
            begin
               DB_RetornoServicos.sql.add(' AND    DATARETORNO between :DATA_INI and :DATA_FIM  ');
               DB_RetornoServicos.ParamByName('DATA_INI').AsDate :=                 StrToDate(MskDataIni.text);
               DB_RetornoServicos.ParamByName('DATA_FIM').AsDate :=                 StrToDate(MskDataFim.text);
            end;

            // retornar dados pelo intervalo de OP
            if not chk_OP.Checked then
            begin
               DB_RetornoServicos.sql.add(' AND   ORDEMPRODUCAO between :op_lote1 and :op_lote2  ');
               DB_RetornoServicos.ParamByName('op_lote1').AsInteger :=                 StrToInt(Edit_OP1.text);
               DB_RetornoServicos.ParamByName('op_lote2').AsInteger :=                 StrToInt(Edit_OP2.text);
            end;

            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Referencia.Checked then
            begin
               {
               DB_RetornoServicos.sql.add(' AND   referencia between :referencia1 and :referencia2  ');
               DB_RetornoServicos.ParamByName('referencia1').AsString :=                 Trim(EditProdutoA.text);
               DB_RetornoServicos.ParamByName('referencia2').AsString :=                 Trim(EditProdutoB.text);
               }
            end;

            // retornar dados pelo estágio (status de conclusão) da OP
            // Que esteja em produção (aberto)
            if RadioGroup_Estagio.ItemIndex = 1 then
            begin
               DB_RetornoServicos.sql.add(' AND   ENCERRADO=' + QuotedStr('N'));
            end;

            // retornar dados pelo estágio (status de conclusão) da OP
            // Com produção encerrada (fechada)
            if RadioGroup_Estagio.ItemIndex = 2 then
            begin
               DB_RetornoServicos.sql.add(' AND   ENCERRADO=' + QuotedStr('S'));
            end;

            DB_RetornoServicos.sql.add('  Order by data, FORNECEDOR_NOME  ') ;

         end;  // Necessidade de Produção

      2: begin // Produção excedente

            // retornar dados pela data de abertura da OP
            if RadioData_OP.ItemIndex = 0 then
            begin
               DB_AgendaProducaoTerceirizados.sql.add(' AND    data between :DATA_INI and :DATA_FIM  ');
               DB_AgendaProducaoTerceirizados.ParamByName('DATA_INI').AsDate :=                 StrToDate(MskDataIni.text);
               DB_AgendaProducaoTerceirizados.ParamByName('DATA_FIM').AsDate :=                 StrToDate(MskDataFim.text);
            end;

            // retornar dados pela data de encerramento da OP
            if RadioData_OP.ItemIndex = 1 then
            begin
               DB_AgendaProducaoTerceirizados.sql.add(' AND    DATARETORNO between :DATA_INI and :DATA_FIM  ');
               DB_AgendaProducaoTerceirizados.ParamByName('DATA_INI').AsDate :=                 StrToDate(MskDataIni.text);
               DB_AgendaProducaoTerceirizados.ParamByName('DATA_FIM').AsDate :=                 StrToDate(MskDataFim.text);
            end;

            // retornar dados pelo intervalo de OP
            if not chk_OP.Checked then
            begin
               DB_AgendaProducaoTerceirizados.sql.add(' AND   ORDEMPRODUCAO between :op_lote1 and :op_lote2  ');
               DB_AgendaProducaoTerceirizados.ParamByName('op_lote1').AsInteger :=                 StrToInt(Edit_OP1.text);
               DB_AgendaProducaoTerceirizados.ParamByName('op_lote2').AsInteger :=                 StrToInt(Edit_OP2.text);
            end;

            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Referencia.Checked then
            begin
               {
               DB_AgendaProducaoTerceirizados.sql.add(' AND   referencia between :referencia1 and :referencia2  ');
               DB_AgendaProducaoTerceirizados.ParamByName('referencia1').AsString :=                 Trim(EditProdutoA.text);
               DB_AgendaProducaoTerceirizados.ParamByName('referencia2').AsString :=                 Trim(EditProdutoB.text);
               }
            end;

            // retornar dados pelo estágio (status de conclusão) da OP
            // Que esteja em produção (aberto)
            if RadioGroup_Estagio.ItemIndex = 1 then
            begin
               DB_AgendaProducaoTerceirizados.sql.add(' AND   ENCERRADO=' + QuotedStr('N'));
            end;

            // retornar dados pelo estágio (status de conclusão) da OP
            // Com produção encerrada (fechada)
            if RadioGroup_Estagio.ItemIndex = 2 then
            begin
               DB_AgendaProducaoTerceirizados.sql.add(' AND   ENCERRADO=' + QuotedStr('S'));
            end;

            DB_AgendaProducaoTerceirizados.sql.add('  ORDER BY DATA, FORNECEDOR_NOME, FASE_NOME, COR, ORDEM_GRADE   ') ;

         end;  // Risco de Produção Acima do Necessário

      3: begin // Fichas tecnicas cadastradas


            // retornar dados pela data de abertura da OP
            if RadioData_OP.ItemIndex = 0 then
            begin
               DB_AgendaProducaoFases.sql.add(' AND    data between :DATA_INI and :DATA_FIM  ');
               DB_AgendaProducaoFases.ParamByName('DATA_INI').AsDate :=                 StrToDate(MskDataIni.text);
               DB_AgendaProducaoFases.ParamByName('DATA_FIM').AsDate :=                 StrToDate(MskDataFim.text);
            end;

            // retornar dados pela data de encerramento da OP
            if RadioData_OP.ItemIndex = 1 then
            begin
               DB_AgendaProducaoFases.sql.add(' AND    DATARETORNO between :DATA_INI and :DATA_FIM  ');
               DB_AgendaProducaoFases.ParamByName('DATA_INI').AsDate :=                 StrToDate(MskDataIni.text);
               DB_AgendaProducaoFases.ParamByName('DATA_FIM').AsDate :=                 StrToDate(MskDataFim.text);
            end;

            // retornar dados pelo intervalo de OP
            if not chk_OP.Checked then
            begin
               DB_AgendaProducaoFases.sql.add(' AND   ORDEMPRODUCAO between :op_lote1 and :op_lote2  ');
               DB_AgendaProducaoFases.ParamByName('op_lote1').AsInteger :=                 StrToInt(Edit_OP1.text);
               DB_AgendaProducaoFases.ParamByName('op_lote2').AsInteger :=                 StrToInt(Edit_OP2.text);
            end;

            // retornar dados pelo intervalo de Referencias/Produtos
            if not chk_Referencia.Checked then
            begin
               {
               DB_AgendaProducaoFases.sql.add(' AND   referencia between :referencia1 and :referencia2  ');
               DB_AgendaProducaoFases.ParamByName('referencia1').AsString :=                 Trim(EditProdutoA.text);
               DB_AgendaProducaoFases.ParamByName('referencia2').AsString :=                 Trim(EditProdutoB.text);
               }
            end;

            // retornar dados pelo estágio (status de conclusão) da OP
            // Que esteja em produção (aberto)
            if RadioGroup_Estagio.ItemIndex = 1 then
            begin
               DB_AgendaProducaoFases.sql.add(' AND   ENCERRADO=' + QuotedStr('N'));
            end;

            // retornar dados pelo estágio (status de conclusão) da OP
            // Com produção encerrada (fechada)
            if RadioGroup_Estagio.ItemIndex = 2 then
            begin
               DB_AgendaProducaoFases.sql.add(' AND   ENCERRADO=' + QuotedStr('S'));
            end;

            DB_AgendaProducaoFases.sql.add('  ORDER BY DATA, FASE_NOME, FORNECEDOR_NOME, COR, ORDEM_GRADE   ') ;

         end;  // Necessidade de Produção

      4:
         begin

         end;

      5:
         begin

         end;

      6:
         begin

         end;

      7:
         begin

         end;

      8:
         begin

         end;

      9:
         begin

         end;

   End;

end;

procedure TFrmTerceirizadosRelatorios.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.text := fncDataValidar(MskDataFim.text);
end;

procedure TFrmTerceirizadosRelatorios.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);
end;

end.

