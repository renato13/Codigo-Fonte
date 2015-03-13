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

unit Biblioteca_pcp;

interface

uses DBTables, Forms, Classes, Windows, Controls, Variants, ComCtrls,
   WinTypes, WinProcs, Tabs, ExtCtrls, DBCtrls,
   Grids, Menus, Dialogs, StdCtrls, Messages, Graphics,
   Printers, shellapi, MMSystem,
   Sysutils, DBGrids,


  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,

   Classe.Global;

{ identificadores }
Function COR_ID(REFERENCIA, COR: String): Integer;
Function TAMANHO_ID(REFERENCIA, TAMANHO: String): Integer;
Function GRADE_ID(REFERENCIA, TAMANHO: String): Integer;
Function GRADE_ORDEM(REFERENCIA, TAMANHO: String): string;
Function PedidoReferenciaValor(REFERENCIA: String; NUM_PEDIDO: Integer): Real;
Function DistribuirReferenciaValor(nRemessa, nOrdemProducao: Integer; REFERENCIA: String): Real;

Procedure GradeZerar(StringGrade: TStringGrid);

{ *****************************************************************************
  **                         Pedido de Venda                                  **
  ***************************************************************************** }
procedure GradeProduto_Montar(REFERENCIA: String; StringGrade: TStringGrid);

procedure TabelaMedidasAntesLavar_Montar(REFERENCIA: String; StringGrade: TStringGrid);

procedure TabelaMedidasAntesLavar_MontarCarregar(nPedido: Integer; REFERENCIA: String;   StringGrade: TStringGrid);

procedure GradeProduto_Carregar(nPedido: Integer; REFERENCIA: String;              StringGrade: TStringGrid);
procedure GradeProduto_Salvar(nPedido: Integer; REFERENCIA, sAprovado: String; StringGrade: TStringGrid);
Function GradeProduto_Totalizar(StringGrade: TStringGrid): Real;


procedure GradeProduto_CarregarPrecos(nPedido, nTabelaPreco: Integer; REFERENCIA: String; StringGrade: TStringGrid);

{ *****************************************************************************
  **                         Ordem de Produção - Produzir                     **
  ***************************************************************************** }
procedure GradeProduto_Montar_Produzir(REFERENCIA: String; StringGrade: TStringGrid);
procedure GradeProduto_Carregar_Produzir(nOrdemProducao: Integer; REFERENCIA: String; StringGrade: TStringGrid);
procedure GradeProduto_Salvar_Produzir(nOrdemProducao: Integer; REFERENCIA: String; StringGrade: TStringGrid);
Function GradeProduto_Totalizar_Produzir(StringGrade: TStringGrid): Integer;


{ *****************************************************************************
  **                         Distribuição de Serviços | Remessa              **
  ***************************************************************************** }
procedure DistribuirReferencia_Montar_Produzir(REFERENCIA: String;                         StringGrade: TStringGrid);
procedure DistribuirReferencia_Carregar_Produzir(nRemessa, nOrdemProducao: Integer; REFERENCIA: String; StringGrade: TStringGrid);
procedure DistribuirReferencia_Salvar_Produzir(nRemessa, nOrdemProducao: Integer;                    REFERENCIA: String; StringGrade: TStringGrid);
Function DistribuirReferencia_Totalizar_Produzir(StringGrade: TStringGrid): Integer;


procedure PedidoVendaConferenciaGrade_CarregarRestante(nConferencia, nPedido: Integer; REFERENCIA: String; StringGrade: TStringGrid);

procedure PedidoVendaConferenciaGrade_Carregar(nConferencia, nPedido: Integer; REFERENCIA: String; StringGrade: TStringGrid);
procedure PedidoVendaConferenciaGrade_Salvar(nConferencia,   nPedido: Integer; REFERENCIA: String; StringGrade: TStringGrid);


{ *****************************************************************************
  **                         Distribuição de Serviços | Retorno              **
  ***************************************************************************** }
procedure DistribuirRetorno_Montar_Produzir(REFERENCIA: String;                         StringGrade: TStringGrid);
procedure DistribuirRetorno_Carregar_Produzido(nRemessa, nOrdemProducao: Integer; REFERENCIA: String; StringGrade: TStringGrid);
procedure DistribuirRetorno_Salvar_Produzido(nRemessa, nOrdemProducao: Integer;                    REFERENCIA: String; StringGrade: TStringGrid);
Function DistribuirRetorno_Totalizar_Produzir(StringGrade: TStringGrid): Integer;


// GRADE DA TABELA DE PREÇOS
procedure GradeTabelaPrecosCarregar(nTabelaPreco  : Integer; REFERENCIA: String; StringGrade: TStringGrid);
procedure GradeTabelaPrecosSalvar(nTabelaPreco    : Integer; REFERENCIA: String; StringGrade: TStringGrid);


{ *****************************************************************************
  **                         Ordem de Produção - Produzidos                   **
  ***************************************************************************** }
procedure GradeProduto_Montar_OrdemProducaoProduzidos(REFERENCIA: String;          StringGrade: TStringGrid);
procedure GradeProduto_Carregar_OrdemProducaoProduzidos(nOrdemProducao: Integer;   REFERENCIA: String; StringGrade: TStringGrid);
procedure GradeProduto_Salvar_OrdemProducaoProduzidos(nOrdemProducao: Integer;     REFERENCIA: String; StringGrade: TStringGrid);
Function GradeProduto_Totalizar_OrdemProducaoProduzidos(StringGrade: TStringGrid): Integer;


procedure GradeProdutoConferencia_Montar(nCodigo: Integer; StringGrade: TStringGrid);
procedure GradeProdutoConferencia_Carregar(nCodigo: Integer; StringGrade: TStringGrid);

procedure CadProduto_EstoqueCarregar(nCodigoProduto: Integer; stReferencia: String;StringGrade: TStringGrid);
procedure CadProduto_EstoqueSalvar(nCodigoProduto: Integer; stReferencia: String;StringGrade: TStringGrid);
procedure CadProduto_EstoqueSalvarQualidade(nCodigoProduto,nQualidade: Integer; stReferencia: String;StringGrade: TStringGrid);

procedure CompraGrade_QuantidadeCarregar( nCompras: Integer; stReferencia: String; StringGrade: TStringGrid);
procedure CompraGrade_QuantidadeSalvar(   nCompras: Integer; stReferencia: String;StringGrade: TStringGrid);

procedure VendaGrade_QuantidadeCarregar(nVenda: Integer; stReferencia: String; StringGrade: TStringGrid);
procedure VendaGrade_QuantidadeSalvar(nVenda: Integer; stReferencia: String;StringGrade: TStringGrid);

procedure VendaGradeDevolucao_QuantidadeCarregar(nVenda: Integer; stReferencia: String; StringGrade: TStringGrid);
procedure VendaGradeDevolucao_QuantidadeSalvar(nVenda: Integer; stReferencia: String;StringGrade: TStringGrid);

var

   TabelaGrades, TabelaCores, TabelaTamanhos, TabelaArmazenar,
     TblPrecoReferencia: TFDQuery;
   pedido, Linha, Coluna, COD_SEQ, ID_GRADE: Integer;

implementation

uses Global, FPrincipal, Biblioteca, SQLServer, FBaseDados_PCP;

{ identificadores }
Function COR_ID(REFERENCIA, COR: String): Integer;
Begin

   Result := 0;

   // tabela de grades
   TabelaGrades.sql.clear;
   TabelaGrades.sql.text := ' SELECT *  FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ' +
     ' AND                                 ' + ' COR=:COR                      '
     + ' ORDER BY COR, TAMANHO_ORDEM         ';
   TabelaGrades.ParamByName('REFERENCIA').AsString := Trim(REFERENCIA);
   TabelaGrades.ParamByName('COR').AsString := Trim(COR);
   TabelaGrades.Open;

   Result := TabelaGrades.FieldByName('COR_CODIGO').AsInteger;
   TabelaGrades.close;

End;

Function TAMANHO_ID(REFERENCIA, TAMANHO: String): Integer;
Begin

   Result := 0;

   // tabela de grades
   TabelaGrades.sql.clear;
   TabelaGrades.sql.text := ' SELECT *  FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ' +
     ' AND                                 ' + ' TAMANHO=:TAMANHO              '
     + ' ORDER BY COR, TAMANHO_ORDEM         ';
   TabelaGrades.ParamByName('REFERENCIA').AsString := Trim(REFERENCIA);
   TabelaGrades.ParamByName('TAMANHO').AsString := Trim(TAMANHO);
   TabelaGrades.Open;

   Result := TabelaGrades.FieldByName('TAMANHO_CODIGO').AsInteger;
   TabelaGrades.close;

End;

Function GRADE_ID(REFERENCIA, TAMANHO: String): Integer;
Begin

   Result := 0;

   // tabela de grades
   TabelaGrades.sql.clear;
   TabelaGrades.sql.text := ' SELECT *  FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ' +
     ' AND                                 ' + ' TAMANHO=:TAMANHO              '
     + ' ORDER BY COR, TAMANHO_ORDEM         ';
   TabelaGrades.ParamByName('REFERENCIA').AsString := Trim(REFERENCIA);
   TabelaGrades.ParamByName('TAMANHO').AsString := Trim(TAMANHO);
   TabelaGrades.Open;

   Result := TabelaGrades.FieldByName('GRADE_ID').AsInteger;
   TabelaGrades.close;

End;

Function GRADE_ORDEM(REFERENCIA, TAMANHO: String): string;
Begin
   //
   Result := '';

   // tabela de grades
   TabelaGrades.sql.clear;
   TabelaGrades.sql.text := ' SELECT *  FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ' +
     ' AND                                 ' + ' TAMANHO=:TAMANHO              '
     + ' ORDER BY COR, TAMANHO_ORDEM         ';
   TabelaGrades.ParamByName('REFERENCIA').AsString := Trim(REFERENCIA);
   TabelaGrades.ParamByName('TAMANHO').AsString := Trim(TAMANHO);
   TabelaGrades.Open;

   Result := TabelaGrades.FieldByName('TAMANHO_ORDEM').AsString;
   TabelaGrades.close;

End;

Function DistribuirReferenciaValor(nRemessa, nOrdemProducao: Integer; REFERENCIA: String): Real;
Begin

   TblPrecoReferencia := TFDQuery.Create(Application);
   TblPrecoReferencia.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TblPrecoReferencia.sql.clear;
   TblPrecoReferencia.sql.Add( ' SELECT * FROM PCP_DISTRIBUIR_REFERENCIAS ');
   TblPrecoReferencia.sql.Add( ' WHERE    ' );
   TblPrecoReferencia.sql.Add( ' CODIGO=:CODIGO   ' );
   TblPrecoReferencia.sql.Add( ' AND    ');
   TblPrecoReferencia.sql.Add( ' ORDEMPRODUCAO=:ORDEMPRODUCAO    ');
   TblPrecoReferencia.sql.Add( ' AND    ');
   TblPrecoReferencia.sql.Add( ' REFERENCIA=:REFERENCIA   ');
   TblPrecoReferencia.ParamByName('CODIGO').AsInteger := nRemessa;
   TblPrecoReferencia.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   TblPrecoReferencia.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TblPrecoReferencia.Open;

   Result := TblPrecoReferencia.FieldByName('VLR_UNIT').AsFloat;

   TblPrecoReferencia.close;

   TblPrecoReferencia.Free;

End;

Function PedidoReferenciaValor(REFERENCIA: String; NUM_PEDIDO: Integer): Real;
Begin

   TblPrecoReferencia := TFDQuery.Create(Application);
   TblPrecoReferencia.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TblPrecoReferencia.sql.clear;
   TblPrecoReferencia.sql.Add('SELECT * FROM PEDIDOS_ITENS ');
   TblPrecoReferencia.sql.Add('WHERE');
   TblPrecoReferencia.sql.Add('EMPRESA=:EMPRESA');
   TblPrecoReferencia.sql.Add('AND');
   TblPrecoReferencia.sql.Add('CODIGO=:CODIGO');
   TblPrecoReferencia.sql.Add('AND');
   TblPrecoReferencia.sql.Add('REFERENCIA=:REFERENCIA ');
   TblPrecoReferencia.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   TblPrecoReferencia.ParamByName('CODIGO').AsInteger := NUM_PEDIDO;
   TblPrecoReferencia.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TblPrecoReferencia.Open;

   Result := TblPrecoReferencia.FieldByName('VLR_UNIT').AsFloat;

   TblPrecoReferencia.close;

   TblPrecoReferencia.Free;

End;


