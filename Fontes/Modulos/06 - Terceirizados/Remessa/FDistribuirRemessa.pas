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


unit FDistribuirRemessa;

interface

uses
   Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Grids, ExtCtrls, Mask, Buttons, DBGrids, DBCtrls, Db, DBTables,
   SysUtils,   FFrameBotoes_II, FFrameBarra, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, Menus, frxClass,
  frxDBSet, Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type

   TFrmDistribuirRemessa = class(TForm)
      BoxProdutos: TGroupBox;
      FrmFrameBarra1: TFrmFrameBarra;
    dbGrid_Produtos: TDBGrid;
    BoxCalculo: TGroupBox;
    Label21: TLabel;
    Label17: TLabel;
    eprod: TDBEdit;
    enota: TDBEdit;
    LocalizaDistribuicao: TIDBEditDialog;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    ds_DistribuirTerceirizados: TDataSource;
    db_DistribuirTerceirizados:  TFDQuery;
    frx_DistribuirTerceirizados: TfrxDBDataset;
    frx_DistribuirReferencias: TfrxDBDataset;
    db_DistribuirGrade: TFDQuery;
    ds_DistribuirReferencias: TDataSource;
    FrxDistribuir: TfrxReport;
    BoxFornecedor: TGroupBox;
    db_DistribuirReferencias: TFDQuery;
    dbgridprincipal: TDBGrid;
    db_DistribuirTerceirizadosEMPRESA: TIntegerField;
    db_DistribuirTerceirizadosCODIGO: TIntegerField;
    db_DistribuirTerceirizadosORDEMPRODUCAO: TIntegerField;
    db_DistribuirTerceirizadosDATA: TSQLTimeStampField;
    db_DistribuirTerceirizadosDATARETORNO: TSQLTimeStampField;
    db_DistribuirTerceirizadosTERCEIRIZADO: TIntegerField;
    db_DistribuirTerceirizadosTERCEIRIZADO_NOME: TStringField;
    db_DistribuirTerceirizadosFASE: TIntegerField;
    db_DistribuirTerceirizadosFASE_NOME: TStringField;
    db_DistribuirTerceirizadosCNPJ: TStringField;
    db_DistribuirTerceirizadosIE: TStringField;
    db_DistribuirTerceirizadosENDERECO: TStringField;
    db_DistribuirTerceirizadosBAIRRO: TStringField;
    db_DistribuirTerceirizadosCEP: TStringField;
    db_DistribuirTerceirizadosNOMECIDADE: TStringField;
    db_DistribuirTerceirizadosUF: TStringField;
    db_DistribuirTerceirizadosDDD: TIntegerField;
    db_DistribuirTerceirizadosFONE: TStringField;
    db_DistribuirTerceirizadosFAX: TStringField;
    db_DistribuirTerceirizadosCONTATO: TStringField;
    db_DistribuirTerceirizadosEMAIL: TStringField;
    db_DistribuirTerceirizadosQTDE_ENVIADA: TIntegerField;
    db_DistribuirTerceirizadosQTDE_RETORNADA: TIntegerField;
    db_DistribuirTerceirizadosQTDE_RESTANTE: TIntegerField;
    db_DistribuirTerceirizadosQTDE_PERDAS: TIntegerField;
    db_DistribuirTerceirizadosQTDE_DEFEITOS: TIntegerField;
    db_DistribuirTerceirizadosVLR_UNITARIO: TBCDField;
    db_DistribuirTerceirizadosVLR_TOTAL: TBCDField;
    db_DistribuirTerceirizadosOBSERVACAO: TStringField;
    db_DistribuirTerceirizadosENCERRADO: TStringField;
    db_DistribuirTerceirizadosGEROUPAGAMENTO: TStringField;
    db_DistribuirReferenciasEMPRESA: TIntegerField;
    db_DistribuirReferenciasCODIGO: TIntegerField;
    db_DistribuirReferenciasREFERENCIA: TStringField;
    db_DistribuirReferenciasDESCRICAO: TStringField;
    db_DistribuirReferenciasCOR: TStringField;
    db_DistribuirReferenciasTAMANHO: TStringField;
    db_DistribuirReferenciasVALOR_UNIT: TBCDField;
    db_DistribuirReferenciasQUANTIDADE: TIntegerField;
    db_DistribuirReferenciasVLR_TOTAL: TBCDField;
    BtnSair: TBitBtn;
    db_DistribuirTerceirizadosNUMERO: TStringField;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_DistribuirReferenciasQUANTIDADEChange(Sender: TField);
    procedure db_DistribuirReferenciasVLR_UNITChange(Sender: TField);
    procedure dbGrid_ProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure db_DistribuirTerceirizadosBeforeOpen(DataSet: TDataSet);
    procedure BtnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

   private
      { Private declarations }
      Procedure CalcularItem;
      procedure CalculaDistribuicao;


   public
      { Public declarations }

   end;

