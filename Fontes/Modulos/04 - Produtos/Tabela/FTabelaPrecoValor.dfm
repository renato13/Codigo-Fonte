object FrmTabelaPrecoValor: TFrmTabelaPrecoValor
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Tabela de Pre'#231'os'
  ClientHeight = 279
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 536
    Height = 33
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 536
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 536
      Height = 33
      ExplicitWidth = 536
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 534
        Height = 31
        Caption = 'Tabela de Pre'#231'os'
        ExplicitWidth = 128
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 536
    Height = 120
    Align = alTop
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object EditReferencia: TLabeledEdit
      Left = 16
      Top = 79
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Color = clBtnFace
      EditLabel.Width = 66
      EditLabel.Height = 16
      EditLabel.Caption = 'Refer'#234'ncia:'
      TabOrder = 0
    end
    object EditReferenciaNome: TLabeledEdit
      Left = 143
      Top = 79
      Width = 380
      Height = 24
      CharCase = ecUpperCase
      Color = clBtnFace
      EditLabel.Width = 55
      EditLabel.Height = 16
      EditLabel.Caption = 'Descri'#231#227'o'
      TabOrder = 1
    end
    object EditTabelaNome: TLabeledEdit
      Left = 97
      Top = 27
      Width = 426
      Height = 24
      CharCase = ecUpperCase
      Color = clBtnFace
      EditLabel.Width = 33
      EditLabel.Height = 16
      EditLabel.Caption = 'Nome'
      TabOrder = 2
    end
    object EditTabela: TLabeledEdit
      Left = 16
      Top = 27
      Width = 75
      Height = 24
      CharCase = ecUpperCase
      Color = clBtnFace
      EditLabel.Width = 39
      EditLabel.Height = 16
      EditLabel.Caption = 'Tabela'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 238
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BtnOk: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
      OnClick = BtnOkClick
    end
    object BtnCancelar: TButton
      Left = 97
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 153
    Width = 536
    Height = 85
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object EditValor: TEdit
      Left = 16
      Top = 36
      Width = 121
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0,00'
    end
  end
end
