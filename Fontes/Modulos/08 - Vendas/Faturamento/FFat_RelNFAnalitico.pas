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

unit FFat_RelNFAnalitico;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, quickrpt, Qrctrls, Db, DBTables, QRPrntr, QRExport, QRPREV,
       QRPDFFilt,  
    Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmFat_RelNFAnalitico = class(TForm)
      db_Vendas:  TFDQuery;
      QuickRep1: TQuickRep;
      Cabecalho: TQRBand;
      QRBand2: TQRBand;
      Vlr_Credito: TQRDBText;
      Vlr_SaldoAnterior: TQRDBText;
      QRDBText2: TQRDBText;
      QRDBText3: TQRDBText;
      QuebraReport: TQRGroup;
      TotalNotaFiscal: TQRBand;
      QRBand4: TQRBand;
      QRDBText7: TQRDBText;
      QRDBText8: TQRDBText;
      QRDBText9: TQRDBText;
      QRDBText13: TQRDBText;
      QRDBText11: TQRDBText;
      QRExpr1: TQRExpr;
      QRExpr2: TQRExpr;
      QRExpr4: TQRExpr;
      QRExpr5: TQRExpr;
      QRExpr6: TQRExpr;
      QRLabel14: TQRLabel;
      QRExpr3: TQRExpr;
      QRExpr7: TQRExpr;
      QRExpr8: TQRExpr;
      QRExpr9: TQRExpr;
      QRDBText4: TQRDBText;
      QRLabel15: TQRLabel;
      Vlr_Debito: TQRDBText;
      QRLabel2: TQRLabel;
      QRDBText6: TQRDBText;
      QRLabel16: TQRLabel;
      QRDBText10: TQRDBText;
      QRDBText12: TQRDBText;
      QRLabel17: TQRLabel;
      QRLabel18: TQRLabel;
      QRDBText14: TQRDBText;
      QRLabel19: TQRLabel;
      QRDBText15: TQRDBText;
      QRLabel20: TQRLabel;
      QRDBText16: TQRDBText;
      QRDBText17: TQRDBText;
      QRLabel21: TQRLabel;
      QRLabel22: TQRLabel;
      QRDBText18: TQRDBText;
      QRLabel23: TQRLabel;
      QRDBText19: TQRDBText;
      QRLabel24: TQRLabel;
      QRDBText20: TQRDBText;
      QRLabel6: TQRLabel;
      QRLabel13: TQRLabel;
      QRLabel12: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel3: TQRLabel;
      QRLabel1: TQRLabel;
      QRLabel11: TQRLabel;
      LblSldAnterior: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel4: TQRLabel;
      QRLabel25: TQRLabel;
      QRDBText1: TQRDBText;
      QRDBText5: TQRDBText;
      QRLabel26: TQRLabel;
      QRLabel27: TQRLabel;
      QRDBText21: TQRDBText;
      Band_Cabecalho: TQRBand;
      LblTitulo: TQRLabel;
      QRLabel28: TQRLabel;
      QRLabel29: TQRLabel;
      QRLabel30: TQRLabel;
      QRSysData2: TQRSysData;
      QRSysData1: TQRSysData;
      QRSysData5: TQRSysData;
      LblPeriodo: TQRLabel;
      QRShape1: TQRShape;
      LblVendedor: TQRLabel;
      LblCliente: TQRLabel;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DB_VendasBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
      somag, somaP: real;
   public
      { Public declarations }
   end;

var
   FrmFat_RelNFAnalitico: TFrmFat_RelNFAnalitico;

implementation

uses Biblioteca, Global, FPrincipal, FRelFaturamento;

{$R *.DFM}

