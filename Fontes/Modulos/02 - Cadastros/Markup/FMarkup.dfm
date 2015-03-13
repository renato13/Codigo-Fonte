object FrmMarkup: TFrmMarkup
  Left = 1
  Top = 1
  Caption = 'Markup'
  ClientHeight = 387
  ClientWidth = 981
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 981
    Height = 310
    Align = alClient
    TabOrder = 0
    object GroupBox23: TGroupBox
      Left = 1
      Top = 1
      Width = 979
      Height = 308
      Align = alClient
      Caption = 'Markups'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 975
        Height = 291
        Align = alClient
        DataSource = ds_Markup
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'CODIGO'
            ReadOnly = True
            Title.Caption = 'C'#211'DIGO:'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'NOME (IDENTIFICA'#199#195'O):'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARKUP'
            Title.Caption = 'MARKUP:'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ICMS'
            Title.Caption = 'ICMS:         |'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPI'
            Title.Caption = 'IPI:        |'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PUBLICIDADE'
            Title.Caption = 'PUBLICIDADE:'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INADIMPLENCIA'
            Title.Caption = 'INADIMPL'#202'NCIA:'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADMINISTRATIVO'
            Title.Caption = 'ADMINISTRATIVO:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FINANCEIRO'
            Title.Caption = 'FINANCEIRO:'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIS'
            Title.Caption = 'PIS:         |'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COFINS'
            Title.Caption = 'COFINS:'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IR'
            Title.Caption = 'IMPOSTO DE RENDA:'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTACAO'
            Title.Caption = 'IMPORTA'#199#195'O:'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRETE'
            Title.Caption = 'FRETE:'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OUTROSIMPOSTOS'
            Title.Caption = 'OUTROS:'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARGEMLUCRO'
            Title.Caption = 'MARGEM LUCRO:'
            Width = 92
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 346
    Width = 981
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'ok'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 981
    Height = 36
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 981
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 981
      Height = 36
      ExplicitWidth = 981
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 59
        Caption = 'Markup'
        ExplicitWidth = 59
      end
    end
  end
  object db_Markup: TFDQuery
    BeforeOpen = db_MarkupBeforeOpen
    AfterOpen = db_MarkupAfterOpen
    BeforePost = db_MarkupBeforePost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_MARKUP'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'ORDER BY CODIGO')
    Left = 96
    Top = 127
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_MarkupEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_MarkupCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_MarkupNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_MarkupMARKUP: TBCDField
      FieldName = 'MARKUP'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupOUTROSIMPOSTOS: TBCDField
      FieldName = 'OUTROSIMPOSTOS'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupICMS: TBCDField
      FieldName = 'ICMS'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupIPI: TBCDField
      FieldName = 'IPI'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupPUBLICIDADE: TBCDField
      FieldName = 'PUBLICIDADE'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupINADIMPLENCIA: TBCDField
      FieldName = 'INADIMPLENCIA'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupADMINISTRATIVO: TBCDField
      FieldName = 'ADMINISTRATIVO'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupFINANCEIRO: TBCDField
      FieldName = 'FINANCEIRO'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupPIS: TBCDField
      FieldName = 'PIS'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupCOFINS: TBCDField
      FieldName = 'COFINS'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupIR: TBCDField
      FieldName = 'IR'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupIMPORTACAO: TBCDField
      FieldName = 'IMPORTACAO'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupFRETE: TBCDField
      FieldName = 'FRETE'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupMARGEMLUCRO: TBCDField
      FieldName = 'MARGEMLUCRO'
      DisplayFormat = '###,##0.00%'
    end
  end
  object ds_Markup: TDataSource
    DataSet = db_Markup
    Left = 172
    Top = 128
  end
end