{ TABELA DE MEDIDAS ANTES DE LAVAR }
procedure TabelaMedidasAntesLavar_Montar(REFERENCIA: String; StringGrade: TStringGrid);
begin

   If empty(REFERENCIA) then
   begin
      BeepCritica;
      Informar('Referência não definida para montar grade ');
      Abort;
   end;

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades := TFDQuery.Create(Application);
   TabelaCores := TFDQuery.Create(Application);
   TabelaTamanhos := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaCores.Connection := FrmPrincipal.DBConexao;
   TabelaTamanhos.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaGrades.sql.clear;
   TabelaGrades.sql.text := ' SELECT *  FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ' +
     ' ORDER BY COR,  TAMANHO_ORDEM               ';
   TabelaGrades.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaGrades.Open;

   // TESTE
   TabelaCores.sql.clear;
   TabelaCores.sql.text := ' SELECT DISTINCT(COR) FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ';
   TabelaCores.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaCores.Open;

   // tabela de TAMANHOS
   TabelaTamanhos.sql.clear;
   TabelaTamanhos.sql.text :=
     ' SELECT DISTINCT(TAMANHO), TAMANHO_ORDEM FROM VIEW_GRADEREFERENCIA' +
     ' WHERE REFERENCIA=:REFERENCIA        '+
     ' ORDER BY TAMANHO_ORDEM        ';
   TabelaTamanhos.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaTamanhos.Open;

   if REFERENCIA = '' then
      REFERENCIA := '0';

   {
   Try

      StrToInt(REFERENCIA);

   Except
      REFERENCIA := '0';

   End;
   }


   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // DEFINIR COLUNAS E LINHAS
   // ----------------------------------------------------------------------

   StringGrade.ColCount := TabelaTamanhos.RecordCount + 1;
   StringGrade.RowCount := TabelaCores.RecordCount + 1;

   TabelaTamanhos.first;
   TabelaCores.first;

   Coluna := 0;
   Linha := 0;

   StringGrade.Cells[0, 0] := 'REFERÊNCIA:';
   StringGrade.FixedCols := 1;
   StringGrade.FixedRows := 1;
   StringGrade.ColWidths[0] := 150;

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // COLUNAS
   // ----------------------------------------------------------------------
   while not TabelaTamanhos.eof do
   begin

      Inc(Coluna);
      StringGrade.Cells[Coluna, 0] := TabelaTamanhos.FieldByName('TAMANHO')
        .AsString;;
      StringGrade.ColWidths[Coluna] := 70;
      StringGrade.Width := StringGrade.Width + 40;

      TabelaTamanhos.Next;

   end;
   TabelaTamanhos.first;

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // LINHAS
   // ----------------------------------------------------------------------

   Linha := 0;
   TabelaCores.first;
   while not TabelaCores.eof do
   begin

      Inc(Linha);

      StringGrade.Cells[0, Linha] := TabelaCores.FieldByName('COR').AsString;;
      TabelaCores.Next;

   end;

   // -------------------------------------------------------------------
   // Redimensionar formulario
   // -------------------------------------------------------------------

   // Screen. Width := StringGrade.Width;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades.Free;
   TabelaCores.Free;
   TabelaTamanhos.Free;

end;

{ TABELA DE MEDIDAS ANTES DE LAVAR | CARREGAR CONTEUDO DA TABELA DIGITADO PELO USUARIO PARA A STRINGGRID }

procedure TabelaMedidasAntesLavar_MontarCarregar(nPedido: Integer; REFERENCIA: String;
  StringGrade: TStringGrid);

begin

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.Add('SELECT * FROM PEDIDOS_ITENS_GRADE ');
   TabelaArmazenar.sql.Add('WHERE');
   TabelaArmazenar.sql.Add('EMPRESA=:EMPRESA');
   TabelaArmazenar.sql.Add('AND');
   TabelaArmazenar.sql.Add('CODIGO=:CODIGO');
   TabelaArmazenar.sql.Add('AND');
   TabelaArmazenar.sql.Add('REFERENCIA=:REFERENCIA ');
   TabelaArmazenar.sql.Add('ORDER BY ORDEM_GRADE');
   TabelaArmazenar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nPedido;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;


   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QUANTIDADE').AsString;
      end;
      TabelaArmazenar.Next;
   end;


   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;

{ *****************************************************************************
  **                         Pedido de Venda                                 **
  **                         MONTAR A GRADE                                  **
  ***************************************************************************** }
procedure GradeProduto_Montar(REFERENCIA: String; StringGrade: TStringGrid);
begin

   If empty(REFERENCIA) then
   begin
      BeepCritica;
      AvisoSistemaErro('Referência não definida para montar grade ');
      Abort;
   end;

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades := TFDQuery.Create(Application);
   TabelaCores := TFDQuery.Create(Application);
   TabelaTamanhos := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaCores.Connection := FrmPrincipal.DBConexao;
   TabelaTamanhos.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaGrades.sql.clear;
   TabelaGrades.sql.text := ' SELECT *  FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ' +
     ' ORDER BY TAMANHO_ORDEM               ';
   TabelaGrades.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaGrades.Open;

   // TESTE
   TabelaCores.sql.clear;
   TabelaCores.sql.text := ' SELECT DISTINCT(COR) FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ';
     //' ORDER BY TAMANHO_ORDEM       ';
   TabelaCores.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaCores.Open;

   // tabela de TAMANHOS
   TabelaTamanhos.sql.clear;
   TabelaTamanhos.sql.text :=
     ' SELECT DISTINCT(TAMANHO), TAMANHO_ORDEM FROM VIEW_GRADEREFERENCIA' +
     ' WHERE REFERENCIA=:REFERENCIA        '+
     ' ORDER BY TAMANHO_ORDEM       ';
   TabelaTamanhos.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaTamanhos.Open;

   if REFERENCIA = '' then
      REFERENCIA := '0';

   {
   Try

      StrToInt(REFERENCIA);

   Except
      REFERENCIA := '0';

   End;
   }

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // DEFINIR COLUNAS E LINHAS
   // ----------------------------------------------------------------------

   StringGrade.ColCount := TabelaTamanhos.RecordCount + 1;
   StringGrade.RowCount := TabelaCores.RecordCount + 1;

   TabelaTamanhos.first;
   TabelaCores.first;

   Coluna := 0;
   Linha := 0;

   StringGrade.Cells[0, 0] := 'REFERÊNCIA:';
   StringGrade.FixedCols := 1;
   StringGrade.FixedRows := 1;
   StringGrade.ColWidths[0] := 150;



   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // COLUNAS
   // ----------------------------------------------------------------------
   while not TabelaTamanhos.eof do
   begin

      Inc(Coluna);
      StringGrade.Cells[Coluna, 0] := TabelaTamanhos.FieldByName('TAMANHO').AsString;
      StringGrade.ColWidths[Coluna] := 55;
      StringGrade.Width := StringGrade.Width + 40;

      TabelaTamanhos.Next;

   end;
   TabelaTamanhos.first;

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // LINHAS
   // ----------------------------------------------------------------------

   Linha := 0;
   TabelaCores.first;
   while not TabelaCores.eof do
   begin

      Inc(Linha);

      StringGrade.Cells[0, Linha] := TabelaCores.FieldByName('COR').AsString;;
      TabelaCores.Next;

   end;

   // -------------------------------------------------------------------
   // Redimensionar formulario
   // -------------------------------------------------------------------

   // Screen. Width := StringGrade.Width;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades.Free;
   TabelaCores.Free;
   TabelaTamanhos.Free;

end;



{ *****************************************************************************
  **                         Pedido de Venda                                 **
  **                     CARREGAR DADOS NA GRADE                             **
  ***************************************************************************** }
procedure GradeProduto_Carregar(nPedido: Integer; REFERENCIA: String; StringGrade: TStringGrid);
begin

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.Add('SELECT * FROM PEDIDOS_ITENS_GRADE ');
   TabelaArmazenar.sql.Add('WHERE');
   TabelaArmazenar.sql.Add('EMPRESA=:EMPRESA');
   TabelaArmazenar.sql.Add('AND');
   TabelaArmazenar.sql.Add('CODIGO=:CODIGO');
   TabelaArmazenar.sql.Add('AND');
   TabelaArmazenar.sql.Add('REFERENCIA=:REFERENCIA ');
   TabelaArmazenar.sql.Add('ORDER BY ORDEM_GRADE');
   TabelaArmazenar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nPedido;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QUANTIDADE').AsString;
      end;
      TabelaArmazenar.Next;
   end;


   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;

procedure GradeProduto_CarregarPrecos(nPedido, nTabelaPreco: Integer; REFERENCIA: String; StringGrade: TStringGrid);
begin

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.Add('SELECT * FROM PEDIDOS_ITENS_GRADE ');
   TabelaArmazenar.sql.Add('WHERE');
   TabelaArmazenar.sql.Add('EMPRESA=:EMPRESA');
   TabelaArmazenar.sql.Add('AND');
   TabelaArmazenar.sql.Add('CODIGO=:CODIGO');
   TabelaArmazenar.sql.Add('AND');
   TabelaArmazenar.sql.Add('REFERENCIA=:REFERENCIA ');
   TabelaArmazenar.sql.Add('ORDER BY ORDEM_GRADE');
   TabelaArmazenar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nPedido;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         //StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('VALOR_UNIT').AsString;
         StringGrade.Cells[Coluna, Linha] := FormatFloat('##,###,##0.00', TabelaArmazenar.FieldByName('VALOR_UNIT').AsFloat);


      end;
      TabelaArmazenar.Next;
   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;


{ *****************************************************************************
  **                         Pedido de Venda                                 **
  **                     SALVAR DADOS DA GRADE                               **
  ***************************************************************************** }
