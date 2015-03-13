object FrmCtaPagar: TFrmCtaPagar
  Left = 0
  Top = 1
  Caption = 'Movimenta'#231#227'o Financeira'
  ClientHeight = 489
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
  object Label2: TLabel
    Left = 157
    Top = 76
    Width = 52
    Height = 13
    Caption = 'Nota Fiscal'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 309
    Top = 78
    Width = 69
    Height = 13
    Caption = 'Nosso N'#250'mero'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 233
    Top = 76
    Width = 54
    Height = 13
    Caption = 'Documento'
    FocusControl = DBEdit4
  end
  object Label6: TLabel
    Left = 5
    Top = 116
    Width = 37
    Height = 13
    Caption = 'Cliente:'
  end
  object Label8: TLabel
    Left = 420
    Top = 76
    Width = 108
    Height = 13
    Caption = 'Especie de Documento'
  end
  object Label10: TLabel
    Left = 5
    Top = 285
    Width = 45
    Height = 13
    Caption = 'Hist'#243'rico:'
    FocusControl = DBEdit10
  end
  object Label5: TLabel
    Left = 5
    Top = 76
    Width = 27
    Height = 13
    Caption = 'Data:'
    FocusControl = EditData
  end
  object Label11: TLabel
    Left = 571
    Top = 76
    Width = 28
    Height = 13
    Caption = 'Valor:'
    FocusControl = DBEdit8
  end
  object Label12: TLabel
    Left = 80
    Top = 76
    Width = 59
    Height = 13
    Caption = 'Vencimento:'
    FocusControl = DBEdit11
  end
  object Label1: TLabel
    Left = 8
    Top = 256
    Width = 3
    Height = 13
    FocusControl = DBEdit10
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 699
    Height = 33
    Align = alTop
    AutoSize = True
    TabOrder = 21
    TabStop = True
    ExplicitWidth = 699
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 699
      Height = 33
      ExplicitWidth = 699
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 178
        Caption = 'Contas a Pagar'
        ExplicitWidth = 178
      end
    end
  end
  object DBEdit2: TDBEdit
    Left = 157
    Top = 91
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOTAFISCAL'
    DataSource = BaseDados.DS_CtaPagar
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 309
    Top = 91
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOSSONUMERO'
    DataSource = BaseDados.DS_CtaPagar
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 233
    Top = 91
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DOCUMENTO'
    DataSource = BaseDados.DS_CtaPagar
    TabOrder = 4
  end
  object EditNomeCliente: TEdit
    Left = 76
    Top = 132
    Width = 602
    Height = 21
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    TabOrder = 9
  end
  object EditNomePlanoContas: TEdit
    Left = 118
    Top = 173
    Width = 260
    Height = 21
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    TabOrder = 11
  end
  object DBEdit10: TDBEdit
    Left = 5
    Top = 300
    Width = 673
    Height = 21
    CharCase = ecUpperCase
    DataField = 'HISTORICO'
    DataSource = BaseDados.DS_CtaPagar
    TabOrder = 19
  end
  object EditData: TDBEdit
    Left = 5
    Top = 91
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DATA'
    DataSource = BaseDados.DS_CtaPagar
    TabOrder = 1
  end
  object DBEdit8: TDBEdit
    Left = 571
    Top = 91
    Width = 107
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VALOR'
    DataSource = BaseDados.DS_CtaPagar
    TabOrder = 7
  end
  object DBEdit11: TDBEdit
    Left = 80
    Top = 91
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VENCIMENTO'
    DataSource = BaseDados.DS_CtaPagar
    TabOrder = 2
  end
  object EditFornecedor: TIDBEditDialog
    Left = 5
    Top = 132
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    TabOrder = 8
    Visible = True
    LabelCaption = 'Fornecedor'
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
    DataField = 'FORNECEDOR'
    DataSource = BaseDados.DS_CtaPagar
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
      'TIPO in ('#39'FORNECEDOR'#39','#39'OFICINA'#39','#39'TERCEIRIZADO'#39','#39'TRANSPORTADORA'#39')'
      'AND'
      'COALESCE(ATIVO,'#39'S'#39')<>'#39'N'#39
      'AND'
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
  object EditNomeFormaPagto: TEdit
    Left = 463
    Top = 216
    Width = 215
    Height = 21
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 17
  end
  object EditPagamento: TIDBEditDialog
    Left = 387
    Top = 216
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    Text = '0'
    Visible = True
    EditType = etNumeric
    EmptyText = 'F8 - Cliente'
    FocusColor = clBtnFace
    LabelCaption = 'Forma de Pagamento'
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
    ButtonHint = 'Forma de Pagamento'
    Etched = False
    ButtonCaption = '...'
    DataField = 'FORMA_PAGTO'
    DataSource = BaseDados.DS_CtaPagar
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbFocusControl = EditNomeFormaPagto
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT CODIGO, NOME FROM CAD_FORMAPAGTO'
      'WHERE'
      'CODIGO=:CODIGO')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT CODIGO, NOME FROM CAD_FORMAPAGTO'
      'WHERE'
      '%WHERE%')
    CountQuery.Strings = (
      'SELECT count(*) FROM CAD_FORMAPAGTO'
      'WHERE'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 336
    Width = 699
    Height = 95
    Align = alBottom
    Caption = 'Observa'#231#227'o:'
    TabOrder = 20
    ExplicitTop = 292
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 695
      Height = 78
      Align = alClient
      DataField = 'OBSERVACAO'
      DataSource = BaseDados.DS_CtaPagar
      TabOrder = 0
    end
  end
  object Edit2: TEdit
    Left = 463
    Top = 173
    Width = 215
    Height = 21
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    TabOrder = 13
  end
  object DCodPlano: TIDBEditDialog
    Left = 5
    Top = 173
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
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
    DataSource = BaseDados.DS_CtaPagar
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbFocusControl = EditNomePlanoContas
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO_PLANO'
    SQLdbSQL.Strings = (
      'SELECT * FROM VIEW_PLANOCONTAS'
      'WHERE'
      'CODIGO_PLANO=:CODIGO_PLANO'
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
        DefaultComparison = scContains
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
  object DBComboBox1: TDBComboBox
    Left = 420
    Top = 91
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'ESPECIE'
    DataSource = BaseDados.DS_CtaPagar
    Items.Strings = (
      'A VISTA'
      'A PRAZO'
      'CARTAO'
      'DUPLICATA'
      'BOLETO'
      'DDA'
      'CHEQUE'
      'CARTEIRA'
      'TICKET')
    TabOrder = 6
  end
  object EstSearchDialogZeos1: TIDBEditDialog
    Left = 387
    Top = 173
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Visible = True
    EditType = etUppercase
    EmptyText = 'F8 - Pesquisar'
    FocusColor = clWindow
    LabelCaption = 'Centro de Custo'
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
    ButtonHint = 'Departamento'
    Etched = False
    ButtonCaption = '...'
    DataField = 'DEPARTAMENTO'
    DataSource = BaseDados.DS_CtaPagar
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
      '')
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
  object EditNomeContaCaixa: TEdit
    Left = 118
    Top = 216
    Width = 260
    Height = 21
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 15
    Text = '***'
  end
  object ContaProcurar: TIDBEditDialog
    Left = 5
    Top = 216
    Width = 105
    Height = 21
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    Text = '0'
    Visible = True
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = 'Conta Caixa:'
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
    DataField = 'CONTACAIXA'
    DataSource = BaseDados.DS_CtaPagar
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbFocusControl = EditNomeContaCaixa
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_CONTAS'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_CONTAS'
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
        SearchCase = scUpper
      end
      item
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'NOME DA CONTA:'
        DisplayWidth = 60
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'SALDOINICIAL'
        WhereSyntax = 'SALDOINICIAL'
        DisplayLabel = 'SALDO INICIAL:'
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
        FieldName = 'SALDOATUAL'
        WhereSyntax = 'SALDOATUAL'
        DisplayLabel = 'SALDO ATUAL:'
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
  object DBRadioGroup2: TDBRadioGroup
    Left = 8
    Top = 241
    Width = 670
    Height = 35
    Caption = 'Inclus'#227'o no Servi'#231'o de Prote'#231#227'o ao Cr'#233'dito'
    Columns = 5
    DataField = 'PROTESTOSTATUS'
    DataSource = BaseDados.DS_CtaPagar
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Items.Strings = (
      'N'#195'O'
      'SERASA'
      'SPC'
      'CART'#211'RIO'
      'OUTROS')
    ParentBackground = True
    ParentFont = False
    TabOrder = 18
    Values.Strings = (
      'NAO'
      'SERASA'
      'SPC'
      'CARTORIO'
      'OUTROS')
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 431
    Width = 699
    Height = 58
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
    TabStop = True
    ExplicitTop = 387
    ExplicitWidth = 699
    inherited W7Panel1: TPanel
      Width = 699
      ExplicitWidth = 699
      inherited SpbExtra: TSpeedButton
        Width = 76
        Caption = 'Reparcelar'
        Visible = True
        OnClick = FrmFrameBotoes1SpbExtraClick
        ExplicitWidth = 76
      end
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
      end
      inherited SpbImprimir: TSpeedButton
        Visible = False
        OnClick = FrmFrameBotoes1SpbImprimirClick
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
  object dbDlgProcurar: TIDBEditDialog
    Left = 35
    Top = 8
    Width = 65
    Height = 21
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
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
        FieldName = 'ESPECIE'
        WhereSyntax = 'ESPECIE'
        DisplayLabel = 'ESPECIE'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftUnknown
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
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
        DisplayWidth = 35
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'QUITADO'
        WhereSyntax = 'QUITADO'
        DisplayLabel = 'QUITADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
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
  object DBRadioGroup4: TDBRadioGroup
    Left = 0
    Top = 33
    Width = 699
    Height = 41
    Align = alTop
    Caption = 'Quitado'
    Columns = 2
    DataField = 'QUITADO'
    DataSource = BaseDados.DS_CtaPagar
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'Sim'
      'N'#227'o')
    ParentBackground = True
    ParentFont = False
    TabOrder = 0
    Values.Strings = (
      'S'
      'N')
  end
end
