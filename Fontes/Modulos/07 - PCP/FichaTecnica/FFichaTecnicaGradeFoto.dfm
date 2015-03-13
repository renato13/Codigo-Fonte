object FrmFichaTecnicaGradeFoto: TFrmFichaTecnicaGradeFoto
  Left = 251
  Top = 99
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Visualiza'#231#227'o'
  ClientHeight = 397
  ClientWidth = 757
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
  object FotoReferencia: TImage
    Left = 452
    Top = 52
    Width = 305
    Height = 311
    Align = alClient
    Center = True
    Proportional = True
    Transparent = True
    ExplicitLeft = 400
    ExplicitWidth = 357
  end
  object AdvSplitter1: TSplitter
    Left = 449
    Top = 52
    Height = 311
    ExplicitLeft = 393
    ExplicitTop = 49
  end
  object Panel1: TPanel
    Left = 0
    Top = 363
    Width = 757
    Height = 34
    Align = alBottom
    Caption = 'Tecle ESC para sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 52
    Align = alTop
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 2
    object Label11: TLabel
      Left = 7
      Top = 7
      Width = 67
      Height = 13
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 384
      Top = 7
      Width = 32
      Height = 13
      Caption = 'Grife:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label13: TLabel
      Left = 560
      Top = 7
      Width = 51
      Height = 13
      Caption = 'Cole'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label1: TLabel
      Left = 80
      Top = 7
      Width = 37
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit20: TDBEdit
      Left = 7
      Top = 22
      Width = 66
      Height = 21
      BevelKind = bkFlat
      Color = clBtnFace
      DataField = 'REFERENCIA'
      DataSource = BaseDados_PCP.ds_referencias
      TabOrder = 0
    end
    object DBEdit21: TDBEdit
      Left = 384
      Top = 22
      Width = 170
      Height = 21
      BevelKind = bkFlat
      Color = clBtnFace
      DataSource = BaseDados_PCP.ds_referencias
      TabOrder = 2
      Visible = False
    end
    object DBEdit22: TDBEdit
      Left = 560
      Top = 22
      Width = 170
      Height = 21
      BevelKind = bkFlat
      Color = clBtnFace
      DataSource = BaseDados_PCP.ds_referencias
      TabOrder = 3
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 22
      Width = 297
      Height = 21
      BevelKind = bkFlat
      Color = clBtnFace
      DataField = 'DESCRICAO'
      DataSource = BaseDados_PCP.ds_referencias
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 52
    Width = 449
    Height = 311
    Align = alLeft
    Caption = 'Grade Programada'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object StringGrade: TStringGrid
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 439
      Height = 288
      Align = alClient
      Ctl3D = True
      DrawingStyle = gdsClassic
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSelect]
      ParentCtl3D = False
      TabOrder = 0
      RowHeights = (
        22
        22
        22
        22
        22)
    end
  end
end