procedure GradeProduto_Salvar(nPedido: Integer; REFERENCIA, sAprovado: String; StringGrade: TStringGrid);
begin

   COD_SEQ := 0;

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------
   TabelaGrades := TFDQuery.Create(Application);
   TabelaArmazenar := TFDQuery.Create(Application);

   TabelaGrades.Connection    := FrmPrincipal.DBConexao;
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.Add('SELECT * FROM PEDIDOS_ITENS_GRADE ');
   TabelaArmazenar.sql.Add('WHERE');
   TabelaArmazenar.sql.Add('EMPRESA=:EMPRESA');
   TabelaArmazenar.sql.Add('AND');
   TabelaArmazenar.sql.Add('CODIGO=:CODIGO');
   TabelaArmazenar.sql.Add('AND');
   TabelaArmazenar.sql.Add('REFERENCIA=:REFERENCIA ');
   TabelaArmazenar.sql.Add('ORDER BY ORDEM_GRADE');
   TabelaArmazenar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nPedido;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;

   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      TabelaArmazenar.Delete;
   end;

   // passar linhas por linha. E em cada linhas que passar deverá checar
   // cada coluna e "salvar" no banco de dados
   //

   // Linhas

   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      Inc(COD_SEQ);
      TabelaArmazenar.Append;
      TabelaArmazenar.FieldByName('EMPRESA').AsInteger       := FSistema.Empresa;
      TabelaArmazenar.FieldByName('CODIGO').AsInteger        := nPedido;
      TabelaArmazenar.FieldByName('REFERENCIA').AsString     := REFERENCIA;
      TabelaArmazenar.FieldByName('APROVADO').AsString        := fncPedidoItens_retCampo(nPedido,'APROVADO');
      TabelaArmazenar.FieldByName('ORDEMPRODUCAO').AsInteger  := StrToIntDef( fncPedidoItens_retCampo(nPedido,'ORDEMPRODUCAO'),0 );


      TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
      TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
      TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
      TabelaArmazenar.FieldByName('CELULA').AsString := 'COR: ' +         StringGrade.Cells[0, Linha];
      TabelaArmazenar.FieldByName('COR').AsString := StringGrade.Cells        [0, Linha];
      TabelaArmazenar.FieldByName('COR_ID').AsInteger :=         COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
      TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
      TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=          GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
      // TabelaArmazenar.FieldByName('GRADE_ID').AsInteger        :=GRADE_ID(Referencia, StringGrade.Cells[coluna, 0] );

      TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(REFERENCIA,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

      TabelaArmazenar.Post;

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin

         Inc(COD_SEQ);
         TabelaArmazenar.Append;

         TabelaArmazenar.FieldByName('EMPRESA').AsInteger       := FSistema.Empresa;
         TabelaArmazenar.FieldByName('CODIGO').AsInteger        := nPedido;
         TabelaArmazenar.FieldByName('REFERENCIA').AsString     := REFERENCIA;
         TabelaArmazenar.FieldByName('APROVADO').AsString        := fncPedidoItens_retCampo(nPedido,'APROVADO');
         TabelaArmazenar.FieldByName('ORDEMPRODUCAO').AsInteger  := StrToIntDef( fncPedidoItens_retCampo(nPedido,'ORDEMPRODUCAO'),0 );


         TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
         TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
         TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
         TabelaArmazenar.FieldByName('CELULA').AsString := 'TAMANHO: ' +             StringGrade.Cells[Coluna, 0] + ' / COR: ' + StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('COR_ID').AsInteger :=            COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
         TabelaArmazenar.FieldByName('COR').AsString :=              StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=             TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('TAMANHO').AsString :=             StringGrade.Cells[Coluna, 0];
         TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=             GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('GRADE_ID').AsInteger :=     GRADE_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(REFERENCIA,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

         if (Coluna > 0) and (Linha > 0) then
         begin
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;

            TabelaArmazenar.FieldByName('VALOR_UNIT').AsFloat :=  PedidoReferenciaValor(REFERENCIA, nPedido);
            TabelaArmazenar.FieldByName('QUANTIDADE').AsInteger :=  StrToInt(StringGrade.Cells[Coluna, Linha]);

         end;

         TabelaArmazenar.Post;
      end;
      Coluna := 0;

   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   TabelaGrades.Free;

end;



{ *****************************************************************************
  **                     Conferencia de Pedido                                **
  **                         MONTAR A GRADE                                  **
  ***************************************************************************** }
procedure GradeProdutoConferencia_Montar(nCodigo: Integer; StringGrade: TStringGrid);
begin

   If nCodigo<=0 then
      exit;

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades := TFDQuery.Create(Application);
   TabelaCores := TFDQuery.Create(Application);
   TabelaTamanhos := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaCores.Connection := FrmPrincipal.DBConexao;
   TabelaTamanhos.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaGrades.sql.clear;
   TabelaGrades.sql.text := ' SELECT *  FROM VIEW_PEDIDOCONFERENCIAGRADE ' +
     ' WHERE CODIGO=:CODIGO        ';
  //   ' ORDER BY COR,  TAMANHO               ';
   TabelaGrades.ParamByName('CODIGO').AsInteger := nCodigo;
   TabelaGrades.Open;

   // TESTE
   TabelaCores.sql.clear;
   TabelaCores.sql.text := ' SELECT DISTINCT(COR) FROM VIEW_PEDIDOCONFERENCIAGRADE ' +
     ' WHERE CODIGO=:CODIGO        ';
   TabelaCores.ParamByName('CODIGO').AsInteger := nCodigo;
   TabelaCores.Open;

   // tabela de TAMANHOS
   TabelaTamanhos.sql.clear;
   TabelaTamanhos.sql.text :=
     ' SELECT DISTINCT(TAMANHO), TAMANHO_ORDEM FROM VIEW_PEDIDOCONFERENCIAGRADE' +
     ' WHERE CODIGO=:CODIGO        '+
     ' ORDER BY TAMANHO_ORDEM        ';
   TabelaTamanhos.ParamByName('CODIGO').AsInteger := nCodigo;
   TabelaTamanhos.Open;


   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // DEFINIR COLUNAS E LINHAS
   // ----------------------------------------------------------------------

   StringGrade.ColCount := TabelaTamanhos.RecordCount + 1;
   StringGrade.RowCount := TabelaCores.RecordCount + 1;

   TabelaTamanhos.first;
   TabelaCores.first;

   Coluna := 0;
   Linha := 0;

   StringGrade.Cells[0, 0] := 'REFERÊNCIA:';
   StringGrade.FixedCols := 1;
   StringGrade.FixedRows := 1;
   StringGrade.ColWidths[0] := 150;

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // COLUNAS
   // ----------------------------------------------------------------------
   while not TabelaTamanhos.eof do
   begin

      Inc(Coluna);
      StringGrade.Cells[Coluna, 0] := TabelaTamanhos.FieldByName('TAMANHO').AsString;;
      StringGrade.ColWidths[Coluna] := 70;
      StringGrade.Width := StringGrade.Width + 40;

      TabelaTamanhos.Next;

   end;
   TabelaTamanhos.first;

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // LINHAS
   // ----------------------------------------------------------------------

   Linha := 0;
   TabelaCores.first;
   while not TabelaCores.eof do
   begin

      Inc(Linha);

      StringGrade.Cells[0, Linha] := TabelaCores.FieldByName('COR').AsString;;
      TabelaCores.Next;

   end;

   // -------------------------------------------------------------------
   // Redimensionar formulario
   // -------------------------------------------------------------------

   // Screen. Width := StringGrade.Width;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades.Free;
   TabelaCores.Free;
   TabelaTamanhos.Free;

end;



{ *****************************************************************************
  **                      Conferencia de Pedido                              **
  **                     CARREGAR DADOS NA GRADE                             **
  ***************************************************************************** }

procedure GradeProdutoConferencia_Carregar(nCodigo: Integer; StringGrade: TStringGrid);
begin

(*
   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   VIEW_PEDIDOCONFERENCIAGRADE ' +
                               ' WHERE  CODIGO=:CODIGO   ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nCodigo;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin

      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin

         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QUANTIDADE').AsString;

      end;
      TabelaArmazenar.Next;
   end;


   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
*)

   COD_SEQ := 0;


   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------
   TabelaGrades := TFDQuery.Create(Application);
   TabelaArmazenar := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   VIEW_PEDIDOCONFERENCIAGRADE ' +
                               ' WHERE  CODIGO=:CODIGO   ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nCodigo;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá checar
   // cada coluna e "salvar" no banco de dados
   //

   // Linhas


   while not TabelaArmazenar.eof do
   begin
     for Linha := 1 to StringGrade.RowCount - 1 do
     begin

        Inc(COD_SEQ);
        {
        TabelaArmazenar.Append;
        TabelaArmazenar.FieldByName('CODIGO').AsInteger := nPedido;
        TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
        TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
        TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
        TabelaArmazenar.FieldByName('CELULA').AsString := 'COR: ' +
          StringGrade.Cells[0, Linha];
        TabelaArmazenar.FieldByName('COR').AsString := StringGrade.Cells[0, Linha];
        TabelaArmazenar.FieldByName('COR_ID').AsInteger :=
          COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
        TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=
          TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
        TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=
          GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
        // TabelaArmazenar.FieldByName('GRADE_ID').AsInteger        :=GRADE_ID(Referencia, StringGrade.Cells[coluna, 0] );

        TabelaArmazenar.FieldByName('REFERENCIA').AsString := REFERENCIA;
        TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := IDReferencia(REFERENCIA,
                                                                              TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                              TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                              );

        TabelaArmazenar.FieldByName('APROVADO').AsString := sAprovado;

        TabelaArmazenar.Post;
        }

        // Colunas
        for Coluna := 1 to StringGrade.ColCount - 1 do
        begin
           Inc(COD_SEQ);

           {
           TabelaArmazenar.Append;
           TabelaArmazenar.FieldByName('CODIGO').AsInteger := nPedido;
           TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
           TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
           TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
           TabelaArmazenar.FieldByName('CELULA').AsString := 'TAMANHO: ' +
             StringGrade.Cells[Coluna, 0] + ' / COR: ' + StringGrade.Cells
             [0, Linha];
           TabelaArmazenar.FieldByName('COR_ID').AsInteger :=
             COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
           TabelaArmazenar.FieldByName('COR').AsString :=   StringGrade.Cells[0, Linha];
           TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=
             TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
           TabelaArmazenar.FieldByName('TAMANHO').AsString :=
             StringGrade.Cells[Coluna, 0];
           TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=
             GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
           TabelaArmazenar.FieldByName('GRADE_ID').AsInteger :=     GRADE_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
           TabelaArmazenar.FieldByName('REFERENCIA').AsString := REFERENCIA;
           TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := IDReferencia(REFERENCIA,
                                                                              TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                              TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                              );
           TabelaArmazenar.FieldByName('APROVADO').AsString := sAprovado;
           }

           if (Coluna > 0) and (Linha > 0) then
           begin
              try
                 StrToInt(StringGrade.Cells[Coluna, Linha])
              except
                 StringGrade.Cells[Coluna, Linha] := '0';
              end;

              //TabelaArmazenar.FieldByName('VALOR_UNIT').AsFloat :=  PedidoReferenciaValor(REFERENCIA, nPedido);
              //TabelaArmazenar.FieldByName('QUANTIDADE').AsInteger :=  StrToInt( StringGrade.Cells[Coluna, Linha] );

              StringGrade.Cells[Coluna, Linha] := FloatToStr( RetornaConferenciaQuantidade( TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString, (StringGrade.Cells[0, Linha]), (StringGrade.Cells[Coluna, 0]) )  );

           end;


      end;
      Coluna := 0;

   end;
    TabelaArmazenar.next;
   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   TabelaGrades.Free;



end;

{ CALCULAR QUANTIDADE DIGITADA NA STRINGGRID PELO USUARIO }
Function GradeProduto_Totalizar(StringGrade: TStringGrid): Real;
var
   CalcularQuantidade: Real;
begin

   Linha := 0;
   Coluna := 0;
   CalcularQuantidade := 0;

   // lihas
   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin

         if (Coluna > 0) and (Linha > 0) then
         begin

            if StrToFloatDef(StringGrade.Cells[Coluna, Linha],0) > 0 then
            begin
               CalcularQuantidade := CalcularQuantidade + StrToFloatDef(StringGrade.Cells[Coluna, Linha],0);
            end;
         end;

      end;
      Coluna := 0;

   end;
   Result := CalcularQuantidade;

end;


{ *****************************************************************************
  **                         Ordem de Produção - Produzir                     **
  ***************************************************************************** }
procedure GradeProduto_Montar_Produzir(REFERENCIA: String;
  StringGrade: TStringGrid);
begin

   If empty(REFERENCIA) then
   begin
      BeepCritica;
      Informar('Referência não definida para montar grade ');
      Abort;
   end;

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades := TFDQuery.Create(Application);
   TabelaCores := TFDQuery.Create(Application);
   TabelaTamanhos := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaCores.Connection := FrmPrincipal.DBConexao;
   TabelaTamanhos.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaGrades.sql.clear;
   TabelaGrades.sql.text := ' SELECT *  FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ' +
     ' ORDER BY COR,  TAMANHO_ORDEM               ';
   TabelaGrades.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaGrades.Open;

   // TESTE
   TabelaCores.sql.clear;
   TabelaCores.sql.text := ' SELECT DISTINCT(COR) FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ';
   TabelaCores.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaCores.Open;

   // tabela de TAMANHOS
   TabelaTamanhos.sql.clear;
   TabelaTamanhos.sql.text :=
     ' SELECT DISTINCT(TAMANHO), TAMANHO_ORDEM FROM VIEW_GRADEREFERENCIA' +
     ' WHERE REFERENCIA=:REFERENCIA        ' +
     ' ORDER BY TAMANHO_ORDEM        ';
   TabelaTamanhos.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaTamanhos.Open;

   if REFERENCIA = '' then
      REFERENCIA := '0';

   {
   Try

      StrToInt(REFERENCIA);

   Except
      REFERENCIA := '0';

   End;
   }

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // DEFINIR COLUNAS E LINHAS
   // ----------------------------------------------------------------------

   StringGrade.ColCount := TabelaTamanhos.RecordCount + 1;
   StringGrade.RowCount := TabelaCores.RecordCount + 1;

   TabelaTamanhos.first;
   TabelaCores.first;

   Coluna := 0;
   Linha := 0;

   StringGrade.Cells[0, 0] := 'REFERÊNCIA:';
   StringGrade.FixedCols := 1;
   StringGrade.FixedRows := 1;
   StringGrade.ColWidths[0] := 150;

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // COLUNAS
   // ----------------------------------------------------------------------
   while not TabelaTamanhos.eof do
   begin

      Inc(Coluna);
      StringGrade.Cells[Coluna, 0] := TabelaTamanhos.FieldByName('TAMANHO')
        .AsString;;
      StringGrade.ColWidths[Coluna] := 70;
      StringGrade.Width := StringGrade.Width + 40;

      TabelaTamanhos.Next;

   end;
   TabelaTamanhos.first;

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // LINHAS
   // ----------------------------------------------------------------------

   Linha := 0;
   TabelaCores.first;
   while not TabelaCores.eof do
   begin

      Inc(Linha);

      StringGrade.Cells[0, Linha] := TabelaCores.FieldByName('COR').AsString;;
      TabelaCores.Next;

   end;

   // -------------------------------------------------------------------
   // Redimensionar formulario
   // -------------------------------------------------------------------

   // Screen. Width := StringGrade.Width;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades.Free;
   TabelaCores.Free;
   TabelaTamanhos.Free;

end;

procedure GradeProduto_Carregar_Produzir(nOrdemProducao: Integer;
  REFERENCIA: String; StringGrade: TStringGrid);
begin

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   PCP_ORDEMPRODUCAO_ITENS_GRADE ' +
     ' WHERE                    ' + ' CODIGO=:CODIGO           ' +
     ' AND                      ' + ' REFERENCIA=:REFERENCIA   ' +
     ' ORDER BY ORDEM_GRADE     ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nOrdemProducao;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QUANTIDADE').AsString;
      end;
      TabelaArmazenar.Next;
   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;

procedure GradeProduto_Distribuir_Produzir(nRemessa: Integer;
  REFERENCIA: String; StringGrade: TStringGrid);
begin

   REFERENCIA := Trim(REFERENCIA);


   { OBSOLETO

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   PCP_ORDEMPRODUCAO_PRODUZIR ' +
     ' WHERE                    ' + ' ORDEMPRODUCAO=:ORDEMPRODUCAO           ' +
     ' AND                      ' + ' REFERENCIA=:REFERENCIA   ' +
     ' ORDER BY ORDEM_GRADE     ';

   TabelaArmazenar.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QUANTIDADE').AsString;
      end;
      TabelaArmazenar.Next;
   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   }

end;

procedure GradeProduto_Salvar_Produzir(nOrdemProducao: Integer;
  REFERENCIA: String; StringGrade: TStringGrid);
begin

   COD_SEQ := 0;

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------
   TabelaGrades := TFDQuery.Create(Application);
   TabelaArmazenar := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   PCP_ORDEMPRODUCAO_ITENS_GRADE ' +
     ' WHERE                    ' + ' CODIGO=:CODIGO           ' +
     ' AND                    ' + ' REFERENCIA=:REFERENCIA   ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nOrdemProducao;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;

   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      TabelaArmazenar.Delete;
   end;

   // passar linhas por linha. E em cada linhas que passar deverá checar
   // cada coluna e "salvar" no banco de dados
   // Linhas

   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

     if (TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0])>0)  then
     begin
          Inc(COD_SEQ);
          TabelaArmazenar.Append;
          TabelaArmazenar.FieldByName('EMPRESA').AsInteger := BaseDados_PCP.db_OrdemProducaoItens.FieldByName('EMPRESA').AsInteger;
          TabelaArmazenar.FieldByName('CODIGO').AsInteger := BaseDados_PCP.db_OrdemProducaoItens.FieldByName('CODIGO').AsInteger;
          TabelaArmazenar.FieldByName('APROVADO').AsString :=BaseDados_PCP.db_OrdemProducaoItens.FieldByName('APROVADO').AsString;
          TabelaArmazenar.FieldByName('DATA').AsDateTime :=BaseDados_PCP.db_OrdemProducaoItens.FieldByName('DATA').AsDateTime;
          TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
          TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
          TabelaArmazenar.FieldByName('COR').AsString := StringGrade.Cells[0, Linha];
          TabelaArmazenar.FieldByName('COR_ID').AsInteger :=             COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
          TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
          TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=         GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);

          TabelaArmazenar.FieldByName('REFERENCIA').AsString := REFERENCIA;

          TabelaArmazenar.Post;
     end;

          // Colunas
          for Coluna := 1 to StringGrade.ColCount - 1 do
          begin
            if (TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0])>0)  then
            begin
               Inc(COD_SEQ);
               TabelaArmazenar.Append;
               TabelaArmazenar.FieldByName('EMPRESA').AsInteger := BaseDados_PCP.db_OrdemProducaoItens.FieldByName('EMPRESA').AsInteger;
               TabelaArmazenar.FieldByName('CODIGO').AsInteger := BaseDados_PCP.db_OrdemProducaoItens.FieldByName('CODIGO').AsInteger;
               TabelaArmazenar.FieldByName('APROVADO').AsString :=BaseDados_PCP.db_OrdemProducaoItens.FieldByName('APROVADO').AsString;
               TabelaArmazenar.FieldByName('DATA').AsDateTime :=BaseDados_PCP.db_OrdemProducaoItens.FieldByName('DATA').AsDateTime;
               TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
               TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
               TabelaArmazenar.FieldByName('COR_ID').AsInteger :=             COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
               TabelaArmazenar.FieldByName('COR').AsString :=                 StringGrade.Cells[0, Linha];
               TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
               TabelaArmazenar.FieldByName('TAMANHO').AsString :=             StringGrade.Cells[Coluna, 0];
               TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=         GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
               TabelaArmazenar.FieldByName('REFERENCIA').AsString :=          REFERENCIA;

               if (Coluna > 0) and (Linha > 0) then
               begin
                  try
                     StrToInt(StringGrade.Cells[Coluna, Linha])
                  except
                     StringGrade.Cells[Coluna, Linha] := '0';
                  end;

                  TabelaArmazenar.FieldByName('QUANTIDADE').AsInteger := StrToInt(StringGrade.Cells[Coluna, Linha]);
               end;

               TabelaArmazenar.Post;
            end;
          end;
      Coluna := 0;

   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   TabelaGrades.Free;

