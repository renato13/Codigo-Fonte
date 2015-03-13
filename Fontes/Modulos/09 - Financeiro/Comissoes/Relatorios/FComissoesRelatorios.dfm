object FrmComissoesRelatorios: TFrmComissoesRelatorios
  Left = 217
  Top = 101
  Caption = 'Relat'#243'rio de Comiss'#245'es'
  ClientHeight = 470
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 470
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 414
      Width = 778
      Height = 51
      Align = alBottom
      BevelInner = bvRaised
      BorderStyle = bsSingle
      TabOrder = 2
      object BtnSair: TBitBtn
        Left = 95
        Top = 4
        Width = 89
        Height = 36
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
        Top = 4
        Width = 89
        Height = 36
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
    inline FrmFrameBarra1: TFrmFrameBarra
      Left = 1
      Top = 1
      Width = 778
      Height = 33
      Align = alTop
      TabOrder = 3
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 778
      ExplicitHeight = 33
      inherited W7Panel1: TPanel
        Width = 778
        Height = 33
        ExplicitWidth = 778
        ExplicitHeight = 33
        inherited LblBarraTitulo: TLabel
          Width = 177
          Caption = 'Relat'#243'rio de Comiss'#245'es'
          ExplicitWidth = 177
        end
      end
    end
    object Painel00: TPanel
      Left = 1
      Top = 34
      Width = 778
      Height = 135
      Align = alTop
      BevelWidth = 3
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 3
        Top = 3
        Width = 114
        Height = 129
        Align = alLeft
        Caption = 'Per'#237'odo'
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 26
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label4: TLabel
          Left = 8
          Top = 53
          Width = 16
          Height = 13
          Caption = 'At'#233
        end
        object MskDataFim: TMaskEdit
          Left = 32
          Top = 49
          Width = 75
          Height = 21
          EditMask = '99/99/9999;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '31/12/2010'
          OnExit = MskDataFimExit
        end
        object MskDataIni: TMaskEdit
          Left = 32
          Top = 22
          Width = 75
          Height = 21
          EditMask = '99/99/9999;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '01/01/2000'
          OnExit = MskDataIniExit
        end
      end
      object rAgrupar: TRadioGroup
        Left = 117
        Top = 3
        Width = 116
        Height = 129
        Align = alLeft
        Caption = 'Ordem:'
        ItemIndex = 0
        Items.Strings = (
          'Vencimento'
          'Emiss'#227'o'
          'Representante'
          'Cliente')
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 351
        Top = 3
        Width = 424
        Height = 129
        Align = alClient
        TabOrder = 2
        object BoxRepresentante: TGroupBox
          Left = 1
          Top = 1
          Width = 422
          Height = 64
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Sele'#231#227'o de Representantes'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object chkRepres: TCheckBox
            Left = 8
            Top = 27
            Width = 55
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todos'
            Checked = True
            State = cbChecked
            TabOrder = 1
            OnClick = chkRepresClick
          end
          object EditVendedor: TIDBEditDialog
            Left = 65
            Top = 27
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
            TabOrder = 0
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
          object EditNomeVendedor: TEdit
            Left = 140
            Top = 27
            Width = 245
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
        end
        object GroupBox1: TGroupBox
          Left = 1
          Top = 65
          Width = 422
          Height = 63
          Align = alBottom
          Caption = 'Sele'#231#227'o de &Cliente'
          TabOrder = 1
          object chkClientes: TCheckBox
            Left = 8
            Top = 27
            Width = 55
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todos'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkClientesClick
          end
          object EditCliente: TIDBEditDialog
            Left = 65
            Top = 27
            Width = 70
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
              '%WHERE%'
              '--AND'
              
                '--TIPO IN ('#39'FORNECEDOR'#39','#39'OFICINA'#39','#39'TERCEIRIZADO'#39','#39'TRANSPORTADORA' +
                #39','#39'CLIENTE'#39' )')
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
          object EditClienteNome: TEdit
            Left = 140
            Top = 27
            Width = 245
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
        end
      end
      object rgpMovimentacao: TRadioGroup
        Left = 233
        Top = 3
        Width = 118
        Height = 129
        Align = alLeft
        Caption = 'Movimenta'#231#227'o:'
        ItemIndex = 0
        Items.Strings = (
          'Tudo'
          'Cr'#233'dito'
          'D'#233'bito')
        TabOrder = 3
      end
    end
    object Painel01: TPanel
      Left = 1
      Top = 169
      Width = 778
      Height = 245
      Align = alClient
      BevelWidth = 3
      TabOrder = 1
      object RadioG: TRadioGroup
        Left = 406
        Top = 3
        Width = 369
        Height = 239
        Align = alClient
        Caption = '&Tipo de Relat'#243'rio'
        ItemIndex = 0
        Items.Strings = (
          '&Extrato de Comiss'#245'es')
        TabOrder = 1
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 3
        Width = 403
        Height = 239
        Align = alLeft
        TabOrder = 0
        object GroupBox5: TGroupBox
          Left = 6
          Top = 160
          Width = 380
          Height = 65
          Caption = 'Forma de Pagamento'
          TabOrder = 0
          object chkFormaPagto: TCheckBox
            Left = 9
            Top = 27
            Width = 48
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todos'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkFormaPagtoClick
          end
          object EditNomeFormaPagto: TEdit
            Left = 174
            Top = 27
            Width = 200
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
            TabOrder = 2
            Text = '***'
          end
          object EditPagamento: TIDBEditDialog
            Left = 63
            Top = 28
            Width = 105
            Height = 21
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '0'
            Visible = True
            EditType = etNumeric
            EmptyText = 'F8 - Cliente'
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
        object GroupBoxContabanco: TGroupBox
          Left = 6
          Top = 89
          Width = 380
          Height = 65
          Caption = 'Conta Corrente [creditada nas baixas]'
          TabOrder = 1
          object chkContaBancaria: TCheckBox
            Left = 9
            Top = 27
            Width = 53
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todas'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkContaBancariaClick
          end
          object EditContaCorrente: TEdit
            Left = 169
            Top = 27
            Width = 200
            Height = 19
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object EditContaBancaria: TIDBEditDialog
            Left = 64
            Top = 27
            Width = 105
            Height = 21
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = False
            TabOrder = 1
            Text = ''
            Visible = True
            LabelCaption = 'Creditar em Conta Corrente'
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
        end
        object GroupBoxContaCaixa: TGroupBox
          Left = 6
          Top = 18
          Width = 380
          Height = 65
          Caption = 'Conta Caixa'
          TabOrder = 2
          object chkContaCaixa: TCheckBox
            Left = 9
            Top = 27
            Width = 48
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todos'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkContaCaixaClick
          end
          object EditContaCaixa: TIDBEditDialog
            Left = 63
            Top = 27
            Width = 105
            Height = 21
            HelpKeyWord = ''
            Color = clWindow
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '0'
            Visible = True
            EditType = etAlphaNumeric
            EmptyText = 'Tecle F8'
            FocusColor = clBtnFace
            LabelCaption = 'Conta Caixa:'
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
            SQLdbFocusControl = EditContaCaixaNome
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
          object EditContaCaixaNome: TEdit
            Left = 174
            Top = 27
            Width = 200
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
            TabOrder = 2
            Text = '***'
          end
        end
      end
    end
  end
  object fsd_ComissaoPedidos: TfrxDBDataset
    UserName = 'DBComissaoPedidos'
    CloseDataSource = True
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'VENCIMENTO=VENCIMENTO'
      'DATA_PAGTO=DATA_PAGTO'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'DOCUMENTO=DOCUMENTO'
      'NOTAFISCAL=NOTAFISCAL'
      'CONFERENCIA=CONFERENCIA'
      'PEDIDO=PEDIDO'
      'PEDIDOII=PEDIDOII'
      'FORMA_PAGTO=FORMA_PAGTO'
      'CONTACORRENTE=CONTACORRENTE'
      'CONTACAIXA=CONTACAIXA'
      'DEPARTAMENTO=DEPARTAMENTO'
      'PLANO_CONTAS=PLANO_CONTAS'
      'ORIGEM=ORIGEM'
      'DC=DC'
      'COMISSAO=COMISSAO'
      'VALOR_VENDA=VALOR_VENDA'
      'VALOR=VALOR'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_SALDO=VALOR_SALDO'
      'HISTORICO=HISTORICO'
      'OBSERVACAO=OBSERVACAO'
      'ATRASADA=ATRASADA'
      'QUITADO=QUITADO'
      'SELECIONADO=SELECIONADO'
      'NATUREZA=NATUREZA')
    DataSet = db_ComissaoPedidos
    BCDToCurrency = False
    Left = 616
    Top = 320
  end
  object db_ComissaoPedidos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_FIN_COMISSOES'
      ''
      'ORDER BY DC, VENDEDOR_NOME')
    Left = 616
    Top = 256
  end
  object fsr_ComissaoPedidos: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847200000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 41045.846346018500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      ''
      ' nlVendas,                      '
      ' nlcreditos,'
      ' nldebitos,'
      ' nlsaldo,'
      ' nlpgPagos,'
      ' nlpgPagar,'
      ' nlpgSaldo'
      '       '
      '       '
      '  : Real;'
      '  '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      ' nlVendas   :=0;                       '
      ' nlcreditos :=0;'
      ' nldebitos  :=0;  '
      ' nlsaldo    :=0;  '
      ' nlpgPagos  :=0;  '
      ' nlpgPagar  :=0;'
      ' nlpgSaldo  :=0;    '
      '   '
      '  '
      ' LblParametro.Text  := <rptParametro>;'
      '   '
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
      ' if (<DBComissaoPedidos."DC">='#39'CREDITO'#39') Then'
      ' begin             '
      
        '    nlVendas   := nlVendas   + <DBComissaoPedidos."VALOR_VENDA">' +
        ';'
      '    nlcreditos := nlcreditos + <DBComissaoPedidos."VALOR">;'
      '    '
      ' end;'
      '   '
      ' if (<DBComissaoPedidos."DC">='#39'DEBITO'#39') Then'
      ' begin             '
      '    nldebitos := nldebitos + <DBComissaoPedidos."VALOR">;'
      ' end;              '
      '     '
      
        ' nlsaldo := nlcreditos - nldebitos;                             ' +
        '    '
      ' '
      ' '
      ' '
      
        ' // ------------------------------------------------------------' +
        '------'
      
        ' //  SOMAR VALORES PAGOS, A PAGAR E SALDO                       ' +
        '                                                                ' +
        '       '
      
        ' // ------------------------------------------------------------' +
        '------'
      '       '
      ''
      ' if (<DBComissaoPedidos."DC">='#39'CREDITO'#39') Then'
      ' Begin                     '
      '    if (<DBComissaoPedidos."QUITADO">='#39'N'#39') Then'
      '       nlpgPagar := nlpgPagar + <DBComissaoPedidos."VALOR">;    '
      '    '
      '    if (<DBComissaoPedidos."QUITADO">='#39'S'#39') Then'
      '       nlpgPagos := nlpgPagos + <DBComissaoPedidos."VALOR">;    '
      '   '
      '    //nlpgSaldo := nlpgPagar - nlpgPagos ;'
      '    nlpgSaldo := nlpgPagar ;'
      '              '
      ' end;'
      '    '
      '    '
      ''
      
        ' // ------------------------------------------------------------' +
        '------'
      
        ' //  APRESENTAR VALORES                                         ' +
        '                                                                ' +
        '      '
      
        ' // ------------------------------------------------------------' +
        '------'
      ''
      ' txtVendas.Text  := FormatFloat('#39'###,##0.00'#39',nlVendas);'
      '   '
      ' txtCreditos.Text  := FormatFloat('#39'###,##0.00'#39',nlcreditos);'
      ' txtDebitos.Text   := FormatFloat('#39'###,##0.00'#39',nldebitos);'
      '// txtTotal.Text     := FormatFloat('#39'###,##0.00'#39',nlsaldo);'
      ''
      ''
      ' txtpgPagar.Text   := FormatFloat('#39'###,##0.00'#39',nlpgPagar);'
      ' txtpgPagos.Text   := FormatFloat('#39'###,##0.00'#39',nlpgPagos);'
      ' txtpgSaldo.Text   := FormatFloat('#39'###,##0.00'#39',nlpgSaldo);'
      '    '
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 616
    Top = 200
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
        Height = 15.118120000000000000
        ParentFont = False
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
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
          Left = 220.913420000000000000
          Width = 41.574803150000000000
          Height = 15.118120000000000000
          DataField = 'PEDIDO'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBComissaoPedidos."PEDIDO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 315.779405510000000000
          Width = 143.622086300000000000
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
          Left = 591.496062992126000000
          Top = 0.000041500000000000
          Width = 79.370078740157500000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'VALOR'
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
            '[DBComissaoPedidos."VALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 462.992125980000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'VALOR_VENDA'
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
            '[DBComissaoPedidos."VALOR_VENDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          Left = 265.078850000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'PEDIDOII'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBComissaoPedidos."PEDIDOII"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 524.929133860000000000
          Width = 60.472440940000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'COMISSAO'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBComissaoPedidos."COMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 46.133890000000000000
          Top = 0.000041500000000000
          Width = 56.692913390000000000
          Height = 15.118120000000000000
          DataField = 'VENCIMENTO'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[DBComissaoPedidos."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 106.606299210000000000
          Top = 0.000041500000000000
          Width = 41.574803150000000000
          Height = 15.118120000000000000
          DataField = 'NOTAFISCAL'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBComissaoPedidos."NOTAFISCAL"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 152.401574800000000000
          Top = 0.000041500000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'CONFERENCIA'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBComissaoPedidos."CONFERENCIA"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 676.157480310000000000
          Width = 41.574803150000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'QUITADO'
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBComissaoPedidos."QUITADO"]')
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
        Top = 551.811380000000000000
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
          Left = 462.992125980000000000
          Top = 64.251968500000000000
          Width = 56.692913385826800000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL VENDA:')
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
            'Relat'#243'rio - VENDAS:'
            'COMISS'#213'ES DE REPRESENTANTES')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 220.913420000000000000
          Top = 64.251968500000000000
          Width = 41.574803150000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 315.779405510000000000
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
          Left = 591.496062990000000000
          Top = 64.252010000000000000
          Width = 79.370078740000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR COMISS'#195'O:')
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
        object Memo27: TfrxMemoView
          Left = 265.078850000000000000
          Top = 64.252010000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PEDIDO (2):')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 524.929133860000000000
          Top = 64.252010000000000000
          Width = 60.472440940000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'COMISS'#195'O:')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 46.133890000000000000
          Top = 64.252010000000000000
          Width = 56.692913390000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          Left = 106.606299210000000000
          Top = 64.252010000000000000
          Width = 41.574803150000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'NF-E:')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          Left = 152.401574800000000000
          Top = 64.252010000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CONFER'#202'NCIA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          Left = 676.157480310000000000
          Top = 64.252010000000000000
          Width = 41.574803150000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'QUITADO:')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 136.063080000000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 17.007874020000000000
          Top = 3.023622047244090000
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
            'VALOR TOTAL DAS VENDAS:')
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          Left = 17.007874020000000000
          Top = 17.385826771653500000
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
            'TOTAL DE CREDITOS:')
          ParentFont = False
          WordWrap = False
        end
        object txtCreditos: TfrxMemoView
          Left = 154.417440000000000000
          Top = 17.385826770000000000
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
          Left = 17.007874020000000000
          Top = 32.881889763779500000
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
            'TOTAL DE D'#201'BITOS:')
          ParentFont = False
          WordWrap = False
        end
        object txtDebitos: TfrxMemoView
          Left = 154.417440000000000000
          Top = 32.881889763779500000
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
          Left = 273.567100000000000000
          Top = 3.023622047244090000
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
            'VALORES QUITADOS:')
          ParentFont = False
          WordWrap = False
        end
        object txtpgPagos: TfrxMemoView
          Left = 410.409710000000000000
          Top = 3.023622047244090000
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
          Left = 274.889920000000000000
          Top = 17.385826770000000000
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
            'VALORES EM ABERTO:')
          ParentFont = False
          WordWrap = False
        end
        object txtpgPagar: TfrxMemoView
          Left = 411.732530000000000000
          Top = 17.385826771653500000
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
        object Memo40: TfrxMemoView
          Left = 274.889920000000000000
          Top = 32.881889760000000000
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
            'COMISS'#195'O LIQU'#205'DA A PAGAR:')
          ParentFont = False
          WordWrap = False
        end
        object txtpgSaldo: TfrxMemoView
          Left = 411.732530000000000000
          Top = 32.881889760000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
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
            '0,00')
          ParentFont = False
        end
        object txtVendas: TfrxMemoView
          Left = 154.960730000000000000
          Top = 3.023622050000000000
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
              'DEDOR_NOME"]')
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
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Align = baWidth
          Top = 15.118120000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo1: TfrxSysMemoView
          Left = 462.992125980000000000
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
            '[SUM(<DBComissaoPedidos."VALOR_VENDA">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 591.496062992126000000
          Width = 79.370078740157500000
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
            '[SUM(<DBComissaoPedidos."VALOR">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        Condition = 'DBComissaoPedidos."DC"'
        object Memo32: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataSet = fsd_ComissaoPedidos
          DataSetName = 'DBComissaoPedidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsItalic]
          Fill.BackColor = 16053492
          Memo.UTF8W = (
            'NATUREZA - [DBComissaoPedidos."DC"](S):')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
      end
    end
  end
end
