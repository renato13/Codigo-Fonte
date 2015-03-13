object FrmRelFluxoCaixa: TFrmRelFluxoCaixa
  Left = 1
  Top = 1
  Caption = 'Relat'#243'rio Financeiro'
  ClientHeight = 542
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopUpBarraBotoesImprimir
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PainelPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 463
    Height = 463
    Align = alClient
    BevelWidth = 2
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object PainelParametros: TPanel
      Left = 2
      Top = 2
      Width = 459
      Height = 459
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 453
        Height = 54
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Periodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label4: TLabel
          Left = 113
          Top = 24
          Width = 16
          Height = 13
          Caption = 'At'#233
        end
        object Label3: TLabel
          Left = 5
          Top = 24
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object MskDataFim: TMaskEdit
          Left = 132
          Top = 21
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
          TabOrder = 1
          Text = '  /  /    '
          OnExit = MskDataFimExit
        end
        object MskDataIni: TMaskEdit
          Left = 24
          Top = 21
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
          OnExit = MskDataIniExit
        end
      end
      object RadioGroup_Relatorio: TRadioGroup
        AlignWithMargins = True
        Left = 3
        Top = 326
        Width = 453
        Height = 130
        Align = alClient
        Caption = 'Op'#231#245'es de Relat'#243'rios'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 1
        Items.Strings = (
          'Previs'#227'o Or'#231'ament'#225'ria'
          'Real')
        ParentFont = False
        TabOrder = 4
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 60
        Width = 459
        Height = 133
        Align = alTop
        Caption = 'Calcular no Fluxo de Caixa:'
        TabOrder = 1
        object CheckListBox1: TCheckListBox
          Left = 2
          Top = 15
          Width = 455
          Height = 116
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          ItemHeight = 18
          Items.Strings = (
            'Controle de Caixa'
            'Controle Banc'#225'rio'
            'Contas a Receber'
            'Contas a Pagar')
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBoxContaCaixa: TGroupBox
        Left = 0
        Top = 193
        Width = 459
        Height = 65
        Align = alTop
        Caption = 'Conta Caixa'
        TabOrder = 2
        object chkContaCaixa: TCheckBox
          Left = 9
          Top = 35
          Width = 105
          Height = 17
          Cursor = crHandPoint
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = chkContaCaixaClick
        end
        object EditContaCaixa: TIDBEditDialog
          Left = 120
          Top = 34
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
          SQLdbFocusControl = EditNomeContaCaixa
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
        object EditNomeContaCaixa: TEdit
          Left = 231
          Top = 34
          Width = 218
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
      object GroupBoxContabanco: TGroupBox
        Left = 0
        Top = 258
        Width = 459
        Height = 65
        Align = alTop
        Caption = 'Conta Corrente'
        TabOrder = 3
        object chkContaBancaria: TCheckBox
          Left = 9
          Top = 35
          Width = 105
          Height = 17
          Cursor = crHandPoint
          Caption = 'Todas'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = chkContaBancariaClick
        end
        object EditContaCorrente: TEdit
          Left = 231
          Top = 34
          Width = 218
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
          Left = 120
          Top = 34
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
    end
  end
  inline FrameRelatoriosBotoes1: TFrameRelatoriosBotoes
    Left = 0
    Top = 496
    Width = 463
    Height = 46
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 496
    ExplicitWidth = 463
    inherited Panel1: TPanel
      Width = 463
      ExplicitWidth = 463
      inherited SpbImprimir: TBitBtn
        OnClick = FrameRelatoriosBotoes1SpbImprimirClick
      end
      inherited SpbSair: TBitBtn
        OnClick = FrameRelatoriosBotoes1SpbSairClick
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 463
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 463
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 463
      Height = 33
      ExplicitWidth = 463
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 205
        Caption = 'Financeiro - Fluxo de Caixa'
        ExplicitWidth = 205
      end
    end
  end
  object db_FluxoCaixa: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT * FROM  FNC_FLUXOCAIXA(:data1, :data2, :caixa, :banco, :r' +
        'eceber, :pagar, :contacaixa, :previsaoglobal, :contacorrente)'
      'ORDER BY VENCIMENTO')
    Left = 104
    Top = 168
    ParamData = <
      item
        Name = 'data1'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'data2'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'caixa'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'banco'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'receber'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'pagar'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'contacaixa'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'previsaoglobal'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'contacorrente'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object fx_FluxoCaixa: TfrxDBDataset
    UserName = 'fx_FluxoCaixa'
    CloseDataSource = True
    FieldAliases.Strings = (
      'VENCIMENTO=VENCIMENTO'
      'DESCRICAO=DESCRICAO'
      'SALDOINICIAL=SALDOINICIAL'
      'SALDOATUAL=SALDOATUAL'
      'RECEBER=RECEBER'
      'PAGAR=PAGAR'
      'SALDOS=SALDOS')
    DataSet = db_FluxoCaixa
    BCDToCurrency = False
    Left = 344
    Top = 168
  end
  object PopUpBarraBotoesImprimir: TPopupMenu
    Left = 328
    Top = 48
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 16464
      OnClick = Imprimir1Click
    end
  end
  object frxReport_Analitico: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = '(C) 2010 ISOFT SISTEMAS | www.isoftpr.com.br'
    ReportOptions.CreateDate = 40070.128272928200000000
    ReportOptions.LastChange = 40827.016899166700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 224
    Top = 160
    Datasets = <
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = fx_FluxoCaixa
        DataSetName = 'fx_FluxoCaixa'
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
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
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
        Font.Name = 'Verdana'
        Font.Style = []
        Height = 17.007874020000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = fx_FluxoCaixa
        DataSetName = 'fx_FluxoCaixa'
        RowCount = 0
        object Shape2: TfrxShapeView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 17.007874020000000000
          Fill.BackColor = clWhite
        end
        object Memo8: TfrxMemoView
          Left = 1.889763780000000000
          Width = 56.692913390000000000
          Height = 15.118120000000000000
          DataField = 'VENCIMENTO'
          DataSet = fx_FluxoCaixa
          DataSetName = 'fx_FluxoCaixa'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[fx_FluxoCaixa."VENCIMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 375.307137870000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          DataField = 'SALDOINICIAL'
          DataSet = fx_FluxoCaixa
          DataSetName = 'fx_FluxoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fx_FluxoCaixa."SALDOINICIAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 458.078740157480000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          DataField = 'RECEBER'
          DataSet = fx_FluxoCaixa
          DataSetName = 'fx_FluxoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fx_FluxoCaixa."RECEBER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 537.826771653543000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          DataField = 'PAGAR'
          DataSet = fx_FluxoCaixa
          DataSetName = 'fx_FluxoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fx_FluxoCaixa."PAGAR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 617.952755910000000000
          Width = 94.488188980000000000
          Height = 15.118120000000000000
          DataField = 'SALDOS'
          DataSet = fx_FluxoCaixa
          DataSetName = 'fx_FluxoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fx_FluxoCaixa."SALDOS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 63.984222680000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          DataField = 'DESCRICAO'
          DataSet = fx_FluxoCaixa
          DataSetName = 'fx_FluxoCaixa'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[fx_FluxoCaixa."DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Line3: TfrxLineView
          Left = 61.984251968503900000
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 371.905563070000000000
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 454.527610310000000000
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 535.598425200000000000
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 616.062992125984000000
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Height = 49.133890000000000000
        ParentFont = False
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          Left = 4.559060000000000000
          Top = 3.338590000000000000
          Width = 192.755905510000000000
          Height = 18.897642680000000000
          AutoWidth = True
          DataField = 'NOMESISTEMA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsEmpresa."NOMESISTEMA"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Height = 105.826840000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Align = baWidth
          Top = 86.590600000000000000
          Width = 718.110700000000000000
          Height = 17.007874020000000000
          Fill.BackColor = 15724527
        end
        object Shape1: TfrxShapeView
          Align = baWidth
          Top = 1.889763780000000000
          Width = 718.110700000000000000
          Height = 68.031496060000000000
          Fill.BackColor = 15724527
        end
        object Memo17: TfrxMemoView
          Left = 508.236550000000000000
          Top = 5.559060000000000000
          Width = 204.606060000000000000
          Height = 22.322820000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'FLUXO DE CAIXA')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 508.771658430000000000
          Top = 30.125989130000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 508.771658430000000000
          Top = 44.866146610000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 574.031466770000000000
          Top = 44.866146610000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo51: TfrxMemoView
          Left = 1.425047950000000000
          Top = 5.338590000000000000
          Width = 411.968645510000000000
          Height = 41.574822680000000000
          AutoWidth = True
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsEmpresa."NOME"]'
            ''
            'FLUXO DE CAIXA ANALITICO')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 573.134231730000000000
          Top = 30.125989130000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[Date] | [Time]')
          ParentFont = False
          WordWrap = False
        end
        object Line23: TfrxLineView
          Left = 468.086921730000000000
          Top = 1.889763780000000000
          Height = 68.031496060000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo2: TfrxMemoView
          Left = 1.889763780000000000
          Top = 87.307086610000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          AllowHTMLTags = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 375.157531570000000000
          Top = 87.307086610000000000
          Width = 75.590551180000000000
          Height = 11.338582680000000000
          AllowHTMLTags = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SALDO INICIAL:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 457.811006540000000000
          Top = 87.307086610000000000
          Width = 75.590551180000000000
          Height = 11.338582680000000000
          AllowHTMLTags = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'RECEITAS:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 537.866141730000000000
          Top = 87.307086610000000000
          Width = 75.590551180000000000
          Height = 11.338582680000000000
          AllowHTMLTags = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESPESAS:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 617.952755910000000000
          Top = 87.307086610000000000
          Width = 94.488188980000000000
          Height = 11.338582680000000000
          AllowHTMLTags = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SALDO:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 63.984222680000000000
          Top = 87.307086610000000000
          Width = 94.488250000000000000
          Height = 11.338582677165400000
          AllowHTMLTags = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 61.984251970000000000
          Top = 86.551181102362200000
          Height = 17.007874015748000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 371.905563070000000000
          Top = 86.551181100000000000
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 454.527610310000000000
          Top = 86.551181100000000000
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 535.598425200000000000
          Top = 86.551181100000000000
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 616.062992130000000000
          Top = 86.551181102362200000
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 458.078740160000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fx_FluxoCaixa."RECEBER">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 537.826771650000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fx_FluxoCaixa."PAGAR">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 375.307137870000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fx_FluxoCaixa."SALDOINICIAL">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 617.952755910000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fx_FluxoCaixa
          DataSetName = 'fx_FluxoCaixa'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fx_FluxoCaixa."SALDOS"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
end
