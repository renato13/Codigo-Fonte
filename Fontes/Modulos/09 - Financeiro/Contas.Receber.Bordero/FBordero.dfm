object FrmBordero: TFrmBordero
  Left = 189
  Top = 108
  VertScrollBar.Style = ssFlat
  Caption = 'Border'#244' de Desconto'
  ClientHeight = 542
  ClientWidth = 1152
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1152
    Height = 33
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1154
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 1154
      Height = 33
      ExplicitWidth = 1154
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 169
        Height = 23
        Caption = 'Border'#244' de Desconto'
        Font.Height = -17
        ExplicitWidth = 169
        ExplicitHeight = 23
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 1152
    Height = 451
    Align = alClient
    BevelWidth = 3
    TabOrder = 0
    ExplicitWidth = 1154
    object GroupBox1: TGroupBox
      Left = 3
      Top = 3
      Width = 1146
      Height = 179
      Align = alTop
      Caption = 'Cabe'#231'alho Border'#244
      TabOrder = 0
      OnExit = GroupBox1Exit
      ExplicitWidth = 1148
      object Label3: TLabel
        Left = 70
        Top = 33
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
      end
      object Label4: TLabel
        Left = 224
        Top = 33
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data:'
      end
      object Label7: TLabel
        Left = 45
        Top = 158
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Observa'#231#227'o:'
      end
      object Label5: TLabel
        Left = 47
        Top = 132
        Width = 60
        Height = 13
        Hint = 'Juros por dia'
        Alignment = taRightJustify
        Caption = 'Juros p/ dia:'
        ParentShowHint = False
        ShowHint = True
      end
      object Label6: TLabel
        Left = 456
        Top = 132
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tarifa %:'
      end
      object Label10: TLabel
        Left = 206
        Top = 132
        Width = 90
        Height = 13
        Caption = '% [juro composto]'
      end
      object EditCodigo: TDBEdit
        Left = 111
        Top = 31
        Width = 58
        Height = 21
        DataField = 'CODIGO'
        DataSource = ds_Bordero
        Enabled = False
        TabOrder = 0
      end
      object EditData: TDBEdit
        Left = 254
        Top = 31
        Width = 92
        Height = 21
        DataField = 'EMISSAO'
        DataSource = ds_Bordero
        TabOrder = 1
      end
      object DBEdit9: TDBEdit
        Left = 108
        Top = 155
        Width = 491
        Height = 21
        CharCase = ecUpperCase
        DataField = 'OBSERVACAO'
        DataSource = ds_Bordero
        TabOrder = 10
      end
      object EditContaCorrente: TEdit
        Left = 208
        Top = 56
        Width = 391
        Height = 21
        AutoSize = False
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = '***'
      end
      object EditConta_Credito: TIDBEditDialog
        Left = 108
        Top = 56
        Width = 92
        Height = 21
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        TabOrder = 2
        Text = '0'
        Visible = True
        EditType = etNumeric
        EmptyText = 'F8 - Pesquisar'
        LabelCaption = 'Conta Banc'#225'ria:'
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
        DataField = 'CTACORRENTE'
        DataSource = ds_Bordero
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
            DisplayLabel = 'DADOS_CONTA'
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
      object DBEdit3: TDBEdit
        Left = 108
        Top = 129
        Width = 92
        Height = 21
        Hint = 'Juro composto'
        DataField = 'JUROS'
        DataSource = ds_Bordero
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object DBEdit5: TDBEdit
        Left = 508
        Top = 129
        Width = 92
        Height = 21
        DataField = 'TARIFA'
        DataSource = ds_Bordero
        TabOrder = 9
      end
      object ContaProcurar: TIDBEditDialog
        Left = 108
        Top = 80
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
        Text = ''
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
        DataSource = ds_Bordero
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
        Left = 208
        Top = 80
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
      object IDBEditDialog1: TIDBEditDialog
        Left = 108
        Top = 104
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
        TabOrder = 6
        Text = ''
        Visible = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Carteira:'
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
        DataField = 'CARTEIRA'
        DataSource = ds_Bordero
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = Edit1
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_CARTEIRA'
          'WHERE'
          'CODIGO=:CODIGO')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_CARTEIRA'
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
            DisplayLabel = 'CARTEIRA DE COBRAN'#199'A:'
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
      object Edit1: TEdit
        Left = 208
        Top = 104
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
        TabOrder = 7
        Text = '***'
      end
    end
    object GroupBox2: TGroupBox
      Left = 3
      Top = 182
      Width = 1146
      Height = 266
      Align = alClient
      Caption = 'Lista de Titulos'
      TabOrder = 1
      OnExit = GroupBox2Exit
      ExplicitWidth = 1148
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 1144
        Height = 208
        Align = alClient
        DataSource = ds_BorderoLista
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyDown = DBGrid1KeyDown
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'DOCUMENTO'
            Title.Caption = 'DOCUMENTO:'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Title.Caption = 'TIPO:'
            Width = 85
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'CLIENTE_NOME'
            ReadOnly = True
            Title.Caption = 'CLIENTE NOME:'
            Width = 211
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'DATA EMISS'#195'O:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENCIMENTO'
            Title.Caption = 'VENCIMENTO:'
            Width = 107
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'DIAS'
            ReadOnly = True
            Title.Caption = 'DIAS:'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'VALOR T'#205'TULO:'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORJUROS'
            Title.Caption = 'VALOR JUROS:'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTARIFAS'
            Title.Caption = 'VALOR TARIFAS:'
            Width = 110
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'VALORLIQUIDO'
            ReadOnly = True
            Title.Caption = 'VALOR LIQUIDO:'
            Width = 108
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 2
        Top = 223
        Width = 1144
        Height = 41
        Align = alBottom
        Enabled = False
        TabOrder = 1
        object Label1: TLabel
          Left = 695
          Top = 12
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Prazo m'#233'dio:'
        end
        object Label2: TLabel
          Left = 491
          Top = 12
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Total:'
        end
        object Label8: TLabel
          Left = 44
          Top = 12
          Width = 109
          Height = 13
          Alignment = taRightJustify
          Caption = 'Quantidade de Titulos:'
        end
        object Label9: TLabel
          Left = 299
          Top = 12
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Bruto:'
        end
        object DBEdit1: TDBEdit
          Left = 760
          Top = 10
          Width = 71
          Height = 21
          Color = clBtnFace
          DataField = 'PRAZOMEDIO'
          DataSource = ds_Bordero
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 549
          Top = 10
          Width = 108
          Height = 21
          Color = clBtnFace
          DataField = 'TITULOSVALOR'
          DataSource = ds_Bordero
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 156
          Top = 10
          Width = 108
          Height = 21
          Color = clBtnFace
          DataField = 'TITULOSQTDE'
          DataSource = ds_Bordero
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 359
          Top = 10
          Width = 108
          Height = 21
          Color = clBtnFace
          DataField = 'TITULOSVALORBRUTO'
          DataSource = ds_Bordero
          TabOrder = 3
        end
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 484
    Width = 1152
    Height = 58
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 484
    ExplicitWidth = 1154
    inherited W7Panel1: TPanel
      Width = 1154
      ExplicitWidth = 1154
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
      end
      inherited SpbImprimir: TSpeedButton
        Top = 3
        OnClick = FrmFrameBotoes1SpbImprimirClick
        ExplicitTop = 3
      end
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
      end
      inherited SpbExcluir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbExcluirClick
      end
      inherited SpbCancelar: TSpeedButton
        Top = 3
        OnClick = FrmFrameBotoes1SpbCancelarClick
        ExplicitTop = 3
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
  object dbLocalizaBordero: TIDBEditDialog
    Left = 639
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
    TabOrder = 3
    Text = ''
    Visible = False
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = 'Label'
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
      'SELECT * FROM FIN_BORDERO'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'EMPRESA'
        WhereSyntax = 'EMPRESA'
        DisplayLabel = 'EMPRESA'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'BORDER'#212':'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'EMISSAO'
        WhereSyntax = 'EMISSAO'
        DisplayLabel = 'EMISS'#195'O:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'DOCUMENTO'
        WhereSyntax = 'DOCUMENTO'
        DisplayLabel = 'DOCUMENTO:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'TITULOSQTDE'
        WhereSyntax = 'TITULOSQTDE'
        DisplayLabel = 'QTDE TITULOS:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'TITULOSVALOR'
        WhereSyntax = 'TITULOSVALOR'
        DisplayLabel = 'VALOR TITULOS:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'JUROS'
        WhereSyntax = 'JUROS'
        DisplayLabel = 'JUROS:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'TARIFA'
        WhereSyntax = 'TARIFA'
        DisplayLabel = 'TARIFA:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'OBSERVACAO'
        WhereSyntax = 'OBSERVACAO'
        DisplayLabel = 'OBSERVACAO'
        DisplayWidth = 54
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
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
  object dbDlgProcurar: TIDBEditDialog
    Left = 489
    Top = 262
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
    TabOrder = 4
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
      'SELECT *  FROM VIEW_FIN_CTARECEBER '
      'WHERE'
      'DESCONTADO='#39'NAO'#39
      'AND'
      '%WHERE%')
    SearchDialogFieldList = <
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
        FieldName = 'NOME_CLIENTE'
        WhereSyntax = 'NOME_CLIENTE'
        DisplayLabel = 'CLIENTE:'
        DisplayWidth = 30
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'NOME_VENDEDOR'
        WhereSyntax = 'NOME_VENDEDOR'
        DisplayLabel = 'VENDEDOR:'
        DisplayWidth = 25
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
  object ds_Bordero: TDataSource
    DataSet = db_Bordero
    Left = 320
    Top = 296
  end
  object ds_BorderoLista: TDataSource
    DataSet = db_BorderoLista
    Left = 328
    Top = 376
  end
  object db_Bordero: TFDQuery
    BeforeOpen = db_BorderoBeforeOpen
    OnNewRecord = db_BorderoNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_BORDERO'
      'WHERE'
      'EMPRESA=:EMPRESA')
    Left = 248
    Top = 296
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_BorderoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_BorderoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_BorderoEMISSAO: TStringField
      FieldName = 'EMISSAO'
      EditMask = '99/99/9999'
      Size = 30
    end
    object db_BorderoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_BorderoCTACORRENTE: TIntegerField
      FieldName = 'CTACORRENTE'
    end
    object db_BorderoCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_BorderoCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object db_BorderoPLN_CONTA: TStringField
      FieldName = 'PLN_CONTA'
      Size = 30
    end
    object db_BorderoTITULOSQTDE: TIntegerField
      FieldName = 'TITULOSQTDE'
    end
    object db_BorderoTITULOSVALORBRUTO: TBCDField
      FieldName = 'TITULOSVALORBRUTO'
      DisplayFormat = '###,##0.00'
    end
    object db_BorderoTITULOSVALOR: TBCDField
      FieldName = 'TITULOSVALOR'
      DisplayFormat = '###,##0.00'
    end
    object db_BorderoJUROS: TBCDField
      FieldName = 'JUROS'
      DisplayFormat = '###,##0.00%'
    end
    object db_BorderoTARIFA: TBCDField
      FieldName = 'TARIFA'
      DisplayFormat = '###,##0.00%'
    end
    object db_BorderoPRAZOMEDIO: TIntegerField
      FieldName = 'PRAZOMEDIO'
    end
    object db_BorderoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_BorderoVALORJUROS: TBCDField
      FieldName = 'VALORJUROS'
    end
    object db_BorderoVALORTARIFAS: TBCDField
      FieldName = 'VALORTARIFAS'
    end
  end
  object db_BorderoLista: TFDQuery
    AfterOpen = db_BorderoListaAfterOpen
    BeforePost = db_BorderoListaBeforePost
    AfterPost = db_BorderoListaAfterPost
    AfterDelete = db_BorderoListaAfterDelete
    AfterScroll = db_BorderoListaAfterScroll
    MasterSource = ds_Bordero
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_BORDEROLISTA'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 248
    Top = 384
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
    object db_BorderoListaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_BorderoListaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_BorderoListaDATA: TSQLTimeStampField
      FieldName = 'DATA'
      OnChange = db_BorderoListaDATAChange
      EditMask = '99/99/9999'
    end
    object db_BorderoListaVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      OnChange = db_BorderoListaVENCIMENTOChange
      EditMask = '99/99/9999'
    end
    object db_BorderoListaDIAS: TIntegerField
      FieldName = 'DIAS'
      OnChange = db_BorderoListaDIASChange
    end
    object db_BorderoListaCODIGOFINRECEBER: TIntegerField
      FieldName = 'CODIGOFINRECEBER'
    end
    object db_BorderoListaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_BorderoListaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      OnChange = db_BorderoListaCLIENTEChange
    end
    object db_BorderoListaCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      Size = 200
    end
    object db_BorderoListaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_BorderoListaVALOR: TBCDField
      FieldName = 'VALOR'
      OnChange = db_BorderoListaVALORChange
      DisplayFormat = '###,##0.00'
    end
    object db_BorderoListaVALORJUROS: TBCDField
      FieldName = 'VALORJUROS'
      OnChange = db_BorderoListaVALORJUROSChange
      DisplayFormat = '###,##0.00'
    end
    object db_BorderoListaVALORTARIFAS: TBCDField
      FieldName = 'VALORTARIFAS'
      OnChange = db_BorderoListaVALORTARIFASChange
      DisplayFormat = '###,##0.00'
    end
    object db_BorderoListaVALORLIQUIDO: TBCDField
      FieldName = 'VALORLIQUIDO'
      DisplayFormat = '###,##0.00'
    end
  end
  object db_somar: TFDQuery
    AfterOpen = db_BorderoListaAfterOpen
    BeforePost = db_BorderoListaBeforePost
    AfterScroll = db_BorderoListaAfterScroll
    MasterSource = ds_Bordero
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      'QTDETITULOS=COALESCE(COUNT(*),0),'
      'QTDEDIAS=COALESCE(SUM(DIAS),0),'
      'VALOR=COALESCE(SUM(VALOR),0),'
      'VALORLIQUIDO=COALESCE(SUM(VALORLIQUIDO),0),'
      ''
      'VALORJUROS=COALESCE(SUM(VALORJUROS),0),'
      'VALORTARIFAS=COALESCE(SUM(VALORTARIFAS),0)'
      ''
      'FROM FIN_BORDEROLISTA'
      ''
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 464
    Top = 352
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
    object db_somarQTDETITULOS: TIntegerField
      FieldName = 'QTDETITULOS'
      ReadOnly = True
    end
    object db_somarQTDEDIAS: TIntegerField
      FieldName = 'QTDEDIAS'
      ReadOnly = True
    end
    object db_somarVALOR: TBCDField
      FieldName = 'VALOR'
      ReadOnly = True
    end
    object db_somarVALORLIQUIDO: TBCDField
      FieldName = 'VALORLIQUIDO'
      ReadOnly = True
    end
  end
  object dbfx_Bordero: TfrxDBDataset
    UserName = 'dbfx_Bordero'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'EMISSAO=EMISSAO'
      'DOCUMENTO=DOCUMENTO'
      'CTACORRENTE=CTACORRENTE'
      'CONTACAIXA=CONTACAIXA'
      'CARTEIRA=CARTEIRA'
      'PLN_CONTA=PLN_CONTA'
      'TITULOSQTDE=TITULOSQTDE'
      'TITULOSVALORBRUTO=TITULOSVALORBRUTO'
      'TITULOSVALOR=TITULOSVALOR'
      'JUROS=JUROS'
      'TARIFA=TARIFA'
      'PRAZOMEDIO=PRAZOMEDIO'
      'OBSERVACAO=OBSERVACAO'
      'VALORJUROS=VALORJUROS'
      'VALORTARIFAS=VALORTARIFAS')
    DataSet = db_Bordero
    BCDToCurrency = False
    Left = 704
    Top = 232
  end
  object dbfx_BorderoLista: TfrxDBDataset
    UserName = 'dbfx_BorderoLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'VENCIMENTO=VENCIMENTO'
      'DIAS=DIAS'
      'CODIGOFINRECEBER=CODIGOFINRECEBER'
      'DOCUMENTO=DOCUMENTO'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'TIPO=TIPO'
      'VALOR=VALOR'
      'VALORJUROS=VALORJUROS'
      'VALORTARIFAS=VALORTARIFAS'
      'VALORLIQUIDO=VALORLIQUIDO')
    DataSet = db_BorderoLista
    BCDToCurrency = False
    Left = 704
    Top = 296
  end
  object frx_Bordero: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40905.983237453700000000
    ReportOptions.LastChange = 41001.528621481500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//  memonomeconta.Text := <snomeconta>;                      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 600
    Top = 240
    Datasets = <
      item
        DataSet = dbfx_Bordero
        DataSetName = 'dbfx_Bordero'
      end
      item
        DataSet = dbfx_BorderoLista
        DataSetName = 'dbfx_BorderoLista'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'snomeconta'
        Value = #39'xxx'#39
      end>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
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
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 13.228346460000000000
        ParentFont = False
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        DataSet = dbfx_BorderoLista
        DataSetName = 'dbfx_BorderoLista'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 75.590551180000000000
          Width = 40.062992130000000000
          Height = 12.094488190000000000
          DataField = 'TIPO'
          DataSet = dbfx_BorderoLista
          DataSetName = 'dbfx_BorderoLista'
          DisplayFormat.FormatStr = '####,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbfx_BorderoLista."TIPO"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 3.779527560000000000
          Width = 56.440940000000000000
          Height = 12.094488190000000000
          DataField = 'DOCUMENTO'
          DataSet = dbfx_BorderoLista
          DataSetName = 'dbfx_BorderoLista'
          DisplayFormat.FormatStr = '####,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbfx_BorderoLista."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 334.141732280000000000
          Width = 52.157477870000000000
          Height = 12.094488190000000000
          DataField = 'VENCIMENTO'
          DataSet = dbfx_BorderoLista
          DataSetName = 'dbfx_BorderoLista'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbfx_BorderoLista."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 263.330708660000000000
          Width = 62.362202280000000000
          Height = 12.094488190000000000
          DataField = 'DATA'
          DataSet = dbfx_BorderoLista
          DataSetName = 'dbfx_BorderoLista'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbfx_BorderoLista."DATA"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 434.440944880000000000
          Width = 60.472438500000000000
          Height = 12.094488190000000000
          DataField = 'VALOR'
          DataSet = dbfx_BorderoLista
          DataSetName = 'dbfx_BorderoLista'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbfx_BorderoLista."VALOR"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 504.015748030000000000
          Width = 59.716537870000000000
          Height = 12.094488190000000000
          DataField = 'VALORJUROS'
          DataSet = dbfx_BorderoLista
          DataSetName = 'dbfx_BorderoLista'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbfx_BorderoLista."VALORJUROS"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 640.629921260000000000
          Width = 66.141729840000000000
          Height = 12.094488190000000000
          DataField = 'VALORLIQUIDO'
          DataSet = dbfx_BorderoLista
          DataSetName = 'dbfx_BorderoLista'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbfx_BorderoLista."VALORLIQUIDO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 120.724490000000000000
          Width = 134.551242130000000000
          Height = 12.094488190000000000
          DataField = 'CLIENTE_NOME'
          DataSet = dbfx_BorderoLista
          DataSetName = 'dbfx_BorderoLista'
          DisplayFormat.FormatStr = '####,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbfx_BorderoLista."CLIENTE_NOME"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 398.629921260000000000
          Width = 25.700782520000000000
          Height = 12.094488190000000000
          DataField = 'CODIGOFINRECEBER'
          DataSet = dbfx_BorderoLista
          DataSetName = 'dbfx_BorderoLista'
          DisplayFormat.FormatStr = '###,###0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbfx_BorderoLista."CODIGOFINRECEBER"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 574.488560000000000000
          Width = 59.716537870000000000
          Height = 12.094488190000000000
          DataField = 'VALORTARIFAS'
          DataSet = dbfx_BorderoLista
          DataSetName = 'dbfx_BorderoLista'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbfx_BorderoLista."VALORTARIFAS"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 162.519790000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object Shape2: TfrxShapeView
          Top = 68.252010000000000000
          Width = 718.110236220000000000
          Height = 90.708720000000000000
        end
        object Memo1: TfrxMemoView
          Left = 233.330857560000000000
          Top = 70.543287560000000000
          Width = 158.692950000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'JUROS (COMPOSTO) POR DIA %:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 233.330857560000000000
          Top = 83.771634020000000000
          Width = 130.047310000000000000
          Height = 12.472440940000000000
          DataField = 'JUROS'
          DataSet = dbfx_Bordero
          DataSetName = 'dbfx_Bordero'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbfx_Bordero."JUROS"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 123.968770000000000000
          Top = 70.677165350000000000
          Width = 93.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 123.968770000000000000
          Top = 83.149606300000000000
          Width = 94.811070000000000000
          Height = 12.472440940000000000
          AutoWidth = True
          DataField = 'EMISSAO'
          DataSet = dbfx_Bordero
          DataSetName = 'dbfx_Bordero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbfx_Bordero."EMISSAO"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 3.779527560000000000
          Top = 70.669291340000000000
          Width = 58.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BORDER'#212':')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 3.779527560000000000
          Top = 83.149606300000000000
          Width = 103.252010000000000000
          Height = 12.472440940000000000
          DataField = 'CODIGO'
          DataSet = dbfx_Bordero
          DataSetName = 'dbfx_Bordero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbfx_Bordero."CODIGO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 75.590551180000000000
          Top = 144.307086610000000000
          Width = 40.062992130000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TIPO:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 334.141732280000000000
          Top = 144.307086610000000000
          Width = 59.716537870000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 3.779527560000000000
          Top = 144.307086610000000000
          Width = 67.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DOCUMENTO:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 263.330708660000000000
          Top = 144.307086610000000000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA EMISS'#195'O:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 98.370130000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 228.165740000000000000
          Top = 69.921259842519710000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 393.094930000000000000
          Top = 69.787382050000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 117.283552440000000000
          Top = 69.921259842519710000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object MemoTitulo: TfrxMemoView
          Top = 7.559060000000000000
          Width = 550.464750000000000000
          Height = 52.913388270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'BORDER'#212' DE DESCONTO')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 555.590910000000000000
          Top = 7.559060000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 566.149603860000000000
          Top = 9.448823780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 567.149603860000000000
          Top = 24.188981260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 567.149603860000000000
          Top = 39.307091500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 632.299215040000000000
          Top = 9.448823780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          Left = 632.299215040000000000
          Top = 24.188981260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Left = 632.299215040000000000
          Top = 39.307091500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Line9: TfrxLineView
          Align = baWidth
          Top = 127.984408190000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Left = 396.063141020000000000
          Top = 70.543287560000000000
          Width = 99.779527560000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TARIFA %:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 396.063141020000000000
          Top = 83.771634020000000000
          Width = 99.779527560000000000
          Height = 12.472440940000000000
          DataField = 'TARIFA'
          DataSet = dbfx_Bordero
          DataSetName = 'dbfx_Bordero'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbfx_Bordero."TARIFA"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 100.503937010000000000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OBSERVA'#199#195'O:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 112.220472440000000000
          Width = 610.047620000000000000
          Height = 12.472440940000000000
          DataField = 'OBSERVACAO'
          DataSet = dbfx_Bordero
          DataSetName = 'dbfx_Bordero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbfx_Bordero."OBSERVACAO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 434.330708660000000000
          Top = 144.307086610000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TITULO:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 504.188976380000000000
          Top = 144.307086610000000000
          Width = 63.496062990000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VLR JURO:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 640.519685040000000000
          Top = 144.307086610000000000
          Width = 71.055127870000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR L'#205'QUIDO:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 510.236550000000000000
          Top = 69.031540000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo8: TfrxMemoView
          Left = 120.960730000000000000
          Top = 144.307086610000000000
          Width = 93.015770000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 398.629921260000000000
          Top = 144.307086610000000000
          Width = 33.259842520000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DIAS:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 574.047620000000000000
          Top = 144.307086610000000000
          Width = 63.496067870000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VLR TARIFA:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 514.016080000000000000
          Top = 70.031540000000000000
          Width = 99.779527560000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRAZO M'#201'DIO:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 514.016080000000000000
          Top = 83.259886460000000000
          Width = 99.779527560000000000
          Height = 12.472440940000000000
          DataSet = dbfx_Bordero
          DataSetName = 'dbfx_Bordero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbfx_Bordero."PRAZOMEDIO"] DIAS')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Left = 3.999846220000000000
          Top = 26.236240000000000000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_NOME'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_NOME"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 3.999846220000000000
          Top = 42.133890000000000000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_CNPJ'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_CNPJ"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Memo52: TfrxMemoView
          Left = 640.629921260000000000
          Top = 3.779527559055118000
          Width = 69.921259840000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbfx_BorderoLista."VALORLIQUIDO">,MasterData1)]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Align = baWidth
          Top = 1.889763780000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo53: TfrxMemoView
          Left = 1.889512360000000000
          Top = 3.779527560000000000
          Width = 217.322934720000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'QUANTIDADE DE TITULOS:  [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 426.330708660000000000
          Top = 3.779527560000000000
          Width = 64.251968500000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbfx_BorderoLista."VALOR">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 504.188976380000000000
          Top = 3.779527560000000000
          Width = 63.496062990000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbfx_BorderoLista."VALORJUROS">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 574.488560000000000000
          Top = 3.779527560000000000
          Width = 63.496062990000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbfx_BorderoLista."VALORTARIFAS">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'SRV_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Align = baWidth
          Top = 1.889763780000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
end