end;

Function GradeProduto_Totalizar_Produzir(StringGrade: TStringGrid): Integer;
var
   CalcularQuantidade: Integer;
begin

   Linha := 0;
   Coluna := 0;
   CalcularQuantidade := 0;

   // lihas
   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin

         if (Coluna > 0) and (Linha > 0) then
         begin
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;

            if StrToInt(StringGrade.Cells[Coluna, Linha]) > 0 then
            begin
               CalcularQuantidade := CalcularQuantidade +
                 StrToInt(StringGrade.Cells[Coluna, Linha]);
            end;
         end;

      end;
      Coluna := 0;

   end;
   Result := CalcularQuantidade;

end;


{ *****************************************************************************
  **                         Ordem de Produção - Produzir                     **
  ***************************************************************************** }
procedure DistribuirReferencia_Montar_Produzir(REFERENCIA: String;
  StringGrade: TStringGrid);
begin

   If empty(REFERENCIA) then
   begin
      BeepCritica;
      Informar('Referência não definida para montar grade ');
      Abort;
   end;

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades := TFDQuery.Create(Application);
   TabelaCores := TFDQuery.Create(Application);
   TabelaTamanhos := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaCores.Connection := FrmPrincipal.DBConexao;
   TabelaTamanhos.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaGrades.sql.clear;
   TabelaGrades.sql.text := ' SELECT *  FROM VIEW_GRADEREFERENCIA ' +
                            ' WHERE REFERENCIA=:REFERENCIA        ' +
                            ' ORDER BY COR,  TAMANHO_ORDEM        ';
   TabelaGrades.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaGrades.Open;

   // TESTE
   TabelaCores.sql.clear;
   TabelaCores.sql.text := ' SELECT DISTINCT(COR) FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ';
   TabelaCores.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaCores.Open;

   // tabela de TAMANHOS
   TabelaTamanhos.sql.clear;
   TabelaTamanhos.sql.text :=
     ' SELECT DISTINCT(TAMANHO), TAMANHO_ORDEM FROM VIEW_GRADEREFERENCIA' +
     ' WHERE REFERENCIA=:REFERENCIA        ' +
     ' ORDER BY TAMANHO_ORDEM        ';
   TabelaTamanhos.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaTamanhos.Open;

   if REFERENCIA = '' then
      REFERENCIA := '0';

   {
   Try

      StrToInt(REFERENCIA);

   Except
      REFERENCIA := '0';

   End;
   }

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // DEFINIR COLUNAS E LINHAS
   // ----------------------------------------------------------------------

   StringGrade.ColCount := TabelaTamanhos.RecordCount + 1;
   StringGrade.RowCount := TabelaCores.RecordCount + 1;

   TabelaTamanhos.first;
   TabelaCores.first;

   Coluna := 0;
   Linha := 0;

   StringGrade.Cells[0, 0] := 'REFERÊNCIA:';
   StringGrade.FixedCols := 1;
   StringGrade.FixedRows := 1;
   StringGrade.ColWidths[0] := 150;

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // COLUNAS
   // ----------------------------------------------------------------------
   while not TabelaTamanhos.eof do
   begin

      Inc(Coluna);
      StringGrade.Cells[Coluna, 0] := TabelaTamanhos.FieldByName('TAMANHO')
        .AsString;;
      StringGrade.ColWidths[Coluna] := 70;
      StringGrade.Width := StringGrade.Width + 40;

      TabelaTamanhos.Next;

   end;
   TabelaTamanhos.first;

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // LINHAS
   // ----------------------------------------------------------------------

   Linha := 0;
   TabelaCores.first;
   while not TabelaCores.eof do
   begin

      Inc(Linha);

      StringGrade.Cells[0, Linha] := TabelaCores.FieldByName('COR').AsString;;
      TabelaCores.Next;

   end;

   // -------------------------------------------------------------------
   // Redimensionar formulario
   // -------------------------------------------------------------------

   // Screen. Width := StringGrade.Width;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades.Free;
   TabelaCores.Free;
   TabelaTamanhos.Free;

end;

procedure DistribuirReferencia_Carregar_Produzir(nRemessa, nOrdemProducao: Integer; REFERENCIA: String; StringGrade: TStringGrid);
begin

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   PCP_DISTRIBUIR_RGRADE_REMESSA ' +
     ' WHERE '+
     ' CODIGO=:CODIGO           '+
     ' AND                      '+
     ' ORDEMPRODUCAO=:ORDEMPRODUCAO           ' +
     ' AND                      '+
     ' REFERENCIA=:REFERENCIA   ' +
     ' ORDER BY ORDEM_GRADE     ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nRemessa;
   TabelaArmazenar.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QUANTIDADE').AsString;
      end;
      TabelaArmazenar.Next;
   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;

procedure PedidoVendaConferenciaGrade_Carregar(nConferencia, nPedido: Integer; REFERENCIA: String; StringGrade: TStringGrid);
begin

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   PEDIDOCONFERENCIA_ITENS ' +
     ' WHERE '+
     ' CODIGO=:CODIGO           '+
     ' AND                      '+
     ' PEDIDO=:PEDIDO           ' +
     ' AND                      '+
     ' REFERENCIA=:REFERENCIA   ' +
     ' AND                      '+
     ' TAMANHO<>'''' AND QUANTIDADE>0        '+
     ' ORDER BY ORDEM_GRADE     ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nConferencia;
   TabelaArmazenar.ParamByName('PEDIDO').AsInteger := nPedido;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QUANTIDADE').AsString;
      end;
      TabelaArmazenar.Next;
   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;

procedure PedidoVendaConferenciaGrade_CarregarRestante(nConferencia, nPedido: Integer; REFERENCIA: String; StringGrade: TStringGrid);
begin

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.add( ' SELECT ' );
   TabelaArmazenar.sql.add( '       VIEW_PEDIDO_QTDERESTANTE.CONFERENCIA, ' );
   TabelaArmazenar.sql.add( '       VIEW_PEDIDO_QTDERESTANTE.CODIGO, ' );
   TabelaArmazenar.sql.add( '       VIEW_PEDIDO_QTDERESTANTE.REFERENCIA, ' );
   TabelaArmazenar.sql.add( '       VIEW_PEDIDO_QTDERESTANTE.IDENTIFICADOR, ' );
   TabelaArmazenar.sql.add( '       VIEW_PEDIDO_QTDERESTANTE.DESCRICAO, ' );
   TabelaArmazenar.sql.add( '       VIEW_PEDIDO_QTDERESTANTE.COR, ' );
   TabelaArmazenar.sql.add( '       VIEW_PEDIDO_QTDERESTANTE.ORDEM_GRADE, ' );
   TabelaArmazenar.sql.add( '       VIEW_PEDIDO_QTDERESTANTE.TAMANHO, ' );
   TabelaArmazenar.sql.add( '       VIEW_PEDIDO_QTDERESTANTE.VLR_UNITARIO, ' );
   TabelaArmazenar.sql.add( '       VIEW_PEDIDO_QTDERESTANTE.QTDEVENDIDA, ' );
   TabelaArmazenar.sql.add( '       VIEW_PEDIDO_QTDERESTANTE.QTDECONFERIDA, ' );
   TabelaArmazenar.sql.add( '       VIEW_PEDIDO_QTDERESTANTE.QTDERESTANTE, ' );
   TabelaArmazenar.sql.add( '       PEDIDOS_ITENS_GRADE.CELULA_COL, ' );
   TabelaArmazenar.sql.add( '       PEDIDOS_ITENS_GRADE.COLUNA_ROW ' );
   TabelaArmazenar.sql.add( '  ' );
   TabelaArmazenar.sql.add( '   FROM VIEW_PEDIDO_QTDERESTANTE ' );
   TabelaArmazenar.sql.add( '    LEFT JOIN PEDIDOS_ITENS_GRADE ' );
   TabelaArmazenar.sql.add( '    ON ' );
   TabelaArmazenar.sql.add( '    PEDIDOS_ITENS_GRADE.CODIGO=VIEW_PEDIDO_QTDERESTANTE.CODIGO ' );
   TabelaArmazenar.sql.add( '    AND ' );
   TabelaArmazenar.sql.add( '    PEDIDOS_ITENS_GRADE.REFERENCIA=VIEW_PEDIDO_QTDERESTANTE.REFERENCIA ' );
   TabelaArmazenar.sql.add( '    AND ' );
   TabelaArmazenar.sql.add( '    PEDIDOS_ITENS_GRADE.COR=VIEW_PEDIDO_QTDERESTANTE.COR ' );
   TabelaArmazenar.sql.add( '    AND ' );
   TabelaArmazenar.sql.add( '    PEDIDOS_ITENS_GRADE.TAMANHO=VIEW_PEDIDO_QTDERESTANTE.TAMANHO ' );
   TabelaArmazenar.sql.add( '    AND ' );
   TabelaArmazenar.sql.add( '    PEDIDOS_ITENS_GRADE.IDENTIFICADOR=VIEW_PEDIDO_QTDERESTANTE.IDENTIFICADOR ' );
   TabelaArmazenar.sql.add( '   WHERE ' );
   TabelaArmazenar.sql.add( '   VIEW_PEDIDO_QTDERESTANTE.CODIGO=:CODIGO ' );
   TabelaArmazenar.sql.add( '   AND ' );
   TabelaArmazenar.sql.add( '   VIEW_PEDIDO_QTDERESTANTE.REFERENCIA=:REFERENCIA ' );
   TabelaArmazenar.sql.add( '  ' );

   //TabelaArmazenar.ParamByName('CODIGO').AsInteger := nConferencia;
   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nPedido;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QTDERESTANTE').AsString;
      end;
      TabelaArmazenar.Next;
   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;


procedure PedidoVendaConferenciaGrade_Salvar(nConferencia, nPedido: Integer; REFERENCIA: String; StringGrade: TStringGrid);
begin

   COD_SEQ := 0;

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------
   TabelaGrades := TFDQuery.Create(Application);
   TabelaArmazenar := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.add( ' DELETE FROM   PEDIDOCONFERENCIA_ITENS ' );
   TabelaArmazenar.sql.add('  WHERE  ');
   TabelaArmazenar.sql.add('  CODIGO=:CODIGO  ');
   TabelaArmazenar.sql.add('  AND  ');
   TabelaArmazenar.sql.add('  PEDIDO=:PEDIDO  ');
   TabelaArmazenar.sql.add('  AND  ');
   TabelaArmazenar.sql.add('  REFERENCIA=:REFERENCIA  ');

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nConferencia;
   TabelaArmazenar.ParamByName('PEDIDO').AsInteger := nPedido;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.ExecSQL;

   exit;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   PEDIDOCONFERENCIA_ITENS ' +
     ' WHERE '+
     ' CODIGO=:CODIGO           '+
     ' AND                      '+
     ' PEDIDO=:PEDIDO           ' +
     ' AND                      '+
     ' REFERENCIA=:REFERENCIA   ' +
     ' AND                      '+
     ' TAMANHO<>''''         '+
