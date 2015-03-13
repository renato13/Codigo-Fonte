object FrmFrameBarra: TFrmFrameBarra
  Left = 0
  Top = 0
  Width = 451
  Height = 40
  Align = alTop
  TabOrder = 0
  OnResize = FrameResize
  object W7Panel1: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 40
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LblBarraTitulo: TLabel
      Left = 1
      Top = 1
      Width = 449
      Height = 38
      Align = alClient
      Alignment = taCenter
      Caption = '<titulo do m'#243'dulo>         '
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      OnDblClick = LblBarraTituloDblClick
      ExplicitWidth = 188
      ExplicitHeight = 21
    end
  end
end
