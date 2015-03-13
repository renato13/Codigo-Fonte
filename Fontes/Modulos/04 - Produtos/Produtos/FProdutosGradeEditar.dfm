object FrmProdutosGradeEditar: TFrmProdutosGradeEditar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Quantidade/Estoque'
  ClientHeight = 237
  ClientWidth = 533
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 210
    Width = 533
    Height = 27
    Align = alBottom
    TabOrder = 0
  end
  object StringGridOpcoes: TStringGrid
    Left = 0
    Top = 0
    Width = 533
    Height = 210
    Align = alClient
    Color = clBtnFace
    DrawingStyle = gdsClassic
    RowCount = 4
    TabOrder = 1
    ColWidths = (
      64
      64
      64
      64
      78)
  end
end
