object FrmOrdemProducaoPedidos: TFrmOrdemProducaoPedidos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gerar Lote de Produ'#231#227'o'
  ClientHeight = 497
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 456
    Width = 763
    Height = 41
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 763
    Height = 36
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 763
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 763
      ExplicitWidth = 763
      inherited LblBarraTitulo: TLabel
        Width = 197
        Caption = 'Gerar Ordem de Produ'#231#227'o'
        ExplicitWidth = 197
      end
    end
  end
  object gbxSelecionarPedidos: TGroupBox
    Left = 0
    Top = 128
    Width = 763
    Height = 328
    Align = alClient
    Caption = 'Ordem de Produ'#231#227'o - Selecionar Pedidos [aprovados]'
    TabOrder = 3
    object gbxPedidosChecar: TGroupBox
      Left = 2
      Top = 15
      Width = 759
      Height = 70
      Align = alTop
      Caption = 'Sele'#231#227'o de Pedidos'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object chkPedidos: TCheckBox
        Left = 10
        Top = 34
        Width = 127
        Height = 17
        Cursor = crHandPoint
        Caption = 'Todos os Pedidos'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkPedidosClick
      end
      object btnPedidosSelecionar: TBitBtn
        Left = 145
        Top = 30
        Width = 129
        Height = 25
        Caption = 'Selecionar Pedidos...'
        Enabled = False
        TabOrder = 1
      end
    end
    object gbxPedidosFiltros: TGroupBox
      Left = 2
      Top = 99
      Width = 759
      Height = 227
      Align = alClient
      Caption = 'Filtrar Pedidos'
      TabOrder = 1
      object pnPeriodo: TPanel
        Left = 2
        Top = 15
        Width = 755
        Height = 70
        Align = alClient
        BevelWidth = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 2
          Top = 2
          Width = 279
          Height = 66
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Periodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label3: TLabel
            Left = 10
            Top = 26
            Width = 14
            Height = 15
            Caption = 'De'
          end
          object Label4: TLabel
            Left = 136
            Top = 26
            Width = 17
            Height = 15
            Caption = 'At'#233
          end
          object MskDataIni: TMaskEdit
            Left = 32
            Top = 22
            Width = 79
            Height = 23
            EditMask = '99/99/9999'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = '01/01/2012'
          end
          object MskDataFim: TMaskEdit
            Left = 158
            Top = 22
            Width = 80
            Height = 23
            EditMask = '99/99/9999'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 1
            Text = '  /  /    '
            OnChange = MskDataFimChange
          end
        end
        object rgpPeriodoData: TRadioGroup
          Left = 281
          Top = 2
          Width = 472
          Height = 66
          Align = alClient
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Data de Entrega'
            'Data de Emiss'#227'o')
          TabOrder = 1
          OnClick = rgpPeriodoDataClick
        end
      end
      object gbxClientes: TGroupBox
        Left = 2
        Top = 85
        Width = 755
        Height = 70
        Align = alBottom
        Caption = 'Sele'#231#227'o de Clientes'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object EditClienteNome: TEdit
          Left = 224
          Top = 32
          Width = 330
          Height = 23
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '***'
        end
        object EditCliente: TIDBEditDialog
          Left = 150
          Top = 32
          Width = 68
          Height = 23
          HelpKeyWord = ''
          Color = clWindow
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '0'
          Visible = True
          EditType = etNumeric
          FocusColor = clBtnFace
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
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditClienteNome
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = ' *** '
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'TIPO='#39'CLIENTE'#39
            'AND'
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
              DisplayLabel = 'NOME:'
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
        object chkCliente: TCheckBox
          Left = 10
          Top = 34
          Width = 138
          Height = 13
          Cursor = crHandPoint
          Caption = 'Todos os Clientes'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = chkClienteClick
        end
      end
      object gbxRepresentante: TGroupBox
        Left = 2
        Top = 155
        Width = 755
        Height = 70
        Align = alBottom
        Caption = 'Sele'#231#227'o de Vendedores'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object chkRepres: TCheckBox
          Left = 10
          Top = 34
          Width = 138
          Height = 17
          Cursor = crHandPoint
          Caption = 'Todos os Vendedores'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chkRepresClick
        end
        object EditNomeVendedor: TEdit
          Left = 224
          Top = 32
          Width = 330
          Height = 23
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object EditVendedor: TIDBEditDialog
          Left = 150
          Top = 32
          Width = 68
          Height = 23
          HelpKeyWord = ''
          Color = clWindow
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '0'
          Visible = True
          EditType = etNumeric
          FocusColor = clBtnFace
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
            '%WHERE%'
            'AND '
            'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39')')
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
              DisplayLabel = 'C'#211'DIGO:'
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
    end
    object W7Panel2: TPanel
      Left = 2
      Top = 85
      Width = 759
      Height = 14
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object W7Panel1: TPanel
    Left = 0
    Top = 114
    Width = 763
    Height = 14
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Panel2: TPanel
    Left = 0
    Top = 36
    Width = 763
    Height = 78
    Align = alTop
    TabOrder = 0
    object rgpSelecionar: TRadioGroup
      Left = 1
      Top = 1
      Width = 320
      Height = 76
      Align = alLeft
      Caption = 'Gerar produ'#231#227'o:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Criar lote manualmente'
        'Por Pedidos de Vendas')
      TabOrder = 0
      OnClick = rgpSelecionarClick
    end
    object rgpPrevisao: TGroupBox
      Left = 321
      Top = 1
      Width = 441
      Height = 76
      Align = alClient
      Caption = 'Previs'#227'o de encerramento:'
      TabOrder = 1
      object Label1: TLabel
        Left = 10
        Top = 26
        Width = 71
        Height = 13
        Caption = 'Data Previs'#227'o:'
      end
      object EditPrevisao: TMaskEdit
        Left = 10
        Top = 41
        Width = 85
        Height = 23
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object dbEditLote: TIDBEditDialog
        Left = 101
        Top = 41
        Width = 75
        Height = 23
        Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        TabOrder = 1
        Text = ''
        Visible = True
        LabelCaption = 'Lote Producao:'
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
        SQLdbFocusControl = EditLoteProducao
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_LOTEPRODUCAO'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_LOTEPRODUCAO'
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
          end
          item
            FieldName = 'STATUS'
            WhereSyntax = 'STATUS'
            DisplayLabel = 'Ativa'
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
      object EditLoteProducao: TEdit
        Left = 178
        Top = 40
        Width = 215
        Height = 23
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '***'
      end
    end
  end
end
