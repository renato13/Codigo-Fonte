object FrmPedidoVendaGradePrecos: TFrmPedidoVendaGradePrecos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pedido de Venda | Grade de Valores'
  ClientHeight = 307
  ClientWidth = 548
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
    Top = 280
    Width = 548
    Height = 27
    Align = alBottom
    Caption = 'ESC - Gravar e Sair / F3 - Limpar'
    TabOrder = 1
  end
  object StringGridOpcoes: TStringGrid
    Left = 0
    Top = 0
    Width = 548
    Height = 280
    Align = alClient
    ColCount = 3
    DrawingStyle = gdsClassic
    RowCount = 3
    TabOrder = 0
    RowHeights = (
      22
      22
      22)
  end
end
