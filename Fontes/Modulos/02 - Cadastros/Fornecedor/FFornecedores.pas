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

Unit FFornecedores;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Menus, Mask, DBCtrls, DB,   ShellApi,
       ComCtrls, Grids, DBGrids,
    ISFEdit, ISFEditbtn, ISFdbEditbtn,  IDBEdit,
   uEstSearchDialogZeos, FFrameBotoes, FFrameBarra,   FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmFornecedores = class(TForm)
      DS_Fornecedor: TDataSource;
      db_Fornecedor:  TFDQuery;
      db_FornecedorFOTO: TBlobField;
      db_FornecedorTIPO: TStringField;
      db_FornecedorCLASSIFICACAO: TStringField;
      db_FornecedorCPF_CNPJ: TStringField;
      db_FornecedorNOME: TStringField;
      db_FornecedorNOME_FANTASIA: TStringField;
      db_FornecedorCONTATO: TStringField;
      db_FornecedorRG_IE: TStringField;
      db_FornecedorORG_EMISSOR: TStringField;
      db_FornecedorSEXO: TStringField;
      db_FornecedorFILIACAO_NOMEPAI: TStringField;
      db_FornecedorFILIACAO_NOMEMAE: TStringField;
      db_FornecedorESTADO_CIVIL: TStringField;
      db_FornecedorCONJUGE_CPF: TStringField;
      db_FornecedorCONJUGE_NOME: TStringField;
      db_FornecedorCXP: TStringField;
      db_FornecedorENDERECO: TStringField;
      db_FornecedorNUMERO: TStringField;
      db_FornecedorCOMPLEMENTO: TStringField;
      db_FornecedorBAIRRO: TStringField;
      db_FornecedorCODIGOCIDADE: TIntegerField;
      db_FornecedorNOMECIDADE: TStringField;
      db_FornecedorUF: TStringField;
      db_FornecedorDDD_FONE: TIntegerField;
      db_FornecedorFONE: TStringField;
      db_FornecedorDDD_FAX: TIntegerField;
      db_FornecedorFAX: TStringField;
      db_FornecedorDDD_CELULAR: TIntegerField;
      db_FornecedorCELULAR: TStringField;
      db_FornecedorDDD_VOIP: TIntegerField;
      db_FornecedorVOIP: TStringField;
      db_FornecedorEMAIL: TStringField;
      db_FornecedorSITE: TStringField;
      db_FornecedorREFERENCIA: TStringField;
      db_FornecedorVENDEDOR: TIntegerField;
      db_FornecedorREGIAO: TIntegerField;
      db_FornecedorTRANSPORTADORA: TIntegerField;
      db_FornecedorESTRANGEIRO: TStringField;
      db_FornecedorNATURALIDADE: TStringField;
      db_FornecedorCREDITO_LIMITE: TBCDField;
      db_FornecedorCREDITO_UTILIZADO: TBCDField;
      db_FornecedorCREDITO_DISPONIVEL: TBCDField;
      db_FornecedorBLOQUEADO: TStringField;
      db_FornecedorPROTESTO: TStringField;
      db_FornecedorETIQUETA: TStringField;
      db_FornecedorNACIONALIDADE: TStringField;
      db_FornecedorATIVO: TStringField;
      db_FornecedorCONVENIO: TIntegerField;
      db_FornecedorATIVIDADE: TIntegerField;
      db_FornecedorOBSERVACAO: TStringField;
      db_FornecedorOBS_SERASA: TStringField;
      db_FornecedorOBS_SINTEGRA: TStringField;
      db_FornecedorCOMISSAO: TBCDField;
      db_FornecedorCOMISSIONAR: TStringField;
      db_FornecedorSALARIO: TBCDField;
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
      GroupBox1: TGroupBox;
      Label5: TLabel;
      Label1: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      Label26: TLabel;
      Label27: TLabel;
      Label28: TLabel;
      Label68: TLabel;
      Label69: TLabel;
      Spb_email2: TSpeedButton;
      Label2: TLabel;
      Label3: TLabel;
      Label8: TLabel;
      Label70: TLabel;
      Label40: TLabel;
      Label49: TLabel;
      SpeedButton1: TSpeedButton;
      Label4: TLabel;
      Label24: TLabel;
      Label22: TLabel;
      EditData: TDBEdit;
      DBEdit42: TDBEdit;
      DBEdit43: TDBEdit;
      DBEdit44: TDBEdit;
      EditUF: TDBEdit;
      DBEdit50: TDBEdit;
      DBEdit51: TDBEdit;
      EdRazaoSocial: TDBEdit;
      EdFantasia: TDBEdit;
      EdRGInscrEst: TDBEdit;
      EditCNPJCPF2: TDBEdit;
      GroupBox10: TGroupBox;
      DBMemo2: TDBMemo;
      EditNomeCidade2: TDBEdit;
      DBEdit59: TDBEdit;
      DBEdit1: TDBEdit;
      DBEdit2: TDBEdit;
      EditcodRegiao1: TIDBEditDialog;
      EditRegiao1: TEdit;
      DBEdit38: TDBEdit;
      DBEdit49: TDBEdit;
      DBEdit13: TDBEdit;
      DBEdit14: TDBEdit;
      db_FornecedorDATA: TSQLTimeStampField;
      db_FornecedorDATA_NASCIMENTO: TSQLTimeStampField;
      db_FornecedorPROTESTO_DATA: TSQLTimeStampField;
    DCodPlano: TIDBEditDialog;
    EditNomePlanoContas: TEdit;
    db_FornecedorPLANO_CONTAS: TStringField;
    LocalizaFornecedor: TIDBEditDialog;
    db_FornecedorCODIGOUF: TIntegerField;
    db_FornecedorCEP: TStringField;
    db_FornecedorCODIGO: TIntegerField;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DbEditCFOP: TIDBEditDialog;
    Edit1: TEdit;
    EstSearchDialogZeos1: TIDBEditDialog;
    Edit2: TEdit;
    db_FornecedorCFOP: TIntegerField;
    db_FornecedorCENTROCUSTO: TIntegerField;
    EditTransportadora: TIDBEditDialog;
    EditNomeTrasportadora: TEdit;
    db_FornecedorVALOR_SERVICOS: TBCDField;
    DBRadioGroup1: TDBRadioGroup;
    Label10: TLabel;
    EditCodCidade1: TDBEdit;
    GroupBox16: TGroupBox;
    Label37: TLabel;
    rgpAtivo: TDBRadioGroup;
    DBEdit17: TDBEdit;
    db_FornecedorATIVODATA: TSQLTimeStampField;
    db_FornecedorULTIMAVENDA_DATA: TSQLTimeStampField;
    db_FornecedorULTIMAVENDA_ORIGEM: TStringField;
      procedure FormCreate(Sender: TObject);
      procedure Btn_SairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnNovoClick(Sender: TObject);
      procedure EditUFExit(Sender: TObject);
      procedure SpeedButton1Click(Sender: TObject);
      procedure Spb_email2Click(Sender: TObject);
      procedure DBGrid_PrincipalDblClick(Sender: TObject);
      procedure db_FornecedorNewRecord(DataSet: TDataSet);
      procedure db_FornecedorCEPChange(Sender: TField);
      procedure db_FornecedorDeleteError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure db_FornecedorEditError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure db_FornecedorPostError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure db_FornecedorCPF_CNPJChange(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditCodCidade1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_FornecedorBeforePost(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmFornecedores: TFrmFornecedores;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios;

{$R *.DFM}

procedure TFrmFornecedores.FormCreate(Sender: TObject);
begin

   FrmFrameBotoes1.DataSource := DS_Fornecedor;
   db_Fornecedor.open;
end;

procedure TFrmFornecedores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F5 then
   begin

      If (db_Fornecedor.state in [dsBrowse]) then
          db_Fornecedor.Refresh;
   end;


end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditData.SetFocus;

end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if LocalizaFornecedor.Execute then
   begin
      db_Fornecedor.close;
      db_Fornecedor.ParamByName('CODIGO').AsInteger :=LocalizaFornecedor.ResultFieldAsInteger('CODIGO');
      db_Fornecedor.open;
   end;

end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   if db_Fornecedor.FieldByName('PLANO_CONTAS').AsString='' then
   begin
      aviso('Informe um Plano de Contas para este fornecedor');
      DCodPlano.Setfocus;
      exit;
   end;

   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmFornecedores.Btn_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_Fornecedor.close;
   Action := cafree;
end;

procedure TFrmFornecedores.db_FornecedorBeforePost(DataSet: TDataSet);
begin

   if  Length(SoNumero(db_Fornecedor.FieldByName('CPF_CNPJ').AsString))<=11 then
      db_Fornecedor.FieldByName('CLASSIFICACAO').AsString := 'F';

   if  Length(SoNumero(db_Fornecedor.FieldByName('CPF_CNPJ').AsString))>=14 then
      db_Fornecedor.FieldByName('CLASSIFICACAO').AsString := 'J';

end;

procedure TFrmFornecedores.db_FornecedorCEPChange(Sender: TField);
begin
     db_Fornecedor.FieldByName('ENDERECO').AsString        :=CEPTipo(db_Fornecedor.FieldByName('CEP').AsString)+' '+CEPEndereco(db_Fornecedor.FieldByName('CEP').AsString);;

     db_Fornecedor.FieldByName('BAIRRO').AsString          :=CEPBairro(db_Fornecedor.FieldByName('CEP').AsString);

     db_Fornecedor.FieldByName('NOMECIDADE').AsString      :=CEPCidade(db_Fornecedor.FieldByName('CEP').AsString);

     db_Fornecedor.FieldByName('CODIGOCIDADE').AsString    :=CEPCidadeIBGE(db_Fornecedor.FieldByName('CEP').AsString);

     db_Fornecedor.FieldByName('UF').AsString              :=CEPUF(db_Fornecedor.FieldByName('CEP').AsString);

     db_Fornecedor.FieldByName('CODIGOUF').AsString        :=CEPUFIBGE(db_Fornecedor.FieldByName('CEP').AsString);
end;

procedure TFrmFornecedores.db_FornecedorCPF_CNPJChange(Sender: TField);
begin
//   db_Fornecedor.FieldByName('CPF_CNPJ').AsString :=Formata_CNPJ_CPF(db_Fornecedor.FieldByName('CPF_CNPJ').AsString);
end;

procedure TFrmFornecedores.db_FornecedorDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmFornecedores.db_FornecedorEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmFornecedores.db_FornecedorNewRecord(DataSet: TDataSet);
begin
   db_Fornecedor.FieldByName('DATA').AsDateTime := Date;
   db_Fornecedor.FieldByName('TIPO').AsString := 'FORNECEDOR';

end;

procedure TFrmFornecedores.db_FornecedorPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmFornecedores.BtnCancelarClick(Sender: TObject);
begin

   // Cancelar edição CIDADE
   db_Fornecedor.Cancel;

end;

procedure TFrmFornecedores.BtnSalvarClick(Sender: TObject);
begin

   // SALVAR REGISTRO
   If (db_Fornecedor.state in [dsEdit, dsInsert]) then
   Begin
      // Gerar novo codigo para o CIDADE
      db_Fornecedor.Post;
   End;

end;

procedure TFrmFornecedores.BtnNovoClick(Sender: TObject);
begin
   // Gerar novo codigo para o CIDADE

   db_Fornecedor.Append;
   db_Fornecedor.FieldByName('DATA').AsDateTime := Date;

   EditData.SetFocus;

end;

Procedure TFrmFornecedores.EditUFExit(Sender: TObject);
begin

   If UF_Brasil(db_Fornecedor.FieldByName('UF').AsString) = false then
   Begin
      Aviso('Estado não exite');
      EditUF.SetFocus;
   End;

end;

procedure TFrmFornecedores.SpeedButton1Click(Sender: TObject);
begin

   strURL := db_Fornecedor.FieldByName('SITE').AsString;
   If not empty(strURL) Then
   Begin
      shellexecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);
   End
   Else
      Erro('o campo Site está vazio...' + chr(13) + 'Verifique.');

end;

procedure TFrmFornecedores.Spb_email2Click(Sender: TObject);
begin
   eMail := db_Fornecedor.FieldByName('EMAIL').AsString;
   If not empty(eMail) Then
   Begin
      shellexecute(GetDesktopWindow, 'open', pchar(eMail), nil, nil,
        sw_ShowNormal);
   End
   Else
      Erro('campo E-mail está vazio...' + chr(13) + 'Verifique.');

end;

procedure TFrmFornecedores.EditCodCidade1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_HOME  then
   begin

     If pergunta('Acessar site do IBGE para Consulta de Município?')=false Then
        exit;

     strURL := 'http://www.ibge.gov.br/home/geociencias/areaterritorial/area.shtm';
     ShellExecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);

   end;

end;

procedure TFrmFornecedores.DBGrid_PrincipalDblClick(Sender: TObject);
begin
   If db_Fornecedor.IsEmpty then
   Begin
      Informar('Não há dados para editar');
      abort;
   end;

end;

end.
