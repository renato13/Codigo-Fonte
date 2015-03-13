object FrmOpcaoNotaFiscal: TFrmOpcaoNotaFiscal
  Left = 229
  Top = 107
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Nota Fiscal'
  ClientHeight = 265
  ClientWidth = 396
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
    Width = 396
    Height = 33
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 396
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      inherited LblBarraTitulo: TLabel
        Width = 328
        Caption = 'Venda - Tipo de Nota Fiscal'
        ExplicitWidth = 328
      end
    end
  end
  object Panel2: TPanel
    Left = 48
    Top = 96
    Width = 315
    Height = 41
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    BevelWidth = 3
    BorderWidth = 3
    Caption = 'F3 - Nota Fiscal Eletr'#244'nica (NF-e)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel4: TPanel
    Left = 48
    Top = 158
    Width = 315
    Height = 41
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    BevelWidth = 3
    BorderWidth = 3
    Caption = 'ESC - Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Panel5: TPanel
    Left = 0
    Top = 33
    Width = 396
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
    TabOrder = 0
  end
end
