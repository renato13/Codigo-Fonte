object FrmFichaTecnicaImprimir: TFrmFichaTecnicaImprimir
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ficha T'#233'cnica - Imprimir'
  ClientHeight = 296
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 608
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 608
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 608
      Height = 33
      ExplicitWidth = 608
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 183
        Caption = 'Ficha T'#233'cnica - Imprimir'
        ExplicitWidth = 183
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 241
    Width = 608
    Height = 55
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 278
    object BtnCancelar: TBitBtn
      Left = 513
      Top = 5
      Width = 80
      Height = 40
      Caption = 'ESC - Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnCancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 608
    Height = 208
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 245
    object GroupBox1: TGroupBox
      Left = 1
      Top = 113
      Width = 606
      Height = 94
      Align = alClient
      Caption = 'FICHA DE CUSTO:'
      TabOrder = 1
      ExplicitHeight = 131
      object BtnFichaCusto: TBitBtn
        Left = 31
        Top = 34
        Width = 171
        Height = 40
        Caption = 'F5 - Ficha de Custo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BtnFichaCustoClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 606
      Height = 112
      Align = alTop
      Caption = 'FICHA T'#201'CNICA:'
      TabOrder = 0
      object BtnFichaTecnicaImagem: TBitBtn
        Left = 310
        Top = 39
        Width = 234
        Height = 40
        Caption = 'F4 - Ficha T'#233'cnica (com imagem)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BtnFichaTecnicaImagemClick
      end
      object BtnFichaTecnica: TBitBtn
        Left = 31
        Top = 39
        Width = 171
        Height = 40
        Caption = 'F3 - Ficha T'#233'cnica'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BtnFichaTecnicaClick
      end
    end
  end
end
