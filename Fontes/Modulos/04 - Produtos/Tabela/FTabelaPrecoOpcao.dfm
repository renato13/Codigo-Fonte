object FrmTabelaPrecoOpcao: TFrmTabelaPrecoOpcao
  Left = 229
  Top = 107
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Gerar Tabela de Pre'#231'os'
  ClientHeight = 69
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object BtnReal: TButton
    Left = 8
    Top = 10
    Width = 110
    Height = 45
    Caption = 'Em Reais - R$'
    TabOrder = 0
    OnClick = BtnRealClick
  end
  object BtnDolares: TButton
    Left = 117
    Top = 10
    Width = 110
    Height = 45
    Caption = 'Em Dolares - U$'
    TabOrder = 1
    OnClick = BtnDolaresClick
  end
  object BtnEuros: TButton
    Left = 226
    Top = 10
    Width = 110
    Height = 45
    Caption = 'Em Euros - '#8364
    TabOrder = 2
    OnClick = BtnEurosClick
  end
  object BtnCancelar: TButton
    Left = 335
    Top = 10
    Width = 110
    Height = 45
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = BtnCancelarClick
  end
end
