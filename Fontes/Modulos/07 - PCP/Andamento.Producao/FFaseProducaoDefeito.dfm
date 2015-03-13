object FrmFaseProducaoDefeito: TFrmFaseProducaoDefeito
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Andamento de fase | Defeito'
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
        Width = 218
        Caption = 'Andamento de fase | Defeito'
        ExplicitWidth = 218
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
        DataSource = ds_Defeito
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
      end
      object EditData: TDBEdit
        Left = 10
        Top = 37
        Width = 97
        Height = 23
        DataField = 'DATAREGISTRO'
        DataSource = ds_Defeito
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
        Font.Color = clWindowText
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
        DataSource = ds_Defeito
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
        Left = 10
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
        DataSource = ds_Defeito
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
        Width = 299
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
        DataSource = ds_Defeito
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
        DataSource = ds_Defeito
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
      object IDBEditDialog1: TIDBEditDialog
        Left = 386
        Top = 83
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
        TabOrder = 8
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
        DataField = 'QUALIDADE'
        DataSource = ds_Defeito
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
        Left = 462
        Top = 83
        Width = 267
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
        TabOrder = 9
        Text = '***'
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
        0A544A504547496D61676544160000FFD8FFE000104A46494600010101004800
        480000FFE1030A4578696600004D4D002A0000000800000000000E0006010300
        030000000100060000011A0005000000010000005C011B000500000001000000
        6401280003000000010002000002010004000000010000006C02020004000000
        01000002950000000000000048000000010000004800000001FFD8FFDB004300
        080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A
        1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432
        FFDB0043010909090C0B0C180D0D1832211C2132323232323232323232323232
        3232323232323232323232323232323232323232323232323232323232323232
        3232323232FFC0001108000900A003012100021101031101FFC4001F00000105
        01010101010100000000000000000102030405060708090A0BFFC400B5100002
        010303020403050504040000017D010203000411051221314106135161072271
        14328191A1082342B1C11552D1F02433627282090A161718191A25262728292A
        3435363738393A434445464748494A535455565758595A636465666768696A73
        7475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
        AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4
        E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101010101
        0000000000000102030405060708090A0BFFC400B51100020102040403040705
        040400010277000102031104052131061241510761711322328108144291A1B1
        C109233352F0156272D10A162434E125F11718191A262728292A35363738393A
        434445464748494A535455565758595A636465666768696A737475767778797A
        82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6
        B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2
        F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00B1457E767E9814500145
        00145001450014500145001450014500145020A2818514005140051400514005
        140051400514005140051408FFD900FFED0CE450686F746F73686F7020332E30
        003842494D03ED0A5265736F6C7574696F6E0000000010004800000001000100
        480000000100013842494D040D18465820476C6F62616C204C69676874696E67
        20416E676C6500000000040000001E3842494D041912465820476C6F62616C20
        416C74697475646500000000040000001E3842494D03F30B5072696E7420466C
        61677300000009000000000000000001003842494D040A0E436F707972696768
        7420466C6167000000000100003842494D2710144A6170616E65736520507269
        6E7420466C616773000000000A000100000000000000023842494D03F517436F
        6C6F722048616C66746F6E652053657474696E677300000048002F6666000100
        6C66660006000000000001002F6666000100A1999A0006000000000001003200
        000001005A00000006000000000001003500000001002D000000060000000000
        013842494D03F817436F6C6F72205472616E736665722053657474696E677300
        0000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E8000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D040806477569646573
        0000000010000000010000024000000240000000003842494D041E0D55524C20
        6F766572726964657300000004000000003842494D041A06536C696365730000
        000071000000060000000000000000000003200000032000000008006C006F00
        67006F005F007200670062000000010000000000000000000000000000000000
        0000010000000000000000000003200000032000000000000000000000000000
        0000000000000000000000000000000000000000003842494D04111149434320
        556E74616767656420466C61670000000101003842494D0414174C6179657220
        49442047656E657261746F72204261736500000004000000013842494D040C15
        4E65772057696E646F7773205468756D626E61696C0000093F00000001000000
        700000007000000150000093000000092300180001FFD8FFE000104A46494600
        010201004800480000FFEE000E41646F626500648000000001FFDB0084000C08
        080809080C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C
        0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D
        0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C
        0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFF
        C00011080070007003012200021101031101FFDD00040007FFC4013F00000105
        01010101010100000000000000030001020405060708090A0B01000105010101
        01010100000000000000010002030405060708090A0B10000104010302040205
        07060805030C33010002110304211231054151611322718132061491A1B14223
        241552C16233347282D14307259253F0E1F163733516A2B283264493546445C2
        A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5
        F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F711000202010204
        040304050607070605350100021103213112044151617122130532819114A1B1
        4223C152D1F0332462E1728292435315637334F1250616A2B283072635C2D244
        9354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5
        D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C030100
        02110311003F002A4924B907B45249249294924924A5249249294924924A5249
        2492949C723E213271C8F88486EA7FFFD02A4924B907B45249249294924924A5
        249249294924924A52492492949C723E213271C8F88486EA7FFFD12A4924B907
        B45249249294924924A5249249294924924A52492492949C723E213271C8F884
        86EA7FFFD22A4924B907B45249249294924924A5249249294924924A52492492
        949C723E213271C8F88486EA7FFFD32A4924B907B45249249294924924A52492
        49294924924A52492492949C723E213271F487C4243753FFD42A3D1819F90CF5
        28C6B6DAFB3DAC25A7FAAEFCEFECA2749C4AF33A9E362DBAD763CEF1C4B5AD75
        8E6FF6B66D5B9F587AEE7E1E78C3C27368AE96349F6074976BB7DDF46B6B7F71
        7338706338A59B2C8C6025C0040714A537ABCD9F20CB1C18A31964944E42721E
        18461F2FE8BCD3D8FADEE65AD35BD9F498F05A47F59AE443859A1CC61C6B83AD
        FE6DA6B74BA353B3DBEE5BFF00585ACEA1F57B1FAB39A1990D6B774770FF0063
        EBFEAFABEF62D0EB7D5323A6F4DC6B719AC36D85ACDCF04C0D9BCC005BFB8A7F
        B86307219E43EDC230C91901ACA13FEAB07DFF00211884318F7324F2629C652D
        219317F5BF75E3863E43AE38EDA9EEBC120D4D692F047D2F63654EFC1CEC766F
        C8C7B6A67EFBD84375F177D15ABD1AEFAC1916E559D3DB58FB4BE6FC87B406B5
        E7BB1DAB9DB7FD17E9B67F6D6EF456DCF6645397D42AEA7301CC60690CDC1C1E
        C7B9BF4BD4FE5258391865028CC717170CA518C61E9DBF4B8A7FE02B98E7A784
        9B18E5C1C3C508CA72C9EAF9B687063FFAA3C4B29B9EC7D8CADEFAEB1363DAD2
        5AD03525EF036B115BD3FA83AAF59B8B73AA89DE2B7447EF71F45741F54EC357
        45CDB000E2C739C1AED418A99F4937D59EB3D4B3BA93EBCABBD4ADD4B9FB36B5
        A0383991B368DDF9E863E4F091844A72E2CE3411028272F399A273F042063CB9
        1C465297148117E9888BCC0D480DD4B880D035249E00562CE9FD42A0D3662DCC
        0F21AD26B76A4986B78FA4E72E8BA0E1527EB0F53BB68FD59E4543C0DAE79739
        BFD96EC557A5FD62EA57F5AADB659BB1B22C737D021B0D69DDE96D706EEDCCF6
        EEFDF423C9E3021EECE40E59CB1C3845FC87838A4BA5CDE4329FB508C861C71C
        B938E5C27F591F72308708FDC70ADAAEA1DB2FADD4BE276D8D2D31FBDB5F08C3
        A6F52733D418979644EEF4DDC7DDB974D7625595F5C1BEA8DCDA319B7069E373
        5DB59FE6B9FBD4EF3D53F6A1B8754C6AF1D9601F65240F60237B1F3FE15DEE52
        0F87C419194A4622671C78786FD3FA72E2623F112780444448E31965C7C7C3EA
        DB1C38232F53CF62E6E330621BEBA6C1536F37566A602E2D639B88CB5E2BDEED
        CEFF00A7FCE28669C06D38D4623858697D81F76DDAEB1AEF4ACADF64FBBDAF75
        D557FF0016ADFD696620EA4DBB15CC70BD9BADF4C8237B4EDDC76FE73D9B5638
        E47C42AF9E7284A784F0CA8D71F5E1F47FD2E06CE08C724619C714388197B7FA
        3C47DCF9BFB9EE4F85FFD5B78995661E555955897D2E0E0D3A48E1CCFED30AE8
        F2EAFABDD72C6E69CEFB2D81A1B6B1C58C740D7DCDB87D36EEFE719EC5CBC1F0
        3F725B4F81FB9731879838E32C7280C98E478B865FBDFBCF599B9619271C919C
        B164883113857C87F465193B5F587AA61DB83574AE9A4BF1E9037BC4C1D836D4
        C6B8FF0039EEFD23DE8DF58FA8E0E5F4FC4AB1AF65B656F05ED69D40D8E6CFF9
        CB9F83E07EE4A1DE07EE4F9F3B925EE8311FAD8C61FDC8C36E15B1E4B1C7DAA3
        2FD4CA53B275C93CBF34B23D0F48CEE9D7744B7A464E40C3B1FBC7AA7DA08792
        FDDBCFB3F90FAD59E8795F57FA57AD5333BD47BF697D8E1B2B3B7706B69D36FB
        7FAEF5CAC1F03F7250EF03F727439F9C7DB3EDC653C51E08CCF17C8B3272109F
        BA3DC9C619A5EE4E11E0AF73BFCBC4EEF40EA1858BD1F368C8B9B5DD697FA6C7
        7266B6B047F6956FAB1978D87D40DB9560A6BF45CDDCEE37135FB7FE8ACB8778
        1FB9283E07EE518E6A60E13C23F51F2FF5BFBCCB2E5604671C47FA47CFFD5FD1
        F4BB785D6F1B07AF66643DDBB0F2DE41B1BAC41DD5DB1F9EDD5FF455DC36FD59
        AFAAD593897BEFC8BEC3E8D0DD58C73E77BE363366C6EFFE71EB0BA5F50B7A6E
        57DA1B50B411B5F5BB491CCB1F0ED8F6AD56FD60E935643B368E964663E49792
        D1ABBE9BB70DFB77FE739B5AB7CBF310311EE4E038666623384CCB1F17ABF572
        8FCCD4E67979894BDB8643C58863E2C7931C6397863C118E684FE5FEF452F56E
        A3FB37EB4372482FAFD06B2D68E7638BBE8FF298E6B5EA197D3FEAD66E4BFA87
        ED16D55DAEDF6D3ED0E27F3B6B6C1EB337FF00C5AC3CCCAC8CDC9B32AFD6CB0E
        B02000346B1BFC96B5060F81FB9433E76E5901C6326394CE4809D8313FE0FF00
        D166C7C918C71919258B2C718C53963AA9C47F7FFE6CDB1D47F677DADFFB343C
        6376DFE3FF00073FA4F4BFE37DEAB8E47C42507C0FDC9C032343C8ECA9CA4653
        32A11B37511511E4DB88E1888D9950AE291E291FEF17FFD9003842494D04211A
        56657273696F6E20636F6D7061746962696C69747920696E666F000000005500
        000001010000000F00410064006F00620065002000500068006F0074006F0073
        0068006F00700000001300410064006F00620065002000500068006F0074006F
        00730068006F007000200036002E003000000001003842494D04060C4A504547
        205175616C69747900000000070008000000010100FFDB004300020101020101
        0202020202020202030503030303030604040305070607070706070708090B09
        08080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB00430102
        0202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFF
        C00011080031032003012200021101031101FFC4001F00000105010101010101
        00000000000000000102030405060708090A0BFFC400B5100002010303020403
        050504040000017D01020300041105122131410613516107227114328191A108
        2342B1C11552D1F02433627282090A161718191A25262728292A343536373839
        3A434445464748494A535455565758595A636465666768696A73747576777879
        7A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6
        B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EA
        F1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101010101000000000000
        0102030405060708090A0BFFC400B51100020102040403040705040400010277
        000102031104052131061241510761711322328108144291A1B1C109233352F0
        156272D10A162434E125F11718191A262728292A35363738393A434445464748
        494A535455565758595A636465666768696A737475767778797A828384858687
        88898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3
        C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8
        F9FAFFDA000C03010002110311003F00E828A28AFF0032CFF55028A28A0028A2
        8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
        8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
        8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
        8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
        8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
        8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002B73E17FFC94
        DF0EFF00D85AD7FF0047AD61D6E7C2FF00F929BE1DFF00B0B5AFFE8F5AEDCBBF
        DE69FF008A3F99C7987FBBCFFC2FF230E8A28AE23B028A28A0028A28A0028A28
        A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
        A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
        A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
        A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
        A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
        A0028A28A0028A28A0028A28A0028A28A0028A28A002B73E17FF00C94DF0EFFD
        85AD7FF47AD61D6E7C2FFF00929BE1DFFB0B5AFF00E8F5AEDCBBFDE69FF8A3F9
        9C7987FBBCFF00C2FF00230E8A28AE23B028A28A0028A28A0028A28A0028A28A
        0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
        0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
        0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
        0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
        0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
        0028A28A0028A28A0028A28A0028A28A002B73E17FFC94DF0EFF00D85AD7FF00
        47AD61D6E7C2FF00F929BE1DFF00B0B5AFFE8F5AEDCBBFDE69FF008A3F99C798
        7FBBCFFC2FF230E8A28AE23B028A28A0028A28A0028A28A0028A28A0028A28A0
        028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
        028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
        028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
        028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
        028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
        028A28A0028A28A0028A28A002B73E17FF00C94DF0EFFD85AD7FF47AD14576E5
        DFEF34FF00C51FCCE3CC3FDDE7FE17F91FFFD9}
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
  object db_Defeito: TFDQuery
    BeforeOpen = db_DefeitoBeforeOpen
    BeforePost = db_DefeitoBeforePost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PCP_ORDEMPRODUCAO_DEFEITOS'
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
    object db_DefeitoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_DefeitoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_DefeitoAPROVADO: TStringField
      FieldName = 'APROVADO'
      Required = True
      Size = 10
    end
    object db_DefeitoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
    end
    object db_DefeitoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      Size = 30
    end
    object db_DefeitoDATAREGISTRO: TSQLTimeStampField
      FieldName = 'DATAREGISTRO'
    end
    object db_DefeitoCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object db_DefeitoCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_DefeitoTAMANHO_ID: TIntegerField
      FieldName = 'TAMANHO_ID'
    end
    object db_DefeitoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_DefeitoORDEM_GRADE: TStringField
      FieldName = 'ORDEM_GRADE'
      Size = 30
    end
    object db_DefeitoQTDEPERDAS: TIntegerField
      FieldName = 'QTDEPERDAS'
      OnChange = db_DefeitoQTDEPERDASChange
    end
    object db_DefeitoTERCEIRIZADO: TIntegerField
      FieldName = 'TERCEIRIZADO'
    end
    object db_DefeitoFASE: TIntegerField
      FieldName = 'FASE'
    end
    object db_DefeitoCELULA: TIntegerField
      FieldName = 'CELULA'
    end
    object db_DefeitoMAQUINA: TIntegerField
      FieldName = 'MAQUINA'
    end
    object db_DefeitoOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object db_DefeitoPROCESSO: TIntegerField
      FieldName = 'PROCESSO'
    end
    object db_DefeitoTURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object db_DefeitoQUALIDADE: TIntegerField
      FieldName = 'QUALIDADE'
    end
    object db_DefeitoDEFEITO: TIntegerField
      FieldName = 'DEFEITO'
    end
    object db_DefeitoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
  end
  object ds_Defeito: TDataSource
    DataSet = db_Defeito
    Left = 144
    Top = 8
  end
end
