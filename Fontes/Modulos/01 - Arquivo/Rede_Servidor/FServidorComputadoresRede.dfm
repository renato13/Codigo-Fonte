object FrmServidorComputadoresRede: TFrmServidorComputadoresRede
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Localizar computadores na rede'
  ClientHeight = 459
  ClientWidth = 425
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 425
    Height = 40
    Align = alTop
    TabOrder = 0
    object BtnLocalizar: TButton
      Left = 10
      Top = 8
      Width = 175
      Height = 25
      Caption = 'Procurar computadores na rede'
      TabOrder = 0
      OnClick = BtnLocalizarClick
    end
    object Panel3: TPanel
      Left = 176
      Top = -80
      Width = 185
      Height = 41
      Caption = 'Panel3'
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 419
    Width = 425
    Height = 40
    Align = alBottom
    TabOrder = 2
    object BtnCapturar: TBitBtn
      Left = 10
      Top = 8
      Width = 207
      Height = 25
      Caption = 'Conectar ao computador selecionado'
      Enabled = False
      TabOrder = 0
      OnClick = BtnCapturarClick
    end
    object BtnClose: TBitBtn
      Left = 264
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = BtnCloseClick
    end
  end
  object ListBox1: TListBox
    Left = 0
    Top = 40
    Width = 425
    Height = 379
    Align = alClient
    ItemHeight = 13
    Sorted = True
    TabOrder = 1
  end
end
