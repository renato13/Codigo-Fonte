object FrmProdutosGrade: TFrmProdutosGrade
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Grade de Produtos'
  ClientHeight = 416
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 375
    Width = 767
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 9
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 375
    Align = alClient
    TabOrder = 0
    object GroupBox6: TGroupBox
      Left = 1
      Top = 51
      Width = 765
      Height = 323
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object GroupBox16: TGroupBox
        Left = 2
        Top = 15
        Width = 360
        Height = 306
        Align = alLeft
        Caption = 'Grade de Tamanhos'
        TabOrder = 0
        object DBGrid4: TDBGrid
          Left = 2
          Top = 15
          Width = 356
          Height = 289
          Cursor = crNo
          Align = alClient
          DataSource = ds_GradeLista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'TAMANHO'
              Title.Caption = 'Tamanho:'
              Width = 67
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'Nometamanho'
              Title.Caption = 'Descri'#231#227'o:'
              Width = 251
              Visible = True
            end>
        end
      end
      object GroupBox1: TGroupBox
        Left = 362
        Top = 15
        Width = 401
        Height = 306
        Align = alClient
        Caption = 'Grade de Cores'
        TabOrder = 1
        object GridGradeCores: TDBGrid
          Left = 2
          Top = 15
          Width = 397
          Height = 289
          Align = alClient
          DataSource = ds_Cores_Modelos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEditButtonClick = GridGradeCoresEditButtonClick
          OnKeyDown = GridGradeCoresKeyDown
          OnKeyPress = GridGradeCoresKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'ID_COR'
              Title.Caption = 'C'#243'digo:'
              Width = 42
              Visible = True
            end
            item
              Color = clWhite
              Expanded = False
              FieldName = 'NOME'
              ReadOnly = True
              Title.Caption = 'Descri'#231#227'o:'
              Width = 320
              Visible = True
            end>
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 765
      Height = 50
      Align = alTop
      TabOrder = 1
      object EditGrade: TIDBEditDialog
        Left = 8
        Top = 20
        Width = 49
        Height = 21
        Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        ShowHint = True
        TabOrder = 0
        Text = ''
        Visible = True
        OnChange = EditGradeChange
        LabelCaption = 'Grade/Tamanhos:'
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
        DataField = 'GRADE'
        DataSource = FrmProdutos.DS_Referencia
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeGrade
        SQLdbCampoRetorno = 'DESCRICAO '
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT DESCRICAO FROM CAD_GRADE'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_GRADE'
          'WHERE'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM CAD_GRADE'
          'WHERE'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'DESCRICAO'
            WhereSyntax = 'DESCRICAO'
            DisplayLabel = 'Nome:'
            DisplayWidth = 80
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'C'#243'digo:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = True
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
      object EditNomeGrade: TEdit
        Left = 59
        Top = 20
        Width = 623
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 1
      end
    end
  end
  object dbEditPesquisarCores: TIDBEditDialog
    Left = 336
    Top = 381
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 2
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
      'SELECT * FROM CAD_CORES'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'C'#211'DIGO:'
        DisplayWidth = 10
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
        DisplayWidth = 60
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'COR'
        WhereSyntax = 'COR'
        DisplayLabel = 'COR:'
        DisplayWidth = 30
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
  object db_GradeLista: TFDQuery
    MasterSource = FrmProdutos.DS_Referencia
    MasterFields = 'GRADE'
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM CAD_GRADELISTA'
      'WHERE'
      'CODIGO=:GRADE')
    Left = 104
    Top = 160
    ParamData = <
      item
        Name = 'GRADE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_GradeListaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_GradeListaID_TAMANHO: TIntegerField
      FieldName = 'ID_TAMANHO'
    end
    object db_GradeListaORDEM: TStringField
      FieldName = 'ORDEM'
      Size = 30
    end
    object db_GradeListaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_GradeListaNometamanho: TStringField
      FieldKind = fkLookup
      FieldName = 'Nometamanho'
      LookupDataSet = BaseDados_PCP.DB_Cad_Tamanhos
      LookupKeyFields = 'TAMANHO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TAMANHO'
      Size = 100
      Lookup = True
    end
    object db_GradeListaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
  end
  object ds_GradeLista: TDataSource
    DataSet = db_GradeLista
    Left = 192
    Top = 160
  end
  object db_Cores_Modelos: TFDQuery
    BeforePost = db_Cores_ModelosBeforePost
    MasterSource = FrmProdutos.DS_Referencia
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  PCP_CORES'
      'WHERE'
      ''
      'CODIGO=:CODIGO')
    Left = 480
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        Size = 4
        Value = Null
      end>
    object db_Cores_ModelosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_Cores_ModelosID_COR: TIntegerField
      FieldName = 'ID_COR'
      OnChange = db_Cores_ModelosID_CORChange
    end
    object db_Cores_ModelosNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object ds_Cores_Modelos: TDataSource
    DataSet = db_Cores_Modelos
    Left = 480
    Top = 208
  end
  object SP_ExisteCor: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SP_EXISTECOR'
    Left = 576
    Top = 208
    ParamData = <
      item
        Name = 'RETORNO'
        DataType = ftString
        ParamType = ptResult
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_COR'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SP_NomeCor: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SP_BUSCA_NOMECOR'
    Left = 576
    Top = 152
    ParamData = <
      item
        Name = 'NOME_COR'
        DataType = ftString
        ParamType = ptResult
      end
      item
        Name = 'ID_COR'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
