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

unit FEtiquetaProdutosConfigurar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, ExtCtrls, FFrameBotoes, DB,  
  StdCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
  Mask, DBCtrls,   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Samples.Spin;

type
  TFrmEtiquetaProdutosConfigurar = class(TForm)
    Panel1: TPanel;
    FrmFrameBarra1: TFrmFrameBarra;
    FrmFrameBotoes1: TFrmFrameBotoes;
    ds_EtiquetasLayout: TDataSource;
    db_EtiquetasLayout:  TFDQuery;
    Grupo1: TGroupBox;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    EditNome: TDBEdit;
    Label2: TLabel;
    Grupo2: TGroupBox;
    DBAdvOfficeRadioGroup1: TDBRadioGroup;
    DBAdvEditBtn1: TDBEdit;
    Locate_EtiquetasLayout: TIDBEditDialog;
    ScrollBoxCampos: TScrollBox;
    grpColuna1: TGroupBox;
    GrupoDescricao1: TGroupBox;
    DBAdvSpinEdit2: TSpinEdit;
    DBAdvSpinEdit3: TSpinEdit;
    DBAdvSpinEdit4: TSpinEdit;
    DBCheckBox1: TDBCheckBox;
    GrupoCBarra1: TGroupBox;
    DBAdvSpinEdit5: TSpinEdit;
    DBAdvSpinEdit6: TSpinEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    GrupoCor1: TGroupBox;
    DBAdvSpinEdit8: TSpinEdit;
    DBAdvSpinEdit9: TSpinEdit;
    DBAdvSpinEdit10: TSpinEdit;
    DBCheckBox3: TDBCheckBox;
    GrupoTamanho1: TGroupBox;
    DBAdvSpinEdit11: TSpinEdit;
    DBAdvSpinEdit12: TSpinEdit;
    DBAdvSpinEdit13: TSpinEdit;
    DBCheckBox4: TDBCheckBox;
    GrupoPrecos1: TGroupBox;
    DBAdvSpinEdit14: TSpinEdit;
    DBAdvSpinEdit15: TSpinEdit;
    DBAdvSpinEdit16: TSpinEdit;
    DBCheckBox5: TDBCheckBox;
    grpColuna2: TGroupBox;
    GrupoDescricao2: TGroupBox;
    DBAdvSpinEdit17: TSpinEdit;
    DBAdvSpinEdit18: TSpinEdit;
    DBAdvSpinEdit19: TSpinEdit;
    DBCheckBox7: TDBCheckBox;
    GrupoCBarra2: TGroupBox;
    DBAdvSpinEdit20: TSpinEdit;
    DBAdvSpinEdit21: TSpinEdit;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    GrupoCor2: TGroupBox;
    DBAdvSpinEdit22: TSpinEdit;
    DBAdvSpinEdit23: TSpinEdit;
    DBAdvSpinEdit24: TSpinEdit;
    DBCheckBox10: TDBCheckBox;
    GrupoTamanho2: TGroupBox;
    DBAdvSpinEdit25: TSpinEdit;
    DBAdvSpinEdit26: TSpinEdit;
    DBAdvSpinEdit27: TSpinEdit;
    DBCheckBox11: TDBCheckBox;
    GrupoPrecos2: TGroupBox;
    DBAdvSpinEdit28: TSpinEdit;
    DBAdvSpinEdit29: TSpinEdit;
    DBAdvSpinEdit30: TSpinEdit;
    DBCheckBox12: TDBCheckBox;
    GrupoCodigoProduto: TGroupBox;
    DBAdvSpinEdit31: TSpinEdit;
    DBAdvSpinEdit32: TSpinEdit;
    DBAdvSpinEdit33: TSpinEdit;
    DBCheckBox13: TDBCheckBox;
    AdvGroupBox1: TGroupBox;
    DBAdvSpinEdit34: TSpinEdit;
    DBAdvSpinEdit35: TSpinEdit;
    DBAdvSpinEdit36: TSpinEdit;
    DBCheckBox14: TDBCheckBox;
    grpColuna3: TGroupBox;
    AdvGroupBox2: TGroupBox;
    DBAdvSpinEdit37: TSpinEdit;
    DBAdvSpinEdit38: TSpinEdit;
    DBAdvSpinEdit39: TSpinEdit;
    DBCheckBox15: TDBCheckBox;
    AdvGroupBox3: TGroupBox;
    DBAdvSpinEdit40: TSpinEdit;
    DBAdvSpinEdit41: TSpinEdit;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    AdvGroupBox4: TGroupBox;
    DBAdvSpinEdit42: TSpinEdit;
    DBAdvSpinEdit43: TSpinEdit;
    DBAdvSpinEdit44: TSpinEdit;
    DBCheckBox18: TDBCheckBox;
    AdvGroupBox5: TGroupBox;
    DBAdvSpinEdit45: TSpinEdit;
    DBAdvSpinEdit46: TSpinEdit;
    DBAdvSpinEdit47: TSpinEdit;
    DBCheckBox19: TDBCheckBox;
    AdvGroupBox6: TGroupBox;
    DBAdvSpinEdit48: TSpinEdit;
    DBAdvSpinEdit49: TSpinEdit;
    DBAdvSpinEdit50: TSpinEdit;
    DBCheckBox20: TDBCheckBox;
    AdvGroupBox7: TGroupBox;
    DBAdvSpinEdit51: TSpinEdit;
    DBAdvSpinEdit52: TSpinEdit;
    DBAdvSpinEdit53: TSpinEdit;
    DBCheckBox21: TDBCheckBox;
    GroupBox1: TGroupBox;
    AdvDBComboBox1: TDBComboBox;
    DBAdvSpinEdit7: TSpinEdit;
    DBAdvSpinEdit54: TSpinEdit;
    DBAdvSpinEdit55: TSpinEdit;
    DBAdvSpinEdit1: TSpinEdit;
    GrupoOP1: TGroupBox;
    DBAdvSpinEdit56: TSpinEdit;
    DBAdvSpinEdit57: TSpinEdit;
    DBAdvSpinEdit58: TSpinEdit;
    DBCheckBox22: TDBCheckBox;
    GrupoLote1: TGroupBox;
    DBAdvSpinEdit59: TSpinEdit;
    DBAdvSpinEdit60: TSpinEdit;
    DBAdvSpinEdit61: TSpinEdit;
    DBCheckBox23: TDBCheckBox;
    GrupoOP2: TGroupBox;
    DBAdvSpinEdit62: TSpinEdit;
    DBAdvSpinEdit63: TSpinEdit;
    DBAdvSpinEdit64: TSpinEdit;
    DBCheckBox24: TDBCheckBox;
    GrupoLote2: TGroupBox;
    DBAdvSpinEdit65: TSpinEdit;
    DBAdvSpinEdit66: TSpinEdit;
    DBAdvSpinEdit67: TSpinEdit;
    DBCheckBox25: TDBCheckBox;
    GrupoOP3: TGroupBox;
    DBAdvSpinEdit68: TSpinEdit;
    DBAdvSpinEdit69: TSpinEdit;
    DBAdvSpinEdit70: TSpinEdit;
    DBCheckBox26: TDBCheckBox;
    GrupoLote3: TGroupBox;
    DBAdvSpinEdit71: TSpinEdit;
    DBAdvSpinEdit72: TSpinEdit;
    DBAdvSpinEdit73: TSpinEdit;
    DBCheckBox27: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
    procedure db_EtiquetasLayoutAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure db_EtiquetasLayoutBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEtiquetaProdutosConfigurar: TFrmEtiquetaProdutosConfigurar;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.dfm}

