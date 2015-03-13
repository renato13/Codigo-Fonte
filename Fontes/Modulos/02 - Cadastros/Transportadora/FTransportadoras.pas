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

unit FTransportadoras;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, Menus, StdCtrls, DBCtrls, Mask, DB, DBTables,
        FFrameBarra, shellapi,
   FFrameBotoes,   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmTransportadoras = class(TForm)
      GroupBox1: TGroupBox;
      GroupBox2: TGroupBox;
      DBMemo1: TDBMemo;
      GroupBox3: TGroupBox;
      EditUFVeic: TDBEdit;
      Label4: TLabel;
      DBEdit1: TDBEdit;
      Label6: TLabel;
      EditCOMISSAO: TDBEdit;
      Label20: TLabel;
      DS_Transportadora: TDataSource;
      db_Transportadora:  TFDQuery;
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
    TransportadoraProcurar: TIDBEditDialog;
    Label5: TLabel;
    Label7: TLabel;
    EdRazaoSocial: TDBEdit;
    EdFantasia: TDBEdit;
    GroupBox4: TGroupBox;
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
    Label68: TLabel;
    Label69: TLabel;
    Label33: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label43: TLabel;
    DBEdit47: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit60: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label70: TLabel;
    Label3: TLabel;
    EditData: TDBEdit;
    EdRGInscrEst: TDBEdit;
    EditCNPJCPF2: TDBEdit;
    EditAtividade: TIDBEditDialog;
    EditNomeAtividade: TEdit;
    DBEdit9: TDBEdit;
    DBEdit59: TDBEdit;
    Label40: TLabel;
    db_TransportadoraCODIGO: TIntegerField;
    db_TransportadoraFOTO: TBlobField;
    db_TransportadoraTIPO: TStringField;
    db_TransportadoraCLASSIFICACAO: TStringField;
    db_TransportadoraDATA: TSQLTimeStampField;
    db_TransportadoraDATA_NASCIMENTO: TSQLTimeStampField;
    db_TransportadoraDATA_ULTIMA_VENDA: TSQLTimeStampField;
    db_TransportadoraCPF_CNPJ: TStringField;
    db_TransportadoraNOME: TStringField;
    db_TransportadoraNOME_FANTASIA: TStringField;
    db_TransportadoraCONTATO: TStringField;
    db_TransportadoraRG_IE: TStringField;
    db_TransportadoraORG_EMISSOR: TStringField;
    db_TransportadoraSEXO: TStringField;
    db_TransportadoraFILIACAO_NOMEPAI: TStringField;
    db_TransportadoraFILIACAO_NOMEMAE: TStringField;
    db_TransportadoraESTADO_CIVIL: TStringField;
    db_TransportadoraCONJUGE_CPF: TStringField;
    db_TransportadoraCONJUGE_NOME: TStringField;
    db_TransportadoraCXP: TStringField;
    db_TransportadoraCEP: TStringField;
    db_TransportadoraENDERECO: TStringField;
    db_TransportadoraNUMERO: TStringField;
    db_TransportadoraCOMPLEMENTO: TStringField;
    db_TransportadoraBAIRRO: TStringField;
    db_TransportadoraCODIGOCIDADE: TIntegerField;
    db_TransportadoraNOMECIDADE: TStringField;
    db_TransportadoraCODIGOUF: TIntegerField;
    db_TransportadoraUF: TStringField;
    db_TransportadoraDDD_FONE: TIntegerField;
    db_TransportadoraFONE: TStringField;
    db_TransportadoraDDD_FAX: TIntegerField;
    db_TransportadoraFAX: TStringField;
    db_TransportadoraDDD_CELULAR: TIntegerField;
    db_TransportadoraCELULAR: TStringField;
    db_TransportadoraDDD_VOIP: TIntegerField;
    db_TransportadoraVOIP: TStringField;
    db_TransportadoraEMAIL: TStringField;
    db_TransportadoraSITE: TStringField;
    db_TransportadoraREFERENCIA: TStringField;
    db_TransportadoraVENDEDOR: TIntegerField;
    db_TransportadoraREGIAO: TIntegerField;
    db_TransportadoraTRANSPORTADORA: TIntegerField;
    db_TransportadoraESTRANGEIRO: TStringField;
    db_TransportadoraNATURALIDADE: TStringField;
    db_TransportadoraCREDITO_LIMITE: TBCDField;
    db_TransportadoraCREDITO_UTILIZADO: TBCDField;
    db_TransportadoraCREDITO_DISPONIVEL: TBCDField;
    db_TransportadoraBLOQUEADO: TStringField;
    db_TransportadoraPLANO_CONTAS: TStringField;
    db_TransportadoraCFOP: TIntegerField;
    db_TransportadoraCENTROCUSTO: TIntegerField;
    db_TransportadoraENDCOB_ENDERECO: TStringField;
    db_TransportadoraENDCOB_BAIRRO: TStringField;
    db_TransportadoraENDCOB_DDD: TIntegerField;
    db_TransportadoraENDCOB_FONE: TStringField;
    db_TransportadoraENDCOB_CEP: TStringField;
    db_TransportadoraENDCOB_CXP: TStringField;
    db_TransportadoraENDCOB_CODIGOCIDADE: TIntegerField;
    db_TransportadoraENDCOB_NOMECIDADE: TStringField;
    db_TransportadoraENDCOB_UF: TStringField;
    db_TransportadoraPROTESTO: TStringField;
    db_TransportadoraPROTESTO_DATA: TSQLTimeStampField;
    db_TransportadoraETIQUETA: TStringField;
    db_TransportadoraNACIONALIDADE: TStringField;
    db_TransportadoraATIVO: TStringField;
    db_TransportadoraCONVENIO: TIntegerField;
    db_TransportadoraATIVIDADE: TIntegerField;
    db_TransportadoraOBSERVACAO: TStringField;
    db_TransportadoraOBS_SERASA: TStringField;
    db_TransportadoraOBS_SINTEGRA: TStringField;
    db_TransportadoraCONJUGE_DNASCIMENTO: TStringField;
    db_TransportadoraCONJUGE_EMPRESA: TStringField;
    db_TransportadoraCONJUGE_FONE: TStringField;
    db_TransportadoraCONJUGE_ENDERECO: TStringField;
    db_TransportadoraCONJUGE_CIDADE: TStringField;
    db_TransportadoraCONJUGE_UF: TStringField;
    db_TransportadoraCONJUGE_CARGO: TStringField;
    db_TransportadoraCONJUGE_TEMPO: TStringField;
    db_TransportadoraCONJUGE_SALARIO: TBCDField;
    db_TransportadoraEMPREGO_EMPRESA: TStringField;
    db_TransportadoraEMPREGO_FONE: TStringField;
    db_TransportadoraEMPREGO_ENDERECO: TStringField;
    db_TransportadoraEMPREGO_CIDADE: TStringField;
    db_TransportadoraEMPREGO_UF: TStringField;
    db_TransportadoraEMPREGO_CARGO: TStringField;
    db_TransportadoraEMPREGO_TEMPO: TStringField;
    db_TransportadoraEMPREGO_SALARIO: TBCDField;
    db_TransportadoraCOMISSAO: TBCDField;
    db_TransportadoraCOMISSIONAR: TStringField;
    db_TransportadoraSALARIO: TBCDField;
    db_TransportadoraTRANSPORTADORA_PLACA: TStringField;
    db_TransportadoraTRANSPORTADORA_CIDADE: TStringField;
    db_TransportadoraTRANSPORTADORA_UF: TStringField;
    db_TransportadoraVALOR_SERVICOS: TBCDField;
    db_TransportadoraPAGTOTERCEIRIZADO: TStringField;
    Image1: TImage;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure Sair1Click(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure db_TransportadoraCNPJChange(Sender: TField);
    procedure db_TransportadoraNewRecord(DataSet: TDataSet);
    procedure db_TransportadoraAfterPost(DataSet: TDataSet);
    procedure EditCodCidade2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_TransportadoraBeforePost(DataSet: TDataSet);

   private
      { Private declarations }

   public
      { Public declarations }
   end;

var
   FrmTransportadoras: TFrmTransportadoras;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios;

{$R *.DFM}

procedure TFrmTransportadoras.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_Transportadora;
   db_Transportadora.Open;

end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditData.SetFocus;

end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if TransportadoraProcurar.Execute then
   Begin
      db_Transportadora.Close;
      db_Transportadora.ParamByName('CODIGO').AsInteger := TransportadoraProcurar.ResultFieldAsInteger('CODIGO');;
      db_Transportadora.Open;
   End;
end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmTransportadoras.db_TransportadoraAfterPost(DataSet: TDataSet);
begin
   db_Transportadora.ParamByname('CODIGO').AsInteger := db_Transportadora.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmTransportadoras.db_TransportadoraBeforePost(DataSet: TDataSet);
begin

   if  Length(SoNumero(db_Transportadora.FieldByName('CPF_CNPJ').AsString))<=11 then
      db_Transportadora.FieldByName('CLASSIFICACAO').AsString := 'F';

   if  Length(SoNumero(db_Transportadora.FieldByName('CPF_CNPJ').AsString))>=14 then
      db_Transportadora.FieldByName('CLASSIFICACAO').AsString := 'J';

end;

procedure TFrmTransportadoras.db_TransportadoraCNPJChange(Sender: TField);
begin
//   db_Transportadora.FieldByName('CNPJ').AsString :=Formata_CNPJ_CPF(db_Transportadora.FieldByName('CNPJ').AsString);
end;

procedure TFrmTransportadoras.db_TransportadoraNewRecord(DataSet: TDataSet);
begin
   db_Transportadora.FieldByName('DATA').AsDateTime        := Date;
   db_Transportadora.FieldByName('CLASSIFICACAO').AsString :='J';
   db_Transportadora.FieldByName('TIPO').AsString          :='TRANSPORTADORA';
   db_Transportadora.FieldByName('BLOQUEADO').AsString     := 'N';

end;

procedure TFrmTransportadoras.EditCodCidade2KeyDown(Sender: TObject;
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

procedure TFrmTransportadoras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_Transportadora.Close;
   Action :=Cafree;

end;

procedure TFrmTransportadoras.Sair1Click(Sender: TObject);
begin
   Close;
end;

end.
