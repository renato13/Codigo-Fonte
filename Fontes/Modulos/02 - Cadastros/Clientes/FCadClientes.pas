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

unit FCadClientes;

interface

uses
   Windows, Messages, ComCtrls, System.SysUtils, Classes, Graphics, Controls, Forms,
   ImgList, DB,
   DBCtrls, Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, Mask, SHELLAPI,
         Buttons, ExtDlgs,
   Menus,  FFrameBarra, ISFEdit, ISFEditbtn,
   ISFdbEditbtn,  uEstSearchDialogZeos,
   FFrameBotoes, IDBEdit, Spin,   frxClass, frxDBSet,
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmClientes = class(TForm)
      PgClientes: TPageControl;
      Tab_PFisica: TTabSheet;
      Tab_PJuridica: TTabSheet;
      Tab_Referencias: TTabSheet;
      Label16: TLabel;
      Pg_CadastroF: TPageControl;
      Tab_FBasicos: TTabSheet;
      Tab_FImportantes: TTabSheet;
      Label8: TLabel;
      Label10: TLabel;
      Label11: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      EditDataf: TDBEdit;
      RgSexo: TDBRadioGroup;
      DBEdit2: TDBEdit;
      EditCNPJCPF1: TDBEdit;
      DBEdit3: TDBEdit;
      DBEdit5: TDBEdit;
      DBEdit16: TDBEdit;
      Label25: TLabel;
      Label30: TLabel;
      DBEdit18: TDBEdit;
      Label34: TLabel;
      DBEdit_cxpostal: TDBEdit;
      Pg_CadastroJ: TPageControl;
      Tab_JBasico: TTabSheet;
      Label1: TLabel;
      Label68: TLabel;
      Label69: TLabel;
      EditDataj: TDBEdit;
      DBEdit47: TDBEdit;
      DBEdit50: TDBEdit;
      DBEdit51: TDBEdit;
      EditCodevendedor2: TIDBEditDialog;
      Tab_JImportantes: TTabSheet;
      GroupBox7: TGroupBox;
      Label2: TLabel;
      EdRazaoSocial: TDBEdit;
      Label3: TLabel;
      EdFantasia: TDBEdit;
      Label5: TLabel;
      Label70: TLabel;
      EdRGInscrEst: TDBEdit;
      EditCNPJCPF2: TDBEdit;
      GroupBox11: TGroupBox;
    GridBancos: TDBGrid;
      GroupBox12: TGroupBox;
    GridComerciais: TDBGrid;
      Spb_email1: TSpeedButton;
      Label40: TLabel;
      DBEdit59: TDBEdit;
      EditcodRegiao2: TIDBEditDialog;
      EditcodRegiao1: TIDBEditDialog;
      GroupBox5: TGroupBox;
      Label45: TLabel;
      Label46: TLabel;
      Label47: TLabel;
      Label48: TLabel;
      Label49: TLabel;
      Label50: TLabel;
      DBEdit1: TDBEdit;
      DBEdit4: TDBEdit;
      DBEdit7: TDBEdit;
      DBEdit32: TDBEdit;
      DBEdit33: TDBEdit;
      DBEdit34: TDBEdit;
      DBEdit35: TDBEdit;
      DBEdit36: TDBEdit;
      Label54: TLabel;
      GroupBox13: TGroupBox;
    GridSocios: TDBGrid;
      RDGCredito: TDBRadioGroup;
      DBEdit39: TDBEdit;
      Label57: TLabel;
      EditVendedor1: TEdit;
      EditRegiao2: TEdit;
      Label61: TLabel;
      DBEdit66: TDBEdit;
      DBEdit67: TDBEdit;
      Label62: TLabel;
      GroupBox9: TGroupBox;
      Panel3: TPanel;
      BitBtn1: TBitBtn;
      BitBtn2: TBitBtn;
      DBImage1: TDBImage;
      OpenPictureDialog1: TOpenPictureDialog;
    rgpSerasa: TDBRadioGroup;
    rgpBloqueio: TDBRadioGroup;
      DBEdit24: TDBEdit;
      Label33: TLabel;
      DBEdit25: TDBEdit;
      Label38: TLabel;
      DBEdit45: TDBEdit;
      DBEdit48: TDBEdit;
      Label39: TLabel;
      DBEdit54: TDBEdit;
      DBEdit57: TDBEdit;
      Label43: TLabel;
      DBEdit60: TDBEdit;
      Label13: TLabel;
      DBEdit27: TDBEdit;
      DBEdit28: TDBEdit;
      Label53: TLabel;
      DBEdit29: TDBEdit;
      Label55: TLabel;
      FrmFrameBarra1: TFrmFrameBarra;
      Label22: TLabel;
      Label23: TLabel;
      Label24: TLabel;
      Label32: TLabel;
      DBEdit13: TDBEdit;
      DBEdit14: TDBEdit;
      DBEdit15: TDBEdit;
      DBEdit31: TDBEdit;
      DBEdit38: TDBEdit;
      DBEdit49: TDBEdit;
      DBEdit61: TDBEdit;
      DBEdit62: TDBEdit;
      EditRegiao1: TEdit;
      EditCodevendedor: TIDBEditDialog;
      EditVendedor2: TEdit;
      GroupBox1: TGroupBox;
      GRPEndereco2: TGroupBox;
      GRPBairroCidadeUF2: TGroupBox;
      Label28: TLabel;
      Label27: TLabel;
      EditEndereco2: TDBEdit;
      Label6: TLabel;
      EditBairro2: TDBEdit;
      Label26: TLabel;
      GroupBox8: TGroupBox;
      EditNumero: TDBEdit;
      Label29: TLabel;
      EditCxPostal: TDBEdit;
      Label85: TLabel;
      DBEdit8: TDBEdit;
      Label31: TLabel;
      Label17: TLabel;
      DBEdit6: TDBEdit;
      GroupBox2: TGroupBox;
      GRPEndereco1: TGroupBox;
      Label18: TLabel;
      EditEndereco1: TDBEdit;
      GRPBairroCidadeUF1: TGroupBox;
      Label19: TLabel;
      Label20: TLabel;
      Label21: TLabel;
      EditUF1: TDBEdit;
      EditCidade1: TDBEdit;
      EditBairro1: TDBEdit;
      GroupBox14: TGroupBox;
      Label51: TLabel;
      Label56: TLabel;
      DBEdit30: TDBEdit;
      DBEdit52: TDBEdit;
      EditCEP0: TDBEdit;
      Label52: TLabel;
      FrmFrameBotoes1: TFrmFrameBotoes;
      DBRadioGroup3: TDBRadioGroup;
      EditCidade2: TDBEdit;
      EditUF2: TDBEdit;
      BtnComplemento: TButton;
      Label9: TLabel;
      EditCodCidade1: TDBEdit;
      EditCodCidade2: TDBEdit;
      Label35: TLabel;
      GroupBox3: TGroupBox;
      DBMemo1: TDBMemo;
      DBRadioGroup1: TDBRadioGroup;
    EditTransportadora: TIDBEditDialog;
    EditNomeTrasportadora: TEdit;
    EditAtividade: TIDBEditDialog;
    EditNomeAtividade: TEdit;
    EditCEP: TIDBEditDialog;
    DBEdit9: TDBEdit;
    Label4: TLabel;
    Tab_Historico: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    db_Pedido: TFDQuery;
    ds_Pedido: TDataSource;
    db_PedidoEMPRESA: TIntegerField;
    db_PedidoCODIGO: TIntegerField;
    db_PedidoDATA: TSQLTimeStampField;
    db_PedidoDATA_FATURAMENTO: TSQLTimeStampField;
    db_PedidoDATA_ENTREGA: TSQLTimeStampField;
    db_PedidoVENDEDOR_NOME: TStringField;
    db_PedidoFORMA_PAGTO_NOME: TStringField;
    db_PedidoTIPOPAGAMENTO: TStringField;
    db_PedidoQTDE_TOTAL: TIntegerField;
    db_PedidoVLR_TOTAL: TBCDField;
    db_PedidoSTATUS: TStringField;
    GroupBox4: TGroupBox;
    GridPedidos: TDBGrid;
    Splitter1: TSplitter;
    GroupBox6: TGroupBox;
    GridFinanceiro: TDBGrid;
    db_ctareceber: TFDQuery;
    ds_ctareceber: TDataSource;
    db_ctareceberEMPRESA: TIntegerField;
    db_ctareceberCODIGO: TIntegerField;
    db_ctareceberDOCUMENTO: TStringField;
    db_ctareceberNOTAFISCAL: TIntegerField;
    db_ctareceberDATA: TSQLTimeStampField;
    db_ctareceberVENCIMENTO: TSQLTimeStampField;
    db_ctareceberDATA_PAGTO: TSQLTimeStampField;
    db_ctareceberFORMAPAGAMENTO: TStringField;
    db_ctareceberNOSSONUMERO: TStringField;
    db_ctareceberVALOR: TBCDField;
    db_ctareceberVALOR_PAGO: TBCDField;
    db_ctareceberVALOR_SALDO: TBCDField;
    db_ctareceberCLIENTE: TIntegerField;
    db_ctareceberNOME_CLIENTE: TStringField;
    db_ctareceberVENDEDOR: TIntegerField;
    db_ctareceberNOME_VENDEDOR: TStringField;
    db_ctareceberCIDADE_UF: TStringField;
    db_ctareceberPLN_CONTA: TStringField;
    db_ctareceberPLN_CONTA_NOME: TStringField;
    db_ctareceberQUITADO: TStringField;
    db_ctareceberATRASO_DIAS: TIntegerField;
    db_ctareceberBLOQUEADO: TStringField;
    db_ctareceberHISTORICO: TStringField;
    db_ctareceberCOMPLEMENTAR: TStringField;
    db_ctareceberGERARCOMPLEMENTO: TStringField;
    db_ctareceberCONTACAIXA: TIntegerField;
    db_ctareceberCONTACAIXANOME: TStringField;
    db_ctareceberCONTACAIXASALDOINICIAL: TBCDField;
    db_ctareceberCONTACORRENTE: TIntegerField;
    db_ctareceberDESCONTO: TBCDField;
    db_ctareceberDESCONTOVALOR: TBCDField;
    db_ctareceberDESPESAS_JUROS: TBCDField;
    db_ctareceberDESPESAS_JUROSVALOR: TBCDField;
    db_ctareceberDESPESAS_MULTA: TBCDField;
    db_ctareceberDESPESAS_CARTORIO: TBCDField;
    db_ctareceberDESPESAS_OUTRAS: TBCDField;
    db_ctareceberDESPESAS_TOTAL: TBCDField;
    LblVendas: TLabel;
    LblReceber: TLabel;
    LblPago: TLabel;
    LblSaldoReceber: TLabel;
    LblQuantidade: TLabel;
    db_PedidoSum: TFDQuery;
    db_ctareceberSum: TFDQuery;
    EditClienteLocalizarFisica: TIDBEditDialog;
    frdb_Pedido: TfrxDBDataset;
    frdb_ctareceber: TfrxDBDataset;
    frdb_Clientes: TfrxDBDataset;
    frxReportCliente: TfrxReport;
    db_ViewCliente: TFDQuery;
    GroupBox10: TGroupBox;
    DBEdit26: TDBEdit;
    Label12: TLabel;
    DBEdit19: TDBEdit;
    Label42: TLabel;
    DBEdit11: TDBEdit;
    Label41: TLabel;
    DBEdit41: TDBEdit;
    Label44: TLabel;
    GroupBox15: TGroupBox;
    DBEdit10: TDBEdit;
    Label7: TLabel;
    DBEdit12: TDBEdit;
    Label36: TLabel;
    GroupBox16: TGroupBox;
    rgpAtivo: TDBRadioGroup;
    DBEdit17: TDBEdit;
    Label37: TLabel;
    db_ctareceberESPECIE: TStringField;
    db_ctareceberDATA_PAGTODIAS: TIntegerField;
    db_ctareceberPRAZO_DIAS: TIntegerField;
    db_ctareceberVALOR_DIFERENCA: TBCDField;
    db_ctareceberDESCONTADO: TStringField;
    db_ctareceberPAGAMENTOTITULO: TStringField;
    PopupImprimir: TPopupMenu;
    ImprimirPedidocomvalores1: TMenuItem;
    ImprimirPedidosemvalores1: TMenuItem;
    frxClienteFicha: TfrxReport;
    EditClienteLocalizarJuridico: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);

      procedure Iniciar;
      procedure GridComerciaisKeyPress(Sender: TObject; var Key: Char);
      procedure GridBancosKeyPress(Sender: TObject; var Key: Char);
      procedure DBGrid12KeyPress(Sender: TObject; var Key: Char);
      procedure Spb_email1Click(Sender: TObject);
      procedure Spb_http1Click(Sender: TObject);
      procedure Tab_PFisicaShow(Sender: TObject);
      procedure Tab_PJuridicaShow(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure CodCidadeKeyPress(Sender: TObject; var Key: Char);
      procedure BitBtn2Click(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure BtnComplementoClick(Sender: TObject);
    procedure EditCodCidade2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodCidade1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tab_HistoricoShow(Sender: TObject);
    procedure Tab_HistoricoExit(Sender: TObject);
    procedure db_PedidoAfterOpen(DataSet: TDataSet);
    procedure db_ctareceberAfterOpen(DataSet: TDataSet);
    procedure GridFinanceiroDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure db_PedidoBeforeOpen(DataSet: TDataSet);
    procedure db_ctareceberBeforeOpen(DataSet: TDataSet);
    procedure db_ctareceberSumBeforeOpen(DataSet: TDataSet);
    procedure db_PedidoSumBeforeOpen(DataSet: TDataSet);
    procedure ImprimirPedidocomvalores1Click(Sender: TObject);
    procedure ImprimirPedidosemvalores1Click(Sender: TObject);

   private
      { Private declarations }
    procedure RefreshTabelas;


   public
      { Public declarations }

   end;

var
   FrmClientes: TFrmClientes;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global,
  FClientesComplementos, FBaseDados, Classe.Usuarios;

{$R *.dfm}

procedure TFrmClientes.BtnComplementoClick(Sender: TObject);
begin
   FrmClientesComplementos := TFrmClientesComplementos.Create(self);
   FrmClientesComplementos.ShowModal;
end;

procedure TFrmClientes.FormCreate(Sender: TObject);
begin

   FrmFrameBotoes1.DataSource := BaseDados.DS_Clientes;

   Pg_CadastroF.ActivePageIndex := 0;
   Pg_CadastroJ.ActivePageIndex := 0;

   // iniciar de acordo com a escolha do usuário
   Iniciar;

   { abrir tabelas complementares }

   BaseDados.db_Socios.Open;
   BaseDados.db_RefBanc.Open;
   BaseDados.db_RefCom.Open;

   Top := 10;

end;

procedure TFrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   FrmPrincipal.MnuCad_ClieJuridica.Enabled := True;
   FrmPrincipal.MnuCad_CliePFisica.Enabled := True;

   BaseDados.db_Clientes.Close;
   BaseDados.db_RefBanc.Close;
   BaseDados.db_RefCom.Close;
   BaseDados.db_Socios.Close;

   Action := cafree;

end;


procedure TFrmClientes.Iniciar;
begin

   // quando cadastro de clientes for acionado via BOTÃO
   If ViaMenu = False Then
      strCliente := BaseDados.db_Parametros.FieldByName('TIPO_CLIENTE').Asstring;

   FrmPrincipal.MnuCad_ClieJuridica.Enabled := False;
   FrmPrincipal.MnuCad_CliePFisica.Enabled := False;

   If (strCliente = 'J') then
   Begin

      // Definir clientes Pessoas Juridicas
      BaseDados.db_Clientes.SQL.clear;
      BaseDados.db_Clientes.SQL.add('SELECT *  FROM CAD_CLIENTES');
      BaseDados.db_Clientes.SQL.add('WHERE');
      BaseDados.db_Clientes.SQL.add('CODIGO=:CODIGO');
      BaseDados.db_Clientes.SQL.add('AND');
      BaseDados.db_Clientes.SQL.add('CLASSIFICACAO=''J''');
      BaseDados.db_Clientes.SQL.add('AND');
      BaseDados.db_Clientes.SQL.add('TIPO=''CLIENTE'' ');
      BaseDados.db_Clientes.SQL.add('ORDER BY NOME  ');

      FrmFrameBarra1.LblBarraTitulo.Caption :=
        'Cadastro de Clientes - Pessoa Juridica';
      PgClientes.Pages[0].Destroy; { }
      PgClientes.ActivePage := Tab_PJuridica; { }
      BaseDados.db_ClientesCPF_CNPJ.EditMask := '99.999.999/9999-99' { CNPJ };
      strTipoPessoa := 'J'; { salvar o tipo de cliente automaticamente }
   End;

   If (strCliente = 'F') then
   Begin

      // Definir clientes Pessoas Fisicas
      BaseDados.db_Clientes.SQL.clear;
      BaseDados.db_Clientes.SQL.add('SELECT *  FROM CAD_CLIENTES');
      BaseDados.db_Clientes.SQL.add('WHERE');
      BaseDados.db_Clientes.SQL.add('CODIGO=:CODIGO');
      BaseDados.db_Clientes.SQL.add('AND');
      BaseDados.db_Clientes.SQL.add('CLASSIFICACAO=''F''');
      BaseDados.db_Clientes.SQL.add('AND');
      BaseDados.db_Clientes.SQL.add('TIPO=''CLIENTE'' ');
      BaseDados.db_Clientes.SQL.add('ORDER BY NOME  ');

      FrmFrameBarra1.LblBarraTitulo.Caption :=
        'Cadastro de Clientes - Pessoa Fisica';
      PgClientes.Pages[1].Destroy;
      PgClientes.ActivePage := Tab_PFisica;
      BaseDados.db_ClientesCPF_CNPJ.EditMask := '999.999.999-99';
      strTipoPessoa := 'F';

   End;

   BaseDados.db_Clientes.ParamByName('CODIGO').DataType := ftInteger;
   BaseDados.db_Clientes.ParamByName('CODIGO').ParamType := ptInput;
   BaseDados.db_Clientes.Open; { abrir tabelas clientes }

End;

procedure TFrmClientes.GridComerciaisKeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmClientes.GridFinanceiroDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   {
   if Column.Field=db_ctareceberQUITADO then
   begin



      // Desenha o check sobre o quadrado quando ativo = ‘S’
      If (db_ctareceber.FieldByName('QUITADO').AsString = 'S') Then
      Begin
        GridFinanceiro.Canvas.Font.Color := clRed;
        GridFinanceiro.Canvas.TextOut(Rect.Left+2,Rect.Top,Field.AsString);
        GridFinanceiro.Canvas.FillRect(Rect);
      End;

   end;
   }

   If (Column.Field.FieldName ='QUITADO') and (db_ctareceber.FieldByName('QUITADO').AsString = 'NAO') Then
   Begin
     GridFinanceiro.Canvas.FillRect(Rect);
     GridFinanceiro.Canvas.Font.Color := clRed;
     //GridFinanceiro.Canvas.TextOut(Rect.Left+(Column.Width div 2)-10,Rect.Top, Column.Field.AsString);
     GridFinanceiro.Canvas.TextOut(Rect.Left+(Column.Width div 2)-10,Rect.Top, Column.Field.AsString);
   End;



end;

procedure TFrmClientes.GridBancosKeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmClientes.db_ctareceberAfterOpen(DataSet: TDataSet);
begin
  DimensionarGrid(GridFinanceiro,self);

end;

procedure TFrmClientes.db_ctareceberBeforeOpen(DataSet: TDataSet);
begin
   db_ctareceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmClientes.db_ctareceberSumBeforeOpen(DataSet: TDataSet);
begin
   db_ctareceberSum.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmClientes.db_PedidoAfterOpen(DataSet: TDataSet);
begin
  DimensionarGrid(GridPedidos,self);
end;

procedure TFrmClientes.db_PedidoBeforeOpen(DataSet: TDataSet);
begin
   db_Pedido.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmClientes.db_PedidoSumBeforeOpen(DataSet: TDataSet);
begin
   db_PedidoSum.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmClientes.DBGrid12KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmClientes.Spb_email1Click(Sender: TObject);
var
   eMail: String;
begin

   eMail := BaseDados.db_Clientes.FieldByName('EMAIL').Asstring;
   If not empty(eMail) Then
   Begin
      ShellExecute(GetDesktopWindow, 'open', pchar(eMail), nil, nil,
        sw_ShowNormal);

      // ShellExecute(Handle, 'open', pchar(eMail), '', '',SW_SHOW);
   End
   Else
      Erro('campo E-mail está vazio...' + chr(13) + 'Verifique.');

End;

procedure TFrmClientes.Spb_http1Click(Sender: TObject);
begin

   strURL := BaseDados.db_Clientes.FieldByName('SITE').Asstring;
   If not empty(strURL) Then
   Begin
      ShellExecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);
      // ShellExecute(Handle, 'open', pchar(eMail), '', '',SW_SHOW);
   End
   Else
      Erro('o campo Site está vazio...' + chr(13) + 'Verifique.');

end;

{ pessoa fisica }
procedure TFrmClientes.Tab_HistoricoExit(Sender: TObject);
begin
   db_Pedido.Close;
   db_ctareceber.Close;
   db_PedidoSum.Close;
   db_ctareceberSum.Close;

end;

procedure TFrmClientes.RefreshTabelas;
begin
   db_Pedido.Close;
   db_ctareceber.Close;
   db_PedidoSum.Close;
   db_ctareceberSum.Close;

   db_Pedido.Open;
   db_ctareceber.Open;
   db_PedidoSum.Open;
   db_ctareceberSum.Open;

   LblQuantidade.Caption    :=  'Quantidade Vendida: '+ FormatFloat( '###,##0',db_PedidoSum.FieldByName('QTDE_TOTAL').AsFloat);
   LblVendas.Caption        :=  'Total Vendas: '+FormatSettings.CurrencyString+' '+FormatFloat( '###,##0.00',db_PedidoSum.FieldByName('VLR_TOTAL').AsFloat);
   LblReceber.Caption       :=  'A Receber: '+FormatSettings.CurrencyString+' '+FormatFloat( '###,##0.00',db_ctareceberSum.FieldByName('TOTALRECEBER').AsFloat);
   LblPago.Caption          :=  'Recebidos: '+FormatSettings.CurrencyString+' '+FormatFloat( '###,##0.00',db_ctareceberSum.FieldByName('TOTALPAGO').AsFloat);
   LblSaldoReceber.Caption  :=  'Saldo a Receber: '+FormatSettings.CurrencyString+' '+FormatFloat( '###,##0.00',db_ctareceberSum.FieldByName('SALSOFINAL').AsFloat);


end;


procedure TFrmClientes.Tab_HistoricoShow(Sender: TObject);
begin
   RefreshTabelas;
end;


procedure TFrmClientes.Tab_PFisicaShow(Sender: TObject);
begin
   Pg_CadastroF.ActivePageIndex := 0;
   EditCNPJCPF1.SetFocus;
end;

procedure TFrmClientes.Tab_PJuridicaShow(Sender: TObject);
begin
   Pg_CadastroJ.ActivePageIndex := 0;
   EditCNPJCPF2.SetFocus;
end;

procedure TFrmClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F7 then
   begin
      If strTipoPessoa = 'F' Then
      Begin
         BtnComplementoClick(Sender);
      End;
   end;


   if Key = VK_F5 then
   begin

      If (BaseDados.db_Clientes.state in [dsBrowse]) then
          BaseDados.db_Clientes.Refresh;
   end;

   If Key = VK_ESCAPE then
   begin

      if PgClientes.ActivePageIndex <> 0 then
      begin
         FrmFrameBotoes1.SpbCancelarClick(Sender);
      end
      else
      begin
         FrmFrameBotoes1SpbSairClick(Sender);
      end;

   End;

end;

procedure TFrmClientes.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   PgClientes.ActivePageIndex := 0;

   If (strCliente = 'J') then
   Begin
      {
        FrmClientes.Height  :=588;
        FrmClientes.Width   :=742;
      }
      Pg_CadastroJ.ActivePageIndex := 0;

      EditDataj.SetFocus;

   End;

   If (strCliente = 'F') then
   Begin
      Pg_CadastroF.ActivePageIndex := 0;

      EditDataf.SetFocus;

   End;

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   // BaseDados.db_Clientes.Append;
   BaseDados.db_Clientes.ParamByName('CODIGO').AsInteger :=
     BaseDados.db_Clientes.FieldByName('CODIGO').AsInteger;

   If (strCliente = 'J') then
   Begin
      PgClientes.ActivePage := Tab_PJuridica; { }
   End;

   If (strCliente = 'F') then
   Begin
      PgClientes.ActivePage := Tab_PFisica;
   End;

end;

procedure TFrmClientes.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

   PgClientes.ActivePageIndex := 0;
   If (strCliente = 'J') then
   Begin
      Pg_CadastroJ.ActivePageIndex := 0;
   End;

   If (strCliente = 'F') then
   Begin
      Pg_CadastroF.ActivePageIndex := 0;
   End;

end;

procedure TFrmClientes.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmClientes.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin

   if BaseDados.db_Clientes.IsEmpty then
   Begin
      aviso('Não há dados para excluir.');
      Exit;
   End;

   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmClientes.ImprimirPedidocomvalores1Click(Sender: TObject);
begin
   FrmFrameBotoes1SpbImprimirClick(Sender);
end;

procedure TFrmClientes.ImprimirPedidosemvalores1Click(Sender: TObject);
begin

   If (strCliente = 'J') then
   Begin
      Pg_CadastroJ.ActivePageIndex := 0;
   End;

   If (strCliente = 'F') then
   Begin
      Pg_CadastroF.ActivePageIndex := 0;
   End;

    iAchar[0] := BaseDados.db_Clientes.FieldByName('CODIGO').AsInteger;

   If (strCliente = 'J') then
   Begin
      frxClienteFicha.ShowReport;
   End;

   If (strCliente = 'F') then
   Begin
      //frxReportFisica.
   End;

   db_ViewCliente.Close;

end;

procedure TFrmClientes.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   If (strCliente = 'J') then
   Begin
      Pg_CadastroJ.ActivePageIndex := 0;
   End;

   If (strCliente = 'F') then
   Begin
      Pg_CadastroF.ActivePageIndex := 0;
   End;

    iAchar[0] := BaseDados.db_Clientes.FieldByName('CODIGO').AsInteger;

   If (strCliente = 'J') then
   Begin
      frxReportCliente.ShowReport;
   End;

   If (strCliente = 'F') then
   Begin
      //frxReportFisica.
   End;

   db_ViewCliente.Close;

end;

procedure TFrmClientes.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   If (strCliente = 'J') then
   Begin
      if EditClienteLocalizarJuridico.Execute Then
      Begin
         BaseDados.db_Clientes.Close;
         BaseDados.db_Clientes.ParamByName('CODIGO').AsInteger := EditClienteLocalizarJuridico.ResultFieldAsInteger('CODIGO');;
         BaseDados.db_Clientes.Open;
         RefreshTabelas;
      End;
   End;

   If (strCliente = 'F') then
   Begin
      if EditClienteLocalizarFisica.Execute Then
      Begin
         BaseDados.db_Clientes.Close;
         BaseDados.db_Clientes.ParamByName('CODIGO').AsInteger := EditClienteLocalizarFisica.ResultFieldAsInteger('CODIGO');;
         BaseDados.db_Clientes.Open;
      End;
   End;

  RefreshTabelas;


end;

procedure TFrmClientes.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmClientes.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);


end;

procedure TFrmClientes.CodCidadeKeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;

end;

procedure TFrmClientes.EditCodCidade1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmClientes.EditCodCidade2KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmClientes.BitBtn1Click(Sender: TObject);
begin

   If empty(BaseDados.db_Clientes.FieldByName('CODIGO').Asstring) then
      Exit;

   If OpenPictureDialog1.Execute = False then
      Exit;

   If not(BaseDados.db_Clientes.state in [dsEdit, dsInsert]) then
   Begin
      FrmFrameBotoes1.SpbEditarClick(Sender);
   End;

   BaseDados.db_Clientes.FieldByName('FOTO').clear;
   DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmClientes.BitBtn2Click(Sender: TObject);
begin

   If empty(BaseDados.db_Clientes.FieldByName('CODIGO').Asstring) then
      Exit;

   If pergunta('Deseja limpar a foto do(a) cliente?') = False then
      Exit;

   If not(BaseDados.db_Clientes.state in [dsEdit, dsInsert]) then
   Begin
      FrmFrameBotoes1.SpbEditarClick(Sender);
   End;

   BaseDados.db_Clientes.FieldByName('FOTO').clear;
   DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

end.
