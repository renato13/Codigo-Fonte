object FrmPlanoContas: TFrmPlanoContas
  Left = 215
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Plano de Contas'
  ClientHeight = 550
  ClientWidth = 615
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
  PixelsPerInch = 96
  TextHeight = 13
  object PagePlanoContas: TPageControl
    Left = 0
    Top = 33
    Width = 615
    Height = 459
    ActivePage = Tab_Editar
    Align = alClient
    TabOrder = 0
    object Tab_registros: TTabSheet
      Caption = 'Registros'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid_Principal: TDBGrid
        Left = 0
        Top = 0
        Width = 607
        Height = 431
        Align = alClient
        Color = 14811135
        DataSource = DS_PlanoClasses
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid_PrincipalDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo:'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Title.Caption = 'Classifica'#231#227'o:'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Classes:'
            Width = 408
            Visible = True
          end>
      end
    end
    object Tab_Editar: TTabSheet
      Caption = 'Editar'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 20
        Width = 607
        Height = 411
        Align = alClient
        TabOrder = 1
        object PainelClasse: TPanel
          Left = 2
          Top = 15
          Width = 603
          Height = 75
          Align = alTop
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 1
            Top = 1
            Width = 504
            Height = 73
            Align = alClient
            Caption = 'Classe:'
            TabOrder = 0
            object Label1: TLabel
              Left = 5
              Top = 18
              Width = 36
              Height = 13
              Caption = 'C'#243'digo:'
            end
            object Label2: TLabel
              Left = 90
              Top = 18
              Width = 51
              Height = 13
              Caption = 'Descri'#231#227'o:'
            end
            object EditCodigo: TDBEdit
              Left = 5
              Top = 34
              Width = 79
              Height = 21
              DataField = 'CODIGO'
              DataSource = DS_PlanoClasses
              TabOrder = 0
            end
            object EditNome: TDBEdit
              Left = 90
              Top = 34
              Width = 383
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DESCRICAO'
              DataSource = DS_PlanoClasses
              TabOrder = 1
            end
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 505
            Top = 1
            Width = 97
            Height = 73
            Align = alRight
            Caption = 'Classifica'#231#227'o:'
            DataField = 'TIPO'
            DataSource = DS_PlanoClasses
            Items.Strings = (
              '&Cr'#233'dito'
              '&D'#233'bito'
              '&Nenhum')
            TabOrder = 1
            Values.Strings = (
              'CREDITO'
              'DEBITO'
              '*')
          end
        end
        object GroupBox3: TGroupBox
          Left = 2
          Top = 90
          Width = 603
          Height = 319
          Align = alClient
          Caption = 'Detalhes'
          TabOrder = 1
          object DBGridDetalhes: TDBGrid
            Left = 2
            Top = 15
            Width = 599
            Height = 302
            Hint = 'CTRL + DELETE  -  Excluir Linha'
            Align = alClient
            DataSource = ds_PlanoDetalhes
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnEnter = DBGridDetalhesEnter
            OnKeyDown = DBGridDetalhesKeyDown
            OnKeyPress = DBGridDetalhesKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'CODIGO_PLANO'
                Title.Caption = 'C'#211'DIGO DO PLANO:'
                Width = 149
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'NOME:'
                Width = 315
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                PickList.Strings = (
                  'CREDITO'
                  'DEBITO'
                  '*')
                Title.Caption = 'NATUREZA:'
                Width = 97
                Visible = True
              end>
          end
        end
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 607
        Height = 20
        DataSource = DS_PlanoClasses
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
        TabOrder = 0
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 615
    Height = 33
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 615
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 615
      Height = 33
      ExplicitWidth = 615
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 123
        Caption = 'Plano de Contas'
        ExplicitWidth = 123
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 492
    Width = 615
    Height = 58
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 492
    ExplicitWidth = 615
    inherited W7Panel1: TPanel
      Width = 615
      ExplicitWidth = 615
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
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
  object dbEditPesquisar: TIDBEditDialog
    Left = 126
    Top = 6
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 3
    Text = ''
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
      'SELECT * FROM PLANO_CONTAS_CLASSE'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'C'#211'DIGO:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'NOME:'
        DisplayWidth = 75
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'TIPO'
        WhereSyntax = 'TIPO'
        DisplayLabel = 'TIPO:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scContains
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
  object dbEditPesquisarDetalhe: TIDBEditDialog
    Left = 368
    Top = 6
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 4
    Text = ''
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
      'SELECT * FROM PLANO_CONTAS_DETALHES'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO_PLANO'
        WhereSyntax = 'CODIGO_PLANO'
        DisplayLabel = 'CODIGO PLANO:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'DESCRI'#199#195'O:'
        DisplayWidth = 70
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'TIPO'
        WhereSyntax = 'TIPO'
        DisplayLabel = 'TIPO:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scContains
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
  object DS_PlanoClasses: TDataSource
    AutoEdit = False
    DataSet = DB_PlanoClasses
    Left = 72
    Top = 263
  end
  object DB_PlanoClasses: TFDQuery
    BeforePost = DB_PlanoClassesBeforePost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PLANO_CONTAS_CLASSE')
    Left = 72
    Top = 234
    object DB_PlanoClassesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 30
    end
    object DB_PlanoClassesTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object DB_PlanoClassesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object DB_PlanoClassesVALOR_ACUMULADO: TBCDField
      FieldName = 'VALOR_ACUMULADO'
      DisplayFormat = '###,##0.00'
    end
  end
  object DB_PlanoDetalhes: TFDQuery
    BeforePost = DB_PlanoDetalhesBeforePost
    OnNewRecord = DB_PlanoDetalhesNewRecord
    MasterSource = DS_PlanoClasses
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PLANO_CONTAS_DETALHES'
      'WHERE '
      'CODIGO=:CODIGO'
      'ORDER BY CODIGO_PLANO')
    Left = 176
    Top = 248
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
      end>
    object DB_PlanoDetalhesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 30
    end
    object DB_PlanoDetalhesCODIGO_PLANO: TStringField
      FieldName = 'CODIGO_PLANO'
      Size = 200
    end
    object DB_PlanoDetalhesNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object DB_PlanoDetalhesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object DB_PlanoDetalhesLIMITE: TBCDField
      FieldName = 'LIMITE'
    end
  end
  object ds_PlanoDetalhes: TDataSource
    DataSet = DB_PlanoDetalhes
    Left = 176
    Top = 272
  end
  object db_PlanoChecar: TFDQuery
    MasterSource = DS_PlanoClasses
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PLANO_CONTAS_DETALHES'
      'WHERE '
      'CODIGO_PLANO=:CODIGO_PLANO')
    Left = 376
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO_PLANO'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
