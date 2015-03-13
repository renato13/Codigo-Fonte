object FrmComissoes: TFrmComissoes
  Left = 0
  Top = 1
  Caption = 'Comiss'#245'es [Conta Corrente de Representantes]'
  ClientHeight = 526
  ClientWidth = 712
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
    Left = 10
    Top = 131
    Width = 55
    Height = 14
    Caption = 'Nota Fiscal'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 292
    Top = 131
    Width = 62
    Height = 14
    Caption = 'Documento'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 10
    Top = 340
    Width = 187
    Height = 14
    Caption = 'Hist'#243'rico [aparece nos relat'#243'rios]:'
    FocusControl = DBEdit10
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 10
    Top = 87
    Width = 30
    Height = 14
    Caption = 'Data: '
    FocusControl = EditData
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 596
    Top = 131
    Width = 93
    Height = 14
    Caption = 'Valor da Comiss'#227'o:'
    FocusControl = DBEdit8
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 82
    Top = 87
    Width = 61
    Height = 14
    Caption = 'Vencimento:'
    FocusControl = DBEdit11
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 6
    Top = 367
    Width = 3
    Height = 14
    FocusControl = DBEdit10
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 490
    Top = 87
    Width = 102
    Height = 14
    Caption = 'Tipo [cr'#233'dito/d'#233'bito]'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 607
    Top = 87
    Width = 37
    Height = 14
    Caption = 'Origem'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 193
    Top = 131
    Width = 38
    Height = 14
    Caption = 'Pedido'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 387
    Top = 131
    Width = 76
    Height = 14
    Caption = 'Valor da Venda:'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 507
    Top = 131
    Width = 56
    Height = 14
    Caption = 'Comiss'#227'o%'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 97
    Top = 131
    Width = 65
    Height = 14
    Caption = 'Confer'#234'ncia'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 712
    Height = 33
    Align = alTop
    AutoSize = True
    TabOrder = 28
    TabStop = True
    ExplicitWidth = 712
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 712
      Height = 33
      ExplicitWidth = 712
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 355
        Caption = 'Comiss'#245'es [Conta Corrente de Representantes]'
        ExplicitWidth = 355
      end
    end
  end
  object DBEdit2: TDBEdit
    Left = 10
    Top = 146
    Width = 62
    Height = 22
    CharCase = ecUpperCase
    DataField = 'NOTAFISCAL'
    DataSource = ds_Comissoes
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object DBEdit4: TDBEdit
    Left = 292
    Top = 146
    Width = 70
    Height = 22
    CharCase = ecUpperCase
    DataField = 'DOCUMENTO'
    DataSource = ds_Comissoes
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object EditNomeCliente: TEdit
    Left = 77
    Top = 189
    Width = 622
    Height = 22
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object EditNomeVendedor: TEdit
    Left = 226
    Top = 102
    Width = 258
    Height = 22
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object EditNomePlanoContas: TEdit
    Left = 121
    Top = 231
    Width = 251
    Height = 22
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
  end
  object DBEdit10: TDBEdit
    Left = 10
    Top = 355
    Width = 691
    Height = 22
    CharCase = ecUpperCase
    DataField = 'HISTORICO'
    DataSource = ds_Comissoes
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 26
  end
  object EditData: TDBEdit
    Left = 10
    Top = 102
    Width = 70
    Height = 22
    CharCase = ecUpperCase
    DataField = 'DATA'
    DataSource = ds_Comissoes
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit8: TDBEdit
    Left = 593
    Top = 146
    Width = 107
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VALOR'
    DataSource = ds_Comissoes
    TabOrder = 13
  end
  object DBEdit11: TDBEdit
    Left = 82
    Top = 102
    Width = 70
    Height = 22
    CharCase = ecUpperCase
    DataField = 'VENCIMENTO'
    DataSource = ds_Comissoes
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object EditCliente: TIDBEditDialog
    Left = 11
    Top = 189
    Width = 65
    Height = 22
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    Text = ''
    Visible = True
    LabelCaption = 'Cliente (origem da comiss'#227'o)'
    LabelAlwaysEnabled = True
    LabelFont.Charset = ANSI_CHARSET
    LabelFont.Color = clRed
    LabelFont.Height = -12
    LabelFont.Name = 'Calibri'
    LabelFont.Style = [fsBold]
    Lookup.Separator = ';'
    Version = '5.0.0.0'
    ButtonStyle = bsButton
    ButtonWidth = 16
    ButtonHint = 'Procurar...'
    Etched = False
    ButtonCaption = '...'
    DataField = 'CLIENTE'
    DataSource = ds_Comissoes
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
      'TIPO in ('#39'CLIENTE'#39')'
      'AND'
      'COALESCE(ATIVO,'#39'S'#39')<>'#39'N'#39
      'AND'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'CODIGO'
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
        DisplayLabel = 'Raz'#227'o Social:'
        DisplayWidth = 60
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'NOME_FANTASIA'
        WhereSyntax = 'NOME_FANTASIA'
        DisplayLabel = 'Nome Fantasia'
        DisplayWidth = 32
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end>
    SearchPresetList = <>
    ShowPresets = False
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
  object EstSearchDialogZeos2: TIDBEditDialog
    Left = 160
    Top = 102
    Width = 65
    Height = 22
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = ''
    Visible = True
    LabelCaption = 'Representante'
    LabelAlwaysEnabled = True
    LabelFont.Charset = ANSI_CHARSET
    LabelFont.Color = clRed
    LabelFont.Height = -12
    LabelFont.Name = 'Calibri'
    LabelFont.Style = [fsBold]
    Lookup.Separator = ';'
    Version = '5.0.0.0'
    ButtonStyle = bsButton
    ButtonWidth = 16
    ButtonHint = 'Procurar...'
    Etched = False
    ButtonCaption = '...'
    DataField = 'VENDEDOR'
    DataSource = ds_Comissoes
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbFocusControl = EditNomeVendedor
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
      '  TIPO='#39'VENDEDOR'#39
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
  object EditNomeFormaPagto: TEdit
    Left = 473
    Top = 271
    Width = 228
    Height = 22
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 23
  end
  object EditPagamento: TIDBEditDialog
    Left = 407
    Top = 271
    Width = 65
    Height = 22
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
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
    DataSource = ds_Comissoes
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
      'SELECT COUNT(NOME) FROM CAD_FORMAPAGTO'
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
    Top = 389
    Width = 712
    Height = 79
    Align = alBottom
    Caption = 'Observa'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 27
    object DBMemo1: TDBMemo
      Left = 2
      Top = 16
      Width = 708
      Height = 61
      Align = alClient
      DataField = 'OBSERVACAO'
      DataSource = ds_Comissoes
      TabOrder = 0
    end
  end
  object DCodPlano: TIDBEditDialog
    Left = 10
    Top = 231
    Width = 105
    Height = 22
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
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
    DataSource = ds_Comissoes
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
    Left = 490
    Top = 102
    Width = 112
    Height = 22
    Style = csDropDownList
    DataField = 'DC'
    DataSource = ds_Comissoes
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Items.Strings = (
      'CREDITO'
      'DEBITO')
    ParentFont = False
    TabOrder = 5
  end
  object EstSearchDialogZeos1: TIDBEditDialog
    Left = 407
    Top = 231
    Width = 65
    Height = 22
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    Text = ''
    Visible = True
    EditType = etUppercase
    EmptyText = 'F8 - Pesquisar'
    FocusColor = clWindow
    LabelCaption = 'Departamento:'
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
    DataSource = ds_Comissoes
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
  object Edit2: TEdit
    Left = 473
    Top = 231
    Width = 228
    Height = 22
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
  end
  object ContaProcurar: TIDBEditDialog
    Left = 10
    Top = 271
    Width = 105
    Height = 22
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    Text = ''
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
    DataSource = ds_Comissoes
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbFocusControl = EditNomeContaCaixa
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_CONTAS'
      'WHERE'
      'CODIGO=:CODIGO')
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
  object EditNomeContaCaixa: TEdit
    Left = 121
    Top = 271
    Width = 251
    Height = 22
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 21
    Text = '***'
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 468
    Width = 712
    Height = 58
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 29
    TabStop = True
    ExplicitTop = 468
    ExplicitWidth = 712
    inherited W7Panel1: TPanel
      Width = 712
      ExplicitWidth = 712
      inherited SpbExtra: TSpeedButton
        Width = 75
        ExplicitWidth = 75
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
  object EditConta_Credito: TIDBEditDialog
    Left = 10
    Top = 311
    Width = 92
    Height = 22
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
    Text = '0'
    Visible = True
    EditType = etNumeric
    EmptyText = 'F8 - Pesquisar'
    LabelCaption = 'Conta Banc'#225'ria'
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
    DataField = 'CONTACORRENTE'
    DataSource = ds_Comissoes
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbFocusControl = EditContaCorrente
    SQLdbCampoRetorno = 'DADOS_CONTA'
    SQLdbRetornoVazio = ' *** '
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT DADOS_CONTA   FROM VIEW_CONTA_CORRENTE_DADOS'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM VIEW_CONTA_CORRENTE_DADOS'
      'WHERE'
      '%WHERE%')
    CountQuery.Strings = (
      'SELECT count(*) FROM VIEW_CONTA_CORRENTE_DADOS'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'DADOS_CONTA'
        WhereSyntax = 'DADOS_CONTA'
        DisplayLabel = 'CONTA CORRENTE:'
        DisplayWidth = 100
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
  object EditContaCorrente: TEdit
    Left = 107
    Top = 311
    Width = 594
    Height = 22
    CharCase = ecUpperCase
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    Text = '***'
  end
  object dbDlgProcurar: TIDBEditDialog
    Left = 582
    Top = 8
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
    TabOrder = 30
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
      'SELECT *  FROM VIEW_FIN_COMISSOES'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'NOTAFISCAL'
        WhereSyntax = 'NOTAFISCAL'
        DisplayLabel = 'NOTA FISCAL:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scUpper
      end
      item
        FieldName = 'DOCUMENTO'
        WhereSyntax = 'DOCUMENTO'
        DisplayLabel = 'DOCUMENTO:'
        DisplayWidth = 12
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
        FieldType = ftDate
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VENDEDOR_NOME'
        WhereSyntax = 'VENDEDOR_NOME'
        DisplayLabel = 'REPRESENTANTE:'
        DisplayWidth = 30
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'CLIENTE_NOME'
        WhereSyntax = 'CLIENTE_NOME'
        DisplayLabel = 'CLIENTE:'
        DisplayWidth = 25
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'VALOR'
        WhereSyntax = 'VALOR'
        DisplayLabel = 'VALOR COMISS'#195'O:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
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
        DefaultComparison = scBeginsWith
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
  object DBRadioGroup1: TDBRadioGroup
    Left = 0
    Top = 33
    Width = 712
    Height = 45
    Align = alTop
    Caption = 'Quitado'
    Columns = 2
    DataField = 'QUITADO'
    DataSource = ds_Comissoes
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
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
  object DBComboBox2: TDBComboBox
    Left = 607
    Top = 102
    Width = 93
    Height = 21
    Style = csDropDownList
    DataField = 'ORIGEM'
    DataSource = ds_Comissoes
    Items.Strings = (
      'NF-E'
      'PEDIDO'
      'MANUAL')
    TabOrder = 6
  end
  object DBEdit1: TDBEdit
    Left = 193
    Top = 146
    Width = 62
    Height = 22
    CharCase = ecUpperCase
    DataField = 'PEDIDO'
    DataSource = ds_Comissoes
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit3: TDBEdit
    Left = 384
    Top = 146
    Width = 104
    Height = 22
    CharCase = ecUpperCase
    DataField = 'VALOR_VENDA'
    DataSource = ds_Comissoes
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object DBEdit5: TDBEdit
    Left = 504
    Top = 146
    Width = 79
    Height = 22
    CharCase = ecUpperCase
    DataField = 'COMISSAO'
    DataSource = ds_Comissoes
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object DBEdit6: TDBEdit
    Left = 97
    Top = 146
    Width = 70
    Height = 22
    CharCase = ecUpperCase
    DataField = 'CONFERENCIA'
    DataSource = ds_Comissoes
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object db_Comissoes: TFDQuery
    BeforeOpen = db_ComissoesBeforeOpen
    BeforePost = db_ComissoesBeforePost
    OnNewRecord = db_ComissoesNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM FIN_COMISSOES'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 392
    Top = 376
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_ComissoesEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_ComissoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_ComissoesDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_ComissoesVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_ComissoesDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
      EditMask = '99/99/9999'
    end
    object db_ComissoesCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_ComissoesVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_ComissoesDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_ComissoesNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object db_ComissoesCONFERENCIA: TIntegerField
      FieldName = 'CONFERENCIA'
    end
    object db_ComissoesPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object db_ComissoesPEDIDOPARALELO: TStringField
      FieldName = 'PEDIDOPARALELO'
      Size = 30
    end
    object db_ComissoesFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_ComissoesCONTACORRENTE: TIntegerField
      FieldName = 'CONTACORRENTE'
    end
    object db_ComissoesCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_ComissoesDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_ComissoesPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_ComissoesORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 30
    end
    object db_ComissoesDC: TStringField
      FieldName = 'DC'
      Size = 30
    end
    object db_ComissoesCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      DisplayFormat = '###,##0.00%'
      EditFormat = '###,##0.00'
    end
    object db_ComissoesVALOR_VENDA: TBCDField
      FieldName = 'VALOR_VENDA'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComissoesVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComissoesVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComissoesVALOR_SALDO: TBCDField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComissoesHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_ComissoesOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_ComissoesATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 10
    end
    object db_ComissoesQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_ComissoesSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 10
    end
    object db_ComissoesNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Size = 30
    end
  end
  object ds_Comissoes: TDataSource
    AutoEdit = False
    DataSet = db_Comissoes
    Left = 464
    Top = 376
  end
end
