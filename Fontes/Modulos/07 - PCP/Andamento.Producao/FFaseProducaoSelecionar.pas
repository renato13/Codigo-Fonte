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

unit FFaseProducaoSelecionar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, DB,  
  FFrameBarra, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmFaseProducaoSelecionar = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnEditar: TBitBtn;
    DBGrid1: TDBGrid;
    btnNovo: TBitBtn;
    btnCancelar: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    btnExcluir: TButton;
    db_Deletar:  TFDQuery;
    db_DeletarEMPRESA: TIntegerField;
    db_DeletarCODIGO: TIntegerField;
    db_DeletarORDEMPRODUCAO: TIntegerField;
    db_DeletarDATA: TSQLTimeStampField;
    db_DeletarDATARETORNO: TSQLTimeStampField;
    db_DeletarTERCEIRIZADO: TIntegerField;
    db_DeletarTERCEIRIZADO_NOME: TStringField;
    db_DeletarFASE: TIntegerField;
    db_DeletarFASE_NOME: TStringField;
    db_DeletarTERCEIRIZADOORIGEM: TIntegerField;
    db_DeletarTERCEIRIZADOORIGEM_NOME: TStringField;
    db_DeletarDATARETORNOORIGEM: TSQLTimeStampField;
    db_DeletarFASEORIGEM: TIntegerField;
    db_DeletarFASEORIGEM_NOME: TStringField;
    db_DeletarQTDE_ENVIADA: TIntegerField;
    db_DeletarQTDE_RETORNADA: TIntegerField;
    db_DeletarQTDE_PERDAS: TIntegerField;
    db_DeletarQTDE_DEFEITOS: TIntegerField;
    db_DeletarVLR_UNITARIO: TBCDField;
    db_DeletarOBSERVACAO: TStringField;
    db_DeletarENCERRADO: TStringField;
    db_DeletarGEROUPAGAMENTO: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFaseProducaoSelecionar: TFrmFaseProducaoSelecionar;

implementation

uses FPrincipal, Global, Biblioteca, SQLServer, FFaseProducao;

{$R *.dfm}

procedure TFrmFaseProducaoSelecionar.FormCreate(Sender: TObject);
begin
   nOrdemProducao :=0;
end;

end.
