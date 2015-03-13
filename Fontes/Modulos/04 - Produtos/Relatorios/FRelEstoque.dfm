object FrmRelEstoque: TFrmRelEstoque
  Left = 213
  Top = 113
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Mat'#233'rias-Primas'
  ClientHeight = 607
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 44
    Width = 627
    Height = 563
    Align = alClient
    TabOrder = 0
    object RadioG: TRadioGroup
      Left = 1
      Top = 310
      Width = 625
      Height = 137
      Align = alClient
      Caption = '&Tipo de Relat'#243'rio'
      ItemIndex = 0
      Items.Strings = (
        'Posi'#231#227'o do Estoque'
        'Lista de Pre'#231'os'
        'Estoque M'#237'nimo'
        'Invent'#225'rio do Estoque'
        'Estoque por grade de cores e tamanhos')
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 625
      Height = 51
      Align = alTop
      Caption = 'Sele'#231#227'o de &Fabricante'
      TabOrder = 1
      object chkFornecedor: TCheckBox
        Left = 8
        Top = 23
        Width = 134
        Height = 17
        Cursor = crHandPoint
        Caption = 'Todos os Fabricantes'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkFornecedorClick
      end
      object EditFornecedor: TIDBEditDialog
        Left = 148
        Top = 23
        Width = 105
        Height = 21
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = False
        TabOrder = 1
        Text = ''
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
          'TIPO='#39'FORNECEDOR'#39
          'OR'
          'TIPO='#39'OFICINA'#39
          'OR '
          'TIPO='#39'TRANSPORTADORA'#39' ')
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
      object EditNomeCliente: TEdit
        Left = 258
        Top = 23
        Width = 343
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 2
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 521
      Width = 625
      Height = 41
      Align = alBottom
      BevelInner = bvRaised
      BorderStyle = bsSingle
      TabOrder = 2
      object BtnSair: TBitBtn
        Left = 87
        Top = 5
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Hint = 'Sair'
        Caption = 'Sai&r'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000CE0E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0077FF77FF700F
          77FFFF77FF77F0B0FF7777FF77FF70B307FF00000007F0B330007777770000B3
          307777770708800330777777000880F03077777702088003307700000A2080B3
          3077AAAAAAA200B3307700000AA080B3307777770A0880B330777777000880BB
          307777770708880BB077777777088880B0777777770000000077}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnSairClick
      end
      object Btn_Imprimir: TBitBtn
        Left = 7
        Top = 5
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Hint = 'Imprimir relat'#243'rio selecionado...'
        Caption = '&Imprimir...'
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000C7C7C7C7C7C7
          C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C8C8C8C3C3C3CACACADEDFDFDDDD
          DDCDCDCDBFBFBFC7C6C6DADADAD6D6D6C3C3C3C4C4C4C8C8C8C7C7C7C7C7C7C7
          C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C6C6C6D1D1D1
          BFBFBF909090939393B7B7B7D8D8D8C7C9C9999A9AA3A2A3CFCFCFCDCDCDC5C5
          C5C6C6C6C6C6C6C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C6C6C6C6C6C6CB
          CBCBC8C8C8979897A1A1A19493935959595B5C5C7C7B7B9C90908C8586505151
          6E6E6EA1A1A1CFCFCFCCCCCCC9C9C9C6C6C6C7C7C7C7C7C7C7C7C7C7C7C7C6C6
          C6CCCCCCCACACABABABA9A9A9AB2B3B2F0F0F0D1D1D1B2B4B59892928367668B
          7878ADACACC2C3C38F8E8E636363666666A2A2A2C1C1C1CCCCCCC7C7C7C7C7C7
          C7C7C7C6C6C6CBCBCBB5B5B59E9E9EA4A4A4E6E6E6F9F9F9EFEEEEBBBABBAFB0
          B0ABA5A54F49494C4F4F676868888888B8B8B8CECECEAAAAAA7E7E7E787878BD
          BDBDC7C7C7C7C7C7C6C6C6CACACABDBDBDABABABD0D0D0FFFFFFF2F1F1E9E8E8
          EAEAEABBBCBCA6A6A6ABACAC8B8D8D7575756868686B6B6B7979799A9A9AC1C0
          C0CBCCCC6A6A6A969696C7C7C7C7C7C7C7C7C7CACACAB8B8B8E2E2E2FFFFFFEF
          EFEFEFEEEEDFDFDFC7C7C79E9E9E969595A6A5A5B6B5B5BABABAB2B2B2A1A1A1
          9999997070708181819B9A9A767676CBCBCBC7C7C7C6C6C6C6C6C6C9C9C9BBBB
          BBE6E6E6F8F8F8DCDCDCBCBCBCACACACB9B9B9A0A0A08686868989898E8E8E99
          9999A8A8A8B9B9B9C4C4C4B6B6B6B1B1B3A5A5A8828181D0D1D0C5C7C7CACBCB
          CBCBCBCECFCFBDBDBEC3C4C4BFBFBFB0B0B0C0C1C1D1D1D2D9D9D9D7D6D6C6C6
          C6B1B1B1A1A0A19494949090908F8F8F979797B2ACB098BAA6739B83848082CF
          CFCFD0C9C6BBB8B6B7B4B2BBB9B7A9A7A4B0AFAFD3D3D3DEDEDEDFDFDFCFCFD0
          D8D9D9E5E6E5DADADADDDDDDD8D8D8D2D2D2C3C3C3B6B6B6A2A3A39998998A93
          8D717B74818081CFCFCF74A0B4386F8A3469852662805C8192E9E6E4E2E3E4D7
          D8D7CCCCCCD4D4D5E3E3E3C8C7C7D5D5D5D0D1D1CCCCCCCCCECED3D4D4D5D5D5
          D5D5D6CECFCFCCCACBA29EA0848484CFCFCF1992C746B8EA5EC8F950C4F76BBB
          E0DCD5D1DFDBD9D0D0D2D5D5D6E1E1E1D5D4D4EBEAEAF8F7F7F0F0F0E7E7E7DE
          DEDDD3D3D4CDCDCCC9C9C9C7C7C7D6D6D5AFB0AF999999CDCDCD47AAD165C6EA
          79DBFF72D6FE6FD1F692C0D3BBC2C5C0C3C5CCCDCCCAC9C8CECECCE7E6E5EAE9
          E9EDEDECF0EFEFEEEDEEEDEDEDEAEAEAE6E6E6DADADAB5B5B49D9D9DC5C5C5C8
          C8C849A8CF65BDE179DDFD71D7FB73D9FD70DAFE67CBED97BDC9E6E3E1E1E7EA
          A0A4A7A4A7A9B3B7B8C5C7C7D5D5D5DBDBDBE3E3E3E7E6E7DFDFDFBDBCBCA7A7
          A7C4C4C4C9C9C9C7C7C74BB5D568BBE088E2FE76DFFC7ADEFB7CDFFC75E1FD9B
          D2E2F2E0DAF8D4C9DDBDB3D4C2BACCC1BEC4C0BEC3C4C5D2D3D6CACBCBA8A9A9
          ACACACB6B5B5C2C2C2C9C9C9C6C6C6C7C7C74ABEDB69BCE099E7FA7BE6FE81E5
          FC80E5FC83E9FD76D9F0C8BEAEFFCFA3FFD3ADFFD0AAFCCFABF8D5B6F8D6B6F0
          D5BD999495A7A7A7C6C6C6CACACAC8C8C8C6C6C6C7C7C7C7C7C75AC6E46CC2E9
          9CE8F685EFFE87ECFC88EBFB88F3FE85DAE7DCC6B0FDE0B8F9DAB7FCDBB7FDDC
          B7FDD9B4FFDFB8E3BE9C655D5FB6B7B7CDCDCDC5C5C5C7C7C7C7C7C7C7C7C7C7
          C7C774D1EC64C2F0A0E5F58FF6FE89F1FC8DF2FB86F7FE9AD5D7F0CEB6FEE4C7
          FBDFC4FDE0C5FDE0C5FBE0C4FDE7CAD6BBAC807E7FB0B0B0CCCBCBC6C6C6C7C7
          C7C7C7C7C7C7C7C7C7C77ED7EC68CAF8A2E2F7A9FFFE9BFCFCA0FEFE98FAFAB4
          CDCAFDE0CAFDEAD4FCE6D0FDE7D1FDE7D1FCE7D1FDE8D0D9D7CFABADAEA7A7A6
          CFCECEC6C6C6C7C7C7C7C7C7C7C7C7C7C7C788D7EC76D9FB78D2F9A6E8FCA4E8
          FCA4E9FE9DDDF2D2C8C2FEF0DEFBECDCFBEBDCFCECDDFCEBDBFDF0E0F4E0CFCA
          C6C4AFB1B2B5B4B4CBCBCBC6C6C6C7C7C7C7C7C7C7C7C7C7C7C790DBED83E6FD
          74E0FD72DBFC76DBFB6EE0FE8DC3D6F4E4D8FDF9EEFDF4E9FEF5EAFEF5EAFCF2
          E7FFFEF6CFB8B1978D8DBDBDBECCCBCBC6C6C6C7C7C7C7C7C7C7C7C7C7C7C7C7
          C7C79CDEEFA7F4FD8AF0FE90F2FD8DF5FF90E5EDCCCBCAF5F4EFFAF5F1F9F5F2
          F9F4F0F9F5F2FAF7F5F7EFEEB4ABAABBBBBBCCCCCCC6C6C6C7C7C7C7C7C7C7C7
          C7C7C7C7C7C7C7C7C7C796C9DCADE4F3A4EFF89CEFF89EF1FAA8E2ED84B3C4B7
          B8B6D5C8C8CEC4C4CEC1C1D1C7C7D3C9C9CEC2C2CAC7C7C8C9C9C6C6C6C7C7C7
          C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C2C6C7A9C4CEB4C8D0B3C8D1B4C9
          D0AEC8D2B1C8D0CAC9C8C5C7C7C6C7C7C6C8C8C6C7C7C6C7C7C6C8C8C7C7C7C7
          C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Btn_ImprimirClick
      end
    end
    object GbOrdenar: TRadioGroup
      Left = 1
      Top = 447
      Width = 625
      Height = 74
      Align = alBottom
      Caption = 'Ordenar por:'
      ItemIndex = 0
      Items.Strings = (
        'Grupo/Refer'#234'ncia/Descri'#231#227'o'
        'Refer'#234'ncia'
        'Descri'#231#227'o')
      TabOrder = 3
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 195
      Width = 625
      Height = 54
      Align = alTop
      Caption = 'Grupo de Produtos'
      TabOrder = 4
      object chkgrupos: TCheckBox
        Left = 8
        Top = 24
        Width = 105
        Height = 17
        Cursor = crHandPoint
        Caption = 'Todos os Grupos'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkgruposClick
      end
      object EditGrupo: TIDBEditDialog
        Left = 172
        Top = 27
        Width = 83
        Height = 21
        Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
        HelpKeyWord = ''
        Color = clWindow
        Enabled = False
        ShowHint = True
        TabOrder = 1
        Text = ''
        Visible = True
        LabelCaption = 'Grupo:'
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
        SQLdbFocusControl = Edit1
        SQLdbCampoRetorno = 'DESCRICAO '
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT DESCRICAO FROM CAD_GRUPO'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_GRUPO'
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
            FieldName = 'DESCRICAO'
            WhereSyntax = 'DESCRICAO'
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
      object Edit1: TEdit
        Left = 256
        Top = 27
        Width = 210
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 2
      end
    end
    object GroupBox4: TGroupBox
      Left = 1
      Top = 52
      Width = 625
      Height = 89
      Align = alTop
      Caption = 'Intervalo de Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object PainelProdutos: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 39
        Width = 615
        Height = 45
        Align = alBottom
        Enabled = False
        TabOrder = 0
        object EditProdutoFim: TIDBEditDialog
          Left = 133
          Top = 18
          Width = 120
          Height = 19
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = ''
          Visible = True
          FocusColor = clBtnFace
          LabelCaption = 'At'#233':'
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
          SQLdbCampoRetorno = 'DESCRICAO'
          SQLdbRetornoVazio = ' *** '
          SQLdbCampoParametro = 'REFERENCIA'
          SQLdbSQL.Strings = (
            ''
            'SELECT * FROM CAD_PRODUTOS'
            'WHERE'
            'TIPO_PRODUTO='#39'ACA'#39
            'AND'
            'REFERENCIA=:REFERENCIA')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_PRODUTOS'
            'WHERE'
            'TIPO_PRODUTO='#39'ACA'#39
            'AND'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(*) FROM CAD_PRODUTOS'
            'WHERE'
            'TIPO_PRODUTO='#39'ACA'#39
            'AND'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'REFERENCIA'
              WhereSyntax = 'REFERENCIA'
              DisplayLabel = 'Refer'#234'ncia:'
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
              DisplayLabel = 'Descri'#231#227'o'
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
        object EditProdutoInicio: TIDBEditDialog
          Left = 5
          Top = 18
          Width = 120
          Height = 19
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = ''
          Visible = True
          FocusColor = clBtnFace
          LabelCaption = 'De:'
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
          SQLdbCampoRetorno = 'DESCRICAO'
          SQLdbRetornoVazio = ' *** '
          SQLdbCampoParametro = 'REFERENCIA'
          SQLdbSQL.Strings = (
            ''
            'SELECT * FROM CAD_PRODUTOS'
            'WHERE'
            'TIPO_PRODUTO='#39'ACA'#39
            'AND'
            'REFERENCIA=:REFERENCIA')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_PRODUTOS'
            'WHERE'
            'TIPO_PRODUTO='#39'ACA'#39
            'AND'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(*) FROM CAD_PRODUTOS'
            'WHERE'
            'TIPO_PRODUTO='#39'ACA'#39
            'AND'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'REFERENCIA'
              WhereSyntax = 'REFERENCIA'
              DisplayLabel = 'Refer'#234'ncia:'
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
              DisplayLabel = 'Descri'#231#227'o'
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
      end
      object chk_Referencia: TCheckBox
        Left = 3
        Top = 20
        Width = 112
        Height = 13
        Cursor = crHandPoint
        Hint = 'Rastrear todos os produtos'
        Caption = 'Todos os produtos'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 1
        OnClick = chk_ReferenciaClick
      end
    end
    object GrpTipoProduto: TGroupBox
      Left = 1
      Top = 141
      Width = 625
      Height = 54
      Align = alTop
      Caption = 'Tipo de Produto'
      TabOrder = 7
      object EditTipProduto: TDBLookupComboBox
        Left = 89
        Top = 21
        Width = 344
        Height = 21
        DropDownRows = 12
        DropDownWidth = 450
        Enabled = False
        KeyField = 'CODIGO'
        ListField = 'NOME;CODIGO'
        ListSource = DS_TipoProduto
        NullValueKey = 46
        TabOrder = 0
      end
      object ChkTipoProduto: TCheckBox
        Left = 16
        Top = 21
        Width = 67
        Height = 17
        Cursor = crHandPoint
        Caption = 'Todos'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = ChkTipoProdutoClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 249
      Width = 625
      Height = 61
      Align = alTop
      Caption = 'Controle de Qualidade'
      TabOrder = 5
      object EditQualidade: TIDBEditDialog
        Left = 172
        Top = 32
        Width = 83
        Height = 23
        Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        TabOrder = 0
        Text = '0'
        Visible = True
        LabelCaption = 'Controle de Qualidade:'
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
        SQLdbFocusControl = Edit2
        SQLdbCampoRetorno = 'DESCRICAO'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_QUALIDADES'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_QUALIDADES'
          'WHERE'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'C'#211'DIGO:'
            DisplayWidth = 12
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
      object Edit2: TEdit
        Left = 256
        Top = 32
        Width = 210
        Height = 23
        CharCase = ecUpperCase
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
      object chkQualidades: TCheckBox
        Left = 16
        Top = 29
        Width = 67
        Height = 17
        Cursor = crHandPoint
        Caption = 'Todas'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = chkQualidadesClick
      end
    end
  end
  inline FrameRelatorios1: TFrameRelatorios
    Left = 0
    Top = 0
    Width = 627
    Height = 44
    Align = alTop
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    TabStop = True
    ExplicitWidth = 627
    inherited Image3: TImage
      Width = 627
      ExplicitWidth = 627
    end
    inherited Image2: TImage
      Left = 556
      ExplicitLeft = 380
    end
    inherited LblBarraTitulo: TLabel
      Width = 160
      Caption = 'Relat'#243'rio de Estoque'
      ExplicitWidth = 160
    end
  end
  object DS_TipoProduto: TDataSource
    AutoEdit = False
    DataSet = db_TipoProduto
    Left = 144
    Top = 248
  end
  object db_TipoProduto: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS_TIPO'
      'ORDER BY CODIGO DESC')
    Left = 144
    Top = 216
  end
  object frxEstoqueDisponivel: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40698.799368414400000000
    ReportOptions.Name = 'Estoque Dispon'#237'vel'
    ReportOptions.LastChange = 41015.515114942130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 216
    Top = 136
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frxDBD_EstoqueDisponivel
        DataSetName = 'frxDBD_EstoqueDisponivel'
      end>
    Variables = <>
    Style = <>
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object MemoTitulo: TfrxMemoView
          Left = 1.779530000000000000
          Top = 7.559060000000000000
          Width = 554.244280000000000000
          Height = 49.133858270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'Relat'#243'rio - Estoque Dispon'#237'vel')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 553.370440000000000000
          Top = 7.559060000000000000
          Width = 162.511750000000000000
          Height = 49.133858270000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 562.929133860000000000
          Top = 9.448823780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 563.929133860000000000
          Top = 24.188981260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 563.929133860000000000
          Top = 39.307091500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 629.078745040000000000
          Top = 9.448823780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 629.078745040000000000
          Top = 24.188981260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 629.078745040000000000
          Top = 39.307091500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        Child = frxEstoqueDisponivel.Child1
        DataSet = frxDBD_EstoqueDisponivel
        DataSetName = 'frxDBD_EstoqueDisponivel'
        RowCount = 0
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 133.897650000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        object DBCross1: TfrxDBCrossView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 303.000000000000000000
          Height = 115.000000000000000000
          Hint = 'Produ'#231#227'o necess'#225'ria para atender pedidos de vendas'
          ShowHint = True
          DownThenAcross = False
          RowLevels = 3
          CellFields.Strings = (
            'QUANTIDADE')
          ColumnFields.Strings = (
            'TAMANHO')
          DataSet = frxDBD_EstoqueDisponivel
          DataSetName = 'frxDBD_EstoqueDisponivel'
          RowFields.Strings = (
            'REFERENCIA'
            'DESCRICAO'
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223138372C
            37373935332220546F703D223233302C3835383338222057696474683D223439
            22204865696768743D22313922205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C546672784D656D6F56696577
            204C6566743D223239322220546F703D223630222057696474683D2239342220
            4865696768743D22323222205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31312220466F6E742E4E616D653D225461686F6D612220466F6E74
            2E5374796C653D223122204672616D652E5479703D223135222046696C6C2E42
            61636B436F6C6F723D2231353732343532372220476170583D22332220476170
            593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2230222F3E3C546672784D656D6F56696577204C6566743D22313536222054
            6F703D223832222057696474683D22383222204865696768743D223232222052
            65737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E74
            2E4E616D653D225461686F6D612220466F6E742E5374796C653D223022204672
            616D652E5479703D22313522204672616D652E546F704C696E652E5769647468
            3D22322220476170583D22332220476170593D2233222048416C69676E3D2268
            6152696768742220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D2230222F3E3C546672784D656D6F
            56696577204C6566743D223138372C37373935332220546F703D223234392C38
            35383338222057696474683D22343922204865696768743D2231392220526573
            7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22302220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E61
            6D653D22417269616C204E6172726F772220466F6E742E5374796C653D223122
            204672616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D22
            31353732343532372220476170583D22332220476170593D2233222048416C69
            676E3D22686152696768742220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D2230222F3E3C546672
            784D656D6F56696577204C6566743D223233362C37373935332220546F703D22
            3233302C3835383338222057696474683D22353022204865696768743D223139
            22205265737472696374696F6E733D2232342220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223122204672616D652E5479703D223135222046696C6C2E4261636B436F
            6C6F723D2231353732343532372220476170583D22332220476170593D223322
            2048416C69676E3D22686152696768742220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D22302220546F703D22302220
            57696474683D223022204865696768743D223022205265737472696374696F6E
            733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
            722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D22
            3230302220546F703D223832222057696474683D22393222204865696768743D
            22323922205265737472696374696F6E733D2232342220416C6C6F7745787072
            657373696F6E733D2246616C736522204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C54
            6672784D656D6F56696577204C6566743D223233362C37373935332220546F70
            3D223234392C3835383338222057696474683D22353022204865696768743D22
            313922205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22302220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220
            466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374
            796C653D223122204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686152696768742220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D2230222F3E3C2F63656C6C6D656D6F733E3C63656C6C686561646572
            6D656D6F733E3C546672784D656D6F56696577204C6566743D22323030222054
            6F703D223338222057696474683D22393222204865696768743D223232222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C736522204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222056416C69676E3D22766143656E746572222054657874
            3D225155414E544944414445222F3E3C546672784D656D6F56696577204C6566
            743D223239322220546F703D223338222057696474683D223934222048656967
            68743D22323222205265737472696374696F6E733D22382220416C6C6F774578
            7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222056416C69676E3D22766143656E
            7465722220546578743D225155414E544944414445222F3E3C546672784D656D
            6F56696577204C6566743D223338362220546F703D223338222057696474683D
            22393222204865696768743D22323222205265737472696374696F6E733D2238
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222056416C69
            676E3D22766143656E7465722220546578743D225155414E544944414445222F
            3E3C546672784D656D6F56696577204C6566743D223437382220546F703D2233
            38222057696474683D22393422204865696768743D2232322220526573747269
            6374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C
            736522204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222056416C69676E3D22766143656E7465722220546578743D22515541
            4E544944414445222F3E3C2F63656C6C6865616465726D656D6F733E3C636F6C
            756D6E6D656D6F733E3C546672784D656D6F56696577204C6566743D22313837
            2C37373935332220546F703D223231322C3835383338222057696474683D2234
            3922204865696768743D22313822205265737472696374696F6E733D22323422
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D392220466F6E742E4E616D653D22417269616C204E617272
            6F772220466F6E742E5374796C653D223022204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            6768742220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22222F3E3C2F636F6C756D6E6D656D6F73
            3E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D656D6F56696577
            204C6566743D223233362C37373935332220546F703D223231322C3835383338
            222057696474683D22353022204865696768743D223138222052657374726963
            74696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686152696768742220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D22535542544F5441
            4C3A222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F726E65726D
            656D6F733E3C546672784D656D6F56696577204C6566743D2232332C37373935
            332220546F703D223139332C3835383338222057696474683D22313634222048
            65696768743D22313922205265737472696374696F6E733D22382220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D31312220466F6E742E4E616D653D22417269616C204E6172726F772220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D225155414E544944414445222F3E3C546672784D
            656D6F56696577204C6566743D223138372C37373935332220546F703D223139
            332C3835383338222057696474683D22393922204865696768743D2231392220
            5265737472696374696F6E733D22382220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2254414D414E484F3A222F3E3C546672784D656D6F56696577204C6566743D22
            3132372220546F703D223231222057696474683D22393422204865696768743D
            22323222205265737472696374696F6E733D2238222056697369626C653D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686143656E746572222056416C69676E3D22766143656E74
            65722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D
            2232332C37373935332220546F703D223231322C383538333822205769647468
            3D22363822204865696768743D22313922205265737472696374696F6E733D22
            382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31312220466F6E742E4E616D653D22417269616C204E
            6172726F772220466F6E742E5374796C653D223122204672616D652E5479703D
            22313522204672616D652E52696768744C696E652E436F6C6F723D2231363737
            373231352220476170583D22332220476170593D2233222048416C69676E3D22
            686143656E7465722220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D225245464552C38A4E434941
            3A222F3E3C546672784D656D6F56696577204C6566743D2239312C3737393533
            2220546F703D223231322C3835383338222057696474683D2236342220486569
            6768743D22313922205265737472696374696F6E733D22382220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D31312220466F6E742E4E616D653D22417269616C204E6172726F772220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D22444553435249C387C3834F3A222F3E3C546672784D
            656D6F56696577204C6566743D223135352C37373935332220546F703D223231
            322C3835383338222057696474683D22333222204865696768743D2231392220
            5265737472696374696F6E733D22382220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22434F523A222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F73
            3E3C546672784D656D6F56696577204C6566743D2232332C3737393533222054
            6F703D223233302C3835383338222057696474683D2236382220486569676874
            3D22313922205265737472696374696F6E733D2232342220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            312220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E74
            2E5374796C653D223022204672616D652E5479703D2231312220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D22
            39312C37373935332220546F703D223233302C3835383338222057696474683D
            22363422204865696768743D22313922205265737472696374696F6E733D2232
            342220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31312220466F6E742E4E616D653D22417269616C204E
            6172726F772220466F6E742E5374796C653D223022204672616D652E5479703D
            2231312220476170583D22332220476170593D2233222048416C69676E3D2268
            6143656E7465722220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F
            56696577204C6566743D223135352C37373935332220546F703D223233302C38
            35383338222057696474683D22333222204865696768743D2231392220526573
            7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22302220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2230
            22204672616D652E5479703D2231312220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C5466
            72784D656D6F56696577204C6566743D2232332C37373935332220546F703D22
            3234392C3835383338222057696474683D2231363422204865696768743D2231
            3922205265737472696374696F6E733D22382220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131222046
            6F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E537479
            6C653D223122204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686152696768742220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D22546F74616C20646973706F6E6976656C20656D206573746F71756520
            66697369636F203D262336323B222F3E3C546672784D656D6F56696577204C65
            66743D2237362220546F703D223832222057696474683D223830222048656967
            68743D22323222205265737472696374696F6E733D2238222056697369626C65
            3D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C7365
            2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D2241
            7269616C2220466F6E742E5374796C653D223122204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            43656E7465722220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D22546F74616C222F3E3C54667278
            4D656D6F56696577204C6566743D223136392220546F703D2236302220576964
            74683D22383022204865696768743D22323222205265737472696374696F6E73
            3D2238222056697369626C653D2246616C73652220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2231222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220
            466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223122
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D22686143656E7465722220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2254
            6F74616C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66756E63
            74696F6E733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E733E3C
            636F6C756D6E736F72743E3C6974656D20322F3E3C2F636F6C756D6E736F7274
            3E3C726F77736F72743E3C6974656D20302F3E3C6974656D20302F3E3C697465
            6D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
    end
  end
  object DB_EstoqueDisponivel: TFDQuery
    BeforeOpen = DB_EstoqueDisponivelBeforeOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select'
      'distinct(referencia), '
      'ORDEM_GRADE,'
      'DESCRICAO,'
      'cor,'
      'tamanho,'
      'QUANTIDADE'
      'from  VIEW_CADPRODUTOS_GRADES'
      'order by VIEW_CADPRODUTOS_GRADES.ORDEM_GRADE')
    Left = 224
    Top = 200
  end
  object frxDBD_EstoqueDisponivel: TfrxDBDataset
    UserName = 'frxDBD_EstoqueDisponivel'
    CloseDataSource = False
    FieldAliases.Strings = (
      'referencia=referencia'
      'ORDEM_GRADE=ORDEM_GRADE'
      'DESCRICAO=DESCRICAO'
      'cor=cor'
      'tamanho=tamanho'
      'QUANTIDADE=QUANTIDADE')
    DataSet = DB_EstoqueDisponivel
    BCDToCurrency = False
    Left = 224
    Top = 264
  end
end
