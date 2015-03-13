object FrmAutenticarAcao: TFrmAutenticarAcao
  Left = 384
  Top = 242
  BorderStyle = bsDialog
  Caption = 'Assinatura eletr'#244'nica'
  ClientHeight = 248
  ClientWidth = 374
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 33
    Width = 374
    Height = 48
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Voc'#234' estar'#225' se responsabilizando pelas informa'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 356
  end
  object EditSenha: TLabeledEdit
    Left = 10
    Top = 168
    Width = 143
    Height = 27
    EditLabel.Width = 113
    EditLabel.Height = 19
    EditLabel.Caption = 'Digite sua Senha:'
    EditLabel.Font.Charset = ANSI_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'Calibri'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
  end
  object BtnOk: TBitBtn
    Left = 10
    Top = 208
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Ok'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = BtnOkClick
  end
  object BtnCancelar: TBitBtn
    Left = 86
    Top = 208
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BtnCancelarClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 81
    Width = 374
    Height = 54
    Align = alTop
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 3
    object EditUsuario: TLabeledEdit
      Left = 9
      Top = 19
      Width = 271
      Height = 27
      Color = 14811135
      EditLabel.Width = 86
      EditLabel.Height = 19
      EditLabel.Caption = 'Respons'#225'vel:'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Calibri'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 374
    Height = 33
    Align = alTop
    TabOrder = 4
    ExplicitWidth = 374
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 374
      Height = 33
      ExplicitWidth = 374
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 215
        Caption = 'Assinatura eletr'#244'nica'
        ExplicitWidth = 215
      end
    end
  end
end
