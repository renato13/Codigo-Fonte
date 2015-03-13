object FrmRelClientes: TFrmRelClientes
  Left = 303
  Top = 106
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rios Clientes/Fornecedores'
  ClientHeight = 491
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 450
    Width = 622
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BorderStyle = bsSingle
    TabOrder = 0
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
      Hint = 'Imprimir'
      Caption = 'Imprimir'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 44
    Width = 622
    Height = 406
    ActivePage = Tab_clientes
    Align = alClient
    TabOrder = 1
    object Tab_clientes: TTabSheet
      Caption = 'Clientes'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 241
        Height = 378
        Align = alLeft
        BorderStyle = bsSingle
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 1
          Top = 1
          Width = 235
          Height = 64
          Align = alTop
          Caption = 'Data de cadastro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label3: TLabel
            Left = 8
            Top = 24
            Width = 14
            Height = 13
            Caption = 'De'
          end
          object Label4: TLabel
            Left = 112
            Top = 24
            Width = 16
            Height = 13
            Caption = 'At'#233
          end
          object MskDataIni: TMaskEdit
            Left = 32
            Top = 20
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
            TabOrder = 0
            Text = '01/01/2012'
            OnExit = MskDataIniExit
          end
          object MskDataFim: TMaskEdit
            Left = 133
            Top = 20
            Width = 72
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
            Text = '  /  /    '
            OnExit = MskDataFimExit
          end
        end
        object RadioG: TRadioGroup
          Left = 1
          Top = 65
          Width = 235
          Height = 308
          Cursor = crHandPoint
          Align = alClient
          Caption = '&Selecione seu Relat'#243'rio'
          ItemIndex = 0
          Items.Strings = (
            'Lista Telef'#244'nica'
            'Listagem em ordem &num'#233'rica'
            'Listagem em ordem &alfab'#233'tica'
            'Cadastro ana&l'#237'tico'
            'Cidades'
            'Estados (UF)'
            'Etiquetas (Mala Direta)'
            'Vendedores'
            'Bloqueados')
          TabOrder = 1
          OnClick = RadioGClick
        end
      end
      object Panel3: TPanel
        Left = 241
        Top = 0
        Width = 373
        Height = 378
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 1
        object BoxRepresentante: TGroupBox
          Left = 1
          Top = 89
          Width = 367
          Height = 91
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Sele'#231#227'o de Representantes'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Visible = False
          object chkRepres: TCheckBox
            Left = 10
            Top = 20
            Width = 145
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todos os Vendedores'
            Checked = True
            State = cbChecked
            TabOrder = 1
            OnClick = chkRepresClick
          end
          object EditNomeVendedor: TEdit
            Left = 64
            Top = 60
            Width = 218
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
          end
          object EditVendedor: TIDBEditDialog
            Left = 10
            Top = 60
            Width = 52
            Height = 21
            Color = clWindow
            Enabled = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
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
              'TIPO='#39'VENDEDOR'#39
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
        end
        object BoxCidades: TGroupBox
          Left = 1
          Top = 180
          Width = 367
          Height = 60
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Sele'#231#227'o de Cidades'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          Visible = False
          object Label2: TLabel
            Left = 160
            Top = 20
            Width = 61
            Height = 13
            Caption = 'C'#243'digo IBGE'
          end
          object EditCidade: TEdit
            Left = 227
            Top = 16
            Width = 55
            Height = 21
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 6
            ParentFont = False
            TabOrder = 1
          end
          object chkCidades: TCheckBox
            Left = 10
            Top = 20
            Width = 105
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todas as Cidades'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkCidadesClick
          end
        end
        object BoxEstados: TGroupBox
          Left = 1
          Top = 240
          Width = 367
          Height = 77
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Sele'#231#227'o de Estado (UF)'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          Visible = False
          object Label1: TLabel
            Left = 11
            Top = 52
            Width = 33
            Height = 13
            Caption = 'Estado'
          end
          object chkEstados: TCheckBox
            Left = 10
            Top = 20
            Width = 105
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todos os Estados'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkEstadosClick
          end
          object EditEstado: TComboBox
            Left = 50
            Top = 49
            Width = 145
            Height = 19
            Style = csOwnerDrawFixed
            DropDownCount = 20
            Enabled = False
            ItemHeight = 13
            Sorted = True
            TabOrder = 1
            Items.Strings = (
              'AC-Acre'
              'AL-Alagoas'
              'AM-Amazonas'
              'AP-Amapa'
              'BA-Bahia'
              'CE-Ceara'
              'DF-Distrito Federal'
              'ES-Espirito Santo'
              'EX-Exterior'
              'GO-Goias'
              'MA-Maranhao'
              'MG-Minas Gerais'
              'MS-Mato Grosso do Sul'
              'MT-Mato Grosso'
              'PA-Para'
              'PB-Paraiba'
              'PE-Pernambuco'
              'PI-Piaui'
              'PR-Parana'
              'RJ-Rio de Janeiro'
              'RN-Rio Grande do Norte'
              'RO-Rondonia'
              'RR-Roraima'
              'RS-Rio Grande do Sul'
              'SC-Santa Catarina'
              'SE-Sergipe'
              'SP-Sao Paulo'
              'TO-Tocantins')
          end
        end
        object BoxClientes: TGroupBox
          Left = 1
          Top = 1
          Width = 367
          Height = 88
          Align = alTop
          Caption = 'Sele'#231#227'o de Clientes'
          TabOrder = 0
          object chkCliente: TCheckBox
            Left = 10
            Top = 20
            Width = 120
            Height = 13
            Cursor = crHandPoint
            Caption = 'Todos os Clientes'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkClienteClick
          end
          object EditClienteNome: TEdit
            Left = 92
            Top = 55
            Width = 265
            Height = 21
            Color = clBtnFace
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '***'
          end
          object EditCliente: TIDBEditDialog
            Left = 5
            Top = 55
            Width = 85
            Height = 21
            Color = clWindow
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
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
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              'TIPO='#39'CLIENTE'#39
              'AND'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_CLIENTES'
              'WHERE'
              'TIPO='#39'CLIENTE'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
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
        object RadioGroupOrdenar: TRadioGroup
          Left = 1
          Top = 317
          Width = 367
          Height = 56
          Align = alClient
          Caption = 'Ordenar'
          ItemIndex = 0
          Items.Strings = (
            'Vendedor/Cliente'
            'Cliente'
            'Cidade'
            'UF')
          TabOrder = 4
        end
      end
    end
    object Tab_fornecedores: TTabSheet
      Caption = 'Fornecedores'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RadioGForn: TRadioGroup
        Left = 0
        Top = 76
        Width = 614
        Height = 216
        Align = alTop
        Caption = '&Selecione seu Relat'#243'rio'
        ItemIndex = 0
        Items.Strings = (
          'Lista Telef'#244'nica'
          'Cidades'
          'Estados (UF)')
        TabOrder = 0
        OnClick = RadioGFornClick
      end
      object BoxCidadesForn: TGroupBox
        Left = 0
        Top = 292
        Width = 614
        Height = 60
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Sele'#231#227'o de Cidades'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        object Label8: TLabel
          Left = 253
          Top = 23
          Width = 61
          Height = 13
          Caption = 'C'#243'digo IBGE'
        end
        object DCodCidadeForn: TEdit
          Left = 320
          Top = 20
          Width = 55
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 6
          ParentFont = False
          TabOrder = 1
        end
        object chkCidadesForn: TCheckBox
          Left = 10
          Top = 24
          Width = 105
          Height = 17
          Cursor = crHandPoint
          Caption = 'Todas as Cidades'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = chkCidadesFornClick
        end
      end
      object BoxEstadosForn: TGroupBox
        Left = 0
        Top = 352
        Width = 614
        Height = 60
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Sele'#231#227'o de Estado (UF)'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        Visible = False
        object Label9: TLabel
          Left = 227
          Top = 22
          Width = 33
          Height = 13
          Caption = 'Estado'
        end
        object chkEstadosForn: TCheckBox
          Left = 10
          Top = 24
          Width = 105
          Height = 17
          Cursor = crHandPoint
          Caption = 'Todos os Estados'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = chkEstadosFornClick
        end
        object dCodEstadoForn: TComboBox
          Left = 264
          Top = 19
          Width = 145
          Height = 21
          Style = csDropDownList
          DropDownCount = 20
          Enabled = False
          Sorted = True
          TabOrder = 1
          Items.Strings = (
            'AC-Acre'
            'AL-Alagoas'
            'AM-Amazonas'
            'AP-Amapa'
            'BA-Bahia'
            'CE-Ceara'
            'DF-Distrito Federal'
            'ES-Espirito Santo'
            'EX-Exterior'
            'GO-Goias'
            'MA-Maranhao'
            'MG-Minas Gerais'
            'MS-Mato Grosso do Sul'
            'MT-Mato Grosso'
            'PA-Para'
            'PB-Paraiba'
            'PE-Pernambuco'
            'PI-Piaui'
            'PR-Parana'
            'RJ-Rio de Janeiro'
            'RN-Rio Grande do Norte'
            'RO-Rondonia'
            'RR-Roraima'
            'RS-Rio Grande do Sul'
            'SC-Santa Catarina'
            'SE-Sergipe'
            'SP-Sao Paulo'
            'TO-Tocantins')
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 614
        Height = 76
        Align = alTop
        Caption = 'Data de cadastro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label6: TLabel
          Left = 8
          Top = 24
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label7: TLabel
          Left = 112
          Top = 24
          Width = 16
          Height = 13
          Caption = 'At'#233
        end
        object MaskEdit1: TMaskEdit
          Left = 32
          Top = 20
          Width = 70
          Height = 21
          EditMask = '99/99/9999'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '01/01/2004'
        end
        object MaskEdit2: TMaskEdit
          Left = 133
          Top = 20
          Width = 72
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
          Text = '  /  /    '
        end
        object chkFornecedor: TCheckBox
          Left = 226
          Top = 15
          Width = 134
          Height = 13
          Cursor = crHandPoint
          Caption = 'Todos os Fornecedores'
          Checked = True
          State = cbChecked
          TabOrder = 2
          Visible = False
          OnClick = chkFornecedorClick
        end
        object EditFornecedor: TIDBEditDialog
          Left = 226
          Top = 46
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = False
          TabOrder = 3
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
          Left = 336
          Top = 46
          Width = 271
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 4
        end
      end
    end
  end
  inline FrameRelatorios1: TFrameRelatorios
    Left = 0
    Top = 0
    Width = 622
    Height = 44
    Align = alTop
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    TabStop = True
    ExplicitWidth = 622
    inherited Image3: TImage
      Width = 622
      ExplicitWidth = 622
    end
    inherited Image2: TImage
      Left = 549
      ExplicitLeft = 549
    end
    inherited LblBarraTitulo: TLabel
      Width = 255
      Caption = 'Relat'#243'rios Clientes/Fornecedores'
      ExplicitWidth = 255
    end
  end
end
