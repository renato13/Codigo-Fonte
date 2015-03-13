object FrmStatusNFe: TFrmStatusNFe
  Left = 231
  Top = 166
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'FrmStatusNFe'
  ClientHeight = 105
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 105
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 4
    TabOrder = 0
    inline FrmFrameBarra1: TFrmFrameBarra
      Left = 8
      Top = 8
      Width = 465
      Height = 33
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 8
      ExplicitWidth = 465
      ExplicitHeight = 33
      inherited W7Panel1: TPanel
        Width = 465
        Height = 33
        ExplicitWidth = 465
        ExplicitHeight = 33
        inherited LblBarraTitulo: TLabel
          Width = 465
          Height = 33
          Caption = 'Nota Fiscal Eletr'#244'nica: Comunicando com a SEFAZ...'
          ExplicitWidth = 314
        end
      end
    end
    object lblStatus: TPanel
      Left = 8
      Top = 41
      Width = 465
      Height = 56
      Align = alClient
      BevelOuter = bvLowered
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Bookman Old Style'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
end
