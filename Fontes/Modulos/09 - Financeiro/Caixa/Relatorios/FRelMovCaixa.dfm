object FrmRelMovCaixa: TFrmRelMovCaixa
  Left = 289
  Top = 106
  Caption = 'Relat'#243'rio de Movimento de Caixa'
  ClientHeight = 439
  ClientWidth = 505
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 44
    Width = 505
    Height = 395
    Align = alClient
    TabOrder = 0
    object RadioG: TRadioGroup
      Left = 1
      Top = 178
      Width = 503
      Height = 175
      Align = alClient
      Caption = '&Tipo de Relat'#243'rio'
      ItemIndex = 2
      Items.Strings = (
        'Caixa'
        'Diario do Caixa (Anal'#237'tico)'
        'Fechamento de Caixa')
      TabOrder = 3
    end
    object Panel2: TPanel
      Left = 1
      Top = 353
      Width = 503
      Height = 41
      Align = alBottom
      BevelInner = bvRaised
      BorderStyle = bsSingle
      TabOrder = 4
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
    object GroupBox3: TGroupBox
      Left = 1
      Top = 120
      Width = 503
      Height = 58
      Align = alTop
      Caption = 'Plano de Contas [  Receitas e Despesas ]'
      TabOrder = 2
      Visible = False
      object chkPlanos: TCheckBox
        Left = 6
        Top = 25
        Width = 105
        Height = 17
        Cursor = crHandPoint
        Caption = 'Todas as contas'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkPlanosClick
      end
      object EditPlanoContas: TIDBEditDialog
        Left = 122
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
        Text = ''
        Visible = True
        EditType = etUppercase
        EmptyText = 'F8 - Pesquisar'
        FocusColor = clBtnFace
        LabelCaption = 'Plano de Contas'
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
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomePlanoContas
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO_PLANO'
        SQLdbSQL.Strings = (
          'SELECT * FROM VIEW_PLANOCONTAS'
          'WHERE'
          'CODIGO_PLANO=:CODIGO_PLANO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM VIEW_PLANOCONTAS'
          'WHERE'
          'TIPO='#39'DEBITO'#39
          'AND'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO_PLANO'
            WhereSyntax = 'CODIGO_PLANO'
            DisplayLabel = 'C'#211'DIGO'
            DisplayWidth = 15
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'NOME'
            WhereSyntax = 'NOME'
            DisplayLabel = 'PLANO DE CONTA'
            DisplayWidth = 74
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'TIPO'
            WhereSyntax = 'TIPO'
            DisplayLabel = 'TIPO'
            DisplayWidth = 10
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
      object EditNomePlanoContas: TEdit
        Left = 230
        Top = 28
        Width = 260
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 2
      end
    end
    object RadioGSaldoAnterior: TRadioGroup
      Left = 1
      Top = 65
      Width = 503
      Height = 55
      Align = alTop
      Caption = 'Incluir Saldo Anterior no Relat'#243'rio'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 1
      Visible = False
    end
    inline FrameDatas1: TFrameDatas
      Left = 1
      Top = 1
      Width = 503
      Height = 64
      Align = alTop
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 503
      ExplicitHeight = 64
      inherited GrupoFrameData: TGroupBox
        Width = 503
        Height = 57
        Caption = 'Data de Fechamento do Caixa'
        ExplicitWidth = 503
        ExplicitHeight = 57
        inherited MskDataIni: TMaskEdit
          Width = 69
          Text = '01/01/2012'
          ExplicitWidth = 69
        end
      end
    end
  end
  inline FrameRelatorios1: TFrameRelatorios
    Left = 0
    Top = 0
    Width = 505
    Height = 44
    Align = alTop
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    TabStop = True
    ExplicitWidth = 505
    inherited Image3: TImage
      Width = 505
      ExplicitWidth = 515
    end
    inherited Image2: TImage
      Left = 432
      ExplicitLeft = 442
    end
    inherited LblBarraTitulo: TLabel
      Width = 250
      Caption = 'Relat'#243'rio de Movimento de Caixa'
      ExplicitWidth = 250
    end
  end
  object frxRFechamentoCaixa: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40826.579119525500000000
    ReportOptions.LastChange = 40826.579119525500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 432
    Top = 288
    Datasets = <
      item
        DataSet = dbFrxFechamentoCaixa
        DataSetName = 'dbFechamentoCaixa'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold, fsItalic]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        DataSet = dbFrxFechamentoCaixa
        DataSetName = 'dbFechamentoCaixa'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 188.976377950000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'FORMAPAGAMENTO'
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbFechamentoCaixa."FORMAPAGAMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 7.559055120000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'TIPOPAGAMENTO'
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbFechamentoCaixa."TIPOPAGAMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 628.543307090000000000
          Width = 75.590551180000000000
          Height = 15.118110240000000000
          DataField = 'VALOR'
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbFechamentoCaixa."VALOR"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 510.236550000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'NOMESISTEMA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."NOMESISTEMA"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'SITEEMPRESA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SITEEMPRESA"]')
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
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Left = 554.370440000000000000
          Top = 3.779530000000000000
          Width = 162.511750000000000000
          Height = 49.133858270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 565.929133860000000000
          Top = 5.669293780000000000
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
          Left = 566.929133860000000000
          Top = 20.409451260000000000
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
          Left = 566.929133860000000000
          Top = 35.527561500000000000
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
          Left = 632.078745040000000000
          Top = 5.669293780000000000
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
          Left = 632.078745040000000000
          Top = 20.409451260000000000
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
          Left = 632.078745040000000000
          Top = 35.527561500000000000
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
        object MemoTitulo: TfrxMemoView
          Top = 3.779530000000000000
          Width = 550.464750000000000000
          Height = 49.133858270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'Relat'#243'rio - Caixa'
            'Fechamento de Caixa')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Width = 718.110992910000000000
          Height = 98.267748270000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo26: TfrxMemoView
          Left = 411.968770000000000000
          Top = 76.370130000000000000
          Width = 211.653680000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL DE FECHAMENTOS DE CAIXA:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 627.401980000000000000
          Top = 76.370130000000000000
          Width = 75.590551180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbFechamentoCaixa."VALOR">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo27: TfrxMemoView
          Left = 411.968770000000000000
          Top = 3.779530000000000000
          Width = 211.653680000000000000
          Height = 15.118110240000000000
          Visible = False
          AutoWidth = True
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL DE ABERTURAS:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 75.590551180000000000
          Height = 15.118110240000000000
          Visible = False
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbFechamentoCaixa."VLR_ABERTURACAIXA">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          Left = 411.968770000000000000
          Top = 21.677180000000000000
          Width = 211.653680000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL ENTRADAS EXTRAS:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 627.401980000000000000
          Top = 21.677180000000000000
          Width = 75.590551180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbFechamentoCaixa."VLR_ENTRADAS">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          Left = 411.968770000000000000
          Top = 38.795300000000000000
          Width = 211.653680000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL SA'#205'DAS EXTRAS:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 627.401980000000000000
          Top = 38.795300000000000000
          Width = 75.590551180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbFechamentoCaixa."VLR_SAIDAS">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          Left = 411.968770000000000000
          Top = 57.692950000000000000
          Width = 211.653680000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL DE VENDAS:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 627.401980000000000000
          Top = 57.692950000000000000
          Width = 75.590551180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbFechamentoCaixa."VALOR">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Height = 102.047310000000000000
        ParentFont = False
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        Condition = 'dbFechamentoCaixa."DATA_FECHAMENTO"'
        object Shape2: TfrxShapeView
          Width = 718.110992910000000000
          Height = 79.370098270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779527560000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'CONTA CAIXA: [dbFechamentoCaixa."CONTACAIXA"]-[dbFechamentoCaixa' +
              '."CONTACAIXANOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 540.472790000000000000
          Top = 3.779527560000000000
          Width = 173.858380000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              'DATA DE ABERTURA: [dbFechamentoCaixa."DATA_ABERTURA"]   |   DATA' +
              ' DE FECHAMENTO: [dbFechamentoCaixa."DATA_FECHAMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 41.574803149606300000
          Width = 124.724409450000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Abertura do Caixa:')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 99.078850000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          Left = 3.779525120000000000
          Top = 81.960661650000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TIPO DE PAGAMENTO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 185.196847950000000000
          Top = 81.960661650000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORMA DE PAGAMENTO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 628.543307090000000000
          Top = 81.960661650000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR:')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 132.283550000000000000
          Top = 41.574803150000000000
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbFechamentoCaixa."VLR_ABERTURACAIXA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 200.315090000000000000
          Top = 56.692913390000000000
          Width = 124.724409450000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '| Valor Total de Vendas')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 328.819110000000000000
          Top = 56.692913385826800000
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbFechamentoCaixa."VLR_TOTALVENDASCAIXA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692913385826800000
          Width = 124.724409450000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Entradas Extras:')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 132.283550000000000000
          Top = 56.692913385826800000
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            ' [dbFechamentoCaixa."VLR_ENTRADAS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 200.315090000000000000
          Top = 41.574803150000000000
          Width = 124.724409450000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '| Valor Sa'#237'das Extras:')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 328.819110000000000000
          Top = 41.574803149606300000
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbFechamentoCaixa."VLR_SAIDAS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 442.205010000000000000
          Top = 41.574803150000000000
          Width = 124.724409450000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '| Valor Fechamento do Caixa:')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          Left = 570.709030000000000000
          Top = 40.015770000000000000
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          AutoWidth = True
          DataSet = dbFrxFechamentoCaixa
          DataSetName = 'dbFechamentoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbFechamentoCaixa."VLR_FECHAMENTOCAIXA"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 628.543307090000000000
          Top = 6.000000000000000000
          Width = 75.590551180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbFechamentoCaixa."VALOR">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Line4: TfrxLineView
          Align = baWidth
          Top = 2.000000000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          Left = 538.055350000000000000
          Top = 6.000000000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL:')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object dbFrxFechamentoCaixa: TfrxDBDataset
    UserName = 'dbFechamentoCaixa'
    CloseDataSource = True
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'TERMINAL=TERMINAL'
      'DATA_ABERTURA=DATA_ABERTURA'
      'DATA_FECHAMENTO=DATA_FECHAMENTO'
      'CONTACAIXA=CONTACAIXA'
      'CONTACAIXANOME=CONTACAIXANOME'
      'CAIXAABERTO=CAIXAABERTO'
      'CAIXAFECHADO=CAIXAFECHADO'
      'HISTORICO=HISTORICO'
      'VLR_ENTRADAS=VLR_ENTRADAS'
      'VLR_SAIDAS=VLR_SAIDAS'
      'VLR_ABERTURACAIXA=VLR_ABERTURACAIXA'
      'VLR_TOTALVENDASCAIXA=VLR_TOTALVENDASCAIXA'
      'VLR_FECHAMENTOCAIXA=VLR_FECHAMENTOCAIXA'
      'TIPOPAGAMENTO=TIPOPAGAMENTO'
      'FORMAPAGAMENTO=FORMAPAGAMENTO'
      'VALOR=VALOR')
    DataSet = dbFechamentoCaixa
    BCDToCurrency = False
    Left = 328
    Top = 288
  end
  object dbFechamentoCaixa: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_FECHAMENTOCAIXA'
      'WHERE'
      'DATA_FECHAMENTO between :DATA_INI AND :DATA_FIM')
    Left = 216
    Top = 288
    ParamData = <
      item
        Name = 'DATA_INI'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'DATA_FIM'
        DataType = ftDateTime
        ParamType = ptInput
      end>
  end
end
