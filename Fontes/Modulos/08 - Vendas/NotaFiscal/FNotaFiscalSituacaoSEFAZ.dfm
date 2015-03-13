object FrmNotaFiscalSituacaoSEFAZ: TFrmNotaFiscalSituacaoSEFAZ
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'NF-e (Nota Fiscal Eletr'#244'nica)'
  ClientHeight = 458
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 611
    Height = 33
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 611
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 611
      Height = 33
      ExplicitWidth = 611
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 611
        Height = 33
        Caption = 'Situa'#231#227'o da Nota Fiscal na SEFAZ'
        ExplicitWidth = 197
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 417
    Width = 611
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object MemoDados: TMemo
    Left = 0
    Top = 33
    Width = 611
    Height = 384
    Align = alClient
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
end
