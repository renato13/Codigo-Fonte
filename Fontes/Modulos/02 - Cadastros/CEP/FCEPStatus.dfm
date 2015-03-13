object FrmCEPStatus: TFrmCEPStatus
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 145
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 440
    Height = 145
    Align = alClient
    BevelWidth = 5
    TabOrder = 0
    object LblStatusLocalizacao: TLabel
      Left = 5
      Top = 38
      Width = 430
      Height = 48
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'CEP ENCONTRADO!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      Visible = False
      ExplicitLeft = 0
      ExplicitTop = 81
    end
    object PainelBotao: TPanel
      Left = 5
      Top = 104
      Width = 430
      Height = 36
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'tecle ESC para sair'
      TabOrder = 0
      Visible = False
    end
    inline FrmFrameBarra1: TFrmFrameBarra
      Left = 5
      Top = 5
      Width = 430
      Height = 33
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitWidth = 430
      ExplicitHeight = 33
      inherited W7Panel1: TPanel
        Width = 430
        Height = 33
        ExplicitWidth = 430
        ExplicitHeight = 33
        inherited LblBarraTitulo: TLabel
          Width = 430
          Height = 33
          AutoSize = False
          Caption = 'CEP | IBGE'
          ExplicitWidth = 427
          ExplicitHeight = 21
        end
      end
    end
  end
end
