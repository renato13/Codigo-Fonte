object FrmErrorForm: TFrmErrorForm
  Left = 321
  Top = 359
  BorderIcons = [biSystemMenu]
  Caption = 'Sistema'
  ClientHeight = 239
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnKeyDown = FormKeyDown
  DesignSize = (
    602
    239)
  PixelsPerInch = 96
  TextHeight = 13
  object MemoAviso: TMemo
    Tag = 1000
    Left = 175
    Top = 2
    Width = 422
    Height = 135
    Anchors = [akLeft, akTop, akRight]
    ParentColor = True
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 175
    Top = 205
    Width = 423
    Height = 30
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      423
      30)
    object Button1: TButton
      Left = 339
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Fechar'
      ModalResult = 2
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object ModuloID: TMemo
    Tag = 1000
    Left = 175
    Top = 143
    Width = 423
    Height = 56
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'M'#243'dulo: '
      'Nome:   ')
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
end
