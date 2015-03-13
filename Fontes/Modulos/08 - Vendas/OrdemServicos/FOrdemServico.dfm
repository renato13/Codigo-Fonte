object FrmOrdemServico: TFrmOrdemServico
  Left = 0
  Top = 1
  Caption = 'Ordem de Servi'#231'os'
  ClientHeight = 550
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Calibri'
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
  TextHeight = 14
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1028
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1048
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 1048
      Height = 33
      ExplicitWidth = 1048
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 142
        Caption = 'Ordem de Servi'#231'os'
        ExplicitWidth = 142
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 492
    Width = 1028
    Height = 58
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 492
    ExplicitWidth = 1048
    inherited W7Panel1: TPanel
      Width = 1048
      ExplicitWidth = 1048
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
    TabOrder = 2
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
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 33
    Width = 1028
    Height = 367
    ActivePage = tabServicos
    Align = alClient
    TabOrder = 4
    ExplicitWidth = 1048
    object tabPrincipal: TTabSheet
      Caption = 'Principal'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grpPrincipal: TGroupBox
        Left = 0
        Top = 0
        Width = 1020
        Height = 338
        Align = alClient
        Caption = 'Dados principais da Ordem de Servi'#231'os'
        TabOrder = 0
        ExplicitWidth = 1040
        object GrupoProdutos: TGroupBox
          Left = 2
          Top = 175
          Width = 1016
          Height = 161
          Align = alClient
          Caption = '[ PRODUTOS ]'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ExplicitLeft = 3
          ExplicitTop = 176
          ExplicitWidth = 1034
          ExplicitHeight = 159
          object dbGrid_Produtos: TDBGrid
            Left = 3
            Top = 32
            Width = 1028
            Height = 124
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
                Width = 400
                Visible = True
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'QTDE'
                Title.Caption = 'Qtde:'
                Width = 81
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
                Width = 78
                Visible = True
              end
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'VLR_TOTAL'
                ReadOnly = True
                Title.Caption = 'Valor Total:'
                Width = 88
                Visible = True
              end>
          end
          object ProgressBar1: TProgressBar
            Left = 3
            Top = 16
            Width = 1028
            Height = 16
            Align = alTop
            TabOrder = 1
          end
        end
        object grpDetalhesOS: TGroupBox
          Left = 2
          Top = 16
          Width = 1016
          Height = 159
          Align = alTop
          Caption = '[ CLIENTE ]'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = grpDetalhesOSExit
          ExplicitLeft = 3
          ExplicitTop = 17
          ExplicitWidth = 1034
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
            Left = 680
            Top = 50
            Width = 59
            Height = 13
            Caption = 'Comiss'#227'o %:'
          end
          object Label5: TLabel
            Left = 766
            Top = 50
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
            Width = 594
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
          object AdvGroupBox5: TGroupBox
            Left = 5
            Top = 86
            Width = 661
            Height = 67
            Caption = 'Observa'#231#245'es (assunto interno da empresa):'
            TabOrder = 13
            object DBMemo1: TDBMemo
              Left = 3
              Top = 16
              Width = 655
              Height = 48
              Align = alClient
              DataField = 'OBSERVACAO'
              DataSource = ds_Pedido
              TabOrder = 0
              OnKeyPress = DBMemo1KeyPress
            end
          end
          object GroupBox1: TGroupBox
            Left = 672
            Top = 87
            Width = 174
            Height = 66
            Caption = 'Status da O.S.'
            TabOrder = 12
            object Panel1: TPanel
              Left = 2
              Top = 15
              Width = 170
              Height = 49
              Align = alClient
              BevelOuter = bvNone
              Enabled = False
              ParentBackground = False
              TabOrder = 0
              object DBRadioGroup2: TDBRadioGroup
                Left = 82
                Top = 0
                Width = 88
                Height = 49
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
                Height = 49
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
            Left = 680
            Top = 65
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
            TabOrder = 10
          end
          object DBEdit4: TDBEdit
            Left = 766
            Top = 65
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
            TabOrder = 11
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
    end
    object tabServicos: TTabSheet
      Caption = 'Servicos'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GrupoServicosExternos: TGroupBox
        Left = 0
        Top = 246
        Width = 1020
        Height = 92
        Align = alBottom
        Caption = 'SERVI'#199'OS EXTERNOS (TERCEIROS)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 1040
        object dbGrid_Terceiros: TDBGrid
          Left = 2
          Top = 15
          Width = 1036
          Height = 75
          Align = alClient
          DataSource = ds_DetalhesTerceiros
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnEnter = dbGrid_TerceirosEnter
          OnKeyDown = dbGrid_TerceirosKeyDown
          OnKeyPress = dbGrid_TerceirosKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'SERVICO'
              Title.Caption = 'C'#211'DIGO:'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'DESCRI'#199#195'O:'
              Width = 386
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_UNIT'
              Title.Alignment = taRightJustify
              Title.Caption = 'VALOR UNIT:'
              Width = 85
              Visible = True
            end
            item
              Color = clSilver
              Expanded = False
              FieldName = 'VLR_TOTAL'
              ReadOnly = True
              Title.Alignment = taRightJustify
              Title.Caption = 'VLR TOTAL:'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TERCEIRIZADO'
              Title.Alignment = taRightJustify
              Title.Caption = 'FORNECEDOR:'
              Width = 85
              Visible = True
            end
            item
              Color = clSilver
              Expanded = False
              FieldName = 'TERCEIRIZADO_NOME'
              ReadOnly = True
              Title.Caption = 'NOME FORNECEDOR:'
              Width = 204
              Visible = True
            end>
        end
      end
      object GrupoServicosInternos: TGroupBox
        Left = 0
        Top = 105
        Width = 1020
        Height = 141
        Align = alClient
        Caption = 'SERVI'#199'OS INTERNOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 1040
        object dbGrid_Servicos: TDBGrid
          Left = 2
          Top = 15
          Width = 1036
          Height = 124
          Align = alClient
          DataSource = ds_DetalhesServicos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnEnter = dbGrid_ServicosEnter
          OnKeyDown = dbGrid_ServicosKeyDown
          OnKeyPress = dbGrid_ServicosKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'SERVICO'
              Title.Caption = 'C'#211'DIGO:'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'DESCRI'#199#195'O:'
              Width = 386
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_UNIT'
              Title.Alignment = taRightJustify
              Title.Caption = 'VALOR UNIT:'
              Width = 85
              Visible = True
            end
            item
              Color = clSilver
              Expanded = False
              FieldName = 'VLR_TOTAL'
              ReadOnly = True
              Title.Alignment = taRightJustify
              Title.Caption = 'VLR TOTAL:'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROFISSIONAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'MEC'#194'NICO:'
              Width = 73
              Visible = True
            end
            item
              Color = clSilver
              Expanded = False
              FieldName = 'PROFISSIONAL_NOME'
              ReadOnly = True
              Title.Caption = 'NOME MEC'#194'NICO:'
              Width = 219
              Visible = True
            end>
        end
      end
      object pgcProblemas: TPageControl
        Left = 0
        Top = 0
        Width = 1020
        Height = 105
        ActivePage = tabProblemaRelatado
        Align = alTop
        Images = FrmPrincipal.imgMenusImagens32x
        Style = tsFlatButtons
        TabOrder = 2
        object tabProblemaRelatado: TTabSheet
          Caption = 'Problema(s) Relatado(s)'
          ImageIndex = 26
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBMemo2: TDBMemo
            Left = 0
            Top = 0
            Width = 1032
            Height = 57
            Align = alClient
            DataField = 'PROBLEMARELATADO'
            DataSource = ds_Pedido
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
            OnKeyPress = DBMemo2KeyPress
          end
        end
        object tabSolucaoProblema: TTabSheet
          Caption = 'Solu'#231#227'o do(s) Problema(s)'
          ImageIndex = 27
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBMemo3: TDBMemo
            Left = 0
            Top = 0
            Width = 1032
            Height = 57
            Align = alClient
            DataField = 'PROBLEMASOLUCAO'
            DataSource = ds_Pedido
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
            OnKeyPress = DBMemo3KeyPress
          end
        end
      end
    end
  end
  object grbTotais: TGroupBox
    Left = 0
    Top = 400
    Width = 1028
    Height = 92
    Align = alBottom
    Caption = 'TOTAIS'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    ExplicitWidth = 1048
    object Label6: TLabel
      Left = 661
      Top = 19
      Width = 71
      Height = 13
      Caption = 'Desconto Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 54
      Top = 19
      Width = 101
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade Produtos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 670
      Top = 42
      Width = 64
      Height = 13
      Caption = 'Valor Liquido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 863
      Top = 19
      Width = 55
      Height = 13
      Caption = 'Valor Bruto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label11: TLabel
      Left = 17
      Top = 42
      Width = 138
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade Servi'#231'os Internos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 16
      Top = 66
      Width = 139
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade Servi'#231'os Externos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 268
      Top = 66
      Width = 139
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor Servi'#231'os Externos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 268
      Top = 42
      Width = 139
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor Servi'#231'os Internos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 268
      Top = 19
      Width = 139
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor dos Produtos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit5: TDBEdit
      Left = 738
      Top = 39
      Width = 86
      Height = 21
      Color = clBtnFace
      DataField = 'VLR_TOTAL'
      DataSource = ds_Pedido
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit1: TDBEdit
      Left = 158
      Top = 16
      Width = 72
      Height = 21
      Color = clBtnFace
      DataField = 'QTDE_PRODUTOS'
      DataSource = ds_Pedido
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 738
      Top = 16
      Width = 86
      Height = 21
      Color = clBtnFace
      DataField = 'VLR_DESCONTO'
      DataSource = ds_Pedido
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 922
      Top = 16
      Width = 86
      Height = 21
      Color = clBtnFace
      DataField = 'VLR_PRODUTOS'
      DataSource = ds_Pedido
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object DBEdit8: TDBEdit
      Left = 158
      Top = 39
      Width = 72
      Height = 21
      Color = clBtnFace
      DataField = 'QTDE_SERVICOS'
      DataSource = ds_Pedido
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit9: TDBEdit
      Left = 157
      Top = 63
      Width = 72
      Height = 21
      Color = clBtnFace
      DataField = 'QTDE_TERCEIRIZADOS'
      DataSource = ds_Pedido
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 412
      Top = 63
      Width = 72
      Height = 21
      Color = clBtnFace
      DataField = 'VLR_TERCEIRIZADOS'
      DataSource = ds_Pedido
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit11: TDBEdit
      Left = 413
      Top = 39
      Width = 72
      Height = 21
      Color = clBtnFace
      DataField = 'VLR_SERVICOS'
      DataSource = ds_Pedido
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit12: TDBEdit
      Left = 413
      Top = 16
      Width = 72
      Height = 21
      Color = clBtnFace
      DataField = 'VLR_PRODUTOS'
      DataSource = ds_Pedido
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object BuscaServicoExterno: TIDBEditDialog
    Left = 327
    Top = 6
    Width = 70
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
    Text = '0'
    Visible = False
    EditType = etUppercase
    EmptyText = 'F8 - Pesquisar'
    FocusColor = clWindow
    LabelCaption = 'Tabela de Valores:'
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
    DataField = 'TABELACUSTO'
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM  TPRECOSERVICO'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM TPRECOSERVICO'
      'WHERE'
      '%WHERE%')
    CountQuery.Strings = (
      'SELECT COUNT(CODIGO) FROM TPRECOSERVICO'
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
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'NOME:'
        DisplayWidth = 77
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'VLR_UNIT'
        WhereSyntax = 'VLR_UNIT'
        DisplayLabel = 'PRE'#199'O SERVI'#199'O:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = True
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
  object EditFornecedor: TIDBEditDialog
    Left = 752
    Top = 8
    Width = 57
    Height = 22
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = False
    TabOrder = 7
    Text = ''
    Visible = False
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
      '%WHERE%'
      'AND'
      
        'TIPO IN ('#39'FORNECEDOR'#39','#39'OFICINA'#39','#39'TERCEIRIZADO'#39','#39'TRANSPORTADORA'#39' ' +
        ')')
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
  object EditVendedorPesquisa: TIDBEditDialog
    Left = 888
    Top = 6
    Width = 70
    Height = 21
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = ''
    Visible = False
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
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbFocusControl = EditNomeVendedor
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = ' *** '
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39')'
      'AND'
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
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scUpper
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
    object db_PedidoPROBLEMARELATADO: TStringField
      FieldName = 'PROBLEMARELATADO'
      Size = 5000
    end
    object db_PedidoPROBLEMASOLUCAO: TStringField
      FieldName = 'PROBLEMASOLUCAO'
      Size = 5000
    end
    object db_PedidoQTDE_TERCEIRIZADOS: TIntegerField
      FieldName = 'QTDE_TERCEIRIZADOS'
      DisplayFormat = '###,##0'
    end
    object db_PedidoVLR_TERCEIRIZADOS: TBCDField
      FieldName = 'VLR_TERCEIRIZADOS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
  end
  object db_PedidoItens: TFDQuery
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
      Size = 10
    end
    object db_PedidoItensORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
    end
    object db_PedidoItensPRODUZINDO: TStringField
      FieldName = 'PRODUZINDO'
      Size = 10
    end
    object db_PedidoItensSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
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
  object SP_CalculaOrdemServicos: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPORDEMSERVICOS_CALCULA;1'
    Left = 96
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
  object frx_dsPedidosItens: TfrxDBDataset
    Description = 'PedidoItens'
    UserName = 'frx_dsPedidosProdutos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'CLIENTE=CLIENTE'
      'VENDEDOR=VENDEDOR'
      'TABELA=TABELA'
      'FORMAPAGTO=FORMAPAGTO'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TIPO=TIPO'
      'APROVADO=APROVADO'
      'ORDEMPRODUCAO=ORDEMPRODUCAO'
      'PRODUZINDO=PRODUZINDO'
      'SELECIONADO=SELECIONADO'
      'REFERENCIA=REFERENCIA'
      'REFERENCIATECIDO=REFERENCIATECIDO'
      'DESCRICAO=DESCRICAO'
      'UND=UND'
      'QTDE=QTDE'
      'VLR_UNIT=VLR_UNIT'
      'DESCONTO=DESCONTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_IMPOSTOS=VLR_IMPOSTOS'
      'VLR_TOTAL=VLR_TOTAL'
      'QTDE_LIBERADA=QTDE_LIBERADA'
      'QTDE_FATURADA=QTDE_FATURADA'
      'QTDE_CANCELADA=QTDE_CANCELADA')
    DataSet = db_PedidoItens
    BCDToCurrency = False
    Left = 416
    Top = 232
  end
  object db_PedidoVenda: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_ORDEMSERVICO'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 416
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
  end
  object frx_PedidoVenda: TfrxDBDataset
    Description = 'db_PedidoVenda'
    UserName = 'FrxPedidoVenda'
    CloseDataSource = True
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DOCUMENTO=DOCUMENTO'
      'TITULO=TITULO'
      'DATA=DATA'
      'DATA_FATURAMENTO=DATA_FATURAMENTO'
      'DATA_ENTREGA=DATA_ENTREGA'
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
      'QTDE_SERVICOS=QTDE_SERVICOS'
      'QTDE_TERCEIRIZADOS=QTDE_TERCEIRIZADOS'
      'VLR_SERVICOS=VLR_SERVICOS'
      'VLR_TERCEIRIZADOS=VLR_TERCEIRIZADOS'
      'APROVADO=APROVADO'
      'STATUS=STATUS'
      'IMPRESSO=IMPRESSO'
      'RESPONSAVEL=RESPONSAVEL'
      'PROBLEMARELATADO=PROBLEMARELATADO'
      'PROBLEMASOLUCAO=PROBLEMASOLUCAO'
      'OBSERVACAO=OBSERVACAO'
      'EMPRESA_1=EMPRESA_1'
      'TABELA=TABELA'
      'APROVADO_1=APROVADO_1'
      'ORDEMPRODUCAO=ORDEMPRODUCAO'
      'PRODUZINDO=PRODUZINDO'
      'SELECIONADO=SELECIONADO')
    DataSet = db_PedidoVenda
    BCDToCurrency = False
    Left = 416
    Top = 168
  end
  object dsReferenciaTecidos: TDataSource
    Left = 696
    Top = 296
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
    ReportOptions.LastChange = 41064.631149641200000000
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
      ' {     '
      
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
      '   '
      ' vlnValorTotal := vlnServicos + vlnMateriais;              '
      ' }'
      ''
      '  '
      
        ' // ------------------------------------------------------------' +
        '------'
      
        ' //  APRESENTAR VALORES                                         ' +
        '                                                                ' +
        '      '
      
        ' // ------------------------------------------------------------' +
        '------'
      ''
      ' {     '
      
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
      ' }  '
      '    '
      'end;'
      ''
      'Begin'
      '        '
      'end.')
    Left = 408
    Top = 360
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frx_dsPedidoServicos
        DataSetName = 'frx_dsPedidoServicos'
      end
      item
        DataSet = frx_dsPedidosItens
        DataSetName = 'frx_dsPedidosProdutos'
      end
      item
        DataSet = frx_dsPedidoTerceiros
        DataSetName = 'frx_dsPedidoTerceiros'
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
      DataSet = FrmPedidoVenda.frx_dsPedido
      DataSetName = 'frx_dsPedido'
      TitleBeforeHeader = False
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportSummary1: TfrxReportSummary
        Description = 'Totais'
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 865.512370000000000000
        Width = 718.110700000000000000
        object Line21: TfrxLineView
          Left = 1.889763780000000000
          Width = 714.330708660000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo38: TfrxMemoView
          Left = 3.779527560000000000
          Top = 37.795275590551180000
          Width = 162.519704570000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE SERVI'#199'OS EXTERNOS:')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Left = 3.779527560000000000
          Top = 7.559055118110236000
          Width = 162.519704570000000000
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
        object Memo14: TfrxMemoView
          Left = 3.779527560000000000
          Top = 23.055118110236220000
          Width = 162.519704570000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE SERVI'#199'OS INTERNOS:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 169.598227480000000000
          Top = 7.559055118110236000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frx_dsPedidosProdutos."QTDE">,dtlProdutos)]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 170.078850000000000000
          Top = 23.055118110236220000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frx_dsPedidoServicos."QUANTIDADE">,dtlServicosInternos)]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 170.078850000000000000
          Top = 37.795275590551180000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frx_dsPedidoTerceiros."QUANTIDADE">,dtlServicosExternos)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 243.220780000000000000
          Top = 37.795275590551180000
          Width = 162.519704570000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALORES SERVI'#199'OS EXTERNOS:')
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          Left = 243.220780000000000000
          Top = 7.559055118110236000
          Width = 162.519704570000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR DOS PRODUTOS:')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          Left = 243.220780000000000000
          Top = 23.055118110236220000
          Width = 162.519704570000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALORES SERVI'#199'OS INTERNOS:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 409.039479920000000000
          Top = 7.559055118110236000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frx_dsPedidosProdutos."VLR_TOTAL">,dtlProdutos)]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 409.520102440000000000
          Top = 23.055118110236220000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frx_dsPedidoServicos."VLR_TOTAL">,dtlServicosInternos)]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 409.520102440000000000
          Top = 37.795275590551180000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frx_dsPedidoTerceiros."VLR_TOTAL">,dtlServicosExternos)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo47: TfrxMemoView
          Left = 486.338900000000000000
          Top = 7.559055118110236000
          Width = 162.519704570000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO TOTAL:')
          ParentFont = False
          WordWrap = False
        end
        object Memo48: TfrxMemoView
          Left = 486.338900000000000000
          Top = 23.055118110236220000
          Width = 162.519704570000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR LIQUIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          Left = 653.858690000000000000
          Top = 7.559055118110236000
          Width = 52.913385830000000000
          Height = 11.338582680000000000
          DataField = 'VLR_DESCONTO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_DESCONTO"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 653.858690000000000000
          Top = 23.055118110236220000
          Width = 52.913385830000000000
          Height = 11.338582680000000000
          DataField = 'VLR_TOTAL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_TOTAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 944.882500000000000000
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
        Height = 71.810918660000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Width = 718.102660000000000000
          Height = 68.031496060000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
        end
        object Shape7: TfrxShapeView
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
      end
      object mstProdutos: TfrxMasterData
        FillType = ftBrush
        Height = 41.574803150000000000
        Top = 480.000310000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frx_PedidoVenda
        DataSetName = 'FrxPedidoVenda'
        RowCount = 0
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 25.000000000000000000
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
            'PRODUTOS:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 83.149662440000000000
          Top = 25.000000000000000000
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
        object Memo17: TfrxMemoView
          Left = 498.897640240000000000
          Top = 25.000000000000000000
          Width = 41.574803150000000000
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
        object Memo18: TfrxMemoView
          Left = 551.811026060000000000
          Top = 25.000000000000000000
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
        object Memo19: TfrxMemoView
          Left = 634.960632360000000000
          Top = 25.000000000000000000
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
        object Line1: TfrxLineView
          Align = baWidth
          Top = 39.685039370078700000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 19.559060000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '** PRODUTOS **')
          ParentFont = False
        end
      end
      object dtlProdutos: TfrxDetailData
        FillType = ftBrush
        Height = 17.007874015748000000
        Top = 544.252320000000000000
        Width = 718.110700000000000000
        DataSet = frx_dsPedidosItens
        DataSetName = 'frx_dsPedidosProdutos'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Width = 52.913385830000000000
          Height = 11.338582680000000000
          DataField = 'REFERENCIA'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosProdutos."REFERENCIA"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 83.149662440000000000
          Width = 404.409675830000000000
          Height = 11.338582680000000000
          DataField = 'DESCRICAO'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsPedidosProdutos."DESCRICAO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 498.897640240000000000
          Width = 41.574803150000000000
          Height = 11.338582680000000000
          DataField = 'QTDE'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosProdutos'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosProdutos."QTDE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 551.811026060000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          DataField = 'VLR_UNIT'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosProdutos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosProdutos."VLR_UNIT"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 634.960632360000000000
          Width = 75.590551180000000000
          Height = 11.338582680000000000
          DataField = 'VLR_TOTAL'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosProdutos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosProdutos."VLR_TOTAL"]')
          ParentFont = False
        end
      end
      object mstServicosInternos: TfrxMasterData
        FillType = ftBrush
        Height = 56.692923150000000000
        Top = 585.827150000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frx_PedidoVenda
        DataSetName = 'FrxPedidoVenda'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 42.000000000000000000
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
            'SERVI'#199'OS:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 64.149662440000000000
          Top = 42.000000000000000000
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
        object Memo8: TfrxMemoView
          Left = 378.897640240000000000
          Top = 42.000000000000000000
          Width = 41.574803150000000000
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
        object Memo9: TfrxMemoView
          Left = 431.811026060000000000
          Top = 42.000000000000000000
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
            'VALOR UNIT:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 505.960632360000000000
          Top = 41.944881890000000000
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
        object Memo23: TfrxMemoView
          Align = baWidth
          Top = 17.000000000000000000
          Width = 718.110700000000000000
          Height = 19.559060000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '** SERVI'#199'OS INTERNOS **')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 54.685039370000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo27: TfrxMemoView
          Left = 586.929500000000000000
          Top = 41.944881890000000000
          Width = 75.590551180000000000
          Height = 12.000000000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MEC'#194'NICO:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object dtlServicosInternos: TfrxDetailData
        FillType = ftBrush
        Height = 17.007874020000000000
        Top = 665.197280000000000000
        Width = 718.110700000000000000
        DataSet = frx_dsPedidoServicos
        DataSetName = 'frx_dsPedidoServicos'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Width = 52.913385830000000000
          Height = 11.338582680000000000
          DataField = 'SERVICO'
          DataSet = frx_dsPedidoServicos
          DataSetName = 'frx_dsPedidoServicos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidoServicos."SERVICO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 64.149662440000000000
          Width = 309.921425830000000000
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
        object Memo24: TfrxMemoView
          Left = 378.897640240000000000
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
        object Memo25: TfrxMemoView
          Left = 431.811026060000000000
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
        object Memo26: TfrxMemoView
          Left = 505.960632360000000000
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
        object Memo28: TfrxMemoView
          Left = 586.929500000000000000
          Width = 124.724441180000000000
          Height = 11.338582680000000000
          DataField = 'PROFISSIONAL_NOME'
          DataSet = frx_dsPedidoServicos
          DataSetName = 'frx_dsPedidoServicos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsPedidoServicos."PROFISSIONAL_NOME"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 306.141930000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Memo69: TfrxMemoView
          Align = baWidth
          Top = 154.960730000000000000
          Width = 718.110700000000000000
          Height = 66.795300000000000000
          AutoWidth = True
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'PROBLEMA(S) RELATADO(S) PELO CLIENTE:'
            '[FrxPedidoVenda."PROBLEMARELATADO"]')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          Top = 1.747990000000000000
          Width = 718.000000000000000000
          Height = 142.000000000000000000
        end
        object Memo6: TfrxMemoView
          Left = 4.779527560000000000
          Top = 31.873971810000000000
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
          Top = 31.873971810000000000
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
          Top = 31.873971810000000000
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
          Top = 43.747990000000000000
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
          Top = 43.747990000000000000
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
          Top = 43.747990000000000000
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
          Top = 59.338582677165350000
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
          Top = 59.338582677165350000
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
          Top = 59.338582677165350000
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
          Top = 71.811023622047240000
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
          Top = 71.811023622047240000
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
          Top = 71.811023622047240000
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
          Top = 86.543263150000000000
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
          Top = 98.747990000000000000
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
          Top = 98.747990000000000000
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
          Top = 86.543263150000000000
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
          Top = 86.543263150000000000
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
          Top = 86.543263150000000000
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
          Top = 98.889719840000000000
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
          Top = 98.637751340000000000
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
          Top = 86.543263150000000000
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
          Top = 125.747990000000000000
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
          Top = 113.377908820000000000
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
          Top = 86.543263150000000000
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
          Top = 98.637751340000000000
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
          Top = 1.747990000000000000
          Width = 93.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA DA O.S:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 493.968770000000000000
          Top = 15.999956060000000000
          Width = 23.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxPedidoVenda."DATA"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 603.968770000000000000
          Top = 15.999956060000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA_ENTREGA'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxPedidoVenda."DATA_ENTREGA"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 603.968770000000000000
          Top = 1.747990000000000000
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
          Top = 1.637751340000000000
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
          Top = 15.999956060000000000
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
          Top = 30.338590000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object Line25: TfrxLineView
          Top = 59.354360000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object Line26: TfrxLineView
          Top = 84.031540000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object Line27: TfrxLineView
          Top = 113.267780000000000000
          Width = 718.110236220000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
        object Line28: TfrxLineView
          Left = 64.692950000000000000
          Top = 1.889719840000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 598.165740000000000000
          Top = 1.889763779527559000
          Height = 28.346456692913390000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 454.543600000000000000
          Top = 31.118120000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          Left = 583.047620000000000000
          Top = 31.118120000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          Left = 434.189240000000000000
          Top = 59.574830000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 646.520100000000000000
          Top = 59.716535433070870000
          Height = 24.566929133858270000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          Left = 389.291590000000000000
          Top = 84.905467870000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          Left = 299.582870000000000000
          Top = 84.905467870000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          Left = 212.653680000000000000
          Top = 84.905467870000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          Left = 530.134200000000000000
          Top = 84.905467870000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          Left = 171.078850000000000000
          Top = 84.905467870000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          Left = 488.559370000000000000
          Top = 1.889763779527559000
          Height = 28.346456692913390000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo117: TfrxMemoView
          Left = 216.433210000000000000
          Top = 98.889719840000000000
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
          Top = 98.889719840000000000
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
          Top = 59.338582677165350000
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
          Top = 71.811023622047240000
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
          Top = 59.716535433070870000
          Height = 24.566929133858270000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object BarCode2: TfrxBarCodeView
          Left = 265.567100000000000000
          Top = 7.559060000000000000
          Width = 129.000000000000000000
          Height = 18.897650000000000000
          BarType = bcCode39
          DataField = 'CODIGO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
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
          Top = 14.362204720000000000
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
          Top = 1.889763779527559000
          Height = 28.346456692913390000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo22: TfrxMemoView
          Align = baWidth
          Top = 234.330860000000000000
          Width = 718.110700000000000000
          Height = 66.795300000000000000
          AutoWidth = True
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDashDotDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'SOLU'#199#195'O T'#201'CNICA DO(S) PROBLEMA(S):'
            '[FrxPedidoVenda."PROBLEMASOLUCAO"]')
          ParentFont = False
        end
      end
      object mstServicosExternos: TfrxMasterData
        FillType = ftBrush
        Height = 56.692913390000000000
        Top = 706.772110000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frx_PedidoVenda
        DataSetName = 'FrxPedidoVenda'
        RowCount = 0
        object Memo29: TfrxMemoView
          Left = 3.779530000000000000
          Top = 41.000000000000000000
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
            'SERVI'#199'OS:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 64.149662440000000000
          Top = 41.000000000000000000
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
        object Memo31: TfrxMemoView
          Left = 378.897640240000000000
          Top = 41.000000000000000000
          Width = 41.574803150000000000
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
        object Memo32: TfrxMemoView
          Left = 431.811026060000000000
          Top = 41.000000000000000000
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
            'VALOR UNIT:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 505.960632360000000000
          Top = 40.944881890000000000
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
        object Memo37: TfrxMemoView
          Align = baWidth
          Top = 16.000000000000000000
          Width = 718.110700000000000000
          Height = 19.559060000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '** SERVI'#199'OS EXTERNOS **')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 55.685039370078700000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo39: TfrxMemoView
          Left = 586.929500000000000000
          Top = 40.944881890000000000
          Width = 75.590551180000000000
          Height = 12.000000000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORNECEDOR:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object dtlServicosExternos: TfrxDetailData
        FillType = ftBrush
        Height = 17.007874020000000000
        Top = 786.142240000000000000
        Width = 718.110700000000000000
        DataSet = frx_dsPedidoTerceiros
        DataSetName = 'frx_dsPedidoTerceiros'
        RowCount = 0
        object Memo40: TfrxMemoView
          Left = 3.779530000000000000
          Width = 52.913385830000000000
          Height = 11.338582680000000000
          DataField = 'SERVICO'
          DataSet = frx_dsPedidoTerceiros
          DataSetName = 'frx_dsPedidoTerceiros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidoTerceiros."SERVICO"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 64.149662440000000000
          Width = 309.921425830000000000
          Height = 11.338582680000000000
          DataField = 'DESCRICAO'
          DataSet = frx_dsPedidoTerceiros
          DataSetName = 'frx_dsPedidoTerceiros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsPedidoTerceiros."DESCRICAO"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 378.897640240000000000
          Width = 41.574803150000000000
          Height = 11.338582680000000000
          DataField = 'QUANTIDADE'
          DataSet = frx_dsPedidoTerceiros
          DataSetName = 'frx_dsPedidoTerceiros'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidoTerceiros."QUANTIDADE"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 431.811026060000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          DataField = 'VALOR_UNIT'
          DataSet = frx_dsPedidoTerceiros
          DataSetName = 'frx_dsPedidoTerceiros'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidoTerceiros."VALOR_UNIT"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 505.960632360000000000
          Width = 75.590551180000000000
          Height = 11.338582680000000000
          DataField = 'VLR_TOTAL'
          DataSet = frx_dsPedidoTerceiros
          DataSetName = 'frx_dsPedidoTerceiros'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidoTerceiros."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 586.929500000000000000
          Width = 124.724441180000000000
          Height = 11.338582680000000000
          DataField = 'TERCEIRIZADO_NOME'
          DataSet = frx_dsPedidoTerceiros
          DataSetName = 'frx_dsPedidoTerceiros'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsPedidoTerceiros."TERCEIRIZADO_NOME"]')
          ParentFont = False
        end
      end
    end
  end
  object db_PedidoServicos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_ORDEMSERVICO_SERVICOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'ORDER BY  PROFISSIONAL, SERVICO')
    Left = 600
    Top = 104
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
      'SERVICO=SERVICO'
      'DESCRICAO=DESCRICAO'
      'QUANTIDADE=QUANTIDADE'
      'VALOR_UNIT=VALOR_UNIT'
      'DESCONTO=DESCONTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_TOTAL=VLR_TOTAL'
      'PROFISSIONAL=PROFISSIONAL'
      'PROFISSIONAL_NOME=PROFISSIONAL_NOME')
    DataSet = db_PedidoServicos
    BCDToCurrency = False
    Left = 600
    Top = 160
  end
  object frx_dsPedidoTerceiros: TfrxDBDataset
    UserName = 'frx_dsPedidoTerceiros'
    CloseDataSource = True
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'SERVICO=SERVICO'
      'DESCRICAO=DESCRICAO'
      'QUANTIDADE=QUANTIDADE'
      'VALOR_UNIT=VALOR_UNIT'
      'DESCONTO=DESCONTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_TOTAL=VLR_TOTAL'
      'TERCEIRIZADO=TERCEIRIZADO'
      'TERCEIRIZADO_NOME=TERCEIRIZADO_NOME')
    DataSet = db_PedidoTerceiros
    BCDToCurrency = False
    Left = 728
    Top = 160
  end
  object db_PedidoTerceiros: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_ORDEMSERVICO_TERCEIROS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'ORDER BY  TERCEIRIZADO, SERVICO')
    Left = 728
    Top = 104
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
  object ds_DetalhesServicos: TDataSource
    DataSet = db_DetalhesServicos
    Left = 200
    Top = 192
  end
  object db_DetalhesServicos: TFDQuery
    BeforePost = db_DetalhesServicosBeforePost
    AfterPost = db_DetalhesServicosAfterPost
    AfterDelete = db_DetalhesServicosAfterDelete
    MasterSource = ds_Pedido
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PEDIDOS_SERVICOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 200
    Top = 240
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
    object db_DetalhesServicosEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_DetalhesServicosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_DetalhesServicosDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object db_DetalhesServicosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_DetalhesServicosVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_DetalhesServicosTABELA: TIntegerField
      FieldName = 'TABELA'
    end
    object db_DetalhesServicosFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object db_DetalhesServicosTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_DetalhesServicosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_DetalhesServicosAPROVADO: TStringField
      FieldName = 'APROVADO'
      Size = 10
    end
    object db_DetalhesServicosORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
    end
    object db_DetalhesServicosPRODUZINDO: TStringField
      FieldName = 'PRODUZINDO'
      Size = 10
    end
    object db_DetalhesServicosSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 10
    end
    object db_DetalhesServicosSERVICO: TIntegerField
      FieldName = 'SERVICO'
      OnChange = db_DetalhesServicosSERVICOChange
    end
    object db_DetalhesServicosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_DetalhesServicosUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_DetalhesServicosQTDE: TBCDField
      FieldName = 'QTDE'
      DisplayFormat = '###,##0'
      EditFormat = '###,##0'
    end
    object db_DetalhesServicosVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_DetalhesServicosDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_DetalhesServicosVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_DetalhesServicosVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_DetalhesServicosPROFISSIONAL: TIntegerField
      FieldName = 'PROFISSIONAL'
      OnChange = db_DetalhesServicosPROFISSIONALChange
    end
    object db_DetalhesServicosPROFISSIONAL_NOME: TStringField
      FieldName = 'PROFISSIONAL_NOME'
      Size = 200
    end
  end
  object ds_DetalhesTerceiros: TDataSource
    DataSet = db_DetalhesTerceiros
    Left = 200
    Top = 320
  end
  object db_DetalhesTerceiros: TFDQuery
    BeforePost = db_DetalhesTerceirosBeforePost
    AfterPost = db_DetalhesTerceirosAfterPost
    AfterDelete = db_DetalhesTerceirosAfterDelete
    MasterSource = ds_Pedido
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PEDIDOS_TERCEIROS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 200
    Top = 368
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
    object db_DetalhesTerceirosEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_DetalhesTerceirosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_DetalhesTerceirosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
    end
    object db_DetalhesTerceirosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object db_DetalhesTerceirosVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Required = True
    end
    object db_DetalhesTerceirosTABELA: TIntegerField
      FieldName = 'TABELA'
      Required = True
    end
    object db_DetalhesTerceirosFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Required = True
    end
    object db_DetalhesTerceirosTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Required = True
    end
    object db_DetalhesTerceirosTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object db_DetalhesTerceirosAPROVADO: TStringField
      FieldName = 'APROVADO'
      Required = True
      Size = 10
    end
    object db_DetalhesTerceirosORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_DetalhesTerceirosPRODUZINDO: TStringField
      FieldName = 'PRODUZINDO'
      Required = True
      Size = 10
    end
    object db_DetalhesTerceirosSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Required = True
      Size = 10
    end
    object db_DetalhesTerceirosSERVICO: TIntegerField
      FieldName = 'SERVICO'
      OnChange = db_DetalhesTerceirosSERVICOChange
    end
    object db_DetalhesTerceirosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_DetalhesTerceirosUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_DetalhesTerceirosQTDE: TBCDField
      FieldName = 'QTDE'
      DisplayFormat = '###,##0'
      EditFormat = '###,##0'
    end
    object db_DetalhesTerceirosVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_DetalhesTerceirosDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_DetalhesTerceirosVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_DetalhesTerceirosVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_DetalhesTerceirosTERCEIRIZADO: TIntegerField
      FieldName = 'TERCEIRIZADO'
      OnChange = db_DetalhesTerceirosTERCEIRIZADOChange
    end
    object db_DetalhesTerceirosTERCEIRIZADO_NOME: TStringField
      FieldName = 'TERCEIRIZADO_NOME'
      Size = 200
    end
  end
end
