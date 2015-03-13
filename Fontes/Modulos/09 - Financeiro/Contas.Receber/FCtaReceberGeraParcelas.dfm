object FrmCtaReceberGeraParcelas: TFrmCtaReceberGeraParcelas
  Left = 315
  Top = 125
  BorderStyle = bsDialog
  Caption = 'Contas a Receber | Gerar Parcelas'
  ClientHeight = 502
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 245
    Width = 606
    Height = 203
    Align = alClient
    Caption = 'Parcelas (poder'#225' fazer ajustes manualmente)'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 602
      Height = 186
      Align = alClient
      DataSource = DS_CtaReceber
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
          Color = clSilver
          Expanded = False
          FieldName = 'NOTAFISCAL'
          ReadOnly = True
          Title.Caption = 'Nota Fiscal'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Caption = 'Documento'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          ReadOnly = True
          Title.Caption = 'Emiss'#227'o'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Caption = 'Vencimento'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 115
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 36
    Width = 606
    Height = 209
    Align = alTop
    TabOrder = 0
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 604
      Height = 192
      Align = alTop
      Caption = 'Informa'#231#245'es de base'
      TabOrder = 0
      object Label3: TLabel
        Left = 8
        Top = 20
        Width = 53
        Height = 13
        Caption = 'Data Base:'
      end
      object Label2: TLabel
        Left = 176
        Top = 18
        Width = 67
        Height = 13
        Caption = 'Qtde Parcelas'
      end
      object Label4: TLabel
        Left = 8
        Top = 62
        Width = 90
        Height = 13
        Caption = 'Hist'#243'rico (opcional)'
      end
      object Label7: TLabel
        Left = 482
        Top = 19
        Width = 54
        Height = 13
        Caption = 'Valor Total:'
      end
      object Label8: TLabel
        Left = 253
        Top = 19
        Width = 85
        Height = 13
        Caption = 'Intervalo Parcelas'
      end
      object Label10: TLabel
        Left = 343
        Top = 38
        Width = 19
        Height = 13
        Caption = 'dias'
      end
      object Label11: TLabel
        Left = 83
        Top = 19
        Width = 80
        Height = 13
        Caption = 'Documento/N.F.'
      end
      object Label1: TLabel
        Left = 382
        Top = 19
        Width = 38
        Height = 13
        Caption = 'Dia Fixo'
      end
      object MskDataIni: TMaskEdit
        Left = 8
        Top = 35
        Width = 68
        Height = 21
        Hint = 'Vencimentos ser'#227'o '#224' partir da Data Base'
        CharCase = ecUpperCase
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '01/01/2012'
        OnExit = MskDataIniExit
      end
      object EditParcelas: TEdit
        Left = 176
        Top = 35
        Width = 67
        Height = 21
        Hint = 'Informe n'#250'meros inteiros'
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = '0'
        OnKeyPress = EditParcelasKeyPress
      end
      object EditHistorico: TEdit
        Left = 8
        Top = 76
        Width = 579
        Height = 21
        Hint = 'Campo Alfanum'#233'rico'
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object EditValorTotal: TEdit
        Left = 482
        Top = 34
        Width = 105
        Height = 21
        Hint = 'Campo valor.   N'#227'o use  "." (ponto). Somente virgula'
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Text = '0'
        OnEnter = EditValorTotalEnter
        OnExit = EditValorTotalExit
        OnKeyPress = EditValorTotalKeyPress
      end
      object EditIntervalos: TEdit
        Left = 253
        Top = 35
        Width = 86
        Height = 21
        Hint = 'Intervalos de Vencimentos (15 dias, 20 dias, 30 dias, etc...)'
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Text = '0'
        OnExit = EditIntervalosExit
        OnKeyPress = EditIntervalosKeyPress
      end
      object EditDocumento: TEdit
        Left = 83
        Top = 35
        Width = 87
        Height = 21
        Hint = 'Campo Alfanum'#233'rico'
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '0'
        OnExit = EditDocumentoExit
      end
      object EditDiaFixo: TEdit
        Left = 382
        Top = 35
        Width = 67
        Height = 21
        Hint = 'Dia fixo de vencimento para cada m'#234's'
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Text = '0'
        OnEnter = EditDiaFixoEnter
        OnExit = EditDiaFixoExit
        OnKeyPress = EditDiaFixoKeyPress
      end
      object Edit2: TEdit
        Left = 420
        Top = 154
        Width = 167
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 12
        Text = '***'
      end
      object EditDepto: TIDBEditDialog
        Left = 344
        Top = 154
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
        TabOrder = 11
        Text = '0'
        Visible = True
        EditType = etNumeric
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
        DataField = 'DEPARTAMENTO'
        DataSource = BaseDados.ds_ctaReceber
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = Edit2
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM DEPARTAMENTOS'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_DEPARTAMENTOS'
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
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'NOME'
            WhereSyntax = 'NOME'
            DisplayLabel = 'Nome:'
            DisplayWidth = 80
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
      object EditFornecedor: TIDBEditDialog
        Left = 8
        Top = 115
        Width = 65
        Height = 21
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        TabOrder = 7
        Text = '0'
        Visible = True
        EditType = etNumeric
        LabelCaption = 'Cliente'
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
        DataField = 'CLIENTE'
        DataSource = BaseDados.ds_ctaReceber
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeCliente
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'CODIGO=:CODIGO')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_CLIENTES'
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
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'NOME'
            WhereSyntax = 'NOME'
            DisplayLabel = 'Nome:'
            DisplayWidth = 80
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
      object EditNomeCliente: TEdit
        Left = 79
        Top = 115
        Width = 508
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 8
        Text = '***'
      end
      object EditNomePlanoContas: TEdit
        Left = 115
        Top = 154
        Width = 223
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 10
        Text = '***'
      end
      object EditPlano: TIDBEditDialog
        Left = 8
        Top = 154
        Width = 105
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
        TabOrder = 9
        Text = '0'
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
        DataSource = BaseDados.ds_ctaReceber
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomePlanoContas
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'PLN_CONTA'
        SQLdbSQL.Strings = (
          'SELECT * FROM VIEW_PLANOCONTAS'
          'WHERE'
          'CODIGO_PLANO=:PLN_CONTA'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM VIEW_PLANOCONTAS'
          'WHERE'
          'TIPO='#39'DEBITO'#39
          'AND'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO_PLANO'
            WhereSyntax = 'CODIGO_PLANO'
            DisplayLabel = 'C'#211'DIGO'
            DisplayWidth = 15
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scBeginsWith
            SearchCase = scUpper
          end
          item
            FieldName = 'NOME'
            WhereSyntax = 'NOME'
            DisplayLabel = 'PLANO DE CONTA'
            DisplayWidth = 74
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
    end
  end
  object PainelBotoes: TPanel
    Left = 0
    Top = 448
    Width = 606
    Height = 54
    Align = alBottom
    TabOrder = 2
    object BtnSair: TBitBtn
      Left = 505
      Top = 4
      Width = 95
      Height = 45
      Cursor = crHandPoint
      Hint = 'sair da gera'#231#227'o de parcelas'
      Caption = 'Sair'
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnSairClick
    end
    object BtnExcluir: TBitBtn
      Left = 409
      Top = 4
      Width = 95
      Height = 45
      Cursor = crHandPoint
      Hint = 'Excluir Registro'
      Caption = 'E&xcluir Tudo...'
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnExcluirClick
    end
    object BtnGerar: TBitBtn
      Left = 308
      Top = 4
      Width = 95
      Height = 45
      Cursor = crHandPoint
      Hint = 'gerar parcelas '#224' partir da forma de pagamento selecionada'
      Caption = '&Gerar Parcelas'
      Default = True
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnGerarClick
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 606
    Height = 36
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 606
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 606
      ExplicitWidth = 606
      inherited LblBarraTitulo: TLabel
        Width = 251
        Caption = 'Contas a Receber | Gerar Parcelas'
        ExplicitWidth = 251
      end
    end
  end
  object DS_CtaReceber: TDataSource
    DataSet = db_CtaReceber
    Left = 32
    Top = 184
  end
  object db_CtaReceber: TFDQuery
    BeforeOpen = db_CtaReceberBeforeOpen
    MasterSource = BaseDados.ds_ctaReceber
    MasterFields = 'NOTAFISCAL;CLIENTE'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CTARECEBER'
      'WHERE'
      'NOTAFISCAL=:NOTAFISCAL'
      'AND'
      'CLIENTE=:CLIENTE')
    Left = 104
    Top = 184
    ParamData = <
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_CtaReceberEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_CtaReceberCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_CtaReceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_CtaReceberNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object db_CtaReceberSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_CtaReceberDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object db_CtaReceberVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
    end
    object db_CtaReceberDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
    end
    object db_CtaReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_CtaReceberPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_CtaReceberCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_CtaReceberVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_CtaReceberESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_CtaReceberTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_CtaReceberVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object db_CtaReceberVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
    end
    object db_CtaReceberVALOR_SALDO: TBCDField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
    end
    object db_CtaReceberCONTA_CREDITO: TIntegerField
      FieldName = 'CONTA_CREDITO'
    end
    object db_CtaReceberCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 30
    end
    object db_CtaReceberCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 30
    end
    object db_CtaReceberCHQ_CONTA_CORRENTE: TStringField
      FieldName = 'CHQ_CONTA_CORRENTE'
      Size = 30
    end
    object db_CtaReceberCHQ_NUMEROCHEQUE: TStringField
      FieldName = 'CHQ_NUMEROCHEQUE'
      Size = 30
    end
    object db_CtaReceberCHQ_CODCIDADE: TStringField
      FieldName = 'CHQ_CODCIDADE'
      Size = 200
    end
    object db_CtaReceberCHQ_EMITENTE: TStringField
      FieldName = 'CHQ_EMITENTE'
      Size = 200
    end
    object db_CtaReceberCHQ_NOMECIDADE_UF: TStringField
      FieldName = 'CHQ_NOMECIDADE_UF'
      Size = 200
    end
    object db_CtaReceberCHQ_DESTINO: TStringField
      FieldName = 'CHQ_DESTINO'
      Size = 200
    end
    object db_CtaReceberFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_CtaReceberDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_CtaReceberDESCONTO: TBCDField
      FieldName = 'DESCONTO'
    end
    object db_CtaReceberDESCONTOVALOR: TBCDField
      FieldName = 'DESCONTOVALOR'
    end
    object db_CtaReceberDESCONTO_DATA: TSQLTimeStampField
      FieldName = 'DESCONTO_DATA'
    end
    object db_CtaReceberDESCONTO_USER: TIntegerField
      FieldName = 'DESCONTO_USER'
    end
    object db_CtaReceberENTRADA: TBCDField
      FieldName = 'ENTRADA'
    end
    object db_CtaReceberPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_CtaReceberCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_CtaReceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_CtaReceberOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_CtaReceberGERARRECIBO: TStringField
      FieldName = 'GERARRECIBO'
      Size = 30
    end
    object db_CtaReceberGERARDUPLICATA: TStringField
      FieldName = 'GERARDUPLICATA'
      Size = 10
    end
    object db_CtaReceberGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      Size = 10
    end
    object db_CtaReceberGERARCOMPLEMENTO: TStringField
      FieldName = 'GERARCOMPLEMENTO'
      Size = 10
    end
    object db_CtaReceberGERARREMESSA: TStringField
      FieldName = 'GERARREMESSA'
      Size = 10
    end
    object db_CtaReceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_CtaReceberDESPESAS_BOLETO: TBCDField
      FieldName = 'DESPESAS_BOLETO'
    end
    object db_CtaReceberDESPESAS_JUROS: TBCDField
      FieldName = 'DESPESAS_JUROS'
    end
    object db_CtaReceberDESPESAS_JUROSVALOR: TBCDField
      FieldName = 'DESPESAS_JUROSVALOR'
    end
    object db_CtaReceberDESPESAS_MULTA: TBCDField
      FieldName = 'DESPESAS_MULTA'
    end
    object db_CtaReceberDESPESAS_CARTORIO: TBCDField
      FieldName = 'DESPESAS_CARTORIO'
    end
    object db_CtaReceberDESPESAS_TOTAL: TBCDField
      FieldName = 'DESPESAS_TOTAL'
    end
    object db_CtaReceberATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 10
    end
    object db_CtaReceberQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_CtaReceberMOTIVO_BAIXA: TIntegerField
      FieldName = 'MOTIVO_BAIXA'
    end
    object db_CtaReceberUSER_NOME: TStringField
      FieldName = 'USER_NOME'
      Size = 200
    end
    object db_CtaReceberUSER_DATA: TSQLTimeStampField
      FieldName = 'USER_DATA'
    end
    object db_CtaReceberUSER_HORA: TTimeField
      FieldName = 'USER_HORA'
    end
    object db_CtaReceberCOMPLEMENTAR: TStringField
      FieldName = 'COMPLEMENTAR'
      Size = 10
    end
    object db_CtaReceberPROTESTOSTATUS: TStringField
      FieldName = 'PROTESTOSTATUS'
      Size = 30
    end
    object db_CtaReceberSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 10
    end
    object db_CtaReceberDESCONTADO: TStringField
      FieldName = 'DESCONTADO'
      Size = 10
    end
    object db_CtaReceberPAGAMENTOTITULO: TStringField
      FieldName = 'PAGAMENTOTITULO'
      Size = 10
    end
  end
  object db_CtaReceberBuscar: TFDQuery
    MasterSource = BaseDados.ds_ctaReceber
    MasterFields = 'NOTAFISCAL;CLIENTE'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CTARECEBER'
      'WHERE'
      'NOTAFISCAL=:NOTAFISCAL'
      'AND'
      'CLIENTE=:CLIENTE')
    Left = 200
    Top = 304
    ParamData = <
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
