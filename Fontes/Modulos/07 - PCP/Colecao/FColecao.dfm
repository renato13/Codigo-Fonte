object FrmColecao: TFrmColecao
  Left = 237
  Top = 114
  Caption = 'Cole'#231#227'o'
  ClientHeight = 305
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 57
    Width = 648
    Height = 189
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 163
    object Label1: TLabel
      Left = 10
      Top = 25
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
    object Label5: TLabel
      Left = 14
      Top = 41
      Width = 3
      Height = 14
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 82
      Top = 25
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = EditNOME
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 145
      Top = 72
      Width = 129
      Height = 13
      Caption = 'Meta de Produ'#231#227'o (pe'#231'as):'
    end
    object Label8: TLabel
      Left = 297
      Top = 72
      Width = 104
      Height = 13
      Caption = 'Meta de Faturamento:'
    end
    object Label2: TLabel
      Left = 10
      Top = 72
      Width = 112
      Height = 13
      Caption = 'Quantidade de modelos'
    end
    object DBEdit2: TDBEdit
      Left = 10
      Top = 40
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      Color = 14811135
      DataField = 'CODIGO'
      DataSource = BaseDados_PCP.ds_colecao
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EditNOME: TDBEdit
      Left = 82
      Top = 40
      Width = 411
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = BaseDados_PCP.ds_colecao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox2: TGroupBox
      Left = 492
      Top = 15
      Width = 154
      Height = 172
      Align = alRight
      Caption = 'Periodo vigente da cole'#231#227'o:'
      TabOrder = 5
      ExplicitHeight = 146
      object Label4: TLabel
        Left = 18
        Top = 14
        Width = 27
        Height = 13
        Caption = 'In'#237'cio'
      end
      object Label6: TLabel
        Left = 18
        Top = 57
        Width = 41
        Height = 13
        Caption = 'T'#233'rmino:'
      end
      object DBEdit1: TDBEdit
        Left = 18
        Top = 30
        Width = 88
        Height = 21
        DataField = 'PERIODO_INI'
        DataSource = BaseDados_PCP.ds_colecao
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 18
        Top = 73
        Width = 88
        Height = 21
        DataField = 'PERIODO_FIM'
        DataSource = BaseDados_PCP.ds_colecao
        TabOrder = 1
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 2
        Top = 114
        Width = 150
        Height = 56
        Align = alBottom
        Caption = 'Status da Cole'#231#227'o:'
        Columns = 2
        DataField = 'STATUS'
        DataSource = BaseDados_PCP.ds_colecao
        Items.Strings = (
          'Ativo'
          'Inativo')
        ParentBackground = True
        TabOrder = 2
        Values.Strings = (
          'S'
          'N')
        ExplicitTop = 88
      end
    end
    object DBEdit4: TDBEdit
      Left = 145
      Top = 88
      Width = 129
      Height = 21
      DataField = 'PECAS_META'
      DataSource = BaseDados_PCP.ds_colecao
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 297
      Top = 88
      Width = 129
      Height = 21
      DataField = 'VALOR_META'
      DataSource = BaseDados_PCP.ds_colecao
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 10
      Top = 88
      Width = 129
      Height = 21
      Hint = 'Quantidade de modelos diferentes que ser'#227'o produzidos'
      DataField = 'QTDE_MODELOS'
      DataSource = BaseDados_PCP.ds_colecao
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 246
    Width = 648
    Height = 59
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 220
    ExplicitWidth = 648
    ExplicitHeight = 59
    inherited W7Panel1: TPanel
      Width = 648
      Height = 59
      ExplicitWidth = 648
      ExplicitHeight = 59
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
    Width = 648
    Height = 33
    Align = alTop
    AutoSize = True
    TabOrder = 2
    ExplicitWidth = 648
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 648
      Height = 33
      ExplicitWidth = 648
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 648
        Height = 33
        Caption = 'Cadastro de Cole'#231#227'o'
        ExplicitWidth = 125
      end
    end
  end
  object Navegador: TDBNavigator
    Left = 0
    Top = 33
    Width = 648
    Height = 24
    Cursor = crHandPoint
    DataSource = BaseDados_PCP.ds_colecao
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
    Left = 510
    Top = 8
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
      'SELECT * FROM CAD_COLECAO'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'C'#243'digo:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'Nome:'
        DisplayWidth = 40
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'PERIODO_INI'
        WhereSyntax = 'PERIODO_INI'
        DisplayLabel = 'Periodo de:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDate
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'PERIODO_FIM'
        WhereSyntax = 'PERIODO_FIM'
        DisplayLabel = 'Periodo at'#233':'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDate
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'PECAS_META'
        WhereSyntax = 'PECAS_META'
        DisplayLabel = 'Produ'#231#227'o Estimada:'
        DisplayFormat = '###,##0'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'STATUS'
        WhereSyntax = 'STATUS'
        DisplayLabel = 'Ativa'
        DisplayWidth = 10
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
