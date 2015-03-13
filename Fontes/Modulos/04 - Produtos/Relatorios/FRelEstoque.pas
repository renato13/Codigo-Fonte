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

unit FRelEstoque;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, DB,    
   Spin, FrmRelatorios,   DBCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn,
   IDBEdit, uEstSearchDialogZeos, frxClass, frxDBSet, Classe.Global,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRelEstoque = class(TForm)
      Panel1: TPanel;
      RadioG: TRadioGroup;
      GroupBox1: TGroupBox;
      chkFornecedor: TCheckBox;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      GbOrdenar: TRadioGroup;
      GroupBox3: TGroupBox;
      chkgrupos: TCheckBox;
      GroupBox4: TGroupBox;
    GrpTipoProduto: TGroupBox;
    FrameRelatorios1: TFrameRelatorios;
    DS_TipoProduto: TDataSource;
    db_TipoProduto: TFDQuery;
    EditTipProduto: TDBLookupComboBox;
    ChkTipoProduto: TCheckBox;
    frxEstoqueDisponivel: TfrxReport;
    DB_EstoqueDisponivel: TFDQuery;
    frxDBD_EstoqueDisponivel: TfrxDBDataset;
    EditFornecedor: TIDBEditDialog;
    EditNomeCliente: TEdit;
    EditGrupo: TIDBEditDialog;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    EditQualidade: TIDBEditDialog;
    Edit2: TEdit;
    chkQualidades: TCheckBox;
    PainelProdutos: TPanel;
    EditProdutoFim: TIDBEditDialog;
    EditProdutoInicio: TIDBEditDialog;
    chk_Referencia: TCheckBox;
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure chkFornecedorClick(Sender: TObject);
      procedure chkgruposClick(Sender: TObject);
    procedure ChkTipoProdutoClick(Sender: TObject);
    procedure DB_EstoqueDisponivelBeforeOpen(DataSet: TDataSet);
    procedure chkQualidadesClick(Sender: TObject);
    procedure chk_ReferenciaClick(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelEstoque: TFrmRelEstoque;

implementation

uses Biblioteca, Global, FRelPagar_Extrato, FRelPagar_Vencidas,
   FRelPagar_Quitadas,
   FRelPagar_Historico, FRelPagar_Pagar,
   FBaseDados, F_RelEst_Posicao,
   F_RelEst_ListaPreco, F_RelEst_Minimo,
   F_RelEst_Historico;

{$R *.DFM}

procedure TFrmRelEstoque.chk_ReferenciaClick(Sender: TObject);
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

procedure TFrmRelEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   db_TipoProduto.close;
   Action := cafree;
end;

procedure TFrmRelEstoque.Btn_ImprimirClick(Sender: TObject);
begin

   strFornecedor := Trim(EditFornecedor.text);
   strGrupo      := Trim(EditGrupo.text);

   if GbOrdenar.ItemIndex = 0 then
   Begin
      strOrdemDados := ' GRUPO, REFERENCIA, DESCRICAO  ';
   End;

   If GbOrdenar.ItemIndex = 1 then
   Begin
      strOrdemDados := ' REFERENCIA ';
   End;

   if GbOrdenar.ItemIndex = 2 then
   Begin
      strOrdemDados := ' DESCRICAO  ';
   End;


   // Posição do Estoque
   If RadioG.ItemIndex = 0 then
   Begin
      Frm_RelEst_Posicao := TFrm_RelEst_Posicao.create(self);
   End;

   // Lista de Preços
   If RadioG.ItemIndex = 1 then
   Begin
      Frm_RelEst_ListaPreco := TFrm_RelEst_ListaPreco.create(self);
   End;

   // Estoque Minimo
   If RadioG.ItemIndex = 2 then
   Begin
      Frm_RelEst_Minimo := TFrm_RelEst_Minimo.create(self);
   End;

   // Inventario do Estoque
   If RadioG.ItemIndex = 3 then
   Begin
      Frm_RelEst_Historico := TFrm_RelEst_Historico.create(self);
   End;


   // Estoque por grade de cores e tamanhos
   If RadioG.ItemIndex = 4 then
   Begin
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
            DB_EstoqueDisponivel.ParamByName('referencia1').AsString :=                 Trim(EditProdutoInicio.text);
            DB_EstoqueDisponivel.ParamByName('referencia2').AsString :=                 Trim(EditProdutoFim.text);


            if not FrmRelEstoque.chkgrupos.Checked then
            Begin
             DB_EstoqueDisponivel.sql.add(' and GRUPO=:grupo01');
             DB_EstoqueDisponivel.ParamByName('grupo01').AsString := strGrupo;
            End;

         end;
       END;

       if chkQualidades.Checked = false Then
       begin
          DB_EstoqueDisponivel.sql.add('from  VIEW_CADPRODUTOS_GRADESQUALIDADE') ;
          DB_EstoqueDisponivel.sql.add('where QUALIDADE=:NQUALIDADE');
          DB_EstoqueDisponivel.ParamByName('NQUALIDADE').AsInteger :=StrToIntDef(EditQualidade.text,0);

          if not FrmRelEstoque.chkgrupos.Checked then
          Begin
            DB_EstoqueDisponivel.sql.add(' and GRUPO=:grupo01');
            DB_EstoqueDisponivel.ParamByName('grupo01').AsString := strGrupo;
          End;

       end;

      DB_EstoqueDisponivel.sql.add('order by REFERENCIA, COR, ORDEM_GRADE');
      frxEstoqueDisponivel.ShowReport;
   End;


End;

procedure TFrmRelEstoque.chkQualidadesClick(Sender: TObject);
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

procedure TFrmRelEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin

   If Key = #27 then
      CLOSE;

end;

procedure TFrmRelEstoque.BtnSairClick(Sender: TObject);
begin
   CLOSE;
end;

procedure TFrmRelEstoque.chkFornecedorClick(Sender: TObject);
begin

   if chkFornecedor.Checked = true then
   Begin
      EditFornecedor.Enabled := False;
   End
   Else
   Begin
      EditFornecedor.Enabled := true;
      EditFornecedor.SelectAll;
      EditFornecedor.SetFocus;
   End;

end;

procedure TFrmRelEstoque.DB_EstoqueDisponivelBeforeOpen(DataSet: TDataSet);
begin
//   DB_EstoqueDisponivel.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelEstoque.chkgruposClick(Sender: TObject);
begin

   if chkgrupos.Checked = true then
   Begin
      EditGrupo.Enabled := False;
   End
   Else
   Begin
      EditGrupo.Enabled := true;
      EditGrupo.SetFocus;
   End;

end;

procedure TFrmRelEstoque.ChkTipoProdutoClick(Sender: TObject);
begin
   if ChkTipoProduto.Checked = true then
   Begin
      db_TipoProduto.close;
      EditTipProduto.Enabled := False;
   End
   Else
   Begin
      db_TipoProduto.open;
      EditTipProduto.Enabled := true;
      EditTipProduto.SetFocus;
   End;

end;

end.
