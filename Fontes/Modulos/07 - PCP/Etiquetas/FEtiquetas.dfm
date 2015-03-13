object FrmEtiquetas: TFrmEtiquetas
  Left = 0
  Top = 1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Etiquetas'
  ClientHeight = 462
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 57
    Width = 570
    Height = 343
    Align = alClient
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 2
      Top = 79
      Width = 566
      Height = 262
      Align = alClient
      Caption = '[ Instru'#231#245'es: ]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 238
        Height = 204
        Align = alLeft
        DataField = 'COMPOSICAO'
        DataSource = BaseDados_PCP.ds_etiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object GroupBox4: TGroupBox
        Left = 240
        Top = 15
        Width = 324
        Height = 204
        Align = alClient
        Caption = 'Grade de Composi'#231#227'o'
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 320
          Height = 187
          Align = alClient
          DataSource = BaseDados_PCP.ds_etiquetasDetalhes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DBGrid1Enter
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'COMPOSICAO'
              Title.Caption = 'Descri'#231#227'o:'
              Width = 182
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERCENTUAL'
              Title.Caption = 'Percentual (%):'
              Width = 91
              Visible = True
            end>
        end
      end
      object Panel1: TPanel
        Left = 2
        Top = 219
        Width = 562
        Height = 41
        Align = alBottom
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 2
        object DBEdit1: TDBEdit
          Left = 463
          Top = 6
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          Color = 14811135
          Ctl3D = True
          DataField = 'TOTAL'
          DataSource = BaseDados_PCP.ds_etiquetas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 15
      Width = 566
      Height = 64
      Align = alTop
      TabOrder = 1
      object Label3: TLabel
        Left = 87
        Top = 15
        Width = 51
        Height = 13
        Caption = 'Descri'#231#227'o:'
        FocusControl = EditNome
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 10
        Top = 15
        Width = 33
        Height = 13
        Caption = '&C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object EditNome: TDBEdit
        Left = 87
        Top = 30
        Width = 450
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = BaseDados_PCP.ds_etiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 10
        Top = 30
        Width = 67
        Height = 21
        CharCase = ecUpperCase
        Color = 14811135
        DataField = 'CODIGO'
        DataSource = BaseDados_PCP.ds_etiquetas
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 400
    Width = 570
    Height = 62
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 400
    ExplicitWidth = 570
    ExplicitHeight = 62
    inherited W7Panel1: TPanel
      Width = 570
      Height = 62
      ExplicitWidth = 570
      ExplicitHeight = 62
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
      end
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 570
    Height = 33
    Align = alTop
    AutoSize = True
    TabOrder = 2
    ExplicitWidth = 570
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 570
      Height = 33
      ExplicitWidth = 570
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 570
        Height = 33
        Caption = 'Configura'#231#227'o de Etiquetas de Produtos'
        ExplicitWidth = 238
      end
    end
  end
  object Navegador: TDBNavigator
    Left = 0
    Top = 33
    Width = 570
    Height = 24
    Cursor = crHandPoint
    DataSource = BaseDados_PCP.ds_etiquetas
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alTop
    Flat = True
    Hints.Strings = (
      'In'#237'cio do Arquivo'
      'Registro Anterior'
      'Pr'#243'ximo Registro'
      'Final do Arquivo')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object dbEditPesquisar: TIDBEditDialog
    Left = 457
    Top = 6
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 4
    Visible = False
    LabelCaption = 'Cole'#231#227'o:'
    LabelAlwaysEnabled = True
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Version = '5.0.0.0'
    ButtonStyle = bsButton
    ButtonWidth = 16
    ButtonHint = 'Procurar...'
    Etched = False
    ButtonCaption = '...'
    DataField = 'COLECAO'
    DataSource = BaseDados_PCP.ds_referencias
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT NOME FROM CAD_COLECAO'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_ETIQUETAS'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'C'#211'DIGO:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'NOME:'
        DisplayWidth = 70
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'TOTAL'
        WhereSyntax = 'TOTAL'
        DisplayLabel = 'COMPOSI'#199#195'O:'
        DisplayFormat = '###,##0%'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 0
    DialogHeight = 0
    Store = dsFields
    CompareFormatDate = 'DDMMYYYY'
    CompareFormatTime = 'HHMMSS'
    CompareFormatDateTime = 'DDMMYYYY'
    TrueExpression = '1=1'
    DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
    ConnectionDialog = FrmPrincipal.DBConexao
    Connection = FrmPrincipal.DBConexao
  end
end
