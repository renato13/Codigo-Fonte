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

unit FRelComprasFornecedor;

interface

uses
   SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
   Forms, Dialogs, DBTables, DB, Qrctrls,
   quickrpt, ExtCtrls,     QRPDFFilt,
   QRExport,   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmRelComprasFornecedor = class(TForm)
      QuickRep: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Cabecalho: TQRBand;
      QRLabel2: TQRLabel;
      QRLabel9: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel10: TQRLabel;
      QRLabel12: TQRLabel;
      QRLabel14: TQRLabel;
      Datalhes: TQRBand;
      QRDBText2: TQRDBText;
      QRDBText3: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRDBText9: TQRDBText;
      QRDBText11: TQRDBText;
      QuebraProduto: TQRGroup;
      QRLabel15: TQRLabel;
      QRDBText12: TQRDBText;
      QRDBText13: TQRDBText;
      TotalProduto: TQRBand;
      QRExpr1: TQRExpr;
      QRExpr2: TQRExpr;
      QRExpr3: TQRExpr;
      QRExpr4: TQRExpr;
      QRExpr5: TQRExpr;
      QRShape5: TQRShape;
      SummaryBand1: TQRBand;
      QRExpr6: TQRExpr;
      QRExpr7: TQRExpr;
      QRExpr8: TQRExpr;
      QRExpr9: TQRExpr;
      QRExpr10: TQRExpr;
      QRLabel16: TQRLabel;
      DS_ComprasItens: TDataSource;
      Ado_ComprasItens: TFDQuery;
      QRDBText5: TQRDBText;
      QRLabel6: TQRLabel;
      QRLabel11: TQRLabel;
      QRLabel13: TQRLabel;
      QRLabel17: TQRLabel;
      ADO_PRODUTOS: TFDQuery;
      QRExpr11: TQRExpr;
      QRExpr12: TQRExpr;
      QRLabel7: TQRLabel;
      QRLabel18: TQRLabel;
      QRDBText1: TQRDBText;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelComprasFornecedor: TFrmRelComprasFornecedor;

implementation

uses Global, FRelCompras, Biblioteca;

{$R *.DFM}

procedure TFrmRelComprasFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Ado_ComprasItens.Close;
   ADO_PRODUTOS.Close;

   Action := caFree;
end;

procedure TFrmRelComprasFornecedor.FormCreate(Sender: TObject);
begin

   Cod_Grupo := FrmRelCompras.EditGrupo.Text;

   CodIni := FrmRelCompras.ModeloIni.Text;
   CodFim := FrmRelCompras.ModeloFim.Text;

   dtDataIni := StrToDate(FrmRelCompras.MskDataIni.Text);
   dtDataFim := StrToDate(FrmRelCompras.MskDataFim.Text);

   sqlMaster := '';
   sqlMaster := sqlMaster +
     ' SELECT A.*, B.CODIGO, B.NOME FROM COMPRAS_ITENS A, CAD_CLIENTES B  ';
   sqlMaster := sqlMaster + ' WHERE  ';
   sqlMaster := sqlMaster + ' B.CODIGO=A.FORNECEDOR ';
   sqlMaster := sqlMaster + ' AND  ';
   sqlMaster := sqlMaster + ' B.TIPO=''FORNECEDOR'' ';
   sqlMaster := sqlMaster + ' AND  ';
   sqlMaster := sqlMaster + ' (DT_NOTAF>=:data1 AND DT_NOTAF<=:data2) ';

   if not FrmRelCompras.chkFornecedor.Checked then
   Begin
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' A.FORNECEDOR=:nfornecedor ';
   End;

   if not FrmRelCompras.chkgrupos.Checked then
   Begin
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' A.GRUPO=:grupo01 ';
   End;

   If (empty(CodIni) = false) or (empty(CodFim) = false) then
   Begin
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster +
        ' (A.COD_PRODUTO>=:produto1 AND  A.COD_PRODUTO<=:produto2) ';
   end;

   // sqlMaster  :=sqlMaster + ' ORDER BY A.DT_NOTAF, B.NOME, A.COD_PRODUTO ';

   Ado_ComprasItens.Close;
   Ado_ComprasItens.SQL.clear;
   Ado_ComprasItens.SQL.Add(sqlMaster);

   Ado_ComprasItens.ParamByName('data1').AsDateTime := dtDataIni;
   Ado_ComprasItens.ParamByName('data2').AsDateTime := dtDataFim;

   if not FrmRelCompras.chkFornecedor.Checked then
      Ado_ComprasItens.ParamByName('nfornecedor').Value := strFornecedor;

   if not FrmRelCompras.chkgrupos.Checked then
      Ado_ComprasItens.ParamByName('grupo01').Value := Cod_Grupo;

   If (empty(CodIni) = false) or (empty(CodFim) = false) then
   Begin
      Ado_ComprasItens.ParamByName('produto1').Value := CodIni;
      Ado_ComprasItens.ParamByName('produto2').Value := CodFim;
   end;

   Ado_ComprasItens.Open;
   ADO_PRODUTOS.Open;

   QuickRep.Preview;
   Close;

end;

end.
