object FrmPedidoVendaGrade: TFrmPedidoVendaGrade
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pedido: '
  ClientHeight = 373
  ClientWidth = 563
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
    Top = 346
    Width = 563
    Height = 27
    Align = alBottom
    Caption = 'ESC - Gravar e Sair / F3 - Limpar tudo'
    TabOrder = 1
    ExplicitTop = 178
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 563
    Height = 177
    Align = alTop
    TabOrder = 0
    object StringGridOpcoes: TStringGrid
      Left = 2
      Top = 15
      Width = 559
      Height = 160
      Align = alClient
      DrawingStyle = gdsClassic
      RowCount = 4
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      TabOrder = 0
      ColWidths = (
        64
        64
        64
        64
        78)
    end
  end
  object grpDetalhes: TGroupBox
    Left = 0
    Top = 177
    Width = 563
    Height = 169
    Align = alClient
    Caption = 'Detalhes'
    Enabled = False
    TabOrder = 2
    ExplicitHeight = 1
    object GroupBox3: TGroupBox
      Left = 2
      Top = 15
      Width = 559
      Height = 150
      Align = alTop
      Caption = 'Em estoque'
      TabOrder = 0
      ExplicitHeight = 1
      object StringGridEstoque: TStringGrid
        Left = 2
        Top = 15
        Width = 555
        Height = 133
        Align = alClient
        DrawingStyle = gdsClassic
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 478
        ExplicitHeight = 210
        ColWidths = (
          64
          64
          64
          64
          78)
      end
    end
  end
end
