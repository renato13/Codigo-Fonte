object FrmPedidoVendaConferencia: TFrmPedidoVendaConferencia
  Left = 0
  Top = 1
  Caption = 'Pedido de venda | Conferencia'
  ClientHeight = 543
  ClientWidth = 976
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
    Width = 976
    Height = 452
    Align = alClient
    Caption = 'Edi'#231#227'o de Pedidos'
    TabOrder = 0
    object AdvGroupBox3: TGroupBox
      Left = 2
      Top = 397
      Width = 972
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
      ExplicitLeft = 3
      ExplicitTop = 396
      ExplicitWidth = 970
      object Label7: TLabel
        Left = 12
        Top = 24
        Width = 103
        Height = 13
        Caption = 'Quantidade Total:'
      end
      object Label8: TLabel
        Left = 466
        Top = 24
        Width = 67
        Height = 13
        Caption = 'Valor Total:'
      end
      object Label2: TLabel
        Left = 210
        Top = 24
        Width = 153
        Height = 13
        Caption = 'Valor Desconto no Pedido:'
      end
      object DBEdit5: TDBEdit
        Left = 534
        Top = 19
        Width = 86
        Height = 21
        Color = clBtnFace
        DataField = 'VLR_TOTAL'
        DataSource = dS_PedidoConferencia
        TabOrder = 2
      end
      object DBEdit1: TDBEdit
        Left = 118
        Top = 19
        Width = 72
        Height = 21
        Color = clBtnFace
        DataField = 'QTDE_TOTAL'
        DataSource = dS_PedidoConferencia
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 367
        Top = 19
        Width = 86
        Height = 21
        Color = clBtnFace
        DataField = 'VLR_DESCONTOPEDIDO'
        DataSource = dS_PedidoConferencia
        TabOrder = 1
      end
    end
    object AdvGroupBox2: TGroupBox
      Left = 2
      Top = 202
      Width = 972
      Height = 195
      Align = alClient
      Caption = '[ ITENS DO PEDIDO DE VENDA ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 3
      ExplicitTop = 203
      ExplicitWidth = 970
      ExplicitHeight = 193
      object GroupBox1: TGroupBox
        Left = 3
        Top = 16
        Width = 964
        Height = 174
        Align = alClient
        Caption = 'Grade de Prodtos Conferidos para entrega:'
        TabOrder = 0
        OnEnter = GroupBox1Enter
        object dbGrid_Produtos: TDBGrid
          Left = 2
          Top = 15
          Width = 960
          Height = 157
          Align = alClient
          DataSource = ds_PedidoConferenciaItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnKeyDown = dbGrid_ProdutosKeyDown
          Columns = <
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'REFERENCIA'
              Title.Caption = 'Refer'#234'ncia:'
              Width = 98
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o:'
              Width = 184
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'COR'
              Title.Caption = 'Cor:'
              Width = 93
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'TAMANHO'
              Title.Caption = 'Tamanho:'
              Width = 66
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Caption = 'Quantidade:'
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'VALOR_UNIT'
              Title.Caption = 'Valor Unit'#225'rio:'
              Visible = True
            end>
        end
      end
    end
    object AdvGroupBox4: TGroupBox
      Left = 2
      Top = 15
      Width = 972
      Height = 187
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = AdvGroupBox4Exit
      ExplicitLeft = 3
      ExplicitTop = 16
      ExplicitWidth = 970
      DesignSize = (
        972
        187)
      object Label1: TLabel
        Left = 76
        Top = 3
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label32: TLabel
        Left = 507
        Top = 75
        Width = 31
        Height = 11
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 395
        Top = 75
        Width = 37
        Height = 11
        Caption = 'Esp'#233'cie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 287
        Top = 75
        Width = 69
        Height = 11
        Caption = 'Qtde Volumes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EditCliente: TIDBEditDialog
        Left = 250
        Top = 18
        Width = 94
        Height = 21
        HelpKeyWord = ''
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
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
        DataSource = dS_PedidoConferencia
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
          ''
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
            DisplayLabel = 'Nome/Raz'#227'o Social'
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
      object EditNomeCliente: TEdit
        Left = 350
        Top = 18
        Width = 287
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
        Text = '***'
      end
      object EditData: TDBEdit
        Left = 76
        Top = 18
        Width = 65
        Height = 21
        DataField = 'DATA'
        DataSource = dS_PedidoConferencia
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object EditCodigo: TDBEdit
        Left = 5
        Top = 18
        Width = 65
        Height = 21
        DataField = 'CODIGO'
        DataSource = dS_PedidoConferencia
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditNomeVendedor: TEdit
        Left = 72
        Top = 53
        Width = 269
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
        TabOrder = 6
        Text = '***'
      end
      object EditNomeFormaPagto: TEdit
        Left = 411
        Top = 53
        Width = 226
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
        TabOrder = 8
        Text = '***'
      end
      object EditNomeTrasportadora: TEdit
        Left = 70
        Top = 89
        Width = 212
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
        TabOrder = 10
        Text = '***'
      end
      object EditTransportadora: TIDBEditDialog
        Left = 5
        Top = 89
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
        TabOrder = 9
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
        DataSource = dS_PedidoConferencia
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
      object EditVendedor: TIDBEditDialog
        Left = 5
        Top = 53
        Width = 65
        Height = 21
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 5
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
        DataSource = dS_PedidoConferencia
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeVendedor
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          ''
          'CODIGO=:CODIGO'
          '')
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
      object EditPagamento: TIDBEditDialog
        Left = 344
        Top = 53
        Width = 65
        Height = 21
        HelpKeyWord = ''
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
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
        DataSource = dS_PedidoConferencia
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
      object EditCaixas: TDBEdit
        Left = 287
        Top = 89
        Width = 100
        Height = 21
        Color = clWhite
        DataField = 'FRETE_VOLUMES'
        DataSource = dS_PedidoConferencia
        TabOrder = 11
      end
      object EditMarca: TDBEdit
        Left = 507
        Top = 89
        Width = 130
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        DataField = 'FRETE_MARCA'
        DataSource = dS_PedidoConferencia
        TabOrder = 13
      end
      object EditEspecie: TDBEdit
        Left = 395
        Top = 89
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        DataField = 'FRETE_ESPECIE'
        DataSource = dS_PedidoConferencia
        TabOrder = 12
      end
      object EditPedido: TIDBEditDialog
        Left = 147
        Top = 18
        Width = 97
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
        Visible = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Pedido de Venda:'
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
        ButtonHint = 'Pedido de Venda:'
        Etched = False
        ButtonCaption = '...'
        DataField = 'PEDIDO'
        DataSource = dS_PedidoConferencia
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
          '%WHERE%'
          'AND '
          'APROVADO='#39'SIM'#39
          'AND'
          'STATUS='#39'NAO'#39)
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
      object GroupBox2: TGroupBox
        Left = 2
        Top = 114
        Width = 968
        Height = 71
        Align = alBottom
        Caption = 'Observa'#231#227'o'
        TabOrder = 14
        ExplicitLeft = 3
        ExplicitTop = 113
        ExplicitWidth = 964
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 866
          Height = 54
          Align = alClient
          DataField = 'OBSERVACAO'
          DataSource = dS_PedidoConferencia
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          ExplicitWidth = 871
        end
        object btnQuitarPedido: TBitBtn
          Left = 868
          Top = 15
          Width = 94
          Height = 54
          Align = alRight
          Caption = 'Quitar Pedido'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnQuitarPedidoClick
          ExplicitLeft = 870
          ExplicitTop = 5
          ExplicitHeight = 40
        end
      end
      object GroupBox3: TGroupBox
        Left = 656
        Top = 3
        Width = 311
        Height = 110
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Embalagens (baixar do estoque)'
        TabOrder = 15
        object GridEmbalagens: TDBGrid
          Left = 2
          Top = 15
          Width = 307
          Height = 93
          Align = alClient
          DataSource = ds_PedidoConferenciaEmbalagens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnEnter = GridEmbalagensEnter
          OnKeyDown = GridEmbalagensKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'PRODUTO'
              Title.Caption = 'EMBALAGEM:'
              Width = 73
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'DESCRICAO'
              ReadOnly = True
              Title.Caption = 'DESCRI'#199#195'O:'
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Caption = 'QTDE:'
              Visible = True
            end>
        end
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 976
    Height = 33
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 976
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 976
      Height = 33
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Font.Height = -9
      ExplicitWidth = 976
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 233
        Caption = 'Confer'#234'ncia | Pedido de venda'
        ExplicitWidth = 233
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 485
    Width = 976
    Height = 58
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 485
    ExplicitWidth = 976
    inherited W7Panel1: TPanel
      Width = 976
      ExplicitWidth = 976
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
      end
      inherited SpbImprimir: TSpeedButton
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
  object ConferenciaProcurar: TIDBEditDialog
    Left = 108
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
    LabelCaption = 'Conferencia de Pedido de venda'
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
    ButtonHint = 'Conferencia de Pedido de venda'
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
      'SELECT *  FROM VIEW_PEDIDOCONFERENCIA'
      'WHERE'
      '%WHERE%'
      'ORDER BY CODIGO')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'CONFER'#202'NCIA:'
        DisplayWidth = 14
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FATURADO'
        WhereSyntax = 'FATURADO'
        DisplayLabel = 'FATURADO:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
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
        FieldName = 'QTDE_TOTAL'
        WhereSyntax = 'QTDE_TOTAL'
        DisplayLabel = 'QTDE TOTAL:'
        DisplayFormat = '###,##0'
        DisplayWidth = 15
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
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CLIENTE'
        WhereSyntax = 'CLIENTE'
        DisplayLabel = 'CLIENTE:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CLIENTE_NOME'
        WhereSyntax = 'CLIENTE_NOME'
        DisplayLabel = 'NOME DO CLIENTE:'
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
        FieldName = 'TRANSPORTADORA_NOME'
        WhereSyntax = 'TRANSPORTADORA_NOME'
        DisplayLabel = 'TRANSPORTADORA:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 1000
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
  object dbProcurarMateriaPrima: TIDBEditDialog
    Left = 798
    Top = 119
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
      'TIPO_PRODUTO<>'#39'ACA'#39
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
        SearchCase = scUpper
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
        SearchCase = scUpper
      end
      item
        FieldName = 'GRIFE_NOME'
        WhereSyntax = 'GRIFE_NOME'
        DisplayLabel = 'GRIFE:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'GRADE_NOME'
        WhereSyntax = 'GRADE_NOME'
        DisplayLabel = 'GRADE:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
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
        SearchCase = scUpper
      end
      item
        FieldName = 'PRC_CUSTO'
        WhereSyntax = 'PRC_CUSTO'
        DisplayLabel = 'PRE'#199'O CUSTO:'
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
  object db_PedidoConferencia: TFDQuery
    AfterOpen = db_PedidoConferenciaAfterOpen
    BeforePost = db_PedidoConferenciaBeforePost
    AfterPost = db_PedidoConferenciaAfterPost
    AfterScroll = db_PedidoConferenciaAfterScroll
    OnNewRecord = db_PedidoConferenciaNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PEDIDOCONFERENCIA'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 104
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_PedidoConferenciaCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_PedidoConferenciaPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
      Required = True
      OnChange = db_PedidoConferenciaPEDIDOChange
    end
    object db_PedidoConferenciaDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
      EditMask = '99/99/9999'
    end
    object db_PedidoConferenciaHORA: TTimeField
      FieldName = 'HORA'
    end
    object db_PedidoConferenciaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object db_PedidoConferenciaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_PedidoConferenciaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object db_PedidoConferenciaTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_PedidoConferenciaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_PedidoConferenciaQTDE_TOTAL: TIntegerField
      FieldName = 'QTDE_TOTAL'
      DisplayFormat = '###,##0'
      EditFormat = '###,##0'
    end
    object db_PedidoConferenciaVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoConferenciaFATURADO: TStringField
      FieldName = 'FATURADO'
      Size = 10
    end
    object db_PedidoConferenciaFRETE_VOLUMES: TIntegerField
      FieldName = 'FRETE_VOLUMES'
    end
    object db_PedidoConferenciaFRETE_ESPECIE: TStringField
      FieldName = 'FRETE_ESPECIE'
      Size = 30
    end
    object db_PedidoConferenciaFRETE_MARCA: TStringField
      FieldName = 'FRETE_MARCA'
      Size = 30
    end
    object db_PedidoConferenciaVLR_DESCONTOPEDIDO: TBCDField
      FieldName = 'VLR_DESCONTOPEDIDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
  end
  object db_PedidoConferenciaItens: TFDQuery
    AutoCalcFields = False
    AfterPost = db_PedidoConferenciaItensAfterPost
    AfterDelete = db_PedidoConferenciaItensAfterDelete
    MasterSource = dS_PedidoConferencia
    MasterFields = 'CODIGO;PEDIDO'
    DetailFields = 'CODIGO;PEDIDO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PEDIDOCONFERENCIA_ITENS'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'PEDIDO=:PEDIDO'
      'ORDER BY REFERENCIA, COR, ORDEM_GRADE')
    Left = 208
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_PedidoConferenciaItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_PedidoConferenciaItensPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
      Required = True
    end
    object db_PedidoConferenciaItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object db_PedidoConferenciaItensIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 30
    end
    object db_PedidoConferenciaItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_PedidoConferenciaItensGRADE_ID: TIntegerField
      FieldName = 'GRADE_ID'
    end
    object db_PedidoConferenciaItensCELULA: TStringField
      FieldName = 'CELULA'
      Size = 200
    end
    object db_PedidoConferenciaItensCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object db_PedidoConferenciaItensCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_PedidoConferenciaItensTAMANHO_ID: TIntegerField
      FieldName = 'TAMANHO_ID'
    end
    object db_PedidoConferenciaItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_PedidoConferenciaItensORDEM_GRADE: TStringField
      FieldName = 'ORDEM_GRADE'
      Size = 30
    end
    object db_PedidoConferenciaItensCELULA_COL: TIntegerField
      FieldName = 'CELULA_COL'
    end
    object db_PedidoConferenciaItensCOLUNA_ROW: TIntegerField
      FieldName = 'COLUNA_ROW'
    end
    object db_PedidoConferenciaItensQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###,##0'
      EditFormat = '###,##0'
    end
    object db_PedidoConferenciaItensVALOR_UNIT: TBCDField
      FieldName = 'VALOR_UNIT'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
  end
  object dS_PedidoConferencia: TDataSource
    AutoEdit = False
    DataSet = db_PedidoConferencia
    Left = 104
    Top = 56
  end
  object ds_PedidoConferenciaItens: TDataSource
    DataSet = db_PedidoConferenciaItens
    Left = 208
    Top = 48
  end
  object SP_CalculaConferencia: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPCONFERENCIA_CALCULA'
    Left = 176
    Top = 208
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
  object frx_dsPedidoConferenciaGrade: TfrxDBDataset
    UserName = 'ViewConferenciaGrade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PEDIDO=PEDIDO'
      'REFERENCIA=REFERENCIA'
      'IDENTIFICADOR=IDENTIFICADOR'
      'DESCRICAO=DESCRICAO'
      'COR=COR'
      'TAMANHO=TAMANHO'
      'ORDEM_GRADE=ORDEM_GRADE'
      'VALOR_UNIT=VALOR_UNIT'
      'QUANTIDADE=QUANTIDADE')
    DataSet = db_ViewConferenciaGrade
    BCDToCurrency = False
    Left = 384
    Top = 336
  end
  object db_ViewConferenciaGrade: TFDQuery
    MasterSource = ds_PedidoConferenciaItens
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOCONFERENCIAGRADE'
      'WHERE'
      'CODIGO=:CODIGO'
      'ORDER BY REFERENCIA, COR, ORDEM_GRADE, TAMANHO')
    Left = 384
    Top = 280
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FrxPedidoConferencia: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = '* ISOFT SISTEMAS *'
    ReportOptions.CreateDate = 39838.719326342600000000
    ReportOptions.LastChange = 41040.604873588000000000
    ReportOptions.VersionMajor = '2009'
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Begin'
      '        '
      'end.')
    Left = 520
    Top = 280
    Datasets = <
      item
        DataSet = frx_dbCtaReceber
        DataSetName = 'dbCtaReceber'
      end
      item
        DataSet = frxDBEtiquetasTestes
        DataSetName = 'EtiquetasTestes'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end
      item
        DataSet = frx_PedidoVenda
        DataSetName = 'ViewConferencia'
      end
      item
        DataSet = frx_dsPedidoConferenciaGrade
        DataSetName = 'ViewConferenciaGrade'
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
      DataSet = frx_PedidoVenda
      DataSetName = 'ViewConferencia'
      TitleBeforeHeader = False
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 147.401670000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        Child = FrxPedidoConferencia.Child1
        object Shape3: TfrxShapeView
          Top = 1.787401570000000000
          Width = 718.000000000000000000
          Height = 142.000000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 3.779527560000000000
          Top = 32.905511810000000000
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
        object Memo9: TfrxMemoView
          Left = 459.000000000000000000
          Top = 32.905511810000000000
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
        object Memo10: TfrxMemoView
          Left = 587.000000000000000000
          Top = 32.905511810000000000
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
        object Memo11: TfrxMemoView
          Left = 3.779527560000000000
          Top = 44.779530000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataField = 'CLIENTE_NOME'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."CLIENTE_NOME"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 459.000000000000000000
          Top = 44.779530000000000000
          Width = 50.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CNPJ'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."CNPJ"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 587.000000000000000000
          Top = 44.779530000000000000
          Width = 29.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'IE'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."IE"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 4.000000000000000000
          Top = 59.362204720000000000
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
          Top = 59.362204720000000000
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
          Top = 59.362204720000000000
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
          Top = 71.779530000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."ENDERECO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 437.842610000000000000
          Top = 71.779530000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'BAIRRO'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."BAIRRO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 648.740260000000000000
          Top = 71.779530000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CEP'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."CEP"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 3.779527560000000000
          Top = 86.574803150000000000
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
          Top = 98.779530000000000000
          Width = 69.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NOMECIDADE'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."NOMECIDADE"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 177.527520000000000000
          Top = 98.779530000000000000
          Width = 21.559060000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'UF'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."UF"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 177.527520000000000000
          Top = 86.574803150000000000
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
          Top = 86.574803150000000000
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
        object Memo28: TfrxMemoView
          Left = 391.732220000000000000
          Top = 98.669291340000000000
          Width = 45.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CONTATO'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."CONTATO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 391.732220000000000000
          Top = 86.574803150000000000
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
        object Memo30: TfrxMemoView
          Left = 3.779527560000000000
          Top = 126.889763780000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VENDEDOR_NOME'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."VENDEDOR_NOME"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 3.779527560000000000
          Top = 113.283464570000000000
          Width = 98.267716540000000000
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
        object Memo32: TfrxMemoView
          Left = 532.606370000000000000
          Top = 86.574803150000000000
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
          Left = 532.606370000000000000
          Top = 98.669291340000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'EMAIL'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."EMAIL"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 576.118430000000000000
          Top = 2.779530000000000000
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
          Left = 576.118430000000000000
          Top = 17.031496060000000000
          Width = 49.456710000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ViewConferencia."DATA"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 91.488247560000000000
          Top = 2.543307090000000000
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
        object Memo41: TfrxMemoView
          Left = 91.488247560000000000
          Top = 16.905511810000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'PEDIDO'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ViewConferencia."PEDIDO"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 234.000000000000000000
          Top = 126.889763780000000000
          Width = 137.606370000000000000
          Height = 11.338582680000000000
          DataField = 'TRANSPORTADORA_NOME'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."TRANSPORTADORA_NOME"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 234.000000000000000000
          Top = 113.283464570000000000
          Width = 98.267716540000000000
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
        object Line1: TfrxLineView
          Left = 1.889763780000000000
          Top = 31.370130000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 3.779527560000000000
          Top = 60.385900000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 1.889763780000000000
          Top = 85.063080000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 1.889763780000000000
          Top = 113.283464570000000000
          Width = 714.331170000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 161.401670000000000000
          Top = 1.787401570000000000
          Height = 28.724409450000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 453.543600000000000000
          Top = 32.149660000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 582.047620000000000000
          Top = 32.149660000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 433.189240000000000000
          Top = 60.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 645.520100000000000000
          Top = 60.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 388.291590000000000000
          Top = 84.937007870000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 211.653680000000000000
          Top = 85.063080000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 230.551330000000000000
          Top = 113.283464570000000000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 529.134200000000000000
          Top = 84.937007870000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 170.078850000000000000
          Top = 84.937007870000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 570.709030000000000000
          Top = 1.787401570000000000
          Height = 28.724409450000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo56: TfrxMemoView
          Left = 216.897960000000000000
          Top = 98.921259840000000000
          Width = 72.354360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '([ViewConferencia."FONE"]) [ViewConferencia."FONE"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 371.267780000000000000
          Top = 58.724490000000000000
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
          Top = 71.196930950000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NUMERO'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."NUMERO"]')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 366.614410000000000000
          Top = 59.102442760000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object BarCode1: TfrxBarCodeView
          Left = 408.189240000000000000
          Top = 8.590600000000000000
          Width = 129.000000000000000000
          Height = 18.897650000000000000
          BarType = bcCode39
          DataField = 'CODIGO'
          Expression = '<ViewConferencia."CODIGO">'
          HAlign = haCenter
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
        object Memo57: TfrxMemoView
          Left = 3.779530000000000000
          Top = 2.543307090000000000
          Width = 77.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONFER'#202'NCIA:')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 3.779530000000000000
          Top = 16.905511810000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CODIGO'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ViewConferencia."CODIGO"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 86.692952440000000000
          Top = 1.787401570000000000
          Height = 28.724409450000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo24: TfrxMemoView
          Left = 381.401670000000000000
          Top = 126.889763780000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FRETE_VOLUMES'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."FRETE_VOLUMES"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 381.401670000000000000
          Top = 113.283464570000000000
          Width = 98.267716540000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VOLUMES:')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 377.953000000000000000
          Top = 113.283464570000000000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo39: TfrxMemoView
          Left = 483.448980000000000000
          Top = 126.889763780000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FRETE_ESPECIE'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."FRETE_ESPECIE"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 483.448980000000000000
          Top = 113.283464570000000000
          Width = 98.267716540000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ESP'#201'CIE:')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 480.000310000000000000
          Top = 113.283464570000000000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo61: TfrxMemoView
          Left = 596.834880000000000000
          Top = 126.889763780000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FRETE_MARCA'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ViewConferencia."FRETE_MARCA"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 596.834880000000000000
          Top = 113.283464570000000000
          Width = 98.267716540000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MARCA:')
          ParentFont = False
        end
        object Line25: TfrxLineView
          Left = 593.386210000000000000
          Top = 113.283464570000000000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo26: TfrxMemoView
          Left = 166.299320000000000000
          Top = 2.921259840000000000
          Width = 58.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FATURADO:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 166.299320000000000000
          Top = 17.283464570000000000
          Width = 61.677180000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FATURADO'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ViewConferencia."FATURADO"]')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 236.212742440000000000
          Top = 2.031540000000000000
          Height = 28.724409450000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo44: TfrxMemoView
          Left = 239.110390000000000000
          Top = 2.921259840000000000
          Width = 58.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NF-E:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 239.110390000000000000
          Top = 17.283464570000000000
          Width = 61.677180000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NOTAFISCAL'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ViewConferencia."NOTAFISCAL"]')
          ParentFont = False
        end
        object Line26: TfrxLineView
          Left = 309.023812440000000000
          Top = 3.811070000000000000
          Height = 28.724409450000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 136.063080000000000000
        Top = 680.315400000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = 486.574830000000000000
          Top = 77.307049999999880000
          Width = 200.307050000000000000
          Height = 53.102350000000000000
        end
        object Memo60: TfrxMemoView
          Left = 522.677180000000000000
          Top = 87.409448819999960000
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
          Left = 494.015770000000000000
          Top = 106.307086609999900000
          Width = 96.661410000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO PEDIDO:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000022000
          Width = 123.000000000000000000
          Height = 11.440940000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OBSERVA'#199#195'O:')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Align = baLeft
          Top = 16.220470000000090000
          Width = 690.000000000000000000
          Height = 36.559060000000000000
          AutoWidth = True
          DataField = 'OBSERVACAO'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ViewConferencia."OBSERVACAO"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 4.535428190000000000
          Top = 101.866110000000200000
          Width = 411.692950000000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'CONFERENTE: ____________________________________________________' +
              '__________')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo51: TfrxMemoView
          Left = 597.165740000000000000
          Top = 106.307086609999900000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VLR_TOTAL'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[ViewConferencia."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 597.165740000000000000
          Top = 87.409448819999960000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'QTDE_TOTAL'
          DataSet = frx_PedidoVenda
          DataSetName = 'ViewConferencia'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[ViewConferencia."QTDE_TOTAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 839.055660000000000000
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
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 186.456710000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        Child = FrxPedidoConferencia.Child2
        object DBCross1: TfrxDBCrossView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 364.000000000000000000
          Height = 130.000000000000000000
          DownThenAcross = False
          RowLevels = 4
          CellFields.Strings = (
            'QUANTIDADE')
          ColumnFields.Strings = (
            'TAMANHO')
          DataSet = frx_dsPedidoConferenciaGrade
          DataSetName = 'ViewConferenciaGrade'
          RowFields.Strings = (
            'REFERENCIA'
            'DESCRICAO'
            'VALOR_UNIT'
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223236302C
            37373935332220546F703D223334332C3234343238222057696474683D223530
            22204865696768743D22313822205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C546672784D656D6F56696577
            204C6566743D223236302C37373935332220546F703D223336312C3234343238
            222057696474683D22353022204865696768743D223138222052657374726963
            74696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C
            73652220446973706C6179466F726D61742E4B696E643D22666B4E756D657269
            632220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686152696768742220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D2230222F3E3C5466
            72784D656D6F56696577204C6566743D223139322220546F703D223636222057
            696474683D22383022204865696768743D22323222205265737472696374696F
            6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D2268615269676874222056416C69676E3D22766143656E
            7465722220546578743D2230222F3E3C546672784D656D6F56696577204C6566
            743D223134332220546F703D223830222057696474683D223937222048656967
            68743D22323222205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            676874222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D223236302C37373935332220
            546F703D223337392C3234343238222057696474683D22353022204865696768
            743D22313822205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            392220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E74
            2E5374796C653D223122204672616D652E5479703D223135222046696C6C2E42
            61636B436F6C6F723D2231353732343532372220476170583D22332220476170
            593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2230222F3E3C546672784D656D6F56696577204C6566743D223331302C3737
            3935332220546F703D223334332C3234343238222057696474683D2233372220
            4865696768743D22313822205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C73652220446973706C6179466F
            726D61742E4B696E643D22666B4E756D657269632220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D392220466F6E742E4E616D653D22417269616C204E6172726F772220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204669
            6C6C2E4261636B436F6C6F723D2231353732343532372220476170583D223322
            20476170593D2233222048416C69676E3D22686152696768742220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D2230222F3E3C546672784D656D6F56696577204C6566743D223331
            302C37373935332220546F703D223336312C3234343238222057696474683D22
            333722204865696768743D22313822205265737472696374696F6E733D223234
            2220416C6C6F7745787072657373696F6E733D2246616C73652220446973706C
            6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E43
            6861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D392220466F6E742E4E616D653D22417269616C204E617272
            6F772220466F6E742E5374796C653D223022204672616D652E5479703D223135
            222046696C6C2E4261636B436F6C6F723D223135373234353237222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D2230222F3E3C546672784D656D6F56696577204C656674
            3D223139392220546F703D22313032222057696474683D223530222048656967
            68743D22313822205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D392220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D22
            3234392220546F703D223430222057696474683D22333722204865696768743D
            22323222205265737472696374696F6E733D2232342220416C6C6F7745787072
            657373696F6E733D2246616C736522204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C54
            6672784D656D6F56696577204C6566743D223331302C37373935332220546F70
            3D223337392C3234343238222057696474683D22333722204865696768743D22
            313822205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22302220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220
            466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374
            796C653D223122204672616D652E5479703D223135222046696C6C2E4261636B
            436F6C6F723D2231353732343532372220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2230
            222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865616465726D656D6F733E
            3C546672784D656D6F56696577204C6566743D223134332220546F703D223430
            222057696474683D22353622204865696768743D223232222052657374726963
            74696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D22332220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D225155414E544944414445222F3E3C546672784D656D6F5669
            6577204C6566743D223134332220546F703D223632222057696474683D223536
            22204865696768743D22313822205265737472696374696F6E733D2238222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F77
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220
            476170583D22332220476170593D22332220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D22515541
            4E544944414445222F3E3C546672784D656D6F56696577204C6566743D223022
            20546F703D2230222057696474683D223022204865696768743D223022205265
            737472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222056416C69676E3D22766143656E7465722220546578743D
            225155414E544944414445222F3E3C546672784D656D6F56696577204C656674
            3D22302220546F703D2230222057696474683D223022204865696768743D2230
            22205265737472696374696F6E733D22382220416C6C6F774578707265737369
            6F6E733D2246616C736522204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222056416C69676E3D22766143656E746572222054
            6578743D225155414E544944414445222F3E3C546672784D656D6F5669657720
            4C6566743D22302220546F703D2230222057696474683D223022204865696768
            743D223022205265737472696374696F6E733D22382220416C6C6F7745787072
            657373696F6E733D2246616C736522204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222056416C69676E3D22766143656E7465
            722220546578743D225155414E544944414445222F3E3C2F63656C6C68656164
            65726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D6F5669
            6577204C6566743D223236302C37373935332220546F703D223332352C323434
            3238222057696474683D22353022204865696768743D22313822205265737472
            696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D65
            3D22417269616C204E6172726F772220466F6E742E5374796C653D2231222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686152696768742220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D22222F3E3C
            2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C
            546672784D656D6F56696577204C6566743D223331302C37373935332220546F
            703D223332352C3234343238222057696474683D22333722204865696768743D
            22313822205265737472696374696F6E733D22382220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22302220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220
            466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374
            796C653D223122204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686152696768742220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D22537562746F74616C222F3E3C2F636F6C756D6E746F74616C6D656D
            6F733E3C636F726E65726D656D6F733E3C546672784D656D6F56696577204C65
            66743D2232332C37373935332220546F703D223330372C323434323822205769
            6474683D2232333722204865696768743D22313822205265737472696374696F
            6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73652220
            466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241726961
            6C204E6172726F772220466F6E742E5374796C653D223122204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D225155414E5449444144
            45222F3E3C546672784D656D6F56696577204C6566743D223236302C37373935
            332220546F703D223330372C3234343238222057696474683D22383722204865
            696768743D22313822205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D392220466F6E742E4E616D653D22417269616C204E6172726F772220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D2254414D414E484F222F3E3C546672784D656D6F5669
            6577204C6566743D223134332220546F703D223138222057696474683D223536
            22204865696768743D22323222205265737472696374696F6E733D2238222056
            697369626C653D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E746572222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
            696577204C6566743D2232332C37373935332220546F703D223332352C323434
            3238222057696474683D22363022204865696768743D22313822205265737472
            696374696F6E733D22382220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D
            22417269616C204E6172726F772220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D225245464552454E434941222F3E3C546672784D656D6F
            56696577204C6566743D2238332C37373935332220546F703D223332352C3234
            343238222057696474683D22353622204865696768743D223138222052657374
            72696374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D65
            3D22417269616C204E6172726F772220466F6E742E5374796C653D2231222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D2244455343524943414F222F3E3C546672784D656D6F
            56696577204C6566743D223133392C37373935332220546F703D223332352C32
            34343238222057696474683D22353822204865696768743D2231382220526573
            7472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D
            653D22417269616C204E6172726F772220466F6E742E5374796C653D22312220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686152696768742220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D2256414C
            4F5220554E49543A222F3E3C546672784D656D6F56696577204C6566743D2231
            39372C37373935332220546F703D223332352C3234343238222057696474683D
            22363322204865696768743D22313822205265737472696374696F6E733D2238
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D392220466F6E742E4E616D653D22417269616C204E6172
            726F772220466F6E742E5374796C653D223122204672616D652E5479703D2231
            352220476170583D22332220476170593D22332220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            434F52222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C54
            6672784D656D6F56696577204C6566743D2232332C37373935332220546F703D
            223334332C3234343238222057696474683D22363022204865696768743D2233
            3622205265737472696374696F6E733D2232342220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2230222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39222046
            6F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E537479
            6C653D223022204672616D652E5479703D2231352220476170583D2233222047
            6170593D22332220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
            696577204C6566743D2238332C37373935332220546F703D223334332C323434
            3238222057696474683D22353622204865696768743D22333622205265737472
            696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D65
            3D22417269616C204E6172726F772220466F6E742E5374796C653D2230222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D22222F3E3C546672784D656D6F56696577204C656674
            3D223133392C37373935332220546F703D223334332C32343432382220576964
            74683D22353822204865696768743D22333622205265737472696374696F6E73
            3D2232342220416C6C6F7745787072657373696F6E733D2246616C7365222044
            6973706C6179466F726D61742E466F726D61745374723D222323232C2323302E
            30302220446973706C6179466F726D61742E4B696E643D22666B4E756D657269
            632220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686152696768742220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C546672
            784D656D6F56696577204C6566743D223139372C37373935332220546F703D22
            3334332C3234343238222057696474683D22363322204865696768743D223138
            22205265737472696374696F6E733D2232342220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223022204672616D652E5479703D2231352220476170583D223322204761
            70593D22332220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C2F726F776D656D6F733E
            3C726F77746F74616C6D656D6F733E3C546672784D656D6F56696577204C6566
            743D2232332C37373935332220546F703D223337392C32343432382220576964
            74683D2232333722204865696768743D22313822205265737472696374696F6E
            733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22302220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D392220466F6E742E4E616D653D22417269616C
            204E6172726F772220466F6E742E5374796C653D223122204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            22686152696768742220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D22546F74616C203D26233632
            3B222F3E3C546672784D656D6F56696577204C6566743D2239392220546F703D
            223636222057696474683D22393322204865696768743D223232222052657374
            72696374696F6E733D2238222056697369626C653D2246616C73652220416C6C
            6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
            65743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E53
            74796C653D223122204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222048416C69676E3D22686143656E746572222050617265
            6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
            20546578743D22546F74616C222F3E3C546672784D656D6F56696577204C6566
            743D223139322220546F703D223636222057696474683D223937222048656967
            68743D22323222205265737472696374696F6E733D2238222056697369626C65
            3D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C7365
            2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D2241
            7269616C2220466F6E742E5374796C653D223122204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            43656E7465722220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D22546F74616C222F3E3C54667278
            4D656D6F56696577204C6566743D223139372C37373935332220546F703D2233
            36312C3234343238222057696474683D22363322204865696768743D22313822
            205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686152696768742220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            225154444520537562746F74616C3A222F3E3C2F726F77746F74616C6D656D6F
            733E3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C2F63656C6C
            66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20322F3E3C
            2F636F6C756D6E736F72743E3C726F77736F72743E3C6974656D20322F3E3C69
            74656D20322F3E3C6974656D20322F3E3C6974656D20322F3E3C2F726F77736F
            72743E3C2F63726F73733E}
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 17.007874020000000000
        Top = 600.945270000000000000
        Width = 718.110700000000000000
        DataSet = frx_dbCtaReceber
        DataSetName = 'dbCtaReceber'
        RowCount = 0
        object Memo35: TfrxMemoView
          Left = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118107800000000000
          DataField = 'DOCUMENTO'
          DataSet = frx_dbCtaReceber
          DataSetName = 'dbCtaReceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCtaReceber."DOCUMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo49: TfrxMemoView
          Left = 122.826771650000000000
          Width = 64.252010000000000000
          Height = 15.118107800000000000
          DataField = 'VENCIMENTO'
          DataSet = frx_dbCtaReceber
          DataSetName = 'dbCtaReceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCtaReceber."VENCIMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          Left = 271.110390000000000000
          Width = 94.488250000000000000
          Height = 15.118107800000000000
          DataField = 'VALOR'
          DataSet = frx_dbCtaReceber
          DataSetName = 'dbCtaReceber'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCtaReceber."VALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          Left = 377.173470000000000000
          Top = 3.000000000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '___________________________________')
          ParentFont = False
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 491.338900000000000000
        Width = 718.110700000000000000
        object Line20: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo46: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236240000000010000
          Width = 94.488250000000000000
          Height = 15.118107800000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DOCUMENTO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          Left = 122.826771650000000000
          Top = 30.236240000000010000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 271.110390000000000000
          Top = 30.236240000000010000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '** DADOS DE FATURAMENTO ** FORMA DE PAGAMENTO: [ViewConferencia.' +
              '"FORMA_PAGTO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Line27: TfrxLineView
          Align = baWidth
          Top = 48.133890000000120000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo64: TfrxMemoView
          Left = 381.732530000000000000
          Top = 30.236240000000010000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOSSO N'#218'MERO:')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 72.811026060000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Left = -1.000000000000000000
          Top = 1.000000000000000000
          Width = 718.102660000000000000
          Height = 68.031496060000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
        end
        object Shape6: TfrxShapeView
          Left = 0.645671730000000000
          Top = 1.000000000000000000
          Width = 718.000000000000000000
          Height = 66.519675280000000000
        end
        object Memo1: TfrxMemoView
          Left = 509.457020000000000000
          Top = 2.779530000000000000
          Width = 204.606060000000000000
          Height = 22.322820000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'CONFER'#202'NCIA DE PEDIDO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 509.992128430000000000
          Top = 27.346459130000000000
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
          Left = 509.992128430000000000
          Top = 42.086616610000000000
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
          Left = 575.251936770000000000
          Top = 42.086616610000000000
          Width = 98.267731180000000000
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
        object Memo3: TfrxMemoView
          Left = 2.645517950000000000
          Top = 2.559060000000000000
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
        object Memo5: TfrxMemoView
          Left = 2.645517950000000000
          Top = 18.456710000000000000
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
        object Memo6: TfrxMemoView
          Left = 2.645517950000000000
          Top = 34.354360000000000000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_ENDERECO'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_ENDERECO"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 574.354701730000000000
          Top = 27.346459130000000000
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
          Top = 1.000000000000000000
          Height = 67.275590550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo55: TfrxMemoView
          Left = 2.425201730000000000
          Top = 50.133890000000000000
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
    end
  end
  object db_ViewConferencia: TFDQuery
    MasterSource = dS_PedidoConferencia
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOCONFERENCIA'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 232
    Top = 280
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_ViewConferenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_ViewConferenciaPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
      Required = True
    end
    object db_ViewConferenciaTITULO: TStringField
      FieldName = 'TITULO'
      ReadOnly = True
      Size = 274
    end
    object db_ViewConferenciaDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
    end
    object db_ViewConferenciaDATAFATURAMENTO: TSQLTimeStampField
      FieldName = 'DATAFATURAMENTO'
      ReadOnly = True
    end
    object db_ViewConferenciaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ReadOnly = True
    end
    object db_ViewConferenciaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object db_ViewConferenciaCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_ViewConferenciaCNPJ: TStringField
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 30
    end
    object db_ViewConferenciaIE: TStringField
      FieldName = 'IE'
      ReadOnly = True
      Size = 30
    end
    object db_ViewConferenciaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ReadOnly = True
      Size = 200
    end
    object db_ViewConferenciaNUMERO: TStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 30
    end
    object db_ViewConferenciaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ReadOnly = True
      Size = 200
    end
    object db_ViewConferenciaCEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 30
    end
    object db_ViewConferenciaNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      ReadOnly = True
      Size = 200
    end
    object db_ViewConferenciaUF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      Size = 30
    end
    object db_ViewConferenciaDDD: TIntegerField
      FieldName = 'DDD'
      ReadOnly = True
    end
    object db_ViewConferenciaFONE: TStringField
      FieldName = 'FONE'
      ReadOnly = True
      Size = 30
    end
    object db_ViewConferenciaFAX: TStringField
      FieldName = 'FAX'
      ReadOnly = True
      Size = 30
    end
    object db_ViewConferenciaCONTATO: TStringField
      FieldName = 'CONTATO'
      ReadOnly = True
      Size = 200
    end
    object db_ViewConferenciaEMAIL: TStringField
      FieldName = 'EMAIL'
      ReadOnly = True
      Size = 200
    end
    object db_ViewConferenciaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_ViewConferenciaVENDEDOR_NOME: TStringField
      FieldName = 'VENDEDOR_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_ViewConferenciaTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_ViewConferenciaTRANSPORTADORA_NOME: TStringField
      FieldName = 'TRANSPORTADORA_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_ViewConferenciaFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_ViewConferenciaFORMA_PAGTO_NOME: TStringField
      FieldName = 'FORMA_PAGTO_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_ViewConferenciaTIPOPAGAMENTO: TStringField
      FieldName = 'TIPOPAGAMENTO'
      ReadOnly = True
      Size = 200
    end
    object db_ViewConferenciaQTDE_TOTAL: TIntegerField
      FieldName = 'QTDE_TOTAL'
      ReadOnly = True
    end
    object db_ViewConferenciaVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      ReadOnly = True
    end
    object db_ViewConferenciaFATURADO: TStringField
      FieldName = 'FATURADO'
      ReadOnly = True
      Required = True
      Size = 9
    end
    object db_ViewConferenciaFRETE_VOLUMES: TIntegerField
      FieldName = 'FRETE_VOLUMES'
    end
    object db_ViewConferenciaFRETE_ESPECIE: TStringField
      FieldName = 'FRETE_ESPECIE'
      Size = 30
    end
    object db_ViewConferenciaFRETE_MARCA: TStringField
      FieldName = 'FRETE_MARCA'
      Size = 30
    end
    object db_ViewConferenciaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_ViewConferenciaENTREGAPARCIAL: TStringField
      FieldName = 'ENTREGAPARCIAL'
      ReadOnly = True
      Size = 10
    end
    object db_ViewConferenciaVALORPARCIAL: TBCDField
      FieldName = 'VALORPARCIAL'
      ReadOnly = True
    end
  end
  object frx_PedidoVenda: TfrxDBDataset
    UserName = 'ViewConferencia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PEDIDO=PEDIDO'
      'TITULO=TITULO'
      'DATA=DATA'
      'DATAFATURAMENTO=DATAFATURAMENTO'
      'NOTAFISCAL=NOTAFISCAL'
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
      'QTDE_TOTAL=QTDE_TOTAL'
      'VLR_TOTAL=VLR_TOTAL'
      'FATURADO=FATURADO'
      'FRETE_VOLUMES=FRETE_VOLUMES'
      'FRETE_ESPECIE=FRETE_ESPECIE'
      'FRETE_MARCA=FRETE_MARCA'
      'OBSERVACAO=OBSERVACAO'
      'ENTREGAPARCIAL=ENTREGAPARCIAL'
      'VALORPARCIAL=VALORPARCIAL')
    DataSet = db_ViewConferencia
    BCDToCurrency = False
    Left = 232
    Top = 336
  end
  object frxDBEtiquetasTestes: TfrxDBDataset
    UserName = 'EtiquetasTestes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'DATAENTREGA=DATAENTREGA'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'COR=COR'
      'ORDEM_GRADE=ORDEM_GRADE'
      'TAMANHO=TAMANHO'
      'VALOR_UNIT=VALOR_UNIT'
      'QUANTIDADE=QUANTIDADE'
      'VLR_TOTAL=VLR_TOTAL'
      'QTDE_ESTOQUE=QTDE_ESTOQUE')
    DataSet = db_EtiquetasTestes
    BCDToCurrency = False
    Left = 48
    Top = 264
  end
  object db_EtiquetasTestes: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOS_VENDIDOS')
    Left = 48
    Top = 320
  end
  object frxEtiquetasTestes: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40715.660849861100000000
    ReportOptions.LastChange = 40715.667486689800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 392
    Datasets = <
      item
        DataSet = frxDBEtiquetasTestes
        DataSetName = 'EtiquetasTestes'
      end>
    Variables = <>
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 177.637910000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBEtiquetasTestes
        DataSetName = 'EtiquetasTestes'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 13.228346460000000000
          Top = 113.385900000000000000
          Width = 129.110001460000000000
          Height = 18.897650000000000000
          DataField = 'REFERENCIA'
          DataSet = frxDBEtiquetasTestes
          DataSetName = 'EtiquetasTestes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EtiquetasTestes."REFERENCIA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          Left = 13.228346460000000000
          Top = 24.338590000000000000
          Width = 127.837882580000000000
          Height = 22.677180000000000000
          AutoWidth = True
          DataSet = frxDBEtiquetasTestes
          DataSetName = 'EtiquetasTestes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EtiquetasTestes."DESCRICAO"]'
            
              'Cor: [EtiquetasTestes."COR"] | Tamanho: [EtiquetasTestes."TAMANH' +
              'O"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Left = 13.228346456692900000
          Top = 136.063080000000000000
          Width = 89.000000000000000000
          Height = 18.897650000000000000
          DataSet = frxDBEtiquetasTestes
          DataSetName = 'EtiquetasTestes'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pre'#231'o: [EtiquetasTestes."VALOR_UNIT"]')
          ParentFont = False
          Style = 'Data'
        end
        object BarCode1: TfrxBarCodeView
          Left = 13.228346460000000000
          Top = 49.133890000000000000
          Width = 129.000000000000000000
          Height = 64.252010000000000000
          BarType = bcCode39
          Expression = '<EtiquetasTestes."IDENTIFICADOR">'
          HAlign = haCenter
          Rotation = 0
          ShowText = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
    end
  end
  object SPOP_CONFERENCIA_IMPORTAR_ITENS: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPCONFERENCIA_IMPORTAR_ITENS'
    Left = 520
    Top = 336
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'NCONFERENCIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NPEDIDO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object db_CtaReceber: TFDQuery
    MasterSource = ds_ViewConferencia
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_FIN_CTARECEBER'
      'WHERE'
      'CLIENTE=:CLIENTE'
      'AND'
      'NOTAFISCAL=:NOTAFISCAL')
    Left = 632
    Top = 304
    ParamData = <
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_ViewConferencia: TDataSource
    DataSet = db_ViewConferencia
    Left = 232
    Top = 392
  end
  object frx_dbCtaReceber: TfrxDBDataset
    UserName = 'dbCtaReceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DOCUMENTO=DOCUMENTO'
      'ESPECIE=ESPECIE'
      'NOTAFISCAL=NOTAFISCAL'
      'DATA=DATA'
      'VENCIMENTO=VENCIMENTO'
      'DATA_PAGTO=DATA_PAGTO'
      'DATA_PAGTODIAS=DATA_PAGTODIAS'
      'ATRASO_DIAS=ATRASO_DIAS'
      'FORMAPAGAMENTO=FORMAPAGAMENTO'
      'NOSSONUMERO=NOSSONUMERO'
      'VALOR=VALOR'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_SALDO=VALOR_SALDO'
      'VALOR_DIFERENCA=VALOR_DIFERENCA'
      'CLIENTE=CLIENTE'
      'NOME_CLIENTE=NOME_CLIENTE'
      'VENDEDOR=VENDEDOR'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'CIDADE_UF=CIDADE_UF'
      'PLN_CONTA=PLN_CONTA'
      'PLN_CONTA_NOME=PLN_CONTA_NOME'
      'QUITADO=QUITADO'
      'BLOQUEADO=BLOQUEADO'
      'HISTORICO=HISTORICO'
      'COMPLEMENTAR=COMPLEMENTAR'
      'GERARCOMPLEMENTO=GERARCOMPLEMENTO'
      'CONTACAIXA=CONTACAIXA'
      'CONTACAIXANOME=CONTACAIXANOME'
      'CONTACAIXASALDOINICIAL=CONTACAIXASALDOINICIAL'
      'CONTACORRENTE=CONTACORRENTE'
      'DESCONTO=DESCONTO'
      'DESCONTOVALOR=DESCONTOVALOR'
      'DESPESAS_JUROS=DESPESAS_JUROS'
      'DESPESAS_JUROSVALOR=DESPESAS_JUROSVALOR'
      'DESPESAS_MULTA=DESPESAS_MULTA'
      'DESPESAS_CARTORIO=DESPESAS_CARTORIO'
      'DESPESAS_OUTRAS=DESPESAS_OUTRAS'
      'DESPESAS_TOTAL=DESPESAS_TOTAL'
      'DESCONTADO=DESCONTADO'
      'PAGAMENTOTITULO=PAGAMENTOTITULO'
      'CODIGO_1=CODIGO_1')
    DataSet = db_CtaReceber
    BCDToCurrency = False
    Left = 632
    Top = 352
  end
  object db_PedidoConferenciaEmbalagens: TFDQuery
    AutoCalcFields = False
    AfterOpen = db_PedidoConferenciaEmbalagensAfterOpen
    BeforePost = db_PedidoConferenciaEmbalagensBeforePost
    AfterPost = db_PedidoConferenciaEmbalagensAfterPost
    MasterSource = dS_PedidoConferencia
    MasterFields = 'CODIGO;PEDIDO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PEDIDOCONFERENCIA_EMBALAGENS'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'PEDIDO=:PEDIDO')
    Left = 352
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_PedidoConferenciaEmbalagensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_PedidoConferenciaEmbalagensPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
      Required = True
    end
    object db_PedidoConferenciaEmbalagensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      OnChange = db_PedidoConferenciaEmbalagensPRODUTOChange
      Size = 30
    end
    object db_PedidoConferenciaEmbalagensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_PedidoConferenciaEmbalagensQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
  end
  object ds_PedidoConferenciaEmbalagens: TDataSource
    DataSet = db_PedidoConferenciaEmbalagens
    Left = 352
    Top = 48
  end
end
