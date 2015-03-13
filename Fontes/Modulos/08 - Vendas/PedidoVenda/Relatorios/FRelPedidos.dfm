object FrmRelPedidos: TFrmRelPedidos
  Left = 1
  Top = 1
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Relat'#243'rios de Pedidos de Vendas'
  ClientHeight = 605
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 44
    Width = 734
    Height = 561
    Align = alClient
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 732
      Height = 64
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Periodo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 25
        Top = 32
        Width = 13
        Height = 13
        Caption = 'De'
      end
      object Label4: TLabel
        Left = 127
        Top = 32
        Width = 17
        Height = 13
        Caption = 'At'#233
      end
      object MskDataIni: TMaskEdit
        Left = 40
        Top = 28
        Width = 68
        Height = 21
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '01/01/2012'
        OnExit = MskDataIniExit
      end
      object MskDataFim: TMaskEdit
        Left = 146
        Top = 28
        Width = 69
        Height = 21
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 2
        Text = '31/12/2012'
        OnExit = MskDataFimExit
      end
      object RdgFiltro: TRadioGroup
        Left = 221
        Top = 14
        Width = 243
        Height = 47
        Caption = '[ Filtrar por ]'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 1
        Items.Strings = (
          'Emiss'#227'o do Pedido'
          'Entrega do Pedido')
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 519
      Width = 732
      Height = 41
      Align = alBottom
      BevelInner = bvRaised
      BorderStyle = bsSingle
      TabOrder = 6
      object BtnSair: TBitBtn
        Left = 87
        Top = 2
        Width = 80
        Height = 32
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
        Top = 2
        Width = 80
        Height = 32
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
    object RadioG_Ordem: TRadioGroup
      Left = 1
      Top = 488
      Width = 732
      Height = 31
      Cursor = crHandPoint
      Align = alBottom
      Caption = 'Classificar por:'
      Color = clBtnFace
      Columns = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 1
      Items.Strings = (
        'N'#186' Pedido'
        'Data de Emiss'#227'o'
        'Data Entrega'
        'Nome do Cliente'
        'Produto')
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object RdPedidos: TRadioGroup
      Left = 1
      Top = 453
      Width = 732
      Height = 35
      Cursor = crHandPoint
      Align = alBottom
      Caption = 'Tipos'
      Columns = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'N'#227'o Aprovados'
        'Aprovados'
        'Faturados'
        'N'#227'o Faturados')
      ParentFont = False
      TabOrder = 4
      ExplicitTop = 424
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 65
      Width = 732
      Height = 81
      Align = alTop
      Caption = 'Sele'#231#227'o de Clientes'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object EditClienteNome: TEdit
        Left = 92
        Top = 55
        Width = 314
        Height = 21
        Color = clBtnFace
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '***'
      end
      object EditCliente: TIDBEditDialog
        Left = 5
        Top = 55
        Width = 80
        Height = 21
        HelpKeyWord = ''
        Color = clWindow
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
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
        Left = 5
        Top = 20
        Width = 105
        Height = 13
        Cursor = crHandPoint
        Caption = 'Todos os Clientes'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkClienteClick
      end
      object EditNomeVendedor: TEdit
        Left = 498
        Top = 58
        Width = 224
        Height = 21
        Color = clBtnFace
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object EditVendedor: TIDBEditDialog
        Left = 412
        Top = 55
        Width = 80
        Height = 21
        HelpKeyWord = ''
        Color = clWindow
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
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
          'CODIGO=:CODIGO')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39')'
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
      object chkRepres: TCheckBox
        Left = 407
        Top = 20
        Width = 145
        Height = 17
        Cursor = crHandPoint
        Caption = 'Vendedor/Representante'
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = chkRepresClick
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 213
      Width = 732
      Height = 240
      Align = alClient
      BevelWidth = 2
      TabOrder = 3
      ExplicitTop = 228
      ExplicitHeight = 174
      object RadioG: TRadioGroup
        Left = 2
        Top = 2
        Width = 550
        Height = 236
        Cursor = crHandPoint
        Align = alClient
        Caption = '&Selecione seu Relat'#243'rio'
        Color = clBtnFace
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Pedidos'
          'Pedidos (Grades)'
          'Comiss'#227'o de Vendedores'
          'Faturamento Parcial de Pedidos (Anal'#237'tico)'
          'Pedidos X  Estoque Disponivel'
          'Ranking de Produtos'
          'Ranking de Produtos [Grade]'
          'Confer'#234'ncias Faturadas'
          'Faturamento Parcial (sint'#233'tico)')
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        OnClick = RadioGClick
        ExplicitHeight = 170
      end
      object gbxHanking: TGroupBox
        Left = 552
        Top = 2
        Width = 178
        Height = 236
        Align = alRight
        TabOrder = 1
        Visible = False
        ExplicitHeight = 170
        object rdgHankingOpcoes: TRadioGroup
          Left = 2
          Top = 15
          Width = 174
          Height = 44
          Align = alTop
          Caption = 'Ranking de Produtos por:'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Quantidades'
            'Valores')
          TabOrder = 0
        end
        object Panel4: TPanel
          Left = 2
          Top = 59
          Width = 174
          Height = 40
          Align = alTop
          TabOrder = 1
          object Label2: TLabel
            Left = 111
            Top = 15
            Width = 39
            Height = 13
            Caption = 'registros'
          end
          object Label1: TLabel
            Left = 4
            Top = 13
            Width = 35
            Height = 13
            Caption = 'Mostrar'
          end
          object SpinEdit1: TSpinEdit
            Left = 45
            Top = 11
            Width = 61
            Height = 24
            Hint = '0 (zero) mostrar tudo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            MaxValue = 0
            MinValue = 0
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Value = 10
          end
        end
      end
    end
    object GroupBox_OP_Produtos: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 149
      Width = 726
      Height = 61
      Align = alTop
      Caption = '&Refer'#234'ncias'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      ExplicitTop = 153
      object chk_Referencia: TCheckBox
        Left = 10
        Top = 35
        Width = 112
        Height = 13
        Cursor = crHandPoint
        Hint = 'Rastrear todos os produtos'
        Caption = 'Todos os produtos'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 0
        OnClick = chk_ReferenciaClick
      end
      object PainelProdutos: TPanel
        AlignWithMargins = True
        Left = 135
        Top = 13
        Width = 356
        Height = 45
        Enabled = False
        TabOrder = 1
        object EditProdutoB: TIDBEditDialog
          Left = 183
          Top = 18
          Width = 162
          Height = 24
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          LabelFont.Color = clBlack
          LabelFont.Height = -13
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
        object EditProdutoA: TIDBEditDialog
          Left = 5
          Top = 18
          Width = 162
          Height = 24
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          LabelFont.Color = clBlack
          LabelFont.Height = -13
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
    end
  end
  inline FrameRelatorios1: TFrameRelatorios
    Left = 0
    Top = 0
    Width = 734
    Height = 44
    Align = alTop
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    TabStop = True
    ExplicitWidth = 734
    inherited Image3: TImage
      Width = 734
      ExplicitWidth = 484
    end
    inherited Image2: TImage
      Left = 661
      ExplicitLeft = 411
    end
    inherited LblBarraTitulo: TLabel
      Width = 252
      Caption = 'Relat'#243'rios de Pedidos de Vendas'
      ExplicitWidth = 252
    end
  end
  object db_ComissaoPedidos: TFDQuery
    BeforeOpen = db_ComissaoPedidosBeforeOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSCOMISSAO'
      ''
      'ORDER BY VENDEDORNOME, CLIENTE_NOME')
    Left = 328
    Top = 112
  end
  object fsd_ComissaoPedidos: TfrxDBDataset
    UserName = 'DBComissaoPedidos'
    CloseDataSource = True
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DOCUMENTO=DOCUMENTO'
      'DATA=DATA'
      'DATAFATURAMENTO=DATAFATURAMENTO'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'CPF_CNPJ=CPF_CNPJ'
      'FORMA_PAGTO=FORMA_PAGTO'
      'VENDEDOR=VENDEDOR'
      'VENDEDORNOME=VENDEDORNOME'
      'VENDEDORSALARIO=VENDEDORSALARIO'
      'VALORTOTAL=VALORTOTAL'
      'COMISSAOCADASTRO=COMISSAOCADASTRO'
      'COMISSAOPEDIDO=COMISSAOPEDIDO'
      'COMISSAO_VALORVIACADASTRO=COMISSAO_VALORVIACADASTRO'
      'COMISSAO_VALORVIAPEDIDO=COMISSAO_VALORVIAPEDIDO'
      'COMISSAO_COM_SALARIO=COMISSAO_COM_SALARIO'
      'APROVADO=APROVADO'
      'STATUS=STATUS'
      'CODIGO_1=CODIGO_1'
      'PEDIDO=PEDIDO')
    DataSet = db_ComissaoPedidos
    BCDToCurrency = False
    Left = 328
    Top = 176
  end
  object fsr_ComissaoPedidos: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847210000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 40772.624502048600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '     LblParametro.Text  := <rptParametro>;'
      '     //LblParametro.Text  := '#39'<rptParametro>'#39';'
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 328
    Top = 56
    Datasets = <
      item
        DataSet = fsd_ComissaoPedidos
        DataSetName = 'DBComissaoPedidos'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end>
    Variables = <
      item
        Name = ' diversas'
        Value = Null
      end
      item
        Name = 'rptParametro'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        DataSet = fsd_ComissaoPedidos
        DataSetName = 'DBComissaoPedidos'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 1.236240000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'DATA'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[DBComissaoPedidos."DATA"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 46.543290000000000000
          Width = 34.015770000000010000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBComissaoPedidos."CODIGO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 137.779405510000000000
          Width = 154.960676300000000000
          Height = 15.118120000000000000
          DataField = 'CLIENTE_NOME'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[DBComissaoPedidos."CLIENTE_NOME"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 498.897960000000000000
          Top = 0.000041500000008909
          Width = 60.472453150000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBComissaoPedidos."COMISSAO_VALORVIAPEDIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 563.149970000000100000
          Width = 26.456695350000000000
          Height = 15.118110240000000000
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          DisplayFormat.FormatStr = '###,##0%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '([DBComissaoPedidos."COMISSAOPEDIDO"])')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 427.527830000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'VALORTOTAL'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBComissaoPedidos."VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 661.417750000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'STATUS'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBComissaoPedidos."STATUS"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 604.724800000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'APROVADO'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBComissaoPedidos."APROVADO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 299.126160000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'DATAFATURAMENTO'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[DBComissaoPedidos."DATAFATURAMENTO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 90.708720000000000000
          Width = 34.015770000000010000
          Height = 15.118120000000000000
          DataField = 'DOCUMENTO'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[DBComissaoPedidos."DOCUMENTO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
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
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693259999999900000
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
        object Line18: TfrxLineView
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 1.236240000000000000
          Top = 64.251968500000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 398.291355670000000000
          Top = 64.251968500000000000
          Width = 86.929141180000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          Left = 554.590910000000000000
          Width = 162.511750000000000000
          Height = 51.023622050000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 566.149603860000000000
          Top = 1.889763779999999000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 567.149603860000000000
          Top = 16.629921260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 567.149603860000000000
          Top = 31.748031500000010000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 632.299215040000000000
          Top = 1.889763779999999000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 632.299215040000000000
          Top = 16.629921260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 632.299215040000000000
          Top = 31.748031500000010000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 52.574830000000010000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object MemoTitulo: TfrxMemoView
          Left = 1.220470000000000000
          Width = 550.464750000000000000
          Height = 51.023622050000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'Relat'#243'rio - VENDAS:'
            'Comiss'#227'o por Pedidos de Vendas')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 46.543290000000000000
          Top = 64.251968500000000000
          Width = 34.015770000000010000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 137.779405510000000000
          Top = 64.251968500000000000
          Width = 83.149606300000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 492.338900000000000000
          Top = 64.252010000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'COMISS'#195'O PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 661.417750000000000000
          Top = 64.252010000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FATURADO:')
          ParentFont = False
          WordWrap = False
        end
        object LblParametro: TfrxMemoView
          Left = 5.559060000000000000
          Top = 33.795300000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '<>')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 604.724800000000000000
          Top = 64.252010000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'APROVADO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          Left = 299.126160000000000000
          Top = 64.252010000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA FATURAMENTO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo27: TfrxMemoView
          Left = 90.708720000000000000
          Top = 64.252010000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NUMERO:')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        object SysMemo4: TfrxSysMemoView
          Left = 419.527559060000000000
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
            '[SUM(<DBComissaoPedidos."VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 282.905690000000000000
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
            'VALOR TOTAL DOS PEDIDOS:')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 282.905690000000000000
          Top = 14.338590000000010000
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
            'VALOR TOTAL DAS COMISS'#213'ES:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 419.527559055118000000
          Top = 14.338590000000010000
          Width = 56.692913385826800000
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
            '[SUM(<DBComissaoPedidos."COMISSAO_VALORVIAPEDIDO">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 26.456710000000000000
        ParentFont = False
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        Condition = 'DBComissaoPedidos."VENDEDOR"'
        object Memo16: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Fill.BackColor = 16053492
          Memo.UTF8W = (
            
              'VENDEDOR: [DBComissaoPedidos."VENDEDOR"]-[DBComissaoPedidos."VEN' +
              'DEDORNOME"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Height = 15.118120000000000000
        ParentFont = False
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 419.527595670000000000
          Width = 56.692913385826800000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DBComissaoPedidos."VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 15.118120000000010000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo3: TfrxSysMemoView
          Left = 502.677490000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DBComissaoPedidos."COMISSAO_VALORVIAPEDIDO">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object DB_FaturadoParcial: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDO_PARCIAL'
      'ORDER BY DATA, CLIENTE_NOME, REFERENCIA, ORDEM_GRADE')
    Left = 376
    Top = 336
  end
  object frxDB_FaturadoParcial: TfrxDBDataset
    UserName = 'FaturadoParcial'
    CloseDataSource = True
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA=DATA'
      'DATAENTREGA=DATAENTREGA'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'REFERENCIA=REFERENCIA'
      'IDENTIFICADOR=IDENTIFICADOR'
      'DESCRICAO=DESCRICAO'
      'COR=COR'
      'ORDEM_GRADE=ORDEM_GRADE'
      'TAMANHO=TAMANHO'
      'VLR_UNITARIO=VLR_UNITARIO'
      'QTDEVENDIDA=QTDEVENDIDA'
      'QTDECONFERIDA=QTDECONFERIDA'
      'QTDERESTANTE=QTDERESTANTE'
      'VALOR_QTDEVENDIDA=VALOR_QTDEVENDIDA'
      'VALOR_QTDECONFERIDA=VALOR_QTDECONFERIDA'
      'VALOR_QTDERESTANTE=VALOR_QTDERESTANTE'
      'QTDEFATURADA=QTDEFATURADA'
      'QTDERESTANTEFATURAR=QTDERESTANTEFATURAR'
      'VLRFATURADO=VLRFATURADO')
    DataSet = DB_FaturadoParcial
    BCDToCurrency = False
    Left = 376
    Top = 392
  end
  object fsr_FaturadoParcial: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847210000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 40786.578560162000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  LblParametro.Text  := <rptParametro>;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 377
    Top = 272
    Datasets = <
      item
        DataSet = frxDB_FaturadoParcial
        DataSetName = 'FaturadoParcial'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end>
    Variables = <
      item
        Name = ' diversas'
        Value = Null
      end
      item
        Name = 'rptParametro'
        Value = #39#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_FaturadoParcial
        DataSetName = 'FaturadoParcial'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 40.062992125984250000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'DATA'
          DataSet = frxDB_FaturadoParcial
          DataSetName = 'FaturadoParcial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FaturadoParcial."DATA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 459.212598430000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataField = 'QTDEVENDIDA'
          DataSet = frxDB_FaturadoParcial
          DataSetName = 'FaturadoParcial'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FaturadoParcial."QTDEVENDIDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 557.480314960000000000
          Width = 41.574803150000000000
          Height = 15.118110240000000000
          DataField = 'QTDERESTANTEFATURAR'
          DataSet = frxDB_FaturadoParcial
          DataSetName = 'FaturadoParcial'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FaturadoParcial."QTDERESTANTEFATURAR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 94.488188980000000000
          Width = 56.692888980000000000
          Height = 15.118120000000000000
          DataField = 'DATAENTREGA'
          DataSet = frxDB_FaturadoParcial
          DataSetName = 'FaturadoParcial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FaturadoParcial."DATAENTREGA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 4.472440940000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = frxDB_FaturadoParcial
          DataSetName = 'FaturadoParcial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FaturadoParcial."CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo32: TfrxMemoView
          Left = 410.078740157480300000
          Width = 41.574803149606300000
          Height = 15.118110240000000000
          DataField = 'TAMANHO'
          DataSet = frxDB_FaturadoParcial
          DataSetName = 'FaturadoParcial'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FaturadoParcial."TAMANHO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 159.960730000000000000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          DataField = 'REFERENCIA'
          DataSet = frxDB_FaturadoParcial
          DataSetName = 'FaturadoParcial'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FaturadoParcial."REFERENCIA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 210.094427170000000000
          Width = 132.283520710000000000
          Height = 15.118110240000000000
          DataField = 'DESCRICAO'
          DataSet = frxDB_FaturadoParcial
          DataSetName = 'FaturadoParcial'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FaturadoParcial."DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          Left = 604.724409450000000000
          Width = 49.133858270000000000
          Height = 15.118110240000000000
          DataField = 'VLRFATURADO'
          DataSet = frxDB_FaturadoParcial
          DataSetName = 'FaturadoParcial'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FaturadoParcial."VLRFATURADO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 665.196850393700700000
          Width = 49.133858267716540000
          Height = 15.118110240000000000
          DataField = 'VALOR_QTDERESTANTE'
          DataSet = frxDB_FaturadoParcial
          DataSetName = 'FaturadoParcial'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FaturadoParcial."VALOR_QTDERESTANTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 502.677165350000000000
          Width = 49.133858270000000000
          Height = 15.118110240000000000
          DataField = 'QTDEFATURADA'
          DataSet = frxDB_FaturadoParcial
          DataSetName = 'FaturadoParcial'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FaturadoParcial."QTDEFATURADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          Left = 351.496062992126000000
          Width = 52.913390710000000000
          Height = 15.118110240000000000
          DataField = 'COR'
          DataSet = frxDB_FaturadoParcial
          DataSetName = 'FaturadoParcial'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FaturadoParcial."COR"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 415.748300000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
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
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
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
        object Line18: TfrxLineView
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object MemoTitulo: TfrxMemoView
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
            'Relat'#243'rio - VENDAS:'
            'Faturamento Parcial de Pedidos (Anal'#237'tico)')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 40.062992125984250000
          Top = 62.362204720000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 459.212598430000000000
          Top = 62.362204720000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VENDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 502.677165350000000000
          Top = 62.362204720000000000
          Width = 49.133858270000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'FATURADO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 557.480314960629900000
          Top = 62.362204720000000000
          Width = 41.574803149606300000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'RESTANTE:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          Left = 555.590910000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 566.149603860000000000
          Top = 1.889763780000000000
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
          Left = 567.149603860000000000
          Top = 16.629921260000000000
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
          Left = 567.149603860000000000
          Top = 31.748031500000000000
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
          Left = 632.299215040000000000
          Top = 1.889763780000000000
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
          Left = 632.299215040000000000
          Top = 16.629921260000000000
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
          Left = 632.299215040000000000
          Top = 31.748031500000000000
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
        object Line1: TfrxLineView
          Align = baWidth
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 52.574830000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          Left = 94.488188980000000000
          Top = 62.362204720000000000
          Width = 60.472418980000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA ENTREGA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 4.472440940000000000
          Top = 62.362204720000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          Left = 351.496062992126000000
          Top = 62.362204720000000000
          Width = 30.236210710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COR:')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          Left = 410.078740157480300000
          Top = 62.362204720000000000
          Width = 41.574803149606300000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TAMANHO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 159.960730000000000000
          Top = 62.362204720000000000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 210.094427170000000000
          Top = 62.362204720000000000
          Width = 56.692920710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
          WordWrap = False
        end
        object LblParametro: TfrxMemoView
          Left = 4.779530000000000000
          Top = 35.015770000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '<>')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 604.724409448818900000
          Top = 62.362204720000000000
          Width = 49.133858267716540000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR CONF:')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Left = 665.196850393700700000
          Top = 62.362204720000000000
          Width = 49.133858267716540000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR REST:')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 79.370120240000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object SysMemo4: TfrxSysMemoView
          Left = 323.929133860000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcial."QTDEVENDIDA">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 323.929133860000000000
          Top = 30.236240000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcial."QTDERESTANTEFATURAR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 323.929133860000000000
          Top = 45.354360000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcial."VALOR_QTDECONFERIDA">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          Left = 323.929133860000000000
          Top = 60.472480000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcial."VALOR_QTDERESTANTE">,MasterData1)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 185.535560000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE VENDIDA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Left = 185.535560000000000000
          Top = 15.118120000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE CONFERIDA/FATURADA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          Left = 185.535560000000000000
          Top = 30.236240000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE RESTANTE A FATURAR:')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          Left = 185.535560000000000000
          Top = 45.354360000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL CONFERIDO/FATURADO:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 323.929133860000000000
          Top = 15.118120000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcial."QTDEFATURADA">,MasterData1)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 185.535560000000000000
          Top = 60.472480000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL RESTANTE A FATURAR:')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        Condition = 'FaturadoParcial."CLIENTE"'
        object Memo27: TfrxMemoView
          Align = baLeft
          Width = 366.614348980000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              'CLIENTE: [FaturadoParcial."CLIENTE"]-[FaturadoParcial."CLIENTE_N' +
              'OME"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897640240000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object SysMemo2: TfrxSysMemoView
          Left = 459.212598430000000000
          Width = 37.795275590000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcial."QTDEVENDIDA">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 557.480314960000000000
          Width = 41.574803150000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcial."QTDERESTANTEFATURAR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 502.677165350000000000
          Width = 49.133858270000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcial."QTDEFATURADA">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 17.338590000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo7: TfrxSysMemoView
          Left = 604.724409450000000000
          Width = 49.133858270000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcial."VLRFATURADO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 665.196850390000000000
          Width = 49.133858270000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcial."VALOR_QTDERESTANTE">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object fsr_PedidosEstoque: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847210000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 40820.497680787000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  LblParametro.Text  := <rptParametro>;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 473
    Top = 264
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end
      item
        DataSet = frxDB_PedidosEstoque
        DataSetName = 'Pedidos_X_Estoque'
      end>
    Variables = <
      item
        Name = ' diversas'
        Value = Null
      end
      item
        Name = 'rptParametro'
        Value = #39#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_PedidosEstoque
        DataSetName = 'Pedidos_X_Estoque'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 44.063080000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'DATA'
          DataSet = frxDB_PedidosEstoque
          DataSetName = 'Pedidos_X_Estoque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Pedidos_X_Estoque."DATA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 418.393700790000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataField = 'VLR_UNITARIO'
          DataSet = frxDB_PedidosEstoque
          DataSetName = 'Pedidos_X_Estoque'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Pedidos_X_Estoque."VLR_UNITARIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 471.307086610000000000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          DataField = 'QTDERESTANTE'
          DataSet = frxDB_PedidosEstoque
          DataSetName = 'Pedidos_X_Estoque'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Pedidos_X_Estoque."QTDERESTANTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 3.779490940000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = frxDB_PedidosEstoque
          DataSetName = 'Pedidos_X_Estoque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Pedidos_X_Estoque."CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          Left = 294.803054410000000000
          Width = 52.913390710000000000
          Height = 15.118110240000000000
          DataField = 'COR'
          DataSet = frxDB_PedidosEstoque
          DataSetName = 'Pedidos_X_Estoque'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Pedidos_X_Estoque."COR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo32: TfrxMemoView
          Left = 355.236091100000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataField = 'TAMANHO'
          DataSet = frxDB_PedidosEstoque
          DataSetName = 'Pedidos_X_Estoque'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Pedidos_X_Estoque."TAMANHO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 100.015770000000000000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          DataField = 'REFERENCIA'
          DataSet = frxDB_PedidosEstoque
          DataSetName = 'Pedidos_X_Estoque'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Pedidos_X_Estoque."REFERENCIA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 150.928997170000000000
          Width = 136.063050710000000000
          Height = 15.118110240000000000
          DataField = 'DESCRICAO'
          DataSet = frxDB_PedidosEstoque
          DataSetName = 'Pedidos_X_Estoque'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[Pedidos_X_Estoque."DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          Left = 538.582677170000000000
          Width = 41.574803150000000000
          Height = 15.118110240000000000
          DataField = 'QTDEESTOQUE'
          DataSet = frxDB_PedidosEstoque
          DataSetName = 'Pedidos_X_Estoque'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Pedidos_X_Estoque."QTDEESTOQUE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 608.503946770000000000
          Width = 56.692923150000000000
          Height = 15.118110240000000000
          DataField = 'VALOR_QTDEVENDIDA'
          DataSet = frxDB_PedidosEstoque
          DataSetName = 'Pedidos_X_Estoque'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Pedidos_X_Estoque."VALOR_QTDEVENDIDA"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
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
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
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
        object Line18: TfrxLineView
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object MemoTitulo: TfrxMemoView
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
            'Relat'#243'rio - VENDAS:'
            'Pedidos X  Estoque Disponivel')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 44.063080000000000000
          Top = 62.362204720000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 418.251929450000000000
          Top = 62.362204720000000000
          Width = 45.354335590000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR UNIT:')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 467.503871100000000000
          Top = 62.362204720000000000
          Width = 64.251983150000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE RESTANTE:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          Left = 555.590910000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 566.149603860000000000
          Top = 1.889763780000000000
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
          Left = 567.149603860000000000
          Top = 16.629921260000000000
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
          Left = 567.149603860000000000
          Top = 31.748031500000000000
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
          Left = 632.299215040000000000
          Top = 1.889763780000000000
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
          Left = 632.299215040000000000
          Top = 16.629921260000000000
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
          Left = 632.299215040000000000
          Top = 31.748031500000000000
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
        object Line1: TfrxLineView
          Align = baWidth
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 52.574830000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Left = 3.779490940000000000
          Top = 62.362204720000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          Left = 294.803054410000000000
          Top = 62.362204720000000000
          Width = 30.236210710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COR:')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          Left = 355.236091100000000000
          Top = 62.362204720000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TAMANHO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 100.015770000000000000
          Top = 62.362204720000000000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 150.928997170000000000
          Top = 62.362204720000000000
          Width = 56.692920710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
          WordWrap = False
        end
        object LblParametro: TfrxMemoView
          Left = 4.779530000000000000
          Top = 35.015770000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '<>')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 538.362153460000000000
          Top = 62.362204720000000000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ESTOQUE:')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Left = 623.622017950000000000
          Top = 62.362204720000000000
          Width = 45.354335590000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'FATURAR :')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 52.913410240000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object SysMemo4: TfrxSysMemoView
          Left = 323.929133860000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Pedidos_X_Estoque."QTDERESTANTE">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo10: TfrxSysMemoView
          Left = 323.929133860000000000
          Top = 32.015770000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Pedidos_X_Estoque."VALOR_QTDEVENDIDA">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          Left = 185.535560000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE RESTANTE:')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Left = 185.535560000000000000
          Top = 15.118120000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'EM ESTOQUE:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 323.929133860000000000
          Top = 15.118120000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Pedidos_X_Estoque."QTDEESTOQUE">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          Left = 185.535560000000000000
          Top = 32.015770000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL RESTANTE A FATURAR:')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        Condition = 'Pedidos_X_Estoque."CLIENTE"'
        object Memo27: TfrxMemoView
          Align = baLeft
          Width = 366.614348980000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              'CLIENTE: [Pedidos_X_Estoque."CLIENTE"]-[Pedidos_X_Estoque."CLIEN' +
              'TE_NOME"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677170240000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Align = baWidth
          Top = 19.338590000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo2: TfrxSysMemoView
          Left = 418.393700790000000000
          Width = 37.795275590000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Pedidos_X_Estoque."VLR_UNITARIO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 471.307086610000000000
          Width = 45.354330710000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Pedidos_X_Estoque."QTDERESTANTE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 538.582677170000000000
          Width = 41.574803150000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Pedidos_X_Estoque."QTDEESTOQUE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 608.503946770000000000
          Width = 56.692923150000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Pedidos_X_Estoque."VALOR_QTDEVENDIDA">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object db_PedidosEstoque: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDO_X_ESTOQUE'
      'ORDER BY DATA, CODIGO, CLIENTE_NOME, REFERENCIA, ORDEM_GRADE')
    Left = 472
    Top = 328
  end
  object frxDB_PedidosEstoque: TfrxDBDataset
    UserName = 'Pedidos_X_Estoque'
    CloseDataSource = True
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA=DATA'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'REFERENCIA=REFERENCIA'
      'IDENTIFICADOR=IDENTIFICADOR'
      'DESCRICAO=DESCRICAO'
      'COR=COR'
      'ORDEM_GRADE=ORDEM_GRADE'
      'TAMANHO=TAMANHO'
      'VLR_UNITARIO=VLR_UNITARIO'
      'QTDERESTANTE=QTDERESTANTE'
      'QTDEESTOQUE=QTDEESTOQUE'
      'VALOR_QTDEVENDIDA=VALOR_QTDEVENDIDA')
    DataSet = db_PedidosEstoque
    BCDToCurrency = False
    Left = 472
    Top = 384
  end
  object frxDB_PedidoGrade: TfrxDBDataset
    UserName = 'PedidoGrade'
    CloseDataSource = True
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'DATAENTREGA=DATAENTREGA'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'VENDEDOR=VENDEDOR'
      'TABELA=TABELA'
      'FORMAPAGTO=FORMAPAGTO'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TIPO=TIPO'
      'APROVADO=APROVADO'
      'ORDEMPRODUCAO=ORDEMPRODUCAO'
      'ORDEM_GRADE=ORDEM_GRADE'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'COR=COR'
      'TAMANHO=TAMANHO'
      'QUANTIDADE=QUANTIDADE'
      'QTDE_ENTREGUE=QTDE_ENTREGUE'
      'QTDE_RESTANTE=QTDE_RESTANTE'
      'VALOR_UNIT=VALOR_UNIT')
    DataSet = db_PedidoGrade
    BCDToCurrency = False
    Left = 216
    Top = 384
  end
  object db_PedidoGrade: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSGRADE'
      'ORDER BY DATA, CODIGO, CLIENTE, ORDEM_GRADE')
    Left = 216
    Top = 328
  end
  object fsr_PedidoGrade: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847210000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 40941.842422395840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   LblParametro.Text  := <rptParametro>;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 217
    Top = 264
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end
      item
        DataSet = frxDB_PedidoGrade
        DataSetName = 'PedidoGrade'
      end>
    Variables = <
      item
        Name = ' diversas'
        Value = Null
      end
      item
        Name = 'rptParametro'
        Value = #39#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 11.338580240000000000
        ParentFont = False
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_PedidoGrade
        DataSetName = 'PedidoGrade'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 93.354330710000000000
          Width = 49.133858270000000000
          Height = 11.338590000000000000
          DataField = 'DATA'
          DataSet = frxDB_PedidoGrade
          DataSetName = 'PedidoGrade'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PedidoGrade."DATA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 517.795275590000000000
          Width = 37.795275590000000000
          Height = 11.338580240000000000
          DataField = 'QUANTIDADE'
          DataSet = frxDB_PedidoGrade
          DataSetName = 'PedidoGrade'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PedidoGrade."QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 610.393700790000000000
          Width = 43.464566930000000000
          Height = 11.338580240000000000
          DataField = 'QTDE_RESTANTE'
          DataSet = frxDB_PedidoGrade
          DataSetName = 'PedidoGrade'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PedidoGrade."QTDE_RESTANTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 146.023622050000000000
          Width = 56.692913390000000000
          Height = 11.338590000000000000
          DataField = 'DATAENTREGA'
          DataSet = frxDB_PedidoGrade
          DataSetName = 'PedidoGrade'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PedidoGrade."DATAENTREGA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 1.889763780000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DataField = 'CODIGO'
          DataSet = frxDB_PedidoGrade
          DataSetName = 'PedidoGrade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PedidoGrade."CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          Left = 408.188976380000000000
          Width = 52.913390710000000000
          Height = 11.338580240000000000
          DataField = 'COR'
          DataSet = frxDB_PedidoGrade
          DataSetName = 'PedidoGrade'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PedidoGrade."COR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo32: TfrxMemoView
          Left = 472.440944880000000000
          Width = 37.795275590000000000
          Height = 11.338580240000000000
          DataField = 'TAMANHO'
          DataSet = frxDB_PedidoGrade
          DataSetName = 'PedidoGrade'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PedidoGrade."TAMANHO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 208.960730000000000000
          Width = 60.472450710000000000
          Height = 11.338580240000000000
          DataField = 'REFERENCIA'
          DataSet = frxDB_PedidoGrade
          DataSetName = 'PedidoGrade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PedidoGrade."REFERENCIA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 276.094427170000000000
          Width = 128.503990710000000000
          Height = 11.338580240000000000
          DataField = 'DESCRICAO'
          DataSet = frxDB_PedidoGrade
          DataSetName = 'PedidoGrade'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PedidoGrade."DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 660.637795280000000000
          Width = 52.913385830000000000
          Height = 11.338580240000000000
          DataField = 'VALOR_UNIT'
          DataSet = frxDB_PedidoGrade
          DataSetName = 'PedidoGrade'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PedidoGrade."VALOR_UNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 40.574803150000000000
          Width = 41.574805590000000000
          Height = 11.338590000000000000
          DataField = 'APROVADO'
          DataSet = frxDB_PedidoGrade
          DataSetName = 'PedidoGrade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[PedidoGrade."APROVADO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 561.259842520000000000
          Width = 45.354330710000000000
          Height = 11.338580240000000000
          DataField = 'QTDE_ENTREGUE'
          DataSet = frxDB_PedidoGrade
          DataSetName = 'PedidoGrade'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PedidoGrade."QTDE_ENTREGUE"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
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
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
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
        object Line18: TfrxLineView
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object MemoTitulo: TfrxMemoView
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
            'Relat'#243'rio - VENDAS:'
            'Relat'#243'rio de Pedidos (Grades)')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 93.354330710000000000
          Top = 65.362204720000000000
          Width = 49.133858270000000000
          Height = 11.338580240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 517.795275590551200000
          Top = 65.362204720000000000
          Width = 37.795275590000000000
          Height = 11.338580240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VENDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 561.259842519685000000
          Top = 65.362204720000000000
          Width = 45.354330710000000000
          Height = 11.338580240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ENTREGUE:')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 610.393700787401600000
          Top = 65.362204720000000000
          Width = 43.464566930000000000
          Height = 11.338580240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'RESTANTE:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          Left = 555.590910000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 566.149603860000000000
          Top = 1.889763780000000000
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
          Left = 567.149603860000000000
          Top = 16.629921260000000000
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
          Left = 567.149603860000000000
          Top = 31.748031500000000000
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
          Left = 632.299215040000000000
          Top = 1.889763780000000000
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
          Left = 632.299215040000000000
          Top = 16.629921260000000000
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
          Left = 632.299215040000000000
          Top = 31.748031500000000000
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
        object Line1: TfrxLineView
          Align = baWidth
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 52.574830000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          Left = 146.023622050000000000
          Top = 65.362204720000000000
          Width = 56.692913390000000000
          Height = 11.338580240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA ENTREGA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 1.889763780000000000
          Top = 65.362204720000000000
          Width = 34.015770000000000000
          Height = 11.338580240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          Left = 408.188976377952800000
          Top = 65.362204720000000000
          Width = 30.236210710000000000
          Height = 11.338580240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COR:')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          Left = 472.440944880000000000
          Top = 65.362204720000000000
          Width = 41.574805590000000000
          Height = 11.338580240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TAMANHO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 208.960730000000000000
          Top = 65.362204720000000000
          Width = 49.133860710000000000
          Height = 11.338580240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 276.094427170000000000
          Top = 65.362204720000000000
          Width = 56.692920710000000000
          Height = 11.338580240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Left = 660.637795280000000000
          Top = 65.362204720000000000
          Width = 52.913385830000000000
          Height = 11.338580240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR UNIT:')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 40.574803150000000000
          Top = 65.362204720000000000
          Width = 45.354335590000000000
          Height = 11.338580240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'APROVADO:')
          ParentFont = False
          WordWrap = False
        end
        object LblParametro: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '<>')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 79.370120240000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object SysMemo4: TfrxSysMemoView
          Left = 323.929133860000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<PedidoGrade."QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 323.929133860000000000
          Top = 29.236240000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<PedidoGrade."QTDE_RESTANTE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          Left = 323.929133860000000000
          Top = 45.472480000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<PedidoGrade."VALOR_UNIT">,MasterData1)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 185.535560000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE VENDIDA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Left = 185.535560000000000000
          Top = 14.118120000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE ENTREGUE:')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          Left = 185.535560000000000000
          Top = 29.236240000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE RESTANTE:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 323.929133860000000000
          Top = 14.118120000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<PedidoGrade."QTDE_ENTREGUE">,MasterData1)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 185.535560000000000000
          Top = 45.472480000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL:')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        Condition = 'PedidoGrade."CLIENTE"'
        object Memo27: TfrxMemoView
          Align = baLeft
          Width = 589.606618980000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'CLIENTE: [PedidoGrade."CLIENTE"]-[PedidoGrade."CLIENTE_NOME"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897640240000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Align = baWidth
          Top = 17.338590000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo2: TfrxSysMemoView
          Left = 517.795610000000000000
          Width = 37.795275590000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<PedidoGrade."QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 610.393700790000000000
          Width = 43.464566930000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<PedidoGrade."QTDE_RESTANTE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 660.637795280000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<PedidoGrade."VALOR_UNIT">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 561.259842520000000000
          Width = 45.354330710000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<PedidoGrade."QTDE_ENTREGUE">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDB_RankingProdutos: TfrxDBDataset
    UserName = 'dbRankingProdutos'
    CloseDataSource = True
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'VALOR_UNIT=VALOR_UNIT'
      'QUANTIDADE=QUANTIDADE'
      'VLR_TOTAL=VLR_TOTAL'
      'QTDE_ESTOQUE=QTDE_ESTOQUE')
    DataSet = db_RankingProdutos
    BCDToCurrency = False
    Left = 200
    Top = 176
  end
  object db_RankingProdutos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      '    DISTINCT'
      '    TBLGLOBAL.EMPRESA,'
      '    TBLGLOBAL.REFERENCIA,'
      '    TBLGLOBAL.DESCRICAO,'
      '    TBLGLOBAL.VALOR_UNIT,'
      '    QUANTIDADE=SUM(TBLGLOBAL.QUANTIDADE),'
      '    VLR_TOTAL=SUM(TBLGLOBAL.VLR_TOTAL),'
      '    QTDE_ESTOQUE=SUM(TBLGLOBAL.QTDE_ESTOQUE)'
      
        '    --PERCENTUALQTDE=( CAST(  SUM(TBLGLOBAL.QUANTIDADE) AS FLOAT' +
        ')   / ( SELECT  SUM(TBLQTDE.QUANTIDADE)    FROM  VIEW_PEDIDOS_VE' +
        'NDIDOS TBLQTDE WHERE  TBLQTDE.EMPRESA=TBLGLOBAL.EMPRESA AND  TBL' +
        'QTDE.CODIGO=TBLGLOBAL.CODIGO )  * 100) ,'
      
        '    --PERCENTUALVLR=(SUM(TBLGLOBAL.VLR_TOTAL)                   ' +
        '    / ( SELECT  SUM(TBLVLR.VLR_TOTAL)      FROM  VIEW_PEDIDOS_VE' +
        'NDIDOS TBLVLR  WHERE  TBLVLR.EMPRESA=TBLGLOBAL.EMPRESA  AND  TBL' +
        'VLR.CODIGO=TBLGLOBAL.CODIGO  )  * 100) '
      ''
      'FROM  VIEW_PEDIDOS_VENDIDOS TBLGLOBAL'
      'GROUP  BY '
      '    TBLGLOBAL.EMPRESA,'
      '    TBLGLOBAL.REFERENCIA,'
      '    TBLGLOBAL.DESCRICAO,'
      '    TBLGLOBAL.VALOR_UNIT'
      ''
      'ORDER BY QUANTIDADE DESC')
    Left = 200
    Top = 120
  end
  object fsr_RankingProdutos: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.600000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847210000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 40953.015792789400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  LblParametro.Text  := <rptParametro>;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 201
    Top = 56
    Datasets = <
      item
        DataSet = frxDB_RankingProdutos
        DataSetName = 'dbRankingProdutos'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end>
    Variables = <
      item
        Name = ' diversas'
        Value = Null
      end
      item
        Name = 'rptParametro'
        Value = #39#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_RankingProdutos
        DataSetName = 'dbRankingProdutos'
        RowCount = 0
        object Memo15: TfrxMemoView
          Left = 423.307086610000000000
          Width = 60.472440940000000000
          Height = 15.118110240000000000
          DataField = 'VALOR_UNIT'
          DataSet = frxDB_RankingProdutos
          DataSetName = 'dbRankingProdutos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRankingProdutos."VALOR_UNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 300.472440940000000000
          Width = 60.472440940000000000
          Height = 15.118110240000000000
          DataField = 'QUANTIDADE'
          DataSet = frxDB_RankingProdutos
          DataSetName = 'dbRankingProdutos'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRankingProdutos."QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 3.779490940000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataSet = frxDB_RankingProdutos
          DataSetName = 'dbRankingProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 43.322820000000000000
          Width = 60.472450710000000000
          Height = 15.118110240000000000
          DataField = 'REFERENCIA'
          DataSet = frxDB_RankingProdutos
          DataSetName = 'dbRankingProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRankingProdutos."REFERENCIA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 113.133697170000000000
          Width = 173.858350710000000000
          Height = 15.118110240000000000
          DataField = 'DESCRICAO'
          DataSet = frxDB_RankingProdutos
          DataSetName = 'dbRankingProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRankingProdutos."DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          Left = 642.519768030000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          DataField = 'QTDE_ESTOQUE'
          DataSet = frxDB_RankingProdutos
          DataSetName = 'dbRankingProdutos'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRankingProdutos."QTDE_ESTOQUE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 559.370078740000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          Visible = False
          DataSet = frxDB_RankingProdutos
          DataSetName = 'dbRankingProdutos'
          DisplayFormat.FormatStr = '###,##0%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRankingProdutos."PERCENTUALVLR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 363.968503940000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          Visible = False
          DataSet = frxDB_RankingProdutos
          DataSetName = 'dbRankingProdutos'
          DisplayFormat.FormatStr = '###,##0%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRankingProdutos."PERCENTUALQTDE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 491.338582680000000000
          Width = 60.472440940000000000
          Height = 15.118110240000000000
          DataField = 'VLR_TOTAL'
          DataSet = frxDB_RankingProdutos
          DataSetName = 'dbRankingProdutos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRankingProdutos."VLR_TOTAL"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 37.795260940000000000
        ParentFont = False
        Top = 287.244280000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
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
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693259999999900000
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
        object Line18: TfrxLineView
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object MemoTitulo: TfrxMemoView
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
            'Relat'#243'rio - VENDAS:'
            'RANKING DE PRODUTOS')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 423.307086610000000000
          Top = 62.362204720000000000
          Width = 60.472440940000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR UNIT:')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 300.472440940000000000
          Top = 62.362204720000000000
          Width = 60.472440940000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE VENDIDA:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          Left = 555.590910000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 566.149603860000000000
          Top = 1.889763779999999000
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
          Left = 567.149603860000000000
          Top = 16.629921260000000000
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
          Left = 567.149603860000000000
          Top = 31.748031500000010000
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
          Left = 632.299215040000000000
          Top = 1.889763779999999000
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
          Left = 632.299215040000000000
          Top = 16.629921260000000000
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
          Left = 632.299215040000000000
          Top = 31.748031500000010000
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
        object Line1: TfrxLineView
          Align = baWidth
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 52.574830000000010000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Left = 3.779490940000000000
          Top = 62.362204720000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ORDEM:')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 43.322820000000000000
          Top = 62.362204720000000000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 113.133697170000000000
          Top = 62.362204720000000000
          Width = 56.692920710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
          WordWrap = False
        end
        object LblParametro: TfrxMemoView
          Left = 4.779530000000000000
          Top = 35.015770000000010000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '<>')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 642.519768030000000000
          Top = 62.362204720000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ESTOQUE ATUAL:')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Left = 559.370078740000000000
          Top = 62.362204720000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          Visible = False
          AutoWidth = True
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL %:')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 363.968503940000000000
          Top = 62.472480000000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          Visible = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE %:')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          Left = 491.338582677165000000
          Top = 62.472480000000000000
          Width = 60.472440940000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL:')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 30.236230240000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object SysMemo2: TfrxSysMemoView
          Left = 300.472440940000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRankingProdutos."QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 491.338582680000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRankingProdutos."VLR_TOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDB_RankingProdutosGrade: TfrxDBDataset
    UserName = 'dbRankingProdutosGrade'
    CloseDataSource = True
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'COR=COR'
      'TAMANHO=TAMANHO'
      'VALOR_UNIT=VALOR_UNIT'
      'QUANTIDADE=QUANTIDADE'
      'VLR_TOTAL=VLR_TOTAL'
      'QTDE_ESTOQUE=QTDE_ESTOQUE')
    DataSet = db_RankingProdutosGrade
    BCDToCurrency = False
    Left = 480
    Top = 176
  end
  object db_RankingProdutosGrade: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      '    DISTINCT'
      '    TBLGLOBAL.EMPRESA,'
      '--    TBLGLOBAL.CODIGO,'
      '    TBLGLOBAL.REFERENCIA,'
      '    TBLGLOBAL.DESCRICAO,'
      '    TBLGLOBAL.COR,'
      '    TBLGLOBAL.TAMANHO,'
      '    TBLGLOBAL.VALOR_UNIT,'
      '    QUANTIDADE=SUM(TBLGLOBAL.QUANTIDADE),'
      '    VLR_TOTAL=SUM(TBLGLOBAL.VLR_TOTAL),'
      '    QTDE_ESTOQUE=SUM(TBLGLOBAL.QTDE_ESTOQUE)'
      ''
      'FROM  VIEW_PEDIDOS_VENDIDOS_GRADE TBLGLOBAL'
      'GROUP  BY '
      '    TBLGLOBAL.EMPRESA,'
      '--    TBLGLOBAL.CODIGO,'
      '    TBLGLOBAL.REFERENCIA,'
      '    TBLGLOBAL.DESCRICAO,'
      '    TBLGLOBAL.COR,'
      '    TBLGLOBAL.TAMANHO,'
      '    TBLGLOBAL.VALOR_UNIT'
      ''
      'ORDER BY QUANTIDADE DESC')
    Left = 480
    Top = 120
  end
  object fsr_RankingProdutosGrade: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.600000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847210000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 40953.587006863420000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  LblParametro.Text  := <rptParametro>;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 481
    Top = 56
    Datasets = <
      item
        DataSet = frxDB_RankingProdutosGrade
        DataSetName = 'dbRankingProdutosGrade'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end>
    Variables = <
      item
        Name = ' diversas'
        Value = Null
      end
      item
        Name = 'rptParametro'
        Value = #39#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 13.228346456692910000
        ParentFont = False
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_RankingProdutosGrade
        DataSetName = 'dbRankingProdutosGrade'
        RowCount = 0
        object Memo15: TfrxMemoView
          Left = 510.236276610000000000
          Width = 60.472440940000000000
          Height = 13.228346456692910000
          DataField = 'VALOR_UNIT'
          DataSet = frxDB_RankingProdutosGrade
          DataSetName = 'dbRankingProdutosGrade'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRankingProdutosGrade."VALOR_UNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 444.094580940000000000
          Width = 60.472440940000000000
          Height = 13.228346456692910000
          DataField = 'QUANTIDADE'
          DataSet = frxDB_RankingProdutosGrade
          DataSetName = 'dbRankingProdutosGrade'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRankingProdutosGrade."QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 3.779490940000000000
          Width = 22.677180000000000000
          Height = 13.228346456692910000
          DataSet = frxDB_RankingProdutosGrade
          DataSetName = 'dbRankingProdutosGrade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 43.322820000000000000
          Width = 60.472450710000000000
          Height = 13.228346456692910000
          DataField = 'REFERENCIA'
          DataSet = frxDB_RankingProdutosGrade
          DataSetName = 'dbRankingProdutosGrade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRankingProdutosGrade."REFERENCIA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 113.133697170000000000
          Width = 173.858350710000000000
          Height = 13.228346460000000000
          DataField = 'DESCRICAO'
          DataSet = frxDB_RankingProdutosGrade
          DataSetName = 'dbRankingProdutosGrade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRankingProdutosGrade."DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          Left = 642.519768030000000000
          Width = 68.031496060000000000
          Height = 13.228346456692910000
          DataField = 'QTDE_ESTOQUE'
          DataSet = frxDB_RankingProdutosGrade
          DataSetName = 'dbRankingProdutosGrade'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRankingProdutosGrade."QTDE_ESTOQUE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 578.267772680000000000
          Width = 60.472440940000000000
          Height = 13.228346456692910000
          DataField = 'VLR_TOTAL'
          DataSet = frxDB_RankingProdutosGrade
          DataSetName = 'dbRankingProdutosGrade'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRankingProdutosGrade."VLR_TOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 394.960629920000000000
          Width = 41.574803150000000000
          Height = 13.228346456692910000
          DataField = 'TAMANHO'
          DataSet = frxDB_RankingProdutosGrade
          DataSetName = 'dbRankingProdutosGrade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRankingProdutosGrade."TAMANHO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 302.362400000000000000
          Width = 86.929163150000000000
          Height = 13.228346456692910000
          DataField = 'COR'
          DataSet = frxDB_RankingProdutosGrade
          DataSetName = 'dbRankingProdutosGrade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRankingProdutosGrade."COR"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 37.795260940000000000
        ParentFont = False
        Top = 287.244280000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
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
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
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
        object Line18: TfrxLineView
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object MemoTitulo: TfrxMemoView
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
            'Relat'#243'rio - VENDAS:'
            'RANKING DE PRODUTOS (GRADE)')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 510.236276610000000000
          Top = 62.362204724409450000
          Width = 60.472440940000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR UNIT:')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 444.094580940000000000
          Top = 62.362204724409450000
          Width = 60.472440940000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE VENDIDA:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          Left = 555.590910000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 566.149603860000000000
          Top = 1.889763780000000000
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
          Left = 567.149603860000000000
          Top = 16.629921260000000000
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
          Left = 567.149603860000000000
          Top = 31.748031500000000000
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
          Left = 632.299215040000000000
          Top = 1.889763780000000000
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
          Left = 632.299215040000000000
          Top = 16.629921260000000000
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
          Left = 632.299215040000000000
          Top = 31.748031500000000000
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
        object Line1: TfrxLineView
          Align = baWidth
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 52.574830000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Left = 3.779490940000000000
          Top = 62.362204724409450000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ORDEM:')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 43.322820000000000000
          Top = 62.362204724409450000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 113.133697170000000000
          Top = 62.362204724409450000
          Width = 56.692920710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
          WordWrap = False
        end
        object LblParametro: TfrxMemoView
          Left = 4.779530000000000000
          Top = 35.015770000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '<>')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 642.519768030000000000
          Top = 62.362204724409450000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ESTOQUE ATUAL:')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          Left = 578.267772680000000000
          Top = 62.362204724409450000
          Width = 60.472440940000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL:')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 302.362400000000000000
          Top = 62.362204724409450000
          Width = 60.472440940000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COR:')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 394.960629921259800000
          Top = 62.362204720000000000
          Width = 41.574803149606300000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TAMANHO:')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 30.236230240000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object SysMemo2: TfrxSysMemoView
          Left = 444.094580940000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRankingProdutosGrade."QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 578.267772680000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRankingProdutosGrade."VLR_TOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object fsd_Pedidos: TfrxDBDataset
    UserName = 'dbPedidos'
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
      'APROVADO=APROVADO'
      'STATUS=STATUS'
      'ITENS_IMPORTADO=ITENS_IMPORTADO'
      'STATUSPERCENTUAL=STATUSPERCENTUAL'
      'IMPRESSO=IMPRESSO'
      'RESPONSAVEL=RESPONSAVEL'
      'ENTREGAPARCIAL=ENTREGAPARCIAL'
      'VALORPARCIAL=VALORPARCIAL'
      'PRODUZINDO=PRODUZINDO'
      'ORDEMPRODUCAO=ORDEMPRODUCAO'
      'EMPRESA_1=EMPRESA_1'
      'TABELA=TABELA'
      'APROVADO_1=APROVADO_1'
      'ORDEMPRODUCAO_1=ORDEMPRODUCAO_1'
      'PRODUZINDO_1=PRODUZINDO_1'
      'SELECIONADO=SELECIONADO')
    DataSet = db_Pedidos
    BCDToCurrency = False
    Left = 56
    Top = 176
  end
  object db_Pedidos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      ''
      'ORDER BY DATA, CLIENTE, CLIENTE_NOME')
    Left = 56
    Top = 112
  end
  object fsr_Pedidos: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847210000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 40954.701462824070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '     LblParametro.Text  := <rptParametro>;'
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 56
    Top = 56
    Datasets = <
      item
        DataSet = fsd_Pedidos
        DataSetName = 'dbPedidos'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end>
    Variables = <
      item
        Name = ' diversas'
        Value = Null
      end
      item
        Name = 'rptParametro'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = fsd_Pedidos
        DataSetName = 'dbPedidos'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 86.149630710000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataField = 'DATA'
          DataSet = fsd_Pedidos
          DataSetName = 'dbPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidos."DATA"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 1.889763780000000000
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          DataField = 'CODIGO'
          DataSet = fsd_Pedidos
          DataSetName = 'dbPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedidos."CODIGO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 261.464684090000000000
          Width = 132.283496300000000000
          Height = 15.118110240000000000
          DataField = 'CLIENTE_NOME'
          DataSet = fsd_Pedidos
          DataSetName = 'dbPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidos."CLIENTE_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 574.488188980000000000
          Width = 79.370078740000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'VLR_TOTAL'
          DataSet = fsd_Pedidos
          DataSetName = 'dbPedidos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedidos."VLR_TOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 661.417750000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DataField = 'STATUS'
          DataSet = fsd_Pedidos
          DataSetName = 'dbPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbPedidos."STATUS"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 204.653562830000000000
          Width = 49.133858270000000000
          Height = 15.118110240000000000
          DataField = 'APROVADO'
          DataSet = fsd_Pedidos
          DataSetName = 'dbPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbPedidos."APROVADO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 135.393700790000000000
          Width = 60.472436060000000000
          Height = 15.118110240000000000
          DataField = 'DATA_ENTREGA'
          DataSet = fsd_Pedidos
          DataSetName = 'dbPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidos."DATA_ENTREGA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 396.393940000000000000
          Width = 98.267726300000000000
          Height = 15.118110240000000000
          DataField = 'VENDEDOR_NOME'
          DataSet = fsd_Pedidos
          DataSetName = 'dbPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidos."VENDEDOR_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 497.007874020000000000
          Width = 71.811023620000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'QTDE_TOTAL'
          DataSet = fsd_Pedidos
          DataSetName = 'dbPedidos'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedidos."QTDE_TOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Left = 42.354360000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataField = 'DOCUMENTO'
          DataSet = fsd_Pedidos
          DataSetName = 'dbPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidos."DOCUMENTO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
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
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
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
        object Line18: TfrxLineView
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 86.149630710000000000
          Top = 64.251968500000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 574.488188976378000000
          Top = 64.251968500000000000
          Width = 79.370078740000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR DO PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          Left = 554.590910000000000000
          Width = 162.511750000000000000
          Height = 51.023622050000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 566.149603860000000000
          Top = 1.889763779999999000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 567.149603860000000000
          Top = 16.629921260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 567.149603860000000000
          Top = 31.748031500000010000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 632.299215040000000000
          Top = 1.889763779999999000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 632.299215040000000000
          Top = 16.629921260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 632.299215040000000000
          Top = 31.748031500000010000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 52.574830000000010000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object MemoTitulo: TfrxMemoView
          Left = 1.220470000000000000
          Width = 550.464750000000000000
          Height = 51.023622050000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'Relat'#243'rio - VENDAS:'
            'Pedidos de Vendas')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 1.889763780000000000
          Top = 64.251968500000000000
          Width = 34.015770000000010000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 261.464684090000000000
          Top = 64.251968500000000000
          Width = 83.149606300000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 661.417750000000000000
          Top = 64.251968503937000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FATURADO:')
          ParentFont = False
          WordWrap = False
        end
        object LblParametro: TfrxMemoView
          Left = 5.559060000000000000
          Top = 33.795300000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '<>')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 204.653562830000000000
          Top = 64.251968500000000000
          Width = 49.133858270000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'APROVADO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 130.393700787401600000
          Top = 64.251968500000000000
          Width = 68.031496062992130000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PREV. ENTREGA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 396.393940000000000000
          Top = 64.251968500000000000
          Width = 83.149606300000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDEDOR:')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 497.007874015748000000
          Top = 64.251968500000000000
          Width = 71.811023620000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE DO PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          Left = 42.354360000000000000
          Top = 64.252010000000000000
          Width = 37.795300000000010000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#218'MERO::')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 497.007874020000000000
          Top = 3.779527559999991000
          Width = 71.811023620000000000
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
            '[SUM(<dbPedidos."QTDE_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 574.488188980000000000
          Top = 3.779527559999991000
          Width = 79.370078740000000000
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
            '[SUM(<dbPedidos."VLR_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo2: TfrxSysMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 113.385853620000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Pedidos: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object fsr_ConferenciaPedidos: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847210000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 40954.701462824100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  LblParametro.Text  := <rptParametro>;'
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 56
    Top = 248
    Datasets = <
      item
        DataSet = frxBD_ConferenciaPedidos
        DataSetName = 'frx_dbConferenciaPedidos'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end>
    Variables = <
      item
        Name = ' diversas'
        Value = Null
      end
      item
        Name = 'rptParametro'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = frxBD_ConferenciaPedidos
        DataSetName = 'frx_dbConferenciaPedidos'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 118.354330710000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataField = 'DATA'
          DataSet = frxBD_ConferenciaPedidos
          DataSetName = 'frx_dbConferenciaPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dbConferenciaPedidos."DATA"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 74.889763780000000000
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          DataField = 'PEDIDO'
          DataSet = frxBD_ConferenciaPedidos
          DataSetName = 'frx_dbConferenciaPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dbConferenciaPedidos."PEDIDO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 328.685154090000000000
          Width = 154.960676300000000000
          Height = 15.118110240000000000
          DataField = 'CLIENTE_NOME'
          DataSet = frxBD_ConferenciaPedidos
          DataSetName = 'frx_dbConferenciaPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dbConferenciaPedidos."CLIENTE_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 630.425196850394000000
          Width = 79.370078740157500000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'VLR_TOTAL'
          DataSet = frxBD_ConferenciaPedidos
          DataSetName = 'frx_dbConferenciaPedidos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dbConferenciaPedidos."VLR_TOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 162.267716540000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DataField = 'DATAFATURAMENTO'
          DataSet = frxBD_ConferenciaPedidos
          DataSetName = 'frx_dbConferenciaPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dbConferenciaPedidos."DATAFATURAMENTO"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 552.944881889764000000
          Width = 71.811023622047210000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'QTDE_TOTAL'
          DataSet = frxBD_ConferenciaPedidos
          DataSetName = 'frx_dbConferenciaPedidos'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dbConferenciaPedidos."QTDE_TOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.000041500000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'CODIGO'
          DataSet = frxBD_ConferenciaPedidos
          DataSetName = 'frx_dbConferenciaPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dbConferenciaPedidos."CODIGO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 241.889920000000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DataField = 'NOTAFISCAL'
          DataSet = frxBD_ConferenciaPedidos
          DataSetName = 'frx_dbConferenciaPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dbConferenciaPedidos."NOTAFISCAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
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
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
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
        object Line18: TfrxLineView
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 118.354330710000000000
          Top = 64.251968500000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 630.425196850000000000
          Top = 64.251968500000000000
          Width = 79.370078740000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR DO PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          Left = 554.590910000000000000
          Width = 162.511750000000000000
          Height = 51.023622050000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 566.149603860000000000
          Top = 1.889763780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 567.149603860000000000
          Top = 16.629921260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 567.149603860000000000
          Top = 31.748031500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 632.299215040000000000
          Top = 1.889763780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 632.299215040000000000
          Top = 16.629921260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 632.299215040000000000
          Top = 31.748031500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 52.574830000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object MemoTitulo: TfrxMemoView
          Left = 1.220470000000000000
          Width = 550.464750000000000000
          Height = 51.023622050000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'Relat'#243'rio - VENDAS:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 74.889763780000000000
          Top = 64.251968500000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 328.685154090000000000
          Top = 64.251968500000000000
          Width = 83.149606300000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
          WordWrap = False
        end
        object LblParametro: TfrxMemoView
          Left = 5.559060000000000000
          Top = 33.795300000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '<>')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 162.267716540000000000
          Top = 64.251968500000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DT FATURAMENTO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 552.944881889764000000
          Top = 64.251968500000000000
          Width = 71.811023622047210000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE DO PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 64.252010000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONFER'#202'NCIA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 245.669450000000000000
          Top = 64.252010000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOTA FISCAL:')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 552.944881889764000000
          Top = 3.779527560000000000
          Width = 71.811023622047210000
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
            '[SUM(<frx_dbConferenciaPedidos."QTDE_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 630.425196850394000000
          Top = 3.779527560000000000
          Width = 79.370078740157500000
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
            '[SUM(<frx_dbConferenciaPedidos."VLR_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo2: TfrxSysMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 154.960683620000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Faturamentos: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object db_ConferenciaPedidos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOCONFERENCIA'
      ''
      'ORDER BY DATA, CLIENTE, CLIENTE_NOME')
    Left = 56
    Top = 304
  end
  object frxBD_ConferenciaPedidos: TfrxDBDataset
    UserName = 'frx_dbConferenciaPedidos'
    CloseDataSource = True
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
    DataSet = db_ConferenciaPedidos
    BCDToCurrency = False
    Left = 56
    Top = 368
  end
  object fsr_FaturadoParcialSintetico: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847200000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 40786.578560162000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  LblParametro.Text  := <rptParametro>;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 609
    Top = 272
    Datasets = <
      item
        DataSet = frxDB_FaturadoParcialSintetico
        DataSetName = 'FaturadoParcialSintetico'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end>
    Variables = <
      item
        Name = ' diversas'
        Value = Null
      end
      item
        Name = 'rptParametro'
        Value = #39#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_FaturadoParcialSintetico
        DataSetName = 'FaturadoParcialSintetico'
        RowCount = 0
        object Memo15: TfrxMemoView
          Left = 459.212598430000000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          DataField = 'QTDEVENDIDA'
          DataSet = frxDB_FaturadoParcialSintetico
          DataSetName = 'FaturadoParcialSintetico'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FaturadoParcialSintetico."QTDEVENDIDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 557.480314960000000000
          Width = 41.574803150000000000
          Height = 15.118110240000000000
          DataField = 'QTDERESTANTEFATURAR'
          DataSet = frxDB_FaturadoParcialSintetico
          DataSetName = 'FaturadoParcialSintetico'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FaturadoParcialSintetico."QTDERESTANTEFATURAR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 7.503885750000000000
          Width = 49.133860710000000000
          Height = 15.118110240000000000
          DataField = 'REFERENCIA'
          DataSet = frxDB_FaturadoParcialSintetico
          DataSetName = 'FaturadoParcialSintetico'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FaturadoParcialSintetico."REFERENCIA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          Left = 604.724409450000000000
          Width = 49.133858270000000000
          Height = 15.118110240000000000
          DataField = 'VLRFATURADO'
          DataSet = frxDB_FaturadoParcialSintetico
          DataSetName = 'FaturadoParcialSintetico'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FaturadoParcialSintetico."VLRFATURADO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 665.196850390000000000
          Width = 49.133858270000000000
          Height = 15.118110240000000000
          DataField = 'VALOR_QTDERESTANTE'
          DataSet = frxDB_FaturadoParcialSintetico
          DataSetName = 'FaturadoParcialSintetico'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FaturadoParcialSintetico."VALOR_QTDERESTANTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 502.677165350000000000
          Width = 49.133858270000000000
          Height = 15.118110240000000000
          DataField = 'QTDEFATURADA'
          DataSet = frxDB_FaturadoParcialSintetico
          DataSetName = 'FaturadoParcialSintetico'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FaturadoParcialSintetico."QTDEFATURADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 64.252010000000000000
          Width = 377.952970710000000000
          Height = 15.118110240000000000
          DataField = 'DESCRICAO'
          DataSet = frxDB_FaturadoParcialSintetico
          DataSetName = 'FaturadoParcialSintetico'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[FaturadoParcialSintetico."DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 60.472440940000000000
        ParentFont = False
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
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
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
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
        object Line18: TfrxLineView
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object MemoTitulo: TfrxMemoView
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
            'Relat'#243'rio - VENDAS:'
            'Faturamento Parcial de Pedidos (sint'#233'tico)')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 459.212598425197000000
          Top = 62.362204720000000000
          Width = 37.795275590551200000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VENDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 502.677165354331000000
          Top = 62.362204720000000000
          Width = 49.133858267716500000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CONFERIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 557.480314960630000000
          Top = 62.362204720000000000
          Width = 41.574803149606300000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'RESTANTE:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          Left = 555.590910000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 566.149603860000000000
          Top = 1.889763780000000000
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
          Left = 567.149603860000000000
          Top = 16.629921260000000000
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
          Left = 567.149603860000000000
          Top = 31.748031500000000000
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
          Left = 632.299215040000000000
          Top = 1.889763780000000000
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
          Left = 632.299215040000000000
          Top = 16.629921260000000000
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
          Left = 632.299215040000000000
          Top = 31.748031500000000000
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
        object Line1: TfrxLineView
          Align = baWidth
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 52.574830000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo9: TfrxMemoView
          Left = 7.503885750000000000
          Top = 62.362204720000000000
          Width = 49.133860710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA:')
          ParentFont = False
          WordWrap = False
        end
        object LblParametro: TfrxMemoView
          Left = 4.779530000000000000
          Top = 35.015770000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '<>')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 604.724409448819000000
          Top = 62.362204720000000000
          Width = 49.133858267716500000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR CONF:')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Left = 665.196850393701000000
          Top = 62.362204720000000000
          Width = 49.133858267716500000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR REST:')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 64.252010000000000000
          Top = 62.362204720000000000
          Width = 49.133860710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 79.370120240000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object SysMemo4: TfrxSysMemoView
          Left = 323.929133860000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcialSintetico."QTDEVENDIDA">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 323.929133860000000000
          Top = 30.236240000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<FaturadoParcialSintetico."QTDERESTANTEFATURAR">,MasterData' +
              '1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 323.929133860000000000
          Top = 45.354360000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcialSintetico."VLRFATURADO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          Left = 323.929133860000000000
          Top = 60.472480000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<FaturadoParcialSintetico."VALOR_QTDERESTANTE">,MasterData1' +
              ')]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 185.535560000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE VENDIDA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Left = 185.535560000000000000
          Top = 15.118120000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE CONFERIDA/FATURADA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          Left = 185.535560000000000000
          Top = 30.236240000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE RESTANTE A FATURAR:')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          Left = 185.535560000000000000
          Top = 45.354360000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL CONFERIDO/FATURADO:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 323.929133860000000000
          Top = 15.118120000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcialSintetico."QTDEFATURADA">,MasterData1)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 185.535560000000000000
          Top = 60.472480000000000000
          Width = 136.062994570000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL RESTANTE A FATURAR:')
          ParentFont = False
          WordWrap = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        Condition = 'FaturadoParcialSintetico."REFERENCIA"'
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897640240000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          Align = baWidth
          Top = 17.338590000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo11: TfrxSysMemoView
          Left = 459.212598430000000000
          Width = 37.795275590000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcialSintetico."QTDEVENDIDA">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo12: TfrxSysMemoView
          Left = 557.480314960000000000
          Width = 41.574803150000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<FaturadoParcialSintetico."QTDERESTANTEFATURAR">,MasterData' +
              '1)]')
          ParentFont = False
        end
        object SysMemo13: TfrxSysMemoView
          Left = 502.677165350000000000
          Width = 49.133858270000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcialSintetico."QTDEFATURADA">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo14: TfrxSysMemoView
          Left = 604.724409450000000000
          Width = 49.133858270000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FaturadoParcialSintetico."VLRFATURADO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo15: TfrxSysMemoView
          Left = 665.196850390000000000
          Width = 49.133858270000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<FaturadoParcialSintetico."VALOR_QTDERESTANTE">,MasterData1' +
              ')]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 400.630180000000000000
          Width = 49.133860710000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SUBTOTAL:')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object DB_FaturadoParcialSintetico: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      ''
      ''
      '       REFERENCIA'
      '      ,DESCRICAO'
      '      '
      '      ,QTDEVENDIDA=SUM(QTDEVENDIDA)'
      '      ,QTDECONFERIDA=SUM(QTDECONFERIDA)'
      '      ,QTDERESTANTE=SUM(QTDERESTANTE)'
      '      ,VALOR_QTDEVENDIDA=SUM(VALOR_QTDEVENDIDA)'
      '      ,VALOR_QTDECONFERIDA=SUM(VALOR_QTDECONFERIDA)'
      '      ,VALOR_QTDERESTANTE=SUM(VALOR_QTDERESTANTE)'
      ' '
      '      ,QTDEFATURADA=SUM(QTDEFATURADA)'
      '      ,QTDERESTANTEFATURAR=SUM(QTDERESTANTEFATURAR)'
      ''
      '      ,VLRFATURADO=SUM(VLRFATURADO)'
      ''
      ''
      'FROM VIEW_PEDIDO_PARCIALSINTETICO'
      'GROUP BY'
      '       REFERENCIA'
      '      ,DESCRICAO')
    Left = 608
    Top = 336
  end
  object frxDB_FaturadoParcialSintetico: TfrxDBDataset
    UserName = 'FaturadoParcialSintetico'
    CloseDataSource = True
    FieldAliases.Strings = (
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'QTDEVENDIDA=QTDEVENDIDA'
      'QTDECONFERIDA=QTDECONFERIDA'
      'QTDERESTANTE=QTDERESTANTE'
      'VALOR_QTDEVENDIDA=VALOR_QTDEVENDIDA'
      'VALOR_QTDECONFERIDA=VALOR_QTDECONFERIDA'
      'VALOR_QTDERESTANTE=VALOR_QTDERESTANTE'
      'QTDEFATURADA=QTDEFATURADA'
      'QTDERESTANTEFATURAR=QTDERESTANTEFATURAR'
      'VLRFATURADO=VLRFATURADO')
    DataSet = DB_FaturadoParcialSintetico
    BCDToCurrency = False
    Left = 608
    Top = 392
  end
end
