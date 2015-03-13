object FrmCtaReceberBaixasLotesSelecionar: TFrmCtaReceberBaixasLotesSelecionar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Baixas a Receber por Lote'
  ClientHeight = 480
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 620
    Height = 36
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 586
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 620
      ExplicitWidth = 586
      inherited LblBarraTitulo: TLabel
        Width = 366
        Caption = 'Baixas de Titulos a Receber por Lote | Selecionar'
        ExplicitWidth = 366
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 620
    Height = 403
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 586
    ExplicitHeight = 400
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 618
      Height = 401
      Align = alClient
      Caption = 'Selecionar titulos a baixar'
      TabOrder = 0
      ExplicitLeft = 17
      ExplicitTop = 6
      ExplicitWidth = 217
      ExplicitHeight = 83
      object GridMenus: TDBGrid
        Left = 2
        Top = 15
        Width = 614
        Height = 384
        Align = alClient
        DataSource = FrmCtaReceberBaixasLotes.ds_ctaReceber
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Color = clWindow
            Expanded = False
            Width = 20
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'DOCUMENTO'
            ReadOnly = True
            Width = 80
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'DATA'
            ReadOnly = True
            Width = 76
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'VENCIMENTO'
            ReadOnly = True
            Width = 87
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'CLIENTE'
            ReadOnly = True
            Width = 67
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'VENDEDOR'
            ReadOnly = True
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'VALOR'
            ReadOnly = True
            Width = 104
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'SELECIONADO'
            Width = 86
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 439
    Width = 620
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 436
    ExplicitWidth = 586
    object BitBtn1: TBitBtn
      Left = 17
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 98
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
