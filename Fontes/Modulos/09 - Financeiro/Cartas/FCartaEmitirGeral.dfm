object FrmCartaEmitirGeral: TFrmCartaEmitirGeral
  Left = 0
  Top = 0
  Caption = 'Emiss'#227'o de Carta de Cobran'#231'a - Coletiva'
  ClientHeight = 560
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
    Top = 39
    Width = 735
    Height = 80
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 0
    object lblReceber: TLabel
      Left = 512
      Top = 30
      Width = 60
      Height = 14
      Caption = 'A Receber:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 253
      Height = 74
      Align = alLeft
      Caption = '[...]'
      TabOrder = 0
      object Label3: TLabel
        Left = 184
        Top = 25
        Width = 53
        Height = 13
        Caption = 'Cod. Carta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 108
        Top = 25
        Width = 27
        Height = 13
        Caption = 'Hora:'
      end
      object Label1: TLabel
        Left = 16
        Top = 25
        Width = 27
        Height = 13
        Caption = 'Data:'
      end
      object EditCarta: TEdit
        Left = 184
        Top = 40
        Width = 58
        Height = 21
        BevelKind = bkFlat
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = EditCartaExit
      end
      object DBEdit2: TDBEdit
        Left = 108
        Top = 40
        Width = 73
        Height = 21
        Color = 14811135
        DataField = 'HORA'
        DataSource = ds_EmitirCartas
        Enabled = False
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 40
        Width = 73
        Height = 21
        Color = 14811135
        DataField = 'DATA'
        DataSource = ds_EmitirCartas
        Enabled = False
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 254
      Top = 1
      Width = 243
      Height = 74
      Align = alLeft
      Caption = 'Periodo de Vencimento'
      TabOrder = 1
      OnExit = GroupBox2Exit
      object Label4: TLabel
        Left = 10
        Top = 25
        Width = 13
        Height = 13
        Caption = 'De'
      end
      object Label5: TLabel
        Left = 90
        Top = 25
        Width = 17
        Height = 13
        Caption = 'At'#233
      end
      object btnpadrao: TSpeedButton
        Left = 184
        Top = 10
        Width = 56
        Height = 22
        Hint = 'restaurar todos clientes inadimplentes'
        Caption = 'pa&dr'#227'o...'
        ParentShowHint = False
        ShowHint = True
        OnClick = btnpadraoClick
      end
      object MskDataIni: TMaskEdit
        Left = 10
        Top = 40
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
        Text = '01/01/2004'
        OnExit = MskDataIniExit
      end
      object MskDataFim: TMaskEdit
        Left = 90
        Top = 40
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 119
    Width = 735
    Height = 400
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 1
    object DbRichCarta: TDBRichEdit
      Left = 1
      Top = 1
      Width = 729
      Height = 394
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
    Top = 519
    Width = 735
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BorderStyle = bsSingle
    TabOrder = 2
    object BtnSair: TBitBtn
      Left = 464
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
      TabOrder = 5
      OnClick = BtnSairClick
    end
    object BtnExcluir: TBitBtn
      Left = 120
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
      TabOrder = 1
      OnClick = BtnExcluirClick
    end
    object BtnProcurar: TBitBtn
      Left = 302
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
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 202
      Top = 5
      Width = 100
      Height = 28
      Cursor = crHandPoint
      Hint = 'excluir registro atual...'
      Caption = '&Excluir tudo...'
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
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 4
      Top = 5
      Width = 113
      Height = 28
      Caption = '&Gerar Carta(s)...'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object bbtnOk: TBitBtn
      Left = 383
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
      TabOrder = 4
      Visible = False
      OnClick = bbtnOkClick
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 17
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
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 0
    Width = 735
    Height = 17
    Align = alTop
    TabOrder = 4
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
    end
    object db_EmitirCartasCARTA: TIntegerField
      FieldName = 'CARTA'
    end
    object db_EmitirCartasDATA: TDateField
      FieldName = 'DATA'
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
    BeforeOpen = db_CartaCadastrosBeforeOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CARTA_COBRANCA'
      'WHERE'
      'CODIGO=:CARTA')
    Left = 332
    Top = 208
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
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'TIPO='#39'CLIENTE'#39
      ''
      '')
    Left = 580
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
      end>
  end
  object ds_cliente: TDataSource
    DataSet = db_clientes
    Left = 520
    Top = 192
  end
  object DS_CartaCadastros: TDataSource
    DataSet = db_CartaCadastros
    Left = 40
    Top = 88
  end
  object db_Inadimplencia: TFDQuery
    BeforeOpen = db_InadimplenciaBeforeOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT DISTINCT(CPF_CNPJ), VALOR, CLIENTE, NOME_CLIENTE'
      'FROM VIEW_CARTA_PENDENCIAS'
      ''
      'WHERE'
      'VENCIMENTO>=:VENCIMENTO1'
      'AND'
      'VENCIMENTO<=:VENCIMENTO2'
      ''
      'ORDER BY NOME_CLIENTE')
    Left = 145
    Top = 176
    ParamData = <
      item
        Name = 'VENCIMENTO1'
      end
      item
        Name = 'VENCIMENTO2'
      end>
  end
  object db_InadimplenciaPadrao: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT MIN(VENCIMENTO), MAX(VENCIMENTO)  FROM VIEW_CARTA_PENDENC' +
        'IAS')
    Left = 455
    Top = 167
  end
  object ds_Inadimplencia: TDataSource
    DataSet = db_Inadimplencia
    Left = 48
    Top = 176
  end
  object db_InadimplenciaChecar: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_CARTA_PENDENCIAS'
      'WHERE'
      'CLIENTE=:CLIENTE'
      'ORDER BY VENCIMENTO')
    Left = 384
    Top = 328
    ParamData = <
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DS_InadimplenciaChecar: TDataSource
    DataSet = db_InadimplenciaChecar
    Left = 224
    Top = 320
  end
  object db_InadimplenciaSUM: TFDQuery
    BeforeOpen = db_InadimplenciaSUMBeforeOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT SUM(VALOR) AS TOTAL '
      'FROM VIEW_CARTA_PENDENCIAS'
      'WHERE'
      'VENCIMENTO>=:VENCIMENTO1'
      'AND'
      'VENCIMENTO<=:VENCIMENTO2')
    Left = 65
    Top = 272
    ParamData = <
      item
        Name = 'VENCIMENTO1'
      end
      item
        Name = 'VENCIMENTO2'
      end>
  end
end
