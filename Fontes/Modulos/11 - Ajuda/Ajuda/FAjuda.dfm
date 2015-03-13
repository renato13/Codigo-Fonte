object FrmAjuda: TFrmAjuda
  Left = 217
  Top = 156
  BorderStyle = bsDialog
  ClientHeight = 334
  ClientWidth = 551
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
  PixelsPerInch = 96
  TextHeight = 13
  object MemoAjuda: TMemo
    Left = 0
    Top = 0
    Width = 551
    Height = 310
    Align = alClient
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    ExplicitTop = -6
  end
  object Panel1: TPanel
    Left = 0
    Top = 310
    Width = 551
    Height = 24
    Align = alBottom
    Alignment = taLeftJustify
    Caption = '  ESC - Sair'
    TabOrder = 1
  end
end
