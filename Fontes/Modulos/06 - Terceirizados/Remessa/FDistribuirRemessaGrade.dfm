object FrmDistribuirRemessaGrade: TFrmDistribuirRemessaGrade
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Grade Distribui'#231#227'o de Servi'#231'os | Remessa'
  ClientHeight = 274
  ClientWidth = 463
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 247
    Width = 463
    Height = 27
    Align = alBottom
    Caption = 'ESC - Gravar e Sair / F3 - Limpar tudo'
    TabOrder = 0
  end
  object StringGridOpcoesRetornar: TStringGrid
    Left = 280
    Top = 56
    Width = 152
    Height = 162
    DrawingStyle = gdsClassic
    TabOrder = 1
    Visible = False
  end
  object StringGridOpcoes: TStringGrid
    Left = 0
    Top = 0
    Width = 463
    Height = 247
    Align = alClient
    ColCount = 3
    Ctl3D = True
    DrawingStyle = gdsClassic
    RowCount = 3
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentCtl3D = False
    TabOrder = 2
  end
end
