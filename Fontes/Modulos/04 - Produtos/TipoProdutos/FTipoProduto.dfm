object FrmTipoProduto: TFrmTipoProduto
  Left = 241
  Top = 113
  BorderStyle = bsDialog
  Caption = 'Tipos de Produtos'
  ClientHeight = 481
  ClientWidth = 527
  Color = clBtnFace
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 422
    Top = 49
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 33
    Width = 527
    Height = 384
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 126
      Top = 25
      Width = 48
      Height = 13
      Caption = '&Descri'#231#227'o'
      FocusControl = EditNOME
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
    object Label1: TLabel
      Left = 10
      Top = 25
      Width = 102
      Height = 13
      Caption = '&C'#243'digo (alfanum'#233'rico)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditNOME: TDBEdit
      Left = 126
      Top = 40
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DS_TipoProduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EditCodigo: TDBEdit
      Left = 10
      Top = 40
      Width = 110
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODIGO'
      DataSource = DS_TipoProduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 67
      Width = 523
      Height = 315
      Align = alBottom
      Caption = 'GroupBox2'
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 519
        Height = 298
        Align = alClient
        DataSource = DS_TipoProduto
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Descri'#231#227'o'
            Width = 381
            Visible = True
          end>
      end
      object LocalizarTipoProduto: TIDBEditDialog
        Left = 264
        Top = 193
        Width = 65
        Height = 21
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        TabOrder = 1
        Text = ''
        Visible = False
        LabelCaption = 'C'#243'digo da M'#225'quina'
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
        SQLdbFazBusca = True
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_MAQUINAS'
          'WHERE'
          'CODIGO=:CODIGO')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_PRODUTOS_TIPO'
          'WHERE'
          '%WHERE%'
          'ORDER BY NOME'
          '')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM CAD_PRODUTOS_TIPO'
          'WHERE'
          '%WHERE%'
          'ORDER BY NOME')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'C'#243'digo:'
            DisplayWidth = 15
            DisplayColumnWidth = 0
            FieldType = ftWideString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scMixed
          end
          item
            FieldName = 'NOME'
            WhereSyntax = 'NOME'
            DisplayLabel = 'Nome:'
            DisplayWidth = 88
            DisplayColumnWidth = 0
            FieldType = ftWideString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scBeginsWith
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
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 527
    Height = 33
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 527
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 527
      Height = 33
      ExplicitWidth = 527
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 194
        Caption = 'Classifica'#231#227'o de Produtos'
        ExplicitWidth = 194
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 417
    Width = 527
    Height = 64
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 417
    ExplicitWidth = 527
    ExplicitHeight = 64
    inherited W7Panel1: TPanel
      Width = 527
      Height = 64
      ExplicitWidth = 527
      ExplicitHeight = 64
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
  object db_TipoProduto: TFDQuery
    BeforePost = db_TipoProdutoBeforePost
    OnDeleteError = db_TipoProdutoDeleteError
    OnEditError = db_TipoProdutoEditError
    OnPostError = db_TipoProdutoPostError
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS_TIPO')
    Left = 368
    Top = 32
  end
  object DS_TipoProduto: TDataSource
    AutoEdit = False
    DataSet = db_TipoProduto
    Left = 368
    Top = 64
  end
end
