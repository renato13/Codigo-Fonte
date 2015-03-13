object FrmEtiquetasWindows: TFrmEtiquetasWindows
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Etiquetas de Produtos'
  ClientHeight = 475
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 434
    Width = 706
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BtnImprimir: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = BtnImprimirClick
    end
    object BtnSair: TButton
      Left = 97
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 706
    Height = 434
    Align = alClient
    TabOrder = 0
    inline FrmFrameBarra1: TFrmFrameBarra
      Left = 1
      Top = 1
      Width = 704
      Height = 33
      Align = alTop
      TabOrder = 4
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 704
      ExplicitHeight = 33
      inherited W7Panel1: TPanel
        Width = 704
        Height = 33
        ExplicitWidth = 704
        ExplicitHeight = 33
        inherited LblBarraTitulo: TLabel
          Width = 341
          Caption = 'Gerar C'#243'digo de Barras [Jato de Tintas/Laser]'
          ExplicitWidth = 341
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 50
      Width = 704
      Height = 71
      Align = alTop
      Caption = 'Layout da Etiqueta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 414
        Top = 31
        Width = 69
        Height = 22
        Cursor = crHandPoint
        Hint = 'Crie ou Configure suas pr'#243'prias etiquetas...'
        Caption = 'Configurar...'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object ComboEtiquetas: TDBLookupComboBox
        Left = 15
        Top = 32
        Width = 393
        Height = 21
        Cursor = crHandPoint
        DropDownRows = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'DESCRICAO'
        ListField = 'DESCRICAO'
        ListSource = ds_EtiquetasLayout
        NullValueKey = 46
        ParentFont = False
        TabOrder = 0
      end
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 34
      Width = 704
      Height = 16
      Align = alTop
      TabOrder = 5
    end
    object gbxProdutos: TGroupBox
      Left = 1
      Top = 283
      Width = 704
      Height = 75
      Align = alBottom
      Caption = 'Produtos'
      TabOrder = 2
      Visible = False
      object Label1: TLabel
        Left = 541
        Top = 27
        Width = 56
        Height = 13
        Caption = 'Quantidade'
        FocusControl = NumQtdeEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 223
        Top = 27
        Width = 17
        Height = 13
        Caption = 'Cor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 445
        Top = 27
        Width = 44
        Height = 13
        Caption = 'Tamanho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EditReferencia: TLabeledEdit
        Left = 9
        Top = 40
        Width = 208
        Height = 26
        Hint = 'tecle F8'
        AutoSize = False
        Color = clBlack
        EditLabel.Width = 82
        EditLabel.Height = 15
        EditLabel.Caption = 'Refer'#234'ncia (F8)'
        EditLabel.Font.Charset = ANSI_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Calibri'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = EditReferenciaExit
        OnKeyDown = EditReferenciaKeyDown
      end
      object NumQtdeEtiquetas: TSpinEdit
        Left = 541
        Top = 40
        Width = 65
        Height = 28
        AutoSize = False
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 3
        Value = 5
      end
      object EditCor: TDBLookupComboBox
        Left = 223
        Top = 40
        Width = 207
        Height = 26
        Color = clBlack
        DropDownRows = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'COR_CODIGO'
        ListField = 'COR'
        ListSource = dsEtiquetasCor
        ParentFont = False
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 445
        Top = 40
        Width = 72
        Height = 26
        Color = clBlack
        DropDownRows = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'TAMANHO'
        ListField = 'TAMANHO'
        ListSource = dsEtiquetasTamanho
        ParentFont = False
        TabOrder = 2
      end
    end
    object gbxOrdemProducao: TGroupBox
      Left = 1
      Top = 358
      Width = 704
      Height = 75
      Align = alBottom
      Caption = 'Imprimir por Lote de Produ'#231#227'o'
      TabOrder = 3
      Visible = False
      object EditOP: TIDBEditDialog
        Left = 15
        Top = 34
        Width = 80
        Height = 21
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        MaxLength = 30
        TabOrder = 0
        Text = ''
        Visible = True
        LabelCaption = 'Ordem  Produ'#231#227'o'
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
        SQLdbCampoRetorno = 'CODIGO'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT *  FROM VIEW_ORDEMPRODUCAO'
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
            FieldName = 'LOTE'
            WhereSyntax = 'LOTE'
            DisplayLabel = 'LOTE:'
            DisplayWidth = 8
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'DATA'
            WhereSyntax = 'DATA'
            DisplayLabel = 'DATA:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftDateTime
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'DATAFECHAMENTO'
            WhereSyntax = 'DATAFECHAMENTO'
            DisplayLabel = 'FECHAMENTO:'
            DisplayWidth = 13
            DisplayColumnWidth = 0
            FieldType = ftDateTime
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'NATUREZA'
            WhereSyntax = 'NATUREZA'
            DisplayLabel = 'NATUREZA:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'QTDE_TOTAL'
            WhereSyntax = 'QTDE_TOTAL'
            DisplayLabel = 'PRODUZIR:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'QTDE_PRODUZIDA'
            WhereSyntax = 'QTDE_PRODUZIDA'
            DisplayLabel = 'PRODUZIDA:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'QTDE_RESTANTE'
            WhereSyntax = 'QTDE_RESTANTE'
            DisplayLabel = 'RESTANTE:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'QTDE_PERDAS'
            WhereSyntax = 'QTDE_PERDAS'
            DisplayLabel = 'PERDAS:'
            DisplayWidth = 8
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'QTDE_DEFEITOS'
            WhereSyntax = 'QTDE_DEFEITOS'
            DisplayLabel = 'DEFEITOS:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'TEMPO_PRODUCAO'
            WhereSyntax = 'TEMPO_PRODUCAO'
            DisplayLabel = 'TEMPO:'
            DisplayWidth = 7
            DisplayColumnWidth = 0
            FieldType = ftFloat
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'PERCENTUAL'
            WhereSyntax = 'PERCENTUAL'
            DisplayLabel = 'CONCLUIDO:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftFloat
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'AUTORIZADO'
            WhereSyntax = 'AUTORIZADO'
            DisplayLabel = 'AUTORIZADO:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'STATUS'
            WhereSyntax = 'STATUS'
            DisplayLabel = 'STATUS:'
            DisplayWidth = 8
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'ENCERRADO'
            WhereSyntax = 'ENCERRADO'
            DisplayLabel = 'ENCERRADO:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end>
        SearchPresetList = <>
        DialogCaption = 'Pesquisa'
        DialogWidth = 1000
        DialogHeight = 0
        Store = dsFields
        CompareFormatDate = 'DDMMYYYY'
        CompareFormatTime = 'HHMMSS'
        CompareFormatDateTime = 'DDMMYYYY'
        TrueExpression = '1=1'
        DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
        Connection = FrmPrincipal.DBConexao
      end
    end
    object rdpFiltro: TRadioGroup
      Left = 1
      Top = 121
      Width = 704
      Height = 162
      Align = alClient
      ItemIndex = 0
      Items.Strings = (
        'Com base na quantidade em estoque'
        'Ordem de Produ'#231#227'o'
        'Imprimir uma Refer'#234'ncia por vez'
        'Criar grade de impress'#245'es')
      TabOrder = 1
      OnClick = rdpFiltroClick
    end
  end
  object dbProcurarFichaTecnica: TIDBEditDialog
    Left = 560
    Top = 65
    Width = 65
    Height = 21
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = ''
    Visible = False
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = '.'
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
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO='#39'TRANSPORTADORA'#39
      'AND'
      'CODIGO=:CODIGO'
      ''
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT *  FROM VIEW_REFERENCIAS'
      'WHERE'
      'TIPO_PRODUTO IN ('#39'ACA'#39','#39'ACABADO'#39')'
      'AND'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'REFERENCIA'
        WhereSyntax = 'REFERENCIA'
        DisplayLabel = 'REFER'#202'NCIA:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'DESCRI'#199#195'O:'
        DisplayWidth = 45
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'GRUPO_NOME'
        WhereSyntax = 'GRUPO_NOME'
        DisplayLabel = 'GRUPO:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'SUBGRUPO_NOME'
        WhereSyntax = 'SUBGRUPO_NOME'
        DisplayLabel = 'SUBGRUPO:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'PRC_CUSTO'
        WhereSyntax = 'PRC_CUSTO'
        DisplayLabel = 'PRE'#199'O CUSTO:'
        DisplayFormat = '###,##0.0000'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VALOR_VENDA'
        WhereSyntax = 'VALOR_VENDA'
        DisplayLabel = 'PRE'#199'O VENDA:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 900
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
  object ds_EtiquetasLayout: TDataSource
    DataSet = db_EtiquetasLayout
    Left = 200
    Top = 32
  end
  object db_EtiquetasLayout: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  * FROM CONFIG_ETIQUETAS_LAYOUTS'
      '')
    Left = 288
    Top = 32
  end
  object db_lista: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select * from CONFIG_ETIQUETAS01_TEMP')
    Left = 247
    Top = 239
    object db_listaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_listaCODIGOFORNECEDOR: TStringField
      FieldName = 'CODIGOFORNECEDOR'
      Size = 30
    end
    object db_listaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 200
    end
    object db_listaGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object db_listaCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Size = 30
    end
    object db_listaCODIGOPRODUTO: TStringField
      FieldName = 'CODIGOPRODUTO'
      Size = 30
    end
    object db_listaCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_listaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_listaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 30
    end
    object db_listaPRECO: TBCDField
      FieldName = 'PRECO'
    end
    object db_listaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
  end
  object DB_Produtos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM COMPRAS_ITENS ')
    Left = 263
    Top = 135
  end
  object DS_Produtos: TDataSource
    DataSet = DB_Produtos
    Left = 199
    Top = 135
  end
  object frxDBListaProdutos: TfrxDBDataset
    UserName = 'frxDBListaProdutos'
    CloseDataSource = False
    DataSet = db_lista
    BCDToCurrency = False
    Left = 464
    Top = 136
  end
  object frxDBEtiquetas: TfrxDBDataset
    UserName = 'frxDBEtiquetas'
    CloseDataSource = False
    DataSet = db_EtiquetasLayout
    BCDToCurrency = False
    Left = 392
    Top = 136
  end
  object frxReport1: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40981.578413865700000000
    ReportOptions.LastChange = 40983.699382013900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '  '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      '  MasterData1.Height               :=<col_comprimento>;'
      ' // MasterData1.ColumnGap            :=<col_distancia>;'
      ''
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  CODIGO DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_CodigoProduto.left        :=<prd_coluna>;'
      '   campo_CodigoProduto.top         :=<prd_linha>;'
      '   campo_CodigoProduto.Width       :=<prd_largura>;'
      '   campo_CodigoProduto.Height      :=<prd_comprimento>;'
      '   campo_CodigoProduto.Visible     :=<prd_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  CODIGO DE BARRAS DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_CodigoBarras.left         :=<cb_coluna>;'
      '   campo_CodigoBarras.top          :=<cb_linha>;'
      '   campo_CodigoBarras.Width        :=<cb_largura>;'
      '   campo_CodigoBarras.Height       :=<cb_comprimento>;'
      '   campo_CodigoBarras.Visible      :=<cb_visivel>;'
      '   campo_CodigoBarras.BarType      :=<cb_tipo>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  DESCRICA'#199#195'O DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_DescricaoProduto.left     :=<dsc_coluna>;'
      '   campo_DescricaoProduto.top      :=<dsc_linha>;'
      '   campo_DescricaoProduto.Width    :=<dsc_largura>;'
      '   campo_DescricaoProduto.Height   :=<dsc_comprimento>;'
      '   campo_DescricaoProduto.Visible  :=<dsc_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  UNIDADE DE MEDIDA DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_UnidadeMedida.left        :=<und_coluna>;'
      '   campo_UnidadeMedida.top         :=<und_linha>;'
      '   campo_UnidadeMedida.Width       :=<und_largura>;'
      '   campo_UnidadeMedida.Height      :=<und_comprimento>;'
      '   campo_UnidadeMedida.Visible     :=<und_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  TAMANHO DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_Tamanho.left              :=<tam_coluna>;'
      '   campo_Tamanho.top               :=<tam_linha>;'
      '   campo_Tamanho.Width             :=<tam_largura>;'
      '   campo_Tamanho.Height            :=<tam_comprimento>;'
      '   campo_Tamanho.Visible           :=<tam_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  VALOR (PRE'#199'O DE VENDA) DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_ValorProduto.left         :=<vlr_coluna>;'
      '   campo_ValorProduto.top          :=<vlr_linha>;'
      '   campo_ValorProduto.Width        :=<vlr_largura>;'
      '   campo_ValorProduto.Height       :=<vlr_comprimento>;'
      '   campo_ValorProduto.Visible      :=<vlr_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  FORNECEDOR DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_Fornecedor.left           :=<frn_coluna>;'
      '   campo_Fornecedor.top            :=<frn_linha>;'
      '   campo_Fornecedor.Width          :=<frn_largura>;'
      '   campo_Fornecedor.Height         :=<frn_comprimento>;'
      '   campo_Fornecedor.Visible        :=<frn_visivel>;'
      ''
      '        '
      ''
      '    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 32
    Top = 136
    Datasets = <
      item
        DataSet = frxDBEtiquetas
        DataSetName = 'frxDBEtiquetas'
      end
      item
        DataSet = frxDBListaProdutos
        DataSetName = 'frxDBListaProdutos'
      end>
    Variables = <
      item
        Name = ' pagina'
        Value = Null
      end
      item
        Name = 'pg_largura'
        Value = Null
      end
      item
        Name = 'pg_comprimento'
        Value = Null
      end
      item
        Name = ' margens'
        Value = Null
      end
      item
        Name = 'mg_topo'
        Value = Null
      end
      item
        Name = 'mg_rodape'
        Value = Null
      end
      item
        Name = 'mg_esquerda'
        Value = Null
      end
      item
        Name = 'mg_direita'
        Value = Null
      end
      item
        Name = ' fontes'
        Value = Null
      end
      item
        Name = 'fnt_nome'
        Value = Null
      end
      item
        Name = 'fnt_tamanho'
        Value = Null
      end
      item
        Name = ' colunas'
        Value = Null
      end
      item
        Name = 'col_quantidades'
        Value = Null
      end
      item
        Name = 'col_largura'
        Value = Null
      end
      item
        Name = 'col_comprimento'
        Value = Null
      end
      item
        Name = 'col_distancia'
        Value = Null
      end
      item
        Name = ' campo_codigobarras'
        Value = Null
      end
      item
        Name = 'cb_largura'
        Value = Null
      end
      item
        Name = 'cb_comprimento'
        Value = Null
      end
      item
        Name = 'cb_coluna'
        Value = Null
      end
      item
        Name = 'cb_linha'
        Value = Null
      end
      item
        Name = 'cb_visivel'
        Value = Null
      end
      item
        Name = 'cb_tipo'
        Value = ''
      end
      item
        Name = ' campo_descricao'
        Value = Null
      end
      item
        Name = 'dsc_largura'
        Value = Null
      end
      item
        Name = 'dsc_comprimento'
        Value = Null
      end
      item
        Name = 'dsc_coluna'
        Value = Null
      end
      item
        Name = 'dsc_linha'
        Value = Null
      end
      item
        Name = 'dsc_visivel'
        Value = Null
      end
      item
        Name = ' campo_fornecedor'
        Value = Null
      end
      item
        Name = 'frn_largura'
        Value = Null
      end
      item
        Name = 'frn_comprimento'
        Value = Null
      end
      item
        Name = 'frn_coluna'
        Value = Null
      end
      item
        Name = 'frn_linha'
        Value = Null
      end
      item
        Name = 'frn_visivel'
        Value = Null
      end
      item
        Name = ' campo_codigoproduto'
        Value = Null
      end
      item
        Name = 'prd_largura'
        Value = Null
      end
      item
        Name = 'prd_comprimento'
        Value = Null
      end
      item
        Name = 'prd_coluna'
        Value = Null
      end
      item
        Name = 'prd_linha'
        Value = Null
      end
      item
        Name = 'prd_visivel'
        Value = Null
      end
      item
        Name = ' campo_tamanho'
        Value = Null
      end
      item
        Name = 'tam_largura'
        Value = Null
      end
      item
        Name = 'tam_comprimento'
        Value = Null
      end
      item
        Name = 'tam_coluna'
        Value = Null
      end
      item
        Name = 'tam_linha'
        Value = Null
      end
      item
        Name = 'tam_visivel'
        Value = Null
      end
      item
        Name = ' campo_valor'
        Value = Null
      end
      item
        Name = 'vlr_largura'
        Value = Null
      end
      item
        Name = 'vlr_comprimento'
        Value = Null
      end
      item
        Name = 'vlr_coluna'
        Value = Null
      end
      item
        Name = 'vlr_linha'
        Value = Null
      end
      item
        Name = 'vlr_visivel'
        Value = Null
      end
      item
        Name = ' campo_unidade'
        Value = Null
      end
      item
        Name = 'und_largura'
        Value = ''
      end
      item
        Name = 'und_comprimento'
        Value = ''
      end
      item
        Name = 'und_coluna'
        Value = ''
      end
      item
        Name = 'und_linha'
        Value = ''
      end
      item
        Name = 'und_visivel'
        Value = ''
      end>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial Narrow'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 1.000000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 3.400000000000000000
      BottomMargin = 3.400000000000000000
      ColumnWidth = 213.900000000000000000
      ColumnPositions.Strings = (
        '0')
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 192.000000000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 808.441467000000000000
        DataSet = frxDBListaProdutos
        DataSetName = 'frxDBListaProdutos'
        RowCount = 0
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 808.441467000000000000
          Height = 192.000000000000000000
          Frame.Color = clWhite
        end
        object campo_CodigoBarras: TfrxBarCodeView
          Left = 7.559055120000000000
          Top = 22.118120000000000000
          Width = 103.000000000000000000
          Height = 26.456697800000000000
          Visible = False
          BarType = bcCode39
          DataField = 'CODIGOBARRA'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Expression = '<ListaProdutos."CODIGOBARRA">'
          Rotation = 0
          Text = 'SG-309'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
        end
        object campo_CodigoProduto: TfrxMemoView
          Left = 7.559055120000000000
          Top = 3.779527560000000000
          Width = 188.976377950000000000
          Height = 15.117973540000000000
          DataField = 'CODIGOPRODUTO'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBListaProdutos."CODIGOPRODUTO"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_Tamanho: TfrxMemoView
          Left = 7.559055120000000000
          Top = 76.827180000000000000
          Width = 123.212276220000000000
          Height = 15.117973540000000000
          Visible = False
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBListaProdutos."COR"] / [frxDBListaProdutos."TAMANHO"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_UnidadeMedida: TfrxMemoView
          Left = 139.842605120000000000
          Top = 77.929530000000000000
          Width = 58.960266220000000000
          Height = 15.117973540000000000
          Visible = False
          DataField = 'UNIDADE'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBListaProdutos."UNIDADE"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_ValorProduto: TfrxMemoView
          Left = 7.559055120000000000
          Top = 95.150000000000000000
          Width = 58.960266220000000000
          Height = 15.117973540000000000
          Visible = False
          DataField = 'PRECO'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBListaProdutos."PRECO"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_DescricaoProduto: TfrxMemoView
          Left = 7.559055120000000000
          Top = 58.370130000000000000
          Width = 188.976377950000000000
          Height = 15.117973540000000000
          DataField = 'DESCRICAO'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBListaProdutos."DESCRICAO"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_Fornecedor: TfrxMemoView
          Left = 7.559055120000000000
          Top = 112.315090000000000000
          Width = 188.976377950000000000
          Height = 15.117973540000000000
          Visible = False
          DataField = 'FORNECEDOR'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBListaProdutos."FORNECEDOR"]')
          ParentFont = False
          Style = 'Data'
        end
      end
    end
  end
  object ds_lista: TDataSource
    DataSet = db_lista
    Left = 320
    Top = 240
  end
  object dsEtiquetasTamanho: TDataSource
    DataSet = dbEtiquetasTamanho
    Left = 616
    Top = 120
  end
  object dbEtiquetasTamanho: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT DISTINCT TAMANHO, TAMANHO_ORDEM  FROM VIEW_ETIQUETASPRODU' +
        'TOS'
      'WHERE'
      'REFERENCIA=:SREFERENCIA '
      'AND'
      'COR_CODIGO=:NCOR'
      ''
      'ORDER BY TAMANHO_ORDEM')
    Left = 616
    Top = 64
    ParamData = <
      item
        Name = 'SREFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'NCOR'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsEtiquetasCor: TDataSource
    DataSet = dbEtiquetasCor
    Left = 504
    Top = 120
  end
  object dbEtiquetasCor: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT DISTINCT COR, COR_CODIGO, DESCRICAO   FROM VIEW_ETIQUETAS' +
        'PRODUTOS'
      'WHERE'
      'REFERENCIA=:SREFERENCIA'
      ''
      'ORDER BY COR')
    Left = 496
    Top = 56
    ParamData = <
      item
        Name = 'SREFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object db_TipoProduto: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS_TIPO')
    Left = 616
    Top = 168
  end
  object DS_TipoProduto: TDataSource
    AutoEdit = False
    DataSet = db_TipoProduto
    Left = 616
    Top = 192
  end
end
