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

unit FRepresentantes;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, Menus, StdCtrls, DBCtrls, Mask, DB, DBTables,
       ComCtrls, Grids, DBGrids,
   ISFEdit, ISFEditbtn, ISFdbEditbtn, uEstSearchDialogZeos, IDBEdit, 
   FFrameBotoes,   ShellAPI, FFrameBarra, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmRepresentantes = class(TForm)
      GroupBox1: TGroupBox;
      DS_Vendedor: TDataSource;
      db_Vendedor:  TFDQuery;
    FrmFrameBotoes1: TFrmFrameBotoes;
    FrmFrameBarra1: TFrmFrameBarra;
    dbEditPesquisar: TIDBEditDialog;
    db_VendedorCODIGO: TIntegerField;
    db_VendedorFOTO: TBlobField;
    db_VendedorTIPO: TStringField;
    db_VendedorCLASSIFICACAO: TStringField;
    db_VendedorDATA: TSQLTimeStampField;
    db_VendedorDATA_NASCIMENTO: TSQLTimeStampField;
    db_VendedorDATA_ULTIMA_VENDA: TSQLTimeStampField;
    db_VendedorCPF_CNPJ: TStringField;
    db_VendedorNOME: TStringField;
    db_VendedorNOME_FANTASIA: TStringField;
    db_VendedorCONTATO: TStringField;
    db_VendedorRG_IE: TStringField;
    db_VendedorORG_EMISSOR: TStringField;
    db_VendedorSEXO: TStringField;
    db_VendedorFILIACAO_NOMEPAI: TStringField;
    db_VendedorFILIACAO_NOMEMAE: TStringField;
    db_VendedorESTADO_CIVIL: TStringField;
    db_VendedorCONJUGE_CPF: TStringField;
    db_VendedorCONJUGE_NOME: TStringField;
    db_VendedorCXP: TStringField;
    db_VendedorCEP: TStringField;
    db_VendedorENDERECO: TStringField;
    db_VendedorNUMERO: TStringField;
    db_VendedorCOMPLEMENTO: TStringField;
    db_VendedorBAIRRO: TStringField;
    db_VendedorCODIGOCIDADE: TIntegerField;
    db_VendedorNOMECIDADE: TStringField;
    db_VendedorCODIGOUF: TIntegerField;
    db_VendedorUF: TStringField;
    db_VendedorDDD_FONE: TIntegerField;
    db_VendedorFONE: TStringField;
    db_VendedorDDD_FAX: TIntegerField;
    db_VendedorFAX: TStringField;
    db_VendedorDDD_CELULAR: TIntegerField;
    db_VendedorCELULAR: TStringField;
    db_VendedorDDD_VOIP: TIntegerField;
    db_VendedorVOIP: TStringField;
    db_VendedorEMAIL: TStringField;
    db_VendedorSITE: TStringField;
    db_VendedorREFERENCIA: TStringField;
    db_VendedorVENDEDOR: TIntegerField;
    db_VendedorREGIAO: TIntegerField;
    db_VendedorTRANSPORTADORA: TIntegerField;
    db_VendedorESTRANGEIRO: TStringField;
    db_VendedorNATURALIDADE: TStringField;
    db_VendedorCREDITO_LIMITE: TBCDField;
    db_VendedorCREDITO_UTILIZADO: TBCDField;
    db_VendedorCREDITO_DISPONIVEL: TBCDField;
    db_VendedorBLOQUEADO: TStringField;
    db_VendedorPLANO_CONTAS: TStringField;
    db_VendedorCFOP: TIntegerField;
    db_VendedorCENTROCUSTO: TIntegerField;
    db_VendedorENDCOB_ENDERECO: TStringField;
    db_VendedorENDCOB_BAIRRO: TStringField;
    db_VendedorENDCOB_DDD: TIntegerField;
    db_VendedorENDCOB_FONE: TStringField;
    db_VendedorENDCOB_CEP: TStringField;
    db_VendedorENDCOB_CXP: TStringField;
    db_VendedorENDCOB_CODIGOCIDADE: TIntegerField;
    db_VendedorENDCOB_NOMECIDADE: TStringField;
    db_VendedorENDCOB_UF: TStringField;
    db_VendedorPROTESTO: TStringField;
    db_VendedorPROTESTO_DATA: TSQLTimeStampField;
    db_VendedorETIQUETA: TStringField;
    db_VendedorNACIONALIDADE: TStringField;
    db_VendedorATIVO: TStringField;
    db_VendedorCONVENIO: TIntegerField;
    db_VendedorATIVIDADE: TIntegerField;
    db_VendedorOBSERVACAO: TStringField;
    db_VendedorOBS_SERASA: TStringField;
    db_VendedorOBS_SINTEGRA: TStringField;
    db_VendedorCONJUGE_DNASCIMENTO: TStringField;
    db_VendedorCONJUGE_EMPRESA: TStringField;
    db_VendedorCONJUGE_FONE: TStringField;
    db_VendedorCONJUGE_ENDERECO: TStringField;
    db_VendedorCONJUGE_CIDADE: TStringField;
    db_VendedorCONJUGE_UF: TStringField;
    db_VendedorCONJUGE_CARGO: TStringField;
    db_VendedorCONJUGE_TEMPO: TStringField;
    db_VendedorCONJUGE_SALARIO: TBCDField;
    db_VendedorEMPREGO_EMPRESA: TStringField;
    db_VendedorEMPREGO_FONE: TStringField;
    db_VendedorEMPREGO_ENDERECO: TStringField;
    db_VendedorEMPREGO_CIDADE: TStringField;
    db_VendedorEMPREGO_UF: TStringField;
    db_VendedorEMPREGO_CARGO: TStringField;
    db_VendedorEMPREGO_TEMPO: TStringField;
    db_VendedorEMPREGO_SALARIO: TBCDField;
    db_VendedorCOMISSAO: TBCDField;
    db_VendedorCOMISSIONAR: TStringField;
    db_VendedorSALARIO: TBCDField;
    db_VendedorTRANSPORTADORA_PLACA: TStringField;
    db_VendedorTRANSPORTADORA_CIDADE: TStringField;
    db_VendedorTRANSPORTADORA_UF: TStringField;
    db_VendedorVALOR_SERVICOS: TBCDField;
    db_VendedorPAGTOTERCEIRIZADO: TStringField;
    db_VendedorULTIMAVENDA_DATA: TSQLTimeStampField;
    db_VendedorULTIMAVENDA_ORIGEM: TStringField;
    db_VendedorATIVODATA: TSQLTimeStampField;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label70: TLabel;
    Label40: TLabel;
    Label33: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label43: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    EditData: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    EdRazaoSocial: TDBEdit;
    EdFantasia: TDBEdit;
    EdRGInscrEst: TDBEdit;
    EditCNPJCPF2: TDBEdit;
    DBEdit59: TDBEdit;
    EditcodRegiao2: TIDBEditDialog;
    EditRegiao2: TEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit60: TDBEdit;
    GroupBox3: TGroupBox;
    GRPEndereco2: TGroupBox;
    Label8: TLabel;
    EditEndereco2: TDBEdit;
    GRPBairroCidadeUF2: TGroupBox;
    Label28: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    Label35: TLabel;
    EditBairro2: TDBEdit;
    EditCidade2: TDBEdit;
    EditUF2: TDBEdit;
    EditCodCidade2: TDBEdit;
    GroupBox8: TGroupBox;
    Label29: TLabel;
    Label85: TLabel;
    Label31: TLabel;
    EditNumero: TDBEdit;
    EditCxPostal: TDBEdit;
    DBEdit8: TDBEdit;
    EditCEP: TIDBEditDialog;
    EditTransportadora: TIDBEditDialog;
    EditNomeTrasportadora: TEdit;
    EditAtividade: TIDBEditDialog;
    EditNomeAtividade: TEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    EditConta_Credito: TIDBEditDialog;
    EditContaCorrente: TEdit;
    db_VendedorCONTACORRENTE: TIntegerField;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure Sair1Click(Sender: TObject);
      procedure db_VendedorCEPChange(Sender: TField);
      procedure db_VendedorNewRecord(DataSet: TDataSet);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure db_VendedorCPF_CNPJChange(Sender: TField);
    procedure db_VendedorAfterPost(DataSet: TDataSet);
    procedure EditCodCidade2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_VendedorBeforePost(DataSet: TDataSet);

   private
      { Private declarations }

   public
      { Public declarations }
   end;

