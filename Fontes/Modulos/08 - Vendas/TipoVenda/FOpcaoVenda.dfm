object FrmOpcaoVenda: TFrmOpcaoVenda
  Left = 229
  Top = 107
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Venda'
  ClientHeight = 353
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 353
    Height = 33
    Align = alTop
    TabOrder = 5
    ExplicitWidth = 353
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 353
      Height = 33
      ExplicitWidth = 353
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 353
        Height = 33
        Caption = 'Venda - Tipo de Opera'#231#227'o'
        ExplicitWidth = 158
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 33
    Width = 353
    Height = 41
    Align = alTop
    BorderWidth = 3
    Caption = 'pressione a tecla correspondente'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object BtnImportar: TButton
    Left = 48
    Top = 96
    Width = 265
    Height = 49
    Caption = 'F3 - Importar Confer'#234'ncia'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BtnImportarClick
  end
  object BtnDigitar: TButton
    Left = 48
    Top = 160
    Width = 265
    Height = 49
    Caption = 'F4 - Digitar nota inteira'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnDigitarClick
  end
  object BtnSair: TButton
    Left = 48
    Top = 288
    Width = 265
    Height = 49
    Caption = 'ESC - Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BtnSairClick
  end
  object Button1: TButton
    Left = 48
    Top = 224
    Width = 265
    Height = 49
    Caption = 'F5 - Devolu'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = Button1Click
  end
end