procedure TFrmEtiquetaProdutosConfigurar.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := ds_EtiquetasLayout;
   ScrollBoxCampos.VertScrollBar.Position := 0;
   db_EtiquetasLayout.open;

end;

procedure TFrmEtiquetaProdutosConfigurar.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF Key = VK_PRIOR THEN
   Begin
      ScrollBoxCampos.VertScrollBar.Position :=
        ScrollBoxCampos.VertScrollBar.Position - 20;
   End;

   IF Key = VK_NEXT THEN
   Begin
      ScrollBoxCampos.VertScrollBar.Position :=
        ScrollBoxCampos.VertScrollBar.Position + 20;
   End;

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbAdicionarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  EditNome.Setfocus;

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbCancelarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbEditarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbExcluirClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbProcurarClick(
  Sender: TObject);
begin

   if Locate_EtiquetasLayout.Execute then
   begin
      db_EtiquetasLayout.Cancel;
      db_EtiquetasLayout.close;
      db_EtiquetasLayout.ParamByName('CODIGO').Clear;
      db_EtiquetasLayout.ParamByName('CODIGO').AsInteger := Locate_EtiquetasLayout.ResultFieldAsInteger('CODIGO');
      db_EtiquetasLayout.Open;
      EditNome.Setfocus;

   end;

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbSairClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbSalvarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.db_EtiquetasLayoutAfterPost(
  DataSet: TDataSet);
begin
   db_EtiquetasLayout.ParamByName('CODIGO').AsInteger := db_EtiquetasLayout.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmEtiquetaProdutosConfigurar.db_EtiquetasLayoutBeforePost(
  DataSet: TDataSet);
begin

   if db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURA').AsInteger<=0 then
      db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURA').AsInteger    :=1;

   if db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURABARRAS').AsInteger<=0 then
      db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURABARRAS').AsInteger    :=1;

end;

procedure TFrmEtiquetaProdutosConfigurar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_EtiquetasLayout.open;
   action :=Cafree;
end;


end.