var
   FrmRepresentantes: TFrmRepresentantes;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios;

{$R *.DFM}

procedure TFrmRepresentantes.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_Vendedor;
   db_Vendedor.Open;

end;

procedure TFrmRepresentantes.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditData.SetFocus;

end;

procedure TFrmRepresentantes.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmRepresentantes.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmRepresentantes.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmRepresentantes.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   Begin
      db_Vendedor.Close;
      db_Vendedor.ParamByName('CODIGO').AsInteger := dbEditPesquisar.ResultFieldAsInteger('CODIGO');;
      db_Vendedor.Open;
   End;
end;

procedure TFrmRepresentantes.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmRepresentantes.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmRepresentantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_Vendedor.Close;

   db_Vendedor.Close;
   Action :=Cafree;
end;

procedure TFrmRepresentantes.Sair1Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmRepresentantes.db_VendedorAfterPost(DataSet: TDataSet);
begin
   db_Vendedor.ParamByname('CODIGO').AsInteger := db_Vendedor.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmRepresentantes.db_VendedorBeforePost(DataSet: TDataSet);
begin
   if  Length(SoNumero(db_Vendedor.FieldByName('CPF_CNPJ').AsString))<=11 then
      db_Vendedor.FieldByName('CLASSIFICACAO').AsString := 'F';

   if  Length(SoNumero(db_Vendedor.FieldByName('CPF_CNPJ').AsString))>=14 then
      db_Vendedor.FieldByName('CLASSIFICACAO').AsString := 'J';

