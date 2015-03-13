object FrmFaseProducaoRetornoTerceirizados: TFrmFaseProducaoRetornoTerceirizados
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Retorno de Servi'#231'os'
  ClientHeight = 396
  ClientWidth = 652
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
    Top = 355
    Width = 652
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
    Width = 652
    Height = 36
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 652
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 652
      Height = 36
      ExplicitWidth = 652
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 650
        Height = 34
        Caption = 'Retorno de Servi'#231'os Terceirizados'
        ExplicitWidth = 256
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 53
    Width = 652
    Height = 302
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object gbxFaseAtual0: TGroupBox
      Left = 2
      Top = 17
      Width = 648
      Height = 122
      Align = alTop
      Caption = 'Retorno'
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 15
        Width = 75
        Height = 15
        Caption = 'Data Retorno:'
      end
      object Label5: TLabel
        Left = 368
        Top = 63
        Width = 127
        Height = 15
        Caption = 'Quantidade Retornada:'
      end
      object btnGrade: TSpeedButton
        Left = 473
        Top = 79
        Width = 24
        Height = 24
        Cursor = crHandPoint
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0018000000260000002600000026000000260000002600000026000000260000
          0026000000260000002600000026000000260000002600000026000000260000
          0026000000260000002600000026000000260000001900000000EF9F51A4F0A3
          58FFF1A75FFFF1AB66FFF2AF6DFFF3B273FFF3B579FFF4B97FFFF4BB84FFF4BE
          89FFF5C08DFFF5C291FFF5C494FFF6C596FFF6C698FFF6C798FFF6C798FFF6C6
          97FFF6C595FFF5C493FFF5C290FFE3B282B50000002600000000F1A860FFFFF1
          EBFFFFECE2FFFFEEE5FFFFF0E8FFFFF2EAFFFFF4EDFFF6C596FFFFF6F1FFFFF8
          F3FFFFF9F5FFFFF9F6FFFFFAF8FFFFFBF9FFFADCC0FFFFFCFAFFFFFCFBFFFFFC
          FBFFFFFCFBFFFFFDFCFFFFFDFCFFF6C89BFF0000002600000000F2AF6EFFFFF6
          F2FFFFECE1FFFFEEE4FFFFF0E7FFFFF2EAFFFFF3ECFFF5C08CFFFFF6F1FFFFF8
          F3FFFFF9F6FFFFFAF7FFFFFBF9FFFFFBFAFFF9D7B6FFFFFCFBFFFFFDFBFFFFFD
          FCFFFFFDFBFFFFFDFBFFFFFDFCFFF7CEA7FF0000002600000000F3B67AFFFFF9
          F6FFFFEBE0FFFFEDE3FFFFEFE6FFFFF1E9FFFFF3ECFFF4BA82FFFFF6F1FFFFF8
          F3FFFFF9F6FFFFFAF7FFFFFBF9FFFFFCFAFFF8D1ACFFFFFDFCFFFFFDFCFFFFFD
          FCFFFFFDFCFFFFFDFCFFFFFDFBFFF8D3AFFF0000002600000000F4BC85FFF0A1
          54FFF1A45BFFF1A861FFF2AB66FFF2AE6CFFF3B172FFF3B579FFF4B87EFFB78D
          63FFC4996FFFE3B486FFF6C596FFF6C89CFFF7CBA2FFF7CFA8FFF8D2AEFFF8D5
          B3FFF9D9B9FFFADCC0FFFADFC6FFF8D5B3FF0000002600000000F5C08CFFFFFD
          FCFFFFE9DCFFFFEBDFFFFFEDE3FFFFF0E7FFFFF1EAFFF3AF6EFF0707C8FF63A2
          DEFF9FB4C7FFBFBCBAFFC6C3C2FFDCDAD9FFF0C194FFFFFEFEFFFFFEFDFFFFFE
          FDFFFFFDFCFFFFFCFBFFFFFCFAFFF8D5B2FF0000002600000000F5C291FFFFFF
          FFFFFFE8DBFFFFEADEFFFFECE0FFFFEEE4FFFFF0E7FFF2AA64FF99C6F5FFA8D2
          FAFF81BAF0FF6EAAE5FF86B0D7FFB4B9C1FFB8916BFFFDFCFAFFFFFDFBFFFFFC
          FBFFFFFCFAFFFFFBF9FFFFFBF9FFF8D1ACFF0000002600000000F5C392FFFFFF
          FFFFFFE7DAFFFFE9DCFFFFEBDFFFFFECE2FFFFEEE5FFF1A45BFFD5DEF1FF81BE
          F8FFE9F4FFFFC7E3FEFF9ACBF9FF000095FFB38A65FFBFBCBAFFFDFAF7FFFFFA
          F8FFFFFAF8FFFFFAF7FFFFF9F6FFF7CCA1FF0000002600000000F5C18FFFF09F
          51FFF09F51FFF09F51FFF09F51FFF09F51FFF09F51FFF09F51FFF0A257FF75AF
          EAFFA8D3FBFFEDF6FEFFDCEEFEFF2F3BDBFF000095FFB38862FFB88D65FFF4BE
          8BFFF6C392FFF6C697FFF7C99DFFF6C595FF0000002600000000F4BE89FFFFFF
          FFFFFFE5D6FFFFE7D9FFFFE8DBFFFFE9DDFFFFEBDFFFF09F51FFFFEDE3FFB3D1
          EFFF7CBDFBFFB8DCFEFFCCCCFFFF0606D9FF0505D1FF000095FFBBB4B4FFBFB9
          B4FFFDF5F0FFFFF6F1FFFFF6F0FFF4BC86FF0000002600000000F4B980FFFFFF
          FFFFFFE4D4FFFFE5D6FFFFE6D8FFFFE7DAFFFFE9DCFFF09F51FFFFEBE0FFF2E7
          E3FF638EF3FF90A2F6FF8788F9FFC8C8FFFF0707DAFF0404D4FF000095FFBBB3
          B2FFBFB7B1FFFDF2EBFFFFF4EDFFF3B375FF0000002600000000F3B274FFFFFC
          FBFFFFE2D1FFFFE3D3FFFFE4D5FFFFE6D7FFFFE7D9FFF09F51FFFFE9DCFFFFEA
          DDFFFFEADEFF7578EFFF8E96F5FF7A7BFAFFC1C1FFFF0808DAFF0404D7FF0000
          95FFBBB0AEFFBFB4AEFFFDEFE7FFF1AA64FF0000002600000000F1AB67FFF09F
          51FFF09F51FFF09F51FFF09F51FFF09F51FFF09F51FFF09F51FFF09F51FFF09F
          51FFF09F51FFF09F51FF7B75E2FF8890F5FF6D6EF9FFB9B9FEFF0808D9FF0404
          D9FF000095FFB38257FFB78759FFEF9F52FF0000002600000000F0A358FFFFF6
          F1FFFFDECBFFFFDFCCFFFFE0CEFFFFE1D0FFFFE2D1FFF09F51FFFFE4D4FFFFE5
          D5FFFFE5D6FFFFE6D7FFFFE6D8FF7F81F4FF7F89F6FF5C5EFAFFAFAFFEFF0606
          D9FF0404DAFF040498FFBBACA7FFB67331FF0000002800000000EF9B48FFFFF1
          E8FFFFDCC8FFFFDDC9FFFFDECBFFFFDFCCFFFFE0CEFFF09F51FFFFE1D0FFFFE2
          D1FFFFE3D2FFFFE3D3FFFFE3D3FFFFE4D4FF807EEFFF7781F7FF4E4EF9FFA3A3
          FDFF0505D8FF0505DDFF0C0B9BFFAF6E33FF0000005700000002EE9640FFFFED
          E3FFFFEDE3FFFFF2EAFFFFF8F3FFFFF9F5FFFFFAF7FFF09F51FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09F51FF8485F8FF6A73F7FF4041
          F8FF9898FCFF0404D7FF0505DCFF160E91FF00000B5600000037EE9641A2EE96
          40FFEE9640FFEE9640FFEE9640FFEE9640FFEE9640FFEE9640FFEE9640FFEE96
          40FFEE9640FFEE9640FFEE9640FFEE9640FFEE9640FFEE9640FF8585FAFF5D64
          F8FF2F2FF7FF8A8AFAFF0303D6FF0505D9FF01019EE200000038000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008585
          FAFF4B52F8FF1E1FF4FF7676F4FF0101B3FF2135D2E700000030000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008585FAFF383EF6FF0303BCFF262DCBF088BCEFCA00000007000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000007373EFFF2636DCE79ECEFEBDA7CEFF1A00000000}
        OnClick = btnGradeClick
      end
      object DBEdit2: TDBEdit
        Left = 10
        Top = 32
        Width = 79
        Height = 23
        DataField = 'DATARETORNOORIGEM'
        DataSource = ds_Andamento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 178
        Top = 32
        Width = 455
        Height = 23
        AutoSize = False
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object editTerceirizado: TIDBEditDialog
        Left = 96
        Top = 32
        Width = 78
        Height = 23
        HelpKeyWord = ''
        AutoSize = False
        Color = clBtnFace
        Enabled = False
        TabOrder = 1
        Text = '0'
        Visible = True
        LabelCaption = 'Terceirizado:'
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
        DataField = 'TERCEIRIZADOORIGEM'
        DataSource = ds_Andamento
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = Edit1
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
      object EditQtde: TDBEdit
        Left = 368
        Top = 80
        Width = 99
        Height = 23
        Hint = 'Quantidade a Produzir'
        DataField = 'QTDE_ENVIADA'
        DataSource = ds_Andamento
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object IDBEditDialog2: TIDBEditDialog
        Left = 11
        Top = 80
        Width = 70
        Height = 23
        Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
        HelpKeyWord = ''
        AutoSize = False
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        TabOrder = 3
        Text = '0'
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
        DataField = 'FASEORIGEM'
        DataSource = ds_Andamento
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = Edit2
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
      object Edit2: TEdit
        Left = 87
        Top = 80
        Width = 275
        Height = 23
        AutoSize = False
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object editCustoUnitario: TEdit
        Left = 524
        Top = 80
        Width = 109
        Height = 23
        AutoSize = False
        TabOrder = 6
        Text = '0,00'
        OnChange = editCustoUnitarioChange
      end
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 229
      Width = 648
      Height = 71
      Align = alBottom
      Caption = 'Observa'#231#245'es:'
      TabOrder = 2
      object DBMemo1: TDBMemo
        Left = 2
        Top = 17
        Width = 644
        Height = 52
        Align = alClient
        DataField = 'OBSERVACAO'
        DataSource = ds_Andamento
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 139
      Width = 648
      Height = 90
      Align = alClient
      Caption = 'Contas a Pagar'
      TabOrder = 1
      object Label2: TLabel
        Left = 127
        Top = 22
        Width = 66
        Height = 15
        Caption = 'Vencimento:'
      end
      object EditPagamento: TIDBEditDialog
        Left = 237
        Top = 40
        Width = 65
        Height = 23
        HelpKeyWord = ''
        AutoSize = False
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = ''
        Visible = False
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
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
        DataSource = ds_Andamento
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
      object EditNomeFormaPagto: TEdit
        Left = 306
        Top = 40
        Width = 327
        Height = 23
        AutoSize = False
        CharCase = ecUpperCase
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '***'
        Visible = False
      end
      object EditTotalPagar: TEdit
        Left = 12
        Top = 40
        Width = 109
        Height = 23
        AutoSize = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 0
        Text = '0,00'
      end
      object editVencimento: TDateTimePicker
        Left = 127
        Top = 40
        Width = 104
        Height = 23
        Date = 41274.075147777780000000
        Time = 41274.075147777780000000
        TabOrder = 1
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 36
    Width = 652
    Height = 17
    Align = alTop
    TabOrder = 3
  end
  object SP_GerarPagamento: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPOP_TERCEIRIZADO_PAGAR'
    Left = 224
    Top = 104
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
      end
      item
        Name = 'NREMESSA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NFFASE'
        DataType = ftInteger
        ParamType = ptInput
        Size = 1936613715
      end
      item
        Name = 'NFORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DDATA'
        DataType = ftDate
        ParamType = ptInput
        Size = 1819231022
      end
      item
        Name = 'DVENCIMENTO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'NFORMA_PAGTO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 192111971
      end
      item
        Name = 'STIPOPAGMENTO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'NVALOR'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object db_Andamento: TFDQuery
    BeforeOpen = db_AndamentoBeforeOpen
    BeforePost = db_AndamentoBeforePost
    AfterPost = db_AndamentoAfterPost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PCP_FASETRANSFERENCIA'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 384
    Top = 216
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
    object db_AndamentoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_AndamentoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_AndamentoORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_AndamentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
      EditMask = '99/99/9999'
    end
    object db_AndamentoDATARETORNO: TSQLTimeStampField
      FieldName = 'DATARETORNO'
      Required = True
      EditMask = '99/99/9999'
    end
    object db_AndamentoTERCEIRIZADO: TIntegerField
      FieldName = 'TERCEIRIZADO'
      Required = True
    end
    object db_AndamentoFASE: TIntegerField
      FieldName = 'FASE'
      Required = True
    end
    object db_AndamentoTERCEIRIZADOORIGEM: TIntegerField
      FieldName = 'TERCEIRIZADOORIGEM'
    end
    object db_AndamentoDATARETORNOORIGEM: TSQLTimeStampField
      FieldName = 'DATARETORNOORIGEM'
      EditMask = '99/99/9999'
    end
    object db_AndamentoFASEORIGEM: TIntegerField
      FieldName = 'FASEORIGEM'
    end
    object db_AndamentoQTDE_ENVIADA: TIntegerField
      FieldName = 'QTDE_ENVIADA'
      OnChange = db_AndamentoQTDE_ENVIADAChange
      DisplayFormat = '###,##0'
    end
    object db_AndamentoQTDE_RETORNADA: TIntegerField
      FieldName = 'QTDE_RETORNADA'
      DisplayFormat = '###,##0'
    end
    object db_AndamentoQTDE_PERDAS: TIntegerField
      FieldName = 'QTDE_PERDAS'
      DisplayFormat = '###,##0'
    end
    object db_AndamentoQTDE_DEFEITOS: TIntegerField
      FieldName = 'QTDE_DEFEITOS'
      DisplayFormat = '###,##0'
    end
    object db_AndamentoVLR_UNITARIO: TBCDField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '###,##0.00'
    end
    object db_AndamentoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_AndamentoGEROUPAGAMENTO: TStringField
      FieldName = 'GEROUPAGAMENTO'
      Size = 10
    end
    object db_AndamentoENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      Size = 10
    end
  end
  object db_AndamentoReferencias: TFDQuery
    BeforeInsert = db_AndamentoReferenciasBeforeInsert
    BeforePost = db_AndamentoReferenciasBeforePost
    BeforeDelete = db_AndamentoReferenciasBeforeDelete
    MasterSource = ds_Andamento
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PCP_FASETRANSFERENCIA_REFERENCIAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'QTDE_ENVIADA>0'
      ''
      'ORDER BY REFERENCIA, COR, ORDEM_GRADE')
    Left = 384
    Top = 280
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
    object db_AndamentoReferenciasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_AndamentoReferenciasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_AndamentoReferenciasORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_AndamentoReferenciasDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object db_AndamentoReferenciasDATARETORNO: TSQLTimeStampField
      FieldName = 'DATARETORNO'
    end
    object db_AndamentoReferenciasTERCEIRIZADO: TIntegerField
      FieldName = 'TERCEIRIZADO'
    end
    object db_AndamentoReferenciasFASE: TIntegerField
      FieldName = 'FASE'
    end
    object db_AndamentoReferenciasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object db_AndamentoReferenciasCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object db_AndamentoReferenciasCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_AndamentoReferenciasTAMANHO_ID: TIntegerField
      FieldName = 'TAMANHO_ID'
    end
    object db_AndamentoReferenciasTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_AndamentoReferenciasORDEM_GRADE: TStringField
      FieldName = 'ORDEM_GRADE'
      Size = 30
    end
    object db_AndamentoReferenciasQTDE_ENVIADA: TIntegerField
      FieldName = 'QTDE_ENVIADA'
      OnChange = db_AndamentoReferenciasQTDE_ENVIADAChange
    end
    object db_AndamentoReferenciasQTDE_RETORNADA: TIntegerField
      FieldName = 'QTDE_RETORNADA'
    end
    object db_AndamentoReferenciasQTDE_PERDAS: TIntegerField
      FieldName = 'QTDE_PERDAS'
    end
    object db_AndamentoReferenciasQTDE_DEFEITOS: TIntegerField
      FieldName = 'QTDE_DEFEITOS'
    end
    object db_AndamentoReferenciasVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
    end
    object db_AndamentoReferenciasFASECONCLUIDA: TStringField
      FieldName = 'FASECONCLUIDA'
      Size = 10
    end
  end
  object db_AndamentoSomar: TFDQuery
    MasterSource = ds_Andamento
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT SUM(QTDE_ENVIADA) AS QTDE_ENVIADA FROM PCP_FASETRANSFEREN' +
        'CIA_REFERENCIAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 384
    Top = 344
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
  end
  object ds_AndamentoReferencias: TDataSource
    DataSet = db_AndamentoReferencias
    Left = 544
    Top = 280
  end
  object ds_Andamento: TDataSource
    DataSet = db_Andamento
    Left = 544
    Top = 216
  end
  object SP_TerceirizadoCalcular: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPOP_TERCEIRIZADO_CALCULA'
    Left = 424
    Top = 72
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
        Size = 7733358
      end
      item
        Name = 'NREMESSA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NQUANTIDADE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