//     ' AND QUANTIDADE>0                      '+
     '                       '+
     '                       '+
     ' ORDER BY ORDEM_GRADE     ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nConferencia;
   TabelaArmazenar.ParamByName('PEDIDO').AsInteger := nPedido;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;

   TabelaArmazenar.first;

   // passar linhas por linha. E em cada linhas que passar deverá checar
   // cada coluna e "salvar" no banco de dados
   //

   // Linhas

   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      Inc(COD_SEQ);
      TabelaArmazenar.Append;
      TabelaArmazenar.FieldByName('CODIGO').AsInteger := nConferencia;
      TabelaArmazenar.FieldByName('PEDIDO').AsInteger := nPedido;
      TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
      TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
      TabelaArmazenar.FieldByName('CELULA').AsString := 'COR: ' +
        StringGrade.Cells[0, Linha];
      TabelaArmazenar.FieldByName('COR').AsString := StringGrade.Cells
        [0, Linha];
      TabelaArmazenar.FieldByName('COR_ID').AsInteger :=         COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
      TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
      TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=         GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
      // TabelaArmazenar.FieldByName('GRADE_ID').AsInteger        :=GRADE_ID(Referencia, StringGrade.Cells[coluna, 0] );

      TabelaArmazenar.FieldByName('REFERENCIA').AsString := REFERENCIA;
         TabelaArmazenar.FieldByName('DESCRICAO').AsString :=           fncReferenciaNome(REFERENCIA);
      TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(REFERENCIA,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

      TabelaArmazenar.Post;

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin
         Inc(COD_SEQ);
         TabelaArmazenar.Append;
         TabelaArmazenar.FieldByName('CODIGO').AsInteger :=          nConferencia;
         TabelaArmazenar.FieldByName('PEDIDO').AsInteger :=   nPedido;
         //TabelaArmazenar.FieldByName('CODIGO').AsInteger := COD_SEQ;
         TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
         TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
         TabelaArmazenar.FieldByName('CELULA').AsString := 'TAMANHO: ' + StringGrade.Cells[Coluna, 0] + ' / COR: ' + StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('COR_ID').AsInteger :=             COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
         TabelaArmazenar.FieldByName('COR').AsString :=                 StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('TAMANHO').AsString :=             StringGrade.Cells[Coluna, 0];
         TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=         GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('GRADE_ID').AsInteger :=           GRADE_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('REFERENCIA').AsString :=          REFERENCIA;
         TabelaArmazenar.FieldByName('DESCRICAO').AsString :=           fncReferenciaNome(REFERENCIA);

         TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString :=       fncMontarIdentificador(REFERENCIA,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

         if (Coluna > 0) and (Linha > 0) then
         begin
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;

            //TabelaArmazenar.FieldByName('VALOR_UNIT').AsFloat   :=  DistribuirReferenciaValor(nConferencia, nPedido, REFERENCIA);
            TabelaArmazenar.FieldByName('VALOR_UNIT').AsFloat   :=  PedidoReferenciaValor(REFERENCIA, nPedido);
            TabelaArmazenar.FieldByName('QUANTIDADE').AsInteger :=  StrToInt(StringGrade.Cells[Coluna, Linha]);
         end;

         TabelaArmazenar.Post;
      end;
      Coluna := 0;

   end;


   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.add( ' DELETE FROM   PEDIDOCONFERENCIA_ITENS ' );
   TabelaArmazenar.sql.add('  WHERE   ');
   TabelaArmazenar.sql.add('  (TAMANHO='''' OR (TAMANHO IS NULL)  OR QUANTIDADE<1 ) ');
   TabelaArmazenar.ExecSQL;
   TabelaArmazenar.sql.clear;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   TabelaGrades.Free;

end;


procedure DistribuirReferencia_Salvar_Produzir(nRemessa, nOrdemProducao: Integer;                    REFERENCIA: String; StringGrade: TStringGrid);
begin

   COD_SEQ := 0;

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------
   TabelaGrades := TFDQuery.Create(Application);
   TabelaArmazenar := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.add( ' DELETE FROM   PCP_DISTRIBUIR_RGRADE_REMESSA ' );
   TabelaArmazenar.sql.add('  WHERE  ');
   TabelaArmazenar.sql.add('  CODIGO=:CODIGO  ');
   TabelaArmazenar.sql.add('  AND  ');
   TabelaArmazenar.sql.add('  ORDEMPRODUCAO=:ORDEMPRODUCAO  ');
   TabelaArmazenar.sql.add('  AND  ');
   TabelaArmazenar.sql.add('  REFERENCIA=:REFERENCIA  ');

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nRemessa;
   TabelaArmazenar.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.ExecSQL;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   PCP_DISTRIBUIR_RGRADE_REMESSA ' +
     ' WHERE '+
     ' CODIGO=:CODIGO           '+
     ' AND                      '+
     ' ORDEMPRODUCAO=:ORDEMPRODUCAO           ' +
     ' AND                      '+
     ' REFERENCIA=:REFERENCIA   ' +
     ' ORDER BY ORDEM_GRADE     ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nRemessa;
   TabelaArmazenar.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;

   TabelaArmazenar.first;

   // passar linhas por linha. E em cada linhas que passar deverá checar
   // cada coluna e "salvar" no banco de dados
   //

   // Linhas

   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      Inc(COD_SEQ);
      TabelaArmazenar.Append;
      TabelaArmazenar.FieldByName('CODIGO').AsInteger := nRemessa;
      TabelaArmazenar.FieldByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
      //TabelaArmazenar.FieldByName('CODIGO').AsInteger := COD_SEQ;
      TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
      TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
      TabelaArmazenar.FieldByName('CELULA').AsString := 'COR: ' +
        StringGrade.Cells[0, Linha];
      TabelaArmazenar.FieldByName('COR').AsString := StringGrade.Cells
        [0, Linha];
      TabelaArmazenar.FieldByName('COR_ID').AsInteger :=         COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
      TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
      TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=         GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
      // TabelaArmazenar.FieldByName('GRADE_ID').AsInteger        :=GRADE_ID(Referencia, StringGrade.Cells[coluna, 0] );

      TabelaArmazenar.FieldByName('REFERENCIA').AsString := REFERENCIA;
      TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(REFERENCIA,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

      TabelaArmazenar.Post;

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin
         Inc(COD_SEQ);
         TabelaArmazenar.Append;
         TabelaArmazenar.FieldByName('CODIGO').AsInteger :=          nRemessa;
         TabelaArmazenar.FieldByName('ORDEMPRODUCAO').AsInteger :=   nOrdemProducao;
         //TabelaArmazenar.FieldByName('CODIGO').AsInteger := COD_SEQ;
         TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
         TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
         TabelaArmazenar.FieldByName('CELULA').AsString := 'TAMANHO: ' + StringGrade.Cells[Coluna, 0] + ' / COR: ' + StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('COR_ID').AsInteger :=             COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
         TabelaArmazenar.FieldByName('COR').AsString :=                 StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('TAMANHO').AsString :=             StringGrade.Cells[Coluna, 0];
         TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=         GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('GRADE_ID').AsInteger :=           GRADE_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('REFERENCIA').AsString :=          REFERENCIA;
         TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(REFERENCIA,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

         if (Coluna > 0) and (Linha > 0) then
         begin
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;

            TabelaArmazenar.FieldByName('VLR_UNIT').AsFloat :=  DistribuirReferenciaValor(nRemessa, nOrdemProducao, REFERENCIA);
            TabelaArmazenar.FieldByName('QUANTIDADE').AsInteger := StrToInt(StringGrade.Cells[Coluna, Linha]);
         end;

         TabelaArmazenar.Post;
      end;
      Coluna := 0;

   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   TabelaGrades.Free;

end;

Function DistribuirReferencia_Totalizar_Produzir(StringGrade: TStringGrid): Integer;
var
   CalcularQuantidade: Integer;
begin

   Linha := 0;
   Coluna := 0;
   CalcularQuantidade := 0;

   // lihas
   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin

         if (Coluna > 0) and (Linha > 0) then
         begin
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;

            if StrToInt(StringGrade.Cells[Coluna, Linha]) > 0 then
            begin
               CalcularQuantidade := CalcularQuantidade +
                 StrToInt(StringGrade.Cells[Coluna, Linha]);
            end;
         end;

      end;
      Coluna := 0;

   end;
   Result := CalcularQuantidade;

end;





{ *****************************************************************************
  **                         Distribuição de Serviços | Retorno              **
  ***************************************************************************** }
procedure DistribuirRetorno_Montar_Produzir(REFERENCIA: String;
  StringGrade: TStringGrid);
begin

   If empty(REFERENCIA) then
   begin
      BeepCritica;
      Informar('Referência não definida para montar grade ');
      Abort;
   end;

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades := TFDQuery.Create(Application);
   TabelaCores := TFDQuery.Create(Application);
   TabelaTamanhos := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaCores.Connection := FrmPrincipal.DBConexao;
   TabelaTamanhos.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaGrades.sql.clear;
   TabelaGrades.sql.text := ' SELECT *  FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ' +
     ' ORDER BY COR,  TAMANHO_ORDEM               ';
   TabelaGrades.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaGrades.Open;

   // TESTE
   TabelaCores.sql.clear;
   TabelaCores.sql.text := ' SELECT DISTINCT(COR) FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ';
   TabelaCores.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaCores.Open;

   // tabela de TAMANHOS
   TabelaTamanhos.sql.clear;
   TabelaTamanhos.sql.text :=
     ' SELECT DISTINCT(TAMANHO), TAMANHO_ORDEM FROM VIEW_GRADEREFERENCIA' +
     ' WHERE REFERENCIA=:REFERENCIA        '+
     ' ORDER BY TAMANHO_ORDEM        ';
   TabelaTamanhos.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaTamanhos.Open;

   if REFERENCIA = '' then
      REFERENCIA := '0';

   {
   Try

      StrToInt(REFERENCIA);

   Except
      REFERENCIA := '0';

   End;
   }

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // DEFINIR COLUNAS E LINHAS
   // ----------------------------------------------------------------------

   StringGrade.ColCount := TabelaTamanhos.RecordCount + 1;
   StringGrade.RowCount := TabelaCores.RecordCount + 1;

   TabelaTamanhos.first;
   TabelaCores.first;

   Coluna := 0;
   Linha := 0;

   StringGrade.Cells[0, 0] := 'REFERÊNCIA:';
   StringGrade.FixedCols := 1;
   StringGrade.FixedRows := 1;
   StringGrade.ColWidths[0] := 150;

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // COLUNAS
   // ----------------------------------------------------------------------
   while not TabelaTamanhos.eof do
   begin

      Inc(Coluna);
      StringGrade.Cells[Coluna, 0] := TabelaTamanhos.FieldByName('TAMANHO')
        .AsString;;
      StringGrade.ColWidths[Coluna] := 70;
      StringGrade.Width := StringGrade.Width + 40;

      TabelaTamanhos.Next;

   end;
   TabelaTamanhos.first;

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // LINHAS
   // ----------------------------------------------------------------------

   Linha := 0;
   TabelaCores.first;
   while not TabelaCores.eof do
   begin

      Inc(Linha);

      StringGrade.Cells[0, Linha] := TabelaCores.FieldByName('COR').AsString;;
      TabelaCores.Next;

   end;

   // -------------------------------------------------------------------
   // Redimensionar formulario
   // -------------------------------------------------------------------

   // Screen. Width := StringGrade.Width;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades.Free;
   TabelaCores.Free;
   TabelaTamanhos.Free;

end;

procedure DistribuirRetorno_Carregar_Produzido(nRemessa, nOrdemProducao: Integer; REFERENCIA: String; StringGrade: TStringGrid);
begin

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   PCP_DISTRIBUIR_RGRADE_RETORNO ' +
     ' WHERE '+
     ' CODIGO=:CODIGO           '+
     ' AND                      '+
     ' ORDEMPRODUCAO=:ORDEMPRODUCAO           ' +
     ' AND                      '+
     ' REFERENCIA=:REFERENCIA   ' +
     ' ORDER BY ORDEM_GRADE     ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nRemessa;
   TabelaArmazenar.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QUANTIDADE').AsString;
      end;
      TabelaArmazenar.Next;
   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;


procedure DistribuirRetorno_Salvar_Produzido(nRemessa, nOrdemProducao: Integer;                    REFERENCIA: String; StringGrade: TStringGrid);
begin

   COD_SEQ := 0;

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------
   TabelaGrades := TFDQuery.Create(Application);
   TabelaArmazenar := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // deletar


   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.add( ' DELETE FROM   PCP_DISTRIBUIR_RGRADE_RETORNO ' );
   TabelaArmazenar.sql.add('  WHERE  ');
   TabelaArmazenar.sql.add('  CODIGO=:CODIGO  ');
   TabelaArmazenar.sql.add('  AND  ');
   TabelaArmazenar.sql.add('  ORDEMPRODUCAO=:ORDEMPRODUCAO  ');
   TabelaArmazenar.sql.add('  AND  ');
   TabelaArmazenar.sql.add('  REFERENCIA=:REFERENCIA  ');

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nRemessa;
   TabelaArmazenar.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.ExecSQL;


   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   PCP_DISTRIBUIR_RGRADE_RETORNO ' +
     ' WHERE '+
     ' CODIGO=:CODIGO           '+
     ' AND                      '+
     ' ORDEMPRODUCAO=:ORDEMPRODUCAO           ' +
     ' AND                      '+
     ' REFERENCIA=:REFERENCIA   ' +
     ' ORDER BY ORDEM_GRADE     ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nRemessa;
   TabelaArmazenar.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;

   TabelaArmazenar.first;

   // passar linhas por linha. E em cada linhas que passar deverá checar
   // cada coluna e "salvar" no banco de dados
   //

   // Linhas

   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      Inc(COD_SEQ);
      TabelaArmazenar.Append;
      TabelaArmazenar.FieldByName('CODIGO').AsInteger := nRemessa;
      TabelaArmazenar.FieldByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
      //TabelaArmazenar.FieldByName('CODIGO').AsInteger := COD_SEQ;
      TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
      TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
      TabelaArmazenar.FieldByName('CELULA').AsString := 'COR: ' +
        StringGrade.Cells[0, Linha];
      TabelaArmazenar.FieldByName('COR').AsString := StringGrade.Cells
        [0, Linha];
      TabelaArmazenar.FieldByName('COR_ID').AsInteger :=         COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
      TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
      TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=         GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
      // TabelaArmazenar.FieldByName('GRADE_ID').AsInteger        :=GRADE_ID(Referencia, StringGrade.Cells[coluna, 0] );

      TabelaArmazenar.FieldByName('REFERENCIA').AsString := REFERENCIA;
      TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(REFERENCIA,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

      TabelaArmazenar.Post;

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin
         Inc(COD_SEQ);
         TabelaArmazenar.Append;
         TabelaArmazenar.FieldByName('CODIGO').AsInteger :=          nRemessa;
         TabelaArmazenar.FieldByName('ORDEMPRODUCAO').AsInteger :=   nOrdemProducao;
         //TabelaArmazenar.FieldByName('CODIGO').AsInteger := COD_SEQ;
         TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
         TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
         TabelaArmazenar.FieldByName('CELULA').AsString := 'TAMANHO: ' + StringGrade.Cells[Coluna, 0] + ' / COR: ' + StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('COR_ID').AsInteger :=             COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
         TabelaArmazenar.FieldByName('COR').AsString :=                 StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('TAMANHO').AsString :=             StringGrade.Cells[Coluna, 0];
         TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=         GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('GRADE_ID').AsInteger :=           GRADE_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('REFERENCIA').AsString :=          REFERENCIA;
         TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(REFERENCIA,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

         if (Coluna > 0) and (Linha > 0) then
         begin
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;

            TabelaArmazenar.FieldByName('VLR_UNIT').AsFloat :=  DistribuirReferenciaValor(nRemessa, nOrdemProducao, REFERENCIA);
            TabelaArmazenar.FieldByName('QUANTIDADE').AsInteger := StrToInt(StringGrade.Cells[Coluna, Linha]);
         end;

         TabelaArmazenar.Post;
      end;
      Coluna := 0;

   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   TabelaGrades.Free;

end;


procedure GradeTabelaPrecosCarregar(nTabelaPreco: Integer; REFERENCIA: String; StringGrade: TStringGrid);
begin

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   TPRECO_REFERENCIAS_GRADES ' +
     ' WHERE '+
     ' CODIGO=:CODIGO           '+
     ' AND                      '+
     ' REFERENCIA=:REFERENCIA   ' +
     ' ORDER BY ORDEM_GRADE     ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nTabelaPreco;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         //StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('PRC_VENDA').AsString;
         StringGrade.Cells[Coluna, Linha] := FormatFloat('##,###,##0.00', TabelaArmazenar.FieldByName('PRC_VENDA').AsFloat);

      end;
      TabelaArmazenar.Next;
   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;


procedure GradeTabelaPrecosSalvar(nTabelaPreco: Integer; REFERENCIA: String; StringGrade: TStringGrid);
begin

   COD_SEQ := 0;

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------
   TabelaGrades := TFDQuery.Create(Application);
   TabelaArmazenar := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // deletar


   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.add( ' DELETE FROM   TPRECO_REFERENCIAS_GRADES ' );
   TabelaArmazenar.sql.add('  WHERE  ');
   TabelaArmazenar.sql.add('  CODIGO=:CODIGO  ');
   TabelaArmazenar.sql.add('  AND  ');
   TabelaArmazenar.sql.add('  REFERENCIA=:REFERENCIA  ');

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nTabelaPreco;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.ExecSQL;


   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.add(' SELECT * FROM   TPRECO_REFERENCIAS_GRADES ');
   TabelaArmazenar.sql.add('  WHERE  ');
   TabelaArmazenar.sql.add('  CODIGO=:CODIGO  ');
   TabelaArmazenar.sql.add('  AND  ');
   TabelaArmazenar.sql.add('  REFERENCIA=:REFERENCIA  ');
   TabelaArmazenar.sql.add('  ORDER BY ORDEM_GRADE    ');
   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nTabelaPreco;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;

   TabelaArmazenar.first;

   // passar linhas por linha. E em cada linhas que passar deverá checar
   // cada coluna e "salvar" no banco de dados
   //

   // Linhas

   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      Inc(COD_SEQ);
      TabelaArmazenar.Append;
      TabelaArmazenar.FieldByName('CODIGO').AsInteger := nTabelaPreco;
      //TabelaArmazenar.FieldByName('CODIGO').AsInteger := COD_SEQ;
      TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
      TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
      TabelaArmazenar.FieldByName('CELULA').AsString := 'COR: ' +
        StringGrade.Cells[0, Linha];
      TabelaArmazenar.FieldByName('COR').AsString := StringGrade.Cells
        [0, Linha];
      TabelaArmazenar.FieldByName('COR_ID').AsInteger :=         COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
      TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
      TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=         GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
      // TabelaArmazenar.FieldByName('GRADE_ID').AsInteger        :=GRADE_ID(Referencia, StringGrade.Cells[coluna, 0] );

      TabelaArmazenar.FieldByName('REFERENCIA').AsString := REFERENCIA;
      TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(REFERENCIA,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

      TabelaArmazenar.Post;

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin
         Inc(COD_SEQ);
         TabelaArmazenar.Append;
         TabelaArmazenar.FieldByName('CODIGO').AsInteger :=          nTabelaPreco;
         //TabelaArmazenar.FieldByName('CODIGO').AsInteger := COD_SEQ;
         TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
         TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
         TabelaArmazenar.FieldByName('CELULA').AsString := 'TAMANHO: ' + StringGrade.Cells[Coluna, 0] + ' / COR: ' + StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('COR_ID').AsInteger :=             COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
         TabelaArmazenar.FieldByName('COR').AsString :=                 StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('TAMANHO').AsString :=             StringGrade.Cells[Coluna, 0];
         TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=         GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('GRADE_ID').AsInteger :=           GRADE_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('REFERENCIA').AsString :=          REFERENCIA;
         TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(REFERENCIA,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

         if (Coluna > 0) and (Linha > 0) then
         begin
            {
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;
            }

            if StrToFloatDef(StringGrade.Cells[Coluna, Linha],0)>0 then
               TabelaArmazenar.FieldByName('PRC_VENDA').AsFloat := StrToFloatDef(StringGrade.Cells[Coluna, Linha],0);
         end;

         TabelaArmazenar.Post;
      end;
      Coluna := 0;

   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   TabelaGrades.Free;

end;



Function DistribuirRetorno_Totalizar_Produzir(StringGrade: TStringGrid): Integer;
var
   CalcularQuantidade: Integer;
begin

   Linha := 0;
   Coluna := 0;
   CalcularQuantidade := 0;

   // lihas
   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin

         if (Coluna > 0) and (Linha > 0) then
         begin
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;

            if StrToInt(StringGrade.Cells[Coluna, Linha]) > 0 then
            begin
               CalcularQuantidade := CalcularQuantidade +
                 StrToInt(StringGrade.Cells[Coluna, Linha]);
            end;
         end;

      end;
      Coluna := 0;

   end;
   Result := CalcularQuantidade;

end;




Procedure GradeZerar(StringGrade: TStringGrid);
begin

   // lihas
   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin
         StringGrade.Cells[Coluna, Linha] := '0';
      end;
      //Coluna := 0;
   end;
end;


{ *****************************************************************************
  **                         Distribuição de Serviços | Remessa              **
  ***************************************************************************** }



{ *****************************************************************************
  **                         Ordem de Produção - Produzidos                   **
  ***************************************************************************** }
procedure GradeProduto_Montar_OrdemProducaoProduzidos(REFERENCIA: String;
  StringGrade: TStringGrid);
begin

   If empty(REFERENCIA) then
   begin
      BeepCritica;
      Informar('Referência não definida para montar grade ');
      Abort;
   end;

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades := TFDQuery.Create(Application);
   TabelaCores := TFDQuery.Create(Application);
   TabelaTamanhos := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaCores.Connection := FrmPrincipal.DBConexao;
   TabelaTamanhos.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaGrades.sql.clear;
   TabelaGrades.sql.text := ' SELECT *  FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ' +
     ' ORDER BY COR,  TAMANHO_ORDEM               ';
   TabelaGrades.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaGrades.Open;

   // TESTE
   TabelaCores.sql.clear;
   TabelaCores.sql.text := ' SELECT DISTINCT(COR) FROM VIEW_GRADEREFERENCIA ' +
     ' WHERE REFERENCIA=:REFERENCIA        ';
   TabelaCores.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaCores.Open;

   // tabela de TAMANHOS
   TabelaTamanhos.sql.clear;
   TabelaTamanhos.sql.text :=
     ' SELECT DISTINCT(TAMANHO), TAMANHO_ORDEM FROM VIEW_GRADEREFERENCIA' +
     ' WHERE REFERENCIA=:REFERENCIA        '+
     ' ORDER BY TAMANHO_ORDEM        ';
   TabelaTamanhos.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaTamanhos.Open;

   if REFERENCIA = '' then
      REFERENCIA := '0';

   {
   Try

      StrToInt(REFERENCIA);

   Except
      REFERENCIA := '0';

   End;
   }

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // DEFINIR COLUNAS E LINHAS
   // ----------------------------------------------------------------------

   StringGrade.ColCount := TabelaTamanhos.RecordCount + 1;
   StringGrade.RowCount := TabelaCores.RecordCount + 1;

   TabelaTamanhos.first;
   TabelaCores.first;

   Coluna := 0;
   Linha := 0;

   StringGrade.Cells[0, 0] := 'REFERÊNCIA:';
   StringGrade.FixedCols := 1;
   StringGrade.FixedRows := 1;
   StringGrade.ColWidths[0] := 150;

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // COLUNAS
   // ----------------------------------------------------------------------
   while not TabelaTamanhos.eof do
   begin

      Inc(Coluna);
      StringGrade.Cells[Coluna, 0] := TabelaTamanhos.FieldByName('TAMANHO')
        .AsString;;
      StringGrade.ColWidths[Coluna] := 70;
      StringGrade.Width := StringGrade.Width + 40;

      TabelaTamanhos.Next;

   end;
   TabelaTamanhos.first;

   // ----------------------------------------------------------------------
   // MONTAR GRADE
   // LINHAS
   // ----------------------------------------------------------------------

   Linha := 0;
   TabelaCores.first;
   while not TabelaCores.eof do
   begin

      Inc(Linha);

      StringGrade.Cells[0, Linha] := TabelaCores.FieldByName('COR').AsString;;
      TabelaCores.Next;

   end;

   // -------------------------------------------------------------------
   // Redimensionar formulario
   // -------------------------------------------------------------------

   // Screen. Width := StringGrade.Width;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaGrades.Free;
   TabelaCores.Free;
   TabelaTamanhos.Free;

end;

procedure GradeProduto_Carregar_OrdemProducaoProduzidos(nOrdemProducao: Integer;
  REFERENCIA: String; StringGrade: TStringGrid);
begin

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   PCP_ORDEMPRODUCAO_PRODUZIDOS '
     + ' WHERE                    ' + ' ORDEMPRODUCAO=:ORDEMPRODUCAO           '
     + ' AND                      ' + ' REFERENCIA=:REFERENCIA   ' +
     ' ORDER BY ORDEM_GRADE     ';

   TabelaArmazenar.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QUANTIDADE').AsString;
      end;
      TabelaArmazenar.Next;
   end;


   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;

procedure GradeProduto_Salvar_OrdemProducaoProduzidos(nOrdemProducao: Integer;
  REFERENCIA: String; StringGrade: TStringGrid);
begin

   COD_SEQ := 0;

   REFERENCIA := Trim(REFERENCIA);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------
   TabelaGrades := TFDQuery.Create(Application);
   TabelaArmazenar := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   PCP_ORDEMPRODUCAO_PRODUZIDOS ' +
     ' WHERE                    ' + ' ORDEMPRODUCAO=:ORDEMPRODUCAO           ' +
     ' AND                    ' + ' REFERENCIA=:REFERENCIA   ';

   TabelaArmazenar.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := REFERENCIA;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;

   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      TabelaArmazenar.Delete;
   end;

   // passar linhas por linha. E em cada linhas que passar deverá checar
   // cada coluna e "salvar" no banco de dados
   //

   // Linhas

   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      Inc(COD_SEQ);
      TabelaArmazenar.Append;
      TabelaArmazenar.FieldByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
      TabelaArmazenar.FieldByName('CODIGO').AsInteger := COD_SEQ;
      TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
      TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
      TabelaArmazenar.FieldByName('CELULA').AsString := 'COR: ' +
        StringGrade.Cells[0, Linha];
      TabelaArmazenar.FieldByName('COR').AsString := StringGrade.Cells
        [0, Linha];
      TabelaArmazenar.FieldByName('COR_ID').AsInteger :=         COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
      TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
      TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=         GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
      // TabelaArmazenar.FieldByName('GRADE_ID').AsInteger        :=GRADE_ID(Referencia, StringGrade.Cells[coluna, 0] );

      TabelaArmazenar.FieldByName('REFERENCIA').AsString := REFERENCIA;
      TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(REFERENCIA,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

      TabelaArmazenar.Post;

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin
         Inc(COD_SEQ);
         TabelaArmazenar.Append;
         TabelaArmazenar.FieldByName('ORDEMPRODUCAO').AsInteger :=
           nOrdemProducao;
         TabelaArmazenar.FieldByName('CODIGO').AsInteger := COD_SEQ;
         TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
         TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
         TabelaArmazenar.FieldByName('CELULA').AsString := 'TAMANHO: ' + StringGrade.Cells[Coluna, 0] + ' / COR: ' + StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('COR_ID').AsInteger :=             COR_ID(REFERENCIA, StringGrade.Cells[0, Linha]);
         TabelaArmazenar.FieldByName('COR').AsString :=                 StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('TAMANHO').AsString :=             StringGrade.Cells[Coluna, 0];
         TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=         GRADE_ORDEM(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('GRADE_ID').AsInteger :=           GRADE_ID(REFERENCIA, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('REFERENCIA').AsString :=          REFERENCIA;
         TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(REFERENCIA,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

         if (Coluna > 0) and (Linha > 0) and
            (TabelaArmazenar.FieldByName('TAMANHO').AsString>'') and
            (TabelaArmazenar.FieldByName('COR').AsString>'')     then
         begin
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;

            TabelaArmazenar.FieldByName('QUANTIDADE').AsInteger := StrToInt(StringGrade.Cells[Coluna, Linha]);
         end;

         TabelaArmazenar.Post;
      end;
      Coluna := 0;

   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   TabelaGrades.Free;


end;

Function GradeProduto_Totalizar_OrdemProducaoProduzidos(StringGrade: TStringGrid): Integer;
var
   CalcularQuantidade: Integer;
begin

   Linha := 0;
   Coluna := 0;
   CalcularQuantidade := 0;

   // lihas
   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin

         if (Coluna > 0) and (Linha > 0) then
         begin
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;

            if StrToInt(StringGrade.Cells[Coluna, Linha]) > 0 then
            begin
               CalcularQuantidade := CalcularQuantidade +
                 StrToInt(StringGrade.Cells[Coluna, Linha]);
            end;
         end;

      end;
      Coluna := 0;

   end;
   Result := CalcularQuantidade;

end;


procedure CadProduto_EstoqueCarregar(nCodigoProduto: Integer; stReferencia: String;StringGrade: TStringGrid);
begin

   stReferencia := Trim(stReferencia);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   CAD_PRODUTOS_GRADES ' +
     ' WHERE                   CODIGO=:CODIGO           ' +
     ' AND                     REFERENCIA=:REFERENCIA   ' +
     ' AND                     TAMANHO_ID>0             ' +
     ' ORDER BY ORDEM_GRADE     ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger    := nCodigoProduto;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := stReferencia;
   TabelaArmazenar.Open;

   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha  := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QUANTIDADE').AsString;
      end;
      TabelaArmazenar.Next;
   end;


   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;



procedure CadProduto_EstoqueSalvar(nCodigoProduto: Integer; stReferencia: String;StringGrade: TStringGrid);
begin

   COD_SEQ := 0;

   stReferencia := Trim(stReferencia);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------
   TabelaGrades := TFDQuery.Create(Application);
   TabelaArmazenar := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   CAD_PRODUTOS_GRADES ' +
     ' WHERE                    ' + ' CODIGO=:CODIGO           ' +
     ' AND                    ' + ' REFERENCIA=:REFERENCIA   ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nCodigoProduto;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := stReferencia;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;

   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      TabelaArmazenar.Delete;
   end;

   // passar linhas por linha. E em cada linhas que passar deverá checar
   // cada coluna e "salvar" no banco de dados
   //

   // Linhas

   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      Inc(COD_SEQ);
      TabelaArmazenar.Append;
      TabelaArmazenar.FieldByName('CODIGO').AsInteger := nCodigoProduto;
      TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
      TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
      TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
      TabelaArmazenar.FieldByName('CELULA').AsString := 'COR: ' +
        StringGrade.Cells[0, Linha];
      TabelaArmazenar.FieldByName('COR').AsString := StringGrade.Cells
        [0, Linha];
      TabelaArmazenar.FieldByName('COR_ID').AsInteger :=
        COR_ID(stReferencia, StringGrade.Cells[0, Linha]);
      TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=
        TAMANHO_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
      TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=
        GRADE_ORDEM(stReferencia, StringGrade.Cells[Coluna, 0]);
      // TabelaArmazenar.FieldByName('GRADE_ID').AsInteger        :=GRADE_ID(Referencia, StringGrade.Cells[coluna, 0] );

      TabelaArmazenar.FieldByName('REFERENCIA').AsString := stReferencia;
      TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(stReferencia,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

      TabelaArmazenar.Post;

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin
         Inc(COD_SEQ);
         TabelaArmazenar.Append;
         TabelaArmazenar.FieldByName('CODIGO').AsInteger := nCodigoProduto;
         TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
         TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
         TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
         TabelaArmazenar.FieldByName('CELULA').AsString := 'TAMANHO: ' +
           StringGrade.Cells[Coluna, 0] + ' / COR: ' + StringGrade.Cells
           [0, Linha];
         TabelaArmazenar.FieldByName('COR_ID').AsInteger :=
           COR_ID(stReferencia, StringGrade.Cells[0, Linha]);
         TabelaArmazenar.FieldByName('COR').AsString :=                 StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('TAMANHO').AsString :=             StringGrade.Cells[Coluna, 0];
         TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=
           GRADE_ORDEM(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('GRADE_ID').AsInteger :=     GRADE_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('REFERENCIA').AsString := stReferencia;
         TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(stReferencia,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );
         if (Coluna > 0) and (Linha > 0) then
         begin
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;

            //TabelaArmazenar.FieldByName('VALOR_UNIT').AsFloat :=  PedidoReferenciaValor(REFERENCIA, nPedido);
            TabelaArmazenar.FieldByName('QUANTIDADE').AsInteger :=  StrToInt(StringGrade.Cells[Coluna, Linha]);

         end;

         TabelaArmazenar.Post;
      end;
      Coluna := 0;

   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   TabelaGrades.Free;

end;


procedure CadProduto_EstoqueSalvarQualidade(nCodigoProduto,nQualidade: Integer; stReferencia: String;StringGrade: TStringGrid);
begin

   COD_SEQ := 0;

   stReferencia := Trim(stReferencia);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------
   TabelaGrades := TFDQuery.Create(Application);
   TabelaArmazenar := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.text := ' SELECT * FROM   CAD_PRODUTOS_GRADESQUALIDADES ' +
     ' WHERE                    ' + ' CODIGO=:CODIGO           ' +
     ' AND                    ' + ' REFERENCIA=:REFERENCIA   ';

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nCodigoProduto;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := stReferencia;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;

   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      TabelaArmazenar.Delete;
   end;

   // passar linhas por linha. E em cada linhas que passar deverá checar
   // cada coluna e "salvar" no banco de dados
   //

   // Linhas

   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      Inc(COD_SEQ);
      TabelaArmazenar.Append;
      TabelaArmazenar.FieldByName('CODIGO').AsInteger := nCodigoProduto;
      TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
      TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
      TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
      TabelaArmazenar.FieldByName('CELULA').AsString := 'COR: ' +
        StringGrade.Cells[0, Linha];
      TabelaArmazenar.FieldByName('COR').AsString := StringGrade.Cells
        [0, Linha];
      TabelaArmazenar.FieldByName('COR_ID').AsInteger :=
        COR_ID(stReferencia, StringGrade.Cells[0, Linha]);
      TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=
        TAMANHO_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
      TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=              GRADE_ORDEM(stReferencia, StringGrade.Cells[Coluna, 0]);
      // TabelaArmazenar.FieldByName('GRADE_ID').AsInteger        :=GRADE_ID(Referencia, StringGrade.Cells[coluna, 0] );

      TabelaArmazenar.FieldByName('REFERENCIA').AsString := stReferencia;
      TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(stReferencia,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

      TabelaArmazenar.FieldByName('QUALIDADE').AsInteger := nQualidade;
      TabelaArmazenar.Post;

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin
         Inc(COD_SEQ);
         TabelaArmazenar.Append;
         TabelaArmazenar.FieldByName('CODIGO').AsInteger := nCodigoProduto;
         TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
         TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
         TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
         TabelaArmazenar.FieldByName('CELULA').AsString := 'TAMANHO: ' +
           StringGrade.Cells[Coluna, 0] + ' / COR: ' + StringGrade.Cells
           [0, Linha];
         TabelaArmazenar.FieldByName('COR_ID').AsInteger :=
           COR_ID(stReferencia, StringGrade.Cells[0, Linha]);
         TabelaArmazenar.FieldByName('COR').AsString :=                 StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('TAMANHO').AsString :=             StringGrade.Cells[Coluna, 0];
         TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=
           GRADE_ORDEM(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('GRADE_ID').AsInteger :=     GRADE_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('REFERENCIA').AsString := stReferencia;
         TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(stReferencia,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );
         if (Coluna > 0) and (Linha > 0) then
         begin
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;

            //TabelaArmazenar.FieldByName('VALOR_UNIT').AsFloat :=  PedidoReferenciaValor(REFERENCIA, nPedido);
            TabelaArmazenar.FieldByName('QUANTIDADE').AsInteger :=  StrToInt(StringGrade.Cells[Coluna, Linha]);

         end;

         TabelaArmazenar.FieldByName('QUALIDADE').AsInteger := nQualidade;
         TabelaArmazenar.Post;
      end;
      Coluna := 0;

   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   TabelaGrades.Free;

end;

procedure CompraGrade_QuantidadeCarregar(nCompras: Integer; stReferencia: String; StringGrade: TStringGrid);

begin

   stReferencia := Trim(stReferencia);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.add (' SELECT * FROM   COMPRAS_ITENS_GRADES ');
   TabelaArmazenar.sql.add (' WHERE                                ');
   TabelaArmazenar.sql.add (' CODIGO=:CODIGO                       ');
   TabelaArmazenar.sql.add (' AND                                  ');
   TabelaArmazenar.sql.add (' REFERENCIA=:REFERENCIA               ');
   TabelaArmazenar.sql.add (' ORDER BY ORDEM_GRADE                 ');

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nCompras;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := stReferencia;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QUANTIDADE').AsString;
      end;
      TabelaArmazenar.Next;
   end;


   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;



procedure CompraGrade_QuantidadeSalvar(nCompras: Integer; stReferencia: String;StringGrade: TStringGrid);
Var
 fnvalor : real;
begin

   COD_SEQ := 0;
   fnvalor :=0;
   stReferencia := Trim(stReferencia);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------
   TabelaGrades := TFDQuery.Create(Application);
   TabelaArmazenar := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.add (' SELECT * FROM   COMPRAS_ITENS_GRADES ');
   TabelaArmazenar.sql.add (' WHERE                                ');
   TabelaArmazenar.sql.add (' CODIGO=:CODIGO                       ');
   TabelaArmazenar.sql.add (' AND                                  ');
   TabelaArmazenar.sql.add (' REFERENCIA=:REFERENCIA               ');

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nCompras;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := stReferencia;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;

   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      TabelaArmazenar.Delete;
   end;

   // passar linhas por linha. E em cada linhas que passar deverá checar
   // cada coluna e "salvar" no banco de dados
   //

   // Linhas

   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      Inc(COD_SEQ);
      TabelaArmazenar.Append;
      TabelaArmazenar.FieldByName('CODIGO').AsInteger := nCompras;
      TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
      TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
      TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
      TabelaArmazenar.FieldByName('CELULA').AsString := 'COR: ' +        StringGrade.Cells[0, Linha];
      TabelaArmazenar.FieldByName('COR').AsString := StringGrade.Cells
        [0, Linha];
      TabelaArmazenar.FieldByName('COR_ID').AsInteger :=        COR_ID(stReferencia, StringGrade.Cells[0, Linha]);
      TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=        TAMANHO_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
      TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=        GRADE_ORDEM(stReferencia, StringGrade.Cells[Coluna, 0]);
      // TabelaArmazenar.FieldByName('GRADE_ID').AsInteger        :=GRADE_ID(Referencia, StringGrade.Cells[coluna, 0] );

      TabelaArmazenar.FieldByName('REFERENCIA').AsString := stReferencia;
      TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(stReferencia,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

      TabelaArmazenar.Post;

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin
         Inc(COD_SEQ);
         TabelaArmazenar.Append;
         TabelaArmazenar.FieldByName('CODIGO').AsInteger := nCompras;
         TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
         TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
         TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
         TabelaArmazenar.FieldByName('CELULA').AsString := 'TAMANHO: ' +            StringGrade.Cells[Coluna, 0] + ' / COR: ' + StringGrade.Cells
           [0, Linha];
         TabelaArmazenar.FieldByName('COR_ID').AsInteger :=            COR_ID(stReferencia, StringGrade.Cells[0, Linha]);
         TabelaArmazenar.FieldByName('COR').AsString :=                 StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('TAMANHO').AsString :=             StringGrade.Cells[Coluna, 0];
         TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=             GRADE_ORDEM(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('GRADE_ID').AsInteger :=     GRADE_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('REFERENCIA').AsString := stReferencia;
         TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(stReferencia,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );
         if (Coluna > 0) and (Linha > 0) then
         begin
            fnvalor := StrToFloatDef(StringGrade.Cells[Coluna, Linha],0);
            TabelaArmazenar.FieldByName('QUANTIDADE').AsFloat :=  fnvalor;

         end;

         TabelaArmazenar.Post;
      end;
      Coluna := 0;

   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   TabelaGrades.Free;

end;


procedure VendaGrade_QuantidadeCarregar(nVenda: Integer; stReferencia: String; StringGrade: TStringGrid);
begin

   stReferencia := Trim(stReferencia);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.add (' SELECT * FROM   VENDAS_ITENS_GRADES ');
   TabelaArmazenar.sql.add (' WHERE                                ');
   TabelaArmazenar.sql.add (' CODIGO=:CODIGO                       ');
   TabelaArmazenar.sql.add (' AND                                  ');
   TabelaArmazenar.sql.add (' REFERENCIA=:REFERENCIA               ');
   TabelaArmazenar.sql.add (' ORDER BY ORDEM_GRADE                 ');

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nVenda;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := stReferencia;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QUANTIDADE').AsString;
      end;
      TabelaArmazenar.Next;
   end;


   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;



procedure VendaGrade_QuantidadeSalvar(nVenda: Integer; stReferencia: String;StringGrade: TStringGrid);
begin

   COD_SEQ := 0;

   stReferencia := Trim(stReferencia);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------
   TabelaGrades := TFDQuery.Create(Application);
   TabelaArmazenar := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.add (' SELECT * FROM   VENDAS_ITENS_GRADES ');
   TabelaArmazenar.sql.add (' WHERE                                ');
   TabelaArmazenar.sql.add (' CODIGO=:CODIGO                       ');
   TabelaArmazenar.sql.add (' AND                                  ');
   TabelaArmazenar.sql.add (' REFERENCIA=:REFERENCIA               ');

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nVenda;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := stReferencia;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;

   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      TabelaArmazenar.Delete;
   end;

   // passar linhas por linha. E em cada linhas que passar deverá checar
   // cada coluna e "salvar" no banco de dados
   //

   // Linhas

   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      Inc(COD_SEQ);
      TabelaArmazenar.Append;
      TabelaArmazenar.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
      TabelaArmazenar.FieldByName('CODIGO').AsInteger := nVenda;
      TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
      TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
      TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
      TabelaArmazenar.FieldByName('CELULA').AsString := 'COR: ' +
        StringGrade.Cells[0, Linha];
      TabelaArmazenar.FieldByName('COR').AsString := StringGrade.Cells
        [0, Linha];
      TabelaArmazenar.FieldByName('COR_ID').AsInteger :=
        COR_ID(stReferencia, StringGrade.Cells[0, Linha]);
      TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=
        TAMANHO_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
      TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=
        GRADE_ORDEM(stReferencia, StringGrade.Cells[Coluna, 0]);
      // TabelaArmazenar.FieldByName('GRADE_ID').AsInteger        :=GRADE_ID(Referencia, StringGrade.Cells[coluna, 0] );

      TabelaArmazenar.FieldByName('REFERENCIA').AsString := stReferencia;
      TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(stReferencia,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

      TabelaArmazenar.Post;

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin
         Inc(COD_SEQ);
         TabelaArmazenar.Append;
         TabelaArmazenar.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
         TabelaArmazenar.FieldByName('CODIGO').AsInteger := nVenda;
         TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
         TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
         TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
         TabelaArmazenar.FieldByName('CELULA').AsString := 'TAMANHO: ' +
           StringGrade.Cells[Coluna, 0] + ' / COR: ' + StringGrade.Cells
           [0, Linha];
         TabelaArmazenar.FieldByName('COR_ID').AsInteger :=
           COR_ID(stReferencia, StringGrade.Cells[0, Linha]);
         TabelaArmazenar.FieldByName('COR').AsString :=                 StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('TAMANHO').AsString :=             StringGrade.Cells[Coluna, 0];
         TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=
           GRADE_ORDEM(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('GRADE_ID').AsInteger :=     GRADE_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('REFERENCIA').AsString := stReferencia;
         TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(stReferencia,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );
         if (Coluna > 0) and (Linha > 0) then
         begin
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;

            //TabelaArmazenar.FieldByName('VALOR_UNIT').AsFloat :=  PedidoReferenciaValor(REFERENCIA, nPedido);
            TabelaArmazenar.FieldByName('QUANTIDADE').AsInteger :=  StrToInt(StringGrade.Cells[Coluna, Linha]);

         end;

         TabelaArmazenar.Post;
      end;
      Coluna := 0;

   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   TabelaGrades.Free;

end;


procedure VendaGradeDevolucao_QuantidadeCarregar(nVenda: Integer; stReferencia: String; StringGrade: TStringGrid);
begin

   stReferencia := Trim(stReferencia);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar := TFDQuery.Create(Application);
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.add (' SELECT * FROM   VENDAS_DEVOLUCAO_ITENS_GRADES ');
   TabelaArmazenar.sql.add (' WHERE                                ');
   TabelaArmazenar.sql.add (' CODIGO=:CODIGO                       ');
   TabelaArmazenar.sql.add (' AND                                  ');
   TabelaArmazenar.sql.add (' REFERENCIA=:REFERENCIA               ');
   TabelaArmazenar.sql.add (' ORDER BY ORDEM_GRADE                 ');

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nVenda;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := stReferencia;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;
   TabelaArmazenar.Refresh;

   // passar linhas por linha. E em cada linhas que passar deverá "carregar" cada
   // coluna salva no banco de dados
   //

   // Linhas
   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      Coluna := TabelaArmazenar.FieldByName('CELULA_COL').AsInteger;
      Linha := TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger;

      if (Coluna > 0) and (Linha > 0) then
      begin
         StringGrade.Cells[Coluna, Linha] := TabelaArmazenar.FieldByName('QUANTIDADE').AsString;
      end;
      TabelaArmazenar.Next;
   end;


   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;

end;



procedure VendaGradeDevolucao_QuantidadeSalvar(nVenda: Integer; stReferencia: String;StringGrade: TStringGrid);
begin

   COD_SEQ := 0;

   stReferencia := Trim(stReferencia);

   // -------------------------------------------------------------------
   // Criar Tabelas Temporárias
   // -------------------------------------------------------------------
   TabelaGrades := TFDQuery.Create(Application);
   TabelaArmazenar := TFDQuery.Create(Application);

   TabelaGrades.Connection := FrmPrincipal.DBConexao;
   TabelaArmazenar.Connection := FrmPrincipal.DBConexao;

   // tabela de grades
   TabelaArmazenar.sql.clear;
   TabelaArmazenar.sql.add (' SELECT * FROM   VENDAS_DEVOLUCAO_ITENS_GRADES ');
   TabelaArmazenar.sql.add (' WHERE                                ');
   TabelaArmazenar.sql.add (' CODIGO=:CODIGO                       ');
   TabelaArmazenar.sql.add (' AND                                  ');
   TabelaArmazenar.sql.add (' REFERENCIA=:REFERENCIA               ');

   TabelaArmazenar.ParamByName('CODIGO').AsInteger := nVenda;
   TabelaArmazenar.ParamByName('REFERENCIA').AsString := stReferencia;
   TabelaArmazenar.Open;

   Linha := 0;
   Coluna := 0;

   TabelaArmazenar.first;
   while not TabelaArmazenar.eof do
   begin
      TabelaArmazenar.Delete;
   end;

   // passar linhas por linha. E em cada linhas que passar deverá checar
   // cada coluna e "salvar" no banco de dados
   //

   // Linhas

   for Linha := 1 to StringGrade.RowCount - 1 do
   begin

      Inc(COD_SEQ);
      TabelaArmazenar.Append;
      TabelaArmazenar.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
      TabelaArmazenar.FieldByName('CODIGO').AsInteger := nVenda;
      TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
      TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
      TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
      TabelaArmazenar.FieldByName('CELULA').AsString := 'COR: ' +
        StringGrade.Cells[0, Linha];
      TabelaArmazenar.FieldByName('COR').AsString := StringGrade.Cells
        [0, Linha];
      TabelaArmazenar.FieldByName('COR_ID').AsInteger :=
        COR_ID(stReferencia, StringGrade.Cells[0, Linha]);
      TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=
        TAMANHO_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
      TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=
        GRADE_ORDEM(stReferencia, StringGrade.Cells[Coluna, 0]);
      // TabelaArmazenar.FieldByName('GRADE_ID').AsInteger        :=GRADE_ID(Referencia, StringGrade.Cells[coluna, 0] );

      TabelaArmazenar.FieldByName('REFERENCIA').AsString := stReferencia;
      TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(stReferencia,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );

      TabelaArmazenar.Post;

      // Colunas
      for Coluna := 1 to StringGrade.ColCount - 1 do
      begin
         Inc(COD_SEQ);
         TabelaArmazenar.Append;
         TabelaArmazenar.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
         TabelaArmazenar.FieldByName('CODIGO').AsInteger := nVenda;
         TabelaArmazenar.FieldByName('SEQUENCIA').AsInteger := COD_SEQ;
         TabelaArmazenar.FieldByName('CELULA_COL').AsInteger := Coluna;
         TabelaArmazenar.FieldByName('COLUNA_ROW').AsInteger := Linha;
         TabelaArmazenar.FieldByName('CELULA').AsString := 'TAMANHO: ' +
           StringGrade.Cells[Coluna, 0] + ' / COR: ' + StringGrade.Cells
           [0, Linha];
         TabelaArmazenar.FieldByName('COR_ID').AsInteger :=
           COR_ID(stReferencia, StringGrade.Cells[0, Linha]);
         TabelaArmazenar.FieldByName('COR').AsString :=                 StringGrade.Cells[0, Linha];
         TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger :=         TAMANHO_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('TAMANHO').AsString :=             StringGrade.Cells[Coluna, 0];
         TabelaArmazenar.FieldByName('ORDEM_GRADE').AsString :=
           GRADE_ORDEM(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('GRADE_ID').AsInteger :=     GRADE_ID(stReferencia, StringGrade.Cells[Coluna, 0]);
         TabelaArmazenar.FieldByName('REFERENCIA').AsString := stReferencia;
         TabelaArmazenar.FieldByName('IDENTIFICADOR').AsString := fncMontarIdentificador(stReferencia,
                                                                            TabelaArmazenar.FieldByName('COR_ID').AsInteger,
                                                                            TabelaArmazenar.FieldByName('TAMANHO_ID').AsInteger
                                                                            );
         if (Coluna > 0) and (Linha > 0) then
         begin
            try
               StrToInt(StringGrade.Cells[Coluna, Linha])
            except
               StringGrade.Cells[Coluna, Linha] := '0';
            end;

            //TabelaArmazenar.FieldByName('VALOR_UNIT').AsFloat :=  PedidoReferenciaValor(REFERENCIA, nPedido);
            TabelaArmazenar.FieldByName('QUANTIDADE').AsInteger :=  StrToInt(StringGrade.Cells[Coluna, Linha]);

         end;

         TabelaArmazenar.Post;
      end;
      Coluna := 0;

   end;

   // -------------------------------------------------------------------
   // Destruir Tabelas Temporárias
   // -------------------------------------------------------------------

   TabelaArmazenar.Free;
   TabelaGrades.Free;

end;

end.


