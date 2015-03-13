object FrmAvisoSistema: TFrmAvisoSistema
  Left = 268
  Top = 106
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Mensagem do sistema'
  ClientHeight = 252
  ClientWidth = 459
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object MemoAviso: TMemo
    Left = 0
    Top = 40
    Width = 459
    Height = 179
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitTop = 41
    ExplicitHeight = 175
  end
  object Panel1: TPanel
    Left = 0
    Top = 219
    Width = 459
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Tecle ESC para sair'
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 216
    object Button1: TButton
      Left = 0
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 459
    Height = 40
    Align = alTop
    Enabled = False
    TabOrder = 2
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 457
      Height = 38
      Align = alClient
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000001A60000
        002408020000004D1C0933000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000001
        154944415478DAEDD4494E90411845515ED5EF36D1201162132048C0D0448D1A
        25AC934EE971CE2EAA06DF392BB8A39B5767FF57006AC872FA3CBB0160902C7F
        2C0FA822CBEFA7D90D008364F965794015597E3ECE6E001824CB0FCB03AAC8F2
        DDF2802AB27C7B98DD003048FA57CB03AA483FB99FDD003048FAB1E50155A41F
        DDCD6E001824FDD0F2802AD2BF581E5045FAC1EDEC068041D2F72D0FA8227DEF
        667603C020699F2D0FA8226DD7F2802AD276FECD6E0018246DDBF2802AD2B6FE
        CE6E001824ED93E50155A47DBC9EDD003048DA07CB03AA487B6F794015C9E6D5
        EC068041920DCB03AA48DE5DCE6E00182459B73CA08AE4ADE50155246B17B31B
        000649DE581E5045F2FA7C7603C020C9AAE50155BC00D5583243E7EA2F140000
        000049454E44AE426082}
      Stretch = True
      ExplicitLeft = 32
      ExplicitTop = 8
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
    object LblBarraTitulo: TLabel
      Left = 1
      Top = 1
      Width = 457
      Height = 38
      Align = alClient
      Alignment = taCenter
      Caption = 'Usu'#225'rio(a), aten'#231#227'o:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitWidth = 125
      ExplicitHeight = 18
    end
  end
end
