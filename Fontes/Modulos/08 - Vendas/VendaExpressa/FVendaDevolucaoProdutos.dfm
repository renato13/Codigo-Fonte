object FrmVendaDevolucaoProdutos: TFrmVendaDevolucaoProdutos
  Left = 224
  Top = 118
  HelpContext = 29
  Caption = 'Devolu'#231#227'o de Produtos'
  ClientHeight = 574
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 507
    Align = alClient
    BorderWidth = 3
    TabOrder = 0
    ExplicitWidth = 734
    object GRPTop: TGroupBox
      Left = 4
      Top = 37
      Width = 734
      Height = 102
      Align = alTop
      Color = clSilver
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label7: TLabel
        Left = 151
        Top = 15
        Width = 97
        Height = 14
        Caption = 'Data de Devolu'#231#227'o:'
        FocusControl = EditData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 10
        Top = 15
        Width = 129
        Height = 14
        Caption = 'NOTA FISCAL DE ORIGEM:'
        FocusControl = EditCodigo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditData: TDBEdit
        Left = 151
        Top = 29
        Width = 122
        Height = 22
        BevelKind = bkFlat
        Color = clSilver
        DataField = 'EMISSAO'
        DataSource = ds_VendasDevolucao
        ReadOnly = True
        TabOrder = 1
      end
      object EditCodigo: TDBEdit
        Left = 10
        Top = 29
        Width = 135
        Height = 22
        BevelKind = bkFlat
        Color = clSilver
        DataField = 'NOTAFISCALORIGEM'
        DataSource = ds_VendasDevolucao
        ReadOnly = True
        TabOrder = 0
        OnChange = EditCodigoChange
      end
      object EditCliente: TIDBEditDialog
        Left = 10
        Top = 71
        Width = 65
        Height = 21
        HelpKeyWord = ''
        Color = clSilver
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
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
        DataSource = ds_VendasDevolucao
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
          'AND'
          'TIPO='#39'CLIENTE'#39
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT CODIGO, NOME FROM CAD_CLIENTES'
          'WHERE'
          'TIPO='#39'CLIENTE'#39
          'AND'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(NOME) FROM CAD_CLIENTES'
          'WHERE'
          'TIPO='#39'CLIENTE'#39
          'AND'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'NOME'
            WhereSyntax = 'NOME'
            DisplayLabel = 'Nome/Raz'#227'o Social'
            DisplayWidth = 80
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
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
        Left = 76
        Top = 71
        Width = 286
        Height = 21
        Color = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '***'
      end
      object EditNomeVendedor: TEdit
        Left = 436
        Top = 71
        Width = 277
        Height = 21
        Color = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Text = '***'
      end
      object EditVendedor: TIDBEditDialog
        Left = 368
        Top = 71
        Width = 65
        Height = 21
        HelpKeyWord = ''
        Color = clSilver
        Enabled = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = ''
        Visible = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
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
        DataSource = ds_VendasDevolucao
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeVendedor
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
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
    end
    object GRPItens: TGroupBox
      Left = 4
      Top = 139
      Width = 734
      Height = 153
      Align = alTop
      Caption = 'DADOS DE ORIGEM'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ExplicitTop = 129
      ExplicitWidth = 726
      object GroupBox4: TGroupBox
        Left = 2
        Top = 103
        Width = 730
        Height = 48
        Align = alBottom
        Caption = 'Origem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 722
        object Label2: TLabel
          Left = 581
          Top = 10
          Width = 94
          Height = 14
          Caption = 'Valor Total da Nota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 445
          Top = 10
          Width = 118
          Height = 14
          Caption = 'Valor Total dos Produtos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 318
          Top = 8
          Width = 60
          Height = 14
          Caption = 'Quantidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 581
          Top = 23
          Width = 130
          Height = 21
          Color = clBtnFace
          DataField = 'TOTAL_NF'
          DataSource = ds_VendasOrigem
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 445
          Top = 23
          Width = 130
          Height = 21
          Color = clBtnFace
          DataField = 'VALOR_PRODUTOS'
          DataSource = ds_VendasOrigem
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 318
          Top = 24
          Width = 115
          Height = 22
          Color = clBtnFace
          DataField = 'QTDE_PRODUTOS'
          DataSource = ds_VendasOrigem
          TabOrder = 2
        end
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 16
        Width = 730
        Height = 87
        Align = alClient
        DataSource = ds_VendasItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenuDeletar
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = 'Calibri'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Title.Caption = 'REFER'#202'NCIA:'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 328
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'QTDE:'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNIT'
            Title.Caption = 'VLR UNIT'#193'RIO:'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Title.Caption = 'TOTAL:'
            Width = 90
            Visible = True
          end>
      end
    end
    inline FrmFrameBarra1: TFrmFrameBarra
      Left = 4
      Top = 4
      Width = 734
      Height = 33
      Align = alTop
      TabOrder = 4
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 726
      ExplicitHeight = 33
      inherited W7Panel1: TPanel
        Width = 734
        Height = 33
        ExplicitWidth = 726
        ExplicitHeight = 33
        inherited LblBarraTitulo: TLabel
          Width = 178
          Caption = 'Devolu'#231#227'o de Produtos'
          ExplicitWidth = 178
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 338
      Width = 734
      Height = 116
      Align = alClient
      Caption = '[ &Itens Devolvidos ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      ExplicitTop = 328
      ExplicitWidth = 726
      ExplicitHeight = 126
      object dbGrid_Produtos: TDBGrid
        Left = 2
        Top = 16
        Width = 730
        Height = 98
        Align = alClient
        DataSource = ds_VendasItensDevolucao
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenuDeletar
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = 'Calibri'
        TitleFont.Style = [fsBold]
        OnKeyDown = dbGrid_ProdutosKeyDown
        Columns = <
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'PRODUTO'
            ReadOnly = True
            Title.Caption = 'REFER'#202'NCIA:'
            Width = 103
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'DESCRICAO'
            ReadOnly = True
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 328
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'QUANTIDADE'
            ReadOnly = True
            Title.Caption = 'QTDE:'
            Width = 75
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'VLR_UNIT'
            ReadOnly = True
            Title.Caption = 'VLR UNIT'#193'RIO:'
            Width = 94
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'VLR_TOTAL'
            ReadOnly = True
            Title.Caption = 'TOTAL:'
            Width = 90
            Visible = True
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 4
      Top = 292
      Width = 734
      Height = 46
      Align = alTop
      Caption = 'Produtos a Devolver'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitTop = 282
      ExplicitWidth = 726
      object BtnQuantidade: TSpeedButton
        Left = 291
        Top = 18
        Width = 23
        Height = 22
        Caption = '...'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnQuantidadeClick
      end
      object EditCodigoProduto: TLabeledEdit
        Left = 152
        Top = 18
        Width = 138
        Height = 22
        CharCase = ecUpperCase
        EditLabel.Width = 117
        EditLabel.Height = 14
        EditLabel.Caption = 'C'#211'DIGO DO PRODUTO:'
        EditLabel.Font.Charset = ANSI_CHARSET
        EditLabel.Font.Color = clBlack
        EditLabel.Font.Height = -12
        EditLabel.Font.Name = 'Calibri'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        LabelPosition = lpLeft
        TabOrder = 0
        OnEnter = EditCodigoProdutoEnter
        OnKeyDown = EditCodigoProdutoKeyDown
        OnKeyPress = EditCodigoProdutoKeyPress
      end
    end
    object GroupBox3: TGroupBox
      Left = 4
      Top = 454
      Width = 734
      Height = 49
      Align = alBottom
      Caption = 'Totais da devolu'#231#227'o'
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      ExplicitWidth = 726
      object Label1: TLabel
        Left = 581
        Top = 10
        Width = 94
        Height = 14
        Caption = 'Valor Total da Nota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 445
        Top = 10
        Width = 118
        Height = 14
        Caption = 'Valor Total dos Produtos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 318
        Top = 8
        Width = 113
        Height = 14
        Caption = 'Quantidade Devolvida:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit3: TDBEdit
        Left = 581
        Top = 23
        Width = 130
        Height = 21
        Color = clBtnFace
        DataField = 'TOTAL_NF'
        DataSource = ds_VendasDevolucao
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 445
        Top = 23
        Width = 130
        Height = 21
        Color = clBtnFace
        DataField = 'VALOR_PRODUTOS'
        DataSource = ds_VendasDevolucao
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 318
        Top = 24
        Width = 115
        Height = 22
        Color = clBtnFace
        DataField = 'QTDE_PRODUTOS'
        DataSource = ds_VendasDevolucao
        TabOrder = 2
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes_II
    Left = 0
    Top = 507
    Width = 742
    Height = 67
    Align = alBottom
    PopupMenu = FrmFrameBotoes1.PopupMenu1
    TabOrder = 1
    TabStop = True
    ExplicitTop = 507
    ExplicitWidth = 742
    ExplicitHeight = 67
    inherited PainelBotoes: TPanel
      Width = 742
      Height = 67
      ExplicitWidth = 734
      ExplicitHeight = 67
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
      end
      inherited SpbImprimir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbImprimirClick
      end
      inherited SpbExcluir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbExcluirClick
      end
      inherited SpbCancelar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbCancelarClick
      end
      inherited SpbSalvar: TSpeedButton
        Hint = 'Concluir Venda'
        Caption = 'Concluir'
        OnClick = FrmFrameBotoes1SpbSalvarClick
      end
      inherited SpbEditar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbEditarClick
      end
      inherited SpbAdicionar: TSpeedButton
        Caption = 'Devolu'#231#227'o'
        OnClick = FrmFrameBotoes1SpbAdicionarClick
      end
      inherited SpbExtra1: TSpeedButton
        Caption = 'x'
      end
      inherited SpbExtra2: TSpeedButton
        Caption = 'x'
      end
    end
    inherited PopupMenu1: TPopupMenu
      Left = 664
      Top = 16
    end
  end
  object dbProcurarNFe: TIDBEditDialog
    Left = 176
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
      'SELECT * FROM VIEW_NOTAFISCAL'
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
        SearchCase = scMixed
      end
      item
        FieldName = 'EMISSAO'
        WhereSyntax = 'EMISSAO'
        DisplayLabel = 'EMISS'#195'O:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CFOP'
        WhereSyntax = 'CFOP'
        DisplayLabel = 'CFOP:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'IMPRESSO'
        WhereSyntax = 'IMPRESSO'
        DisplayLabel = 'IMPRESSO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'OPERACAO'
        WhereSyntax = 'OPERACAO'
        DisplayLabel = 'OPERA'#199#195'O:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
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
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_QTDE_PRODUTOS'
        WhereSyntax = 'NF_QTDE_PRODUTOS'
        DisplayLabel = 'QTDE PRODUTOS:'
        DisplayFormat = '###,##0'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_VALOR_PRODUTOS'
        WhereSyntax = 'NF_VALOR_PRODUTOS'
        DisplayLabel = 'VALOR PRODUTOS:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 18
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_VALOR_TOTAL'
        WhereSyntax = 'NF_VALOR_TOTAL'
        DisplayLabel = 'VALOR NF:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'PEDIDO'
        WhereSyntax = 'PEDIDO'
        DisplayLabel = 'PEDIDO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
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
  object ds_VendasOrigem: TDataSource
    DataSet = db_VendasOrigem
    Left = 392
    Top = 48
  end
  object ds_VendasItens: TDataSource
    DataSet = db_VendasItens
    Left = 448
    Top = 48
  end
  object db_VendasDevolucaoItens: TFDQuery
    BeforePost = db_VendasDevolucaoItensBeforePost
    AfterPost = db_VendasDevolucaoItensAfterPost
    AfterDelete = db_VendasDevolucaoItensAfterDelete
    MasterSource = ds_VendasDevolucao
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VENDAS_DEVOLUCAO_ITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 176
    Top = 114
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_VendasDevolucaoItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_VendasDevolucaoItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_VendasDevolucaoItensNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_VendasDevolucaoItensMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 30
    end
    object db_VendasDevolucaoItensSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 30
    end
    object db_VendasDevolucaoItensTIPONF: TStringField
      FieldName = 'TIPONF'
      Required = True
      Size = 30
    end
    object db_VendasDevolucaoItensEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
      Required = True
    end
    object db_VendasDevolucaoItensOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Required = True
      Size = 30
    end
    object db_VendasDevolucaoItensCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object db_VendasDevolucaoItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Required = True
    end
    object db_VendasDevolucaoItensCFOP: TIntegerField
      FieldName = 'CFOP'
      Required = True
    end
    object db_VendasDevolucaoItensTABELA: TIntegerField
      FieldName = 'TABELA'
      Required = True
    end
    object db_VendasDevolucaoItensFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Required = True
    end
    object db_VendasDevolucaoItensTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Required = True
    end
    object db_VendasDevolucaoItensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object db_VendasDevolucaoItensSEQUENCIAITEM: TIntegerField
      FieldName = 'SEQUENCIAITEM'
    end
    object db_VendasDevolucaoItensNCM: TStringField
      FieldName = 'NCM'
      Size = 30
    end
    object db_VendasDevolucaoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_VendasDevolucaoItensUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_VendasDevolucaoItensCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Size = 30
    end
    object db_VendasDevolucaoItensSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 30
    end
    object db_VendasDevolucaoItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      OnChange = db_VendasDevolucaoItensQUANTIDADEChange
      DisplayFormat = '###,##0'
    end
    object db_VendasDevolucaoItensVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
      OnChange = db_VendasDevolucaoItensVLR_UNITChange
      DisplayFormat = '###,##0.00'
    end
    object db_VendasDevolucaoItensIPI: TBCDField
      FieldName = 'IPI'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasDevolucaoItensVLR_IPI: TBCDField
      FieldName = 'VLR_IPI'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasDevolucaoItensICMS: TBCDField
      FieldName = 'ICMS'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasDevolucaoItensVLR_ICMS: TBCDField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasDevolucaoItensISS: TBCDField
      FieldName = 'ISS'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasDevolucaoItensISS_BASECALCULO: TBCDField
      FieldName = 'ISS_BASECALCULO'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasDevolucaoItensISS_VALOR: TBCDField
      FieldName = 'ISS_VALOR'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasDevolucaoItensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasDevolucaoItensVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasDevolucaoItensVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasDevolucaoItensALIQUOTA: TStringField
      FieldName = 'ALIQUOTA'
      Size = 30
    end
    object db_VendasDevolucaoItensTIPOQTDE: TStringField
      FieldName = 'TIPOQTDE'
      Size = 30
    end
    object db_VendasDevolucaoItensNATUREZA_DESCONTO: TStringField
      FieldName = 'NATUREZA_DESCONTO'
      Size = 30
    end
    object db_VendasDevolucaoItensCASAS_DECIMAIS: TIntegerField
      FieldName = 'CASAS_DECIMAIS'
    end
  end
  object ds_VendasItensDevolucao: TDataSource
    AutoEdit = False
    DataSet = db_VendasDevolucaoItens
    Left = 176
    Top = 136
  end
  object SP_NFE_CALCULA: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPNFE_CALCULA'
    Left = 288
    Top = 200
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'NCODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object PopupMenuDeletar: TPopupMenu
    Left = 416
    Top = 360
    object ExcluirItem2: TMenuItem
      Caption = 'Excluir Item'
      OnClick = ExcluirItem2Click
    end
  end
  object db_VendasOrigem: TFDQuery
    AfterOpen = db_VendasOrigemAfterOpen
    AfterClose = db_VendasOrigemAfterClose
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VENDAS'
      'where'
      'CODIGO=:CODIGO'
      ''
      '')
    Left = 392
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_VendasOrigemCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_VendasOrigemEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_VendasOrigemNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_VendasOrigemNOTAFISCALORIGEM: TIntegerField
      FieldName = 'NOTAFISCALORIGEM'
    end
    object db_VendasOrigemMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 30
    end
    object db_VendasOrigemSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 30
    end
    object db_VendasOrigemTIPONF: TStringField
      FieldName = 'TIPONF'
      Required = True
      Size = 30
    end
    object db_VendasOrigemEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
      Required = True
      EditMask = '99/99/9999'
    end
    object db_VendasOrigemOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Required = True
      Size = 30
    end
    object db_VendasOrigemCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object db_VendasOrigemVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Required = True
    end
    object db_VendasOrigemCFOP: TIntegerField
      FieldName = 'CFOP'
      Required = True
    end
    object db_VendasOrigemTABELA: TIntegerField
      FieldName = 'TABELA'
      Required = True
    end
    object db_VendasOrigemFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Required = True
    end
    object db_VendasOrigemTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Required = True
    end
    object db_VendasOrigemDATA_ENTRADASAIDA: TSQLTimeStampField
      FieldName = 'DATA_ENTRADASAIDA'
      EditMask = '99/99/9999'
    end
    object db_VendasOrigemHORA: TTimeField
      FieldName = 'HORA'
    end
    object db_VendasOrigemIE_SUBSTITUTO_TRIBUTARIO: TStringField
      FieldName = 'IE_SUBSTITUTO_TRIBUTARIO'
      Size = 30
    end
    object db_VendasOrigemICMS_BASECALCULO: TBCDField
      FieldName = 'ICMS_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemICMS_VALOR: TBCDField
      FieldName = 'ICMS_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemICMS_BASECALCULO_SUBSTITUICAO: TBCDField
      FieldName = 'ICMS_BASECALCULO_SUBSTITUICAO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemICMS_BASECALCULO_SUBSTITUICAO_VALOR: TBCDField
      FieldName = 'ICMS_BASECALCULO_SUBSTITUICAO_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemICMS_REDUCAO: TBCDField
      FieldName = 'ICMS_REDUCAO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemICMS_REDUCAO_VALOR: TBCDField
      FieldName = 'ICMS_REDUCAO_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemIPI_BASECALCULO: TBCDField
      FieldName = 'IPI_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemIPI_VALOR: TBCDField
      FieldName = 'IPI_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemISS: TBCDField
      FieldName = 'ISS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemISS_BASECALCULO: TBCDField
      FieldName = 'ISS_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemISS_VALOR: TBCDField
      FieldName = 'ISS_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemVLR_FRETE: TBCDField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemVLR_SEGURO: TBCDField
      FieldName = 'VLR_SEGURO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemVLR_DESPESAS_ASSESSORIAS: TBCDField
      FieldName = 'VLR_DESPESAS_ASSESSORIAS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemVLR_RECEBIDO: TBCDField
      FieldName = 'VLR_RECEBIDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemTROCO: TBCDField
      FieldName = 'TROCO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemVLR_CAIXA: TBCDField
      FieldName = 'VLR_CAIXA'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemFRETE: TStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object db_VendasOrigemFRETE_QUANTIDADE: TIntegerField
      FieldName = 'FRETE_QUANTIDADE'
    end
    object db_VendasOrigemFRETE_ESPECIE: TStringField
      FieldName = 'FRETE_ESPECIE'
      Size = 30
    end
    object db_VendasOrigemFRETE_MARCA: TStringField
      FieldName = 'FRETE_MARCA'
      Size = 30
    end
    object db_VendasOrigemFRETE_NUMERO: TStringField
      FieldName = 'FRETE_NUMERO'
      Size = 30
    end
    object db_VendasOrigemFRETE_PBRUTO: TBCDField
      FieldName = 'FRETE_PBRUTO'
    end
    object db_VendasOrigemFRETE_PLIQUIDO: TBCDField
      FieldName = 'FRETE_PLIQUIDO'
    end
    object db_VendasOrigemOBS1: TStringField
      FieldName = 'OBS1'
      Size = 5000
    end
    object db_VendasOrigemOBS2: TStringField
      FieldName = 'OBS2'
      Size = 5000
    end
    object db_VendasOrigemTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 30
    end
    object db_VendasOrigemDESCONTO_ACRESCIMO: TStringField
      FieldName = 'DESCONTO_ACRESCIMO'
      Size = 30
    end
    object db_VendasOrigemPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object db_VendasOrigemCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 10
    end
    object db_VendasOrigemIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      Size = 10
    end
    object db_VendasOrigemNFE_ASSINADO: TStringField
      FieldName = 'NFE_ASSINADO'
      Size = 10
    end
    object db_VendasOrigemNFE_ASSINATURA: TStringField
      FieldName = 'NFE_ASSINATURA'
      Size = 200
    end
    object db_VendasOrigemNFE_VALIDADO: TStringField
      FieldName = 'NFE_VALIDADO'
      Size = 10
    end
    object db_VendasOrigemNFE_TRANSMITIDO: TStringField
      FieldName = 'NFE_TRANSMITIDO'
      Size = 10
    end
    object db_VendasOrigemNFE_DANFEIMPRESSA: TStringField
      FieldName = 'NFE_DANFEIMPRESSA'
      Size = 10
    end
    object db_VendasOrigemNFE_SITUACAOSEFAZ: TStringField
      FieldName = 'NFE_SITUACAOSEFAZ'
      Size = 5000
    end
    object db_VendasOrigemNFE_APROVADA: TStringField
      FieldName = 'NFE_APROVADA'
      Size = 10
    end
    object db_VendasOrigemNFE_NFECANCELADA: TStringField
      FieldName = 'NFE_NFECANCELADA'
      Size = 10
    end
    object db_VendasOrigemNFE_RECIBO: TStringField
      FieldName = 'NFE_RECIBO'
      Size = 200
    end
    object db_VendasOrigemNFE_DATATRANSMISSAO: TSQLTimeStampField
      FieldName = 'NFE_DATATRANSMISSAO'
    end
    object db_VendasOrigemNFE_HORATRANSMISSAO: TTimeField
      FieldName = 'NFE_HORATRANSMISSAO'
    end
    object db_VendasOrigemTIPOPAGAMENTO: TStringField
      FieldName = 'TIPOPAGAMENTO'
      Size = 30
    end
    object db_VendasOrigemNFE_CHAVEACESSO: TStringField
      FieldName = 'NFE_CHAVEACESSO'
      Size = 200
    end
    object db_VendasOrigemNFE_PROTOCOLOUSO: TStringField
      FieldName = 'NFE_PROTOCOLOUSO'
      Size = 200
    end
    object db_VendasOrigemNFE_SITUACAOCODIGO: TStringField
      FieldName = 'NFE_SITUACAOCODIGO'
      Size = 30
    end
    object db_VendasOrigemNFE_LOTE: TIntegerField
      FieldName = 'NFE_LOTE'
    end
    object db_VendasOrigemQTDE_PRODUTOS: TIntegerField
      FieldName = 'QTDE_PRODUTOS'
      DisplayFormat = '###,##0'
      EditFormat = '###,##0'
    end
    object db_VendasOrigemVALOR_PRODUTOS: TBCDField
      FieldName = 'VALOR_PRODUTOS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemTOTAL_NF: TBCDField
      FieldName = 'TOTAL_NF'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasOrigemSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object db_VendasOrigemNFE_ARQUIVO: TStringField
      FieldName = 'NFE_ARQUIVO'
      Size = 200
    end
    object db_VendasOrigemVLR_CARTAO: TBCDField
      FieldName = 'VLR_CARTAO'
    end
    object db_VendasOrigemCONFERENCIA: TIntegerField
      FieldName = 'CONFERENCIA'
    end
    object db_VendasOrigemSIMPLESNACIONAL_ALIQUOTA: TBCDField
      FieldName = 'SIMPLESNACIONAL_ALIQUOTA'
    end
    object db_VendasOrigemSIMPLESNACIONAL_VALOR: TBCDField
      FieldName = 'SIMPLESNACIONAL_VALOR'
    end
  end
  object db_VendasItens: TFDQuery
    MasterSource = ds_VendasOrigem
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VENDAS_ITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 448
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_VendasItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_VendasItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_VendasItensNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object db_VendasItensMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 30
    end
    object db_VendasItensSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 30
    end
    object db_VendasItensTIPONF: TStringField
      FieldName = 'TIPONF'
      Required = True
      Size = 30
    end
    object db_VendasItensEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
      Required = True
    end
    object db_VendasItensOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Required = True
      Size = 30
    end
    object db_VendasItensCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_VendasItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_VendasItensCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_VendasItensTABELA: TIntegerField
      FieldName = 'TABELA'
    end
    object db_VendasItensFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object db_VendasItensTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_VendasItensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object db_VendasItensNCM: TStringField
      FieldName = 'NCM'
      Size = 30
    end
    object db_VendasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_VendasItensUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_VendasItensCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Size = 30
    end
    object db_VendasItensSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 30
    end
    object db_VendasItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###,##0'
      EditFormat = '###,##0'
    end
    object db_VendasItensVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensIPI: TBCDField
      FieldName = 'IPI'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensVLR_IPI: TBCDField
      FieldName = 'VLR_IPI'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensICMS: TBCDField
      FieldName = 'ICMS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensVLR_ICMS: TBCDField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensISS: TBCDField
      FieldName = 'ISS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensISS_BASECALCULO: TBCDField
      FieldName = 'ISS_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensISS_VALOR: TBCDField
      FieldName = 'ISS_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
  end
  object SPNFE_DEVOLVER: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPNFE_DEVOLVER'
    Left = 136
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
        Name = 'NVENDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CREDITAR'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object ds_VendasDevolucao: TDataSource
    AutoEdit = False
    DataSet = db_VendasDevolucao
    Left = 64
    Top = 144
  end
  object db_VendasDevolucao: TFDQuery
    BeforePost = db_VendasDevolucaoBeforePost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VENDAS'
      'where'
      'NOTAFISCALORIGEM=:NOTAFISCALORIGEM')
    Left = 64
    Top = 112
    ParamData = <
      item
        Name = 'NOTAFISCALORIGEM'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'EMPRESA'
    end
    object IntegerField3: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'NOTAFISCALORIGEM'
    end
    object StringField1: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'TIPONF'
      Required = True
      Size = 30
    end
    object DateTimeField1: TSQLTimeStampField
      FieldName = 'EMISSAO'
      Required = True
      EditMask = '99/99/9999'
    end
    object StringField4: TStringField
      FieldName = 'OPERACAO'
      Required = True
      Size = 30
    end
    object IntegerField5: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'VENDEDOR'
      Required = True
    end
    object IntegerField7: TIntegerField
      FieldName = 'CFOP'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'TABELA'
      Required = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'FORMAPAGTO'
      Required = True
    end
    object IntegerField10: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Required = True
    end
    object DateTimeField2: TSQLTimeStampField
      FieldName = 'DATA_ENTRADASAIDA'
      EditMask = '99/99/9999'
    end
    object TimeField1: TTimeField
      FieldName = 'HORA'
    end
    object StringField5: TStringField
      FieldName = 'IE_SUBSTITUTO_TRIBUTARIO'
      Size = 30
    end
    object FloatField1: TBCDField
      FieldName = 'ICMS_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField2: TBCDField
      FieldName = 'ICMS_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField3: TBCDField
      FieldName = 'ICMS_BASECALCULO_SUBSTITUICAO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField4: TBCDField
      FieldName = 'ICMS_BASECALCULO_SUBSTITUICAO_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField5: TBCDField
      FieldName = 'ICMS_REDUCAO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField6: TBCDField
      FieldName = 'ICMS_REDUCAO_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField7: TBCDField
      FieldName = 'IPI_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField8: TBCDField
      FieldName = 'IPI_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField9: TBCDField
      FieldName = 'ISS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField10: TBCDField
      FieldName = 'ISS_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField11: TBCDField
      FieldName = 'ISS_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField12: TBCDField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField13: TBCDField
      FieldName = 'VLR_SEGURO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField14: TBCDField
      FieldName = 'VLR_DESPESAS_ASSESSORIAS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField15: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField16: TBCDField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField17: TBCDField
      FieldName = 'VLR_RECEBIDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField18: TBCDField
      FieldName = 'TROCO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField19: TBCDField
      FieldName = 'VLR_CAIXA'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object StringField6: TStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object IntegerField11: TIntegerField
      FieldName = 'FRETE_QUANTIDADE'
    end
    object StringField7: TStringField
      FieldName = 'FRETE_ESPECIE'
      Size = 30
    end
    object StringField8: TStringField
      FieldName = 'FRETE_MARCA'
      Size = 30
    end
    object StringField9: TStringField
      FieldName = 'FRETE_NUMERO'
      Size = 30
    end
    object FloatField20: TBCDField
      FieldName = 'FRETE_PBRUTO'
    end
    object FloatField21: TBCDField
      FieldName = 'FRETE_PLIQUIDO'
    end
    object StringField10: TStringField
      FieldName = 'OBS1'
      Size = 5000
    end
    object StringField11: TStringField
      FieldName = 'OBS2'
      Size = 5000
    end
    object StringField12: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 30
    end
    object StringField13: TStringField
      FieldName = 'DESCONTO_ACRESCIMO'
      Size = 30
    end
    object IntegerField12: TIntegerField
      FieldName = 'PEDIDO'
    end
    object StringField14: TStringField
      FieldName = 'CUPOM'
      Size = 10
    end
    object StringField15: TStringField
      FieldName = 'IMPRESSO'
      Size = 10
    end
    object StringField16: TStringField
      FieldName = 'NFE_ASSINADO'
      Size = 10
    end
    object StringField17: TStringField
      FieldName = 'NFE_ASSINATURA'
      Size = 200
    end
    object StringField18: TStringField
      FieldName = 'NFE_VALIDADO'
      Size = 10
    end
    object StringField19: TStringField
      FieldName = 'NFE_TRANSMITIDO'
      Size = 10
    end
    object StringField20: TStringField
      FieldName = 'NFE_DANFEIMPRESSA'
      Size = 10
    end
    object StringField21: TStringField
      FieldName = 'NFE_SITUACAOSEFAZ'
      Size = 5000
    end
    object StringField22: TStringField
      FieldName = 'NFE_APROVADA'
      Size = 10
    end
    object StringField23: TStringField
      FieldName = 'NFE_NFECANCELADA'
      Size = 10
    end
    object StringField24: TStringField
      FieldName = 'NFE_RECIBO'
      Size = 200
    end
    object DateTimeField3: TSQLTimeStampField
      FieldName = 'NFE_DATATRANSMISSAO'
    end
    object TimeField2: TTimeField
      FieldName = 'NFE_HORATRANSMISSAO'
    end
    object StringField25: TStringField
      FieldName = 'TIPOPAGAMENTO'
      Size = 30
    end
    object StringField26: TStringField
      FieldName = 'NFE_CHAVEACESSO'
      Size = 200
    end
    object StringField27: TStringField
      FieldName = 'NFE_PROTOCOLOUSO'
      Size = 200
    end
    object StringField28: TStringField
      FieldName = 'NFE_SITUACAOCODIGO'
      Size = 30
    end
    object IntegerField13: TIntegerField
      FieldName = 'NFE_LOTE'
    end
    object IntegerField14: TIntegerField
      FieldName = 'QTDE_PRODUTOS'
      DisplayFormat = '###,##0'
      EditFormat = '###,##0'
    end
    object FloatField22: TBCDField
      FieldName = 'VALOR_PRODUTOS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object FloatField23: TBCDField
      FieldName = 'TOTAL_NF'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object StringField29: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object StringField30: TStringField
      FieldName = 'NFE_ARQUIVO'
      Size = 200
    end
    object FloatField24: TBCDField
      FieldName = 'VLR_CARTAO'
    end
    object IntegerField15: TIntegerField
      FieldName = 'CONFERENCIA'
    end
    object FloatField25: TBCDField
      FieldName = 'SIMPLESNACIONAL_ALIQUOTA'
    end
    object FloatField26: TBCDField
      FieldName = 'SIMPLESNACIONAL_VALOR'
    end
    object db_VendasDevolucaoDEVOLUCAOCREDITADA: TStringField
      FieldName = 'DEVOLUCAOCREDITADA'
      Size = 10
    end
  end
  object db_deletarRegistrosIncompletos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'DELETE FROM VENDAS'
      'WHERE'
      'TOTAL_NF<=0')
    Left = 328
    Top = 336
  end
  object ds_ViewNotaFiscal: TDataSource
    DataSet = db_ViewNotaFiscal
    Left = 568
    Top = 104
  end
  object db_ViewNotaFiscal: TFDQuery
    MasterSource = ds_VendasDevolucao
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  * FROM VIEW_NOTAFISCAL'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 568
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_ViewNotaFiscalItens: TFDQuery
    MasterSource = ds_ViewNotaFiscal
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  * FROM VIEW_NOTAFISCALDEVOLUCAO_ITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 680
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object frxDB_NotaFiscalItens: TfrxDBDataset
    UserName = 'db_ViewNotaFiscalItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NUMERO_NF=NUMERO_NF'
      'SERIE=SERIE'
      'OPERACAO=OPERACAO'
      'EMISSAO=EMISSAO'
      'CLIENTE=CLIENTE'
      'VENDEDOR=VENDEDOR'
      'CFOP=CFOP'
      'PRODUTO=PRODUTO'
      'DESCRICAO=DESCRICAO'
      'CLASS_FISCAL=CLASS_FISCAL'
      'SITUACAO_TRIBUTARIA=SITUACAO_TRIBUTARIA'
      'UNIDADE=UNIDADE'
      'QTDE=QTDE'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_TOTAL=VLR_TOTAL'
      'IPI_ALIQUOTA=IPI_ALIQUOTA'
      'VLR_IPI=VLR_IPI'
      'ICMS_ALIQUOTA=ICMS_ALIQUOTA'
      'VLR_ICMS=VLR_ICMS'
      'DESCONTO=DESCONTO'
      'DESCONTO_VALOR=DESCONTO_VALOR'
      'EMPRESA=EMPRESA')
    DataSet = db_ViewNotaFiscalItens
    BCDToCurrency = False
    Left = 672
    Top = 168
  end
  object frxDB_NotaFiscal: TfrxDBDataset
    UserName = 'db_ViewNotaFiscal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'NOTAFISCAL=NOTAFISCAL'
      'NOTAFISCALORIGEM=NOTAFISCALORIGEM'
      'SERIE=SERIE'
      'EMISSAO=EMISSAO'
      'DATA_ES=DATA_ES'
      'HORA=HORA'
      'OPERACAO=OPERACAO'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'CLIENTE_CNPJ=CLIENTE_CNPJ'
      'CLIENTE_RG_IE=CLIENTE_RG_IE'
      'CLIENTE_ENDERECO=CLIENTE_ENDERECO'
      'CLIENTE_NUMERO=CLIENTE_NUMERO'
      'CLIENTE_BAIRRO=CLIENTE_BAIRRO'
      'CLIENTE_CEP=CLIENTE_CEP'
      'CLIENTE_DDD=CLIENTE_DDD'
      'CLIENTE_FONE=CLIENTE_FONE'
      'CLIENTE_FAX=CLIENTE_FAX'
      'CLIENTE_REFERENCIA=CLIENTE_REFERENCIA'
      'CLIENTE_CIDADE=CLIENTE_CIDADE'
      'CLIENTE_CIDADE_NOME=CLIENTE_CIDADE_NOME'
      'CLIENTE_UF=CLIENTE_UF'
      'CLIENTE_CONTATO=CLIENTE_CONTATO'
      'CLIENTE_EMAIL=CLIENTE_EMAIL'
      'CFOP=CFOP'
      'CFOP_NOME=CFOP_NOME'
      'IE_SUBSTITUICAO=IE_SUBSTITUICAO'
      'STATUS=STATUS'
      'FORMA_PAGTO=FORMA_PAGTO'
      'FORMA_PAGTO_NOME=FORMA_PAGTO_NOME'
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'NF_VALOR_TOTAL=NF_VALOR_TOTAL'
      'NF_VALOR_PRODUTOS=NF_VALOR_PRODUTOS'
      'NF_QTDE_PRODUTOS=NF_QTDE_PRODUTOS'
      'NF_VALOR_ICMS=NF_VALOR_ICMS'
      'NF_VALOR_IPI=NF_VALOR_IPI'
      'NF_ISS=NF_ISS'
      'NF_ISS_VALOR=NF_ISS_VALOR'
      'NF_BASE_CALC_ICMS=NF_BASE_CALC_ICMS'
      'NF_BASE_CALC_ICMS_II=NF_BASE_CALC_ICMS_II'
      'NF_VALOR_BASE_ICMS_II=NF_VALOR_BASE_ICMS_II'
      'SIMPLESNACIONAL_VALOR=SIMPLESNACIONAL_VALOR'
      'VLR_FRETE=VLR_FRETE'
      'VLR_SEGURO=VLR_SEGURO'
      'VLR_DESP_ACES=VLR_DESP_ACES'
      'PERC_DESCONTO=PERC_DESCONTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_RECEBIDO=VLR_RECEBIDO'
      'TROCO=TROCO'
      'VLR_CAIXA=VLR_CAIXA'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TRANSP_NOME=TRANSP_NOME'
      'TRANSP_FRETE=TRANSP_FRETE'
      'TRANSP_PLACA=TRANSP_PLACA'
      'TRANSP_PLACA_CIDADE=TRANSP_PLACA_CIDADE'
      'TRANSP_PLACA_UF=TRANSP_PLACA_UF'
      'TRANSP_CNPJ=TRANSP_CNPJ'
      'TRANSP_ENDERECO=TRANSP_ENDERECO'
      'TRANSP_CIDADE=TRANSP_CIDADE'
      'TRANSP_CIDADE_NOME=TRANSP_CIDADE_NOME'
      'TRANSP_UF=TRANSP_UF'
      'TRANSP_INSCRICAO=TRANSP_INSCRICAO'
      'TRANSP_QTDE=TRANSP_QTDE'
      'TRANSP_ESPECIE=TRANSP_ESPECIE'
      'TRANSP_MARCA=TRANSP_MARCA'
      'TRANSP_NUMERO=TRANSP_NUMERO'
      'TRANSP_PBRUTO=TRANSP_PBRUTO'
      'TRANSP_PLIQUIDO=TRANSP_PLIQUIDO'
      'DADOS_ADICIONAIS=DADOS_ADICIONAIS'
      'RESERVADO_FISCO=RESERVADO_FISCO'
      'ALIQ_ICMS_REDUCAO=ALIQ_ICMS_REDUCAO'
      'VLR_ICMS_REDUCAO=VLR_ICMS_REDUCAO'
      'TIPO_DESCONTO=TIPO_DESCONTO'
      'DESCONTO_ACRESCIMO=DESCONTO_ACRESCIMO'
      'PEDIDO=PEDIDO'
      'CUPOM=CUPOM'
      'TABELA=TABELA'
      'IMPRESSO=IMPRESSO'
      'DEVOLUCAOCREDITADA=DEVOLUCAOCREDITADA'
      'MODELO=MODELO'
      'TIPONF=TIPONF')
    DataSet = db_ViewNotaFiscal
    BCDToCurrency = False
    Left = 568
    Top = 168
  end
  object frxImprimirDevolucao: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = '* ISOFT SISTEMAS *'
    ReportOptions.CreateDate = 39838.719326342600000000
    ReportOptions.LastChange = 40864.416237951400000000
    ReportOptions.VersionMajor = '2009'
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Begin'
      ' if <db_ViewNotaFiscal."DEVOLUCAOCREDITADA">='#39'S'#39' Then'
      
        '   LabelCreditoValor.Text :='#39'O valor desta devolu'#231#227'o foi credita' +
        'do para o cliente.'#39
      ' else             '
      '   LabelCreditoValor.Text :='#39#39';  '
      '       '
      'end.')
    Left = 568
    Top = 280
    Datasets = <
      item
        DataSet = frxDB_NotaFiscal
        DataSetName = 'db_ViewNotaFiscal'
      end
      item
        DataSet = frxDB_NotaFiscalItens
        DataSetName = 'db_ViewNotaFiscalItens'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 234.330860000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Left = -1.000000000000000000
          Width = 718.102660000000000000
          Height = 56.692906060000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
        end
        object Shape3: TfrxShapeView
          Top = 68.779530000000000000
          Width = 718.000000000000000000
          Height = 142.000000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 3.779527560000000000
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
        object Memo11: TfrxMemoView
          Left = 3.779527560000000000
          Top = 111.779530000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[db_ViewNotaFiscal."CLIENTE"] - [db_ViewNotaFiscal."CLIENTE_NOME' +
              '"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 4.000000000000000000
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
        object Memo15: TfrxMemoView
          Left = 437.842610000000000000
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
        object Memo16: TfrxMemoView
          Left = 648.740260000000000000
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
        object Memo17: TfrxMemoView
          Left = 3.779527560000000000
          Top = 138.779530000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_ENDERECO'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_ENDERECO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 437.842610000000000000
          Top = 138.779530000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_BAIRRO'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_BAIRRO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 648.740260000000000000
          Top = 138.779530000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_CEP'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_CEP"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 3.779527559055120000
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
        object Memo21: TfrxMemoView
          Left = 3.779527560000000000
          Top = 165.779530000000000000
          Width = 69.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_CIDADE_NOME'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_CIDADE_NOME"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 177.527520000000000000
          Top = 165.779530000000000000
          Width = 14.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_UF'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_UF"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 177.527520000000000000
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
        object Memo25: TfrxMemoView
          Left = 216.307050000000000000
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
        object Memo30: TfrxMemoView
          Left = 3.779527560000000000
          Top = 193.779530000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VENDEDOR_NOME'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."VENDEDOR_NOME"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 3.779527560000000000
          Top = 180.409448820000000000
          Width = 98.118120000000000000
          Height = 12.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDEDOR:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 345.606370000000000000
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
        object Memo33: TfrxMemoView
          Left = 345.606370000000000000
          Top = 165.669291340000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_EMAIL'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_EMAIL"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 58.968770000000000000
          Top = 69.921259842519700000
          Width = 119.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA DE DEVOLU'#199#195'O:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 58.968770000000000000
          Top = 83.905511810000000000
          Width = 23.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'EMISSAO'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."EMISSAO"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 3.779527560000000000
          Top = 69.669291340000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIGO:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 3.779527560000000000
          Top = 84.031496060000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CODIGO'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CODIGO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 90.708661417322800000
          Top = 220.094620000000000000
          Width = 59.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 391.181102360000000000
          Top = 220.094620000000000000
          Width = 55.937007870000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 476.220472440945000000
          Top = 220.094620000000000000
          Width = 74.456692913385800000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR UNIT'#193'RIO:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 3.779527560000000000
          Top = 220.094620000000000000
          Width = 64.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 650.078740157480000000
          Top = 220.094620000000000000
          Width = 62.362204724409400000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 578.267716535433000000
          Top = 220.094620000000000000
          Width = 49.133858267716500000
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
        object Line1: TfrxLineView
          Left = 1.889763780000000000
          Top = 98.370130000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 3.779527560000000000
          Top = 127.385900000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 1.889763780000000000
          Top = 152.063080000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 1.889763780000000000
          Top = 180.299320000000000000
          Width = 714.331170000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 56.692950000000000000
          Top = 69.921259842519700000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 433.189240000000000000
          Top = 127.748031496063000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 645.520100000000000000
          Top = 127.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 211.653680000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 342.134200000000000000
          Top = 151.937007870000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 170.078850000000000000
          Top = 152.063080000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 183.559370000000000000
          Top = 69.921259840000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          Left = 1.889763780000000000
          Top = 233.433210000000000000
          Width = 714.330708660000000000
          Color = clBlack
          Diagonal = True
        end
        object Shape6: TfrxShapeView
          Left = 0.645671730000000000
          Width = 718.000000000000000000
          Height = 55.181085280000000000
        end
        object Memo1: TfrxMemoView
          Left = 483.000310000000000000
          Top = 1.779530000000000000
          Width = 231.062770000000000000
          Height = 22.322820000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DEVOLU'#199#195'O DE VENDA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 483.992128430000000000
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
        object Memo4: TfrxMemoView
          Left = 483.992128430000000000
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
        object Memo7: TfrxMemoView
          Left = 549.251936770000000000
          Top = 41.086616610000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Left = 2.645517950000000000
          Top = 1.559060000000000000
          Width = 192.755905510000000000
          Height = 26.456702680000000000
          AutoWidth = True
          DataField = 'EMP_NOME_FANTASIA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_NOME_FANTASIA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          Left = 548.354701730000000000
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
        object Line23: TfrxLineView
          Left = 469.307391730000000000
          Height = 55.937000550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo24: TfrxMemoView
          Left = 215.433210000000000000
          Top = 165.921259840000000000
          Width = 19.440940000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '([db_ViewNotaFiscal."CLIENTE_DDD"]) [db_ViewNotaFiscal."CLIENTE_' +
              'FONE"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 371.267780000000000000
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
        object Memo87: TfrxMemoView
          Left = 371.267780000000000000
          Top = 138.196930950000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CLIENTE_NUMERO'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."CLIENTE_NUMERO"]')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 366.614410000000000000
          Top = 127.748031496063000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo5: TfrxMemoView
          Left = 185.196850390000000000
          Top = 69.921259840000000000
          Width = 146.252010000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOTA FISCAL DE ORIGEM:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 185.196850390000000000
          Top = 83.905511810000000000
          Width = 23.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NOTAFISCALORIGEM'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."NOTAFISCALORIGEM"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 86.929190000000000000
        Top = 389.291590000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = 433.661410000000000000
          Top = 22.495980000000000000
          Width = 272.118120000000000000
          Height = 60.661410000000000000
        end
        object Memo60: TfrxMemoView
          Left = 537.795300000000000000
          Top = 27.952738820000000000
          Width = 68.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 467.559060000000000000
          Top = 46.850376610000000000
          Width = 138.236240000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DA DEVOLU'#199#195'O:')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 1.889763779527560000
          Width = 714.330708661417000000
          Color = clBlack
          Diagonal = True
        end
        object Memo51: TfrxMemoView
          Left = 612.283860000000000000
          Top = 46.850376610000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NF_VALOR_TOTAL'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."NF_VALOR_TOTAL"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 612.283860000000000000
          Top = 27.952738820000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NF_QTDE_PRODUTOS'
          DataSet = frxDB_NotaFiscal
          DataSetName = 'db_ViewNotaFiscal'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[db_ViewNotaFiscal."NF_QTDE_PRODUTOS"]')
          ParentFont = False
        end
        object LabelCreditoValor: TfrxMemoView
          Left = 451.519970630000000000
          Top = 64.251990470000000000
          Width = 231.756030000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'O valor desta devolu'#231#227'o foi creditado para o cliente.')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 498.897960000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          Top = 0.755905510000000000
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
          Top = 0.755905510000000000
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_NotaFiscalItens
        DataSetName = 'db_ViewNotaFiscalItens'
        RowCount = 0
        object Memo56: TfrxMemoView
          Left = 3.779527560000000000
          Width = 64.000000000000000000
          Height = 11.338582680000000000
          DataField = 'PRODUTO'
          DataSet = frxDB_NotaFiscalItens
          DataSetName = 'db_ViewNotaFiscalItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[db_ViewNotaFiscalItens."PRODUTO"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 90.708661420000000000
          Width = 59.000000000000000000
          Height = 11.338582680000000000
          DataField = 'DESCRICAO'
          DataSet = frxDB_NotaFiscalItens
          DataSetName = 'db_ViewNotaFiscalItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[db_ViewNotaFiscalItens."DESCRICAO"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 391.181102360000000000
          Width = 55.937007870000000000
          Height = 11.338582680000000000
          DataField = 'QTDE'
          DataSet = frxDB_NotaFiscalItens
          DataSetName = 'db_ViewNotaFiscalItens'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[db_ViewNotaFiscalItens."QTDE"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 476.220472440000000000
          Width = 74.456692910000000000
          Height = 11.338582680000000000
          DataField = 'VLR_UNITARIO'
          DataSet = frxDB_NotaFiscalItens
          DataSetName = 'db_ViewNotaFiscalItens'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[db_ViewNotaFiscalItens."VLR_UNITARIO"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 578.267716540000000000
          Width = 49.133858270000000000
          Height = 11.338582680000000000
          DataField = 'DESCONTO'
          DataSet = frxDB_NotaFiscalItens
          DataSetName = 'db_ViewNotaFiscalItens'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[db_ViewNotaFiscalItens."DESCONTO"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 650.078740160000000000
          Width = 62.362204720000000000
          Height = 11.338582680000000000
          DataField = 'VLR_TOTAL'
          DataSet = frxDB_NotaFiscalItens
          DataSetName = 'db_ViewNotaFiscalItens'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[db_ViewNotaFiscalItens."VLR_TOTAL"]')
          ParentFont = False
        end
      end
    end
  end
end