procedure TFrmFat_RelNFAnalitico.FormCreate(Sender: TObject);
begin

   case FrmRelFaturamento.RadioNF.ItemIndex of
      0:
         LblTitulo.Caption := LblTitulo.Caption + #13 + #10 +
           '(TODAS AS NOTAS FISCAIS)   ';
      1:
         LblTitulo.Caption := LblTitulo.Caption + #13 + #10 + '(NF SAÍDAS)   ';
      2:
         LblTitulo.Caption := LblTitulo.Caption + #13 + #10 + '(NF ENTRADAS) ';
      3:
         LblTitulo.Caption := LblTitulo.Caption + #13 + #10 +
           '(NF CANCELADAS) ';

      4:
         LblTitulo.Caption := LblTitulo.Caption + #13 + #10 +
           '(SOMENTE CUPOM FISCAL)   ';
   end;

   dtDataIni := StrToDate(FrmRelFaturamento.MskDataIni.Text);
   dtDataFim := StrToDate(FrmRelFaturamento.MskDataFim.Text);
   LblPeriodo.Caption := 'PERÍODO: ' + DateToStr(dtDataIni) + ' - ' +
     DateToStr(dtDataFim);

   if empty(CodIni) then
      CodIni := '0';

   while Length(CodFim) < 30 do
      CodFim := CodFim + 'Z';

   // montar script da tabela Mestre
   sqlMaster := '';
   sqlMaster := sqlMaster + ' SELECT * FROM  VIEW_FATPRODUTOS_CLIENTES ';
   sqlMaster := sqlMaster + '  WHERE  ';
   sqlMaster := sqlMaster + '  EMPRESA=:EMPRESA  ';
   sqlMaster := sqlMaster + '  AND  ';
   sqlMaster := sqlMaster + ' EMISSAO>=:DATA1 AND EMISSAO<=:DATA2 ';
   sqlMaster := sqlMaster + ' AND ';
   sqlMaster := sqlMaster + ' PRODUTO>=:PRODUTO1 and PRODUTO<=:PRODUTO2 ';
   sqlMaster := sqlMaster + ' AND ';
   sqlMaster := sqlMaster + Tipo_NF;

   if not FrmRelFaturamento.chkCliente.Checked then
   Begin
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' CLIENTE=:CLIENTE ';
   End;

   if not FrmRelFaturamento.chkRepres.Checked then
   Begin
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' VENDEDOR=:VENDEDOR ';
   End;

   case FrmRelFaturamento.RadioNF.ItemIndex of
      4:
      Begin
         sqlMaster := sqlMaster + ' AND ';
         sqlMaster := sqlMaster + ' CUPOM='+QuotedStr('S');
      End;

   end;

   sqlMaster := sqlMaster + ' ORDER BY ' + strOrdemDados;

   db_Vendas.Close;
   db_Vendas.SQL.clear;
   db_Vendas.SQL.Add(sqlMaster);
   db_Vendas.ParamByName('DATA1').AsDateTime := dtDataIni;
   db_Vendas.ParamByName('DATA2').AsDateTime := dtDataFim;
   db_Vendas.ParamByName('PRODUTO1').AsString := CodIni; // INTERBASE
   db_Vendas.ParamByName('PRODUTO2').AsString := CodFim; // INTERBASE

   if not FrmRelFaturamento.chkCliente.Checked then
   Begin

      db_Vendas.ParamByName('CLIENTE').AsInteger :=
        StrToInt(FrmRelFaturamento.EditCliente.Text);

      LblCliente.Caption := 'CLIENTE: ' +
        FrmRelFaturamento.EditClienteNome.Text;

   End;

   if not FrmRelFaturamento.chkRepres.Checked then
   Begin

      db_Vendas.ParamByName('VENDEDOR').AsInteger :=
        StrToInt(FrmRelFaturamento.EditVendedor.Text);

      LblVendedor.Caption := 'VENDEDOR: ' +
        FrmRelFaturamento.EditNomeVendedor.Text;

   End;

   db_Vendas.Open;
   QuickRep1.Preview;

   Close;

end;

procedure TFrmFat_RelNFAnalitico.DB_VendasBeforeOpen(DataSet: TDataSet);
begin
   DB_Vendas.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmFat_RelNFAnalitico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_Vendas.Close;

   Action := caFree;

end;

end.
