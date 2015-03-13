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

unit FDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, DB,
        Grids, DBGrids, jpeg,
  ACBrBase, ACBrExtenso,   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmDuplicata = class(TForm)
    Panel1: TPanel;
    BtnSair: TBitBtn;
    Btn_Imprimir: TBitBtn;
    db_CtaReceber:  TFDQuery;
    DS_CtaReceber: TDataSource;
    GroupBox1: TGroupBox;
    Image1: TImage;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    MskDataIni: TMaskEdit;
    MskDataFim: TMaskEdit;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    Navegador: TDBNavigator;
    ACBrExtenso1: TACBrExtenso;
    MemoExtenso1: TMemo;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    QRndereco0: TLabel;
    QRMunicipio0: TLabel;
    QRPRACA0: TLabel;
    QRUF0: TLabel;
    QRCEP0: TLabel;
    DBText1: TDBText;
    lbldata: TLabel;
    DBText6: TDBText;
    RdgSaida: TRadioGroup;
    db_SomarValorTotal: TFDQuery;
    db_SomarValorTotalTOTAL: TBCDField;
    DBText7: TDBText;
    ds_sum: TDataSource;
    GroupBox4: TGroupBox;
    ChkNF: TCheckBox;
    EditNf: TEdit;
    db_CtaReceberDATA: TDateField;
    db_CtaReceberVENCIMENTO: TDateField;
    db_CtaReceberVALOR: TBCDField;
    db_CtaReceberDOCUMENTO: TStringField;
    db_CtaReceberNRO_NOTA: TStringField;
    db_CtaReceberCODCLIENTE: TStringField;
    db_CtaReceberNOME: TStringField;
    db_CtaReceberENDERECO: TStringField;
    db_CtaReceberFONE: TStringField;
    db_CtaReceberMUNICIPIO: TStringField;
    db_CtaReceberUF: TStringField;
    db_CtaReceberPRACA_PAGAMENTO: TStringField;
    db_CtaReceberCEP: TStringField;
    db_CtaReceberCPF_CNPJ: TStringField;
    db_CtaReceberRG_IE: TStringField;
    db_CtaReceberCODVENDEDOR: TStringField;
    db_CtaReceberQUITADO: TStringField;
    db_CtaReceberEC_ENDERECO: TStringField;
    db_CtaReceberEC_NOMECIDADE: TStringField;
    db_CtaReceberEC_UF: TStringField;
    db_CtaReceberEC_CEP: TStringField;
    procedure db_CtaReceberBeforeOpen(DataSet: TDataSet);
    procedure db_CtaReceberBeforeClose(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_CtaReceberAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure MemoExtenso1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure ChkNFClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDuplicata: TFrmDuplicata;

implementation

uses FPrincipal, Biblioteca, Global, FDuplicatasImprimir;

{$R *.dfm}

procedure TFrmDuplicata.db_CtaReceberBeforeOpen(DataSet: TDataSet);
begin

   Navegador.Enabled := True;
end;

procedure TFrmDuplicata.db_CtaReceberBeforeClose(DataSet: TDataSet);
begin
   Navegador.Enabled :=False;

end;

procedure TFrmDuplicata.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If key=Vk_escape then
      close;


end;

procedure TFrmDuplicata.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_CtaReceber.close;
   db_SomarValorTotal.close;

   Action :=cafree;
   
end;

procedure TFrmDuplicata.FormCreate(Sender: TObject);
begin
   MskDataIni.Text :=DateToStr(date);
   MskDataFim.Text :=DateToStr(date);
end;

procedure TFrmDuplicata.BitBtn1Click(Sender: TObject);
begin


   if not ChkNF.Checked then
   begin

      if Trim(EditNf.text)='' then
      begin
         Informar('Informe o numero de Controle');
         Abort;
      end;

      // escrever script sql
      db_CtaReceber.close;
      db_CtaReceber.SQL.clear;
      db_CtaReceber.SQL.Add (' SELECT * FROM VIEW_DUPLICATAS  ');
      db_CtaReceber.SQL.Add (' WHERE  ');
      db_CtaReceber.SQL.Add (' nro_nota=:nro_nota  ');
      db_CtaReceber.SQL.Add (' ORDER BY nro_nota, DOCUMENTO  ');

      db_CtaReceber.ParamByName('nro_nota').AsString :=Trim(EditNf.text);

   end
   else
   begin

      db_CtaReceber.close;
      db_CtaReceber.SQL.clear;
      db_CtaReceber.SQL.Add (' SELECT * FROM VIEW_DUPLICATAS  ');
      db_CtaReceber.SQL.Add (' WHERE  ');
      db_CtaReceber.SQL.Add (' DATA>=:DATA1  ');
      db_CtaReceber.SQL.Add (' AND  ');
      db_CtaReceber.SQL.Add (' DATA<=:DATA2  ');
      db_CtaReceber.SQL.Add (' ORDER BY DATA, NOME, DOCUMENTO  ');

     db_CtaReceber.ParamByName('DATA1').AsDate :=StrToDate(MskDataIni.text);
     db_CtaReceber.ParamByName('DATA2').AsDate :=StrToDate(MskDataFim.text);

   end;

   db_CtaReceber.close;
   db_CtaReceber.open;

   if db_CtaReceber.RecordCount>0 then
      Btn_Imprimir.Enabled :=True
   else
   begin
     Btn_Imprimir.Enabled :=False;
     db_CtaReceber.close;
     BeepCritica;
     informar('Não há dados para imprimir no filtro especificado');
     exit;
   end;  

   db_CtaReceber.First;  // forçar SCROLL dos registros para o evento ONSCROLL

end;

procedure TFrmDuplicata.db_CtaReceberAfterScroll(DataSet: TDataSet);
begin
   db_SomarValorTotal.close;
   db_SomarValorTotal.open;

   //wTexto[0] :=Extenso(FrmDuplicata.db_CtaReceber.FieldByName('VALOR').AsFloat);


   ACBrExtenso1.Valor := db_CtaReceber.FieldByName('VALOR').AsFloat ;
   wTexto[0] :=UpperCase(ACBrExtenso1.Texto);
   while Length(wTexto[0]) < (315-length(wTexto[0]) ) do wTexto[0] := wTexto[0]+' x ';

   MemoExtenso1.lines.clear;
   MemoExtenso1.lines.Text :=wTexto[0];

   //FormatDateTime('"The meeting is on " dddd, mmmm d, yyyy, " at " hh:mm AM/PM', Now + 0.125);
   //lbldata.caption:=FormatDateTime(' d " de " mmmm " de " yyyy ', db_CtaReceber.FieldByName('DATA').AsDateTime );
   lbldata.caption:=db_CtaReceber.FieldByName('DATA').AsString ;

   // campos da duplicata
   // endereço
   IF db_CtaReceber.FieldByName('EC_ENDERECO').AsString>'' then
   begin
      QRndereco0.Caption :=db_CtaReceber.FieldByName('EC_ENDERECO').AsString;
   end
   else
   begin
      QRndereco0.Caption :=db_CtaReceber.FieldByName('ENDERECO').AsString;
   end;

   // Municipio
   IF db_CtaReceber.FieldByName('EC_NOMECIDADE').AsString>'' then
   begin
      QRMunicipio0.Caption :=db_CtaReceber.FieldByName('EC_NOMECIDADE').AsString;
   end
   else
   begin
      QRMunicipio0.Caption :=db_CtaReceber.FieldByName('MUNICIPIO').AsString;
   end;
 
   // UF
   IF db_CtaReceber.FieldByName('EC_UF').AsString>'' then
   begin
      QRUF0.Caption :=db_CtaReceber.FieldByName('EC_UF').AsString;
   end
   else
   begin
      QRUF0.Caption :=db_CtaReceber.FieldByName('UF').AsString;
   end;

   // PRACA DE PAGTO
   IF db_CtaReceber.FieldByName('EC_NOMECIDADE').AsString>'' then
   begin
      QRPRACA0.Caption :=db_CtaReceber.FieldByName('EC_NOMECIDADE').AsString;
   end
   else
   begin
      QRPRACA0.Caption :=db_CtaReceber.FieldByName('MUNICIPIO').AsString;
   end;

   // CEP
   IF db_CtaReceber.FieldByName('EC_CEP').AsString>'' then
   begin
      QRCEP0.Caption :=db_CtaReceber.FieldByName('EC_CEP').AsString;
   end
   else
   begin
      QRCEP0.Caption :=db_CtaReceber.FieldByName('CEP').AsString;
   end;



end;


procedure TFrmDuplicata.MemoExtenso1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (Shift = [ssCtrl]) then
  case Key of
    65: (Sender as TMemo).SelectAll;
  end;  

end;

procedure TFrmDuplicata.BtnSairClick(Sender: TObject);
begin
   CLOSE;
end;

procedure TFrmDuplicata.Btn_ImprimirClick(Sender: TObject);
begin
   {
   if db_CtaReceber.active=false then
      exit;

   if db_CtaReceber.IsEmpty then
      exit;

   if db_CtaReceber.Eof then
      exit;
   }

   Achar[0]:=db_CtaReceber.FieldByName('DOCUMENTO').AsString;

   db_CtaReceber.First;
   FrmDuplicatasImprimir:=TFrmDuplicatasImprimir.create(self);

   db_CtaReceber.locate('DOCUMENTO', Achar[0]  , [] );

end;

procedure TFrmDuplicata.ChkNFClick(Sender: TObject);
begin

   if not ChkNF.Checked then
   begin
      EditNf.Enabled :=True;
      EditNf.Text    :='';
      EditNf.SetFocus;
   end
   else
   begin
      EditNf.Enabled :=False;
      EditNf.Text    :='Todas as NFs';

   end;

end;

end.
