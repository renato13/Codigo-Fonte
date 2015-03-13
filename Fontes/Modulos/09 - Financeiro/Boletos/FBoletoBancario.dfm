object FrmBoletoBancario: TFrmBoletoBancario
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Boleto Banc'#225'rio [Gerar e Imprimir]'
  ClientHeight = 512
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 461
    Width = 832
    Height = 51
    Align = alBottom
    BevelInner = bvRaised
    BorderStyle = bsSingle
    TabOrder = 3
    object LblTotal: TLabel
      Left = 672
      Top = 22
      Width = 44
      Height = 13
      Caption = 'R$ 0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object BtnSair: TBitBtn
      Left = 350
      Top = 4
      Width = 90
      Height = 39
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
      TabOrder = 3
      OnClick = BtnSairClick
    end
    object BtnImprimir: TBitBtn
      Left = 1
      Top = 4
      Width = 105
      Height = 39
      Cursor = crHandPoint
      Hint = 'Relat'#243'rios...'
      Caption = 'Gerar Boletos...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnImprimirClick
    end
    object BtnRemessa: TBitBtn
      Left = 105
      Top = 4
      Width = 125
      Height = 39
      Cursor = crHandPoint
      Hint = 'Relat'#243'rios...'
      Caption = 'Gerar Remessa...'
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000010000004100000D88
        FF005DF68700D5820300A5420000BDD7DA002DC12F00EFCD860086DDFF006666
        0000E3AA470069D4FF00B6C4B70000990000FFE1E100C57B2E0033CCFF003ECA
        5A0056A01C008CCA8C00E2DDCD00E0A33A00C4F2FF00C36A0000E9BE6B000089
        0000339933002FC4FF00A8FFC500E6E5D200A0E8FF0078A9C900E0C0AF009933
        000094FFB700FFF7F70066FF9900206420005FD4600044CF4C00DC952100D8F4
        DB00ADE7AD00E2C5A000B65800001FB62100CE8B3D0085C08500E6B55A00507E
        500066CCFF00A4CFDA0023BDFF0066996600E2F7FF00169816005ADB6B00FBF2
        E000D99E4E00C3FFD70034C3410093DB9300CA9C4A007BD9FF00CAF1CA00FED3
        A0008FDFFF00CC7600007CFFA800EBFFF200266D030013AC1300FBF1C7000066
        0000ECC5780049D24A0081F59E00F4DEB4004763000052CEFF00CCFFFF003FB0
        5000DB8C1400DBF7EF00FFEFEF00EFD0960072E07E00ADE7FF0060AC35004FE3
        6400B9CDC8001B95FF00DEA95600BF6F1F006EBC3B00E5B05200F6E3C200BD62
        00004ACCFF00EFF6EF004AB83D003AA0150053EA7400CFB95A00AC4C00009FB9
        9F0099DDFF00B6FFCE0076F29300DE9C2E003CC7FF00005A000048E15D0033CC
        33003AD341007DCE7000E8B8610015A00A0073D6FF0083E18900CB864000F1D3
        A40056D05400FFFFFF0074A72D00137A1D0099EAA900FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000007F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F405672717A7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F2A2771384C4471407F7F7F7F7F7F7F7F7F7F7F7F7F7F7F5479
        0707487F7F2A3C06566B6B224470273D3D297F7F7F7F7F7F7F7F7F7F7F205D28
        2828523E642D38226B3B1C22442466703C2D1A2F637F7F7F7F7F7F7F2B215D15
        15156D752D6C221C6B3B1C2244242402667071377D137F7F7F7F7F7F04040F5F
        5F5F122D2444221C6B3B1C2244242402667072067549357F7F7F7F7F21210F5F
        5F5F65264444221C6B3B1C224424240266707206470D49357F7F7F7F04040F30
        30307C06293B1C1C6B3B1C22223B6B226C597206470D196F0C7F7F7F04040F74
        7474745E473D63533B3B1C22532A77777E6B6C27470D1949257F7F7F04040F18
        1818184D29582D7329453B6B45717373642D514C38751949007F7F7F04047818
        1818184D7B3A675E06262A4540711D0E0E14097D51661949007F7F7F68682E4A
        4A4A4A4D7B783074792A7A724B4B0E0E0E544361467D1149007F7F7F68682E4A
        4A4A4A4D7B203A784D23231D401D0E0E0E54434361495149257F7F7F68682E4A
        4A4A4A557B7B7B7B7B7B235454540E0E0E540343174E1A7D317F7F7F2C2C2E07
        0707070707606039237B7B235454540E0E54520343097D6F697F7F7F2C2C3E07
        07070707074A4A4A4A4A55554D6060232379280343096F257F7F7F7F2C2C3A55
        550707070707074A4A4A1818187474305F0A6D5203096F0C7F7F7F7F2C2C3A55
        551F013F573939606055551818187430305F15280309697F7F7F7F7F61613A55
        5501343434624F084257167B2339484D55180A6D52437F7F7F7F7F7F61613A79
        0C016E6E6E6E1B1B1B1B1B1B1B4F4F084236551528037F7F7F7F7F7F17175C79
        0C5B4F626262626262626E6E6E6E6E6E6E6E540A6D527F7F7F7F7F7F17175C4D
        5A5B3232324F4F4F4F4F4F4F4F4F4F626262160A6D527F7F7F7F7F7F17175C4D
        5A5B0B0B0B0B0B0B0B0B0B0B323232323232365F15287F7F7F7F7F7F4343304D
        5A5B3F767676767676767676760B0B0B0B0B365F0A287F7F7F7F7F7F43433060
        5A5B3F3F3F3F3F3F3F3F3F3F3F3F76767676365F0A6D7F7F7F7F7F7F43437448
        5A5B0808080808083F3F3F3F3F3F3F3F3F3F365F5F6D7F7F7F7F7F7F03037448
        055B08080808080808080808080808080808365F5F157F7F7F7F7F7F03524A48
        055B0808080808080808080808080808080836305F157F7F7F7F7F7F52157448
        055B4242420808080808080808080808080836305F157F7F7F7F7F7F4A740741
        1408505016161616571E1E1E1E424242424236305F747F7F7F7F7F7F234D4133
        08086A575757571616161636365050505016454A4A397F7F7F7F7F7F7F7F7F7F
        7F7F237B36365353575757576A080808576339237F7F7F7F7F7F}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnRemessaClick
    end
    object BitBtn1: TBitBtn
      Left = 229
      Top = 4
      Width = 121
      Height = 39
      Caption = 'Abrir Pasta de Boletos'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 36
    Width = 832
    Height = 25
    Align = alTop
    TabOrder = 4
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 209
    Width = 832
    Height = 252
    Align = alClient
    Caption = 'Registros'
    TabOrder = 2
    object GridViewBoletos: TDBGrid
      Left = 2
      Top = 15
      Width = 828
      Height = 235
      Align = alClient
      Color = 14811135
      DataSource = ds_ViewBoletos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEnter = GridViewBoletosEnter
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data:'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento:'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Caption = 'Documento:'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOSSONUMERO'
          Title.Caption = 'Nosso Numero'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente:'
          Width = 253
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor:'
          Width = 89
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'GERARBOLETO'
          Title.Caption = 'Impresso:'
          Width = 63
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'GERARREMESSA'
          Title.Caption = 'Remessa:'
          Width = 68
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 61
    Width = 832
    Height = 56
    Align = alTop
    BorderWidth = 3
    TabOrder = 0
    object BoxLayoutArquivo: TRadioGroup
      Left = 253
      Top = 4
      Width = 575
      Height = 48
      Cursor = crHandPoint
      Align = alClient
      Caption = '&Layout do Arquivo'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'CNAB240'
        'CNAB400')
      TabOrder = 1
    end
    object BoxVencimento: TGroupBox
      Left = 4
      Top = 4
      Width = 249
      Height = 48
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Periodo de &Vencimentos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 9
        Top = 23
        Width = 14
        Height = 13
        Caption = 'De'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 104
        Top = 23
        Width = 16
        Height = 13
        Caption = 'At'#233
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dtInicial: TMaskEdit
        Left = 25
        Top = 19
        Width = 69
        Height = 21
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
        OnExit = dtInicialExit
      end
      object dtFinal: TMaskEdit
        Left = 124
        Top = 19
        Width = 72
        Height = 21
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = dtFinalExit
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 832
    Height = 36
    Align = alTop
    TabOrder = 5
    ExplicitWidth = 832
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 832
      Height = 36
      ExplicitWidth = 832
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 121
        Caption = 'Boleto Banc'#225'rio'
        ExplicitWidth = 121
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 117
    Width = 832
    Height = 92
    Align = alTop
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 336
      Top = 1
      Width = 495
      Height = 90
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Co&nfigura'#231#227'o do Boleto'
      TabOrder = 0
      DesignSize = (
        495
        90)
      object ComboCedentes: TDBLookupComboBox
        Left = 2
        Top = 67
        Width = 491
        Height = 21
        Cursor = crHandPoint
        Align = alBottom
        Color = clBtnFace
        DropDownRows = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'DESCRICAO'
        ListField = 'DESCRICAO'
        ListSource = ds_BoletoConfigurar
        NullValueKey = 46
        ParentFont = False
        TabOrder = 1
        OnEnter = ComboCedentesEnter
      end
      object EditLocalPagamento: TLabeledEdit
        Left = 5
        Top = 38
        Width = 484
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 96
        EditLabel.Height = 13
        EditLabel.Caption = 'Local de pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'AT'#201' O VENCIMENTO PAG'#193'VEL EM QUALQUER BANCO'
      end
    end
    object chkCliente: TCheckBox
      Left = 5
      Top = 13
      Width = 105
      Height = 13
      Cursor = crHandPoint
      Caption = 'Todos os Clientes'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = chkClienteClick
    end
    object EditClienteNome: TEdit
      Left = 80
      Top = 48
      Width = 250
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
      Top = 48
      Width = 69
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
      TabOrder = 3
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
  object ds_ViewBoletos: TDataSource
    DataSet = db_ViewBoletos
    Left = 80
    Top = 320
  end
  object db_ViewBoletos: TFDQuery
    AfterOpen = db_ViewBoletosAfterOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_BOLETOS')
    Left = 80
    Top = 272
    object db_ViewBoletosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_ViewBoletosNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object db_ViewBoletosDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_ViewBoletosNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_ViewBoletosDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object db_ViewBoletosVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
    end
    object db_ViewBoletosVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object db_ViewBoletosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_ViewBoletosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ReadOnly = True
      Size = 200
    end
    object db_ViewBoletosVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_ViewBoletosNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ReadOnly = True
      Size = 200
    end
    object db_ViewBoletosGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      ReadOnly = True
      Size = 10
    end
    object db_ViewBoletosGERARREMESSA: TStringField
      FieldName = 'GERARREMESSA'
      ReadOnly = True
      Size = 10
    end
    object db_ViewBoletosENDERECO: TStringField
      FieldName = 'ENDERECO'
      ReadOnly = True
      Size = 200
    end
    object db_ViewBoletosNUMERO: TStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 30
    end
    object db_ViewBoletosENDERECO_NUMERO: TStringField
      FieldName = 'ENDERECO_NUMERO'
      ReadOnly = True
      Size = 232
    end
    object db_ViewBoletosCEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 30
    end
    object db_ViewBoletosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ReadOnly = True
      Size = 30
    end
    object db_ViewBoletosRG_IE: TStringField
      FieldName = 'RG_IE'
      ReadOnly = True
      Size = 30
    end
    object db_ViewBoletosTIPO: TStringField
      FieldName = 'TIPO'
      ReadOnly = True
      Size = 30
    end
    object db_ViewBoletosNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      ReadOnly = True
      Size = 200
    end
    object db_ViewBoletosUF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      Size = 30
    end
    object db_ViewBoletosPLN_CONTA: TStringField
      FieldName = 'PLN_CONTA'
      Size = 30
    end
    object db_ViewBoletosPLN_CONTA_NOME: TStringField
      FieldName = 'PLN_CONTA_NOME'
      ReadOnly = True
      Size = 200
    end
  end
  object db_BoletoConfigurar: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_CEDENTES')
    Left = 608
    Top = 328
  end
  object ds_BoletoConfigurar: TDataSource
    DataSet = db_BoletoConfigurar
    Left = 608
    Top = 360
  end
  object db_CtaReceberBaixar: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CTARECEBER')
    Left = 608
    Top = 216
  end
  object db_ContaCorrenteBoleto: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CONTA_CORRENTE_BOLETO'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 608
    Top = 272
    ParamData = <
      item
        Name = 'CODIGO'
      end>
  end
  object ACBrBoleto1: TACBrBoleto
    Banco.Numero = 33
    Banco.TamanhoMaximoNossoNum = 12
    Banco.TipoCobranca = cobSantander
    Cedente.TipoInscricao = pJuridica
    NomeArqRemessa = 'Sisteria'
    DirArqRemessa = 'C:'
    NomeArqRetorno = 'Sisteria'
    DirArqRetorno = 'C:'
    NumeroArquivo = 0
    LeCedenteRetorno = True
    ACBrBoletoFC = ACBrBoleto_FastReport
    Left = 208
    Top = 216
  end
  object db_ViewBoletosRemessas: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_BOLETOS'
      ' WHERE'
      'GERARREMESSA in ('#39'S'#39','#39'SIM'#39')')
    Left = 208
    Top = 272
    object db_ViewBoletosRemessasCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_ViewBoletosRemessasNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object db_ViewBoletosRemessasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_ViewBoletosRemessasNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_ViewBoletosRemessasDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object db_ViewBoletosRemessasVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
    end
    object db_ViewBoletosRemessasVALOR: TBCDField
      FieldName = 'VALOR'
    end
    object db_ViewBoletosRemessasCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_ViewBoletosRemessasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ReadOnly = True
      Size = 200
    end
    object db_ViewBoletosRemessasVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_ViewBoletosRemessasNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ReadOnly = True
      Size = 200
    end
    object db_ViewBoletosRemessasGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      ReadOnly = True
      Size = 10
    end
    object db_ViewBoletosRemessasGERARREMESSA: TStringField
      FieldName = 'GERARREMESSA'
      ReadOnly = True
      Size = 10
    end
    object db_ViewBoletosRemessasENDERECO: TStringField
      FieldName = 'ENDERECO'
      ReadOnly = True
      Size = 200
    end
    object db_ViewBoletosRemessasNUMERO: TStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 30
    end
    object db_ViewBoletosRemessasENDERECO_NUMERO: TStringField
      FieldName = 'ENDERECO_NUMERO'
      ReadOnly = True
      Size = 232
    end
    object db_ViewBoletosRemessasCEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 30
    end
    object db_ViewBoletosRemessasCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ReadOnly = True
      Size = 30
    end
    object db_ViewBoletosRemessasRG_IE: TStringField
      FieldName = 'RG_IE'
      ReadOnly = True
      Size = 30
    end
    object db_ViewBoletosRemessasTIPO: TStringField
      FieldName = 'TIPO'
      ReadOnly = True
      Size = 30
    end
    object db_ViewBoletosRemessasNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      ReadOnly = True
      Size = 200
    end
    object db_ViewBoletosRemessasUF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      Size = 30
    end
    object db_ViewBoletosRemessasPLN_CONTA: TStringField
      FieldName = 'PLN_CONTA'
      Size = 30
    end
    object db_ViewBoletosRemessasPLN_CONTA_NOME: TStringField
      FieldName = 'PLN_CONTA_NOME'
      ReadOnly = True
      Size = 200
    end
  end
  object ACBrBoleto_FastReport: TACBrBoletoFCFR
    ACBrBoleto = ACBrBoleto1
    DirLogo = 'C:\Sisteria\Boletos\Logos'
    FastReportFile = 'C:\Sisteria\Boletos\Layout\BoletoFR.fr3'
    Left = 336
    Top = 288
  end
end
