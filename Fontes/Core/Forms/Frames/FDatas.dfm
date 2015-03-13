object FrameDatas: TFrameDatas
  Left = 0
  Top = 0
  Width = 451
  Height = 78
  Align = alTop
  Color = clGray
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentColor = False
  ParentFont = False
  TabOrder = 0
  OnEnter = FrameEnter
  object GrupoFrameData: TGroupBox
    Left = 0
    Top = 0
    Width = 451
    Height = 78
    Align = alClient
    Caption = '[ Per'#237'odo ]'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    ExplicitHeight = 73
    object Label4: TLabel
      Left = 148
      Top = 43
      Width = 25
      Height = 20
      Caption = 'At'#233
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 43
      Width = 25
      Height = 20
      Caption = 'De'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object MskDataFim: TMaskEdit
      Left = 176
      Top = 40
      Width = 94
      Height = 28
      EditMask = '99/99/9999'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '31/12/2013'
      OnExit = MskDataFimExit
    end
    object MskDataIni: TMaskEdit
      Left = 34
      Top = 40
      Width = 94
      Height = 28
      EditMask = '99/99/9999'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '01/01/2013'
      OnExit = MskDataIniExit
    end
  end
end
