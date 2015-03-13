object FrmPedidoVendaConferenciaGrade: TFrmPedidoVendaConferenciaGrade
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pedido de venda | Conferencia'
  ClientHeight = 270
  ClientWidth = 549
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
    Top = 243
    Width = 549
    Height = 27
    Align = alBottom
    Caption = 'ESC - Gravar e Sair / F3 - Limpar tudo'
    TabOrder = 1
  end
  object StringGridOpcoes: TStringGrid
    Left = 0
    Top = 0
    Width = 549
    Height = 243
    Align = alClient
    ColCount = 3
    Ctl3D = True
    DrawingStyle = gdsClassic
    RowCount = 3
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentCtl3D = False
    TabOrder = 0
  end
end
