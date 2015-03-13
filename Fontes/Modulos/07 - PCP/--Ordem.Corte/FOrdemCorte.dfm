object FrmOrdemCorte: TFrmOrdemCorte
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Ordem de Corte'
  ClientHeight = 519
  ClientWidth = 935
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 935
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 935
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 935
      Height = 33
      ExplicitWidth = 935
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 935
        Height = 33
        Caption = ' Ordem de Corte'
        ExplicitWidth = 102
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 457
    Width = 935
    Height = 62
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 457
    ExplicitWidth = 935
    ExplicitHeight = 62
    inherited W7Panel1: TPanel
      Width = 935
      Height = 62
      ExplicitWidth = 935
      ExplicitHeight = 62
      inherited SpbImprimir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbImprimirClick
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 33
    Width = 935
    Height = 120
    Align = alTop
    Caption = 'Dados da Refer'#234'ncia'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 931
      Height = 46
      Align = alTop
      BevelWidth = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Panel5: TPanel
        Left = 2
        Top = 2
        Width = 216
        Height = 42
        Align = alLeft
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 0
        object Label4: TLabel
          Left = 149
          Top = 2
          Width = 32
          Height = 13
          Caption = 'Horas:'
        end
        object Label5: TLabel
          Left = 78
          Top = 2
          Width = 27
          Height = 13
          Caption = 'Data:'
        end
        object Label7: TLabel
          Left = 7
          Top = 2
          Width = 62
          Height = 13
          Caption = 'Ordem Corte'
        end
        object DBEdit3: TDBEdit
          Left = 149
          Top = 17
          Width = 65
          Height = 21
          Color = clBtnFace
          DataField = 'HORA'
          DataSource = BaseDados_PCP.ds_OrdemCorte
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 78
          Top = 17
          Width = 65
          Height = 21
          Color = clBtnFace
          DataField = 'DATA'
          DataSource = BaseDados_PCP.ds_OrdemCorte
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 7
          Top = 17
          Width = 65
          Height = 21
          Color = clBtnFace
          DataField = 'CODIGO'
          DataSource = BaseDados_PCP.ds_OrdemCorte
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object LocalizaOrdemProducao: TIDBEditDialog
      Left = 8
      Top = 83
      Width = 90
      Height = 21
      Hint = 'Ordem de Produ'#231#227'o'
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      TabOrder = 1
      Visible = True
      OnEnter = LocalizaOrdemProducaoEnter
      LabelCaption = 'O.P. (Lote)'
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
      DataField = 'ORDEMPRODUCAO'
      DataSource = BaseDados_PCP.ds_OrdemCorte
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditOPNome
      SQLdbCampoRetorno = 'NATUREZA'
      SQLdbRetornoVazio = ' *** '
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT *  FROM VIEW_ORDEMPRODUCAO'
        'WHERE'
        'CODIGO=:CODIGO')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT *  FROM VIEW_ORDEMPRODUCAO'
        'WHERE'
        '%WHERE%')
      SearchDialogFieldList = <
        item
          FieldName = 'CODIGO'
          WhereSyntax = 'CODIGO'
          DisplayLabel = 'O.P:'
          DisplayWidth = 8
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
          FieldName = 'NATUREZA'
          WhereSyntax = 'NATUREZA'
          DisplayLabel = 'NATUREZA:'
          DisplayWidth = 12
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = False
          EmptyOperation = eoNull
          DefaultComparison = scBeginsWith
          SearchCase = scMixed
        end
        item
          FieldName = 'DATA'
          WhereSyntax = 'DATA'
          DisplayLabel = 'DATA:'
          DisplayFormat = 'dd/mm/yyyy'
          DisplayWidth = 10
          DisplayColumnWidth = 0
          FieldType = ftDate
          Search = False
          EmptyOperation = eoNull
          DefaultComparison = scEqual
          SearchCase = scMixed
        end
        item
          FieldName = 'HORA'
          WhereSyntax = 'HORA'
          DisplayLabel = 'HORA:'
          DisplayWidth = 8
          DisplayColumnWidth = 0
          FieldType = ftTime
          Search = False
          EmptyOperation = eoNull
          DefaultComparison = scEqual
          SearchCase = scMixed
        end
        item
          FieldName = 'CLIENTE_NOME'
          WhereSyntax = 'CLIENTE_NOME'
          DisplayLabel = 'CLIENTE:'
          DisplayWidth = 35
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scBeginsWith
          SearchCase = scMixed
        end
        item
          FieldName = 'AUTORIZADO'
          WhereSyntax = 'AUTORIZADO'
          DisplayLabel = 'AUTORIZADO:'
          DisplayWidth = 15
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
    object EditOPNome: TEdit
      Left = 104
      Top = 83
      Width = 217
      Height = 21
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 292
    Width = 935
    Height = 165
    Align = alBottom
    Caption = 'Enfesto (com base na ficha t'#233'cnica):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Panel1: TPanel
      Left = 2
      Top = 129
      Width = 931
      Height = 34
      Align = alBottom
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object GridMateriaPrima: TDBGrid
      Left = 2
      Top = 15
      Width = 931
      Height = 114
      Align = alClient
      DataSource = BaseDados_PCP.ds_OrdemCorte_Enfesto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Color = clBtnFace
          Expanded = False
          FieldName = 'REFERENCIA'
          ReadOnly = True
          Title.Caption = 'Refer'#234'ncia:'
          Width = 90
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'DESCRICAO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Title.Caption = 'Descri'#231#227'o:'
          Width = 190
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'UND'
          ReadOnly = True
          Title.Caption = 'UND:'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'METROS'
          Title.Caption = 'Metros:'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE_FOLHAS'
          Title.Caption = 'Qtde Folhas (tecidos):'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_PECAS'
          Title.Caption = 'Qtde Pe'#231'as:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_PACOTES'
          Title.Caption = 'Qtde de Pacote:'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PECAS_PACOTE'
          Title.Caption = 'Pe'#231'as por Pacote:'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESO_ESTIMADO'
          Title.Caption = 'Peso Estimado:'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESO_CONFERIDO'
          Title.Caption = 'Peso Conferido:'
          Width = 81
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 153
    Width = 935
    Height = 139
    Align = alClient
    Caption = 'Refer'#234'ncias  (com base na ordem de produ'#231#227'o):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object dbGrid_Referencias: TDBGrid
      Left = 2
      Top = 15
      Width = 931
      Height = 122
      HelpType = htKeyword
      TabStop = False
      Align = alClient
      Color = clBtnFace
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Caption = 'Refer'#234'ncia:'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o:'
          Width = 718
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Qtde:'
          Width = 80
          Visible = True
        end>
    end
  end
  object LocalizaOrdemCorte: TIDBEditDialog
    Left = 627
    Top = 67
    Width = 82
    Height = 21
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    TabOrder = 4
    Visible = False
    LabelCaption = 'Ordem Corte'
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
    SQLdbRetornoVazio = ' *** '
    SQLdbSQL.Strings = (
      'SELECT NOME FROM VIEW_REFERENCIAS'
      'WHERE'
      'REFERENCIA=:REFERENCIA')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT *  FROM PCP_ORDEMCORTE'
      'WHERE'
      '%WHERE%'
      'ORDER BY CODIGO')
    CountQuery.Strings = (
      'SELECT COUNT(REFERENCIA)  FROM PCP_ORDEMCORTE'
      'WHERE'
      '%WHERE%'
      'ORDER BY CODIGO')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'O.C:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'ORDEM_PRODUCAO'
        WhereSyntax = 'ORDEM_PRODUCAO'
        DisplayLabel = 'O.P:'
        DisplayWidth = 8
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
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftDate
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'HORA'
        WhereSyntax = 'HORA'
        DisplayLabel = 'HORA'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'QTDE_PACOTES'
        WhereSyntax = 'QTDE_PACOTES'
        DisplayLabel = 'QTDE PACOTES:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'QTDE_PECAS'
        WhereSyntax = 'QTDE_PECAS'
        DisplayLabel = 'QTDE CORTADAS:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'QTDE_PRODUZIR'
        WhereSyntax = 'QTDE_PRODUZIR'
        DisplayLabel = 'QTDE PRODUZIR:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'FECHADO'
        WhereSyntax = 'FECHADO'
        DisplayLabel = 'FECHADO'
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
  object FRX_OrdemCorte: TfrxReport
    Version = '4.11.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39841.007311377300000000
    ReportOptions.LastChange = 40765.747450856500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure DetailData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      '  if (<dts_MateriaPrimaGrade."QTDE_CONSUMOSTOTAL">) > 0 then'
      '     bandamateriaPrimaGrade.Visible :=True'
      '  else               '
      
        '     bandamateriaPrimaGrade.Visible :=false;                    ' +
        '           '
      '  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 457
    Top = 328
    Datasets = <
      item
        DataSet = dts_MateriaPrimaGrade
        DataSetName = 'dts_MateriaPrimaGrade'
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
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSetName = 'frx_dsEnfestoGrade'
      object ReportSummary1: TfrxReportSummary
        Height = 234.330860000000000000
        Top = 839.055660000000000000
        Width = 718.110700000000000000
        object Memo35: TfrxMemoView
          Align = baWidth
          Top = 11.338590000000000000
          Width = 718.110700000000000000
          Height = 208.543290000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ''
            
              'ENFESTADOR:  _____________________________________      |    COR' +
              'TADOR _______________________________'
            
              '                          (assinar)                             ' +
              '                     (assinar)'
            ''
            ''
            
              'AUXILIARES/SEPARADORES: ________________________________________' +
              '_____________________________________'
            '                         (preenchido pelo encarregado)'
            ''
            ''
            
              'ENCARREGADO(A) DO SETOR DE CORTE:_______________________________' +
              '_  DATA:___/___/____  - Hora: ___:___'
            '                                            (assinar)'
            ''
            ''
            
              'ENCARREGADO(A) DA ALMOXARIFADO: ________________________________' +
              '_  DATA:___/___/____  - Hora: ___:___'
            '                                            (assinar)')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 2.645669290000000000
          Top = 2.000000000000000000
          Width = 712.818897640000000000
          Height = -0.000007320000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        Height = 60.472480000000000000
        Top = 1096.063700000000000000
        Width = 718.110700000000000000
        object Line18: TfrxLineView
          Left = 1.000000000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo50: TfrxMemoView
          Align = baLeft
          Top = 1.220470000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
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
          Top = 1.220470000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          ShowHint = False
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
      end
      object ReportTitle1: TfrxReportTitle
        Height = 173.858380000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Child = FRX_OrdemCorte.Child1
        KeepChild = True
        object Shape2: TfrxShapeView
          Top = 53.133890000000000000
          Width = 718.000000000000000000
          Height = 119.055096140000000000
          ShowHint = False
        end
        object Memo11: TfrxMemoView
          Left = 166.299317560000000000
          Top = 56.157524250000000000
          Width = 80.543290000000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ORDEM CORTE:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 166.299317560000000000
          Top = 68.252012440000000000
          Width = 62.000000000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSetName = 'frx_dsOrdemCorte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsOrdemCorte."CODIGO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 3.779527560000000000
          Top = 97.133902200000000000
          Width = 87.000000000000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'INICIADO'
          DataSetName = 'frx_dsOrdemCorte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsOrdemCorte."INICIADO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 3.779527560000000000
          Top = 85.007874020000000000
          Width = 120.692950000000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'O.C. AUTORIZADA:')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 1.889763780000000000
          Top = 82.370142200000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 1.889763780000000000
          Top = 112.063092200000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 254.244280000000000000
          Top = 54.047244090000000000
          Height = 28.346456690000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          Left = 132.283550000000000000
          Top = 83.496062990000000000
          Height = 28.346456690000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.157524250000000000
          Width = 51.763760000000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 68.252012440000000000
          Width = 23.000000000000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'DATA'
          DataSetName = 'frx_dsOrdemCorte'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsOrdemCorte."DATA"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 79.763760000000000000
          Top = 68.252012440000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'HORA'
          DataSetName = 'frx_dsOrdemCorte'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_dsOrdemCorte."HORA"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 79.763760000000000000
          Top = 56.157524250000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'HORAS:')
          ParentFont = False
        end
        object Line30: TfrxLineView
          Top = 54.133902200000000000
          Height = 28.346456690000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          Left = 71.811070000000000000
          Top = 54.047244094488200000
          Height = 28.346456690000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object BarCode2: TfrxBarCodeView
          Left = 563.149970000000000000
          Top = 57.913432200000000000
          Width = 38.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          BarType = bcCode39
          DataField = 'CODIGO'
          DataSetName = 'frx_dsOrdemCorte'
          Rotation = 0
          ShowText = False
          Text = '0'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo1: TfrxMemoView
          Left = 3.000000000000000000
          Width = 554.244280000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ORDEM DE CORTE'
            '(O.C.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          Left = 554.590910000000000000
          Width = 162.511750000000000000
          Height = 49.133858270000000000
          ShowHint = False
          Color = 15724527
          Frame.Color = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 566.149603860000000000
          Top = 1.889763780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
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
        object Memo3: TfrxMemoView
          Left = 567.149603860000000000
          Top = 16.629921260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 567.149603860000000000
          Top = 31.748031500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          ShowHint = False
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
        object Memo5: TfrxMemoView
          Left = 632.299215040000000000
          Top = 1.889763780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 632.299215040000000000
          Top = 16.629921260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 632.299215040000000000
          Top = 31.748031500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Line3: TfrxLineView
          Left = 158.960730000000000000
          Top = 54.047244094488200000
          Height = 28.346456690000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo23: TfrxMemoView
          Left = 2.905511810000000000
          Top = 145.842519690000000000
          Width = 710.551151810000000000
          Height = 24.566907170000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'ENTRADA NO CORTE: ____/____/________ Hora: ______:______   |  FE' +
              'CHAMENTO/SA'#205'DA DO CORTE: ____/____/________ Hora: ______:______')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 259.582870000000000000
          Top = 54.937042050000000000
          Width = 133.456710000000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ORDEM PRODU'#199#195'O (LOTE):')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 259.582870000000000000
          Top = 67.031530240000000000
          Width = 62.000000000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataField = 'ORDEM_PRODUCAO'
          DataSetName = 'frx_dsOrdemCorte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsOrdemCorte."ORDEM_PRODUCAO"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 406.527832440000000000
          Top = 54.047244090000000000
          Height = 28.346456690000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
      end
      object Child1: TfrxChild
        Height = 151.181200000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        Stretched = True
        object DBCross1: TfrxDBCrossView
          Top = 3.779530000000000000
          Width = 368.000000000000000000
          Height = 116.000000000000000000
          ShowHint = False
          DownThenAcross = False
          RowLevels = 3
          ShowRowTotal = False
          CellFields.Strings = (
            'QUANTIDADE')
          ColumnFields.Strings = (
            'TAMANHO')
          DataSetName = 'frx_dsEnfestoGrade'
          RowFields.Strings = (
            'REFERENCIA'
            'DESCRICAO'
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2232303222
            20546F703D223237372C3231323734222057696474683D223731222048656967
            68743D22313922205265737472696374696F6E733D223234222053686F774869
            6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
            73652220446973706C6179466F726D61742E466F726D61745374723D22232323
            2C2323302220446973706C6179466F726D61742E4B696E643D22666B4E756D65
            7269632220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D65
            3D225461686F6D612220466F6E742E5374796C653D223022204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686152696768742220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D2230222F3E3C546672784D
            656D6F56696577204C6566743D223236382220546F703D223537222057696474
            683D22373122204865696768743D22313922205265737472696374696F6E733D
            223234222053686F7748696E743D2246616C73652220416C6C6F774578707265
            7373696F6E733D2246616C73652220436F6C6F723D2231353732343532372220
            466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D31312220466F6E742E4E616D653D22546168
            6F6D612220466F6E742E5374796C653D223122204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686152
            696768742220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D2230222F3E3C546672784D656D6F5669
            6577204C6566743D223230322220546F703D223239362C323132373422205769
            6474683D22373122204865696768743D22313922205265737472696374696F6E
            733D223234222053686F7748696E743D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C73652220446973706C6179466F726D61742E46
            6F726D61745374723D222323232C2323302220446973706C6179466F726D6174
            2E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22
            302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31312220466F6E742E4E616D653D225461686F6D612220466F6E742E5374796C
            653D223022204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D22686152696768742220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D2230222F3E3C546672784D656D6F56696577204C6566743D223138322220
            546F703D223736222057696474683D22373122204865696768743D2231392220
            5265737472696374696F6E733D223234222053686F7748696E743D2246616C73
            652220416C6C6F7745787072657373696F6E733D2246616C73652220436F6C6F
            723D2231353732343532372220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131222046
            6F6E742E4E616D653D2256657264616E612220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2230
            222F3E3C546672784D656D6F56696577204C6566743D223237332220546F703D
            223237372C3231323734222057696474683D22373522204865696768743D2231
            3922205265737472696374696F6E733D223234222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222043
            6F6C6F723D2231353732343532372220446973706C6179466F726D61742E466F
            726D61745374723D222323232C2323302220446973706C6179466F726D61742E
            4B696E643D22666B4E756D657269632220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            312220466F6E742E4E616D653D225461686F6D612220466F6E742E5374796C65
            3D223022204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2230222F3E3C546672784D656D6F56696577204C6566743D22333339222054
            6F703D223338222057696474683D22373522204865696768743D223139222052
            65737472696374696F6E733D223234222053686F7748696E743D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C73652220436F6C6F72
            3D2231353732343532372220466F6E742E436861727365743D22302220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F
            6E742E4E616D653D2256657264616E612220466F6E742E5374796C653D223022
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D22686152696768742220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D223022
            2F3E3C546672784D656D6F56696577204C6566743D223237332220546F703D22
            3239362C3231323734222057696474683D22373522204865696768743D223139
            22205265737472696374696F6E733D223234222053686F7748696E743D224661
            6C73652220416C6C6F7745787072657373696F6E733D2246616C73652220436F
            6C6F723D2231353732343532372220446973706C6179466F726D61742E466F72
            6D61745374723D222323232C2323302220446973706C6179466F726D61742E4B
            696E643D22666B4E756D657269632220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131
            2220466F6E742E4E616D653D225461686F6D612220466F6E742E5374796C653D
            223022204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686152696768742220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2230222F3E3C546672784D656D6F56696577204C6566743D223235332220546F
            703D223736222057696474683D22373522204865696768743D22313922205265
            737472696374696F6E733D223234222053686F7748696E743D2246616C736522
            20416C6C6F7745787072657373696F6E733D2246616C73652220436F6C6F723D
            2231353732343532372220466F6E742E436861727365743D22302220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E
            742E4E616D653D2256657264616E612220466F6E742E5374796C653D22312220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686152696768742220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C2F63656C6C6D656D6F733E3C63656C6C6865616465726D656D6F733E3C54
            6672784D656D6F56696577204C6566743D223236382220546F703D2233382220
            57696474683D22393422204865696768743D2232322220526573747269637469
            6F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222056416C69676E3D22766143656E
            7465722220546578743D225155414E544944414445222F3E3C546672784D656D
            6F56696577204C6566743D223336322220546F703D223338222057696474683D
            22393022204865696768743D22323222205265737472696374696F6E733D2238
            222053686F7748696E743D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C736522204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222056416C69676E3D22766143656E746572222054
            6578743D225155414E544944414445222F3E3C546672784D656D6F5669657720
            4C6566743D223435322220546F703D223338222057696474683D223934222048
            65696768743D22323222205265737472696374696F6E733D2238222053686F77
            48696E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246
            616C736522204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222056416C69676E3D22766143656E7465722220546578743D2251
            55414E544944414445222F3E3C546672784D656D6F56696577204C6566743D22
            3534362220546F703D223338222057696474683D22393022204865696768743D
            22323222205265737472696374696F6E733D2238222053686F7748696E743D22
            46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2056416C69676E3D22766143656E7465722220546578743D225155414E544944
            414445222F3E3C2F63656C6C6865616465726D656D6F733E3C636F6C756D6E6D
            656D6F733E3C546672784D656D6F56696577204C6566743D223230322220546F
            703D223235382C3231323734222057696474683D22373122204865696768743D
            22313922205265737472696374696F6E733D223234222053686F7748696E743D
            2246616C73652220416C6C6F7745787072657373696F6E733D2246616C736522
            20466F6E742E436861727365743D22302220466F6E742E436F6C6F723D223022
            20466F6E742E4865696768743D222D31312220466F6E742E4E616D653D225665
            7264616E612220466F6E742E5374796C653D223022204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            6152696768742220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C2F636F6C756D6E6D65
            6D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D656D6F56
            696577204C6566743D223237332220546F703D223235382C3231323734222057
            696474683D22373522204865696768743D22313922205265737472696374696F
            6E733D2238222053686F7748696E743D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            312220466F6E742E4E616D653D225461686F6D612220466F6E742E5374796C65
            3D223122204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22537562746F74616C3A222F3E3C2F636F6C756D6E746F74616C6D656D6F73
            3E3C636F726E65726D656D6F733E3C546672784D656D6F56696577204C656674
            3D2232302220546F703D223233392C3231323734222057696474683D22313832
            22204865696768743D22313922205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E
            4E616D653D225461686F6D612220466F6E742E5374796C653D22312220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22434F525441
            522F50524F44555A49523A222F3E3C546672784D656D6F56696577204C656674
            3D223230322220546F703D223233392C3231323734222057696474683D223134
            3622204865696768743D22313922205265737472696374696F6E733D22382220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E74
            2E4E616D653D225461686F6D612220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D2254414D41
            4E484F2F5155414E5449444144453A222F3E3C546672784D656D6F5669657720
            4C6566743D223132372220546F703D223231222057696474683D223934222048
            65696768743D22323222205265737472696374696F6E733D2238222056697369
            626C653D2246616C7365222053686F7748696E743D2246616C73652220416C6C
            6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            6143656E746572222056416C69676E3D22766143656E7465722220546578743D
            22222F3E3C546672784D656D6F56696577204C6566743D2232302220546F703D
            223235382C3231323734222057696474683D22373622204865696768743D2231
            3922205265737472696374696F6E733D2238222053686F7748696E743D224661
            6C73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F
            6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D31312220466F6E742E4E616D653D225461686F6D
            612220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            204672616D652E52696768744C696E652E436F6C6F723D223136373737323135
            2220476170583D22332220476170593D2233222048416C69676E3D2268614365
            6E7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D225245464552454E434941222F3E3C54
            6672784D656D6F56696577204C6566743D2239362220546F703D223235382C32
            31323734222057696474683D22373122204865696768743D2231392220526573
            7472696374696F6E733D2238222053686F7748696E743D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31312220466F6E742E4E616D653D225461686F6D612220466F6E
            742E5374796C653D223122204672616D652E5479703D2231352220476170583D
            22332220476170593D22332220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D224445534352494341
            4F222F3E3C546672784D656D6F56696577204C6566743D223136372220546F70
            3D223235382C3231323734222057696474683D22333522204865696768743D22
            313922205265737472696374696F6E733D2238222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22302220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31312220466F6E742E4E616D653D225461686F
            6D612220466F6E742E5374796C653D223122204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            6768742220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22434F52222F3E3C2F636F726E65726D65
            6D6F733E3C726F776D656D6F733E3C546672784D656D6F56696577204C656674
            3D2232302220546F703D223237372C3231323734222057696474683D22373622
            204865696768743D22333822205265737472696374696F6E733D223234222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E
            4E616D653D225461686F6D612220466F6E742E5374796C653D22302220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22222F3E3C54
            6672784D656D6F56696577204C6566743D2239362220546F703D223237372C32
            31323734222057696474683D22373122204865696768743D2231392220526573
            7472696374696F6E733D223234222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220446973706C6179
            466F726D61742E466F726D61745374723D2225322E32662220446973706C6179
            466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31312220466F6E742E4E616D653D225461686F6D612220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D22332220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D22222F3E3C54667278
            4D656D6F56696577204C6566743D223136372220546F703D223237372C323132
            3734222057696474683D22333522204865696768743D22313922205265737472
            696374696F6E733D223234222053686F7748696E743D2246616C73652220416C
            6C6F7745787072657373696F6E733D2246616C73652220446973706C6179466F
            726D61742E466F726D61745374723D2225322E326D2220446973706C6179466F
            726D61742E4B696E643D22666B4E756D657269632220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31312220466F6E742E4E616D653D225461686F6D612220466F6E742E
            5374796C653D223022204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D2268615269676874222050617265
            6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
            20546578743D22222F3E3C2F726F776D656D6F733E3C726F77746F74616C6D65
            6D6F733E3C546672784D656D6F56696577204C6566743D22302220546F703D22
            3736222057696474683D2231383222204865696768743D223139222052657374
            72696374696F6E733D2238222056697369626C653D2246616C7365222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E61
            6D653D225461686F6D612220466F6E742E5374796C653D223122204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686152696768742220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D22546F74616973203D
            262336323B222F3E3C546672784D656D6F56696577204C6566743D2239362220
            546F703D223239362C3231323734222057696474683D22313036222048656967
            68743D22313922205265737472696374696F6E733D2238222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D22
            5461686F6D612220466F6E742E5374796C653D223022204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686143656E7465722220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D
            6F56696577204C6566743D223232372C38383937363337382220546F703D2233
            33392C3132363136222057696474683D22343122204865696768743D22313922
            205265737472696374696F6E733D2238222056697369626C653D2246616C7365
            222053686F7748696E743D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220436F6C6F723D2231343231313238382220466F6E
            742E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31312220466F6E742E4E616D653D2256657264616E
            612220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22546F74616C3A222F3E3C2F726F77746F
            74616C6D656D6F733E3C63656C6C66756E6374696F6E733E3C6974656D20312F
            3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974
            656D20322F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C697465
            6D20302F3E3C6974656D20302F3E3C6974656D20302F3E3C2F726F77736F7274
            3E3C2F63726F73733E}
        end
      end
      object MasterData1: TfrxMasterData
        Height = 52.913420000000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        DataSetName = 'frx_dsOrdemCorte'
        RowCount = 0
        Stretched = True
        object Memo9: TfrxMemoView
          Left = 0.779530000000000000
          Top = 40.000000000000000000
          Width = 59.322820000000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTO:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 78.944962440000000000
          Top = 40.000000000000000000
          Width = 59.322820000000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 282.275822440000000000
          Top = 40.000000000000000000
          Width = 51.763760000000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'METROS:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 354.070914960000000000
          Top = 40.000000000000000000
          Width = 63.118120000000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'FOLHAS:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 430.118432440000000000
          Top = 40.000000000000000000
          Width = 78.220470000000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PE'#199'AS:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 519.590912440000000000
          Top = 40.000000000000000000
          Width = 82.000000000000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PACOTES:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 52.677180000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo29: TfrxMemoView
          Left = 606.520100000000000000
          Top = 40.000000000000000000
          Width = 104.677180000000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PE'#199'AS POR PACOTE:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Align = baWidth
          Top = 7.338590000000000000
          Width = 718.110700000000000000
          Height = 18.897642680000000000
          ShowHint = False
          AutoWidth = True
          Color = 15724527
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELA'#199'AO DE TECIDOS:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Align = baWidth
          Top = 1.000000000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object DetailData1: TfrxDetailData
        Height = 15.118120000000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
        DataSetName = 'OrdemCorteEnfesto'
        RowCount = 0
        Stretched = True
        object Memo8: TfrxMemoView
          Left = 0.779530000000000000
          Width = 70.661410000000000000
          Height = 13.228346456692910000
          ShowHint = False
          DataField = 'REFERENCIA'
          DataSetName = 'OrdemCorteEnfesto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdemCorteEnfesto."REFERENCIA"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 78.944962440000000000
          Width = 191.606370000000000000
          Height = 13.228346456692910000
          ShowHint = False
          DataField = 'DESCRICAO'
          DataSetName = 'OrdemCorteEnfesto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdemCorteEnfesto."DESCRICAO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 282.275822440000000000
          Width = 47.984230000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'METROS'
          DataSetName = 'OrdemCorteEnfesto'
          DisplayFormat.FormatStr = '###,##0.0000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OrdemCorteEnfesto."METROS"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 354.070914960000000000
          Width = 63.118120000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'QTDE_FOLHAS'
          DataSetName = 'OrdemCorteEnfesto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OrdemCorteEnfesto."QTDE_FOLHAS"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 435.118432440000000000
          Width = 74.440940000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'TOTAL_PECAS'
          DataSetName = 'OrdemCorteEnfesto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OrdemCorteEnfesto."TOTAL_PECAS"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 519.590912440000000000
          Width = 78.220470000000000000
          Height = 13.228346456692910000
          ShowHint = False
          DataField = 'NRO_PACOTES'
          DataSetName = 'OrdemCorteEnfesto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OrdemCorteEnfesto."NRO_PACOTES"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 657.874460000000000000
          Width = 47.984230000000000000
          Height = 13.228346456692910000
          ShowHint = False
          DataField = 'PECAS_PACOTE'
          DataSetName = 'OrdemCorteEnfesto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[OrdemCorteEnfesto."PECAS_PACOTE"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 52.913420000000000000
        Top = 540.472790000000000000
        Width = 718.110700000000000000
        DataSetName = 'frx_dsOrdemCorte'
        RowCount = 0
        Stretched = True
        object Line5: TfrxLineView
          Align = baWidth
          Top = 52.677180000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo48: TfrxMemoView
          Align = baWidth
          Top = 7.338590000000000000
          Width = 718.110700000000000000
          Height = 18.897642680000000000
          ShowHint = False
          AutoWidth = True
          Color = 15724527
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MATERIA PRIMA')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baWidth
          Top = 1.000000000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo39: TfrxMemoView
          Left = 79.370130000000000000
          Top = 37.795300000000000000
          Width = 162.519790000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 281.574883700000000000
          Top = 37.795300000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COMPOSI'#199#195'O:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 395.716613540000000000
          Top = 37.795300000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COR:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 481.889690550000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UND:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 529.133858267716500000
          Top = 37.795300000000000000
          Width = 64.251968503937010000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE:')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTO:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 604.724800000000000000
          Top = 37.795300000000000000
          Width = 109.606330940000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CONSUMO TOTAL:')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        Height = 15.118110240000000000
        Top = 616.063390000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData2OnBeforePrint'
        Child = FRX_OrdemCorte.bandamateriaPrimaGrade
        DataSetName = 'dts_MateriasPrimas'
        RowCount = 0
        Stretched = True
        object Memo45: TfrxMemoView
          Left = 281.574883700000000000
          Width = 105.826771650000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'COMPOSICAO_DESCRICAO'
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_MateriasPrimas."COMPOSICAO_DESCRICAO"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 79.370130000000000000
          Width = 192.756030000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'DESCRICAO'
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_MateriasPrimas."DESCRICAO"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 395.716613540000000000
          Width = 71.811016300000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'COR'
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_MateriasPrimas."COR"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 481.889690550000000000
          Width = 30.236240000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'UND'
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_MateriasPrimas."UND"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 529.133858270000000000
          Width = 64.251968500000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'QTDE'
          DataSetName = 'dts_MateriasPrimas'
          DisplayFormat.FormatStr = '###,##0.0000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_MateriasPrimas."QTDE"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 13.228346456692910000
          ShowHint = False
          DataField = 'REFERENCIA'
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_MateriasPrimas."REFERENCIA"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 655.858690000000000000
          Width = 52.913380940000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'QTDE_CONSUMOSTOTAL'
          DataSetName = 'dts_MateriasPrimas'
          DisplayFormat.FormatStr = '###,##0.0000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_MateriasPrimas."QTDE_CONSUMOSTOTAL"]')
          ParentFont = False
        end
      end
      object bandamateriaPrimaGrade: TfrxChild
        Height = 124.724409450000000000
        Top = 653.858690000000000000
        Width = 718.110700000000000000
        object DBCross2: TfrxDBCrossView
          Left = 7.559060000000000000
          Top = 1.779530000000000000
          Width = 154.000000000000000000
          Height = 112.000000000000000000
          ShowHint = False
          ColumnLevels = 2
          DownThenAcross = False
          RowLevels = 0
          ShowColumnTotal = False
          ShowRowTotal = False
          CellFields.Strings = (
            'QTDE_CONSUMOSTOTAL')
          ColumnFields.Strings = (
            'TAMANHO'
            'TAMANHOPADRAO')
          DataSet = dts_MateriaPrimaGrade
          DataSetName = 'dts_MateriaPrimaGrade'
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2232372C35
            353930362220546F703D223732392C3633383232222057696474683D22313134
            22204865696768743D22313822205265737472696374696F6E733D2232342220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E
            4E616D653D2243616C696272692220466F6E742E5374796C653D223022204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C
            546672784D656D6F56696577204C6566743D2232372C35353930362220546F70
            3D223735312C3633383232222057696474683D2231313422204865696768743D
            22323222205265737472696374696F6E733D223234222053686F7748696E743D
            2246616C73652220416C6C6F7745787072657373696F6E733D2246616C736522
            20446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220
            466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269
            616C204E6172726F772220466F6E742E5374796C653D223022204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686152696768742220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22222F3E3C546672784D
            656D6F56696577204C6566743D223133372220546F703D223538222057696474
            683D22343122204865696768743D22313822205265737472696374696F6E733D
            223234222053686F7748696E743D2246616C73652220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D226861526967687422
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C546672
            784D656D6F56696577204C6566743D223232382220546F703D22353822205769
            6474683D22333822204865696768743D22323222205265737472696374696F6E
            733D223234222053686F7748696E743D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C736522204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686152696768
            74222056416C69676E3D22766143656E7465722220546578743D22222F3E3C54
            6672784D656D6F56696577204C6566743D22302220546F703D22302220576964
            74683D223022204865696768743D223022205265737472696374696F6E733D22
            38222053686F7748696E743D2246616C73652220416C6C6F7745787072657373
            696F6E733D2246616C736522204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222056
            416C69676E3D22766143656E7465722220546578743D22222F3E3C546672784D
            656D6F56696577204C6566743D22302220546F703D2230222057696474683D22
            3022204865696768743D223022205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C736522204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222048416C69676E3D2268615269676874222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C2F63656C6C6D656D6F
            733E3C63656C6C6865616465726D656D6F733E3C546672784D656D6F56696577
            204C6566743D2239322220546F703D223430222057696474683D223230302220
            4865696768743D22323222205265737472696374696F6E733D2238222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C736522204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222056416C69676E3D22766143656E7465722220546578743D22
            515444455F434F4E53554D4F53544F54414C222F3E3C546672784D656D6F5669
            6577204C6566743D2239322220546F703D223632222057696474683D22323030
            22204865696768743D22323222205265737472696374696F6E733D2238222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C736522204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222056416C69676E3D22766143656E746572222054657874
            3D22515444455F434F4E53554D4F53544F54414C222F3E3C546672784D656D6F
            56696577204C6566743D22302220546F703D2230222057696474683D22302220
            4865696768743D223022205265737472696374696F6E733D2238222053686F77
            48696E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246
            616C736522204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222056416C69676E3D22766143656E7465722220546578743D2251
            55414E544944414445222F3E3C2F63656C6C6865616465726D656D6F733E3C63
            6F6C756D6E6D656D6F733E3C546672784D656D6F56696577204C6566743D2232
            372C35353930362220546F703D223639332C3633383232222057696474683D22
            31313422204865696768743D22313822205265737472696374696F6E733D2232
            34222053686F7748696E743D2246616C73652220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D223022
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D22686152696768742220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D22222F
            3E3C546672784D656D6F56696577204C6566743D2232372C3535393036222054
            6F703D223731312C3633383232222057696474683D2231313422204865696768
            743D22313822205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2243
            616C696272692220466F6E742E5374796C653D223022204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686152696768742220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C756D6E6D
            656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D656D6F
            56696577204C6566743D2239352220546F703D223138222057696474683D2235
            3022204865696768743D22313822205265737472696374696F6E733D22382220
            56697369626C653D2246616C7365222053686F7748696E743D2246616C736522
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D392220466F6E742E4E616D653D22417269616C204E617272
            6F772220466F6E742E5374796C653D223122204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            6768742220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22535542544F54414C222F3E3C54667278
            4D656D6F56696577204C6566743D223133362220546F703D2233362220576964
            74683D22333822204865696768743D22323222205265737472696374696F6E73
            3D2238222056697369626C653D2246616C7365222053686F7748696E743D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31332220466F6E742E4E616D653D2241726961
            6C2220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22546F74616C222F3E3C2F636F6C756D6E
            746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D656D
            6F56696577204C6566743D22302220546F703D2230222057696474683D223230
            3022204865696768743D22313822205265737472696374696F6E733D22382220
            56697369626C653D2246616C7365222053686F7748696E743D2246616C736522
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D392220466F6E742E4E616D653D22417269616C204E617272
            6F772220466F6E742E5374796C653D223122204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268614365
            6E7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D22515444455F434F4E53554D4F53544F
            54414C222F3E3C546672784D656D6F56696577204C6566743D2232372C353539
            30362220546F703D223637352C3633383232222057696474683D223131342220
            4865696768743D22313822205265737472696374696F6E733D2238222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D
            653D2243616C696272692220466F6E742E5374796C653D223122204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D2254414D414E484F
            532F5155414E54494441444553222F3E3C546672784D656D6F56696577204C65
            66743D2239322220546F703D223138222057696474683D223230302220486569
            6768743D22323222205265737472696374696F6E733D2238222056697369626C
            653D2246616C7365222053686F7748696E743D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686143
            656E746572222056416C69676E3D22766143656E7465722220546578743D2222
            2F3E3C546672784D656D6F56696577204C6566743D22302220546F703D223138
            222057696474683D22383122204865696768743D223138222052657374726963
            74696F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D392220466F6E742E4E616D653D22417269616C204E6172726F772220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222047617058
            3D22332220476170593D22332220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D2254414D414E484F
            50414452414F222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F73
            3E3C546672784D656D6F56696577204C6566743D22302220546F703D22333622
            2057696474683D2232303022204865696768743D223138222052657374726963
            74696F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D392220466F6E742E4E616D653D22417269616C204E6172726F77222046
            6F6E742E5374796C653D223022204672616D652E5479703D2231352220476170
            583D22332220476170593D22332220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D22222F3E3C2F72
            6F776D656D6F733E3C726F77746F74616C6D656D6F733E3C546672784D656D6F
            56696577204C6566743D22302220546F703D223534222057696474683D223435
            22204865696768743D22323022205265737472696374696F6E733D2238222056
            697369626C653D2246616C7365222053686F7748696E743D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22546F74616C203D262336323B222F3E3C2F
            726F77746F74616C6D656D6F733E3C63656C6C66756E6374696F6E733E3C6974
            656D20312F3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D6E736F72
            743E3C6974656D20322F3E3C6974656D20302F3E3C2F636F6C756D6E736F7274
            3E3C726F77736F72743E3C6974656D20322F3E3C2F726F77736F72743E3C2F63
            726F73733E}
        end
      end
    end
  end
  object db_MateriaPrima: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  VIEW_ORDEMPRODUCAO_MATERIAPRIMA'
      'WHERE'
      'ORDEMPRODUCAO=:ORDEMPRODUCAO'
      'AND'
      'CODIGO=:IDREFERENCIA'
      ''
      'ORDER BY DESCRICAO DESC')
    Left = 288
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ORDEMPRODUCAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDREFERENCIA'
        ParamType = ptInput
      end>
  end
  object ds_MateriaPrimaTecidos: TDataSource
    DataSet = db_MateriaPrimaTecidos
    Left = 200
    Top = 256
  end
  object db_MateriaPrimaTecidos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOS'
      'WHERE'
      'ORDEMPRODUCAO=:ORDEMPRODUCAO'
      'AND'
      'CODIGO=:IDREFERENCIA')
    Left = 200
    Top = 225
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ORDEMPRODUCAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDREFERENCIA'
        ParamType = ptInput
      end>
    object db_MateriaPrimaTecidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_MateriaPrimaTecidosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object db_MateriaPrimaTecidosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_MateriaPrimaTecidosUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_MateriaPrimaTecidosQTDE_METROS: TBCDField
      FieldName = 'QTDE_METROS'
      DisplayFormat = '###,##0.000'
    end
    object db_MateriaPrimaTecidosVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.000'
    end
    object db_MateriaPrimaTecidosVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.000'
    end
    object db_MateriaPrimaTecidosCOMPOSICAO: TIntegerField
      FieldName = 'COMPOSICAO'
    end
    object db_MateriaPrimaTecidosCOMPOSICAO_DESCRICAO: TStringField
      FieldName = 'COMPOSICAO_DESCRICAO'
      Size = 200
    end
    object db_MateriaPrimaTecidosDIMENSIONAMENTO: TStringField
      FieldName = 'DIMENSIONAMENTO'
      Size = 200
    end
    object db_MateriaPrimaTecidosCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_MateriaPrimaTecidosTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
  end
  object ds_MateriaPrima: TDataSource
    DataSet = db_MateriaPrima
    Left = 288
    Top = 256
  end
  object dts_MateriaPrimaGrade: TfrxDBDataset
    UserName = 'dts_MateriaPrimaGrade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ORDEMPRODUCAO=ORDEMPRODUCAO'
      'CODIGO=CODIGO'
      'REFERENCIA=REFERENCIA'
      'COR=COR'
      'DESCRICAO=DESCRICAO'
      'TAMANHO=TAMANHO'
      'TAMANHOPADRAO=TAMANHOPADRAO'
      'QTDE=QTDE'
      'QTDE_CONSUMOSTOTAL=QTDE_CONSUMOSTOTAL')
    DataSet = db_MateriaPrimaGrade
    BCDToCurrency = False
    Left = 600
    Top = 320
  end
  object ds_MateriaPrimaGrade: TDataSource
    DataSet = db_MateriaPrimaGrade
    Left = 600
    Top = 264
  end
  object db_MateriaPrimaGrade: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADE'
      'WHERE'
      'CODIGO=:CODIGO')
    MasterSource = ds_MateriaPrima
    MasterFields = 'CODIGO;REFERENCIA'
    DetailFields = 'CODIGO;REFERENCIA'
    Left = 600
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'REFERENCIA'
      end>
  end
end
