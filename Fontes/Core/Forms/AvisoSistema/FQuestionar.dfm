object FrmQuestionar: TFrmQuestionar
  Left = 252
  Top = 131
  AlphaBlend = True
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Aten'#231#227'o'
  ClientHeight = 209
  ClientWidth = 458
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
    Top = 175
    Width = 458
    Height = 34
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      458
      34)
    object BtnAceitar: TButton
      Left = 300
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object BtnCancelar: TButton
      Left = 376
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object MemoAviso: TRichEdit
    Left = 0
    Top = 0
    Width = 458
    Height = 175
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'MemoAviso')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
end
