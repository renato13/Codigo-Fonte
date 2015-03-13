object FrmAboutBox: TFrmAboutBox
  Left = 8
  Top = 8
  BorderStyle = bsDialog
  Caption = 'Sobre o Sistema'
  ClientHeight = 404
  ClientWidth = 615
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 615
    Height = 36
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 615
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 615
      Height = 36
      ExplicitWidth = 615
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 213
        Caption = 'INFORMA'#199#213'ES DO SISTEMA'
        ExplicitWidth = 213
      end
    end
  end
  object W7Panel1: TPanel
    Left = 0
    Top = 360
    Width = 615
    Height = 44
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BtnAcessar: TButton
      Left = 6
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
      OnClick = BtnAcessarClick
    end
  end
  object AdvGroupBox1: TGroupBox
    Left = 8
    Top = 80
    Width = 599
    Height = 257
    Caption = 'Compila'#231#227'o:'
    Enabled = False
    TabOrder = 2
    object ProductInformation: TMemo
      Left = 2
      Top = 15
      Width = 595
      Height = 240
      Align = alClient
      BorderStyle = bsNone
      Color = clBtnFace
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      WantTabs = True
    end
  end
end
