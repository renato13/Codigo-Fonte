object FrmOpcaoNotaFiscalCompra: TFrmOpcaoNotaFiscalCompra
  Left = 229
  Top = 107
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Nota Fiscal'
  ClientHeight = 304
  ClientWidth = 344
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
    Width = 344
    Height = 33
    Align = alTop
    TabOrder = 4
    ExplicitWidth = 344
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 344
      Height = 33
      ExplicitWidth = 344
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 344
        Height = 33
        Caption = 'Nota Fiscal de Entrada (compras)'
        ExplicitWidth = 201
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 33
    Width = 344
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
    TabOrder = 3
  end
  object BtnDigitar: TButton
    Left = 40
    Top = 96
    Width = 265
    Height = 49
    Caption = 'F3 - Digita'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BtnDigitarClick
  end
  object BtnImportar: TButton
    Left = 40
    Top = 160
    Width = 265
    Height = 49
    Caption = 'F4 - Importar Pedido de Compra'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnImportarClick
  end
  object BtnSair: TButton
    Left = 40
    Top = 224
    Width = 265
    Height = 49
    Caption = 'ESC - Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BtnSairClick
  end
end
