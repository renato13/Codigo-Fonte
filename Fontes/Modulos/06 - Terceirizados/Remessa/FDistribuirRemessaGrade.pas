{**********************************************************************************}
{ VESTIS PCP - SISTEMA PARA INDUSTRIAS DE CONFECÇÕES.                              }
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

unit FDistribuirRemessaGrade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls;

type
   TFrmDistribuirRemessaGrade = class(TForm)
      Panel1: TPanel;
    StringGridOpcoesRetornar: TStringGrid;
    StringGridOpcoes: TStringGrid;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure FormShow(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmDistribuirRemessaGrade: TFrmDistribuirRemessaGrade;

implementation

uses Biblioteca_pcp, Biblioteca, FDistribuirRemessa;

{$R *.dfm}

procedure TFrmDistribuirRemessaGrade.FormCreate(Sender: TObject);
begin

   DistribuirReferencia_Montar_Produzir(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString, StringGridOpcoes);

   DistribuirReferencia_Carregar_Produzir(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('CODIGO').AsInteger,
                                          FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('ORDEMPRODUCAO').AsInteger,
                                          FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString,
                                           StringGridOpcoes);

   DistribuirRetorno_Montar_Produzir(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString, StringGridOpcoesRetornar);

   DistribuirRetorno_Carregar_Produzido(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('CODIGO').AsInteger,
                                          FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('ORDEMPRODUCAO').AsInteger,
                                          FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString,
                                           StringGridOpcoesRetornar);



end;

procedure TFrmDistribuirRemessaGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   if (FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('QTDE_PRODUZIDA').AsInteger < 1) then
   begin

      DistribuirReferencia_Salvar_Produzir(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('CODIGO').AsInteger,
                                           FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('ORDEMPRODUCAO').AsInteger,
                                           FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString,
                                           StringGridOpcoes);

      DistribuirRetorno_Salvar_Produzido(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('CODIGO').AsInteger,
                                           FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('ORDEMPRODUCAO').AsInteger,
                                           FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString,
                                           StringGridOpcoesRetornar);

        FrmDistribuirRemessa.db_DistribuirReferencias.Edit;
        FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('QUANTIDADE').AsFloat :=DistribuirReferencia_Totalizar_Produzir(StringGridOpcoes);
        FrmDistribuirRemessa.db_DistribuirReferencias.Post;

   end;

   Action := Cafree;

end;

procedure TFrmDistribuirRemessaGrade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F3 then
   begin
      if (FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('QTDE_PRODUZIDA').AsInteger > 0) then
      begin
         FormMensagem('Não é permitido editar. Há produção em andamento para este produto.' + #13
        + #10 + 'Já foram produzidos ' + FormatFloat('###,##0',
        FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('QTDE_PRODUZIDA').AsInteger));
        exit;


      end;

      GradeZerar(StringGridOpcoes);
      DistribuirReferencia_Montar_Produzir(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString, StringGridOpcoes);
   end;

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmDistribuirRemessaGrade.FormShow(Sender: TObject);
begin

   //FrmDistribuirRemessaGrade.Width := StringGridOpcoes.Width + 15;

   FrmDistribuirRemessaGrade.Caption := 'Grade de quantidades /  ' +
     'Remessa : ' + FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName
     ('CODIGO').AsString;

   Update;

end;

end.

