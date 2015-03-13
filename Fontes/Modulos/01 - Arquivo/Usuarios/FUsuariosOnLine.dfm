object FrmUsuariosOnLine: TFrmUsuariosOnLine
  Left = 250
  Top = 98
  BorderStyle = bsDialog
  Caption = 'Usu'#225'rios On-Line'
  ClientHeight = 454
  ClientWidth = 365
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 413
    Width = 365
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BorderStyle = bsSingle
    TabOrder = 0
    object BtnSair: TBitBtn
      Left = 7
      Top = 5
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'Sair'
      Caption = 'Sai&r'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0077FF77FF700F
        77FFFF77FF77F0B0FF7777FF77FF70B307FF00000007F0B330007777770000B3
        307777770708800330777777000880F03077777702088003307700000A2080B3
        3077AAAAAAA200B3307700000AA080B3307777770A0880B330777777000880BB
        307777770708880BB077777777088880B0777777770000000077}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnSairClick
    end
  end
  object ListBoxUserName: TListBox
    Left = 0
    Top = 36
    Width = 365
    Height = 377
    Align = alClient
    ItemHeight = 13
    MultiSelect = True
    Sorted = True
    TabOrder = 1
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 365
    Height = 36
    Align = alTop
    TabOrder = 2
    ExplicitLeft = -86
    ExplicitWidth = 365
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 365
      ExplicitWidth = 365
      inherited LblBarraTitulo: TLabel
        Width = 453
        Caption = 'Usu'#225'rios usando sistema no momento'
        ExplicitWidth = 453
      end
    end
  end
end
