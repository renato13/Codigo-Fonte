object FrmPedidoVenda: TFrmPedidoVenda
  Left = 0
  Top = 1
  Caption = 'Pedido de Venda'
  ClientHeight = 579
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvGroupBox1: TGroupBox
    Left = 0
    Top = 33
    Width = 894
    Height = 488
    Align = alClient
    Caption = 'Dados Principais do Pedido'
    TabOrder = 0
    object grbTotais: TGroupBox
      Left = 2
      Top = 433
      Width = 890
      Height = 53
      Align = alBottom
      Caption = 'TOTAIS'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label6: TLabel
        Left = 453
        Top = 28
        Width = 92
        Height = 13
        Caption = 'Desconto Total:'
      end
      object Label7: TLabel
        Left = 77
        Top = 28
        Width = 103
        Height = 13
        Caption = 'Quantidade Total:'
      end
      object Label8: TLabel
        Left = 657
        Top = 28
        Width = 79
        Height = 13
        Caption = 'Valor Liquido:'
      end
      object Label9: TLabel
        Left = 282
        Top = 28
        Width = 68
        Height = 13
        Caption = 'Valor Bruto:'
      end
      object DBEdit5: TDBEdit
        Left = 739
        Top = 23
        Width = 86
        Height = 21
        Color = clBtnFace
        DataField = 'VLR_TOTAL'
        DataSource = ds_Pedido
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 183
        Top = 23
        Width = 72
        Height = 21
        Color = clBtnFace
        DataField = 'QTDE_TOTAL'
        DataSource = ds_Pedido
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 546
        Top = 23
        Width = 82
        Height = 21
        Color = clBtnFace
        DataField = 'VLR_DESCONTO'
        DataSource = ds_Pedido
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 350
        Top = 23
        Width = 86
        Height = 21
        Color = clBtnFace
        DataField = 'VLR_PRODUTOS'
        DataSource = ds_Pedido
        TabOrder = 3
      end
    end
    object AdvGroupBox2: TGroupBox
      Left = 2
      Top = 200
      Width = 890
      Height = 233
      Align = alClient
      Caption = '[ ITENS DO PEDIDO DE VENDA ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object dbGrid_Produtos: TDBGrid
        Left = 2
        Top = 31
        Width = 886
        Height = 200
        HelpType = htKeyword
        TabStop = False
        Align = alClient
        Ctl3D = True
        DataSource = ds_PedidoItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = 'Calibri'
        TitleFont.Style = []
        OnColEnter = dbGrid_ProdutosColEnter
        OnEditButtonClick = dbGrid_ProdutosEditButtonClick
        OnEnter = dbGrid_ProdutosEnter
        OnExit = dbGrid_ProdutosExit
        OnKeyDown = dbGrid_ProdutosKeyDown
        OnKeyPress = dbGrid_ProdutosKeyPress
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Caption = 'Refer'#234'ncia:'
            Width = 119
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'DESCRICAO'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o:'
            Width = 348
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'Qtde:'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNIT'
            Title.Caption = 'Valor Unit:'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Caption = 'Desconto%:'
            Width = 70
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'VLR_TOTAL'
            ReadOnly = True
            Title.Caption = 'Valor Total:'
            Width = 83
            Visible = True
          end>
      end
      object ProgressBar1: TProgressBar
        Left = 2
        Top = 15
        Width = 886
        Height = 16
        Align = alTop
        TabOrder = 1
      end
    end
    object AdvGroupBox4: TGroupBox
      Left = 2
      Top = 15
      Width = 890
      Height = 185
      Align = alTop
      Caption = '[ CLIENTE ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = AdvGroupBox4Exit
      object Label1: TLabel
        Left = 139
        Top = 12
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label2: TLabel
        Left = 206
        Top = 12
        Width = 63
        Height = 13
        Caption = 'Data Entrega'
      end
      object Label3: TLabel
        Left = 72
        Top = 12
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
      end
      object Label4: TLabel
        Left = 5
        Top = 87
        Width = 59
        Height = 13
        Caption = 'Comiss'#227'o %:'
      end
      object Label5: TLabel
        Left = 91
        Top = 87
        Width = 60
        Height = 13
        Caption = 'Desconto %:'
      end
      object Label10: TLabel
        Left = 5
        Top = 12
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object EditCliente: TIDBEditDialog
        Left = 272
        Top = 27
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
        Visible = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Cliente:'
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
        DataField = 'CLIENTE'
        DataSource = ds_Pedido
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeCliente
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT CODIGO, NOME FROM CAD_CLIENTES'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM VIEW_CLIENTES'
          'WHERE'
          'COALESCE(ATIVO,'#39'S'#39')<>'#39'N'#39
          'AND'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'C'#243'digo'
            DisplayWidth = 12
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
            DisplayLabel = 'Nome/Raz'#227'o Social'
            DisplayWidth = 60
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'VENDEDOR_NOME'
            WhereSyntax = 'VENDEDOR_NOME'
            DisplayLabel = 'VENDEDOR:'
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
      object EditNomeCliente: TEdit
        Left = 338
        Top = 27
        Width = 280
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Text = '***'
      end
      object EditData: TDBEdit
        Left = 139
        Top = 27
        Width = 65
        Height = 21
        DataField = 'DATA'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object EditNomeVendedor: TEdit
        Left = 704
        Top = 27
        Width = 142
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        Text = '***'
      end
      object EditDataEntrega: TDBEdit
        Left = 206
        Top = 27
        Width = 65
        Height = 21
        DataField = 'DATA_ENTREGA'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object EditPagamento: TIDBEditDialog
        Left = 5
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
        TabOrder = 8
        Text = ''
        Visible = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
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
        DataField = 'FORMAPAGTO'
        DataSource = ds_Pedido
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
        Left = 72
        Top = 65
        Width = 280
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
        Text = '***'
      end
      object EditNomeTrasportadora: TEdit
        Left = 429
        Top = 65
        Width = 417
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
        Text = '***'
      end
      object EditTransportadora: TIDBEditDialog
        Left = 358
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
        TabOrder = 10
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
        DataSource = ds_Pedido
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeTrasportadora
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'CODIGO=:CODIGO')
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
      object AdvGroupBox5: TGroupBox
        Left = 5
        Top = 120
        Width = 613
        Height = 59
        Caption = 'Observa'#231#245'es:'
        TabOrder = 18
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 609
          Height = 42
          Align = alClient
          DataField = 'OBSERVACAO'
          DataSource = ds_Pedido
          TabOrder = 0
        end
      end
      object GroupBox1: TGroupBox
        Left = 672
        Top = 85
        Width = 174
        Height = 94
        Caption = 'Status do Pedido'
        TabOrder = 17
        object Panel1: TPanel
          Left = 2
          Top = 15
          Width = 170
          Height = 77
          Align = alClient
          BevelOuter = bvNone
          Enabled = False
          ParentBackground = False
          TabOrder = 0
          object DBRadioGroup2: TDBRadioGroup
            Left = 82
            Top = 0
            Width = 88
            Height = 77
            Align = alRight
            Caption = 'Aprovado'
            Color = clBtnFace
            DataField = 'APROVADO'
            DataSource = ds_Pedido
            Items.Strings = (
              'Sim'
              'N'#227'o'
              'Cancelado')
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            Values.Strings = (
              'S'
              'N'
              'C')
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 9
            Top = 0
            Width = 73
            Height = 77
            Align = alRight
            Caption = 'Faturado'
            Color = clBtnFace
            DataField = 'STATUS'
            DataSource = ds_Pedido
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
      object DBEdit2: TDBEdit
        Left = 72
        Top = 27
        Width = 65
        Height = 21
        DataField = 'DOCUMENTO'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object EditTabela: TIDBEditDialog
        Left = 177
        Top = 102
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
        TabOrder = 14
        Text = ''
        Visible = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Tabela de pre'#231'os:'
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
        ButtonHint = 'Tabela de pre'#231'os'
        Etched = False
        ButtonCaption = '...'
        DataField = 'TABELA'
        DataSource = ds_Pedido
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditTabelaNome
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM TPRECO'
          'where'
          'codigo=:codigo')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM TPRECO'
          'where'
          '%where%')
        CountQuery.Strings = (
          'SELECT count(*) FROM TPRECO'
          'where'
          '%where%')
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
            DisplayLabel = 'NOME'
            DisplayWidth = 60
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'MOEDA'
            WhereSyntax = 'MOEDA'
            DisplayLabel = 'MOEDA'
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
      object EditTabelaNome: TEdit
        Left = 243
        Top = 102
        Width = 375
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
        Text = '***'
      end
      object EditVendedor: TIDBEditDialog
        Left = 624
        Top = 27
        Width = 78
        Height = 21
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        TabOrder = 6
        Text = ''
        Visible = True
        LabelCaption = 'Vendedor'
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
        DataField = 'VENDEDOR'
        DataSource = ds_Pedido
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
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM CAD_CLIENTES'
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
      object DBEdit3: TDBEdit
        Left = 5
        Top = 102
        Width = 80
        Height = 21
        DataField = 'COMISSAO'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit4: TDBEdit
        Left = 91
        Top = 102
        Width = 80
        Height = 21
        DataField = 'DESCONTO'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object BtnRecalcular: TBitBtn
        Left = 624
        Top = 98
        Width = 33
        Height = 26
        Hint = '(se necess'#225'rio)... recalcular  com base na Tabela de Pre'#231'os'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        ModalResult = 4
        NumGlyphs = 2
        TabOrder = 16
        OnClick = BtnRecalcularClick
      end
      object BitBtn1: TBitBtn
        Left = 624
        Top = 153
        Width = 33
        Height = 26
        Hint = 'Entrega parcial'
        Caption = '%'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnClick = BitBtn1Click
      end
      object EditPedido: TDBEdit
        Left = 5
        Top = 27
        Width = 65
        Height = 21
        DataField = 'CODIGO'
        DataSource = ds_Pedido
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 894
    Height = 33
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 894
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 894
      Height = 33
      ExplicitWidth = 894
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 892
        Height = 31
        Caption = 'Pedido de Venda'
        ExplicitWidth = 130
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 521
    Width = 894
    Height = 58
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 521
    ExplicitWidth = 894
    inherited W7Panel1: TPanel
      Width = 894
      ExplicitWidth = 894
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
      end
      inherited SpbImprimir: TSpeedButton
        PopupMenu = PopupImprimir
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
  object dbeditPedidoProcurar: TIDBEditDialog
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
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'PEDIDO:'
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
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DATA_ENTREGA'
        WhereSyntax = 'DATA_ENTREGA'
        DisplayLabel = 'DATA ENTREGA:'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CLIENTE_NOME'
        WhereSyntax = 'CLIENTE_NOME'
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
        FieldName = 'VENDEDOR_NOME'
        WhereSyntax = 'VENDEDOR_NOME'
        DisplayLabel = 'VENDEDOR:'
        DisplayWidth = 15
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
        DisplayLabel = 'QTDE TOTAL:'
        DisplayFormat = '###,##0'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VLR_TOTAL'
        WhereSyntax = 'VLR_TOTAL'
        DisplayLabel = 'VALOR TOTAL:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 14
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'APROVADO'
        WhereSyntax = 'APROVADO'
        DisplayLabel = 'APROVADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'STATUS'
        WhereSyntax = 'STATUS'
        DisplayLabel = 'FATURADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'PRODUZINDO'
        WhereSyntax = 'PRODUZINDO'
        DisplayLabel = 'PRODUZINDO:'
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
  object dbProcurarProduto: TIDBEditDialog
    Left = 165
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
  object db_Pedido: TFDQuery
    BeforeOpen = db_PedidoBeforeOpen
    BeforePost = db_PedidoBeforePost
    AfterPost = db_PedidoAfterPost
    AfterDelete = db_PedidoAfterDelete
    AfterScroll = db_PedidoAfterScroll
    OnNewRecord = db_PedidoNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PEDIDOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 104
    Top = 112
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
    object db_PedidoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_PedidoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_PedidoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
      OnChange = db_PedidoDATAChange
      EditMask = '99/99/9999'
    end
    object db_PedidoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
      OnChange = db_PedidoCLIENTEChange
    end
    object db_PedidoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Required = True
    end
    object db_PedidoTABELA: TIntegerField
      FieldName = 'TABELA'
      Required = True
    end
    object db_PedidoFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Required = True
    end
    object db_PedidoTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Required = True
    end
    object db_PedidoTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object db_PedidoAPROVADO: TStringField
      FieldName = 'APROVADO'
      Size = 10
    end
    object db_PedidoORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_PedidoPRODUZINDO: TStringField
      FieldName = 'PRODUZINDO'
      Required = True
      Size = 10
    end
    object db_PedidoSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Required = True
      Size = 10
    end
    object db_PedidoDATA_FATURAMENTO: TSQLTimeStampField
      FieldName = 'DATA_FATURAMENTO'
      EditMask = '99/99/9999'
    end
    object db_PedidoDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
      EditMask = '99/99/9999'
    end
    object db_PedidoDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 10
    end
    object db_PedidoORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 30
    end
    object db_PedidoCONFERENCIA: TIntegerField
      FieldName = 'CONFERENCIA'
    end
    object db_PedidoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_PedidoQTDE_DISPONIVEL: TIntegerField
      FieldName = 'QTDE_DISPONIVEL'
      DisplayFormat = '###,##0'
    end
    object db_PedidoQTDE_TOTAL: TIntegerField
      FieldName = 'QTDE_TOTAL'
      DisplayFormat = '###,##0'
    end
    object db_PedidoQTDE_PRODUTOS: TIntegerField
      FieldName = 'QTDE_PRODUTOS'
      DisplayFormat = '###,##0'
    end
    object db_PedidoQTDE_SERVICOS: TIntegerField
      FieldName = 'QTDE_SERVICOS'
      DisplayFormat = '###,##0'
    end
    object db_PedidoVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoVLR_SERVICOS: TBCDField
      FieldName = 'VLR_SERVICOS'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoVLR_PRODUTOS: TBCDField
      FieldName = 'VLR_PRODUTOS'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoVLR_IMPOSTOS: TBCDField
      FieldName = 'VLR_IMPOSTOS'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoFRETE: TStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object db_PedidoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      Size = 10
    end
    object db_PedidoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_PedidoRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 200
    end
    object db_PedidoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object db_PedidoITENS_IMPORTADO: TStringField
      FieldName = 'ITENS_IMPORTADO'
      Size = 10
    end
    object db_PedidoENTREGAPARCIAL: TStringField
      FieldName = 'ENTREGAPARCIAL'
      Size = 10
    end
    object db_PedidoENTREGAPARCIALPERCENTUAL: TBCDField
      FieldName = 'ENTREGAPARCIALPERCENTUAL'
      DisplayFormat = '###,##0.00%'
      EditFormat = '###,##0.00'
    end
    object db_PedidoTRANSPORTEVOLUMES: TIntegerField
      FieldName = 'TRANSPORTEVOLUMES'
    end
    object db_PedidoSTATUSPERCENTUAL: TBCDField
      FieldName = 'STATUSPERCENTUAL'
    end
  end
  object db_PedidoItens: TFDQuery
    AutoCalcFields = False
    BeforeInsert = db_PedidoItensBeforeInsert
    BeforePost = db_PedidoItensBeforePost
    AfterPost = db_PedidoItensAfterPost
    AfterDelete = db_PedidoItensAfterDelete
    MasterSource = ds_Pedido
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PEDIDOS_ITENS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 176
    Top = 112
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
    object db_PedidoItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_PedidoItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_PedidoItensDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object db_PedidoItensCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_PedidoItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_PedidoItensTABELA: TIntegerField
      FieldName = 'TABELA'
    end
    object db_PedidoItensFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object db_PedidoItensTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_PedidoItensTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_PedidoItensAPROVADO: TStringField
      FieldName = 'APROVADO'
      Required = True
      Size = 10
    end
    object db_PedidoItensORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_PedidoItensPRODUZINDO: TStringField
      FieldName = 'PRODUZINDO'
      Size = 10
    end
    object db_PedidoItensSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Required = True
      Size = 10
    end
    object db_PedidoItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      OnChange = db_PedidoItensREFERENCIAChange
      Size = 30
    end
    object db_PedidoItensREFERENCIATECIDO: TStringField
      FieldName = 'REFERENCIATECIDO'
      Size = 30
    end
    object db_PedidoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_PedidoItensUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_PedidoItensQTDE: TBCDField
      FieldName = 'QTDE'
      DisplayFormat = '###,##0'
      EditFormat = '###,##0'
    end
    object db_PedidoItensVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoItensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoItensVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoItensVLR_IMPOSTOS: TBCDField
      FieldName = 'VLR_IMPOSTOS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoItensVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoItensQTDE_LIBERADA: TIntegerField
      FieldName = 'QTDE_LIBERADA'
      DisplayFormat = '###,##0'
      EditFormat = '###,##0'
    end
    object db_PedidoItensQTDE_FATURADA: TIntegerField
      FieldName = 'QTDE_FATURADA'
      DisplayFormat = '###,##0'
      EditFormat = '###,##0'
    end
    object db_PedidoItensQTDE_CANCELADA: TIntegerField
      FieldName = 'QTDE_CANCELADA'
      DisplayFormat = '###,##0'
      EditFormat = '###,##0'
    end
  end
  object ds_Pedido: TDataSource
    DataSet = db_Pedido
    Left = 104
    Top = 64
  end
  object ds_PedidoItens: TDataSource
    DataSet = db_PedidoItens
    Left = 184
    Top = 64
  end
  object SP_CalculaPedido: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPPEDIDOS_CALCULA'
    Left = 104
    Top = 320
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
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object frx_dsPedido: TfrxDBDataset
    Description = 'Pedido'
    UserName = 'frx_dsPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA=DATA'
      'CLIENTE=CLIENTE'
      'VENDEDOR=VENDEDOR'
      'TABELA=TABELA'
      'FORMAPAGTO=FORMAPAGTO'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TIPO=TIPO'
      'DATA_FATURAMENTO=DATA_FATURAMENTO'
      'DATA_ENTREGA=DATA_ENTREGA'
      'PRAZO_ENTREGA=PRAZO_ENTREGA'
      'USUARIO=USUARIO'
      'VEICULO=VEICULO'
      'NUMERO_SERIE=NUMERO_SERIE'
      'TRANSP_VOLUMES=TRANSP_VOLUMES'
      'PRIORIDADE=PRIORIDADE'
      'PRIORIDADE_USER=PRIORIDADE_USER'
      'PRIORIDADE_USER_DATE=PRIORIDADE_USER_DATE'
      'PRIORIDADE_USER_HORA=PRIORIDADE_USER_HORA'
      'PRIORIDADE_STATUS=PRIORIDADE_STATUS'
      'COMISSAO=COMISSAO'
      'ORIGEM=ORIGEM'
      'CONFERENCIA=CONFERENCIA'
      'DOCUMENTO=DOCUMENTO'
      'HORA=HORA'
      'QTDE_DISPONIVEL=QTDE_DISPONIVEL'
      'QTDE_TOTAL=QTDE_TOTAL'
      'QTDE_PRODUTOS=QTDE_PRODUTOS'
      'QTDE_SERVICOS=QTDE_SERVICOS'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_SERVICOS=VLR_SERVICOS'
      'VLR_PRODUTOS=VLR_PRODUTOS'
      'VLR_IMPOSTOS=VLR_IMPOSTOS'
      'VLR_TOTAL=VLR_TOTAL'
      'FRETE=FRETE'
      'IMPRESSO=IMPRESSO'
      'SITUACAO_TRIBUTARIA=SITUACAO_TRIBUTARIA'
      'CLASSIF_FISCAL=CLASSIF_FISCAL'
      'OBSERVACAO=OBSERVACAO'
      'RESPONSAVEL=RESPONSAVEL'
      'APROV_DATA=APROV_DATA'
      'APROV_HORA=APROV_HORA'
      'APROVADO=APROVADO'
      'STATUS=STATUS'
      'STATUS_PERCENTUAL=STATUS_PERCENTUAL'
      'PLACA=PLACA'
      'PROBLEMA=PROBLEMA'
      'SOLUCAO=SOLUCAO'
      'VLR_TOTAL_IMPOSTOS=VLR_TOTAL_IMPOSTOS'
      'ORDEM_PRODUCAO=ORDEM_PRODUCAO'
      'ORDEM_CORTE=ORDEM_CORTE'
      'ITENS_IMPORTADO=ITENS_IMPORTADO')
    DataSet = db_Pedido
    BCDToCurrency = False
    Left = 104
    Top = 232
  end
  object frx_dsPedidosItens: TfrxDBDataset
    Description = 'PedidoItens'
    UserName = 'frx_dsPedidosItens'
    CloseDataSource = False
    DataSet = db_PedidoItens
    BCDToCurrency = False
    Left = 208
    Top = 240
  end
  object frx_dsPedidoGrade: TfrxDBDataset
    UserName = 'frx_dsPedidoGrade'
    CloseDataSource = False
    DataSet = db_PedidoGrade
    BCDToCurrency = False
    Left = 288
    Top = 200
  end
  object db_PedidoGrade: TFDQuery
    MasterSource = ds_PedidoItens
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOS_VENDIDOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'ORDER BY  REFERENCIA, COR, ORDEM_GRADE')
    Left = 288
    Top = 144
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
  end
  object FrxPedidoVenda: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41000.913359259300000000
    ReportOptions.Name = 'Pedido de Venda'
    ReportOptions.LastChange = 41000.930807291700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure DBCross1OnPrintCell(Memo: TfrxMemoView; RowIndex, Colu' +
        'mnIndex, CellIndex: Integer; RowValues, ColumnValues, Value: Var' +
        'iant);'
      'begin'
      '  if (Value = null) or (Value = 0) then Memo.Text := '#39#39';'
      '  if Value > 0 then'
      '  begin                  '
      '    Memo.Color := clSilver;       '
      '  end;  '
      '  end;'
      ''
      'Begin'
      '        '
      'end.')
    Left = 504
    Top = 304
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frx_dsPedido
        DataSetName = 'frx_dsPedido'
      end
      item
        DataSet = frx_dsPedidoGrade
        DataSetName = 'frx_dsPedidoGrade'
      end
      item
        DataSet = frx_dsPedidosItens
        DataSetName = 'frx_dsPedidosItens'
      end
      item
        DataSet = frx_PedidoVenda
        DataSetName = 'FrxPedidoVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSet = frx_dsPedido
      DataSetName = 'frx_dsPedido'
      TitleBeforeHeader = False
      object ReportSummary1: TfrxReportSummary
        Description = 'Totais'
        FillType = ftBrush
        Height = 124.724490000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = 505.472480000000000000
          Top = 61.188930000000030000
          Width = 200.307050000000000000
          Height = 56.881880000000000000
        end
        object Memo60: TfrxMemoView
          Left = 509.102362200000000000
          Top = 91.645688820000040000
          Width = 96.377952760000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 509.102362200000000000
          Top = 104.543326610000000000
          Width = 96.377952760000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO PEDIDO:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Top = 98.763760000000050000
          Width = 464.606370000000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'CLIENTE: ___________________________    |    REPRESENTANTE: ____' +
              '_______________________')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Top = 63.866110000000050000
          Width = 415.228510000000000000
          Height = 12.094488190000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'FORMA DE PAGAMENTO: [FrxPedidoVenda."FORMA_PAGTO_NOME"] ([FrxPed' +
              'idoVenda."TIPOPAGAMENTO"])')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 1.889763779527560000
          Width = 714.330708661417000000
          Color = clBlack
          Diagonal = True
        end
        object Memo51: TfrxMemoView
          Left = 609.637795280000000000
          Top = 104.543326610000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VLR_TOTAL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 609.637795280000000000
          Top = 91.645688820000040000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'QTDE_TOTAL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."QTDE_TOTAL"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 509.102362200000000000
          Top = 78.267780000000010000
          Width = 96.377952760000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 609.637795280000000000
          Top = 78.267780000000010000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VLR_DESCONTO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_DESCONTO"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 609.637795280000000000
          Top = 65.370130000000010000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VLR_PRODUTOS'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_PRODUTOS"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 509.102362200000000000
          Top = 65.370130000000010000
          Width = 96.377952760000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR BRUTO:')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000022000
          Width = 718.110700000000000000
          Height = 51.677180000000000000
          AutoWidth = True
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'OBSERVA'#199#195'O:'
            '[frx_dsPedido."OBSERVACAO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 122.944960000000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 604.724800000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          Top = 0.755905510000047700
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
        object Line18: TfrxLineView
          Left = 1.000000000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Top = 0.755905510000047700
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
      end
      object PageHeader1: TfrxPageHeader
        Description = 'Pedido de Venda'
        FillType = ftBrush
        Height = 219.212588660000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Width = 718.102660000000000000
          Height = 68.031496060000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
        end
        object Shape5: TfrxShapeView
          Left = 1.000000000000000000
          Top = 68.779530000000000000
          Width = 718.000000000000000000
          Height = 142.000000000000000000
        end
        object Memo6: TfrxMemoView
          Left = 4.779527560000000000
          Top = 99.905511809999990000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOME/RAZ'#195'O SOCIAL:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 460.000000000000000000
          Top = 99.905511809999990000
          Width = 58.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 588.000000000000000000
          Top = 99.905511809999990000
          Width = 123.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'I.E/RG:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 4.779527560000000000
          Top = 111.779530000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CLIENTE"] - [FrxPedidoVenda."CLIENTE_NOME"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 460.000000000000000000
          Top = 111.779530000000000000
          Width = 50.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CNPJ'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CNPJ"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 588.000000000000000000
          Top = 111.779530000000000000
          Width = 29.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'IE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."IE"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 5.000000000000000000
          Top = 126.362204720000000000
          Width = 59.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 438.842610000000000000
          Top = 126.362204720000000000
          Width = 43.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 649.740260000000000000
          Top = 126.362204720000000000
          Width = 26.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 4.779527560000000000
          Top = 138.779530000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."ENDERECO"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 438.842610000000000000
          Top = 138.779530000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'BAIRRO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."BAIRRO"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 649.740260000000000000
          Top = 138.779530000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CEP'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CEP"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 4.779527560000000000
          Top = 153.574803150000000000
          Width = 65.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MUNICIPIO:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 4.779527560000000000
          Top = 165.779530000000000000
          Width = 69.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NOMECIDADE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."NOMECIDADE"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 178.527520000000000000
          Top = 165.779530000000000000
          Width = 14.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'UF'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."UF"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 178.527520000000000000
          Top = 153.574803150000000000
          Width = 20.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 217.307050000000000000
          Top = 153.574803150000000000
          Width = 33.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 304.409400000000000000
          Top = 153.574803150000000000
          Width = 32.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FAX:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 304.409400000000000000
          Top = 165.921259840000000000
          Width = 18.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FAX'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."FAX"]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 392.732220000000000000
          Top = 165.669291340000000000
          Width = 45.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CONTATO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CONTATO"]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 392.732220000000000000
          Top = 153.574803150000000000
          Width = 54.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONTATO:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 4.779527560000000000
          Top = 193.779530000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VENDEDOR_NOME'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."VENDEDOR_NOME"]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 4.779527560000000000
          Top = 180.409448820000000000
          Width = 98.118120000000000000
          Height = 12.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REPRESENTANTE:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 533.606370000000000000
          Top = 153.574803150000000000
          Width = 102.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMAIL DO CLIENTE:')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 533.606370000000000000
          Top = 165.669291340000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'EMAIL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."EMAIL"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 493.968770000000000000
          Top = 69.779530000000000000
          Width = 93.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA DO PEDIDO:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 493.968770000000000000
          Top = 84.031496060000000000
          Width = 23.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsPedido."DATA"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 603.968770000000000000
          Top = 84.031496060000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA_ENTREGA'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsPedido."DATA_ENTREGA"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 603.968770000000000000
          Top = 69.779530000000000000
          Width = 106.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PREV. ENTREGA:')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 4.779527560000000000
          Top = 69.669291340000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 4.779527560000000000
          Top = 84.031496060000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CODIGO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxPedidoVenda."CODIGO"]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 235.000000000000000000
          Top = 193.779530000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'TRANSPORTADORA_NOME'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."TRANSPORTADORA_NOME"]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 235.000000000000000000
          Top = 180.409448820000000000
          Width = 101.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TRANSPORTADORA:')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 2.889763780000000000
          Top = 98.370130000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 4.779527560000000000
          Top = 127.385900000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 2.889763780000000000
          Top = 152.063080000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line27: TfrxLineView
          Left = 2.889763780000000000
          Top = 180.299320000000000000
          Width = 714.331170000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
        object Line28: TfrxLineView
          Left = 64.692950000000000000
          Top = 69.921259840000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 598.165740000000000000
          Top = 68.913420000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 454.543600000000000000
          Top = 99.149660000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          Left = 583.047620000000000000
          Top = 99.149660000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          Left = 434.189240000000000000
          Top = 127.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 646.520100000000000000
          Top = 127.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          Left = 389.291590000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          Left = 299.582870000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          Left = 212.653680000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          Left = 231.551330000000000000
          Top = 182.299320000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          Left = 530.134200000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          Left = 171.078850000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          Left = 488.559370000000000000
          Top = 68.913420000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape7: TfrxShapeView
          Left = 0.645671730000000000
          Top = 1.000000000000000000
          Width = 718.000000000000000000
          Height = 66.519675280000000000
        end
        object Memo109: TfrxMemoView
          Left = 510.457020000000000000
          Top = 1.779530000000001000
          Width = 204.606060000000000000
          Height = 22.322820000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'PEDIDO DE VENDA')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 510.992128430000000000
          Top = 26.346459130000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 510.992128430000000000
          Top = 41.086616610000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 576.251936770000000000
          Top = 41.086616610000000000
          Width = 124.724441180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo113: TfrxMemoView
          Left = 3.645517950000000000
          Top = 1.559059999999999000
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
          Left = 3.645517950000000000
          Top = 17.456710000000000000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_FONE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_FONE"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 575.354701730000000000
          Top = 26.346459130000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Date] | [Time]')
          ParentFont = False
          WordWrap = False
        end
        object Line41: TfrxLineView
          Left = 470.307391730000000000
          Height = 67.275590550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo116: TfrxMemoView
          Left = 3.425201730000000000
          Top = 49.133889999999990000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_SITE"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 216.433210000000000000
          Top = 165.921259840000000000
          Width = 19.440940000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DDD'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."DDD"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Left = 241.575140000000000000
          Top = 165.921259840000000000
          Width = 49.677180000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FONE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."FONE"]')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 372.267780000000000000
          Top = 125.724490000000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 372.267780000000000000
          Top = 138.196930950000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NUMERO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."NUMERO"]')
          ParentFont = False
        end
        object Line42: TfrxLineView
          Left = 367.614410000000000000
          Top = 126.102442760000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object BarCode2: TfrxBarCodeView
          Left = 265.567100000000000000
          Top = 75.590600000000000000
          Width = 129.000000000000000000
          Height = 18.897650000000000000
          BarType = bcCode39
          DataField = 'CODIGO'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Expression = '<FrxPedidoVenda."CODIGO">'
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
        object Memo121: TfrxMemoView
          Left = 69.370130000000000000
          Top = 68.031540000000010000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#218'MERO:')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 69.370130000000000000
          Top = 82.393744720000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DOCUMENTO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxPedidoVenda."DOCUMENTO"]')
          ParentFont = False
        end
        object Line43: TfrxLineView
          Left = 140.283552440000000000
          Top = 69.921259840000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object ReportTitle1: TfrxReportTitle
        Description = 'Grade de Produtos'
        FillType = ftBrush
        Height = 136.063080000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object DBCross1: TfrxDBCrossView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 383.000000000000000000
          Height = 116.000000000000000000
          DownThenAcross = False
          RowLevels = 4
          OnPrintCell = 'DBCross1OnPrintCell'
          CellFields.Strings = (
            'QUANTIDADE')
          ColumnFields.Strings = (
            'TAMANHO')
          DataSet = frx_dsPedidoGrade
          DataSetName = 'frx_dsPedidoGrade'
          RowFields.Strings = (
            'REFERENCIA'
            'DESCRICAO'
            'VALOR_UNIT'
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223235332C
            37373935332220546F703D223332322C35363731222057696474683D22353822
            204865696768743D22313922205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31312220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C546672784D656D6F56696577
            204C6566743D223231312220546F703D223536222057696474683D2235302220
            4865696768743D22313822205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C73652220446973706C6179466F
            726D61742E4B696E643D22666B4E756D657269632220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31322220466F6E742E4E616D653D22417269616C204E6172726F7722
            20466F6E742E5374796C653D223022204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C65
            66743D223139322220546F703D223636222057696474683D2238302220486569
            6768743D22323222205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686152
            69676874222056416C69676E3D22766143656E7465722220546578743D223022
            2F3E3C546672784D656D6F56696577204C6566743D223332302C333338353922
            20546F703D223337332C3234343238222057696474683D223830222048656967
            68743D22323222205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            676874222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D223235332C37373935332220
            546F703D223334312C35363731222057696474683D2235382220486569676874
            3D22313922205265737472696374696F6E733D2232342220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            312220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E74
            2E5374796C653D223122204672616D652E5479703D223135222046696C6C2E42
            61636B436F6C6F723D2231353732343532372220476170583D22332220476170
            593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2230222F3E3C546672784D656D6F56696577204C6566743D223331312C3737
            3935332220546F703D223332322C35363731222057696474683D223535222048
            65696768743D22313922205265737472696374696F6E733D2232342220416C6C
            6F7745787072657373696F6E733D2246616C73652220446973706C6179466F72
            6D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365
            743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D31312220466F6E742E4E616D653D22417269616C204E6172726F772220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204669
            6C6C2E4261636B436F6C6F723D2231353732343532372220476170583D223322
            20476170593D2233222048416C69676E3D22686152696768742220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D2230222F3E3C546672784D656D6F56696577204C6566743D223236
            312220546F703D223536222057696474683D22353022204865696768743D2231
            3822205265737472696374696F6E733D2232342220416C6C6F77457870726573
            73696F6E733D2246616C73652220446973706C6179466F726D61742E4B696E64
            3D22666B4E756D657269632220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223122204672616D652E5479703D223135222046696C6C2E4261636B436F
            6C6F723D2231353732343532372220476170583D22332220476170593D223322
            2048416C69676E3D22686152696768742220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D22222F3E
            3C546672784D656D6F56696577204C6566743D223430302C3333383539222054
            6F703D223337332C3234343238222057696474683D2238312220486569676874
            3D22323222205265737472696374696F6E733D2232342220416C6C6F77457870
            72657373696F6E733D2246616C736522204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686152696768
            74222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C
            546672784D656D6F56696577204C6566743D22302220546F703D223022205769
            6474683D223022204865696768743D223022205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D2268615269676874222056416C69676E3D22766143656E74657222
            20546578743D22222F3E3C546672784D656D6F56696577204C6566743D223331
            312C37373935332220546F703D223334312C35363731222057696474683D2235
            3522204865696768743D22313922205265737472696374696F6E733D22323422
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D31312220466F6E742E4E616D653D22417269616C204E6172
            726F772220466F6E742E5374796C653D223122204672616D652E5479703D2231
            35222046696C6C2E4261636B436F6C6F723D2231353732343532372220476170
            583D22332220476170593D2233222048416C69676E3D22686152696768742220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D2230222F3E3C2F63656C6C6D656D6F733E3C63656C6C
            6865616465726D656D6F733E3C546672784D656D6F56696577204C6566743D22
            302220546F703D2230222057696474683D223022204865696768743D22302220
            5265737472696374696F6E733D22382220416C6C6F7745787072657373696F6E
            733D2246616C736522204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222056416C69676E3D22766143656E7465722220546578
            743D225155414E544944414445222F3E3C546672784D656D6F56696577204C65
            66743D22302220546F703D2230222057696474683D223022204865696768743D
            223022205265737472696374696F6E733D22382220416C6C6F77457870726573
            73696F6E733D2246616C736522204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222056416C69676E3D22766143656E74657222
            20546578743D225155414E544944414445222F3E3C546672784D656D6F566965
            77204C6566743D22302220546F703D2230222057696474683D22302220486569
            6768743D223022205265737472696374696F6E733D22382220416C6C6F774578
            7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222056416C69676E3D22766143656E
            7465722220546578743D225155414E544944414445222F3E3C546672784D656D
            6F56696577204C6566743D22302220546F703D2230222057696474683D223022
            204865696768743D223022205265737472696374696F6E733D22382220416C6C
            6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222056416C69676E3D2276
            6143656E7465722220546578743D225155414E544944414445222F3E3C546672
            784D656D6F56696577204C6566743D22302220546F703D223022205769647468
            3D223022204865696768743D223022205265737472696374696F6E733D223822
            20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222056416C6967
            6E3D22766143656E7465722220546578743D225155414E544944414445222F3E
            3C2F63656C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C
            546672784D656D6F56696577204C6566743D223235332C37373935332220546F
            703D223330332C35363731222057696474683D22353822204865696768743D22
            313922205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22302220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313122
            20466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E53
            74796C653D223122204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222048416C69676E3D22686152696768742220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D22222F3E3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F
            74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D22333131
            2C37373935332220546F703D223330332C35363731222057696474683D223535
            22204865696768743D22313922205265737472696374696F6E733D2238222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31312220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22535542544F54414C222F3E3C2F636F6C75
            6D6E746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D
            656D6F56696577204C6566743D2232332C37373935332220546F703D22323834
            2C35363731222057696474683D2232333022204865696768743D223139222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2250524F4455544F5320222F3E3C546672784D656D6F56696577204C6566743D
            223235332C37373935332220546F703D223238342C3536373122205769647468
            3D2231313322204865696768743D22313922205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31312220466F6E742E4E616D653D22417269616C20
            4E6172726F772220466F6E742E5374796C653D223122204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686143656E7465722220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D2254414D414E484F222F3E3C
            546672784D656D6F56696577204C6566743D22302220546F703D223022205769
            6474683D223022204865696768743D223022205265737472696374696F6E733D
            2238222056697369626C653D2246616C73652220416C6C6F7745787072657373
            696F6E733D2246616C736522204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            56416C69676E3D22766143656E7465722220546578743D22222F3E3C54667278
            4D656D6F56696577204C6566743D2232332C37373935332220546F703D223330
            332C35363731222057696474683D22363822204865696768743D223139222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            22332220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D225245464552C38A4E4349413A222F3E3C54
            6672784D656D6F56696577204C6566743D2239312C37373935332220546F703D
            223330332C35363731222057696474683D22363422204865696768743D223139
            22205265737472696374696F6E733D22382220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223122204672616D652E5479703D2231352220476170583D223322204761
            70593D22332220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D22444553435249C387C3834F3A222F
            3E3C546672784D656D6F56696577204C6566743D223135352C37373935332220
            546F703D223330332C35363731222057696474683D2236372220486569676874
            3D22313922205265737472696374696F6E733D22382220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D2268615269676874222050617265
            6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
            20546578743D22505245C3874F3A222F3E3C546672784D656D6F56696577204C
            6566743D223232322C37373935332220546F703D223330332C35363731222057
            696474683D22333122204865696768743D22313922205265737472696374696F
            6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73652220
            466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D31312220466F6E742E4E616D653D22417269
            616C204E6172726F772220466F6E742E5374796C653D223122204672616D652E
            5479703D2231352220476170583D22332220476170593D22332220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D22434F523A222F3E3C2F636F726E65726D656D6F733E3C726F776D
            656D6F733E3C546672784D656D6F56696577204C6566743D2232332C37373935
            332220546F703D223332322C35363731222057696474683D2236382220486569
            6768743D22313922205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D31312220466F6E742E4E616D653D22417269616C204E6172726F77222046
            6F6E742E5374796C653D223022204672616D652E5479703D2231352220476170
            583D22332220476170593D22332220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D22222F3E3C5466
            72784D656D6F56696577204C6566743D2239312C37373935332220546F703D22
            3332322C35363731222057696474683D22363422204865696768743D22313922
            205265737472696374696F6E733D2232342220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223022204672616D652E5479703D2231352220476170583D223322204761
            70593D22332220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F5669
            6577204C6566743D223135352C37373935332220546F703D223332322C353637
            31222057696474683D22363722204865696768743D2231392220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C73652220446973706C6179466F726D61742E466F726D61745374723D222323
            232C2323302E30302220446973706C6179466F726D61742E4B696E643D22666B
            4E756D657269632220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3022204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686152696768742220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C546672784D656D6F56696577204C6566743D223232322C3737393533
            2220546F703D223332322C35363731222057696474683D223331222048656967
            68743D22313922205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D31312220466F6E742E4E616D653D22417269616C204E6172726F772220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D22332220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C2F726F
            776D656D6F733E3C726F77746F74616C6D656D6F733E3C546672784D656D6F56
            696577204C6566743D2232332C37373935332220546F703D223334312C353637
            31222057696474683D2232333022204865696768743D22313922205265737472
            696374696F6E733D22382220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D65
            3D22417269616C204E6172726F772220466F6E742E5374796C653D2231222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686152696768742220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D22546F7461
            6C203D262336323B222F3E3C546672784D656D6F56696577204C6566743D2239
            392220546F703D223636222057696474683D22393322204865696768743D2232
            3222205265737472696374696F6E733D2238222056697369626C653D2246616C
            73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223122204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
            722220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22546F74616C222F3E3C546672784D656D6F56
            696577204C6566743D223139322220546F703D223636222057696474683D2239
            3722204865696768743D22323222205265737472696374696F6E733D22382220
            56697369626C653D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E
            4E616D653D22417269616C2220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D22546F74616C22
            2F3E3C546672784D656D6F56696577204C6566743D223137342220546F703D22
            3536222057696474683D22333722204865696768743D22313822205265737472
            696374696F6E733D2238222056697369626C653D2246616C73652220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D392220466F6E742E4E616D653D22417269616C204E6172726F77222046
            6F6E742E5374796C653D223122204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222048416C69676E3D22686152696768742220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D22537562746F74616C222F3E3C2F726F77746F74616C
            6D656D6F733E3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C2F
            63656C6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20
            322F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C6974656D2030
            2F3E3C6974656D20322F3E3C6974656D20322F3E3C6974656D20322F3E3C2F72
            6F77736F72743E3C2F63726F73733E}
        end
      end
    end
  end
  object db_PedidoVenda: TFDQuery
    MasterSource = ds_Pedido
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 288
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
  end
  object frx_PedidoVenda: TfrxDBDataset
    Description = 'db_PedidoVenda'
    UserName = 'FrxPedidoVenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DOCUMENTO=DOCUMENTO'
      'TITULO=TITULO'
      'DATA=DATA'
      'DATA_FATURAMENTO=DATA_FATURAMENTO'
      'DATA_ENTREGA=DATA_ENTREGA'
      'PRAZO_ENTREGA=PRAZO_ENTREGA'
      'TIPO=TIPO'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'CNPJ=CNPJ'
      'IE=IE'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'NOMECIDADE=NOMECIDADE'
      'UF=UF'
      'DDD=DDD'
      'FONE=FONE'
      'FAX=FAX'
      'CONTATO=CONTATO'
      'EMAIL=EMAIL'
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TRANSPORTADORA_NOME=TRANSPORTADORA_NOME'
      'FORMA_PAGTO=FORMA_PAGTO'
      'FORMA_PAGTO_NOME=FORMA_PAGTO_NOME'
      'TIPOPAGAMENTO=TIPOPAGAMENTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'QTDE_TOTAL=QTDE_TOTAL'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_PRODUTOS=VLR_PRODUTOS'
      'APROVADO=APROVADO'
      'STATUS=STATUS'
      'ITENS_IMPORTADO=ITENS_IMPORTADO'
      'STATUS_PERCENTUAL=STATUS_PERCENTUAL'
      'IMPRESSO=IMPRESSO'
      'RESPONSAVEL=RESPONSAVEL'
      'ENTREGAPARCIAL=ENTREGAPARCIAL'
      'VALORPARCIAL=VALORPARCIAL'
      'TABELA=TABELA'
      'APROVADO_1=APROVADO_1')
    DataSet = db_PedidoVenda
    BCDToCurrency = False
    Left = 288
    Top = 320
  end
  object dsReferenciaTecidos: TDataSource
    DataSet = dbReferenciaTecidos
    Left = 696
    Top = 296
  end
  object dbReferenciaTecidos: TFDQuery
    AfterPost = dbReferenciaTecidosAfterPost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PEDIDOS_MATERIAPRIMA_TECIDOS'
      'ORDER BY ESTOQUESALDO DESC')
    Left = 696
    Top = 352
    object dbReferenciaTecidosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object dbReferenciaTecidosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object dbReferenciaTecidosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object dbReferenciaTecidosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 30
    end
    object dbReferenciaTecidosESTOQUESALDO: TBCDField
      FieldName = 'ESTOQUESALDO'
      DisplayFormat = '###,##0'
    end
    object dbReferenciaTecidosCONSUMO: TBCDField
      FieldName = 'CONSUMO'
      DisplayFormat = '###,##0.000'
    end
    object dbReferenciaTecidosQTDEBAIXAR: TBCDField
      FieldName = 'QTDEBAIXAR'
      OnChange = dbReferenciaTecidosQTDEBAIXARChange
      DisplayFormat = '###,##0.000'
    end
    object dbReferenciaTecidosSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 10
    end
  end
  object db_TabelaReferencia: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM TPRECO_REFERENCIAS'
      'WHERE'
      'CODIGO=:CODIGO'
      ''
      'ORDER BY REFERENCIA')
    Left = 652
    Top = 78
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object db_TabelaReferenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_TabelaReferenciaDATA_ATUALIZADA: TSQLTimeStampField
      FieldName = 'DATA_ATUALIZADA'
    end
    object db_TabelaReferenciaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      Size = 30
    end
    object db_TabelaReferenciaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_TabelaReferenciaPRC_VENDA: TBCDField
      FieldName = 'PRC_VENDA'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
  end
  object FrxPedidoVendaSemValores: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41000.913359259300000000
    ReportOptions.Name = 'Pedido de Venda'
    ReportOptions.LastChange = 41000.930807291700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure DBCross1OnPrintCell(Memo: TfrxMemoView; RowIndex, Colu' +
        'mnIndex, CellIndex: Integer; RowValues, ColumnValues, Value: Var' +
        'iant);'
      'begin'
      '  if (Value = null) or (Value = 0) then Memo.Text := '#39#39';'
      '  if Value > 0 then'
      '  begin                  '
      '    Memo.Color := clSilver;       '
      '  end;  '
      '  end;'
      ''
      'Begin'
      '        '
      'end.')
    Left = 608
    Top = 304
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frx_dsPedido
        DataSetName = 'frx_dsPedido'
      end
      item
        DataSet = frx_dsPedidoGrade
        DataSetName = 'frx_dsPedidoGrade'
      end
      item
        DataSet = frx_dsPedidosItens
        DataSetName = 'frx_dsPedidosItens'
      end
      item
        DataSet = frx_PedidoVenda
        DataSetName = 'FrxPedidoVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSet = frx_dsPedido
      DataSetName = 'frx_dsPedido'
      TitleBeforeHeader = False
      object ReportSummary1: TfrxReportSummary
        Description = 'Totais'
        FillType = ftBrush
        Height = 124.724490000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = 505.472480000000000000
          Top = 61.188930000000030000
          Width = 200.307050000000000000
          Height = 56.881880000000000000
        end
        object Memo60: TfrxMemoView
          Left = 509.102362200000000000
          Top = 84.086628819999990000
          Width = 96.377952760000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Top = 98.763760000000050000
          Width = 464.606370000000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'CONFERENTE:: ___________________________________________________' +
              '_______________')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 1.889763779527560000
          Width = 714.330708661417000000
          Color = clBlack
          Diagonal = True
        end
        object Memo52: TfrxMemoView
          Left = 609.637795280000000000
          Top = 84.086628819999990000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'QTDE_TOTAL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."QTDE_TOTAL"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000022000
          Width = 718.110700000000000000
          Height = 51.677180000000000000
          AutoWidth = True
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'OBSERVA'#199#195'O:'
            '[frx_dsPedido."OBSERVACAO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 122.944960000000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 604.724800000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          Top = 0.755905510000047700
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
        object Line18: TfrxLineView
          Left = 1.000000000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693259999999900000
          Top = 0.755905510000047700
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
      end
      object PageHeader1: TfrxPageHeader
        Description = 'Pedido de Venda'
        FillType = ftBrush
        Height = 219.212588660000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Width = 718.102660000000000000
          Height = 68.031496060000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
        end
        object Shape5: TfrxShapeView
          Left = 1.000000000000000000
          Top = 68.779530000000000000
          Width = 718.000000000000000000
          Height = 142.000000000000000000
        end
        object Memo6: TfrxMemoView
          Left = 4.779527560000000000
          Top = 99.905511809999990000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOME/RAZ'#195'O SOCIAL:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 460.000000000000000000
          Top = 99.905511809999990000
          Width = 58.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 588.000000000000000000
          Top = 99.905511809999990000
          Width = 123.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'I.E/RG:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 4.779527560000000000
          Top = 111.779530000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CLIENTE"] - [FrxPedidoVenda."CLIENTE_NOME"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 460.000000000000000000
          Top = 111.779530000000000000
          Width = 50.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CNPJ'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CNPJ"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 588.000000000000000000
          Top = 111.779530000000000000
          Width = 29.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'IE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."IE"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 5.000000000000000000
          Top = 126.362204720000000000
          Width = 59.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 438.842610000000000000
          Top = 126.362204720000000000
          Width = 43.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 649.740260000000000000
          Top = 126.362204720000000000
          Width = 26.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 4.779527560000000000
          Top = 138.779530000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."ENDERECO"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 438.842610000000000000
          Top = 138.779530000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'BAIRRO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."BAIRRO"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 649.740260000000000000
          Top = 138.779530000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CEP'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CEP"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 4.779527560000000000
          Top = 153.574803150000000000
          Width = 65.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MUNICIPIO:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 4.779527560000000000
          Top = 165.779530000000000000
          Width = 69.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NOMECIDADE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."NOMECIDADE"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 178.527520000000000000
          Top = 165.779530000000000000
          Width = 14.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'UF'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."UF"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 178.527520000000000000
          Top = 153.574803150000000000
          Width = 20.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 217.307050000000000000
          Top = 153.574803150000000000
          Width = 33.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 304.409400000000000000
          Top = 153.574803150000000000
          Width = 32.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FAX:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 304.409400000000000000
          Top = 165.921259840000000000
          Width = 18.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FAX'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."FAX"]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 392.732220000000000000
          Top = 165.669291340000000000
          Width = 45.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CONTATO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CONTATO"]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 392.732220000000000000
          Top = 153.574803150000000000
          Width = 54.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONTATO:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 4.779527560000000000
          Top = 193.779530000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VENDEDOR_NOME'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."VENDEDOR_NOME"]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 4.779527560000000000
          Top = 180.409448820000000000
          Width = 98.118120000000000000
          Height = 12.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REPRESENTANTE:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 533.606370000000000000
          Top = 153.574803150000000000
          Width = 102.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMAIL DO CLIENTE:')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 533.606370000000000000
          Top = 165.669291340000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'EMAIL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."EMAIL"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 493.968770000000000000
          Top = 69.779530000000000000
          Width = 93.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA DO PEDIDO:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 493.968770000000000000
          Top = 84.031496060000000000
          Width = 23.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsPedido."DATA"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 603.968770000000000000
          Top = 84.031496060000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA_ENTREGA'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsPedido."DATA_ENTREGA"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 603.968770000000000000
          Top = 69.779530000000000000
          Width = 106.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PREV. ENTREGA:')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 4.779527560000000000
          Top = 69.669291340000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 4.779527560000000000
          Top = 84.031496060000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CODIGO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxPedidoVenda."CODIGO"]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 235.000000000000000000
          Top = 193.779530000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'TRANSPORTADORA_NOME'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."TRANSPORTADORA_NOME"]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 235.000000000000000000
          Top = 180.409448820000000000
          Width = 101.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TRANSPORTADORA:')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 2.889763780000000000
          Top = 98.370130000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 4.779527560000000000
          Top = 127.385900000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 2.889763780000000000
          Top = 152.063080000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line27: TfrxLineView
          Left = 2.889763780000000000
          Top = 180.299320000000000000
          Width = 714.331170000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
        object Line28: TfrxLineView
          Left = 64.692950000000000000
          Top = 69.921259840000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 598.165740000000000000
          Top = 68.913420000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 454.543600000000000000
          Top = 99.149660000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          Left = 583.047620000000000000
          Top = 99.149660000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          Left = 434.189240000000000000
          Top = 127.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 646.520100000000000000
          Top = 127.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          Left = 389.291590000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          Left = 299.582870000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          Left = 212.653680000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          Left = 231.551330000000000000
          Top = 182.299320000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          Left = 530.134200000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          Left = 171.078850000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          Left = 488.559370000000000000
          Top = 68.913420000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape7: TfrxShapeView
          Left = 0.645671730000000000
          Top = 1.000000000000000000
          Width = 718.000000000000000000
          Height = 66.519675280000000000
        end
        object Memo109: TfrxMemoView
          Left = 510.457020000000000000
          Top = 1.779530000000001000
          Width = 204.606060000000000000
          Height = 22.322820000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'PEDIDO DE VENDA')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 510.992128430000000000
          Top = 26.346459130000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 510.992128430000000000
          Top = 41.086616610000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 576.251936770000000000
          Top = 41.086616610000000000
          Width = 124.724441180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo113: TfrxMemoView
          Left = 3.645517950000000000
          Top = 1.559059999999999000
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
          Left = 3.645517950000000000
          Top = 17.456710000000000000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_FONE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_FONE"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 575.354701730000000000
          Top = 26.346459130000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Date] | [Time]')
          ParentFont = False
          WordWrap = False
        end
        object Line41: TfrxLineView
          Left = 470.307391730000000000
          Height = 67.275590550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo116: TfrxMemoView
          Left = 3.425201730000000000
          Top = 49.133889999999990000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_SITE"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 216.433210000000000000
          Top = 165.921259840000000000
          Width = 19.440940000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DDD'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."DDD"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Left = 241.575140000000000000
          Top = 165.921259840000000000
          Width = 49.677180000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FONE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."FONE"]')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 372.267780000000000000
          Top = 125.724490000000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 372.267780000000000000
          Top = 138.196930950000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NUMERO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."NUMERO"]')
          ParentFont = False
        end
        object Line42: TfrxLineView
          Left = 367.614410000000000000
          Top = 126.102442760000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object BarCode2: TfrxBarCodeView
          Left = 310.921460000000000000
          Top = 75.590600000000000000
          Width = 129.000000000000000000
          Height = 18.897650000000000000
          BarType = bcCode39
          DataField = 'CODIGO'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Expression = '<FrxPedidoVenda."CODIGO">'
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
        object Memo121: TfrxMemoView
          Left = 69.370130000000000000
          Top = 68.031496062992130000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#218'MERO:')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 69.370130000000000000
          Top = 82.393700790000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DOCUMENTO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxPedidoVenda."DOCUMENTO"]')
          ParentFont = False
        end
        object Line43: TfrxLineView
          Left = 140.283552440000000000
          Top = 69.921259840000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 68.031496060000000000
          Width = 77.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ORDEM CORTE:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 147.401670000000000000
          Top = 82.393700790000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 233.433212440000000000
          Top = 69.700789840000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object ReportTitle1: TfrxReportTitle
        Description = 'Grade de Produtos'
        FillType = ftBrush
        Height = 136.063080000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object DBCross1: TfrxDBCrossView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 316.000000000000000000
          Height = 119.000000000000000000
          DownThenAcross = False
          RowLevels = 3
          OnPrintCell = 'DBCross1OnPrintCell'
          CellFields.Strings = (
            'QUANTIDADE')
          ColumnFields.Strings = (
            'TAMANHO')
          DataSet = frx_dsPedidoGrade
          DataSetName = 'frx_dsPedidoGrade'
          RowFields.Strings = (
            'REFERENCIA'
            'DESCRICAO'
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223138362C
            37373935332220546F703D223332322C35363731222057696474683D22353822
            204865696768743D22313922205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31312220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C546672784D656D6F56696577
            204C6566743D223231312220546F703D223536222057696474683D2235302220
            4865696768743D22313822205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C73652220446973706C6179466F
            726D61742E4B696E643D22666B4E756D657269632220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31322220466F6E742E4E616D653D22417269616C204E6172726F7722
            20466F6E742E5374796C653D223022204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C65
            66743D223139322220546F703D223636222057696474683D2238302220486569
            6768743D22323222205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686152
            69676874222056416C69676E3D22766143656E7465722220546578743D223022
            2F3E3C546672784D656D6F56696577204C6566743D223138362C373739353322
            20546F703D223334312C35363731222057696474683D22353822204865696768
            743D22323222205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            6874222056416C69676E3D22766143656E7465722220546578743D2230222F3E
            3C546672784D656D6F56696577204C6566743D223234342C3737393533222054
            6F703D223332322C35363731222057696474683D22353522204865696768743D
            22313922205265737472696374696F6E733D2232342220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223122204672616D652E5479703D223135222046696C6C2E4261
            636B436F6C6F723D2231353732343532372220476170583D2233222047617059
            3D2233222048416C69676E3D22686152696768742220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2230222F3E3C546672784D656D6F56696577204C6566743D223238382220546F
            703D223338222057696474683D22353522204865696768743D22313922205265
            737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E73
            3D2246616C73652220446973706C6179466F726D61742E4B696E643D22666B4E
            756D657269632220466F6E742E436861727365743D22302220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D
            2231353732343532372220476170583D22332220476170593D2233222048416C
            69676E3D22686152696768742220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D2230222F3E3C5466
            72784D656D6F56696577204C6566743D223236312220546F703D223536222057
            696474683D22353022204865696768743D22313822205265737472696374696F
            6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C736522
            20446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220
            466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241726961
            6C204E6172726F772220466F6E742E5374796C653D223122204672616D652E54
            79703D223135222046696C6C2E4261636B436F6C6F723D223135373234353237
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            6768742220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22222F3E3C546672784D656D6F56696577
            204C6566743D223234342C37373935332220546F703D223334312C3536373122
            2057696474683D22353522204865696768743D22323222205265737472696374
            696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D2268615269676874222056416C69676E3D22766143
            656E7465722220546578743D2230222F3E3C2F63656C6C6D656D6F733E3C6365
            6C6C6865616465726D656D6F733E3C546672784D656D6F56696577204C656674
            3D22302220546F703D2230222057696474683D223022204865696768743D2230
            22205265737472696374696F6E733D22382220416C6C6F774578707265737369
            6F6E733D2246616C736522204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222056416C69676E3D22766143656E746572222054
            6578743D225155414E544944414445222F3E3C546672784D656D6F5669657720
            4C6566743D22302220546F703D2230222057696474683D223022204865696768
            743D223022205265737472696374696F6E733D22382220416C6C6F7745787072
            657373696F6E733D2246616C736522204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222056416C69676E3D22766143656E7465
            722220546578743D225155414E544944414445222F3E3C546672784D656D6F56
            696577204C6566743D22302220546F703D2230222057696474683D2230222048
            65696768743D223022205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222056416C69676E3D22766143
            656E7465722220546578743D225155414E544944414445222F3E3C546672784D
            656D6F56696577204C6566743D22302220546F703D2230222057696474683D22
            3022204865696768743D223022205265737472696374696F6E733D2238222041
            6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222056416C69676E3D
            22766143656E7465722220546578743D225155414E544944414445222F3E3C2F
            63656C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C5466
            72784D656D6F56696577204C6566743D223138362C37373935332220546F703D
            223330332C35363731222057696474683D22353822204865696768743D223139
            22205265737472696374696F6E733D2232342220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131222046
            6F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E537479
            6C653D223122204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686152696768742220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D22222F3E3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F7461
            6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223234342C37
            373935332220546F703D223330332C35363731222057696474683D2235352220
            4865696768743D22313922205265737472696374696F6E733D22382220416C6C
            6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31312220466F6E742E4E616D653D22417269616C204E6172726F7722
            20466F6E742E5374796C653D223122204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22535542544F54414C222F3E3C2F636F6C756D6E
            746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D656D
            6F56696577204C6566743D2232332C37373935332220546F703D223238342C35
            363731222057696474683D2231363322204865696768743D2231392220526573
            7472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E61
            6D653D22417269616C204E6172726F772220466F6E742E5374796C653D223122
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D22686143656E7465722220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2250
            524F4455544F5320222F3E3C546672784D656D6F56696577204C6566743D2231
            38362C37373935332220546F703D223238342C35363731222057696474683D22
            31313322204865696768743D22313922205265737472696374696F6E733D2238
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D31312220466F6E742E4E616D653D22417269616C204E61
            72726F772220466F6E742E5374796C653D223122204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            43656E7465722220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D2254414D414E484F222F3E3C5466
            72784D656D6F56696577204C6566743D22302220546F703D2230222057696474
            683D223022204865696768743D223022205265737472696374696F6E733D2238
            222056697369626C653D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205641
            6C69676E3D22766143656E7465722220546578743D22222F3E3C546672784D65
            6D6F56696577204C6566743D2232332C37373935332220546F703D223330332C
            35363731222057696474683D22363822204865696768743D2231392220526573
            7472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E61
            6D653D22417269616C204E6172726F772220466F6E742E5374796C653D223122
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D225245464552454E434941222F3E3C546672784D
            656D6F56696577204C6566743D2239312C37373935332220546F703D22333033
            2C35363731222057696474683D22363422204865696768743D22313922205265
            737472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22302220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            332220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D2244455343524943414F222F3E3C546672784D
            656D6F56696577204C6566743D223135352C37373935332220546F703D223330
            332C35363731222057696474683D22333122204865696768743D223139222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686152696768742220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            434F52222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C54
            6672784D656D6F56696577204C6566743D2232332C37373935332220546F703D
            223332322C35363731222057696474683D22363822204865696768743D223139
            22205265737472696374696F6E733D2232342220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131222046
            6F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E537479
            6C653D223022204672616D652E5479703D2231352220476170583D2233222047
            6170593D22332220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
            696577204C6566743D2239312C37373935332220546F703D223332322C353637
            31222057696474683D22363422204865696768743D2231392220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D65
            3D22417269616C204E6172726F772220466F6E742E5374796C653D2230222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D22222F3E3C546672784D656D6F56696577204C656674
            3D223135352C37373935332220546F703D223332322C35363731222057696474
            683D22333122204865696768743D22313922205265737472696374696F6E733D
            2232342220416C6C6F7745787072657373696F6E733D2246616C736522204469
            73706C6179466F726D61742E466F726D61745374723D222323232C2323302E30
            302220446973706C6179466F726D61742E4B696E643D22666B4E756D65726963
            2220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686152696768742220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C2F726F
            776D656D6F733E3C726F77746F74616C6D656D6F733E3C546672784D656D6F56
            696577204C6566743D2232332C37373935332220546F703D223334312C353637
            31222057696474683D2231363322204865696768743D22323222205265737472
            696374696F6E733D22382220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D65
            3D22417269616C204E6172726F772220466F6E742E5374796C653D2231222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686152696768742220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D22546F7461
            6C203D262336323B222F3E3C546672784D656D6F56696577204C6566743D2239
            392220546F703D223636222057696474683D22393322204865696768743D2232
            3222205265737472696374696F6E733D2238222056697369626C653D2246616C
            73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223122204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
            722220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22546F74616C222F3E3C546672784D656D6F56
            696577204C6566743D223139322220546F703D223636222057696474683D2239
            3722204865696768743D22323222205265737472696374696F6E733D22382220
            56697369626C653D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E
            4E616D653D22417269616C2220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D22546F74616C22
            2F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66756E6374696F6E73
            3E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D
            6E736F72743E3C6974656D20322F3E3C2F636F6C756D6E736F72743E3C726F77
            736F72743E3C6974656D20302F3E3C6974656D20322F3E3C6974656D20322F3E
            3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
    end
  end
  object PopupImprimir: TPopupMenu
    Left = 824
    Top = 296
    object ImprimirPedidocomvalores1: TMenuItem
      Caption = 'Imprimir pedido com valores'
      OnClick = ImprimirPedidocomvalores1Click
    end
    object ImprimirPedidosemvalores1: TMenuItem
      Caption = 'Imprimir pedido sem valores'
      OnClick = ImprimirPedidosemvalores1Click
    end
  end
  object FrxPedidoServicos: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41000.913359259300000000
    ReportOptions.Name = 'Pedido de Venda'
    ReportOptions.LastChange = 41000.930807291700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      ''
      ' vlnMateriais,                      '
      ' vlnServicos,'
      ' vlnQtdeMateriais,'
      ' vlnQtdeServicos,'
      ' vlnDesconto,       '
      ' vlnValorTotal'
      '   '
      ''
      '  : Real;'
      '  '
      ''
      
        'procedure DBCross1OnPrintCell(Memo: TfrxMemoView; RowIndex, Colu' +
        'mnIndex, CellIndex: Integer; RowValues, ColumnValues, Value: Var' +
        'iant);'
      'begin'
      '  if (Value = null) or (Value = 0) then Memo.Text := '#39#39';'
      '  if Value > 0 then'
      '  begin                  '
      '    Memo.Color := clSilver;       '
      '  end;  '
      '  end;'
      ''
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      '  if <frx_dsPedidoServicos."TIPO">='#39'MATERIAL'#39' Then'
      '     labelTipo.Text  :='#39'PRODUTO'#39';'
      ''
      '  if <frx_dsPedidoServicos."TIPO">='#39'SERVICO'#39' Then'
      '     labelTipo.Text  :='#39'SERVI'#199'O'#39';'
      '         '
      '    '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      ' vlnMateriais           :=0;                      '
      ' vlnServicos            :=0;  '
      ' vlnQtdeMateriais       :=0;  '
      ' vlnQtdeServicos        :=0;'
      ' vlnDesconto            :=0;  '
      ' vlnValorTotal          :=0;  '
      '      '
      '  '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      
        ' // ------------------------------------------------------------' +
        '------'
      
        ' //  SOMAR VALORES PAGOS, A PAGAR E SALDO                       ' +
        '                                                                ' +
        '       '
      
        ' // ------------------------------------------------------------' +
        '------'
      ' if <frx_dsPedidoServicos."TIPO">='#39'SERVICO'#39' Then'
      ' begin             '
      
        '    vlnServicos       := vlnServicos       + <frx_dsPedidoServic' +
        'os."VLR_TOTAL">;'
      
        '    vlnQtdeServicos   := vlnQtdeServicos   + <frx_dsPedidoServic' +
        'os."QUANTIDADE">;'
      ' end;'
      ''
      ' if <frx_dsPedidoServicos."TIPO">='#39'MATERIAL'#39' Then'
      ' begin             '
      
        '    vlnMateriais       := vlnMateriais       + <frx_dsPedidoServ' +
        'icos."VLR_TOTAL">;'
      
        '    vlnQtdeMateriais   := vlnQtdeMateriais   + <frx_dsPedidoServ' +
        'icos."QUANTIDADE">;'
      ' end;'
      '   '
      
        ' // vlnDesconto :=  vlnDesconto + <DBComissaoPedidos."VLR_DESCON' +
        'TO">;                               '
      ''
      ' vlnValorTotal := vlnServicos + vlnMateriais;              '
      '   '
      
        ' // ------------------------------------------------------------' +
        '------'
      
        ' //  APRESENTAR VALORES                                         ' +
        '                                                                ' +
        '      '
      
        ' // ------------------------------------------------------------' +
        '------'
      ''
      
        ' txtVlrServicos.Text    := FormatFloat('#39'###,##0.00'#39',vlnServicos)' +
        ';'
      
        ' txtVlrProdutos.Text    := FormatFloat('#39'###,##0.00'#39',vlnMateriais' +
        ');'
      '   '
      
        ' txtQtdeServicos.Text   := FormatFloat('#39'###,##0'#39',vlnQtdeServicos' +
        ');'
      
        ' txtQtdeProdutos.Text   := FormatFloat('#39'###,##0.000'#39',vlnQtdeMate' +
        'riais);'
      ''
      
        ' txtVlrDescontos.Text   := FormatFloat('#39'###,##0.00'#39',vlnDesconto)' +
        ';'
      
        ' txtVlrTotal.Text       := FormatFloat('#39'###,##0.00'#39',vlnValorTota' +
        'l);'
      ''
      '    '
      'end;'
      ''
      'Begin'
      '        '
      'end.')
    Left = 504
    Top = 136
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frx_dsPedido
        DataSetName = 'frx_dsPedido'
      end
      item
        DataSet = frx_dsPedidoServicos
        DataSetName = 'frx_dsPedidoServicos'
      end
      item
        DataSet = frx_PedidoVenda
        DataSetName = 'FrxPedidoVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSet = frx_dsPedido
      DataSetName = 'frx_dsPedido'
      TitleBeforeHeader = False
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportSummary1: TfrxReportSummary
        Description = 'Totais'
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 578.268090000000000000
        Width = 718.110700000000000000
        object Line21: TfrxLineView
          Left = 1.889763779527560000
          Width = 714.330708661417000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 132.283501180000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DOS SERVI'#199'OS:')
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.921264720000000000
          Width = 132.283501180000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DOS PRODUTOS:')
          ParentFont = False
          WordWrap = False
        end
        object txtVlrProdutos: TfrxMemoView
          Left = 141.189095980000000000
          Top = 22.921264720000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '0,00')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.417327720000000000
          Width = 132.283501180000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE SERVI'#199'OS:')
          ParentFont = False
          WordWrap = False
        end
        object txtQtdeServicos: TfrxMemoView
          Left = 141.189095980000000000
          Top = 37.417327720000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '0,00')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 4.653535980000000000
          Top = 83.275624720000000000
          Width = 132.283501180000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALORES TOTAIS:')
          ParentFont = False
          WordWrap = False
        end
        object txtVlrTotal: TfrxMemoView
          Left = 141.496145980000000000
          Top = 83.275624720000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '0,00')
          ParentFont = False
        end
        object txtVlrServicos: TfrxMemoView
          Left = 141.732385980000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '0,00')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 132.283501180000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE PRODUTOS:')
          ParentFont = False
          WordWrap = False
        end
        object txtQtdeProdutos: TfrxMemoView
          Left = 140.622140000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '0,00')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 68.252010000000000000
          Width = 132.283501180000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALORES DESCONTOS:')
          ParentFont = False
          WordWrap = False
        end
        object txtVlrDescontos: TfrxMemoView
          Left = 140.622140000000000000
          Top = 68.252010000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '0,00')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 702.992580000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          Top = 0.755905510000048000
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
        object Line18: TfrxLineView
          Left = 1.000000000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Top = 0.755905510000048000
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
      end
      object PageHeader1: TfrxPageHeader
        Description = 'Pedido de Venda'
        FillType = ftBrush
        Height = 309.921308660000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo69: TfrxMemoView
          Align = baWidth
          Top = 222.992270000000000000
          Width = 718.110700000000000000
          Height = 51.677180000000000000
          AutoWidth = True
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'OBSERVA'#199#195'O:'
            '[frx_dsPedido."OBSERVACAO"]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Width = 718.102660000000000000
          Height = 68.031496060000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
        end
        object Shape5: TfrxShapeView
          Left = 1.000000000000000000
          Top = 68.779530000000000000
          Width = 718.000000000000000000
          Height = 142.000000000000000000
        end
        object Memo6: TfrxMemoView
          Left = 4.779527560000000000
          Top = 99.905511810000000000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOME/RAZ'#195'O SOCIAL:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 460.000000000000000000
          Top = 99.905511810000000000
          Width = 58.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 588.000000000000000000
          Top = 99.905511810000000000
          Width = 123.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'I.E/RG:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 4.779527560000000000
          Top = 111.779530000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CLIENTE"] - [FrxPedidoVenda."CLIENTE_NOME"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 460.000000000000000000
          Top = 111.779530000000000000
          Width = 50.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CNPJ'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CNPJ"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 588.000000000000000000
          Top = 111.779530000000000000
          Width = 29.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'IE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."IE"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 5.000000000000000000
          Top = 126.362204720000000000
          Width = 59.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 438.842610000000000000
          Top = 126.362204720000000000
          Width = 43.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 649.740260000000000000
          Top = 126.362204720000000000
          Width = 26.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 4.779527560000000000
          Top = 138.779530000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."ENDERECO"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 438.842610000000000000
          Top = 138.779530000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'BAIRRO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."BAIRRO"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 649.740260000000000000
          Top = 138.779530000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CEP'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CEP"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 4.779527560000000000
          Top = 153.574803150000000000
          Width = 65.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MUNICIPIO:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 4.779527560000000000
          Top = 165.779530000000000000
          Width = 69.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NOMECIDADE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."NOMECIDADE"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 178.527520000000000000
          Top = 165.779530000000000000
          Width = 14.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'UF'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."UF"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 178.527520000000000000
          Top = 153.574803150000000000
          Width = 20.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 217.307050000000000000
          Top = 153.574803150000000000
          Width = 33.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 304.409400000000000000
          Top = 153.574803150000000000
          Width = 32.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FAX:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 304.409400000000000000
          Top = 165.921259840000000000
          Width = 18.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FAX'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."FAX"]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 392.732220000000000000
          Top = 165.669291340000000000
          Width = 45.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CONTATO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CONTATO"]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 392.732220000000000000
          Top = 153.574803150000000000
          Width = 54.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONTATO:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 4.779527560000000000
          Top = 193.779530000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VENDEDOR_NOME'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."VENDEDOR_NOME"]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 4.779527560000000000
          Top = 180.409448820000000000
          Width = 98.118120000000000000
          Height = 12.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ATENDENTE:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 533.606370000000000000
          Top = 153.574803150000000000
          Width = 102.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMAIL DO CLIENTE:')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 533.606370000000000000
          Top = 165.669291340000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'EMAIL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."EMAIL"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 493.968770000000000000
          Top = 69.779530000000000000
          Width = 93.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA DO PEDIDO:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 493.968770000000000000
          Top = 84.031496060000000000
          Width = 23.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsPedido."DATA"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 603.968770000000000000
          Top = 84.031496060000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA_ENTREGA'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsPedido."DATA_ENTREGA"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 603.968770000000000000
          Top = 69.779530000000000000
          Width = 106.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PREV. ENTREGA:')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 4.779527560000000000
          Top = 69.669291340000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'O.S:')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 4.779527560000000000
          Top = 84.031496060000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CODIGO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxPedidoVenda."CODIGO"]')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 2.889763780000000000
          Top = 98.370130000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 4.779527560000000000
          Top = 127.385900000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 2.889763780000000000
          Top = 152.063080000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line27: TfrxLineView
          Left = 2.889763780000000000
          Top = 180.299320000000000000
          Width = 714.331170000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
        object Line28: TfrxLineView
          Left = 64.692950000000000000
          Top = 69.921259840000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 598.165740000000000000
          Top = 68.913420000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 454.543600000000000000
          Top = 99.149660000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          Left = 583.047620000000000000
          Top = 99.149660000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          Left = 434.189240000000000000
          Top = 127.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 646.520100000000000000
          Top = 127.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          Left = 389.291590000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          Left = 299.582870000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          Left = 212.653680000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          Left = 530.134200000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          Left = 171.078850000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          Left = 488.559370000000000000
          Top = 68.913420000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape7: TfrxShapeView
          Left = 0.645671730000000000
          Top = 1.000000000000000000
          Width = 718.000000000000000000
          Height = 66.519675280000000000
        end
        object Memo109: TfrxMemoView
          Left = 510.457020000000000000
          Top = 1.779530000000000000
          Width = 204.606060000000000000
          Height = 22.322820000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'ORDEM SERVI'#199'O:')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 510.992128430000000000
          Top = 26.346459130000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 510.992128430000000000
          Top = 41.086616610000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 576.251936770000000000
          Top = 41.086616610000000000
          Width = 124.724441180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo113: TfrxMemoView
          Left = 3.645517950000000000
          Top = 1.559060000000000000
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
          Left = 3.645517950000000000
          Top = 17.456710000000000000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_FONE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_FONE"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 575.354701730000000000
          Top = 26.346459130000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Date] | [Time]')
          ParentFont = False
          WordWrap = False
        end
        object Line41: TfrxLineView
          Left = 470.307391730000000000
          Height = 67.275590550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo116: TfrxMemoView
          Left = 3.425201730000000000
          Top = 49.133890000000000000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_SITE"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 216.433210000000000000
          Top = 165.921259840000000000
          Width = 19.440940000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DDD'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."DDD"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Left = 241.575140000000000000
          Top = 165.921259840000000000
          Width = 49.677180000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FONE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."FONE"]')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 372.267780000000000000
          Top = 125.724490000000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 372.267780000000000000
          Top = 138.196930950000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NUMERO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."NUMERO"]')
          ParentFont = False
        end
        object Line42: TfrxLineView
          Left = 367.614410000000000000
          Top = 126.102442760000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object BarCode2: TfrxBarCodeView
          Left = 265.567100000000000000
          Top = 75.590600000000000000
          Width = 129.000000000000000000
          Height = 18.897650000000000000
          BarType = bcCode39
          DataField = 'CODIGO'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Expression = '<FrxPedidoVenda."CODIGO">'
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
        object Memo121: TfrxMemoView
          Left = 69.370130000000000000
          Top = 68.031540000000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#218'MERO:')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 69.370130000000000000
          Top = 82.393744720000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DOCUMENTO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxPedidoVenda."DOCUMENTO"]')
          ParentFont = False
        end
        object Line43: TfrxLineView
          Left = 140.283552440000000000
          Top = 69.921259840000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 14.362204720000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frx_dsPedidoServicos
        DataSetName = 'frx_dsPedidoServicos'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 3.779527560000000000
          Width = 52.913385830000000000
          Height = 11.338582680000000000
          DataField = 'CODIGOSERVICO'
          DataSet = frx_dsPedidoServicos
          DataSetName = 'frx_dsPedidoServicos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidoServicos."CODIGOSERVICO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 83.149660000000000000
          Width = 404.409675830000000000
          Height = 11.338582680000000000
          DataField = 'DESCRICAO'
          DataSet = frx_dsPedidoServicos
          DataSetName = 'frx_dsPedidoServicos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsPedidoServicos."DESCRICAO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 498.897637800000000000
          Width = 41.574803150000000000
          Height = 11.338582680000000000
          DataField = 'QUANTIDADE'
          DataSet = frx_dsPedidoServicos
          DataSetName = 'frx_dsPedidoServicos'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidoServicos."QUANTIDADE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 551.811023620000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          DataField = 'VALOR_UNIT'
          DataSet = frx_dsPedidoServicos
          DataSetName = 'frx_dsPedidoServicos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidoServicos."VALOR_UNIT"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 634.960629920000000000
          Width = 75.590551180000000000
          Height = 11.338582680000000000
          DataField = 'VLR_TOTAL'
          DataSet = frx_dsPedidoServicos
          DataSetName = 'frx_dsPedidoServicos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidoServicos."VLR_TOTAL"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 389.291590000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = 'frx_dsPedidoServicos."TIPO"'
        object Memo24: TfrxMemoView
          Left = 3.779530000000000000
          Width = 158.740225830000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataSet = frx_dsPedidoServicos
          DataSetName = 'frx_dsPedidoServicos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'CLASSIFICA'#199#195'O: [frx_dsPedidoServicos."TIPO"]')
          ParentFont = False
        end
        object labelTipo: TfrxMemoView
          Left = 3.779527560000000000
          Top = 30.236240000000000000
          Width = 52.913385830000000000
          Height = 12.000000000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SERVI'#199'O:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 83.149660000000000000
          Top = 30.236240000000000000
          Width = 64.102350000000000000
          Height = 12.000000000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 498.897637795275600000
          Top = 30.236240000000000000
          Width = 41.574803149606300000
          Height = 12.000000000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 551.811023620000000000
          Top = 30.236240000000000000
          Width = 68.031496060000000000
          Height = 12.000000000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PRE'#199'O UNIT:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 634.960629920000000000
          Top = 30.236240000000000000
          Width = 75.590551180000000000
          Height = 12.000000000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 43.574988660000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 495.118430000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 634.961040000000000000
          Top = 3.000000000000000000
          Width = 75.590551180000000000
          Height = 11.338582680000000000
          DataSetName = 'frx_dsPedidoMateriais'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frx_dsPedidoServicos."VLR_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Left = 498.897637800000000000
          Width = 41.574803150000000000
          Height = 11.338582680000000000
          DataSetName = 'frx_dsPedidoMateriais'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frx_dsPedidoServicos."QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object db_PedidoServicos: TFDQuery
    MasterSource = ds_PedidoItens
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSSERVICOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      '--AND'
      '--TIPO = '#39'SERVICO'#39
      'ORDER BY  TIPO DESC, CODIGOSERVICO ASC, REFERENCIA ASC')
    Left = 424
    Top = 144
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
  end
  object frx_dsPedidoServicos: TfrxDBDataset
    UserName = 'frx_dsPedidoServicos'
    CloseDataSource = True
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'CODIGOSERVICO=CODIGOSERVICO'
      'DESCRICAOSERVICO=DESCRICAOSERVICO'
      'VALOR_UNIT=VALOR_UNIT'
      'QUANTIDADE=QUANTIDADE'
      'VLR_TOTAL=VLR_TOTAL'
      'TIPO=TIPO'
      'EMPRESA_1=EMPRESA_1'
      'REFERENCIA_1=REFERENCIA_1'
      'APROVADO=APROVADO'
      'ORDEMPRODUCAO=ORDEMPRODUCAO')
    DataSet = db_PedidoServicos
    BCDToCurrency = False
    Left = 424
    Top = 200
  end
end
