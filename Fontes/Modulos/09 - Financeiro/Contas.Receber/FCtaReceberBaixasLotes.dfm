object FrmCtaReceberBaixasLotes: TFrmCtaReceberBaixasLotes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Baixas a Receber por Lote'
  ClientHeight = 540
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 600
    Height = 36
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 600
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 600
      ExplicitWidth = 600
      inherited LblBarraTitulo: TLabel
        Width = 273
        Caption = 'Baixas de Titulos a Receber por Lote'
        ExplicitWidth = 273
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 600
    Height = 463
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 17
      Top = 6
      Width = 217
      Height = 83
      Caption = 'Vencimento'
      TabOrder = 0
      object Label4: TLabel
        Left = 110
        Top = 39
        Width = 17
        Height = 13
        Caption = 'At'#233
      end
      object Label3: TLabel
        Left = 10
        Top = 39
        Width = 13
        Height = 13
        Caption = 'De'
      end
      object MskDataFim: TMaskEdit
        Left = 133
        Top = 35
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
        TabOrder = 1
        Text = '  /  /    '
        OnChange = MskDataFimChange
        OnExit = MskDataFimExit
      end
      object MskDataIni: TMaskEdit
        Left = 29
        Top = 35
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
        Text = '  /  /    '
        OnChange = MskDataIniChange
        OnExit = MskDataIniExit
      end
    end
    object GroupBox2: TGroupBox
      Left = 240
      Top = 6
      Width = 333
      Height = 83
      Caption = 'Cliente'
      TabOrder = 1
      object chkCliente: TCheckBox
        Left = 8
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
      object EditClienteNome: TEdit
        Left = 76
        Top = 52
        Width = 246
        Height = 21
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
        Left = 8
        Top = 52
        Width = 65
        Height = 21
        HelpKeyWord = ''
        Color = clWindow
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = ''
        Visible = True
        OnChange = EditClienteChange
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
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditClienteNome
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT CODIGO, NOME FROM CAD_CLIENTES'
          'WHERE'
          'CODIGO=:CODIGO')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM VIEW_CLIENTES'
          'WHERE'
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
            DisplayLabel = 'NOME:'
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
    end
    object GroupBox3: TGroupBox
      Left = 17
      Top = 95
      Width = 556
      Height = 65
      Caption = 'Motivo de Baixa'
      TabOrder = 2
      object Edit1: TEdit
        Left = 90
        Top = 36
        Width = 455
        Height = 21
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
      object EditMotivoBaixa: TIDBEditDialog
        Left = 8
        Top = 36
        Width = 80
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
        Text = '0'
        Visible = True
        EditType = etNumeric
        FocusColor = clBtnFace
        LabelCaption = 'Motivo de Baixa'
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
          'SELECT * FROM CAD_MOTIVOBAIXA'
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
    end
    object GroupBox4: TGroupBox
      Left = 17
      Top = 166
      Width = 556
      Height = 65
      Caption = 'Conta Corrente'
      TabOrder = 3
      object Edit2: TEdit
        Left = 90
        Top = 38
        Width = 455
        Height = 21
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
      object EditContaCorrente: TIDBEditDialog
        Left = 8
        Top = 38
        Width = 80
        Height = 21
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        TabOrder = 0
        Text = '0'
        Visible = True
        EditType = etNumeric
        EmptyText = 'F8 - Pesquisar'
        LabelCaption = 'Conta Banc'#225'ria'
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
        SearchDialogFieldList = <
          item
            FieldName = 'DADOS_CONTA'
            WhereSyntax = 'DADOS_CONTA'
            DisplayLabel = 'CONTA CORRENTE:'
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
    object GroupBox5: TGroupBox
      Left = 17
      Top = 237
      Width = 556
      Height = 65
      Caption = 'Conta Caixa'
      TabOrder = 4
      object EditNomeContaCaixa: TEdit
        Left = 90
        Top = 37
        Width = 455
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '***'
      end
      object ContaCaixa: TIDBEditDialog
        Left = 8
        Top = 37
        Width = 80
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
        TabOrder = 0
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
    end
    object GroupBox6: TGroupBox
      Left = 17
      Top = 308
      Width = 556
      Height = 68
      Caption = 'Pagamento'
      TabOrder = 5
      object Label1: TLabel
        Left = 11
        Top = 20
        Width = 92
        Height = 13
        Caption = 'Tipo de Pagamento'
      end
      object ComboBox1: TComboBox
        Left = 11
        Top = 36
        Width = 145
        Height = 21
        Style = csDropDownList
        DropDownCount = 12
        TabOrder = 0
        OnChange = ComboBox1Change
        Items.Strings = (
          'DINHEIRO'
          'A VISTA'
          'A PRAZO'
          'CREDITO'
          'DEBITO'
          'DUPLICATA'
          'BOLETO'
          'DDA'
          'CHEQUE'
          'CARTEIRA')
      end
      object BitBtn3: TBitBtn
        Left = 231
        Top = 34
        Width = 115
        Height = 25
        Caption = 'Selecionar Titulos...'
        TabOrder = 1
        OnClick = BitBtn3Click
      end
      object btnCheque: TButton
        Left = 424
        Top = 34
        Width = 113
        Height = 25
        Caption = 'Informar Cheques...'
        TabOrder = 2
        Visible = False
        OnClick = btnChequeClick
      end
    end
    object GroupBox7: TGroupBox
      Left = 1
      Top = 408
      Width = 598
      Height = 54
      Align = alBottom
      Caption = 'Calculo:'
      Enabled = False
      TabOrder = 6
      object Image1: TImage
        Left = 2
        Top = 15
        Width = 594
        Height = 37
        Align = alClient
        Picture.Data = {
          0A544A504547496D616765CA070000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080023016803012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F30F
          ED0FF68FE747F687FB47F3AC3FED0F7A3FB43DEBFD35F667F9BDF55373FB43FD
          A3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF0068FE747F687F
          B47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FF00B4
          3DE8FED0F7A3D987D54DCFED0FF68FE747F687FB47F3AC3FED0F7A3FB43DE8F6
          61F55373FB43FDA3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF
          0068FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1F
          ED1FCEB0FF00B43DE8FED0F7A3D987D54DCFED0FF68FE747F687FB47F3AC3FED
          0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D
          987D54DCFED0FF0068FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373FB4
          3FDA3F9D1FDA1FED1FCEB0FF00B43DE8FED0F7A3D987D54DCFED0FF68FE747F6
          87FB47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FFB
          43DE8FED0F7A3D987D54DCFED0FF0068FE747F687FB47F3AC3FED0F7A3FB43DE
          8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FF00B43DE8FED0F7A3D987D54DCF
          ED0FF68FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FD
          A1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF0068FE747F687FB47F3AC3
          FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FF00B43DE8FED0
          F7A3D987D54DCFED0FF68FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373
          FB43FDA3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF0068FE74
          561FF687BD147B30FAA989FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD77FB2
          3E8BEAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
          F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
          27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
          EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
          F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
          27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
          EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
          F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
          27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
          EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
          F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
          27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
          EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
          F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
          27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
          EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
          F3A2B13FB43DE8A3D907D54C9F31BD4D1E637A9A28AE83D70F31BD4D1E637A9A
          28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F534798DEA68A2
          800F31BD4D1E637A9A28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A00
          3CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F534798DEA68A2800F3
          1BD4D1E637A9A28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F
          534798DEA68A2800F31BD4D1E637A9A28A003CC6F534798DEA68A2800F31BD4D
          1E637A9A28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F53479
          8DEA68A2800F31BD4D1E637A9A28A003CC6F5345145007FFD9}
        Stretch = True
        ExplicitTop = 13
        ExplicitWidth = 741
        ExplicitHeight = 59
      end
      object lblTotais: TLabel
        Left = 2
        Top = 15
        Width = 60
        Height = 23
        Align = alClient
        Alignment = taCenter
        Caption = 'R$ 0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 499
    Width = 600
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 17
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Baixar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 98
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object SPFIN_CTARECEBER_BAIXARLOTE: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPFIN_CTARECEBER_BAIXARLOTE'
    Left = 320
    Top = 184
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
        Size = 7340140
      end
      item
        Name = 'DTVENCINICIO'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'DTVENCFINAL'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'NCLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NMOTIVOBAIXA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NCONTACORRENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NCONTACAIXA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object ds_ctaReceber: TDataSource
    DataSet = db_ctaReceber
    Left = 491
    Top = 56
  end
  object db_ctaReceber: TFDQuery
    AfterPost = db_ctaReceberAfterPost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM FIN_CTARECEBER'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'FIN_CTARECEBER.QUITADO='#39'N'#39
      'AND'
      'FIN_CTARECEBER.CLIENTE BETWEEN :CL_INICIAL AND :CL_FINAL'
      'AND'
      'FIN_CTARECEBER.VENCIMENTO BETWEEN :DATA1 AND :DATA2')
    Left = 491
    Top = 16
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CL_INICIAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CL_FINAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATA1'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        DataType = ftDateTime
        ParamType = ptInput
      end>
    object db_ctaReceberEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_ctaReceberCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_ctaReceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object db_ctaReceberNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_ctaReceberSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_ctaReceberDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_ctaReceberVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_ctaReceberDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
      EditMask = '99/99/9999'
    end
    object db_ctaReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_ctaReceberPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_ctaReceberCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_ctaReceberVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_ctaReceberESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_ctaReceberTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_ctaReceberVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object db_ctaReceberVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
    end
    object db_ctaReceberVALOR_SALDO: TBCDField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
    end
    object db_ctaReceberCONTA_CREDITO: TIntegerField
      FieldName = 'CONTA_CREDITO'
    end
    object db_ctaReceberCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 30
    end
    object db_ctaReceberCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 30
    end
    object db_ctaReceberCHQ_CONTA_CORRENTE: TStringField
      FieldName = 'CHQ_CONTA_CORRENTE'
      Size = 30
    end
    object db_ctaReceberCHQ_NUMEROCHEQUE: TStringField
      FieldName = 'CHQ_NUMEROCHEQUE'
      Size = 30
    end
    object db_ctaReceberCHQ_CODCIDADE: TStringField
      FieldName = 'CHQ_CODCIDADE'
      Size = 200
    end
    object db_ctaReceberCHQ_EMITENTE: TStringField
      FieldName = 'CHQ_EMITENTE'
      Size = 200
    end
    object db_ctaReceberCHQ_NOMECIDADE_UF: TStringField
      FieldName = 'CHQ_NOMECIDADE_UF'
      Size = 200
    end
    object db_ctaReceberCHQ_DESTINO: TStringField
      FieldName = 'CHQ_DESTINO'
      Size = 200
    end
    object db_ctaReceberFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_ctaReceberDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_ctaReceberDESCONTO: TBCDField
      FieldName = 'DESCONTO'
    end
    object db_ctaReceberDESCONTO_DATA: TSQLTimeStampField
      FieldName = 'DESCONTO_DATA'
    end
    object db_ctaReceberENTRADA: TBCDField
      FieldName = 'ENTRADA'
    end
    object db_ctaReceberPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_ctaReceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_ctaReceberOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_ctaReceberGERARRECIBO: TStringField
      FieldName = 'GERARRECIBO'
      Size = 30
    end
    object db_ctaReceberGERARDUPLICATA: TStringField
      FieldName = 'GERARDUPLICATA'
      Size = 10
    end
    object db_ctaReceberGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      Size = 10
    end
    object db_ctaReceberGERARCOMPLEMENTO: TStringField
      FieldName = 'GERARCOMPLEMENTO'
      Size = 10
    end
    object db_ctaReceberGERARREMESSA: TStringField
      FieldName = 'GERARREMESSA'
      Size = 10
    end
    object db_ctaReceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_ctaReceberDESPESAS_BOLETO: TBCDField
      FieldName = 'DESPESAS_BOLETO'
    end
    object db_ctaReceberDESPESAS_JUROS: TBCDField
      FieldName = 'DESPESAS_JUROS'
    end
    object db_ctaReceberDESPESAS_MULTA: TBCDField
      FieldName = 'DESPESAS_MULTA'
    end
    object db_ctaReceberDESPESAS_CARTORIO: TBCDField
      FieldName = 'DESPESAS_CARTORIO'
    end
    object db_ctaReceberDESPESAS_TOTAL: TBCDField
      FieldName = 'DESPESAS_TOTAL'
    end
    object db_ctaReceberATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 10
    end
    object db_ctaReceberQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_ctaReceberMOTIVO_BAIXA: TIntegerField
      FieldName = 'MOTIVO_BAIXA'
    end
    object db_ctaReceberCOMPLEMENTAR: TStringField
      FieldName = 'COMPLEMENTAR'
      Size = 10
    end
    object db_ctaReceberDESCONTO_USER: TIntegerField
      FieldName = 'DESCONTO_USER'
    end
    object db_ctaReceberCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_ctaReceberPROTESTOSTATUS: TStringField
      FieldName = 'PROTESTOSTATUS'
      Size = 30
    end
    object db_ctaReceberDESCONTOVALOR: TBCDField
      FieldName = 'DESCONTOVALOR'
    end
    object db_ctaReceberDESPESAS_JUROSVALOR: TBCDField
      FieldName = 'DESPESAS_JUROSVALOR'
    end
    object db_ctaReceberSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 10
    end
  end
  object db_Update: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'UPDATE FIN_CTARECEBER SET SELECIONADO='#39'S'#39
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'FIN_CTARECEBER.QUITADO='#39'N'#39
      'AND'
      'FIN_CTARECEBER.CLIENTE BETWEEN :CL_INICIAL AND :CL_FINAL'
      'AND'
      'FIN_CTARECEBER.VENCIMENTO BETWEEN :DATA1 AND :DATA2')
    Left = 488
    Top = 136
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CL_INICIAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CL_FINAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATA1'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        DataType = ftDateTime
        ParamType = ptInput
      end>
  end
  object db_Somar: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT COUNT(*) AS REGISTROS , SUM(VALOR) AS VALORTOTAL FROM FIN' +
        '_CTARECEBER'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'FIN_CTARECEBER.QUITADO='#39'N'#39
      'AND'
      'FIN_CTARECEBER.CLIENTE BETWEEN :CL_INICIAL AND :CL_FINAL'
      'AND'
      'FIN_CTARECEBER.VENCIMENTO BETWEEN :DATA1 AND :DATA2'
      'AND'
      'FIN_CTARECEBER.SELECIONADO='#39'S'#39)
    Left = 488
    Top = 216
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CL_INICIAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CL_FINAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATA1'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        DataType = ftDateTime
        ParamType = ptInput
      end>
  end
end