end;

procedure TFrmRepresentantes.db_VendedorCEPChange(Sender: TField);
begin

     db_Vendedor.FieldByName('ENDERECO').AsString        :=CEPTipo(db_Vendedor.FieldByName('CEP').AsString)+' '+CEPEndereco(db_Vendedor.FieldByName('CEP').AsString);;

     db_Vendedor.FieldByName('BAIRRO').AsString          :=CEPBairro(db_Vendedor.FieldByName('CEP').AsString);

     db_Vendedor.FieldByName('NOMECIDADE').AsString      :=CEPCidade(db_Vendedor.FieldByName('CEP').AsString);

     db_Vendedor.FieldByName('CODIGOCIDADE').AsString    :=CEPCidadeIBGE(db_Vendedor.FieldByName('CEP').AsString);

     db_Vendedor.FieldByName('UF').AsString              :=CEPUF(db_Vendedor.FieldByName('CEP').AsString);

     db_Vendedor.FieldByName('CODIGOUF').AsString        :=CEPUFIBGE(db_Vendedor.FieldByName('CEP').AsString);

end;

procedure TFrmRepresentantes.db_VendedorCPF_CNPJChange(Sender: TField);
begin
//   db_Vendedor.FieldByName('CPF_CNPJ').AsString :=Formata_CNPJ_CPF(db_Vendedor.FieldByName('CPF_CNPJ').AsString);
end;

procedure TFrmRepresentantes.db_VendedorNewRecord(DataSet: TDataSet);
begin
   db_Vendedor.FieldByName('DATA').AsDateTime := Date;
   db_Vendedor.FieldByName('TIPO').AsString := 'VENDEDOR';
   db_Vendedor.FieldByName('COMISSIONAR').AsString := 'S';
end;

procedure TFrmRepresentantes.EditCodCidade2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=VK_HOME  then
   begin
     If pergunta('Acessar site do IBGE para Consulta de Município?')=false Then
        exit;
     strURL := 'http://www.ibge.gov.br/home/geociencias/areaterritorial/area.shtm';
     ShellExecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);
   end;
end;

end.