var
   FrmDistribuirRemessa: TFrmDistribuirRemessa;

implementation

uses FPrincipal, Global, Biblioteca, SQLServer,  FBaseDados;


{$R *.DFM}

// calcula itens da nota fiscal
procedure TFrmDistribuirRemessa.FormCreate(Sender: TObject);
begin

   db_DistribuirTerceirizados.close;
   db_DistribuirGrade.close;
   db_DistribuirReferencias.close;

   db_DistribuirTerceirizados.open;
   db_DistribuirGrade.open;
   db_DistribuirReferencias.open;


End;

procedure TFrmDistribuirRemessa.FormShow(Sender: TObject);
begin
   dbgridprincipal.SetFocus;
end;

procedure TFrmDistribuirRemessa.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   db_DistribuirTerceirizados.close;
   db_DistribuirGrade.close;
   db_DistribuirReferencias.close;

   Action := Cafree;

end;


procedure TFrmDistribuirRemessa.db_DistribuirReferenciasVLR_UNITChange(
  Sender: TField);
begin
   CalcularItem;
end;

procedure TFrmDistribuirRemessa.db_DistribuirTerceirizadosBeforeOpen(
  DataSet: TDataSet);
begin
   db_DistribuirTerceirizados.ParamByName('EMPRESA').AsInteger :=FSistema.Empresa;
end;

procedure TFrmDistribuirRemessa.CalcularItem;
begin

end;


procedure TFrmDistribuirRemessa.BitBtn1Click(Sender: TObject);
begin

   if LocalizaDistribuicao.Execute then
   begin
      db_DistribuirTerceirizados.First;
      db_DistribuirTerceirizados.Locate('CODIGO',LocalizaDistribuicao.ResultFieldAsInteger('CODIGO'),[]);
   end;

end;

procedure TFrmDistribuirRemessa.BitBtn4Click(Sender: TObject);
begin

   {
   db_DistribuirTerceirizados.close;
   db_DistribuirGrade.close;

   db_DistribuirTerceirizados.ParamByName('CODIGO').AsInteger         := db_OrdemProducaoFases.FieldByName('FASETRANSFERENCIA').AsInteger       ;
   db_DistribuirTerceirizados.ParamByName('ORDEMPRODUCAO').AsInteger  := db_OrdemProducaoFases.FieldByName('CODIGO').AsInteger;
   db_DistribuirTerceirizados.ParamByName('TERCEIRIZADO').AsInteger   := db_OrdemProducaoFases.FieldByName('TERCEIRIZADO').AsInteger;


   db_DistribuirGrade.ParamByName('CODIGO').AsInteger         := db_OrdemProducaoFases.FieldByName('FASETRANSFERENCIA').AsInteger       ;
   db_DistribuirGrade.ParamByName('ORDEMPRODUCAO').AsInteger  := db_OrdemProducaoFases.FieldByName('CODIGO').AsInteger;
   //db_DistribuirGrade.ParamByName('TERCEIRIZADO').AsInteger   := db_OrdemProducaoFases.FieldByName('TERCEIRIZADO').AsInteger;

   db_DistribuirTerceirizados.Open;
   }

   db_DistribuirGrade.close;
   db_DistribuirGrade.Open;

   // EmailConfigurar('');

   FrxDistribuir.ShowReport;
   db_DistribuirGrade.close;

end;

procedure TFrmDistribuirRemessa.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmDistribuirRemessa.CalculaDistribuicao;
begin



end;

procedure TFrmDistribuirRemessa.dbGrid_ProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmDistribuirRemessa.db_DistribuirReferenciasQUANTIDADEChange(
  Sender: TField);
begin
   CalcularItem;
end;

End.
