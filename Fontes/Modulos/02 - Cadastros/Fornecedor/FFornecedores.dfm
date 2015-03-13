object FrmFornecedores: TFrmFornecedores
  Left = 0
  Top = 1
  HelpContext = 10
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 544
  ClientWidth = 709
  Color = clBtnFace
  Constraints.MinHeight = 499
  Constraints.MinWidth = 711
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 709
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 709
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 709
      Height = 33
      ExplicitWidth = 709
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 102
        Caption = 'Fornecedores'
        ExplicitWidth = 102
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 484
    Width = 709
    Height = 60
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 484
    ExplicitWidth = 709
    ExplicitHeight = 60
    inherited W7Panel1: TPanel
      Width = 709
      Height = 60
      ExplicitWidth = 709
      ExplicitHeight = 60
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 33
    Width = 709
    Height = 451
    Align = alClient
    TabOrder = 2
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
      Left = 55
      Top = 11
      Width = 26
      Height = 13
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 96
      Top = 96
      Width = 46
      Height = 13
      Caption = 'Endere'#231'o'
    end
    object Label7: TLabel
      Left = 5
      Top = 96
      Width = 21
      Height = 13
      Caption = 'CEP'
    end
    object Label26: TLabel
      Left = 5
      Top = 140
      Width = 27
      Height = 13
      Caption = 'Bairro'
    end
    object Label27: TLabel
      Left = 239
      Top = 139
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label28: TLabel
      Left = 650
      Top = 140
      Width = 14
      Height = 13
      Caption = 'UF'
    end
    object Label68: TLabel
      Left = 225
      Top = 186
      Width = 28
      Height = 13
      Caption = 'E-mail'
    end
    object Label69: TLabel
      Left = 445
      Top = 186
      Width = 80
      Height = 13
      Caption = 'Site (home page)'
    end
    object Spb_email2: TSpeedButton
      Left = 422
      Top = 202
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Hint = 'enviar e-mail...'
      Caption = '...'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = Spb_email2Click
    end
    object Label2: TLabel
      Left = 5
      Top = 54
      Width = 63
      Height = 13
      Caption = 'Raz'#227'o Social'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 269
      Top = 55
      Width = 71
      Height = 13
      Caption = 'Nome Fantasia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 134
      Top = 14
      Width = 65
      Height = 13
      Caption = 'CNPJ ou CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label70: TLabel
      Left = 266
      Top = 14
      Width = 82
      Height = 13
      Caption = 'Incri'#231#227'o Estadual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 470
      Top = 54
      Width = 37
      Height = 13
      Caption = 'Contato'
    end
    object Label49: TLabel
      Left = 598
      Top = 272
      Width = 71
      Height = 13
      Caption = 'Valor Servi'#231'os:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 673
      Top = 202
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Hint = 'enviar e-mail...'
      Caption = '...'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label4: TLabel
      Left = 5
      Top = 14
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 114
      Top = 186
      Width = 93
      Height = 13
      Caption = 'Fax (DDD+N'#250'mero)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 6
      Top = 186
      Width = 100
      Height = 13
      Caption = 'Fone (DDD+N'#250'mero)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 616
      Top = 96
      Width = 37
      Height = 13
      Caption = 'Numero'
    end
    object Label10: TLabel
      Left = 156
      Top = 142
      Width = 69
      Height = 13
      Caption = 'C'#243'digo Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditData: TDBEdit
      Left = 54
      Top = 30
      Width = 77
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DATA'
      DataSource = DS_Fornecedor
      TabOrder = 1
    end
    object DBEdit42: TDBEdit
      Left = 96
      Top = 112
      Width = 514
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = DS_Fornecedor
      TabOrder = 9
    end
    object DBEdit43: TDBEdit
      Left = 5
      Top = 112
      Width = 82
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEP'
      DataSource = DS_Fornecedor
      TabOrder = 8
    end
    object DBEdit44: TDBEdit
      Left = 5
      Top = 156
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = DS_Fornecedor
      TabOrder = 11
    end
    object EditUF: TDBEdit
      Left = 651
      Top = 156
      Width = 45
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = DS_Fornecedor
      TabOrder = 14
      OnExit = EditUFExit
    end
    object DBEdit50: TDBEdit
      Left = 225
      Top = 202
      Width = 192
      Height = 21
      CharCase = ecLowerCase
      DataField = 'EMAIL'
      DataSource = DS_Fornecedor
      TabOrder = 19
    end
    object DBEdit51: TDBEdit
      Left = 444
      Top = 202
      Width = 213
      Height = 21
      CharCase = ecLowerCase
      DataField = 'SITE'
      DataSource = DS_Fornecedor
      TabOrder = 20
    end
    object EdRazaoSocial: TDBEdit
      Left = 5
      Top = 70
      Width = 256
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DS_Fornecedor
      TabOrder = 5
    end
    object EdFantasia: TDBEdit
      Left = 267
      Top = 70
      Width = 197
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME_FANTASIA'
      DataSource = DS_Fornecedor
      TabOrder = 6
    end
    object EdRGInscrEst: TDBEdit
      Left = 266
      Top = 30
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RG_IE'
      DataSource = DS_Fornecedor
      TabOrder = 3
    end
    object EditCNPJCPF2: TDBEdit
      Left = 134
      Top = 30
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CPF_CNPJ'
      DataSource = DS_Fornecedor
      TabOrder = 2
    end
    object GroupBox10: TGroupBox
      Left = 2
      Top = 388
      Width = 705
      Height = 61
      Align = alBottom
      Caption = 'Detalhes'
      TabOrder = 33
      object DBMemo2: TDBMemo
        Left = 2
        Top = 15
        Width = 701
        Height = 44
        Align = alClient
        DataField = 'OBSERVACAO'
        DataSource = DS_Fornecedor
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object EditNomeCidade2: TDBEdit
      Left = 239
      Top = 156
      Width = 406
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMECIDADE'
      DataSource = DS_Fornecedor
      TabOrder = 13
    end
    object DBEdit59: TDBEdit
      Left = 470
      Top = 69
      Width = 226
      Height = 21
      DataField = 'CONTATO'
      DataSource = DS_Fornecedor
      TabOrder = 7
    end
    object DBEdit1: TDBEdit
      Left = 598
      Top = 286
      Width = 98
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VALOR_SERVICOS'
      DataSource = DS_Fornecedor
      MaxLength = 10
      TabOrder = 31
    end
    object DBEdit2: TDBEdit
      Left = 5
      Top = 30
      Width = 44
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'CODIGO'
      DataSource = DS_Fornecedor
      Enabled = False
      TabOrder = 0
    end
    object EditcodRegiao1: TIDBEditDialog
      Left = 6
      Top = 243
      Width = 52
      Height = 21
      HelpKeyWord = ''
      Color = clWindow
      Enabled = True
      TabOrder = 21
      Text = ''
      Visible = True
      LabelCaption = 'Regi'#227'o'
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
      DataField = 'REGIAO'
      DataSource = DS_Fornecedor
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditRegiao1
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = '***'
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_REGIOES'
        'WHERE'
        'CODIGO=:CODIGO')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM CAD_REGIOES'
        'WHERE'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT COUNT(*) FROM CAD_REGIOES'
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
    object EditRegiao1: TEdit
      Left = 59
      Top = 243
      Width = 160
      Height = 21
      Color = clBtnFace
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
    end
    object DBEdit38: TDBEdit
      Left = 151
      Top = 202
      Width = 68
      Height = 21
      DataField = 'FAX'
      DataSource = DS_Fornecedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object DBEdit49: TDBEdit
      Left = 115
      Top = 202
      Width = 35
      Height = 21
      DataField = 'DDD_FAX'
      DataSource = DS_Fornecedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 17
    end
    object DBEdit13: TDBEdit
      Left = 42
      Top = 202
      Width = 68
      Height = 21
      DataField = 'FONE'
      DataSource = DS_Fornecedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object DBEdit14: TDBEdit
      Left = 6
      Top = 202
      Width = 35
      Height = 21
      DataField = 'DDD_FONE'
      DataSource = DS_Fornecedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 15
    end
    object DCodPlano: TIDBEditDialog
      Left = 7
      Top = 286
      Width = 124
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
      Text = ''
      Visible = True
      EditType = etUppercase
      EmptyText = 'F8 - Pesquisar'
      FocusColor = clBtnFace
      LabelCaption = 'Plano de Contas'
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
      ButtonHint = 'Plano de Contas'
      Etched = False
      ButtonCaption = '...'
      DataField = 'PLANO_CONTAS'
      DataSource = DS_Fornecedor
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomePlanoContas
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = '***'
      SQLdbCampoParametro = 'CODIGO_PLANO'
      SQLdbSQL.Strings = (
        'SELECT * FROM VIEW_PLANOCONTAS'
        'WHERE'
        'CODIGO_PLANO=:CODIGO_PLANO')
      SQLdbMaxLenght = 200
      SearchQuery.Strings = (
        'SELECT * FROM VIEW_PLANOCONTAS'
        'WHERE'
        'TIPO='#39'DEBITO'#39
        'AND'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT COUNT(*) FROM VIEW_PLANOCONTAS'
        'WHERE'
        'TIPO='#39'DEBITO'#39
        'AND'
        '%WHERE%')
      SearchDialogFieldList = <
        item
          FieldName = 'CODIGO_PLANO'
          WhereSyntax = 'CODIGO_PLANO'
          DisplayLabel = 'C'#211'DIGO'
          DisplayWidth = 30
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scContains
          SearchCase = scUpper
        end
        item
          FieldName = 'NOME'
          WhereSyntax = 'NOME'
          DisplayLabel = 'NOME DO PLANO DE CONTA:'
          DisplayWidth = 62
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
          DisplayLabel = 'TIPO'
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
    object EditNomePlanoContas: TEdit
      Left = 131
      Top = 286
      Width = 190
      Height = 21
      AutoSize = False
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 28
      Text = '***'
    end
    object LocalizaFornecedor: TIDBEditDialog
      Left = 529
      Top = 313
      Width = 65
      Height = 21
      HelpKeyWord = ''
      Color = clWindow
      Enabled = True
      TabOrder = 34
      Text = ''
      Visible = False
      LabelCaption = 'Fornecedores'
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
        'SELECT * FROM CAD_CLIENTES'
        'WHERE'
        '%WHERE%'
        'AND'
        'TIPO IN ('#39'FORNECEDOR'#39','#39'OFICINA'#39','#39'TERCEIRIZADO'#39')'
        'ORDER BY NOME')
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
          DisplayWidth = 50
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scContains
          SearchCase = scUpper
        end
        item
          FieldName = 'CPF_CNPJ'
          WhereSyntax = 'CPF_CNPJ'
          DisplayLabel = 'CNPJ/CPF:'
          DisplayWidth = 18
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scContains
          SearchCase = scUpper
        end
        item
          FieldName = 'NOME_FANTASIA'
          WhereSyntax = 'NOME_FANTASIA'
          DisplayLabel = 'NOME FANTASIA:'
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
    object DBEdit3: TDBEdit
      Left = 616
      Top = 113
      Width = 80
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = DS_Fornecedor
      TabOrder = 10
    end
    object DbEditCFOP: TIDBEditDialog
      Left = 325
      Top = 286
      Width = 75
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 29
      Text = ''
      Visible = True
      EditType = etUppercase
      EmptyText = 'F8 - Pesquisar'
      FocusColor = clWindow
      LabelCaption = 'CFOP'
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
      ButtonHint = 'Plano de Contas'
      Etched = False
      ButtonCaption = '...'
      DataField = 'CFOP'
      DataSource = DS_Fornecedor
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = Edit1
      SQLdbCampoRetorno = 'DESCRICAO'
      SQLdbRetornoVazio = '***'
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_CFOP'
        'WHERE'
        'OPERACAO='#39'E'#39
        'AND'
        'CODIGO=:CODIGO'
        '')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM CAD_CFOP'
        'WHERE'
        'OPERACAO='#39'E'#39
        'AND'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT COUNT(CODIGO) FROM CAD_CFOP'
        'WHERE'
        'OPERACAO='#39'E'#39
        'AND'
        '%WHERE%')
      SearchDialogFieldList = <
        item
          FieldName = 'CODIGO'
          WhereSyntax = 'CODIGO'
          DisplayLabel = 'CFOP'
          DisplayWidth = 10
          DisplayColumnWidth = 0
          FieldType = ftInteger
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scEqual
          SearchCase = scMixed
        end
        item
          FieldName = 'DESCRICAO'
          WhereSyntax = 'DESCRICAO'
          DisplayLabel = 'Nome:'
          DisplayWidth = 70
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scContains
          SearchCase = scUpper
        end
        item
          FieldName = 'OPERACAO'
          WhereSyntax = 'OPERACAO'
          DisplayLabel = 'Sa'#237'da/Entrada'
          DisplayWidth = 12
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scBeginsWith
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
    object Edit1: TEdit
      Left = 402
      Top = 286
      Width = 192
      Height = 21
      AutoSize = False
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 30
    end
    object EstSearchDialogZeos1: TIDBEditDialog
      Left = 490
      Top = 243
      Width = 74
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
      Text = ''
      Visible = True
      EditType = etUppercase
      EmptyText = 'F8 - Pesquisar'
      FocusColor = clWindow
      LabelCaption = 'Centro de Custo:'
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
      ButtonHint = 'Plano de Contas'
      Etched = False
      ButtonCaption = '...'
      DataField = 'CENTROCUSTO'
      DataSource = DS_Fornecedor
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = Edit2
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = '***'
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_DEPARTAMENTOS'
        'WHERE'
        'CODIGO=:CODIGO'
        '')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM CAD_DEPARTAMENTOS'
        'WHERE'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT COUNT(CODIGO) FROM CAD_DEPARTAMENTOS'
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
          DisplayWidth = 90
          DisplayColumnWidth = 0
          FieldType = ftString
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
    object Edit2: TEdit
      Left = 567
      Top = 243
      Width = 129
      Height = 21
      AutoSize = False
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
    end
    object EditTransportadora: TIDBEditDialog
      Left = 225
      Top = 243
      Width = 65
      Height = 21
      HelpKeyWord = ''
      Color = clWindow
      Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
      Text = ''
      Visible = True
      EditType = etAlphaNumeric
      EmptyText = 'Tecle F8'
      FocusColor = clBtnFace
      LabelCaption = 'Transportadora:'
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
      ButtonHint = 'Transportadora:'
      Etched = False
      ButtonCaption = '...'
      DataField = 'TRANSPORTADORA'
      DataSource = DS_Fornecedor
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomeTrasportadora
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
        'SELECT * FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'TRANSPORTADORA'#39
        'AND'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT count(*) FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'TRANSPORTADORA'#39
        'AND'
        '%WHERE%')
      SearchDialogFieldList = <
        item
          FieldName = 'CODIGO'
          WhereSyntax = 'CODIGO'
          DisplayLabel = 'C'#243'digo'
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
    object EditNomeTrasportadora: TEdit
      Left = 294
      Top = 243
      Width = 187
      Height = 21
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 24
      Text = '***'
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 385
      Top = 14
      Width = 311
      Height = 37
      Caption = 'Tipo'
      Columns = 2
      DataField = 'TIPO'
      DataSource = DS_Fornecedor
      Items.Strings = (
        'Fornecedor'
        'Terceirizado')
      TabOrder = 4
      Values.Strings = (
        'FORNECEDOR'
        'TERCEIRIZADO')
    end
    object EditCodCidade1: TDBEdit
      Left = 156
      Top = 156
      Width = 77
      Height = 21
      Hint = 'Codigo da Cidade de acordo com o IBGE'
      CharCase = ecUpperCase
      DataField = 'CODIGOCIDADE'
      DataSource = DS_Fornecedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnKeyDown = EditCodCidade1KeyDown
    end
    object GroupBox16: TGroupBox
      Left = 2
      Top = 327
      Width = 705
      Height = 61
      Align = alBottom
      Caption = 'Status do Fornecedor'
      TabOrder = 32
      object Label37: TLabel
        Left = 144
        Top = 14
        Width = 115
        Height = 15
        Caption = 'Data da desativa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object rgpAtivo: TDBRadioGroup
        Left = 2
        Top = 15
        Width = 138
        Height = 44
        Align = alLeft
        Caption = 'Cadastro Ativo'
        Columns = 2
        DataField = 'ATIVO'
        DataSource = DS_Fornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 0
        Values.Strings = (
          'S'
          'N')
      end
      object DBEdit17: TDBEdit
        Left = 144
        Top = 30
        Width = 115
        Height = 23
        DataField = 'ATIVODATA'
        DataSource = DS_Fornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object DS_Fornecedor: TDataSource
    DataSet = db_Fornecedor
    Left = 526
    Top = 103
  end
  object db_Fornecedor: TFDQuery
    BeforePost = db_FornecedorBeforePost
    OnDeleteError = db_FornecedorDeleteError
    OnEditError = db_FornecedorEditError
    OnNewRecord = db_FornecedorNewRecord
    OnPostError = db_FornecedorPostError
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO IN ('#39'FORNECEDOR'#39','#39'TERCEIRIZADO'#39','#39'OFICINA'#39')'
      'AND'
      'CODIGO=:CODIGO')
    Left = 445
    Top = 104
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_FornecedorCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_FornecedorFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object db_FornecedorDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object db_FornecedorDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
    end
    object db_FornecedorTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object db_FornecedorCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 30
    end
    object db_FornecedorCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      OnChange = db_FornecedorCPF_CNPJChange
      EditMask = '99.999.999/9999-99'
      Size = 30
    end
    object db_FornecedorNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object db_FornecedorNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 200
    end
    object db_FornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 200
    end
    object db_FornecedorRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 30
    end
    object db_FornecedorORG_EMISSOR: TStringField
      FieldName = 'ORG_EMISSOR'
      Size = 30
    end
    object db_FornecedorSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object db_FornecedorFILIACAO_NOMEPAI: TStringField
      FieldName = 'FILIACAO_NOMEPAI'
      Size = 200
    end
    object db_FornecedorFILIACAO_NOMEMAE: TStringField
      FieldName = 'FILIACAO_NOMEMAE'
      Size = 200
    end
    object db_FornecedorESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 200
    end
    object db_FornecedorCONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      Size = 30
    end
    object db_FornecedorCONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      Size = 200
    end
    object db_FornecedorCXP: TStringField
      FieldName = 'CXP'
      Size = 30
    end
    object db_FornecedorCEP: TStringField
      FieldName = 'CEP'
      OnChange = db_FornecedorCEPChange
      EditMask = '########'
      Size = 30
    end
    object db_FornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object db_FornecedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object db_FornecedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object db_FornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 200
    end
    object db_FornecedorCODIGOCIDADE: TIntegerField
      FieldName = 'CODIGOCIDADE'
    end
    object db_FornecedorNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 200
    end
    object db_FornecedorUF: TStringField
      FieldName = 'UF'
      Size = 30
    end
    object db_FornecedorDDD_FONE: TIntegerField
      FieldName = 'DDD_FONE'
    end
    object db_FornecedorFONE: TStringField
      FieldName = 'FONE'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_FornecedorDDD_FAX: TIntegerField
      FieldName = 'DDD_FAX'
    end
    object db_FornecedorFAX: TStringField
      FieldName = 'FAX'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_FornecedorDDD_CELULAR: TIntegerField
      FieldName = 'DDD_CELULAR'
    end
    object db_FornecedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 30
    end
    object db_FornecedorDDD_VOIP: TIntegerField
      FieldName = 'DDD_VOIP'
    end
    object db_FornecedorVOIP: TStringField
      FieldName = 'VOIP'
      Size = 30
    end
    object db_FornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object db_FornecedorSITE: TStringField
      FieldName = 'SITE'
      Size = 200
    end
    object db_FornecedorREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 200
    end
    object db_FornecedorVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_FornecedorREGIAO: TIntegerField
      FieldName = 'REGIAO'
    end
    object db_FornecedorTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_FornecedorESTRANGEIRO: TStringField
      FieldName = 'ESTRANGEIRO'
      Size = 10
    end
    object db_FornecedorNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 200
    end
    object db_FornecedorCREDITO_LIMITE: TBCDField
      FieldName = 'CREDITO_LIMITE'
    end
    object db_FornecedorCREDITO_UTILIZADO: TBCDField
      FieldName = 'CREDITO_UTILIZADO'
    end
    object db_FornecedorCREDITO_DISPONIVEL: TBCDField
      FieldName = 'CREDITO_DISPONIVEL'
    end
    object db_FornecedorBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Size = 10
    end
    object db_FornecedorPROTESTO: TStringField
      FieldName = 'PROTESTO'
      Size = 30
    end
    object db_FornecedorPROTESTO_DATA: TSQLTimeStampField
      FieldName = 'PROTESTO_DATA'
    end
    object db_FornecedorETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 10
    end
    object db_FornecedorNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 200
    end
    object db_FornecedorATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 10
    end
    object db_FornecedorCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
    end
    object db_FornecedorATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
    end
    object db_FornecedorOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_FornecedorOBS_SERASA: TStringField
      FieldName = 'OBS_SERASA'
      Size = 5000
    end
    object db_FornecedorOBS_SINTEGRA: TStringField
      FieldName = 'OBS_SINTEGRA'
      Size = 5000
    end
    object db_FornecedorCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
    end
    object db_FornecedorCOMISSIONAR: TStringField
      FieldName = 'COMISSIONAR'
      Size = 10
    end
    object db_FornecedorSALARIO: TBCDField
      FieldName = 'SALARIO'
    end
    object db_FornecedorPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_FornecedorCODIGOUF: TIntegerField
      FieldName = 'CODIGOUF'
    end
    object db_FornecedorCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_FornecedorCENTROCUSTO: TIntegerField
      FieldName = 'CENTROCUSTO'
    end
    object db_FornecedorVALOR_SERVICOS: TBCDField
      FieldName = 'VALOR_SERVICOS'
      DisplayFormat = '###,##0.0000'
      EditFormat = '###,##0.0000'
    end
    object db_FornecedorATIVODATA: TSQLTimeStampField
      FieldName = 'ATIVODATA'
      EditMask = '99/99/9999'
    end
    object db_FornecedorULTIMAVENDA_DATA: TSQLTimeStampField
      FieldName = 'ULTIMAVENDA_DATA'
      EditMask = '99/99/9999'
    end
    object db_FornecedorULTIMAVENDA_ORIGEM: TStringField
      FieldName = 'ULTIMAVENDA_ORIGEM'
      Size = 30
    end
  end
end
