object FrmFasesGrade: TFrmFasesGrade
  Left = 0
  Top = 1
  Caption = 'Montar Fases de Produ'#231#227'o'
  ClientHeight = 489
  ClientWidth = 617
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 33
    Width = 617
    Height = 395
    Align = alClient
    TabOrder = 0
    object GroupBox3: TGroupBox
      Left = 2
      Top = 33
      Width = 613
      Height = 55
      Align = alTop
      TabOrder = 0
      object Label3: TLabel
        Left = 87
        Top = 10
        Width = 31
        Height = 13
        Caption = 'Nome:'
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
        Top = 10
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
        Top = 25
        Width = 412
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = BaseDados_PCP.ds_FasesGrade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 10
        Top = 25
        Width = 67
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CODIGO'
        DataSource = BaseDados_PCP.ds_FasesGrade
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBCheckBox1: TDBCheckBox
        Left = 505
        Top = 27
        Width = 97
        Height = 17
        Hint = 'Imprimir na Ordem de Produ'#231#227'o'
        Caption = 'Imprimir na O.P.'
        DataField = 'IMPRIMEOP'
        DataSource = BaseDados_PCP.ds_FasesGrade
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object GroupBox4: TGroupBox
      Left = 2
      Top = 88
      Width = 613
      Height = 305
      Align = alClient
      Caption = 'Fases de Produ'#231#227'o'
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 2
        Top = 44
        Width = 609
        Height = 259
        Align = alClient
        DataSource = BaseDados_PCP.ds_FasesGradeLista
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Calibri'
        TitleFont.Style = []
        OnEnter = DBGrid1Enter
        OnKeyDown = DBGrid1KeyDown
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'FASE'
            Title.Caption = 'FASE:'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORDEM'
            Title.Caption = 'ORDEM:'
            Width = 71
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'NOME'
            ReadOnly = True
            Title.Caption = 'NOME:'
            Width = 368
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPRIMEOP'
            PickList.Strings = (
              'S'
              'N')
            Title.Caption = 'IMPRIMIR:'
            Width = 62
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 2
        Top = 15
        Width = 609
        Height = 29
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 1
        object BtnCarregar: TSpeedButton
          Left = 8
          Top = 4
          Width = 85
          Height = 22
          Caption = 'Carregar fases'
          OnClick = BtnCarregarClick
        end
        object BtnDeletarLinha: TSpeedButton
          Left = 99
          Top = 4
          Width = 85
          Height = 22
          Caption = 'Deletar linha'
          OnClick = BtnDeletarLinhaClick
        end
        object BtnDeletarTudo: TSpeedButton
          Left = 190
          Top = 4
          Width = 85
          Height = 22
          Caption = 'Deletar tudo'
          OnClick = BtnDeletarTudoClick
        end
      end
    end
    object Navegador: TDBNavigator
      Left = 2
      Top = 15
      Width = 613
      Height = 18
      Cursor = crHandPoint
      DataSource = BaseDados_PCP.ds_FasesGrade
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alTop
      Flat = True
      Hints.Strings = (
        'In'#237'cio do Arquivo'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        'Final do Arquivo')
      Kind = dbnHorizontal
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 428
    Width = 617
    Height = 61
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 428
    ExplicitWidth = 617
    ExplicitHeight = 61
    inherited W7Panel1: TPanel
      Width = 617
      Height = 61
      ExplicitWidth = 617
      ExplicitHeight = 61
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
      end
      inherited SpbImprimir: TSpeedButton
        Visible = False
      end
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
      end
      inherited SpbExcluir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbExcluirClick
      end
      inherited SpbCancelar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbCancelarClick
      end
      inherited SpbSalvar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSalvarClick
      end
      inherited SpbEditar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbEditarClick
      end
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 617
    Height = 33
    Align = alTop
    AutoSize = True
    TabOrder = 2
    ExplicitWidth = 617
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 617
      Height = 33
      ExplicitWidth = 617
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 314
        Caption = 'Montar Fases de Produ'#231#227'o'
        ExplicitWidth = 314
      end
    end
  end
  object dbEditPesquisarFasesGrade: TIDBEditDialog
    Left = 408
    Top = 6
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 3
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
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_FASESGRADE'
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
        DisplayWidth = 90
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
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
  object dbEditPesquisarFases: TIDBEditDialog
    Left = 272
    Top = 230
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 4
    Visible = False
    LabelCaption = 'Fase:'
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
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_FASES'
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
        DisplayWidth = 90
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
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
