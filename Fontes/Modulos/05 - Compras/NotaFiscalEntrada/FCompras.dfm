object FrmCompras: TFrmCompras
  Left = 249
  Top = 16
  VertScrollBar.Style = ssFlat
  Caption = 'Compras'
  ClientHeight = 535
  ClientWidth = 956
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object BoxFornecedor: TGroupBox
    Left = 0
    Top = 33
    Width = 956
    Height = 137
    Align = alTop
    Caption = 'Dados Principais'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 892
    object Label2: TLabel
      Left = 83
      Top = 14
      Width = 56
      Height = 13
      Caption = 'Nota Fiscal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 14
      Width = 26
      Height = 13
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 148
      Top = 14
      Width = 37
      Height = 13
      Caption = 'Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 679
      Top = 94
      Width = 49
      Height = 14
      Caption = 'Validade:'
    end
    object Label14: TLabel
      Left = 610
      Top = 94
      Width = 29
      Height = 14
      Caption = 'Lote:'
    end
    object Label1: TLabel
      Left = 518
      Top = 94
      Width = 78
      Height = 14
      Caption = 'Valor do Frete'
    end
    object DBEditData: TDBEdit
      Left = 10
      Top = 28
      Width = 65
      Height = 21
      Color = clBtnFace
      DataField = 'DATA'
      DataSource = ds_Compras
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EditDocumento: TDBEdit
      Left = 81
      Top = 28
      Width = 65
      Height = 21
      DataField = 'NOTAFISCAL'
      DataSource = ds_Compras
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 148
      Top = 28
      Width = 65
      Height = 21
      DataField = 'DATAENTRADA'
      DataSource = ds_Compras
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit16: TDBEdit
      Left = 610
      Top = 109
      Width = 65
      Height = 22
      DataField = 'LOTE'
      DataSource = ds_Compras
      TabOrder = 14
    end
    object DBEdit17: TDBEdit
      Left = 680
      Top = 109
      Width = 65
      Height = 22
      DataField = 'VALIDADE'
      DataSource = ds_Compras
      TabOrder = 15
    end
    object EditFornecedor: TIDBEditDialog
      Left = 219
      Top = 28
      Width = 70
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
      Text = '0'
      Visible = True
      EditType = etNumeric
      EmptyText = 'F8 - Cliente'
      FocusColor = clWindow
      LabelCaption = 'Fornecedor:'
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
      ButtonHint = 'C'#243'digo do Cliente'
      Etched = False
      ButtonCaption = '...'
      DataField = 'FORNECEDOR'
      DataSource = ds_Compras
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomeCliente
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = '***'
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT CODIGO, NOME FROM CAD_CLIENTES'
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
          DisplayLabel = 'C'#243'digo'
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
          DisplayLabel = 'RAZ'#195'O SOCIAL:'
          DisplayWidth = 75
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
      Left = 291
      Top = 28
      Width = 454
      Height = 21
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EditNomePlanoContas: TEdit
      Left = 595
      Top = 68
      Width = 150
      Height = 20
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object Edit1: TEdit
      Left = 88
      Top = 68
      Width = 150
      Height = 20
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DbEditCFOP: TIDBEditDialog
      Left = 10
      Top = 68
      Width = 75
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
      DataSource = ds_Compras
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
    object Edit2: TEdit
      Left = 319
      Top = 68
      Width = 131
      Height = 20
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object EstSearchDialogZeos1: TIDBEditDialog
      Left = 244
      Top = 68
      Width = 74
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
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
      DataSource = ds_Compras
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
    object EditPlano: TIDBEditDialog
      Left = 456
      Top = 68
      Width = 138
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
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
      DataSource = ds_Compras
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
    object EditTransportadora: TIDBEditDialog
      Left = 10
      Top = 109
      Width = 75
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
      TabOrder = 11
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
      DataSource = ds_Compras
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
        'SELECT COUNT(*) FROM CAD_CLIENTES'
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
    object EditNomeTrasportadora: TEdit
      Left = 88
      Top = 109
      Width = 424
      Height = 21
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      Text = '***'
    end
    object DBEdit2: TDBEdit
      Left = 518
      Top = 109
      Width = 71
      Height = 22
      DataField = 'FRETE_VALOR'
      DataSource = ds_Compras
      TabOrder = 13
    end
  end
  object BoxProdutos: TGroupBox
    Left = 0
    Top = 170
    Width = 956
    Height = 192
    Align = alClient
    Caption = 'ITENS DA NOTA FISCAL'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 892
    object DBGrid_Produtos: TDBGrid
      Left = 2
      Top = 15
      Width = 952
      Height = 137
      Align = alClient
      Color = 14811135
      DataSource = ds_ComprasItens
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -12
      TitleFont.Name = 'Calibri'
      TitleFont.Style = [fsBold]
      OnEnter = DBGrid_ProdutosEnter
      OnKeyDown = DBGrid_ProdutosKeyDown
      OnKeyPress = DBGrid_ProdutosKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PRODUTO'
          ReadOnly = True
          Title.Caption = 'PRODUTO:'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          ReadOnly = True
          Title.Caption = 'DESCRI'#199#195'O DO PRODUTO:'
          Width = 224
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UND'
          ReadOnly = True
          Title.Caption = 'UNIDADE:'
          Width = 61
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taRightJustify
          Title.Caption = 'QUANTIDADE:'
          Width = 85
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'VL_UNITARIO'
          Title.Alignment = taRightJustify
          Title.Caption = 'VALOR UNIT'#193'RIO:'
          Width = 97
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'DESCONTO'
          Title.Alignment = taRightJustify
          Title.Caption = 'DESCONTO %:'
          Width = 86
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'ICMS'
          Title.Alignment = taRightJustify
          Title.Caption = 'ICMS %'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ICMS_VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'ICMS VALOR:'
          Width = 82
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'IPI'
          Title.Alignment = taRightJustify
          Title.Caption = 'IPI %'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IPI_VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'IPI VALOR:'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_TOTAL'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'VALOR TOTAL:'
          Width = 85
          Visible = True
        end>
    end
    object GroupBox4: TGroupBox
      Left = 2
      Top = 152
      Width = 952
      Height = 38
      Align = alBottom
      Enabled = False
      TabOrder = 1
      ExplicitWidth = 888
      object Label5: TLabel
        Left = 218
        Top = 14
        Width = 156
        Height = 13
        Alignment = taRightJustify
        Caption = 'QUANTIDADE DE PRODUTOS:'
      end
      object DBEdit10: TDBEdit
        Left = 376
        Top = 10
        Width = 73
        Height = 21
        Color = 14811135
        DataField = 'QTDE_PRODUTOS'
        DataSource = ds_Compras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  inline FrmFrameBotoes_II1: TFrmFrameBotoes_II
    Left = 0
    Top = 461
    Width = 956
    Height = 74
    Align = alBottom
    PopupMenu = FrmFrameBotoes_II1.PopupMenu1
    TabOrder = 2
    TabStop = True
    ExplicitTop = 461
    ExplicitWidth = 956
    ExplicitHeight = 74
    inherited PainelBotoes: TPanel
      Width = 956
      Height = 74
      OnDblClick = FrmFrameBotoes_II1PainelBotoesDblClick
      ExplicitWidth = 892
      ExplicitHeight = 74
      inherited SpbSair: TSpeedButton
        Top = 1
        OnClick = FrmFrameBotoes_II1SpbSairClick
        ExplicitTop = 1
      end
      inherited SpbImprimir: TSpeedButton
        Left = 525
        Top = 1
        OnClick = FrmFrameBotoes_II1SpbImprimirClick
        ExplicitLeft = 525
        ExplicitTop = 1
      end
      inherited SpbProcurar: TSpeedButton
        Left = 395
        Top = 1
        OnClick = FrmFrameBotoes_II1SpbProcurarClick
        ExplicitLeft = 395
        ExplicitTop = 1
      end
      inherited SpbExcluir: TSpeedButton
        Left = 266
        Top = 1
        OnClick = FrmFrameBotoes_II1SpbExcluirClick
        ExplicitLeft = 266
        ExplicitTop = 1
      end
      inherited SpbCancelar: TSpeedButton
        Top = 1
        OnClick = FrmFrameBotoes_II1SpbCancelarClick
        ExplicitTop = 1
      end
      inherited SpbSalvar: TSpeedButton
        Top = 1
        OnClick = FrmFrameBotoes_II1SpbSalvarClick
        ExplicitTop = 1
      end
      inherited SpbEditar: TSpeedButton
        Top = 1
        OnClick = FrmFrameBotoes_II1SpbEditarClick
        ExplicitTop = 1
      end
      inherited SpbAdicionar: TSpeedButton
        Left = 4
        Top = 1
        OnClick = FrmFrameBotoes_II1SpbAdicionarClick
        ExplicitLeft = 4
        ExplicitTop = 1
      end
      inherited SpbExtra1: TSpeedButton
        Left = 331
        Top = 1
        Caption = 'Estornar...'
        Visible = True
        OnClick = FrmFrameBotoes_II1BtnExtra1Click
        ExplicitLeft = 331
        ExplicitTop = 1
      end
      inherited SpbExtra2: TSpeedButton
        Left = 460
        Top = 1
        Caption = 'Faturas...'
        Visible = True
        OnClick = FrmFrameBotoes_II1BtnExtra2Click
        ExplicitLeft = 460
        ExplicitTop = 1
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 956
    Height = 33
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 892
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 956
      Height = 33
      ExplicitWidth = 892
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 235
        Caption = 'Compras | Entrada de Produtos'
        ExplicitWidth = 235
      end
    end
  end
  object BoxCalculo: TGroupBox
    Left = 0
    Top = 362
    Width = 956
    Height = 99
    Align = alBottom
    Caption = 'C'#193'LCULO DO IMPOSTO'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    ExplicitWidth = 892
    object Label21: TLabel
      Left = 593
      Top = 56
      Width = 97
      Height = 11
      Caption = 'Valor Total da Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 593
      Top = 18
      Width = 124
      Height = 11
      Caption = 'Valor Total dos Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 5
      Top = 18
      Width = 123
      Height = 11
      Caption = 'Base de C'#225'lculo do ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 300
      Top = 56
      Width = 121
      Height = 11
      Caption = 'Outras Desp. Acess'#243'rias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 157
      Top = 56
      Width = 80
      Height = 11
      Caption = 'Valor do Seguro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 5
      Top = 56
      Width = 72
      Height = 11
      Caption = 'Valor do Frete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 157
      Top = 18
      Width = 72
      Height = 11
      Caption = 'Valor do ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label39: TLabel
      Left = 300
      Top = 17
      Width = 91
      Height = 11
      Caption = 'Valor Total do IPI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object EFrete: TDBEdit
      Left = 5
      Top = 69
      Width = 130
      Height = 22
      DataField = 'PFRETE_VALOR'
      DataSource = ds_Compras
      TabOrder = 3
    end
    object ebase: TDBEdit
      Left = 5
      Top = 30
      Width = 130
      Height = 22
      Color = clBtnFace
      DataField = 'ICMS_BASECALCULO'
      DataSource = ds_Compras
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object eseguro: TDBEdit
      Left = 157
      Top = 69
      Width = 130
      Height = 22
      DataField = 'VLR_SEGURO'
      DataSource = ds_Compras
      TabOrder = 4
    end
    object eoutras: TDBEdit
      Left = 300
      Top = 69
      Width = 130
      Height = 22
      DataField = 'VLR_DESPESAS_ASSESSORIAS'
      DataSource = ds_Compras
      TabOrder = 5
    end
    object eprod: TDBEdit
      Left = 593
      Top = 30
      Width = 130
      Height = 22
      Color = clBtnFace
      DataField = 'VALOR_PRODUTOS'
      DataSource = ds_Compras
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object enota: TDBEdit
      Left = 593
      Top = 69
      Width = 130
      Height = 22
      Color = clBtnFace
      DataField = 'TOTAL_NF'
      DataSource = ds_Compras
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit1: TDBEdit
      Left = 157
      Top = 30
      Width = 130
      Height = 22
      Color = clBtnFace
      DataField = 'ICMS_VALOR'
      DataSource = ds_Compras
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 300
      Top = 30
      Width = 130
      Height = 22
      Color = clBtnFace
      DataField = 'IPI_VALOR'
      DataSource = ds_Compras
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
  end
  object dbProcurarPedido: TIDBEditDialog
    Left = 625
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
    TabOrder = 5
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
      'SELECT * FROM VIEW_PEDIDOSCOMPRAS'
      'WHERE'
      'APROVADO IN ('#39'S'#39','#39'SIM'#39')'
      'AND'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'PEDIDO COMPRA:'
        DisplayWidth = 18
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
        FieldName = 'DATA_ENTREGA'
        WhereSyntax = 'DATA_ENTREGA'
        DisplayLabel = 'ENTREGA:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FORNECEDOR'
        WhereSyntax = 'FORNECEDOR'
        DisplayLabel = 'FORNECEDOR:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FORNECEDOR_NOME'
        WhereSyntax = 'FORNECEDOR_NOME'
        DisplayLabel = 'NOME DO FORNECEDOR:'
        DisplayWidth = 43
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'QTDE_PEDIDA'
        WhereSyntax = 'QTDE_PEDIDA'
        DisplayLabel = 'QTDE:'
        DisplayWidth = 8
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VLR_TOTAL'
        WhereSyntax = 'VLR_TOTAL'
        DisplayLabel = 'VALOR TOTAL:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FRETE_VALOR'
        WhereSyntax = 'FRETE_VALOR'
        DisplayLabel = 'FRETE VALOR:'
        DisplayWidth = 13
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FRETE_TIPO_STATUS'
        WhereSyntax = 'FRETE_TIPO_STATUS'
        DisplayLabel = 'FRETE:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
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
  object dbProcurarCompra: TIDBEditDialog
    Left = 157
    Top = 6
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
    TabOrder = 6
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
      'SELECT * FROM VIEW_COMPRAS'
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
        FieldName = 'DATA'
        WhereSyntax = 'DATA'
        DisplayLabel = 'DATA:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'ENTRADA'
        WhereSyntax = 'ENTRADA'
        DisplayLabel = 'ENTRADA:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
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
        SearchCase = scMixed
      end
      item
        FieldName = 'PEDIDOCOMPRA'
        WhereSyntax = 'PEDIDOCOMPRA'
        DisplayLabel = 'PEDIDO COMPRA:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FORNECEDOR'
        WhereSyntax = 'FORNECEDOR'
        DisplayLabel = 'FORNECEDOR:'
        DisplayWidth = 13
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FORNECEDOR_NOME'
        WhereSyntax = 'FORNECEDOR_NOME'
        DisplayLabel = 'FORNECEDOR NOME:'
        DisplayWidth = 35
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'QTDE_TOTAL'
        WhereSyntax = 'QTDE_TOTAL'
        DisplayLabel = 'QTDE TOTAL:'
        DisplayFormat = '###,##0'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VLR_TOTAL'
        WhereSyntax = 'VLR_TOTAL'
        DisplayLabel = 'VLR TOTAL:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'BAIXADO'
        WhereSyntax = 'BAIXADO'
        DisplayLabel = 'BAIXADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
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
  object PopupMenu: TPopupMenu
    Left = 492
    Top = 331
    object Mnu_EspelhoNF: TMenuItem
      Caption = 'Espelho da Nota'
      Hint = 'Imprime um resumo da nota fiscal que se encontra o cursor'
      OnClick = Mnu_EspelhoNFClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Etiquetas1: TMenuItem
      Caption = 'Etiquetas...'
      Hint = 'Imprimir etiquetas de produtos'
      OnClick = Etiquetas1Click
    end
  end
  object DS_CtaPagar: TDataSource
    DataSet = db_CtaPagar
    Left = 212
    Top = 314
  end
  object db_CtaPagar: TFDQuery
    BeforeOpen = db_CtaPagarBeforeOpen
    BeforePost = db_CtaPagarBeforePost
    OnNewRecord = db_CtaPagarNewRecord
    MasterSource = ds_Compras
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'NOTAFISCAL=:NOTAFISCAL'
      'AND'
      'FORNECEDOR=:FORNECEDOR')
    Left = 212
    Top = 266
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_CtaPagarEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_CtaPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_CtaPagarFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object db_CtaPagarNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object db_CtaPagarSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_CtaPagarDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_CtaPagarVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_CtaPagarDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
    end
    object db_CtaPagarDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_CtaPagarPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_CtaPagarCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_CtaPagarESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_CtaPagarTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_CtaPagarVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaPagarVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaPagarVALOR_SALDO: TBCDField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaPagarDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_CtaPagarPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_CtaPagarHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_CtaPagarOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_CtaPagarQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
  end
  object db_Compras: TFDQuery
    BeforeOpen = db_ComprasBeforeOpen
    BeforePost = db_ComprasBeforePost
    AfterPost = db_ComprasAfterPost
    OnNewRecord = db_ComprasNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM COMPRAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 25
    Top = 264
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
    object db_ComprasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_ComprasCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_ComprasNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Required = True
      Size = 30
    end
    object db_ComprasMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object db_ComprasSERIE: TStringField
      FieldName = 'SERIE'
      Size = 30
    end
    object db_ComprasDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
      EditMask = '99/99/9999'
    end
    object db_ComprasDATAENTRADA: TSQLTimeStampField
      FieldName = 'DATAENTRADA'
      Required = True
      EditMask = '99/99/9999'
    end
    object db_ComprasVALIDADE: TSQLTimeStampField
      FieldName = 'VALIDADE'
      EditMask = '99/99/9999'
    end
    object db_ComprasFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      OnChange = db_ComprasFORNECEDORChange
    end
    object db_ComprasTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_ComprasCENTROCUSTO: TIntegerField
      FieldName = 'CENTROCUSTO'
    end
    object db_ComprasPEDIDOINTERNO: TIntegerField
      FieldName = 'PEDIDOINTERNO'
    end
    object db_ComprasFORNECEDORPEDIDO: TIntegerField
      FieldName = 'FORNECEDORPEDIDO'
    end
    object db_ComprasFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object db_ComprasPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 200
    end
    object db_ComprasCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_ComprasLOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object db_ComprasICMS_BASECALCULO: TBCDField
      FieldName = 'ICMS_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasICMS_VALOR: TBCDField
      FieldName = 'ICMS_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasICMS_BASECALCULO_SUBSTITUICAO: TBCDField
      FieldName = 'ICMS_BASECALCULO_SUBSTITUICAO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasICMS_VALOR_SUBSTITUICAO: TBCDField
      FieldName = 'ICMS_VALOR_SUBSTITUICAO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasICMS_REDUCAO: TBCDField
      FieldName = 'ICMS_REDUCAO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasICMS_REDUCAO_VALOR: TBCDField
      FieldName = 'ICMS_REDUCAO_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasIPI_BASECALCULO: TBCDField
      FieldName = 'IPI_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasIPI_VALOR: TBCDField
      FieldName = 'IPI_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasISS: TBCDField
      FieldName = 'ISS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasISS_BASECALCULO: TBCDField
      FieldName = 'ISS_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasISS_VALOR: TBCDField
      FieldName = 'ISS_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasVLR_SEGURO: TBCDField
      FieldName = 'VLR_SEGURO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasVLR_DESPESAS_ASSESSORIAS: TBCDField
      FieldName = 'VLR_DESPESAS_ASSESSORIAS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasVLR_RECEBIDO: TBCDField
      FieldName = 'VLR_RECEBIDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasTROCO: TBCDField
      FieldName = 'TROCO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasVLR_CAIXA: TBCDField
      FieldName = 'VLR_CAIXA'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasFRETE: TStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object db_ComprasFRETE_QUANTIDADE: TIntegerField
      FieldName = 'FRETE_QUANTIDADE'
    end
    object db_ComprasFRETE_ESPECIE: TStringField
      FieldName = 'FRETE_ESPECIE'
      Size = 30
    end
    object db_ComprasFRETE_MARCA: TStringField
      FieldName = 'FRETE_MARCA'
      Size = 30
    end
    object db_ComprasFRETE_NUMERO: TStringField
      FieldName = 'FRETE_NUMERO'
      Size = 30
    end
    object db_ComprasFRETE_PBRUTO: TBCDField
      FieldName = 'FRETE_PBRUTO'
    end
    object db_ComprasFRETE_PLIQUIDO: TBCDField
      FieldName = 'FRETE_PLIQUIDO'
    end
    object db_ComprasFRETE_VALOR: TBCDField
      FieldName = 'FRETE_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasQTDE_PRODUTOS: TIntegerField
      FieldName = 'QTDE_PRODUTOS'
      DisplayFormat = '###,##0'
      EditFormat = '###,##0'
    end
    object db_ComprasVALOR_PRODUTOS: TBCDField
      FieldName = 'VALOR_PRODUTOS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasTOTAL_NF: TBCDField
      FieldName = 'TOTAL_NF'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasATUALIZADO: TStringField
      FieldName = 'ATUALIZADO'
      Size = 10
    end
    object db_ComprasPFRETE: TBCDField
      FieldName = 'PFRETE'
    end
    object db_ComprasPFRETE_VALOR: TBCDField
      FieldName = 'PFRETE_VALOR'
      DisplayFormat = '###,##0.00'
    end
  end
  object ds_Compras: TDataSource
    DataSet = db_Compras
    Left = 27
    Top = 312
  end
  object ds_ComprasItens: TDataSource
    DataSet = db_ComprasItens
    Left = 123
    Top = 312
  end
  object db_ComprasItens: TFDQuery
    BeforePost = db_ComprasItensBeforePost
    AfterPost = db_ComprasItensAfterPost
    AfterDelete = db_ComprasItensAfterDelete
    MasterSource = ds_Compras
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM COMPRAS_ITENS'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    Left = 121
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_ComprasItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_ComprasItensNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 30
    end
    object db_ComprasItensMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object db_ComprasItensSERIE: TStringField
      FieldName = 'SERIE'
      Size = 30
    end
    object db_ComprasItensDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_ComprasItensDATAENTRADA: TSQLTimeStampField
      FieldName = 'DATAENTRADA'
      EditMask = '99/99/9999'
    end
    object db_ComprasItensVALIDADE: TSQLTimeStampField
      FieldName = 'VALIDADE'
      EditMask = '99/99/9999'
    end
    object db_ComprasItensFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object db_ComprasItensLOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object db_ComprasItensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object db_ComprasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object db_ComprasItensUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_ComprasItensCLASSIFICAO_FISCAL: TStringField
      FieldName = 'CLASSIFICAO_FISCAL'
      Size = 30
    end
    object db_ComprasItensSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 30
    end
    object db_ComprasItensICMS: TBCDField
      FieldName = 'ICMS'
      OnChange = db_ComprasItensICMSChange
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasItensICMS_BASECALCULO: TBCDField
      FieldName = 'ICMS_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasItensICMS_VALOR: TBCDField
      FieldName = 'ICMS_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasItensICMS_REDUCAO: TBCDField
      FieldName = 'ICMS_REDUCAO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasItensICMS_REDUCAO_VALOR: TBCDField
      FieldName = 'ICMS_REDUCAO_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasItensIPI: TBCDField
      FieldName = 'IPI'
      OnChange = db_ComprasItensIPIChange
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasItensIPI_BASECALCULO: TBCDField
      FieldName = 'IPI_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasItensIPI_VALOR: TBCDField
      FieldName = 'IPI_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasItensVL_UNITARIO: TBCDField
      FieldName = 'VL_UNITARIO'
      OnChange = db_ComprasItensVL_UNITARIOChange
      DisplayFormat = '###,##0.000000'
      EditFormat = '###,##0.000000'
    end
    object db_ComprasItensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      OnChange = db_ComprasItensDESCONTOChange
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasItensDESCONTO_VLR: TBCDField
      FieldName = 'DESCONTO_VLR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasItensMARKUP: TBCDField
      FieldName = 'MARKUP'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasItensMG_LUCRO: TBCDField
      FieldName = 'MG_LUCRO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasItensPRC_VENDA: TBCDField
      FieldName = 'PRC_VENDA'
      DisplayFormat = '###,##0.000000'
      EditFormat = '###,##0.000000'
    end
    object db_ComprasItensVL_TOTAL: TBCDField
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,##0.000000'
      EditFormat = '###,##0.000000'
    end
    object db_ComprasItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      OnChange = db_ComprasItensQUANTIDADEChange
      DisplayFormat = '###,##0.0000'
      EditFormat = '###,##0.0000'
    end
    object db_ComprasItensPFRETE: TBCDField
      FieldName = 'PFRETE'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ComprasItensPFRETE_VALOR: TBCDField
      FieldName = 'PFRETE_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
  end
  object db_ComprasPedidos: TFDQuery
    AfterOpen = db_ComprasPedidosAfterOpen
    BeforeClose = db_ComprasPedidosBeforeClose
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM Compra_Pedidos'
      'Where'
      'CODIGO=:CODIGO')
    Left = 313
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_ComprasPedidosItens: TFDQuery
    MasterSource = ds_ComprasPedidos
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM Compra_Pedidos_Itens'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 313
    Top = 320
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_Estoque: TFDQuery
    BeforePost = db_EstoqueBeforePost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS'
      'where'
      'REFERENCIA=:REFERENCIA')
    Left = 484
    Top = 279
    ParamData = <
      item
        Name = 'REFERENCIA'
      end>
  end
  object ds_ComprasPedidos: TDataSource
    DataSet = db_ComprasPedidos
    Left = 316
    Top = 378
  end
  object SP_CalculaItens: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPCALCULA_ITEM_COMPRA'
    Left = 216
    Top = 376
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SPATUALIZA_COMPRA_PRODUTOS: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPATUALIZA_COMPRA_PRODUTOS'
    Left = 488
    Top = 384
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'NCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'SPRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'NQUANTIDADE'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'NNVALOR'
        DataType = ftFloat
        ParamType = ptInputOutput
      end>
  end
  object SPDELETA_COMPRA_PRODUTOS: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPDELETA_COMPRA_PRODUTOS'
    Left = 120
    Top = 376
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
        Size = 2097251
      end
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
        Size = 6553600
      end>
  end
  object db_CtaPagarFrete: TFDQuery
    BeforeOpen = db_CtaPagarFreteBeforeOpen
    BeforePost = db_CtaPagarFreteBeforePost
    OnNewRecord = db_CtaPagarFreteNewRecord
    MasterSource = ds_Compras
    MasterFields = 'EMPRESA;NOTAFISCAL;TRANSPORTADORA'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'NOTAFISCAL=:NOTAFISCAL'
      'AND'
      'FORNECEDOR=:TRANSPORTADORA')
    Left = 156
    Top = 178
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TRANSPORTADORA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_CtaPagarFreteEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object IntegerField3: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object StringField1: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object DateTimeField1: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object DateTimeField2: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object DateTimeField3: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
    end
    object StringField2: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object IntegerField4: TIntegerField
      FieldName = 'PARCELA'
    end
    object IntegerField5: TIntegerField
      FieldName = 'CFOP'
    end
    object StringField3: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object FloatField1: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField2: TBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField3: TBCDField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object IntegerField6: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object StringField5: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object StringField7: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object StringField8: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
  end
  object ds_CtaPagarFrete: TDataSource
    DataSet = db_CtaPagarFrete
    Left = 244
    Top = 178
  end
  object SPATUALIZA_COMPRA_GRADE: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPATUALIZA_COMPRA_GRADE'
    Left = 632
    Top = 256
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object SPPEDIDO_MATERIAPRIMAIMPORTAR: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPPEDIDO_MATERIAPRIMAIMPORTAR'
    Left = 312
    Top = 120
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
end
