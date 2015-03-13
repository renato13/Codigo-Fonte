object FrmFaseProducaoPerda: TFrmFaseProducaoPerda
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Andamento de fase | Perda'
  ClientHeight = 419
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 378
    Width = 745
    Height = 41
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BtnOk: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gravar...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnOkClick
    end
    object BtnCancelar: TBitBtn
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
      OnClick = BtnCancelarClick
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 745
    Height = 36
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 745
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 745
      ExplicitWidth = 745
      inherited LblBarraTitulo: TLabel
        Width = 205
        Caption = 'Andamento de fase | Perda'
        ExplicitWidth = 205
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 131
    Width = 745
    Height = 247
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 2
      Top = 140
      Width = 741
      Height = 105
      Align = alBottom
      Caption = 'Observa'#231#245'es:'
      TabOrder = 1
      object DBMemo1: TDBMemo
        Left = 2
        Top = 17
        Width = 737
        Height = 86
        Align = alClient
        DataField = 'OBSERVACAO'
        DataSource = ds_Perda
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object gbxFaseSeguinte: TGroupBox
      Left = 2
      Top = 17
      Width = 741
      Height = 123
      Align = alClient
      Caption = 'Dados do Defeito:'
      TabOrder = 0
      object Label2: TLabel
        Left = 10
        Top = 19
        Width = 88
        Height = 15
        Caption = 'Data do Defeito:'
      end
      object Label5: TLabel
        Left = 386
        Top = 20
        Width = 67
        Height = 15
        Caption = 'Quantidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object EditData: TDBEdit
        Left = 10
        Top = 37
        Width = 97
        Height = 23
        DataField = 'DATAREGISTRO'
        DataSource = ds_Perda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dbEditPesquisarFasesDestino: TIDBEditDialog
        Left = 474
        Top = 37
        Width = 70
        Height = 23
        Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        TabOrder = 4
        Text = ''
        Visible = True
        LabelCaption = 'Fases de Produ'#231#227'o:'
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
        DataField = 'FASE'
        DataSource = ds_Perda
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeFaseProxima
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_FASES'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_FASES'
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
      object EditNomeFaseProxima: TEdit
        Left = 550
        Top = 37
        Width = 179
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
        TabOrder = 5
        Text = '***'
      end
      object EditTerceirizado: TIDBEditDialog
        Left = 7
        Top = 83
        Width = 70
        Height = 23
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        TabOrder = 6
        Text = ''
        Visible = True
        LabelCaption = 'Terceirizado (respons'#225'vel pelo Defeito):'
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
        DataField = 'TERCEIRIZADO'
        DataSource = ds_Perda
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeTerceirizado
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
          'TIPO IN ('#39'OFICINA'#39','#39'TERCEIRIZADO'#39')'
          'AND'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'CODIGO'
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
            DisplayWidth = 60
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'NOME_FANTASIA'
            WhereSyntax = 'NOME_FANTASIA'
            DisplayLabel = 'Nome Fantasia:'
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
      object EditNomeTerceirizado: TEdit
        Left = 83
        Top = 83
        Width = 646
        Height = 23
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        Text = '***'
      end
      object Edit1: TEdit
        Left = 195
        Top = 37
        Width = 187
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
        TabOrder = 2
        Text = '***'
      end
      object EditDefeito: TIDBEditDialog
        Left = 122
        Top = 37
        Width = 70
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
        LabelCaption = 'Defeito'
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
        DataField = 'DEFEITO'
        DataSource = ds_Perda
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = Edit1
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_DEFEITOS'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_DEFEITOS'
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
      object LabeledEdit2: TDBEdit
        Left = 386
        Top = 37
        Width = 80
        Height = 23
        Hint = 'Quantidade a Produzir'
        DataField = 'QTDEPERDAS'
        DataSource = ds_Perda
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 36
    Width = 745
    Height = 17
    Align = alTop
    TabOrder = 3
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 53
    Width = 745
    Height = 78
    Align = alTop
    Caption = 'Detalhes:'
    Enabled = False
    TabOrder = 4
    object Image1: TImage
      Left = 2
      Top = 17
      Width = 741
      Height = 59
      Align = alClient
      Picture.Data = {
        0A544A504547496D61676564060000FFD8FFE000104A46494600010101006000
        600000FFDB004300020101020101020202020202020203050303030303060404
        0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
        0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108003700B703012200021101031101
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
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FCC7
        8546338AB312F3802A28A2C77E0D5B863C0F635F85D491FEACE1680E87D31562
        18B23269B0A8E78AB30A71D07158391EDE1E8DF71624CF18E054D1C78E3B1A74
        2A3F1A9618FD8D72BA8CF6E8D000808E722A61103D462848F71E0608A99541EC
        45734A47AD4A88CF2FD8D38422A5C7FB229E231DF8CD64E6CED861D3DD15B07D
        0D49E57B54BE50F6FCA9D81E8293996A832AF923DA93C91563CBF614797EC29D
        D93EC0A662031C66A2F2BD8D5DF2BDAA2F2FD8D68A47155A05274DB504917BF5
        ABD377E2A192320F4CD6F19B3CCAD40A12A679C5579A3F6ABD2C400CE6A09947
        A574C26D9E2E26858A13423D6AB4D0819E7A55F953AF3552653CF15D34E6CF13
        154114A68FDFA5152CB1F7CE68AE852678D3A5AEC5B897271E9566219E3A66A1
        863E739AB30C7C7D2B92A33E8F0B4992411E39CE6ADC3F76A18D327DEAD449C0
        06B967368F7B0B489228C6EC03D2AC43FEED4714633C1C55A85473C572B933DC
        A344589077A9523DC3818CD2C508EE6A68D71DB35CEE6CF668D0EE33CA1EDF95
        4822F5028442FED56760F7ACDCD9DF4A82EC43E57B51E57B54FE57B1A3CAF635
        3766FEC0AC60C0CF069981E82AE18C0E0E6A2F2FDE9A9B339E1D22A11E801A89
        FE4FE106AD32E3B0A8E6507B56AA6CF3AAD128CCA3D2A399066AD4B063249CFE
        1504D1F3D6B64CF2AAD228CD1F0467A5569A3E3AD5F9A3E719CD559A3E3AD755
        391E262A914A64C77EB55E6419AB9347C75E45569A3E7AD74D391E062A9B29CA
        9D47AD14E90124E3B515D37678F2A7A96A3F978EB56A25E319C5568D7710738A
        B50F4AE5AAD9EFE1516204C9CE6AD42BCE3D2ABDB76AB30FDEAE5AA7BF848AD0
        9E24156218F8CE6A087AD5A87EED7249B3DFC3C53268E3F7E9532479039C034C
        8FBD4F1264819E95CED9ED5182D054409EF52797EF4226FEF8A984183C9CFE15
        95D9E8D2A43768F414BB47A549B07A51B07A565ED19D7EC481909E3078A4D83D
        2AC6C1E9513A6CEF9AD6ECC2AD12ACB16D3D79AAF247C8E7AD5C914B37A62ABC
        B191D0E715A2679B5A96855950E0F3D2ABCA98EF9CD5A9BBFBD579FB57441DF7
        3C6C44122ACC9C9E7AD559E2C82738C55B9BAD5797EEB574D26CF131305A94E5
        4E3AD5493BD5C9BA55595319E7AD76523E77148A922E093E9452CBDE8AEA3C49
        A572787AD5987A514572D53D7C297208F18E6ACC31F39CD145725467D1E1628B
        30C7EFD2ACC29C6334515C950F7F0B14588D73F8D5841B0E7AD14573B3DBA291
        3431F4E6A7A28AE67267B1490E299E73D69703D05145637676A8A1B29C738A8A
        53D78EB4515B464CE2AAC8A518F7C540E719A28AE8479B58A928CFE355A6E714
        515D148F07148AD375AAF272187AD14575533C2C4EECAB30E2AB4FDA8A2BAE9B
        3E7F151455963EBCD14515D37678D28AB9FFD9}
      Stretch = True
      ExplicitTop = 13
    end
    object Label1: TLabel
      Left = 20
      Top = 20
      Width = 39
      Height = 23
      Caption = 'COR:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblCor: TLabel
      Left = 20
      Top = 45
      Width = 389
      Height = 23
      AutoSize = False
      Caption = '***'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblTamanho: TLabel
      Left = 431
      Top = 45
      Width = 27
      Height = 23
      Caption = '***'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 431
      Top = 20
      Width = 92
      Height = 23
      Caption = 'TAMANHO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object db_Perda: TFDQuery
    BeforeOpen = db_PerdaBeforeOpen
    BeforePost = db_PerdaBeforePost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PCP_ORDEMPRODUCAO_PERDAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 56
    Top = 8
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_PerdaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_PerdaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_PerdaAPROVADO: TStringField
      FieldName = 'APROVADO'
      Required = True
      Size = 10
    end
    object db_PerdaDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
    end
    object db_PerdaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      Size = 30
    end
    object db_PerdaDATAREGISTRO: TSQLTimeStampField
      FieldName = 'DATAREGISTRO'
      EditMask = '99/99/9999'
    end
    object db_PerdaCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object db_PerdaCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_PerdaTAMANHO_ID: TIntegerField
      FieldName = 'TAMANHO_ID'
    end
    object db_PerdaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_PerdaORDEM_GRADE: TStringField
      FieldName = 'ORDEM_GRADE'
      Size = 30
    end
    object db_PerdaQTDEPERDAS: TIntegerField
      FieldName = 'QTDEPERDAS'
      OnChange = db_PerdaQTDEPERDASChange
      DisplayFormat = '###,##0'
    end
    object db_PerdaTERCEIRIZADO: TIntegerField
      FieldName = 'TERCEIRIZADO'
    end
    object db_PerdaFASE: TIntegerField
      FieldName = 'FASE'
    end
    object db_PerdaCELULA: TIntegerField
      FieldName = 'CELULA'
    end
    object db_PerdaMAQUINA: TIntegerField
      FieldName = 'MAQUINA'
    end
    object db_PerdaOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object db_PerdaPROCESSO: TIntegerField
      FieldName = 'PROCESSO'
    end
    object db_PerdaTURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object db_PerdaQUALIDADE: TIntegerField
      FieldName = 'QUALIDADE'
    end
    object db_PerdaDEFEITO: TIntegerField
      FieldName = 'DEFEITO'
    end
    object db_PerdaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
  end
  object ds_Perda: TDataSource
    DataSet = db_Perda
    Left = 144
    Top = 8
  end
end
