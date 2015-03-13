object FrmControleCaixa: TFrmControleCaixa
  Left = 189
  Top = 108
  VertScrollBar.Style = ssFlat
  Caption = 'Controle de Caixa'
  ClientHeight = 483
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object PaginaCaixa: TPageControl
    Left = 0
    Top = 57
    Width = 639
    Height = 365
    Cursor = crHandPoint
    ActivePage = Tab_Principal
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Tab_Principal: TTabSheet
      Caption = 'Registros'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DbGrid_NotaFiscal: TDBGrid
        Left = 0
        Top = 0
        Width = 631
        Height = 337
        Align = alClient
        Color = 14811135
        DataSource = DS_Caixa
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DbGrid_NotaFiscalDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data Emiss'#227'o:'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCUMENTO'
            Title.Caption = 'Documento'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DC'
            Title.Caption = 'Opera'#231#227'o'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Title.Caption = 'Hist'#243'rico'
            Width = 232
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_CREDITO'
            Title.Caption = 'Cr'#233'dito'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_DEBITO'
            Title.Caption = 'D'#233'bito'
            Visible = True
          end>
      end
    end
    object Tab_Edicao: TTabSheet
      Caption = 'Edi'#231#227'o'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label3: TLabel
        Left = 31
        Top = 45
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Documento'
      end
      object Label4: TLabel
        Left = 5
        Top = 19
        Width = 81
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Documento'
      end
      object Label7: TLabel
        Left = 44
        Top = 156
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Hist'#243'rico'
      end
      object LblCredito: TLabel
        Left = 25
        Top = 183
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor Cr'#233'dito'
        Enabled = False
      end
      object LblDebito: TLabel
        Left = 27
        Top = 206
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor D'#233'bito'
        Enabled = False
      end
      object Panel2: TPanel
        Left = 8
        Top = 507
        Width = 105
        Height = 28
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = ' N.F.:'
        Color = 9101294
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        object DBTextNF: TDBText
          Left = 48
          Top = 6
          Width = 51
          Height = 17
          Alignment = taRightJustify
          Color = 9101294
          DataField = 'NUMERO_NF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
      object Panel3: TPanel
        Left = 592
        Top = 507
        Width = 161
        Height = 28
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = ' Total da Nota:'
        Color = 12906487
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        object DBText1: TDBText
          Left = 80
          Top = 6
          Width = 77
          Height = 17
          Alignment = taRightJustify
          Color = 12906487
          DataField = 'TOTAL_NF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
      object Panel4: TPanel
        Left = 377
        Top = 507
        Width = 108
        Height = 28
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = ' ICMS:'
        Color = 12906487
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        object DBText2: TDBText
          Left = 46
          Top = 6
          Width = 57
          Height = 17
          Alignment = taRightJustify
          Color = 12906487
          DataField = 'VLR_ICMS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
      object Panel5: TPanel
        Left = 195
        Top = 507
        Width = 179
        Height = 28
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = ' Total dos Produtos'
        Color = 12906487
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        object DBText3: TDBText
          Left = 101
          Top = 6
          Width = 74
          Height = 17
          Alignment = taRightJustify
          Color = 12906487
          DataField = 'TOTAL_PROD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
      object Panel6: TPanel
        Left = 492
        Top = 507
        Width = 95
        Height = 28
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = ' IPI:'
        Color = 12906487
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        object DBText4: TDBText
          Left = 34
          Top = 6
          Width = 57
          Height = 17
          Alignment = taRightJustify
          Color = 12906487
          DataField = 'VLR_IPI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
      object EditDocumento: TDBEdit
        Left = 90
        Top = 42
        Width = 92
        Height = 21
        DataField = 'DOCUMENTO'
        DataSource = DS_Caixa
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 90
        Top = 15
        Width = 92
        Height = 21
        DataField = 'DATA'
        DataSource = DS_Caixa
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 90
        Top = 153
        Width = 488
        Height = 21
        CharCase = ecUpperCase
        DataField = 'HISTORICO'
        DataSource = DS_Caixa
        TabOrder = 8
      end
      object EditCredito: TDBEdit
        Left = 90
        Top = 178
        Width = 92
        Height = 21
        DataField = 'VLR_CREDITO'
        DataSource = DS_Caixa
        Enabled = False
        TabOrder = 9
      end
      object EditDebito: TDBEdit
        Left = 90
        Top = 203
        Width = 92
        Height = 21
        DataField = 'VLR_DEBITO'
        DataSource = DS_Caixa
        Enabled = False
        TabOrder = 10
      end
      object EditNomePlanoContas: TEdit
        Left = 187
        Top = 71
        Width = 391
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 3
        Text = '***'
      end
      object Edit2: TEdit
        Left = 187
        Top = 126
        Width = 391
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 7
        Text = '***'
      end
      object EstSearchDialogZeos1: TIDBEditDialog
        Left = 90
        Top = 126
        Width = 92
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
        TabOrder = 6
        Text = ''
        Visible = True
        EditType = etUppercase
        EmptyText = 'F8 - Pesquisar'
        FocusColor = clWindow
        LabelCaption = 'Centro de Custo:'
        LabelPosition = lpLeftCenter
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
        DataSource = DS_Caixa
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = Edit2
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_DEPARTAMENTOS'
          'WHERE'
          'CODIGO=:CODIGO')
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
      object DCodPlano: TIDBEditDialog
        Left = 89
        Top = 70
        Width = 92
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
        TabOrder = 2
        Text = ''
        Visible = True
        EditType = etUppercase
        EmptyText = 'F8 - Pesquisar'
        FocusColor = clBtnFace
        LabelCaption = 'Plano de Contas'
        LabelPosition = lpLeftCenter
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
        DataField = 'PLN_CONTA'
        DataSource = DS_Caixa
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
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM VIEW_PLANOCONTAS'
          'WHERE'
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
      object EditNomeContaCaixa: TEdit
        Left = 187
        Top = 100
        Width = 391
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
        TabOrder = 5
        Text = '***'
      end
      object ContaProcurar: TIDBEditDialog
        Left = 89
        Top = 99
        Width = 92
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
        TabOrder = 4
        Text = '0'
        Visible = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Conta Caixa:'
        LabelPosition = lpLeftCenter
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
        DataSource = DS_Caixa
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
          'AND'
          'EMPRESA=1')
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
    end
  end
  object Navegador: TDBNavigator
    Left = 0
    Top = 33
    Width = 639
    Height = 24
    DataSource = DS_Caixa
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
    TabOrder = 1
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 422
    Width = 639
    Height = 61
    Align = alBottom
    AutoSize = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 422
    ExplicitWidth = 639
    ExplicitHeight = 61
    inherited W7Panel1: TPanel
      Width = 639
      Height = 61
      ExplicitWidth = 639
      ExplicitHeight = 61
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 639
    Height = 33
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 639
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 639
      Height = 33
      ExplicitWidth = 639
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 142
        Height = 23
        Caption = 'Controle de Caixa'
        Font.Height = -17
        ExplicitWidth = 142
        ExplicitHeight = 23
      end
    end
  end
  object dbEditPesquisar: TIDBEditDialog
    Left = 428
    Top = 6
    Width = 65
    Height = 21
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    TabOrder = 4
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
      'SELECT * FROM VIEW_FIN_CONTROLECAIXA'
      'WHERE'
      '%WHERE%'
      ''
      '')
    SearchDialogFieldList = <
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
        FieldName = 'CONTACAIXANOME'
        WhereSyntax = 'CONTACAIXANOME'
        DisplayLabel = 'CONTA CAIXA:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'RECEITAS'
        WhereSyntax = 'RECEITAS'
        DisplayLabel = 'RECEITAS:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DESPESAS'
        WhereSyntax = 'DESPESAS'
        DisplayLabel = 'DESPESAS:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DEPARTAMENTONOME'
        WhereSyntax = 'DEPARTAMENTONOME'
        DisplayLabel = 'CENTRO DE CUSTO:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'PLANOCONTANOME'
        WhereSyntax = 'PLANOCONTANOME'
        DisplayLabel = 'PLANO CONTA:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'HITORICO'
        WhereSyntax = 'HITORICO'
        DisplayLabel = 'HIT'#211'RICO:'
        DisplayWidth = 40
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
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
  object DS_Caixa: TDataSource
    AutoEdit = False
    DataSet = db_CAIXA
    Left = 436
    Top = 58
  end
  object db_CAIXA: TFDQuery
    AfterScroll = db_CAIXAAfterScroll
    OnNewRecord = db_CAIXANewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CTRL_CAIXA'
      'ORDER BY DATA DESC, DOCUMENTO ASC')
    Left = 500
    Top = 58
    object db_CAIXACODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_CAIXADATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_CAIXADOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_CAIXADEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_CAIXACONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_CAIXAPLN_CONTA_CLASSE: TIntegerField
      FieldName = 'PLN_CONTA_CLASSE'
    end
    object db_CAIXAPLN_CONTA: TStringField
      FieldName = 'PLN_CONTA'
      OnChange = db_CAIXAPLN_CONTAChange
      Size = 30
    end
    object db_CAIXADC: TStringField
      FieldName = 'DC'
      Size = 30
    end
    object db_CAIXAHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object db_CAIXAVLR_CREDITO: TBCDField
      FieldName = 'VLR_CREDITO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CAIXAVLR_DEBITO: TBCDField
      FieldName = 'VLR_DEBITO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CAIXAMES: TIntegerField
      FieldName = 'MES'
    end
    object db_CAIXAANO: TIntegerField
      FieldName = 'ANO'
    end
    object db_CAIXAFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_CAIXAEFETIVADO: TStringField
      FieldName = 'EFETIVADO'
      Size = 10
    end
  end
end
