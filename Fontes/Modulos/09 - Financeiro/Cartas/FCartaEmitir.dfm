object FrmCartaEmitir: TFrmCartaEmitir
  Left = 0
  Top = 0
  Caption = 'Emiss'#227'o de Carta de Cobran'#231'a - Individual'
  ClientHeight = 550
  ClientWidth = 735
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 22
    Width = 735
    Height = 123
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object Label2: TLabel
      Left = 108
      Top = 7
      Width = 27
      Height = 13
      Caption = 'Hora:'
    end
    object Label3: TLabel
      Left = 16
      Top = 47
      Width = 91
      Height = 13
      Caption = 'Carta de Cobran'#231'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 22
      Width = 73
      Height = 21
      Color = 14811135
      DataField = 'DATA'
      DataSource = ds_EmitirCartas
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 108
      Top = 22
      Width = 73
      Height = 21
      Color = 14811135
      DataField = 'HORA'
      DataSource = ds_EmitirCartas
      Enabled = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 63
      Width = 58
      Height = 21
      BevelKind = bkFlat
      DataField = 'CARTA'
      DataSource = ds_EmitirCartas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 77
      Top = 63
      Width = 305
      Height = 21
      BevelKind = bkFlat
      Color = 14811135
      DataField = 'NOME'
      DataSource = DS_CartaCadastros
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 90
      Width = 113
      Height = 25
      Caption = 'Gerar Carta...'
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object EditEmail: TLabeledEdit
      Left = 388
      Top = 63
      Width = 328
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 72
      EditLabel.Height = 13
      EditLabel.Caption = 'Titulo do E-mail'
      TabOrder = 7
    end
    object EditCliente: TIDBEditDialog
      Left = 189
      Top = 22
      Width = 65
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      TabOrder = 2
      Text = '0'
      Visible = True
      EditType = etNumeric
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
      DataField = 'CLIENTE'
      DataSource = ds_EmitirCartas
      ButtonKeyClickBtn = 120
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomeCliente
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
      Left = 260
      Top = 22
      Width = 456
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 3
      Text = '***'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 735
    Height = 364
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 1
    object DbRichCarta: TDBRichEdit
      Left = 1
      Top = 1
      Width = 729
      Height = 358
      Align = alClient
      DataField = 'TEXTO'
      DataSource = ds_EmitirCartas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ScrollBars = ssBoth
      TabOrder = 0
      WordWrap = False
      Zoom = 100
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 509
    Width = 735
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BorderStyle = bsSingle
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 647
      Top = 5
      Width = 80
      Height = 28
      Caption = 'Caracteres'
      OnClick = SpeedButton1Click
    end
    object BtnSair: TBitBtn
      Left = 556
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
      TabOrder = 7
      OnClick = BtnSairClick
    end
    object BtnCancelar: TBitBtn
      Left = 156
      Top = 5
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'cancelar mundan'#231'as'
      Caption = '&Cancelar'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777177777777779777191777777777777799917777777977777991777777
        1777777799177771977777777991771977777777779911977777777777719977
        7777777777199917777777777199779177777771199777791777771999777777
        9177779997777777779777777777777777777777777777777777}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnCancelarClick
    end
    object BtnSalvar: TBitBtn
      Left = 76
      Top = 5
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'salvar registro atual'
      Caption = '&Salvar'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00900000000000
        000988888000000888808F7778888807F7808F7778078807F7808F7778078807
        F7808F777788888877808F777777777777808F77FFFFFFFF77808F7FFFCCCCFF
        F7808F7FFFFFCCFFF7808F7FFFFCFCFFF7808F7FFFCFFCFFF7808F7FFFFFFFFF
        F7808F777777777770808FFFFFFFFFFFF7809888888888888889}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnSalvarClick
    end
    object BtnExcluir: TBitBtn
      Left = 236
      Top = 5
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'excluir registro atual...'
      Caption = '&Excluir...'
      Glyph.Data = {
        B6030000424DB603000000000000360000002800000012000000100000000100
        18000000000080030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF2020204040404040404040
        4040404040404040404040404040404040404040404040404040404040404000
        0000FFFFFFFFFFFF0000FFFFFF404040DFDFDFD0CFCFD0CFCFD0CFCFD0CFCF90
        8F8F202020BFB8BFD0CFCFD0CFCFD0CFCFB0B7B09F989F505750000000FFFFFF
        0000FFFFFF404040EFEFEFBFBFBFBFBFBFBFBFBFBFBFBF00273080D7E0203840
        A0A7A0BFBFBFBFBFBFA0A7A09F989F6F6F6F000000FFFFFF0000FFFFFF404040
        EFEFEFAFA8AFA0A7A0A0A7A05050503F97B080B8E05FB8E01F37408080808087
        808F8F8F9F989F6F6F6F000000FFFFFF0000FFFFFF404040EFEFEFDFD8DFD0D7
        D0CFCFCF0027307FAFCF80D7E07FC7FF60AFE020384000BF004F7F509F989F6F
        6F6F000000FFFFFF0000FFFFFF202020CFCFCFDFD8DFDFD8DF6F6F6F60709F80
        D7E07FC7E080B8E050D7E03FB8E0304850CFCFCFBFBFBF6F6F6F000000FFFFFF
        0000FFFFFFFFFFFF1F1F1F8087807F787F1F185080D7E07FC7E080B8CF50D7E0
        60C7E02FC8EF40C8E02038408080807F787F000000FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF000000200F1F6097C080B8CF50D7E060C7E02FC8EF30E0F050E0
        F030A7D000001FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF200F
        00E0482F3F20304F97C060C7E02FC8EF30E0F050E0F05FB8EF1F303F000000FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF4F1800FF503FFF7F3F3F
        303040A7D030E0F080E0F03F6770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFF0000009F2720FF8F30FFA080FFE7BF3F281F3F5760
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        0000005F2800FF90507F60307F6F407F401F000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60301FFFC75F7F67
        3F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF3F201F7F775F000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BtnExcluirClick
    end
    object BtnNovo: TBitBtn
      Left = 7
      Top = 5
      Width = 68
      Height = 28
      Cursor = crHandPoint
      Hint = 'Novo registro'
      Caption = '&Incluir'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000CE0E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800888
        88888888800BF008888888800FB003308888800BFBFBFBF308887FBFBFBFBFBF
        30887BFBFBFBFB0B308887BFBFBFBF08B308887BFBFBFB0B83088887BFB70000
        083088887BF0FCCCC08088887FB7744407B0888887FB7CCC7778888887BF7444
        78888888887B0CCC08888888887770007888}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnNovoClick
    end
    object BtnProcurar: TBitBtn
      Left = 316
      Top = 5
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'procurar cidades cadastrados...'
      Caption = '&Procurar...'
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000C1CDD7BBB0B4
        8C9298BCC6CCB9BFC5B8BEC4B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BF
        C5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC50000A5A9A689797F9C727F9A959CBCC6
        CCB9BDC3B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9
        BFC5B9BFC5B9BFC50000657F954A6CAE927FA2AB7B8496939BBDC6CCB9BEC4B9
        BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5
        000052B4FC3EA0F8446BB89081A1AB7B8595939BBDC6CCBABEC4B9BFC5B9BFC5
        B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC500009EBDD35FBAF7
        3AA1F94371C1917F9EAB7B8596939BBBC4CAB8BDC3B8BDC3B8BDC3B8BDC3B8BD
        C3B8BDC3B9BFC5B9BFC5B9BFC5B9BFC50000C4BFBFA8BBCC5CBCF83B9FF74270
        C191809EAA7A84A29DA4C0C8CEBDC5CBBFC7CDBFC8CDBFC8CDBEC7CCBAC0C6B8
        BEC4B9BFC5B9BFC50000B5BFC7BEBFC2AABDCC5CBCF83DA0F74272C2867596B3
        95A4A5AFB48B858C8A848D8A838D89818C938E98B7BFC6BCC2C8B8BDC4B9BFC5
        0000B9BFC5B7BFC6BFC0C2AABCCC5ABCF83D9EFC6E75A0837D8A92717ABF9283
        C9AB8FD1B79ED2B1A5AB7B7D86656EA8B0B6BFC5CBB8BDC30000B9BFC5B9BFC5
        B7BFC6C1BFC1A0BED087B8E9B8A8BDA78983E7B99DFCEFC0FFFFD1FFFFDAFFFF
        DBFFFCDED1B0A6876573AAB1B7BCC2C8FFFFB9BFC5B9BFC5B9BFC5B8BFC5BCBD
        C2BFC4C5B8A9A7EDBF9AFFF5C3FCF4C2FBFBCEFBFADCFBFBE5FCFCF9FFFFFFCD
        AAA3795F6BB3BDC20000B9BFC5B9BFC5B9BFC5B9BFC5B8C1C5B6B8C7DCAEA4FF
        EDBBFCE7B5FCF1BEFDFED4FDFDE2FDFDF2FBFBFBFCFDF6FBF8D69A717294919A
        0000B9BFC5B9BFC5B9BFC5B9BFC5B8C2C8BFABADECC6A8FDF2BEFCDBA9FDF3C0
        FDFED3FDFDE1FDFDEEFCFCF0FBFBE3FEFEDABB978C867B860000B9BFC5B9BFC5
        B9BFC5BABFC4B7C0C8CEACA0F2DDB7FEE8B4FCD5A3FDEDBAFDFCCCFDFDD9FDFD
        E0FDFCE1FBFADAFDFDD8C8AD8F857B840000B9BFC5B9BFC5B9BFC5B9BFC4B8C2
        C8C4ACA8EDD1AFFDF2C1FCDEB1FDE4B2FDF4C1FDFBCBFDFED1FCFDD3FBFBCCFE
        FCCDC09686928A94FFFFB9BFC5B9BFC5B9BFC5B9BFC5B8C0C6B8B8BFE2C5A4FF
        FCDBFCEDD4FCE0B9FDE0ADFDF0BDFDF0BCFBEDB9FCF4C2FCEBBAAB7D80B3B3BE
        0000B9BFC5B9BFC5B9BFC5B9BFC5B9BEC4B8C3CAC2A5A7F4DDCAFFFFFFFBF5E7
        FBDDB1FCD9A9FCD8A6FCE9B8FFF7C2D29F85A18996BCC7CC9C01B9BFC5B9BFC5
        B9BFC5B9BFC5B9BFC5B9C0C5B8BAC4C6A6A9EFDAD1FEFEE4FFFFD4FFF0BDFFF4
        C0FDE8B8DEAE8EB1918FB8BDC5B9BFC56600B9BFC5B9BFC5B9BFC5B9BFC5B9BF
        C5B9BEC5B9C2C7B7B9C1BCA1A6D0AC9FD6B799E2C4A5E8C1ACCCA9A4B4AAB1B9
        C0C6BAC1C6B9BEC50000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Visible = False
    end
    object bbtnOk: TBitBtn
      Left = 396
      Top = 5
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'Enviar carta por e-mail'
      Caption = 'Enviar...'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        000037777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
        FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF7777BBF
        FFF07F333777777F3FF70FFFFFFFB9BF1CC07F3FFF337F7377770F777FFFB99B
        C1C07F7773337F377F370FFFFFFFB9BBC1C07FFFFFFF7F337FF700000077B999
        B000777777777F33777733337377B9999B33333F733373F337FF3377377B99BB
        9BB33377F337F377377F3737377B9B79B9B737F73337F7F7F37F33733777BB7B
        BBB73373333377F37F3737333777BB777B9B3733333377F337F7333333777B77
        77BB3333333337333377333333333777337B3333333333333337}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Style = bsNew
      TabOrder = 5
      OnClick = bbtnOkClick
    end
    object BitBtn2: TBitBtn
      Left = 476
      Top = 5
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'Enviar carta por e-mail'
      Caption = 'I&mprimir'
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Style = bsNew
      TabOrder = 6
      OnClick = BitBtn2Click
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 735
    Height = 22
    DataSource = ds_EmitirCartas
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alTop
    Flat = True
    Hints.Strings = (
      'In'#237'cio do Arquivo'
      'Registro Anterior'
      'Pr'#243'ximo Registro'
      'Final do Arquivo'
      'Novo Registro')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object db_EmitirCartas: TFDQuery
    OnNewRecord = db_EmitirCartasNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CARTA_EMITIR')
    Left = 152
    Top = 96
    object db_EmitirCartasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_EmitirCartasCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      OnChange = db_EmitirCartasCLIENTEChange
    end
    object db_EmitirCartasDATA: TDateField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_EmitirCartasCARTA: TIntegerField
      FieldName = 'CARTA'
      OnChange = db_EmitirCartasCARTAChange
    end
    object db_EmitirCartasTEXTO: TStringField
      FieldName = 'TEXTO'
      Size = 5000
    end
    object db_EmitirCartasHORA: TTimeField
      FieldName = 'HORA'
    end
  end
  object db_CartaCadastros: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CARTA_COBRANCA'
      'WHERE'
      'CODIGO=:CARTA')
    Left = 156
    Top = 192
    ParamData = <
      item
        Name = 'CARTA'
      end>
  end
  object ds_EmitirCartas: TDataSource
    DataSet = db_EmitirCartas
    Left = 240
    Top = 96
  end
  object db_clientes: TFDQuery
    BeforeOpen = db_clientesBeforeOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'TIPO='#39'CLIENTE'#39
      '')
    Left = 260
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_cliente: TDataSource
    DataSet = db_clientes
    Left = 312
    Top = 224
  end
  object DS_CartaCadastros: TDataSource
    DataSet = db_CartaCadastros
    Left = 72
    Top = 232
  end
  object db_Inadimplencia: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_CARTA_PENDENCIAS'
      'WHERE'
      'CLIENTE=:CLIENTE'
      'ORDER BY DATA, VENCIMENTO, DOCUMENTO')
    Left = 176
    Top = 296
    ParamData = <
      item
        Name = 'CLIENTE'
      end>
  end
end
