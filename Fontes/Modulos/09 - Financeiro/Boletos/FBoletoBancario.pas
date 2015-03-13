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

unit FBoletoBancario;

interface

uses
   Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, Grids, DBGrids,
   ShellApi, SqlExpr, FMTBcd, Mask, DBCtrls, ExtDlgs, Menus, ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,  
    ACBrBoleto, ACBrBase, FFrameBarra, Classe.Global, ACBrBoletoFCFR,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type

   TFrmBoletoBancario = class(TForm)
      Panel4: TPanel;
      ProgressBar1: TProgressBar;
    ds_ViewBoletos: TDataSource;
    db_ViewBoletos:  TFDQuery;
      BtnSair: TBitBtn;
      BtnImprimir: TBitBtn;
    BtnRemessa: TBitBtn;
      db_BoletoConfigurar: TFDQuery;
      ds_BoletoConfigurar: TDataSource;
      GroupBox2: TGroupBox;
    GridViewBoletos: TDBGrid;
      LblTotal: TLabel;
      db_CtaReceberBaixar: TFDQuery;
      db_ContaCorrenteBoleto: TFDQuery;
      BitBtn1: TBitBtn;
    ACBrBoleto1: TACBrBoleto;
    Panel1: TPanel;
    BoxLayoutArquivo: TRadioGroup;
    BoxVencimento: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dtInicial: TMaskEdit;
    dtFinal: TMaskEdit;
    db_ViewBoletosRemessas: TFDQuery;
    ACBrBoleto_FastReport: TACBrBoletoFCFR;
    db_ViewBoletosRemessasCODIGO: TIntegerField;
    db_ViewBoletosRemessasNOTAFISCAL: TIntegerField;
    db_ViewBoletosRemessasDOCUMENTO: TStringField;
    db_ViewBoletosRemessasNOSSONUMERO: TStringField;
    db_ViewBoletosRemessasDATA: TSQLTimeStampField;
    db_ViewBoletosRemessasVENCIMENTO: TSQLTimeStampField;
    db_ViewBoletosRemessasVALOR: TBCDField;
    db_ViewBoletosRemessasCLIENTE: TIntegerField;
    db_ViewBoletosRemessasNOME_CLIENTE: TStringField;
    db_ViewBoletosRemessasVENDEDOR: TIntegerField;
    db_ViewBoletosRemessasNOME_VENDEDOR: TStringField;
    db_ViewBoletosRemessasGERARBOLETO: TStringField;
    db_ViewBoletosRemessasGERARREMESSA: TStringField;
    db_ViewBoletosRemessasENDERECO: TStringField;
    db_ViewBoletosRemessasNUMERO: TStringField;
    db_ViewBoletosRemessasENDERECO_NUMERO: TStringField;
    db_ViewBoletosRemessasCEP: TStringField;
    db_ViewBoletosRemessasCPF_CNPJ: TStringField;
    db_ViewBoletosRemessasRG_IE: TStringField;
    db_ViewBoletosRemessasTIPO: TStringField;
    db_ViewBoletosRemessasNOME_CIDADE: TStringField;
    db_ViewBoletosRemessasUF: TStringField;
    db_ViewBoletosRemessasPLN_CONTA: TStringField;
    db_ViewBoletosRemessasPLN_CONTA_NOME: TStringField;
    db_ViewBoletosCODIGO: TIntegerField;
    db_ViewBoletosNOTAFISCAL: TIntegerField;
    db_ViewBoletosDOCUMENTO: TStringField;
    db_ViewBoletosNOSSONUMERO: TStringField;
    db_ViewBoletosDATA: TSQLTimeStampField;
    db_ViewBoletosVENCIMENTO: TSQLTimeStampField;
    db_ViewBoletosVALOR: TBCDField;
    db_ViewBoletosCLIENTE: TIntegerField;
    db_ViewBoletosNOME_CLIENTE: TStringField;
    db_ViewBoletosVENDEDOR: TIntegerField;
    db_ViewBoletosNOME_VENDEDOR: TStringField;
    db_ViewBoletosGERARBOLETO: TStringField;
    db_ViewBoletosGERARREMESSA: TStringField;
    db_ViewBoletosENDERECO: TStringField;
    db_ViewBoletosNUMERO: TStringField;
    db_ViewBoletosENDERECO_NUMERO: TStringField;
    db_ViewBoletosCEP: TStringField;
    db_ViewBoletosCPF_CNPJ: TStringField;
    db_ViewBoletosRG_IE: TStringField;
    db_ViewBoletosTIPO: TStringField;
    db_ViewBoletosNOME_CIDADE: TStringField;
    db_ViewBoletosUF: TStringField;
    db_ViewBoletosPLN_CONTA: TStringField;
    db_ViewBoletosPLN_CONTA_NOME: TStringField;
    FrmFrameBarra1: TFrmFrameBarra;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    ComboCedentes: TDBLookupComboBox;
    EditLocalPagamento: TLabeledEdit;
    chkCliente: TCheckBox;
    EditClienteNome: TEdit;
    EditCliente: TIDBEditDialog;

      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure dtInicialExit(Sender: TObject);
      procedure dtFinalExit(Sender: TObject);
      procedure GridViewBoletosEnter(Sender: TObject);
      procedure BtnImprimirClick(Sender: TObject);
      procedure BtnRemessaClick(Sender: TObject);
      procedure ComboCedentesEnter(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
      Function SetTipoCobranca(AValue: Integer) : TACBrTipoCobranca;
    procedure FormResize(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure db_ViewBoletosAfterOpen(DataSet: TDataSet);
    procedure chkClienteClick(Sender: TObject);
   private
      { Private declarations }
      xNossoNumero: String;

      Procedure PrepararScriptBoletos;
      Procedure MarcarImpressao(NCODIGO : Integer; SNossoNumero: String);
      Procedure MarcarRemessa(NCODIGO   : Integer; SNossoNumero: String);
      procedure PrepararBoletos;

   public
      { Public declarations }

      Titulo : TACBrTitulo;

   end;

var
   FrmBoletoBancario: TFrmBoletoBancario;

implementation

uses FPrincipal, Global, Biblioteca, FBaseDados, SQLServer;

{$R *.dfm}

procedure TFrmBoletoBancario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_ContaCorrenteBoleto.Close;
   db_BoletoConfigurar.Close;
   db_ViewBoletos.Close;


   FreeAndNil( FrmBoletoBancario );

end;

procedure TFrmBoletoBancario.BitBtn1Click(Sender: TObject);
begin
   shellexecute(0, nil, pchar(FSistema.PastaDrive +'Boletos\'), nil, nil, SW_SHOW);
end;

procedure TFrmBoletoBancario.BtnRemessaClick(Sender: TObject);
begin


     db_ViewBoletosRemessas.close;
     db_ViewBoletosRemessas.open;


     // CNAB240
     if BoxLayoutArquivo.ItemIndex=0 then
     begin
        ACBrBoleto1.LayoutRemessa := c240;
     end;

     // CNAB400 - É é o mais comum.
     if BoxLayoutArquivo.ItemIndex=1 then
     begin
        ACBrBoleto1.LayoutRemessa := c400;
     end;


     // ----------------------------------------------------
     // ----------------------------------------------------


     PrepararBoletos;
     PrepararScriptBoletos;

     ProgressBar1.Max       := db_ViewBoletosRemessas.RecordCount;
     ProgressBar1.Position  := 0;
     ProgressBar1.Visible   := True;
     ACBrBoleto1.DataArquivo := Date; //É a data que o arquivo está sendo gerado

     ACBrBoleto1.DataArquivo := Date; //É a data que o arquivo está sendo gerado

     db_ViewBoletosRemessas.first;
     While not db_ViewBoletosRemessas.eof do
     begin

       Titulo:= ACBrBoleto1.CriarTituloNaLista;


       Titulo.LocalPagamento    := Trim( UpperCase(EditLocalPagamento.Text) ) ;
       Titulo.Carteira          :=db_BoletoConfigurar.FieldByName('CARTEIRA').AsString;
       Titulo.EspecieDoc        :='02';   // 02=DM-duplicata mercantil

       Titulo.DataProcessamento := Now;
       Titulo.DataDocumento     :=db_ViewBoletosRemessas.FieldByName('DATA').AsDateTime;
       Titulo.Vencimento        :=db_ViewBoletosRemessas.FieldByName('VENCIMENTO').AsDateTime;

       // Titulo.DataMoraJuros     := StrToDateDef(edtDataMora.Text, 0);
       // Titulo.DataDesconto      := StrToDateDef(edtDataDesconto.Text, 0);
       // Titulo.DataAbatimento    := StrToDateDef(edtDataAbatimento.Text, 0);
       // Titulo.DataProtesto      := StrToDateDef(edtDataProtesto.Text, 0);

       Titulo.NumeroDocumento   :=db_ViewBoletosRemessas.FieldByName('DOCUMENTO').AsString;
       Titulo.ValorDocumento    :=db_ViewBoletosRemessas.FieldByName('VALOR').AsFloat;

       // Titulo.ValorAbatimento   := StrToCurrDef(edtValorAbatimento.Text,0);
       // Titulo.ValorMoraJuros    := StrToCurrDef(edtMoraJuros.Text,0);
       // Titulo.ValorDesconto     := StrToCurrDef(edtValorDesconto.Text,0);
       // Titulo.ValorAbatimento   := StrToCurrDef(edtValorAbatimento.Text,0);


       //dados da cobranca
       If  Empty( Trim( db_ViewBoletosRemessas.FieldByName('NOSSONUMERO').AsString ) )    or
       (db_ViewBoletosRemessas.FieldByName('NOSSONUMERO').AsString='0' )                  then
       begin
       // criar novo " nosso numero"
          xNossoNumero          :=IntToStr(StrToIntDef(Trim(xNossoNumero),0)+1);

         if ACBrBoleto1.Banco.TipoCobranca=cobBancoDoBrasil then
            Titulo.NossoNumero    :='' // banco do brasil ira gerar o nosso numero
         else
            Titulo.NossoNumero    :=xNossoNumero;
       end
       else
       begin
          xNossoNumero          :=db_ViewBoletosRemessas.FieldByName('NOSSONUMERO').AsString;
         if ACBrBoleto1.Banco.TipoCobranca=cobBancoDoBrasil then
            Titulo.NossoNumero    :='' // banco do brasil ira gerar o nosso numero
         else
            Titulo.NossoNumero    :=xNossoNumero;
       end;

       Titulo.Sacado.NomeSacado := db_ViewBoletosRemessas.FieldByName('NOME_CLIENTE').AsString;
       Titulo.Sacado.CNPJCPF    := SoNumero( db_ViewBoletosRemessas.FieldByName('CPF_CNPJ').AsString);
       Titulo.Sacado.Logradouro := db_ViewBoletosRemessas.FieldByName('ENDERECO').AsString;
       Titulo.Sacado.Numero     := db_ViewBoletosRemessas.FieldByName('NUMERO').AsString;
       //Titulo.Sacado.Bairro     := db_ViewBoletosRemessas.FieldByName('BAIRRO').AsString;
       Titulo.Sacado.CEP        := SoNumero( db_ViewBoletosRemessas.FieldByName('CEP').AsString );
       Titulo.Sacado.Cidade     := db_ViewBoletosRemessas.FieldByName('NOME_CIDADE').AsString;
       Titulo.Sacado.UF         := db_ViewBoletosRemessas.FieldByName('UF').AsString;

       // Adicionar na lista para gerar arquivo de REMESSA
       Titulo.Mensagem.Text     := db_BoletoConfigurar.FieldByName('INSTRUCOES').AsString;
       ACBrBoleto1.AdicionarMensagensPadroes(Titulo,Titulo.Mensagem);

       // informar que o boleto foi impresso
       MarcarRemessa(db_ViewBoletosRemessas.FieldByName('CODIGO').AsInteger,  Titulo.NossoNumero);

       ProgressBar1.Position := ProgressBar1.Position + 1;
       Application.ProcessMessages;

       db_ViewBoletosRemessas.next;

     end;

     ProgressBar1.Position := 0;
     db_ViewBoletosRemessas.Refresh;
     db_ViewBoletosRemessas.first;


     // ----------------------------------------------------
     // ----------------------------------------------------

     ACBrBoleto1.NomeArqRemessa      := FormatDateTime('yyyymmdd',Date)+'.rem';
     ACBrBoleto1.GerarRemessa( 1 );

     Informar('O arquivo '+ACBrBoleto1.NomeArqRemessa+' foi gerado com sucesso.');


end;

procedure TFrmBoletoBancario.FormCreate(Sender: TObject);
begin

   /// -------------------------------------------------------------
   /// Configurar boleto bancario
   /// -------------------------------------------------------------

   Titulo := ACBrBoleto1.CriarTituloNaLista;
   ACBrBoleto1.ListadeBoletos.Clear;
   Titulo.EspecieDoc  := '02';
   Titulo.Aceite      := atSim;
   Titulo.OcorrenciaOriginal.Tipo := toRemessaBaixar;

   dtInicial.text := DateToStr(date);
   dtFinal.text := DateToStr(date + 30);

   ACBrBoleto1.DirArqRemessa := FSistema.PastaPadrao+'Boletos\Remessa\';
   ACBrBoleto1.DirArqRetorno := FSistema.PastaPadrao+'Boletos\Retorno\';

   db_BoletoConfigurar.open;


end;

procedure TFrmBoletoBancario.FormKeyPress(Sender: TObject; var Key: Char);
begin

   if Key = #27 then
      Close;

end;

Function TFrmBoletoBancario.SetTipoCobranca(AValue: Integer) : TACBrTipoCobranca;
begin

  Result :=cobNenhum;

  if AValue <1 then
     exit;

  case AValue of
     001         : Result :=cobBancoDoBrasil;     {001}
     033,353,008 : Result :=cobSantander;         {033,353,008}
     041         : Result :=cobBanrisul;          {041}
     104         : Result :=cobCaixaEconomica;    {104}
     237         : Result :=cobBradesco;          {237}
     341         : Result :=cobItau;              {341}
     389         : Result :=cobBancoMercantil;    {389}
     748         : Result :=cobSicred;            {748}
     756         : Result :=cobBancoob;           {756}
  end;

end;

procedure TFrmBoletoBancario.PrepararBoletos;
begin
     if ComboCedentes.Text='' then
     begin
        BeepCritica;
        Informar('Selecione "Configuração do Boleto" ');
        Abort;
     end;

     db_BoletoConfigurar.Refresh;
     db_ContaCorrenteBoleto.Close;
     db_ContaCorrenteBoleto.ParamByName('CODIGO').AsInteger := db_BoletoConfigurar.FieldByName('CODIGO').AsInteger;
     db_ContaCorrenteBoleto.Open;

     xNossoNumero           :=Trim(db_BoletoConfigurar.FieldByName('NOSSONUMERO').AsString);

     /// -------------------------------------------------------------
     /// Configurar boleto bancario
     /// -------------------------------------------------------------

     Titulo := ACBrBoleto1.CriarTituloNaLista;
     ACBrBoleto1.ListadeBoletos.Clear;


     if db_BoletoConfigurar.FieldByName('TIPOINSCRICAO').AsString='J' then
     begin
        ACBrBoleto1.Cedente.TipoInscricao  := pJuridica;
     end;

     if db_BoletoConfigurar.FieldByName('TIPOINSCRICAO').AsString='F' then
     begin
        ACBrBoleto1.Cedente.TipoInscricao  := pFisica;
     end;

     //Dados do Cedente
     //ACBrBoleto1.Cedente.DigitoCodigoCedente              :=db_BoletoConfigurar.FieldByName('CEDENTE_DIGITO').AsString;

     ACBrBoleto1.Banco.TipoCobranca       :=SetTipoCobranca(db_BoletoConfigurar.FieldByName('BANCO').AsInteger);
     ACBrBoleto1.Cedente.Agencia          :=db_BoletoConfigurar.FieldByName('AGENCIA').AsString;
     ACBrBoleto1.Cedente.AgenciaDigito    :=db_BoletoConfigurar.FieldByName('AGENCIADIGITO').AsString;
     ACBrBoleto1.Cedente.Conta            :=db_BoletoConfigurar.FieldByName('CEDENTE').AsString;
     ACBrBoleto1.Cedente.ContaDigito      :=db_BoletoConfigurar.FieldByName('CEDENTE_DIGITO').AsString;
     ACBrBoleto1.Cedente.CodigoCedente    :=db_BoletoConfigurar.FieldByName('CEDENTE').AsString;
     ACBrBoleto1.Cedente.Modalidade       :='0';

     if ACBrBoleto1.Banco.TipoCobranca=cobBancoDoBrasil then
     begin
       //ACBrBoleto1.Cedente.Modalidade       :='1';
       ACBrBoleto1.Cedente.Modalidade       :='19';
     end;

     if ACBrBoleto1.Banco.TipoCobranca=cobSantander then
       ACBrBoleto1.Cedente.Modalidade       :='101';

     ACBrBoleto1.Cedente.Nome             :=db_BoletoConfigurar.FieldByName('CEDENTE_NOME').AsString;
     ACBrBoleto1.Cedente.CNPJCPF          :=SoNumero( FParametros.Empresa.CNPJ  );
     ACBrBoleto1.Cedente.Convenio         :=ZeroEsquerda( db_BoletoConfigurar.FieldByName('CONVENIO').AsString,9);

     ACBrBoleto1.Cedente.Logradouro       := BaseDados.db_Parametros.FieldByName('EMPRESA_ENDERECO').asString;
     ACBrBoleto1.Cedente.NumeroRes        := BaseDados.db_Parametros.FieldByName('EMPRESA_NUMERO').asString;
     ACBrBoleto1.Cedente.Bairro           := BaseDados.db_Parametros.FieldByName('EMPRESA_BAIRRO').asString;
     ACBrBoleto1.Cedente.Complemento      := BaseDados.db_Parametros.FieldByName('EMPRESA_COMPLEMENTO').asString;
     ACBrBoleto1.Cedente.CEP              := BaseDados.db_Parametros.FieldByName('EMPRESA_CEP').asString;
     ACBrBoleto1.Cedente.Cidade           := BaseDados.db_Parametros.FieldByName('EMPRESA_CIDADE').asString;
     ACBrBoleto1.Cedente.UF               := BaseDados.db_Parametros.FieldByName('EMPRESA_UF').asString;



     //ACBrBoleto1.Banco..Convenio         :=ZeroEsquerda( db_BoletoConfigurar.FieldByName('CONVENIO').AsString,3);



end;

procedure TFrmBoletoBancario.BtnImprimirClick(Sender: TObject);
begin


     PrepararBoletos;
     PrepararScriptBoletos;


     ProgressBar1.Max       := db_ViewBoletos.RecordCount;
     ProgressBar1.Position  := 0;
     ProgressBar1.Visible   := True;

     db_ViewBoletos.first;
     While not db_ViewBoletos.eof do
     begin

       Titulo:= ACBrBoleto1.CriarTituloNaLista;

       Titulo.DataProcessamento := Now;
       Titulo.DataDocumento     :=db_ViewBoletos.FieldByName('DATA').AsDateTime;
       Titulo.Vencimento        :=db_ViewBoletos.FieldByName('VENCIMENTO').AsDateTime;

       // Titulo.DataMoraJuros     := StrToDateDef(edtDataMora.Text, 0);
       // Titulo.DataDesconto      := StrToDateDef(edtDataDesconto.Text, 0);
       // Titulo.DataAbatimento    := StrToDateDef(edtDataAbatimento.Text, 0);
       // Titulo.DataProtesto      := StrToDateDef(edtDataProtesto.Text, 0);

       Titulo.NumeroDocumento   :=db_ViewBoletos.FieldByName('DOCUMENTO').AsString;
       Titulo.ValorDocumento    :=db_ViewBoletos.FieldByName('VALOR').AsFloat;

       // Titulo.ValorAbatimento   := StrToCurrDef(edtValorAbatimento.Text,0);
       // Titulo.ValorMoraJuros    := StrToCurrDef(edtMoraJuros.Text,0);
       // Titulo.ValorDesconto     := StrToCurrDef(edtValorDesconto.Text,0);
       // Titulo.ValorAbatimento   := StrToCurrDef(edtValorAbatimento.Text,0);


       //dados da cobranca
       If  Empty( Trim( db_ViewBoletos.FieldByName('NOSSONUMERO').AsString ) )    or
       (db_ViewBoletos.FieldByName('NOSSONUMERO').AsString='0' )                  then
       begin
       // criar novo " nosso numero"
          xNossoNumero          :=IntToStr(StrToIntDef(Trim(xNossoNumero),0)+1);
          Titulo.NossoNumero    :=xNossoNumero;
       end
       else
       begin
          xNossoNumero          :=db_ViewBoletos.FieldByName('NOSSONUMERO').AsString;
          Titulo.NossoNumero    :=xNossoNumero;
       end;

       Titulo.Sacado.NomeSacado := db_ViewBoletos.FieldByName('NOME_CLIENTE').AsString;
       Titulo.Sacado.CNPJCPF    := SoNumero( db_ViewBoletos.FieldByName('CPF_CNPJ').AsString);
       Titulo.Sacado.Logradouro := db_ViewBoletos.FieldByName('ENDERECO').AsString;
       Titulo.Sacado.Numero     := db_ViewBoletos.FieldByName('NUMERO').AsString;
       //Titulo.Sacado.Bairro     := db_ViewBoletos.FieldByName('BAIRRO').AsString;
       Titulo.Sacado.CEP        := SoNumero( db_ViewBoletos.FieldByName('CEP').AsString );
       Titulo.Sacado.Cidade     := db_ViewBoletos.FieldByName('NOME_CIDADE').AsString;
       Titulo.Sacado.UF         := db_ViewBoletos.FieldByName('UF').AsString;

       if empty(Trim(Titulo.NossoNumero))   or
       (Titulo.NossoNumero='0')           then
       Begin
          AvisoSistema('Campo Nosso Numero esta zerado. Corrija o problema. ');
          Abort;
       End;


       // Adicionar na lista para gerar arquivo de REMESSA
       Titulo.Mensagem.Text     := db_BoletoConfigurar.FieldByName('INSTRUCOES').AsString;
       ACBrBoleto1.AdicionarMensagensPadroes(Titulo,Titulo.Mensagem);

       // informar que o boleto foi impresso
       MarcarImpressao(db_ViewBoletos.FieldByName('CODIGO').AsInteger,  Titulo.NossoNumero);

       ProgressBar1.Position := ProgressBar1.Position + 1;
       Application.ProcessMessages;

       db_ViewBoletos.next;

     end;

     ACBrBoleto1.Imprimir;
     ProgressBar1.Position := 0;
     db_ViewBoletos.Refresh;
     db_ViewBoletos.first;
     Informar('Concluído!');

end;

procedure TFrmBoletoBancario.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmBoletoBancario.chkClienteClick(Sender: TObject);
begin

   if chkCliente.Checked = true then
   Begin
      EditCliente.Enabled := False;
   End
   Else
   Begin
      EditCliente.Enabled := true;
      EditCliente.SetFocus;
   End;

end;

procedure TFrmBoletoBancario.ComboCedentesEnter(Sender: TObject);
begin
   db_BoletoConfigurar.Close;
   db_BoletoConfigurar.open;
end;

procedure TFrmBoletoBancario.db_ViewBoletosAfterOpen(DataSet: TDataSet);
begin
  DimensionarGrid(GridViewBoletos,self);

end;

procedure TFrmBoletoBancario.FormResize(Sender: TObject);
begin
  DimensionarGrid(GridViewBoletos,self);

end;

procedure TFrmBoletoBancario.GridViewBoletosEnter(Sender: TObject);
begin
   PrepararScriptBoletos;
end;

Procedure TFrmBoletoBancario.MarcarImpressao(NCODIGO : Integer; SNossoNumero: String);
Begin


   db_CtaReceberBaixar.Close;
   db_CtaReceberBaixar.sql.clear;
   db_CtaReceberBaixar.sql.add(' UPDATE FIN_CTARECEBER SET ');
   db_CtaReceberBaixar.sql.add(' GERARBOLETO=:SGERARBOLETO,  ');
   db_CtaReceberBaixar.sql.add(' NOSSONUMERO=:SNOSSONUMERO  ');
   db_CtaReceberBaixar.sql.add(' WHERE  ');
   db_CtaReceberBaixar.sql.add(' CODIGO=:NCODIGO  ');
   db_CtaReceberBaixar.ParamByName('NCODIGO').AsInteger     := NCODIGO;
   db_CtaReceberBaixar.ParamByName('SGERARBOLETO').AsString := 'S';
   db_CtaReceberBaixar.ParamByName('SNOSSONUMERO').AsString := SNossoNumero;
   db_CtaReceberBaixar.ExecSQL;

   db_ContaCorrenteBoleto.Close;
   db_ContaCorrenteBoleto.open;
   if db_ContaCorrenteBoleto.Locate('CODIGO', db_BoletoConfigurar.FieldByName('CODIGO').AsInteger, []) then
   begin
      db_ContaCorrenteBoleto.Edit;
      db_ContaCorrenteBoleto.FieldByName('PROXIMONOSSONUMERO').AsString :=  SNossoNumero;
      db_ContaCorrenteBoleto.Post;
   end;
   // db_ContaCorrenteBoleto.close;

End;

procedure TFrmBoletoBancario.MarcarRemessa(NCODIGO: Integer;
  SNossoNumero: String);
begin


   db_CtaReceberBaixar.Close;
   db_CtaReceberBaixar.sql.clear;
   db_CtaReceberBaixar.sql.add(' UPDATE FIN_CTARECEBER SET ');
   db_CtaReceberBaixar.sql.add(' GERARREMESSA=:SREMESSA, ');
   db_CtaReceberBaixar.sql.add(' NOSSONUMERO=:SNOSSONUMERO  ');
   db_CtaReceberBaixar.sql.add(' WHERE  ');
   db_CtaReceberBaixar.sql.add(' CODIGO=:NCODIGO  ');
   db_CtaReceberBaixar.ParamByName('NCODIGO').AsInteger     := NCODIGO;
   db_CtaReceberBaixar.ParamByName('SREMESSA').AsString := 'S';
   db_CtaReceberBaixar.ParamByName('SNOSSONUMERO').AsString := SNossoNumero;
   db_CtaReceberBaixar.ExecSQL;

   db_ContaCorrenteBoleto.Close;
   db_ContaCorrenteBoleto.open;
   if db_ContaCorrenteBoleto.Locate('CODIGO', db_BoletoConfigurar.FieldByName('CODIGO').AsInteger, []) then
   begin
      db_ContaCorrenteBoleto.Edit;
      db_ContaCorrenteBoleto.FieldByName('PROXIMONOSSONUMERO').AsString :=  SNossoNumero;
      db_ContaCorrenteBoleto.Post;
   end;
   // db_ContaCorrenteBoleto.close;

end;

procedure TFrmBoletoBancario.dtFinalExit(Sender: TObject);
begin
   dtFinal.text := fncDataValidar(dtFinal.text);
   PrepararScriptBoletos;
end;

procedure TFrmBoletoBancario.dtInicialExit(Sender: TObject);
begin
   dtInicial.text := fncDataValidar(dtInicial.text);
   PrepararScriptBoletos;
end;

procedure TFrmBoletoBancario.MskDataFimExit(Sender: TObject);
begin
   PrepararScriptBoletos;
end;

procedure TFrmBoletoBancario.MskDataIniExit(Sender: TObject);
begin
   PrepararScriptBoletos;

end;

procedure TFrmBoletoBancario.PrepararScriptBoletos;
Var
   Calcular: Real;
begin

   dtDataIni           := StrToDate(dtInicial.text);
   dtDataFim           := StrToDate(dtFinal.text);
   strCliente         := Trim(EditCliente.text);
   //sCodVendedor        := Trim(EditVendedor.text);


   // -----------------------------------------------------------------------
   // Classificar boletos por:
   // -----------------------------------------------------------------------

   db_ViewBoletos.Close;
   db_ViewBoletos.sql.clear;
   db_ViewBoletos.sql.add(' SELECT * FROM VIEW_BOLETOS ');
   db_ViewBoletos.sql.add(' WHERE  ');
   db_ViewBoletos.sql.add(' VENCIMENTO>=:DATA1 AND VENCIMENTO<=:DATA2 ');

   if not chkCliente.Checked then
   Begin
      db_ViewBoletos.sql.add(' AND ');
      db_ViewBoletos.sql.add(' CLIENTE=:CLIENTE ');
   End;



   db_ViewBoletos.sql.add(' ORDER BY NOME_CLIENTE, VENCIMENTO, DOCUMENTO  ');
   db_ViewBoletos.ParamByName('DATA1').AsDate := dtDataIni;
   db_ViewBoletos.ParamByName('DATA2').AsDate := dtDataFim;

   if not chkCliente.Checked then
   Begin
      db_ViewBoletos.ParamByName('CLIENTE').AsString := Alltrim(strCliente);
   End;

   // x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x

   db_ViewBoletosRemessas.Close;
   db_ViewBoletosRemessas.sql.clear;
   db_ViewBoletosRemessas.sql.add(' SELECT * FROM VIEW_BOLETOS ');
   db_ViewBoletosRemessas.sql.add(' WHERE  ');
   db_ViewBoletosRemessas.sql.add(' GERARREMESSA='+QuotedStr('N'));
   db_ViewBoletosRemessas.sql.add(' AND  ');
   db_ViewBoletosRemessas.sql.add(' VENCIMENTO>=:DATA1 AND VENCIMENTO<=:DATA2 ');
   if not chkCliente.Checked then
   Begin
      db_ViewBoletosRemessas.sql.add(' AND ');
      db_ViewBoletosRemessas.sql.add(' CLIENTE=:CLIENTE ');
   End;
   db_ViewBoletosRemessas.sql.add(' ORDER BY NOME_CLIENTE, VENCIMENTO, DOCUMENTO  ');
   db_ViewBoletosRemessas.ParamByName('DATA1').AsDate := dtDataIni;
   db_ViewBoletosRemessas.ParamByName('DATA2').AsDate := dtDataFim;
   if not chkCliente.Checked then
   Begin
      db_ViewBoletosRemessas.ParamByName('CLIENTE').AsString := Alltrim(strCliente);
   End;

   // -----------------------------------------------------------------------
   // Abrir Tabela com os dados filtrados:
   // -----------------------------------------------------------------------
   db_ViewBoletos.open;
   db_ViewBoletosRemessas.open;

   // x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x

   FrmBoletoBancario.Caption := 'Boleto Bancário [Gerar e Imprimir] (' +
     FormatFloat('###,##0', db_ViewBoletos.RecordCount) + ' registros )';

   db_ViewBoletos.First;
   Calcular := 0;
   while not db_ViewBoletos.eof do
   begin
      Calcular := Calcular + db_ViewBoletos.FieldByName('Valor').AsFloat;
      db_ViewBoletos.next;
   end;
   LblTotal.Caption := FormatSettings.CurrencyString + FormatFloat('###,##0.00', Calcular);

   db_ViewBoletos.First;

end;

end.

