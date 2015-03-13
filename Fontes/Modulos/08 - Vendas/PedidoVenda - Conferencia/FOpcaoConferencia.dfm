object FrmOpcaoConferencia: TFrmOpcaoConferencia
  Left = 229
  Top = 107
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Confer'#234'ncia de Pedido de Venda'
  ClientHeight = 378
  ClientWidth = 332
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
    Width = 332
    Height = 33
    Align = alTop
    TabOrder = 5
    ExplicitWidth = 332
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 332
      Height = 33
      ExplicitWidth = 332
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 332
        Height = 33
        Caption = 'Confer'#234'ncia de Pedido de Venda | Op'#231#227'o'
        ExplicitWidth = 254
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 33
    Width = 332
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
    Left = 32
    Top = 96
    Width = 265
    Height = 49
    Caption = 'F3 - Importar Pedido Integral'
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
    Left = 32
    Top = 160
    Width = 265
    Height = 49
    Caption = 'F4 - Digitar quantidades'
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
    Left = 32
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
    Left = 32
    Top = 224
    Width = 265
    Height = 49
    Caption = 'F5 - Quitar Pedido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
