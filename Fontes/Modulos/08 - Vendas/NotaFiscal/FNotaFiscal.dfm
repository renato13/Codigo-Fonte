object FrmNotaFiscal: TFrmNotaFiscal
  Left = 0
  Top = 0
  Caption = 'Nota Fiscal'
  ClientHeight = 531
  ClientWidth = 906
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 906
    Height = 33
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 906
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 906
      Height = 33
      ExplicitWidth = 906
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 217
        Caption = 'Nota Fiscal Eletr'#244'nica (NF-e)'
        ExplicitWidth = 217
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 470
    Width = 906
    Height = 61
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 470
    ExplicitWidth = 906
    ExplicitHeight = 61
    inherited W7Panel1: TPanel
      Width = 906
      Height = 61
      ExplicitWidth = 906
      ExplicitHeight = 61
      inherited SpbExtra: TSpeedButton
        Left = 376
        Caption = 'Enviar...'
        Glyph.Data = {
          560D0000424D560D000000000000360000002800000020000000230000000100
          180000000000200D000000000000000000000000000000000000D8D4CED8D4CE
          D8D4CED8D4CED8D4CED8D4CED8D4CED8D4CED8D4CED8D4CED8D4CED8D4CED8D4
          CED8D4CED8D4CED8D4CED8D4CED8D4CED8D4CED8D4CED8D4CED8D4CED8D4CED8
          D4CED8D4CED8D4CED8D4CED8D4CED8D4CED8D4CED8D4CED8D4CED7D2CDD7D2CD
          D6D1CCD3CEC9D3CEC9D3CEC9D3CEC9D5D0CBD7D2CDD7D2CDD7D2CDD7D2CDD4D0
          CBD3CEC9D3CEC9D3CEC9D3CEC9D3CEC9D3CEC9D3CEC9D3CEC9D3CEC9D3CEC9D3
          CEC9D3CEC9D3CEC9D4D0CBD7D2CDD7D2CDD7D2CDD7D2CDD7D2CDD6D1CCD6D1CC
          D2CDC8C9C4BFC8C3BFC8C3BFC9C4BFCBC6C2D6D1CCD6D1CCD6D1CCD6D1CCCCC7
          C2C9C4BFC8C3BEC8C3BEC8C3BEC8C3BEC8C3BEC8C3BEC8C3BEC8C3BEC8C3BEC8
          C3BEC8C3BEC9C4BFCCC7C2D6D1CCD6D1CCD6D1CCD6D1CCD6D1CCD5D0CBD5D0CB
          D1CCC7BDB9B6BCB9B6BCB9B6BDB9B6BDB9B6C3BFBAD3CEC9D5D0CBD5D0CBC6C1
          BDBFBAB6BFBAB6BFBAB6BFBAB6BEBAB5BEBAB5BEBAB5BEBAB5BEBAB5BEBAB5BF
          BAB6BFBAB6BFBAB6C6C1BDD5D0CBD5D0CBD5D0CBD5D0CBD5D0CBD4CFC9D4CFC9
          D2CDC7B0AFADB2B1AEB1B0ADB0AFADB0AFADB0AFADB4B2AFC8C4BED4CFC9D3CE
          C8CFCAC4CFCAC4BCB8B2B3AFAAB3AFAAB4B0ABB5B1ACB5B1ACB4B0ABB3AFAAB3
          AFAACFCAC4CFCAC4D3CEC8D4CFC9D4CFC9D4CFC9D4CFC9D4CFC9D3CDC8D3CDC8
          D3CDC8A8A8A8C6C0BBCAC4BFACABAAA5A6A6A5A6A6A5A6A6A5A6A6AFADACBBB7
          B3C9C3BFD3CDC8BAB4B0ABA6A2ABA6A2ACA7A3ADA8A4ADA8A4ACA7A3ABA6A2AE
          A9A5D3CDC8D3CDC8D3CDC8D3CDC8D3CDC8D3CDC8D3CDC8D3CDC8D2CCC6D2CCC6
          D2CCC6CBC5BFD2CCC6D2CCC6D1CBC5BDB9B5ABAAA9A3A4A4A6A7A6B5B2AFCBC6
          C0D2CCC6D2CCC6CCC6C1AAA6A1A4A09CA4A09CA4A09CA4A09CA4A09CA6A19DC1
          BBB6D2CCC6D2CCC6D2CCC6D2CCC6D2CCC6D2CCC6D2CCC6D2CCC6D1CBC5D1CBC5
          D1CBC5D1CBC5D1CBC5D1CBC5D1CBC5D1CBC5D1CBC5D1CBC5D1CBC5D1CBC5D1CB
          C5D1CBC5D1CBC5D1CBC5CFC9C3BAB4AFADA8A3A8A49FAAA6A1B3AEA9CAC4BED1
          CBC5D1CBC5D1CBC5D1CBC5D1CBC5D1CBC5D1CBC5D1CBC5D1CBC5D0CAC4D0CAC4
          D0CAC4D0CAC4D0CAC4D0CAC4D0CAC4D0CAC4CFC9C3CFC9C3CFC9C3D0CAC4D0CA
          C4D0CAC4D0CAC4D0CAC4CDC7C19F9B9793918E96949294918F96938FC1BBB6CF
          C9C3D0CAC4D0CAC4D0CAC4D0CAC4D0CAC4D0CAC4D0CAC4D0CAC4CFC8C2CFC8C2
          CFC8C2B9B4AFCEC7C1CFC8C2CDC6C090979B507F9E367DA93F7DA4708796BEB8
          B3CFC8C2CFC8C2BFB9B3918F8EA9A9A9A9A9A9A9A9A9A9A9A9A9A9A99D9D9CA1
          9C98CFC8C2CFC8C2CFC8C2CFC8C2CFC8C2CFC8C2CFC8C2CFC8C2CEC7C1CEC7C1
          CDC6C01480C59A9D9EAAA8A52C7DB10287DB0287DB0287DB0285D8297EB46485
          98A1A2A1CDC6C085827F8989898B8B8B9F9F9FB4B4B4B8B8B89D9D9D88888884
          8382CCC5BFCEC7C1CEC7C1CEC7C1CEC7C1CEC7C1CEC7C1CEC7C1CDC6C0CDC6C0
          C0BAB40285D90F82CB0B84D00186DC0186DC0186DC1081CA7F8E96CBC4BECAC3
          BDB8B3AEB9B3AD7B79777575757B7B7BA7A7A7BBBBBBC2C2C29F9F9F75757573
          7373B6B0ABBBB4AFCBC4BECDC6C0CDC6C0CDC6C0CDC6C0CDC6C0CCC5BECCC5BE
          A9A7A3028FDF0190E20190E20190E20291E02E81B2B5B0AACBC4BDCBC4BD9897
          95C5C5C6C5C5C5C5C5C5C5C5C5C6C6C6C7C7C7C7C7C7C7C7C7C6C7C7C5C5C5C5
          C5C5C5C5C4C5C5C6999794CBC4BDCCC5BECCC5BECCC5BECCC5BECBC3BDCBC3BD
          91979902A0E900A0EC00A0EC019FEB2D8BB9C1B9B3CBC3BDCBC3BDCAC2BCA4A2
          A1BABABB5B5C6455575E55575E55575E55575E55575E55575E55575E55575E55
          575E5A5C63B9B9BAA5A2A1CAC2BCCBC3BDCBC3BDCBC3BDCBC3BDCAC2BCCAC2BC
          7A909702AEF101AEF301AEF301AEF34B8CA6C8C0BBCAC2BCCAC2BCC9C1BBA6A4
          A3919295191C26171A24171A24171A24171A24171A24171A24171A24171A2417
          1A24191C26919295A7A5A4C9C1BBCAC2BCCAC2BCCAC2BCCAC2BCCAC1BBCAC1BB
          989C9B2AAAD71BB9EE16BDF714BDF70CBAF7739099CAC1BBCAC1BBC9C0BAA9A7
          A598999D27293325273125273125273125273125273125273125273125273125
          273127293398999DA9A7A5C9C0BACAC1BBCAC1BBCAC1BBCAC1BBC9C0B9C9C0B9
          C9C0B9C8BFB8C7BEB8BCB4AEADA9A49F9F9DA5A39FC9C0B9C9C0B9C8BFB8ABA9
          A7A1A1A437394035373F35373F35373F35373F35373F35373F35373F35373F35
          373F373940A1A1A4ABA9A7C8BFB8C9C0B9C9C0B9C9C0B9C9C0B9C8BFB8C8BFB8
          C8BFB8C8BFB8C8BFB8C8BFB8C7BEB7C7BEB7C7BEB7C8BFB8C8BFB8C7BEB7ADAA
          A9A9A9AC46484F45474D45474D45474D45474D45474D45474D45474D45474D45
          474D46484FA9A9ACADAAA9C7BEB7C8BFB8C8BFB8C8BFB8C8BFB8C7BEB7C2B9B2
          9A948F97918D97918D97918D97918D97918D97918D99938EBAB1ABC5BDB6B0AD
          ABB0B1B356585D55565C55565C55565C55565C55565C55565C55565C55565C55
          565C56585DB0B1B3B0ADABC6BDB6C7BEB7C7BEB7C7BEB7C7BEB7C6BCB6928F8D
          B4B4B4B5B4B4B5B4B4B5B4B4B5B4B4B5B4B4B5B4B4B5B4B49E9C9BC3B9B3B0AD
          ABB8B8BA66676C65666A65666A65666A65666A65666A65666A65666A65666A65
          666A66676CB8B8BAB1AEACC6BCB6C7BDB7C7BDB7C7BDB7C7BDB7C5BCB5A8A7A6
          B9B8B8BAB9B9BAB9B9BAB9B9BAB9B9B9B9B9B9B9B9B8B8B8B8B8B8B4ACA5B1AF
          ADBFC0C176777A75767975767975767975767975767975767975767975767975
          767976777ABFBFC1B1AFADC5BCB5C6BDB6C6BDB6C6BDB6C6BDB6C4BBB4ACABAA
          C2BAAEC9B798C6B494C3B190BFAE8DBBAB8AB8A988B9B09DBCBBBBB4ABA5B3B1
          AFDDDDDEA6A6A7A1A1A3A1A1A3A1A1A3A1A1A3A1A1A3A1A1A3A1A1A3A1A1A3A1
          A1A3A5A6A7DDDDDDB3B1AFC5BBB4C6BCB5C6BCB5C6BCB5C6BCB5C3BBB4AEADAC
          CBBA9ADAB369D3AD62CBA65BC3A055BD9A4FB69449B39F6FBFBEBEB3ABA5A6A2
          A0EAEAEAE9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
          E9E9E9E9E9EAEAEAA6A2A0C4BBB4C5BCB5C5BCB5C5BCB5C5BCB5C3BAB3B2B1B0
          C4C3C2C5C3C0C5C3BFC5C3BFC5C2BFC3C2BEC3C2BEC3C3C1C1C1C1B3AAA3C1B7
          B0AFA7A0AFA7A0AFA7A0AFA7A0AFA7A0AFA7A0AFA7A0AFA7A0AFA7A0AFA7A0AF
          A7A0AFA7A0AFA7A0C1B7B0C5BBB4C5BBB4C5BBB4C5BBB4C5BBB4CDC4BFB6B5B5
          C8C7C7C9C8C7C9C8C6C8C8C6C8C8C6C8C7C6C8C7C6C8C8C7C5C5C5BDB4B0CFC6
          C1CFC6C1CFC6C1CFC6C1CEC5C0CEC5C0CDC4BFCDC4BFCDC4BFCEC5C0CEC5C0CF
          C6C1CFC6C1CFC6C1CFC6C1CFC6C1CFC6C1CFC6C1CFC6C1CFC6C1CEC5C0B7B6B6
          D0C1A4D6B06DCEAB65C7A45FBF9E58B89751B0914BB7A57AC7C7C7BDB5B1D0C7
          C2D0C7C2D0C7C2D0C7C2C1B9B51481C51880C3287DB5377CAA487EA1708796CF
          C6C1D0C7C2D0C7C2D0C7C2D0C7C2D0C7C2D0C7C2D0C7C2D0C7C2CFC6C1BAB9B9
          D0C7B6D7C39BD4C098D0BC94CCBA91C9B68EC5B48BC5BBA2CACACABEB6B2D1C8
          C3D1C8C3D1C8C3D1C8C3D0C7C294989D0485D80186DC0186DC0287DB0C88D6CF
          C6C1D1C8C3D1C8C3D1C8C3D1C8C3D1C8C3D1C8C3D1C8C3D1C8C3D0C7C3BCBBBB
          CFCECED0CFCED0CFCED0CFCECFCFCDCFCFCDCFCFCECFCFCECCCCCCBFB7B3D2C9
          C5D2C9C5D2C9C5D2C9C5D1C8C4B9B2B11082CB0188DD008ADF018BDF2189C6D0
          C7C3D2C9C5D2C9C5D2C9C5D2C9C5D2C9C5D2C9C5D2C9C5D2C9C5D1C8C4BFBEBD
          D4CDC1D7C7A9D4C4A6D0C1A3CDBEA0CABB9DC7B99ACAC2B1CECECEC0B8B4D3CA
          C6D3CAC6D3CAC6D2C9C5B5AFAE2185C00192E30193E40195E50197E6388CB6D2
          C9C5D3CAC6D3CAC6D3CAC6D3CAC6D3CAC6D3CAC6D3CAC6D3CAC6D2C9C5BFBEBD
          D6C5A5D8B267D2AB60CAA459C29E52BA974CB49245BAA676D0D0D0C0B8B5D4CB
          C7D3CAC6D3CAC686959D0F94D6019CE9019EEA019FEB0DA6EB02A4EC4E8EACD3
          CAC6D4CBC7D4CBC7D4CBC7D4CBC7D4CBC7D4CBC7D4CBC7D4CBC7D3CBC6C1C0BF
          D4D2D1D5D1CBD4D1CBD3D0CAD2D0C9D2CFC8D1CFC9D1D0CDD2D1D1B9B3AF979F
          A18D9AA0358FB802A5EE01A6EF01A8F003AAF03D9BC2ABABA9349EC96892A3D4
          CCC7D5CDC8D5CDC8D5CDC8D5CDC8D5CDC8D5CDC8D5CDC8D5CDC8D5CDC8BAB9B8
          D5D5D5D5D5D5D5D5D4D5D5D4D5D5D4D5D5D4D5D5D4D5D5D5D2D1D1CCC4C0CAC3
          BE6D92A02AA2D016B4F21BB4EF409EC286999FD2CAC5D5CDC8BBB6B3AAAAA8D6
          CEC9D6CEC9D6CEC9D6CEC9D6CEC9D6CEC9D6CEC9D6CEC9D6CEC9D6CECAAFA9A6
          AEABAAB2B0AFB2B0AFB2B0AFB2B0AFB2B0AFB2B0AFB0AEADA5A09DD6CECAD7CF
          CBD6CECAD6CECAD1C9C5D3CBC7D6CECAD7CFCBD7CFCBD7CFCBD7CFCBD7CFCBD7
          CFCBD7CFCBD7CFCBD7CFCBD7CFCBD7CFCBD7CFCBD7CFCBD7CFCBD7D0CCD7D0CC
          D7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0
          CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7
          D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD7D0CCD8D1CDD8D1CD
          D8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1
          CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8
          D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CDD8D1CD}
        Visible = True
        OnClick = FrmFrameBotoes1SpbExtraClick
        ExplicitLeft = 376
      end
      inherited SpbSair: TSpeedButton
        Left = 499
        OnClick = FrmFrameBotoes1SpbSairClick
        ExplicitLeft = 499
      end
      inherited SpbImprimir: TSpeedButton
        Left = 438
        Caption = 'DANFE'
        OnClick = FrmFrameBotoes1SpbImprimirClick
        ExplicitLeft = 438
      end
      inherited SpbProcurar: TSpeedButton
        Left = 314
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 314
      end
      inherited SpbExcluir: TSpeedButton
        Left = 253
        OnClick = FrmFrameBotoes1SpbExcluirClick
        ExplicitLeft = 253
      end
      inherited SpbCancelar: TSpeedButton
        Left = 130
        OnClick = FrmFrameBotoes1SpbCancelarClick
        ExplicitLeft = 130
      end
      inherited SpbSalvar: TSpeedButton
        Left = 191
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 191
      end
      inherited SpbEditar: TSpeedButton
        Left = 68
        OnClick = FrmFrameBotoes1SpbEditarClick
        ExplicitLeft = 68
      end
      inherited SpbAdicionar: TSpeedButton
        Left = 7
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = 7
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 906
    Height = 437
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox3: TGroupBox
      Left = 0
      Top = 366
      Width = 906
      Height = 71
      Align = alBottom
      Caption = 'Totais da Nota Fiscal'
      Color = clBtnFace
      Enabled = False
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object Label3: TLabel
        Left = 631
        Top = 24
        Width = 97
        Height = 11
        Caption = 'Valor Total da Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 495
        Top = 24
        Width = 124
        Height = 11
        Caption = 'Valor Total dos Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 14
        Top = 24
        Width = 123
        Height = 11
        Caption = 'Base de C'#225'lculo do ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 175
        Top = 24
        Width = 72
        Height = 11
        Caption = 'Valor do ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 350
        Top = 24
        Width = 91
        Height = 11
        Caption = 'Valor Total do IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEdit8: TDBEdit
        Left = 631
        Top = 37
        Width = 130
        Height = 22
        Color = clBtnFace
        DataField = 'TOTAL_NF'
        DataSource = BaseDados.DS_Vendas
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 495
        Top = 37
        Width = 130
        Height = 22
        Color = clBtnFace
        DataField = 'VALOR_PRODUTOS'
        DataSource = BaseDados.DS_Vendas
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit10: TDBEdit
        Left = 14
        Top = 37
        Width = 130
        Height = 22
        Color = clBtnFace
        DataField = 'ICMS_BASECALCULO'
        DataSource = BaseDados.DS_Vendas
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit11: TDBEdit
        Left = 175
        Top = 37
        Width = 101
        Height = 22
        Color = clBtnFace
        DataField = 'ICMS_VALOR'
        DataSource = BaseDados.DS_Vendas
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit12: TDBEdit
        Left = 348
        Top = 37
        Width = 130
        Height = 22
        Color = clBtnFace
        DataField = 'IPI_VALOR'
        DataSource = BaseDados.DS_Vendas
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 906
      Height = 33
      Align = alTop
      Alignment = taRightJustify
      Caption = '[use as teclas PageUp e PageDown]   '
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 7
        Top = 9
        Width = 84
        Height = 16
        Caption = 'Nota Fiscal:'
        Color = clBtnFace
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label10: TLabel
        Left = 257
        Top = 9
        Width = 37
        Height = 16
        Caption = 'Tipo:'
        Color = clBtnFace
        FocusControl = DBEdit13
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 93
        Top = 6
        Width = 81
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'NOTAFISCAL'
        DataSource = BaseDados.DS_Vendas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit13: TDBEdit
        Left = 300
        Top = 6
        Width = 102
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'TIPONF'
        DataSource = BaseDados.DS_Vendas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object ScrollBoxNF: TScrollBox
      Left = 0
      Top = 33
      Width = 906
      Height = 333
      HorzScrollBar.Increment = 63
      HorzScrollBar.ParentColor = False
      VertScrollBar.Color = clInactiveCaption
      VertScrollBar.ParentColor = False
      VertScrollBar.Range = 700
      Align = alClient
      AutoScroll = False
      Color = clBtnFace
      ParentColor = False
      TabOrder = 2
      object BoxProdutos: TGroupBox
        Left = 0
        Top = 153
        Width = 885
        Height = 175
        Align = alTop
        Caption = 'DADOS DO PRODUTOS'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object dbGrid_Produtos: TDBGrid
          Left = 2
          Top = 16
          Width = 881
          Height = 157
          Align = alClient
          DataSource = BaseDados.DS_VendasItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -9
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnColEnter = dbGrid_ProdutosColEnter
          OnEditButtonClick = dbGrid_ProdutosEditButtonClick
          OnEnter = dbGrid_ProdutosEnter
          OnExit = dbGrid_ProdutosExit
          OnKeyDown = dbGrid_ProdutosKeyDown
          OnKeyPress = dbGrid_ProdutosKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'PRODUTO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#211'DIGO'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'DESCRI'#199#195'O DOS PRODUTOS'
              Width = 236
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM'
              Title.Caption = 'CODIGO NCM:'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCFOP'
              Title.Caption = 'CFOP:'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASSIFICACAO_FISCAL'
              Title.Alignment = taCenter
              Title.Caption = 'Clas.Fiscal.'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SITUACAO_TRIBUTARIA'
              Title.Alignment = taCenter
              Title.Caption = 'Sit. Trib.'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UND'
              Title.Alignment = taCenter
              Title.Caption = 'UNID'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'QUANT.'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_UNIT'
              Title.Alignment = taCenter
              Title.Caption = 'VLR. UNIT.'
              Width = 73
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'VLR_TOTAL'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'VLR. TOTAL'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ICMS'
              Title.Alignment = taCenter
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IPI'
              Title.Alignment = taCenter
              Width = 40
              Visible = True
            end>
        end
        object PedidoProcurar: TIDBEditDialog
          Left = 373
          Top = 100
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
          TabOrder = 1
          Text = ''
          Visible = False
          EditType = etAlphaNumeric
          EmptyText = 'Tecle F8'
          FocusColor = clBtnFace
          LabelCaption = 'Pedido de venda'
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
          ButtonHint = 'Pedido de venda'
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
            'SELECT * FROM VIEW_PEDIDOSVENDAS'
            'WHERE'
            'APROVADO IN ('#39'S'#39','#39'SIM'#39')'
            'AND'
            'STATUS IN ('#39'N'#39','#39'NAO'#39')'
            'AND'
            '%WHERE%'
            '')
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
        object ConferenciaProcurar: TIDBEditDialog
          Left = 209
          Top = 98
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
          TabOrder = 2
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
            'FATURADO IN ('#39'N'#39','#39'NAO'#39')'
            'AND'
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
              SearchCase = scMixed
            end
            item
              FieldName = 'PEDIDO'
              WhereSyntax = 'PEDIDO'
              DisplayLabel = 'PEDIDO'
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
              FieldName = 'TRANSPORTADORA_NOME'
              WhereSyntax = 'TRANSPORTADORA_NOME'
              DisplayLabel = 'TRANSPORTADORA:'
              DisplayWidth = 20
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = False
              EmptyOperation = eoNull
              DefaultComparison = scContains
              SearchCase = scUpper
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
      end
      object BoxCalculo: TGroupBox
        Left = 0
        Top = 328
        Width = 885
        Height = 99
        Align = alTop
        Caption = 'C'#193'LCULO DO IMPOSTO'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        object Label21: TLabel
          Left = 593
          Top = 56
          Width = 97
          Height = 11
          Caption = 'Valor Total da Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel
          Left = 593
          Top = 18
          Width = 124
          Height = 11
          Caption = 'Valor Total dos Produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 300
          Top = 18
          Width = 126
          Height = 11
          Caption = 'Base C'#225'lculo ICMS Subst.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 5
          Top = 18
          Width = 123
          Height = 11
          Caption = 'Base de C'#225'lculo do ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 300
          Top = 56
          Width = 121
          Height = 11
          Caption = 'Outras Desp. Acess'#243'rias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 93
          Top = 56
          Width = 80
          Height = 11
          Caption = 'Valor do Seguro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 5
          Top = 56
          Width = 72
          Height = 11
          Caption = 'Valor do Frete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 157
          Top = 18
          Width = 72
          Height = 11
          Caption = 'Valor do ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel
          Left = 444
          Top = 18
          Width = 105
          Height = 11
          Caption = 'Valor do ICMS Subst.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label39: TLabel
          Left = 444
          Top = 56
          Width = 91
          Height = 11
          Caption = 'Valor Total do IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 195
          Top = 56
          Width = 90
          Height = 11
          Caption = 'Valor do Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object EFrete: TDBEdit
          Left = 5
          Top = 69
          Width = 84
          Height = 22
          DataField = 'VLR_FRETE'
          DataSource = BaseDados.DS_Vendas
          TabOrder = 5
        end
        object ebase: TDBEdit
          Left = 5
          Top = 30
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'ICMS_BASECALCULO'
          DataSource = BaseDados.DS_Vendas
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DbEditICMSSubst: TDBEdit
          Left = 300
          Top = 30
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'ICMS_BASECALCULO_SUBSTITUICAO'
          DataSource = BaseDados.DS_Vendas
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object eseguro: TDBEdit
          Left = 93
          Top = 69
          Width = 88
          Height = 22
          DataField = 'VLR_SEGURO'
          DataSource = BaseDados.DS_Vendas
          TabOrder = 6
        end
        object eoutras: TDBEdit
          Left = 300
          Top = 69
          Width = 130
          Height = 22
          DataField = 'VLR_DESPESAS_ASSESSORIAS'
          DataSource = BaseDados.DS_Vendas
          TabOrder = 8
        end
        object eprod: TDBEdit
          Left = 593
          Top = 30
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'VALOR_PRODUTOS'
          DataSource = BaseDados.DS_Vendas
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object enota: TDBEdit
          Left = 593
          Top = 69
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'TOTAL_NF'
          DataSource = BaseDados.DS_Vendas
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit3: TDBEdit
          Left = 157
          Top = 30
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'ICMS_VALOR'
          DataSource = BaseDados.DS_Vendas
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 444
          Top = 30
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'ICMS_BASECALCULO_SUBSTITUICAO_VALOR'
          DataSource = BaseDados.DS_Vendas
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 444
          Top = 69
          Width = 130
          Height = 22
          Color = clBtnFace
          DataField = 'IPI_VALOR'
          DataSource = BaseDados.DS_Vendas
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit14: TDBEdit
          Left = 195
          Top = 69
          Width = 97
          Height = 22
          Color = clBtnFace
          DataField = 'VLR_DESCONTO'
          DataSource = BaseDados.DS_Vendas
          Enabled = False
          ReadOnly = True
          TabOrder = 7
        end
      end
      object BoxTransportadora: TGroupBox
        Left = 0
        Top = 427
        Width = 885
        Height = 102
        Align = alTop
        Caption = 'TRANSPORTADOR / VOLUMES TRANSPORTADOS'
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 4
        object Label30: TLabel
          Left = 373
          Top = 18
          Width = 24
          Height = 11
          Caption = 'Qtde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label31: TLabel
          Left = 481
          Top = 18
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
        object Label32: TLabel
          Left = 593
          Top = 18
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
        object Label33: TLabel
          Left = 5
          Top = 56
          Width = 39
          Height = 11
          Caption = 'Numero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label34: TLabel
          Left = 111
          Top = 56
          Width = 55
          Height = 11
          Caption = 'Peso Bruto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label35: TLabel
          Left = 217
          Top = 56
          Width = 63
          Height = 11
          Caption = 'Peso Liquido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Eqtde: TDBEdit
          Left = 373
          Top = 30
          Width = 100
          Height = 21
          Color = clWhite
          DataField = 'FRETE_QUANTIDADE'
          DataSource = BaseDados.DS_Vendas
          TabOrder = 2
        end
        object Eliquido: TDBEdit
          Left = 217
          Top = 69
          Width = 100
          Height = 21
          Color = clWhite
          DataField = 'FRETE_PLIQUIDO'
          DataSource = BaseDados.DS_Vendas
          TabOrder = 6
        end
        object Eespecie: TDBEdit
          Left = 481
          Top = 30
          Width = 100
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'FRETE_ESPECIE'
          DataSource = BaseDados.DS_Vendas
          TabOrder = 3
        end
        object Emarca: TDBEdit
          Left = 593
          Top = 30
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'FRETE_MARCA'
          DataSource = BaseDados.DS_Vendas
          TabOrder = 4
        end
        object Enumero: TDBEdit
          Left = 5
          Top = 69
          Width = 100
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'FRETE_NUMERO'
          DataSource = BaseDados.DS_Vendas
          TabOrder = 5
        end
        object Ebruto: TDBEdit
          Left = 111
          Top = 69
          Width = 100
          Height = 21
          Color = clWhite
          DataField = 'FRETE_PBRUTO'
          DataSource = BaseDados.DS_Vendas
          TabOrder = 7
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 329
          Top = 51
          Width = 394
          Height = 46
          Caption = 'Frete'
          Columns = 4
          DataField = 'FRETE'
          DataSource = BaseDados.DS_Vendas
          Items.Strings = (
            'Emitente'
            'Destinat'#225'rio'
            'Terceiros'
            'Sem Frete')
          TabOrder = 8
          Values.Strings = (
            '0'
            '1'
            '2'
            '9')
        end
        object EditNomeTrasportadora: TEdit
          Left = 77
          Top = 29
          Width = 290
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '***'
        end
        object EditTransportadora: TIDBEditDialog
          Left = 6
          Top = 29
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
          TabOrder = 0
          Text = ''
          Visible = True
          EditType = etAlphaNumeric
          EmptyText = 'Tecle F8'
          FocusColor = clBtnFace
          LabelCaption = 'Nome / Raz'#227'o Social'
          LabelAlwaysEnabled = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlack
          LabelFont.Height = -9
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          Lookup.Separator = ';'
          Version = '5.0.0.0'
          ButtonStyle = bsButton
          ButtonWidth = 16
          ButtonHint = 'Transportadora:'
          Etched = False
          ButtonCaption = '...'
          DataField = 'TRANSPORTADORA'
          DataSource = BaseDados.DS_Vendas
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeTrasportadora
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'TIPO='#39'TRANSPORTADORA'#39
            'AND'
            '%WHERE%')
          CountQuery.Strings = (
            '')
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
      end
      object BoxObs_Fisco: TGroupBox
        Left = 0
        Top = 529
        Width = 885
        Height = 138
        Align = alTop
        Caption = 'DADOS ADICIONAIS'
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 5
        object DBMemo_Fisco: TDBMemo
          Left = 367
          Top = 28
          Width = 355
          Height = 107
          DataField = 'OBS2'
          DataSource = BaseDados.DS_Vendas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBMemo_OBS: TDBMemo
          Left = 6
          Top = 28
          Width = 355
          Height = 107
          DataField = 'OBS1'
          DataSource = BaseDados.DS_Vendas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 49
        Width = 885
        Height = 104
        Align = alTop
        Caption = 'Dados da Nota Fiscal'
        TabOrder = 1
        object Label4: TLabel
          Left = 668
          Top = 14
          Width = 33
          Height = 14
          Caption = 'Data:'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 668
          Top = 54
          Width = 69
          Height = 14
          Caption = 'Data (S/E):'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 479
          Top = 54
          Width = 80
          Height = 14
          Caption = 'Desconto %:'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditNomeCliente: TEdit
          Left = 72
          Top = 30
          Width = 330
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 1
        end
        object EditNomeVendedor: TEdit
          Left = 481
          Top = 30
          Width = 182
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 3
        end
        object EditCliente: TIDBEditDialog
          Left = 3
          Top = 30
          Width = 65
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 0
          Text = ''
          Visible = True
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
          DataSource = BaseDados.DS_Vendas
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
            'COALESCE(ATIVO,'#39'S'#39')<>'#39'N'#39
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
        object EstSearchDialogZeos2: TIDBEditDialog
          Left = 408
          Top = 30
          Width = 70
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 2
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
          DataSource = BaseDados.DS_Vendas
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
            '  TIPO in ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39')'
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
        object EditNomeFormaPagto: TEdit
          Left = 72
          Top = 70
          Width = 163
          Height = 21
          CharCase = ecUpperCase
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
        end
        object EditPagamento: TIDBEditDialog
          Left = 5
          Top = 70
          Width = 61
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
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
          DataField = 'FORMAPAGTO'
          DataSource = BaseDados.DS_Vendas
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
              Search = True
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
        object DBEdit6: TDBEdit
          Left = 668
          Top = 30
          Width = 70
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'EMISSAO'
          DataSource = BaseDados.DS_Vendas
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit7: TDBEdit
          Left = 668
          Top = 70
          Width = 66
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'DATA_ENTRADASAIDA'
          DataSource = BaseDados.DS_Vendas
          ParentCtl3D = False
          TabOrder = 10
        end
        object DBEdit1: TDBEdit
          Left = 479
          Top = 70
          Width = 70
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'DESCONTO'
          DataSource = BaseDados.DS_Vendas
          ParentCtl3D = False
          TabOrder = 9
        end
        object BtnFaturas: TButton
          Left = 563
          Top = 70
          Width = 99
          Height = 25
          Caption = 'F7 - Faturas...'
          TabOrder = 11
          OnClick = BtnFaturasClick
        end
        object IDBEditDialog1: TIDBEditDialog
          Left = 241
          Top = 70
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
          TabOrder = 7
          Text = ''
          Visible = True
          EditType = etAlphaNumeric
          EmptyText = 'Tecle F8'
          FocusColor = clBtnFace
          LabelCaption = 'Tabela de pre'#231'os:'
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
          ButtonHint = 'Tabela de pre'#231'os'
          Etched = False
          ButtonCaption = '...'
          DataField = 'TABELA'
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = Edit1
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbMaxLenght = 10
          SearchDialogFieldList = <>
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
          Left = 312
          Top = 70
          Width = 161
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
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 885
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label40: TLabel
          Left = 311
          Top = 10
          Width = 152
          Height = 11
          Caption = 'Inscr. Est. do Subst. Tribut'#225'ria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DbEditIESubst: TDBEdit
          Left = 312
          Top = 22
          Width = 161
          Height = 21
          DataField = 'IE_SUBSTITUTO_TRIBUTARIO'
          DataSource = BaseDados.DS_Vendas
          TabOrder = 2
        end
        object EditCFOP: TIDBEditDialog
          Left = 5
          Top = 22
          Width = 65
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = ''
          Visible = True
          EditType = etUppercase
          EmptyText = 'F8 - Pesquisar'
          FocusColor = clWindow
          LabelCaption = 'CFOP'
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
          ButtonHint = 'Plano de Contas'
          Etched = False
          ButtonCaption = '...'
          DataField = 'CFOP'
          DataSource = BaseDados.DS_Vendas
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = NomeCFOP
          SQLdbCampoRetorno = 'DESCRICAO'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CFOP'
            'WHERE'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_CFOP'
            'WHERE'
            '%WHERE%'
            'ORDER BY CODIGO')
          CountQuery.Strings = (
            'SELECT COUNT(CODIGO) FROM CAD_CFOP'
            'WHERE'
            '%WHERE%'
            'ORDER BY CODIGO')
          SearchDialogFieldList = <
            item
              FieldName = 'CODIGO'
              WhereSyntax = 'CODIGO'
              DisplayLabel = 'CFOP'
              DisplayWidth = 10
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
              DisplayLabel = 'Nome:'
              DisplayWidth = 70
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scContains
              SearchCase = scUpper
            end
            item
              FieldName = 'OPERACAO'
              WhereSyntax = 'OPERACAO'
              DisplayLabel = 'Sa'#237'da/Entrada'
              DisplayWidth = 12
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = False
              EmptyOperation = eoNull
              DefaultComparison = scBeginsWith
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
        object NomeCFOP: TEdit
          Left = 72
          Top = 22
          Width = 233
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 1
          Text = '***'
        end
        object Panel3: TPanel
          Left = 487
          Top = 9
          Width = 274
          Height = 37
          BevelOuter = bvLowered
          BorderWidth = 2
          Enabled = False
          TabOrder = 3
          object DbTipoOper: TDBRadioGroup
            Left = 3
            Top = 3
            Width = 268
            Height = 31
            Align = alClient
            Caption = '&Tipo de Opera'#231#227'o'
            Color = clBtnFace
            Columns = 3
            DataField = 'OPERACAO'
            DataSource = BaseDados.DS_Vendas
            Items.Strings = (
              'Sa'#237'da'
              'Entrada'
              'Cancelado')
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            Values.Strings = (
              'S'
              'E'
              'C')
          end
        end
      end
    end
  end
  object dbProcurarProduto: TIDBEditDialog
    Left = 565
    Top = 8
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
      'TIPO_PRODUTO IN ('#39'ACA'#39','#39'ACABADO'#39')'
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
        SearchCase = scMixed
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
        SearchCase = scMixed
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
        SearchCase = scMixed
      end
      item
        FieldName = 'SUBGRUPO_NOME'
        WhereSyntax = 'SUBGRUPO_NOME'
        DisplayLabel = 'SUBGRUPO:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'PRC_CUSTO'
        WhereSyntax = 'PRC_CUSTO'
        DisplayLabel = 'PRE'#199'O CUSTO:'
        DisplayFormat = '###,##0.0000'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VALOR_VENDA'
        WhereSyntax = 'VALOR_VENDA'
        DisplayLabel = 'PRE'#199'O VENDA:'
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
  object dbProcurarNFe: TIDBEditDialog
    Left = 176
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
    TabOrder = 4
    Text = ''
    Visible = False
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
      'SELECT * FROM VIEW_NOTAFISCAL'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
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
        FieldName = 'STATUS'
        WhereSyntax = 'STATUS'
        DisplayLabel = 'STATUS:'
        DisplayWidth = 8
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'EMISSAO'
        WhereSyntax = 'EMISSAO'
        DisplayLabel = 'EMISS'#195'O:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CFOP'
        WhereSyntax = 'CFOP'
        DisplayLabel = 'CFOP:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'IMPRESSO'
        WhereSyntax = 'IMPRESSO'
        DisplayLabel = 'IMPRESSO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'OPERACAO'
        WhereSyntax = 'OPERACAO'
        DisplayLabel = 'OPERA'#199#195'O:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'CLIENTE_NOME'
        WhereSyntax = 'CLIENTE_NOME'
        DisplayLabel = 'CLIENTE:'
        DisplayWidth = 27
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_QTDE_PRODUTOS'
        WhereSyntax = 'NF_QTDE_PRODUTOS'
        DisplayLabel = 'QTDE PRODUTOS:'
        DisplayFormat = '###,##0'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_VALOR_PRODUTOS'
        WhereSyntax = 'NF_VALOR_PRODUTOS'
        DisplayLabel = 'VALOR PRODUTOS:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 18
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_VALOR_TOTAL'
        WhereSyntax = 'NF_VALOR_TOTAL'
        DisplayLabel = 'VALOR NF:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
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
  object dbEditPesquisarNCM: TIDBEditDialog
    Left = 661
    Top = 6
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 5
    Text = ''
    Visible = False
    LabelCaption = 'Cole'#231#227'o:'
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
    DataField = 'COLECAO'
    DataSource = BaseDados_PCP.ds_referencias
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT NOME FROM CAD_COLECAO'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_NCM'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'C'#211'DIGO:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'DESCRI'#199#195'O:'
        DisplayWidth = 83
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
  object ds_PedidosConferencia: TDataSource
    DataSet = db_PedidosConferencia
    Left = 416
    Top = 254
  end
  object db_PedidosConferencia: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOCONFERENCIA'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 416
    Top = 229
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_PedidosConferenciaItens: TFDQuery
    MasterSource = ds_PedidosConferencia
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select '
      'REFERENCIA,'
      'DESCRICAO,'
      'VALOR_UNIT,'
      'SUM(QUANTIDADE) AS QUANTIDADE'
      'From PEDIDOCONFERENCIA_ITENS'
      'WHERE'
      'CODIGO=:CODIGO'
      ''
      'GROUP BY  REFERENCIA, DESCRICAO, VALOR_UNIT')
    Left = 496
    Top = 231
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
