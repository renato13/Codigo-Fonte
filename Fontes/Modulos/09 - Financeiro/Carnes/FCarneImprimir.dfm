object FrmCarneImprimir: TFrmCarneImprimir
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Carn'#234's para Pagamento'
  ClientHeight = 424
  ClientWidth = 970
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 970
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 970
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 970
      Height = 33
      ExplicitWidth = 970
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 156
        Caption = 'Impress'#227'o de Carn'#234's'
        ExplicitWidth = 156
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 384
    Width = 970
    Height = 40
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      970
      40)
    object BitBtn1: TBitBtn
      Left = 7
      Top = 6
      Width = 95
      Height = 25
      Caption = 'Gerar Carn'#234's..'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BtnSair: TBitBtn
      Left = 879
      Top = 6
      Width = 80
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = BtnSairClick
    end
    object BitBtn9: TBitBtn
      Left = 106
      Top = 6
      Width = 98
      Height = 25
      Caption = 'Enviar por e-Mail'
      Enabled = False
      TabOrder = 2
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 970
    Height = 351
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 968
      Height = 41
      Align = alTop
      TabOrder = 0
      object BitBtn10: TBitBtn
        Left = 16
        Top = 8
        Width = 151
        Height = 25
        Caption = 'F8 - Procurar Venda... '
        TabOrder = 0
        OnClick = BitBtn10Click
      end
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 42
      Width = 968
      Height = 308
      Align = alClient
      DataSource = ds_ctaReceber
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOTAFISCAL'
          Title.Caption = 'Nota Fiscal:'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data:'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Caption = 'Documento:'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Caption = 'Vencimento:'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOSSONUMERO'
          Title.Caption = 'Nosso N'#250'mero:'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CLIENTE'
          Title.Caption = 'Cliente:'
          Width = 281
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLN_CONTA_NOME'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Plano de Contas:'
          Width = 151
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUITADO'
          Title.Caption = 'Quitado:'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor:'
          Width = 93
          Visible = True
        end>
    end
  end
  object dbDlgProcurar: TIDBEditDialog
    Left = 571
    Top = 393
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
    TabOrder = 3
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
      'SELECT *  FROM VIEW_FIN_CTAPAGAR '
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'DOCUMENTO'
        WhereSyntax = 'DOCUMENTO'
        DisplayLabel = 'DOCUMENTO:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'NOTAFISCAL'
        WhereSyntax = 'NOTAFISCAL'
        DisplayLabel = 'NOTA FISCAL:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scUpper
      end
      item
        FieldName = 'NOSSONUMERO'
        WhereSyntax = 'NOSSONUMERO'
        DisplayLabel = 'NOSSO NUMERO:'
        DisplayWidth = 17
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'DATA'
        WhereSyntax = 'DATA'
        DisplayLabel = 'DATA:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VENCIMENTO'
        WhereSyntax = 'VENCIMENTO'
        DisplayLabel = 'VENCIMENTO:'
        DisplayWidth = 13
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VALOR'
        WhereSyntax = 'VALOR'
        DisplayLabel = 'VALOR:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NOME_FORNECEDOR'
        WhereSyntax = 'NOME_FORNECEDOR'
        DisplayLabel = 'FORNECEDOR:'
        DisplayWidth = 60
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 965
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
  object ds_ctaReceber: TDataSource
    AutoEdit = False
    DataSet = db_ctaReceber
    Left = 579
    Top = 172
  end
  object db_ctaReceber: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM VIEW_BOLETOS'
      'WHERE'
      'NOTAFISCAL=:NOTAFISCAL'
      ''
      '')
    Left = 576
    Top = 136
    ParamData = <
      item
        Name = 'NOTAFISCAL'
      end>
    object db_ctaReceberCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_ctaReceberNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object db_ctaReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_ctaReceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_ctaReceberDATA: TDateField
      FieldName = 'DATA'
    end
    object db_ctaReceberVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object db_ctaReceberVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object db_ctaReceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_ctaReceberNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 200
    end
    object db_ctaReceberVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_ctaReceberNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 200
    end
    object db_ctaReceberIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      Size = 10
    end
    object db_ctaReceberENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object db_ctaReceberCEP: TStringField
      FieldName = 'CEP'
      Size = 11
    end
    object db_ctaReceberCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 30
    end
    object db_ctaReceberRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 30
    end
    object db_ctaReceberTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_ctaReceberNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 200
    end
    object db_ctaReceberUF: TStringField
      FieldName = 'UF'
      Size = 30
    end
    object db_ctaReceberPLN_CONTA: TStringField
      FieldName = 'PLN_CONTA'
      Size = 30
    end
    object db_ctaReceberPLN_CONTA_NOME: TStringField
      FieldName = 'PLN_CONTA_NOME'
      Size = 200
    end
  end
  object frxReport1: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40487.467288761600000000
    ReportOptions.LastChange = 40507.798240057870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure CapaOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' '
      ' Try       '
      
        '    picture1.picture.loadfromfile( <ParametrosSistema."LOGO_RELA' +
        'TORIOS">   );'
      ' Except'
      ' End;           '
      '  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 296
    Top = 192
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = dbCarnes
        DataSetName = 'dbCarnes'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 52479
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      TitleBeforeHeader = False
      object DetelhesCarnes: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 317.480314960000000000
        ParentFont = False
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        DataSet = dbCarnes
        DataSetName = 'dbCarnes'
        RowCount = 0
        object Shape3: TfrxShapeView
          Width = 718.110700000000000000
          Height = 309.921254960000000000
        end
        object Shape4: TfrxShapeView
          Left = 109.606370000000000000
          Width = 491.338900000000000000
          Height = 309.921460000000000000
        end
        object Memo1: TfrxMemoView
          Left = 109.606370000000000000
          Width = 480.000000000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DadosEmpresa."NOME"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 109.606370000000000000
          Top = 18.897650000000000000
          Width = 480.000000000000000000
          Height = 18.897650000000000000
          DataField = 'FONE_FAX'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DadosEmpresa."FONE_FAX"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 109.606370000000000000
          Top = 37.795300000000000000
          Width = 480.000000000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DadosEmpresa."ENDERECO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 109.606370000000000000
          Top = 57.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOME:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 109.606370000000000000
          Top = 56.692950000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 109.606370000000000000
          Top = 95.047310000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 109.606370000000000000
          Top = 76.370130000000000000
          Width = 480.000000000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_CLIENTE'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."NOME_CLIENTE"]')
        end
        object Memo5: TfrxMemoView
          Left = 109.606370000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 109.606370000000000000
          Top = 132.063080000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 109.606370000000000000
          Top = 113.385900000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'CPF_CNPJ'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."CPF_CNPJ"]')
        end
        object Memo8: TfrxMemoView
          Left = 109.606370000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 109.606370000000000000
          Top = 169.858380000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Left = 109.606370000000000000
          Top = 151.181200000000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."ENDERECO"]')
        end
        object Memo10: TfrxMemoView
          Left = 498.897960000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 498.897960000000000000
          Top = 151.181200000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."CEP"]')
        end
        object Memo12: TfrxMemoView
          Left = 109.606370000000000000
          Top = 170.078850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CIDADE:')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 109.606370000000000000
          Top = 207.653680000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          Left = 109.606370000000000000
          Top = 188.976500000000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          DataField = 'NOME_CIDADE'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."NOME_CIDADE"]')
        end
        object Memo14: TfrxMemoView
          Left = 498.897960000000000000
          Top = 170.078850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 109.606370000000000000
          Top = 280.567100000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Left = 498.897960000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."UF"]')
        end
        object Memo16: TfrxMemoView
          Left = 279.685220000000000000
          Top = 94.488188976377950000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RG:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 279.685220000000000000
          Top = 113.385826771653500000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'RG_IE'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."RG_IE"]')
        end
        object Memo18: TfrxMemoView
          Left = 113.385900000000000000
          Top = 209.653680000000000000
          Width = 480.000000000000000000
          Height = 49.133890000000000000
          DataField = 'MSG_PEDIDO'
          DataSet = BaseDados.frx_dsParametro
          DataSetName = 'frx_dsParametro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[ParametrosSistema."MSG_PEDIDO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 3.779527560000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DOCUMENTO:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 3.779527560000000000
          Top = 57.448818900000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 3.779527560000000000
          Top = 94.488188980000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 3.779527560000000000
          Top = 132.283464570000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCONTO:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 3.779527560000000000
          Top = 170.078740160000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ACR'#201'SCIMO')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 3.779527560000000000
          Top = 211.653543310000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OUTROS:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 3.779527560000000000
          Top = 257.008040000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR COBRADO:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 3.779527560000000000
          Top = 18.897637800000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCarnes."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 3.779530000000000000
          Top = 76.346456690000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VENCIMENTO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCarnes."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Top = 113.385826770000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCarnes."VALOR"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 604.724800000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DOCUMENTO:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 604.724800000000000000
          Top = 57.448818900000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 604.724800000000000000
          Top = 94.488188980000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 604.724800000000000000
          Top = 132.283464570000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCONTO:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 604.724800000000000000
          Top = 170.078740160000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ACR'#201'SCIMO')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 604.724800000000000000
          Top = 211.653543310000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OUTROS:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 604.724800000000000000
          Top = 257.008040000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR COBRADO:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 604.724800000000000000
          Top = 18.897637800000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCarnes."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 604.724802440000000000
          Top = 76.346456690000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VENCIMENTO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCarnes."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 604.724802440000000000
          Top = 113.385826770000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCarnes."VALOR"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 268.346630000000000000
          Top = 283.464750000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Assinatura do Cliente')
        end
        object Memo40: TfrxMemoView
          Left = 453.543600000000000000
          Top = 94.488188976377950000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DOCUMENTO:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 453.543600000000000000
          Top = 113.385826771653500000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCarnes."DOCUMENTO"]')
          ParentFont = False
        end
      end
      object ContraCapa: TfrxReportSummary
        FillType = ftBrush
        Height = 325.039370080000000000
        Top = 744.567410000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 317.480314960000000000
        end
      end
      object Capa: TfrxHeader
        FillType = ftBrush
        Height = 325.039370080000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'CapaOnBeforePrint'
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 317.480314960000000000
        end
        object Picture1: TfrxPictureView
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 86.929141180000000000
          Height = 68.031491180000000000
          AutoSize = True
          Center = True
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
  object dbCarnes: TfrxDBDataset
    UserName = 'dbCarnes'
    CloseDataSource = False
    DataSet = db_ctaReceber
    BCDToCurrency = False
    Left = 576
    Top = 232
  end
  object frxReport2: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40487.467288761600000000
    ReportOptions.LastChange = 40488.604949733800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure CapaOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  picture1.picture.loadfromfile( <ParametrosSistema."LOGO_RELATO' +
        'RIOS">   );'
      '  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 296
    Top = 264
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = dbCarnes
        DataSetName = 'dbCarnes'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 52479
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      TitleBeforeHeader = False
      object DetelhesCarnes: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 317.480314960000000000
        ParentFont = False
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        DataSet = dbCarnes
        DataSetName = 'dbCarnes'
        RowCount = 0
        object Shape3: TfrxShapeView
          Width = 718.110700000000000000
          Height = 309.921254960000000000
        end
        object Shape4: TfrxShapeView
          Left = 109.606370000000000000
          Width = 491.338900000000000000
          Height = 309.921460000000000000
        end
        object Memo1: TfrxMemoView
          Left = 109.606370000000000000
          Width = 480.000000000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DadosEmpresa."NOME"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 109.606370000000000000
          Top = 18.897650000000000000
          Width = 480.000000000000000000
          Height = 18.897650000000000000
          DataField = 'FONE_FAX'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DadosEmpresa."FONE_FAX"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 109.606370000000000000
          Top = 37.795300000000000000
          Width = 480.000000000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DadosEmpresa."ENDERECO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 109.606370000000000000
          Top = 57.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOME:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 109.606370000000000000
          Top = 56.692950000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 109.606370000000000000
          Top = 95.047310000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 109.606370000000000000
          Top = 76.370130000000000000
          Width = 480.000000000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_CLIENTE'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."NOME_CLIENTE"]')
        end
        object Memo5: TfrxMemoView
          Left = 109.606370000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 109.606370000000000000
          Top = 132.063080000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 109.606370000000000000
          Top = 113.385900000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'CPF_CNPJ'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."CPF_CNPJ"]')
        end
        object Memo8: TfrxMemoView
          Left = 109.606370000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 109.606370000000000000
          Top = 169.858380000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Left = 109.606370000000000000
          Top = 151.181200000000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."ENDERECO"]')
        end
        object Memo10: TfrxMemoView
          Left = 498.897960000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 498.897960000000000000
          Top = 151.181200000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."CEP"]')
        end
        object Memo12: TfrxMemoView
          Left = 109.606370000000000000
          Top = 170.078850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CIDADE:')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 109.606370000000000000
          Top = 207.653680000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          Left = 109.606370000000000000
          Top = 188.976500000000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          DataField = 'NOME_CIDADE'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."NOME_CIDADE"]')
        end
        object Memo14: TfrxMemoView
          Left = 498.897960000000000000
          Top = 170.078850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 109.606370000000000000
          Top = 260.567100000000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Left = 498.897960000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."UF"]')
        end
        object Memo16: TfrxMemoView
          Left = 340.157700000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RG:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 340.157700000000000000
          Top = 113.385900000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'RG_IE'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Memo.UTF8W = (
            '[dbCarnes."RG_IE"]')
        end
        object Memo18: TfrxMemoView
          Left = 113.385900000000000000
          Top = 209.653680000000000000
          Width = 480.000000000000000000
          Height = 49.133890000000000000
          DataField = 'MSG_PEDIDO'
          DataSet = BaseDados.frx_dsParametro
          DataSetName = 'frx_dsParametro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[ParametrosSistema."MSG_PEDIDO"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Left = 268.346630000000000000
          Top = 268.126160000000000000
          Width = 129.000000000000000000
          Height = 34.015770000000000000
          BarType = bcCode39
          Expression = '<dbCarnes."DOCUMENTO">'
          Rotation = 0
          ShowText = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo19: TfrxMemoView
          Left = 3.779527560000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DOCUMENTO:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 3.779527560000000000
          Top = 57.448818900000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 3.779527560000000000
          Top = 94.488188980000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 3.779527560000000000
          Top = 132.283464570000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCONTO:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 3.779527560000000000
          Top = 170.078740160000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ACR'#201'SCIMO')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 3.779527560000000000
          Top = 211.653543310000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OUTROS:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 3.779527560000000000
          Top = 257.008040000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR COBRADO:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 3.779527560000000000
          Top = 18.897637800000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCarnes."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 3.779530000000000000
          Top = 76.346456690000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VENCIMENTO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCarnes."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Top = 113.385826770000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCarnes."VALOR"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 604.724800000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DOCUMENTO:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 604.724800000000000000
          Top = 57.448818900000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 604.724800000000000000
          Top = 94.488188980000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 604.724800000000000000
          Top = 132.283464570000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCONTO:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 604.724800000000000000
          Top = 170.078740160000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ACR'#201'SCIMO')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 604.724800000000000000
          Top = 211.653543310000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OUTROS:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 604.724800000000000000
          Top = 257.008040000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR COBRADO:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 604.724800000000000000
          Top = 18.897637800000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCarnes."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 604.724802440000000000
          Top = 76.346456690000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VENCIMENTO'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCarnes."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 604.724802440000000000
          Top = 113.385826770000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = dbCarnes
          DataSetName = 'dbCarnes'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCarnes."VALOR"]')
          ParentFont = False
        end
      end
      object ContraCapa: TfrxReportSummary
        FillType = ftBrush
        Height = 325.039370080000000000
        Top = 744.567410000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 317.480314960000000000
        end
        object Memo40: TfrxMemoView
          Left = 22.677180000000000000
          Top = 45.354360000000000000
          Width = 642.520100000000000000
          Height = 139.842610000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTRA CAPA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Capa: TfrxHeader
        FillType = ftBrush
        Height = 325.039370080000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'CapaOnBeforePrint'
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 317.480314960000000000
        end
        object Picture1: TfrxPictureView
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 86.929141180000000000
          Height = 68.031491180000000000
          AutoSize = True
          Center = True
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo39: TfrxMemoView
          Left = 34.015770000000000000
          Top = 124.724490000000000000
          Width = 642.520100000000000000
          Height = 139.842610000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CAPA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
