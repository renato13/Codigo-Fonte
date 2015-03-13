object FrmFaseProducaoTransferirFase: TFrmFaseProducaoTransferirFase
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Transfer'#234'ncia de fase | Andamento'
  ClientHeight = 482
  ClientWidth = 688
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 441
    Width = 688
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
      Left = 15
      Top = 6
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
      Left = 201
      Top = 6
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
      TabOrder = 2
      OnClick = BtnCancelarClick
    end
    object BitBtn4: TBitBtn
      Left = 96
      Top = 6
      Width = 99
      Height = 25
      Caption = 'Imprimir O.S...'
      TabOrder = 1
      OnClick = BitBtn4Click
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 688
    Height = 36
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 688
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 688
      ExplicitWidth = 688
      inherited LblBarraTitulo: TLabel
        Width = 264
        Caption = 'Transfer'#234'ncia de fase | Andamento'
        ExplicitWidth = 264
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 53
    Width = 688
    Height = 388
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
      Width = 684
      Height = 72
      Align = alTop
      Caption = 'Fase Atual'
      Enabled = False
      TabOrder = 0
      object Label1: TLabel
        Left = 15
        Top = 21
        Width = 91
        Height = 15
        Caption = 'Data de Retorno:'
      end
      object EditDataRetorno: TDBEdit
        Left = 15
        Top = 39
        Width = 97
        Height = 23
        Color = clBtnFace
        DataField = 'DATARETORNOORIGEM'
        DataSource = ds_Andamento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dbEditPesquisarFasesGrade: TIDBEditDialog
        Left = 413
        Top = 39
        Width = 70
        Height = 23
        Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = True
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
        SQLdbFocusControl = EditNomeFaseAtual
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
      object EditNomeFaseAtual: TEdit
        Left = 487
        Top = 39
        Width = 173
        Height = 23
        Color = clBtnFace
        TabOrder = 4
        Text = '***'
      end
      object Edit1: TEdit
        Left = 188
        Top = 39
        Width = 220
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
        TabOrder = 2
      end
      object IDBEditDialog1: TIDBEditDialog
        Left = 114
        Top = 39
        Width = 70
        Height = 23
        HelpKeyWord = ''
        Color = clBtnFace
        Enabled = True
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
    end
    object gbxFaseSeguinte: TGroupBox
      Left = 2
      Top = 89
      Width = 684
      Height = 120
      Align = alClient
      Caption = 'Fase Seguinte:'
      TabOrder = 1
      object Label2: TLabel
        Left = 114
        Top = 19
        Width = 80
        Height = 15
        Caption = 'Data de Inicio:'
      end
      object Label3: TLabel
        Left = 217
        Top = 19
        Width = 91
        Height = 15
        Caption = 'Data de Retorno:'
      end
      object Label7: TLabel
        Left = 10
        Top = 19
        Width = 75
        Height = 15
        Caption = 'Transferencia'
      end
      object Label6: TLabel
        Left = 547
        Top = 67
        Width = 83
        Height = 15
        Caption = 'Custo Unit'#225'rio:'
      end
      object EditDataProximoInicio: TDBEdit
        Left = 114
        Top = 37
        Width = 97
        Height = 23
        DataField = 'DATA'
        DataSource = ds_Andamento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object dbEditPesquisarFasesDestino: TIDBEditDialog
        Left = 322
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
        DataField = 'FASE'
        DataSource = ds_Andamento
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
        Left = 398
        Top = 37
        Width = 262
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
        TabOrder = 4
      end
      object EditDataProximoRetorno: TDBEdit
        Left = 217
        Top = 37
        Width = 96
        Height = 23
        DataField = 'DATARETORNO'
        DataSource = ds_Andamento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit1: TDBEdit
        Left = 10
        Top = 37
        Width = 96
        Height = 23
        Color = clBtnFace
        DataField = 'CODIGO'
        DataSource = ds_Andamento
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditTerceirizado: TIDBEditDialog
        Left = 10
        Top = 85
        Width = 70
        Height = 23
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        TabOrder = 5
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
        DataField = 'TERCEIRIZADO'
        DataSource = ds_Andamento
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
        Left = 84
        Top = 85
        Width = 457
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
        TabOrder = 6
      end
      object EditValor: TDBEdit
        Left = 547
        Top = 85
        Width = 113
        Height = 23
        DataField = 'VLR_UNITARIO'
        DataSource = ds_Andamento
        TabOrder = 7
      end
    end
    object gbxFaseSeguinte2: TGroupBox
      Left = 2
      Top = 209
      Width = 684
      Height = 72
      Align = alBottom
      Caption = '[Quantidades]'
      TabOrder = 2
      object btnGrade: TSpeedButton
        Left = 91
        Top = 39
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
      object Label5: TLabel
        Left = 10
        Top = 23
        Width = 67
        Height = 15
        Caption = 'Quantidade:'
      end
      object LabeledEdit2: TDBEdit
        Left = 10
        Top = 40
        Width = 80
        Height = 23
        Hint = 'Quantidade a Produzir'
        DataField = 'QTDE_ENVIADA'
        DataSource = ds_Andamento
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 281
      Width = 684
      Height = 105
      Align = alBottom
      Caption = 'Observa'#231#245'es:'
      TabOrder = 3
      object DBMemo1: TDBMemo
        Left = 2
        Top = 17
        Width = 680
        Height = 86
        Align = alClient
        DataField = 'OBSERVACAO'
        DataSource = ds_Andamento
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 36
    Width = 688
    Height = 17
    Align = alTop
    TabOrder = 3
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
    Left = 16
    Top = 208
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
  object ds_Andamento: TDataSource
    DataSet = db_Andamento
    Left = 176
    Top = 208
  end
  object ds_AndamentoReferencias: TDataSource
    DataSet = db_AndamentoReferencias
    Left = 176
    Top = 272
  end
  object db_AndamentoReferencias: TFDQuery
    BeforeInsert = db_AndamentoReferenciasBeforeInsert
    BeforePost = db_AndamentoReferenciasBeforePost
    BeforeDelete = db_AndamentoReferenciasBeforeDelete
    MasterSource = ds_Andamento
    MasterFields = 'EMPRESA;CODIGO'
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
    Left = 16
    Top = 272
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
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT SUM(QTDE_ENVIADA) AS QTDE_ENVIADA FROM PCP_FASETRANSFEREN' +
        'CIA_REFERENCIAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 16
    Top = 336
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
  object SP_TerceirizadoCalcular: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPOP_TERCEIRIZADO_CALCULA'
    Left = 448
    Top = 376
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
        Size = 6226036
      end
      item
        Name = 'NREMESSA'
        DataType = ftInteger
        ParamType = ptInput
        Size = 2097184
      end
      item
        Name = 'NQUANTIDADE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object frx_DistribuirTerceirizados: TfrxDBDataset
    UserName = 'frx_DistribuirTerceirizados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'ORDEMPRODUCAO=ORDEMPRODUCAO'
      'DATA=DATA'
      'DATARETORNO=DATARETORNO'
      'TERCEIRIZADO=TERCEIRIZADO'
      'TERCEIRIZADO_NOME=TERCEIRIZADO_NOME'
      'FASE=FASE'
      'FASE_NOME=FASE_NOME'
      'CNPJ=CNPJ'
      'IE=IE'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'NOMECIDADE=NOMECIDADE'
      'UF=UF'
      'DDD=DDD'
      'FONE=FONE'
      'FAX=FAX'
      'CONTATO=CONTATO'
      'EMAIL=EMAIL'
      'QTDE_ENVIADA=QTDE_ENVIADA'
      'QTDE_RETORNADA=QTDE_RETORNADA'
      'QTDE_RESTANTE=QTDE_RESTANTE'
      'QTDE_PERDAS=QTDE_PERDAS'
      'QTDE_DEFEITOS=QTDE_DEFEITOS'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_TOTAL=VLR_TOTAL'
      'OBSERVACAO=OBSERVACAO'
      'ENCERRADO=ENCERRADO'
      'GEROUPAGAMENTO=GEROUPAGAMENTO')
    DataSet = db_DistribuirTerceirizados
    BCDToCurrency = False
    Left = 600
    Top = 240
  end
  object db_DistribuirTerceirizados: TFDQuery
    BeforeOpen = db_DistribuirTerceirizadosBeforeOpen
    MasterSource = ds_Andamento
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_TERCEIRIZADO'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 440
    Top = 240
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
    object db_DistribuirTerceirizadosEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_DistribuirTerceirizadosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_DistribuirTerceirizadosORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_DistribuirTerceirizadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
    end
    object db_DistribuirTerceirizadosDATARETORNO: TSQLTimeStampField
      FieldName = 'DATARETORNO'
      Required = True
    end
    object db_DistribuirTerceirizadosTERCEIRIZADO: TIntegerField
      FieldName = 'TERCEIRIZADO'
      Required = True
    end
    object db_DistribuirTerceirizadosTERCEIRIZADO_NOME: TStringField
      FieldName = 'TERCEIRIZADO_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirTerceirizadosFASE: TIntegerField
      FieldName = 'FASE'
      Required = True
    end
    object db_DistribuirTerceirizadosFASE_NOME: TStringField
      FieldName = 'FASE_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirTerceirizadosCNPJ: TStringField
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 30
    end
    object db_DistribuirTerceirizadosIE: TStringField
      FieldName = 'IE'
      ReadOnly = True
      Size = 30
    end
    object db_DistribuirTerceirizadosENDERECO: TStringField
      FieldName = 'ENDERECO'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirTerceirizadosNUMERO: TStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 30
    end
    object db_DistribuirTerceirizadosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirTerceirizadosCEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 30
    end
    object db_DistribuirTerceirizadosNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirTerceirizadosUF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      Size = 30
    end
    object db_DistribuirTerceirizadosDDD: TIntegerField
      FieldName = 'DDD'
      ReadOnly = True
    end
    object db_DistribuirTerceirizadosFONE: TStringField
      FieldName = 'FONE'
      ReadOnly = True
      Size = 30
    end
    object db_DistribuirTerceirizadosFAX: TStringField
      FieldName = 'FAX'
      ReadOnly = True
      Size = 30
    end
    object db_DistribuirTerceirizadosCONTATO: TStringField
      FieldName = 'CONTATO'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirTerceirizadosEMAIL: TStringField
      FieldName = 'EMAIL'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirTerceirizadosQTDE_ENVIADA: TIntegerField
      FieldName = 'QTDE_ENVIADA'
      DisplayFormat = '###,##0'
    end
    object db_DistribuirTerceirizadosQTDE_RETORNADA: TIntegerField
      FieldName = 'QTDE_RETORNADA'
      DisplayFormat = '###,##0'
    end
    object db_DistribuirTerceirizadosQTDE_RESTANTE: TIntegerField
      FieldName = 'QTDE_RESTANTE'
      ReadOnly = True
      DisplayFormat = '###,##0'
    end
    object db_DistribuirTerceirizadosQTDE_PERDAS: TIntegerField
      FieldName = 'QTDE_PERDAS'
      DisplayFormat = '###,##0'
    end
    object db_DistribuirTerceirizadosQTDE_DEFEITOS: TIntegerField
      FieldName = 'QTDE_DEFEITOS'
      DisplayFormat = '###,##0'
    end
    object db_DistribuirTerceirizadosVLR_UNITARIO: TBCDField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '###,##0.00'
    end
    object db_DistribuirTerceirizadosVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object db_DistribuirTerceirizadosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ReadOnly = True
      Size = 5000
    end
    object db_DistribuirTerceirizadosENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object db_DistribuirTerceirizadosGEROUPAGAMENTO: TStringField
      FieldName = 'GEROUPAGAMENTO'
      ReadOnly = True
      Required = True
      Size = 3
    end
  end
  object db_DistribuirGrade: TFDQuery
    MasterSource = ds_DistribuirTerceirizados
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_TERCEIRIZADO_REFERENCIAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 440
    Top = 296
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
  object ds_DistribuirTerceirizados: TDataSource
    AutoEdit = False
    DataSet = db_DistribuirTerceirizados
    Left = 515
    Top = 240
  end
  object frx_DistribuirReferencias: TfrxDBDataset
    UserName = 'frx_DistribuirReferencias'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'ORDEMPRODUCAO=ORDEMPRODUCAO'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'COR=COR'
      'ORDEM_GRADE=ORDEM_GRADE'
      'TAMANHO=TAMANHO'
      'VALOR_UNIT=VALOR_UNIT'
      'QUANTIDADE=QUANTIDADE'
      'VLR_TOTAL=VLR_TOTAL')
    DataSet = db_DistribuirGrade
    BCDToCurrency = False
    Left = 520
    Top = 296
  end
  object FrxDistribuir: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.300000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = '* ISOFT SISTEMAS *'
    ReportOptions.CreateDate = 39838.719326342600000000
    ReportOptions.LastChange = 40984.645209687500000000
    ReportOptions.VersionMajor = '2009'
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Begin'
      '        '
      'end.')
    Left = 600
    Top = 296
    Datasets = <
      item
        DataSet = frx_DistribuirReferencias
        DataSetName = 'frx_DistribuirReferencias'
      end
      item
        DataSet = frx_DistribuirTerceirizados
        DataSetName = 'frx_DistribuirTerceirizados'
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
      Font.Name = 'Verdana'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSet = frx_DistribuirTerceirizados
      DataSetName = 'frx_DistribuirTerceirizados'
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 109.606370000000000000
        Top = 483.779840000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = 454.881880000000000000
          Top = 26.070810000000000000
          Width = 230.543290000000000000
          Height = 49.322820000000000000
        end
        object Memo67: TfrxMemoView
          Left = 466.102350000000000000
          Top = 51.291316610000000000
          Width = 123.118120000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL:')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 1.889763780000000000
          Width = 714.330708660000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo51: TfrxMemoView
          Left = 595.709030000000000000
          Top = 51.291316610000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 3.779530000000000000
          Top = 14.559060000000000000
          Width = 393.071120000000000000
          Height = 83.818800000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA RECEBIMENTO:____/____/________     Hora: ______:______ '
            ''
            ''
            ''
            'RESPONSAVEL:_______________________________________________'
            '                          (assinar)')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 616.063390000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          Top = 0.755905510000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          Left = 1.000000000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Top = 0.755905510000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'EMP_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_SITE"]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 162.141732280000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object DBCross1: TfrxDBCrossView
          Width = 351.000000000000000000
          Height = 130.000000000000000000
          DownThenAcross = False
          RowLevels = 4
          CellFields.Strings = (
            'QUANTIDADE')
          ColumnFields.Strings = (
            'TAMANHO')
          DataSet = frx_DistribuirReferencias
          DataSetName = 'frx_DistribuirReferencias'
          RowFields.Strings = (
            'REFERENCIA'
            'DESCRICAO'
            'VALOR_UNIT'
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2232333122
            20546F703D223331362C3738373537222057696474683D223530222048656967
            68743D22313822205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D392220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223233312220546F703D223333342C3738373537222057696474683D22353022
            204865696768743D22313822205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C73652220446973706C617946
            6F726D61742E4B696E643D22666B4E756D657269632220466F6E742E43686172
            7365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D392220466F6E742E4E616D653D22417269616C204E6172726F7722
            20466F6E742E5374796C653D223022204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C
            6566743D223139322220546F703D223636222057696474683D22383022204865
            696768743D22323222205265737472696374696F6E733D2232342220416C6C6F
            7745787072657373696F6E733D2246616C736522204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            5269676874222056416C69676E3D22766143656E7465722220546578743D2230
            222F3E3C546672784D656D6F56696577204C6566743D223332302C3333383539
            2220546F703D223337332C3234343238222057696474683D2238302220486569
            6768743D22323222205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686152
            69676874222056416C69676E3D22766143656E7465722220546578743D223022
            2F3E3C546672784D656D6F56696577204C6566743D223233312220546F703D22
            3335322C3738373537222057696474683D22353022204865696768743D223138
            22205265737472696374696F6E733D2232342220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223122204672616D652E5479703D223135222046696C6C2E4261636B436F
            6C6F723D2231353732343532372220476170583D22332220476170593D223322
            2048416C69676E3D22686152696768742220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D223238312220546F703D2233
            31362C3738373537222057696474683D22353022204865696768743D22313822
            205265737472696374696F6E733D2232342220416C6C6F774578707265737369
            6F6E733D2246616C73652220446973706C6179466F726D61742E4B696E643D22
            666B4E756D657269632220466F6E742E436861727365743D22302220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223022204672616D652E5479703D223135222046696C6C2E4261636B436F6C6F
            723D2231353732343532372220476170583D22332220476170593D2233222048
            416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C
            546672784D656D6F56696577204C6566743D223238312220546F703D22333334
            2C3738373537222057696474683D22353022204865696768743D223138222052
            65737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E
            733D2246616C73652220446973706C6179466F726D61742E4B696E643D22666B
            4E756D657269632220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D
            2231353732343532372220476170583D22332220476170593D2233222048416C
            69676E3D22686152696768742220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D2230222F3E3C5466
            72784D656D6F56696577204C6566743D223430302C33333835392220546F703D
            223337332C3234343238222057696474683D22383122204865696768743D2232
            3222205265737472696374696F6E733D2232342220416C6C6F77457870726573
            73696F6E733D2246616C736522204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222048416C69676E3D22686152696768742220
            56416C69676E3D22766143656E7465722220546578743D2230222F3E3C546672
            784D656D6F56696577204C6566743D22302220546F703D223022205769647468
            3D223022204865696768743D223022205265737472696374696F6E733D223822
            20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D2268615269676874222056416C69676E3D22766143656E74657222205465
            78743D22222F3E3C546672784D656D6F56696577204C6566743D223238312220
            546F703D223335322C3738373537222057696474683D22353022204865696768
            743D22313822205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            392220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E74
            2E5374796C653D223122204672616D652E5479703D223135222046696C6C2E42
            61636B436F6C6F723D2231353732343532372220476170583D22332220476170
            593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2230222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865616465726D656D
            6F733E3C546672784D656D6F56696577204C6566743D22302220546F703D2230
            222057696474683D223022204865696768743D22302220526573747269637469
            6F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222056416C69676E3D22766143656E7465722220546578743D225155414E5449
            44414445222F3E3C546672784D656D6F56696577204C6566743D22302220546F
            703D2230222057696474683D223022204865696768743D223022205265737472
            696374696F6E733D22382220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222056416C69676E3D22766143656E7465722220546578743D225155
            414E544944414445222F3E3C546672784D656D6F56696577204C6566743D2230
            2220546F703D2230222057696474683D223022204865696768743D2230222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C736522204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222056416C69676E3D22766143656E746572222054657874
            3D225155414E544944414445222F3E3C546672784D656D6F56696577204C6566
            743D22302220546F703D2230222057696474683D223022204865696768743D22
            3022205265737472696374696F6E733D22382220416C6C6F7745787072657373
            696F6E733D2246616C736522204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222056416C69676E3D22766143656E7465722220
            546578743D225155414E544944414445222F3E3C546672784D656D6F56696577
            204C6566743D22302220546F703D2230222057696474683D2230222048656967
            68743D223022205265737472696374696F6E733D22382220416C6C6F77457870
            72657373696F6E733D2246616C736522204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222056416C69676E3D22766143656E74
            65722220546578743D225155414E544944414445222F3E3C2F63656C6C686561
            6465726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D6F56
            696577204C6566743D223233312220546F703D223239382C3738373537222057
            696474683D22353022204865696768743D22313822205265737472696374696F
            6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C736522
            20466F6E742E436861727365743D22302220466F6E742E436F6C6F723D223022
            20466F6E742E4865696768743D222D392220466F6E742E4E616D653D22417269
            616C204E6172726F772220466F6E742E5374796C653D223122204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686152696768742220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C75
            6D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D
            656D6F56696577204C6566743D223238312220546F703D223239382C37383735
            37222057696474683D22353022204865696768743D2231382220526573747269
            6374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D22
            417269616C204E6172726F772220466F6E742E5374796C653D22312220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686152696768742220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D22535542544F54
            414C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F726E65726D
            656D6F733E3C546672784D656D6F56696577204C6566743D2232302220546F70
            3D223238302C3738373537222057696474683D2232313122204865696768743D
            22313822205265737472696374696F6E733D22382220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22302220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220
            466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374
            796C653D223122204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E7465722220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D2220222F3E3C546672784D656D6F56696577204C6566743D223233
            312220546F703D223238302C3738373537222057696474683D22313030222048
            65696768743D22313822205265737472696374696F6E733D22382220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D392220466F6E742E4E616D653D22417269616C204E6172726F77222046
            6F6E742E5374796C653D223122204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222048416C69676E3D22686143656E74657222
            20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
            6E7465722220546578743D2254414D414E484F2F5155414E5449444144453A22
            2F3E3C546672784D656D6F56696577204C6566743D22302220546F703D223022
            2057696474683D223022204865696768743D223022205265737472696374696F
            6E733D2238222056697369626C653D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C736522204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
            72222056416C69676E3D22766143656E7465722220546578743D22222F3E3C54
            6672784D656D6F56696577204C6566743D2232302220546F703D223239382C37
            38373537222057696474683D22363022204865696768743D2231382220526573
            7472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D
            653D22417269616C204E6172726F772220466F6E742E5374796C653D22312220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
            6E7465722220546578743D225245464552C38A4E4349413A222F3E3C54667278
            4D656D6F56696577204C6566743D2238302220546F703D223239382C37383735
            37222057696474683D22353622204865696768743D2231382220526573747269
            6374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D22
            417269616C204E6172726F772220466F6E742E5374796C653D22312220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D22444553435249C387C3834F3A222F3E3C546672784D656D
            6F56696577204C6566743D223133362220546F703D223239382C373837353722
            2057696474683D22353822204865696768743D22313822205265737472696374
            696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C7365
            2220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D392220466F6E742E4E616D653D224172
            69616C204E6172726F772220466F6E742E5374796C653D223122204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686152696768742220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D22412050414741523A
            222F3E3C546672784D656D6F56696577204C6566743D223139342220546F703D
            223239382C3738373537222057696474683D22333722204865696768743D2231
            3822205265737472696374696F6E733D22382220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223122204672616D652E5479703D2231352220476170583D223322204761
            70593D22332220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D22434F523A222F3E3C2F636F726E65
            726D656D6F733E3C726F776D656D6F733E3C546672784D656D6F56696577204C
            6566743D2232302220546F703D223331362C3738373537222057696474683D22
            363022204865696768743D22333622205265737472696374696F6E733D223234
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D392220466F6E742E4E616D653D22417269616C204E6172
            726F772220466F6E742E5374796C653D223022204672616D652E5479703D2231
            352220476170583D22332220476170593D22332220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C546672784D656D6F56696577204C6566743D2238302220546F703D22
            3331362C3738373537222057696474683D22353622204865696768743D223336
            22205265737472696374696F6E733D2232342220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223022204672616D652E5479703D2231352220476170583D223322204761
            70593D22332220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F5669
            6577204C6566743D223133362220546F703D223331362C373837353722205769
            6474683D22353822204865696768743D22333622205265737472696374696F6E
            733D2232342220416C6C6F7745787072657373696F6E733D2246616C73652220
            446973706C6179466F726D61742E466F726D61745374723D222323232C232330
            2E30302220446973706C6179466F726D61742E4B696E643D22666B4E756D6572
            69632220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D22
            417269616C204E6172726F772220466F6E742E5374796C653D22302220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686152696768742220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D22222F3E3C5466
            72784D656D6F56696577204C6566743D223139342220546F703D223331362C37
            38373537222057696474683D22333722204865696768743D2231382220526573
            7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22302220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E61
            6D653D22417269616C204E6172726F772220466F6E742E5374796C653D223022
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22222F3E3C2F726F776D656D6F733E3C726F7774
            6F74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D223230
            2220546F703D223335322C3738373537222057696474683D2232313122204865
            696768743D22313822205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D392220466F6E742E4E616D653D22417269616C204E6172726F772220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D22546F74616C203D262336323B222F3E3C546672784D65
            6D6F56696577204C6566743D2239392220546F703D223636222057696474683D
            22393322204865696768743D22323222205265737472696374696F6E733D2238
            222056697369626C653D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E
            742E4E616D653D22417269616C2220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D22546F7461
            6C222F3E3C546672784D656D6F56696577204C6566743D223139322220546F70
            3D223636222057696474683D22393722204865696768743D2232322220526573
            7472696374696F6E733D2238222056697369626C653D2246616C73652220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22546F74616C222F3E3C546672784D656D6F56696577204C65
            66743D223139342220546F703D223333342C3738373537222057696474683D22
            333722204865696768743D22313822205265737472696374696F6E733D223822
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D392220466F6E742E4E616D653D22417269616C204E617272
            6F772220466F6E742E5374796C653D223122204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            6768742220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22537562746F74616C222F3E3C2F726F77
            746F74616C6D656D6F733E3C63656C6C66756E6374696F6E733E3C6974656D20
            312F3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C
            6974656D20322F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C69
            74656D20302F3E3C6974656D20302F3E3C6974656D20302F3E3C6974656D2030
            2F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 219.212740000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Child = FrxDistribuir.Child1
        object Shape1: TfrxShapeView
          Left = 2.779530000000000000
          Top = 3.779530000000000000
          Width = 718.102660000000000000
          Height = 68.031496060000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
        end
        object Shape3: TfrxShapeView
          Top = 72.559060000000000000
          Width = 718.000000000000000000
          Height = 142.000000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 7.559057560000000000
          Top = 103.685041810000000000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOME/RAZ'#195'O SOCIAL:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 462.779530000000000000
          Top = 103.685041810000000000
          Width = 58.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 590.779530000000000000
          Top = 103.685041810000000000
          Width = 123.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'I.E/RG:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 7.559057560000000000
          Top = 115.559060000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataField = 'TERCEIRIZADO_NOME'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."TERCEIRIZADO_NOME"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 462.779530000000000000
          Top = 115.559060000000000000
          Width = 50.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CNPJ'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."CNPJ"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 590.779530000000000000
          Top = 115.559060000000000000
          Width = 29.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'IE'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."IE"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 7.779530000000000000
          Top = 130.141734720000000000
          Width = 59.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 441.622140000000000000
          Top = 130.141734720000000000
          Width = 43.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 652.519790000000000000
          Top = 130.141734720000000000
          Width = 26.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 7.559057560000000000
          Top = 142.559060000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."ENDERECO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 441.622140000000000000
          Top = 142.559060000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'BAIRRO'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."BAIRRO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 652.519790000000000000
          Top = 142.559060000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CEP'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."CEP"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 7.559057560000000000
          Top = 157.354333150000000000
          Width = 65.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MUNICIPIO:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 7.559057560000000000
          Top = 169.559060000000000000
          Width = 148.370130000000000000
          Height = 11.338582680000000000
          DataField = 'NOMECIDADE'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."NOMECIDADE"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 181.307050000000000000
          Top = 169.559060000000000000
          Width = 14.000000000000000000
          Height = 11.338582680000000000
          DataField = 'UF'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."UF"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 181.307050000000000000
          Top = 157.354333150000000000
          Width = 20.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 219.968503937008000000
          Top = 157.354333150000000000
          Width = 33.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 395.511750000000000000
          Top = 169.448821340000000000
          Width = 128.149660000000000000
          Height = 11.338582680000000000
          DataField = 'CONTATO'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."CONTATO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 395.511750000000000000
          Top = 157.354333150000000000
          Width = 54.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONTATO:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 536.385900000000000000
          Top = 157.354333150000000000
          Width = 102.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMAIL DO CLIENTE:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 536.385900000000000000
          Top = 169.448821340000000000
          Width = 171.622140000000000000
          Height = 11.338582680000000000
          DataField = 'EMAIL'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."EMAIL"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 496.748300000000000000
          Top = 73.559060000000000000
          Width = 93.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 496.748300000000000000
          Top = 87.811026060000000000
          Width = 23.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."DATA"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 606.748300000000000000
          Top = 87.811026060000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATARETORNO'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."DATARETORNO"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 606.748300000000000000
          Top = 73.559060000000000000
          Width = 106.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA DE RETORNO:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 7.559057560000000000
          Top = 73.448821340000000000
          Width = 62.677180000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REMESSA:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 7.559057560000000000
          Top = 87.811026060000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CODIGO'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."CODIGO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 102.149660000000000000
          Width = 718.110236220472000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 131.165430000000000000
          Width = 718.110236220472000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Top = 155.842610000000000000
          Width = 718.110236220472000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Top = 184.078850000000000000
          Width = 718.110236220000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 73.472480000000000000
          Top = 72.692950000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 600.945270000000000000
          Top = 72.692950000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 457.323130000000000000
          Top = 102.929190000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 585.827150000000000000
          Top = 102.929190000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 436.968770000000000000
          Top = 131.385900000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 649.299630000000000000
          Top = 131.385900000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 392.071120000000000000
          Top = 155.716535433071000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 215.433210000000000000
          Top = 155.716535433071000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 532.913730000000000000
          Top = 155.716535433071000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 173.858380000000000000
          Top = 155.716535433071000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 491.338900000000000000
          Top = 72.692950000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape6: TfrxShapeView
          Top = 3.779530000000000000
          Width = 718.000000000000000000
          Height = 66.519675280000000000
        end
        object Memo1: TfrxMemoView
          Left = 5.456710000000000000
          Top = 13.118120000000000000
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
            'ORDEM DE SERVI'#199'O')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 5.991818430000000000
          Top = 37.685049130000000000
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
        object Memo4: TfrxMemoView
          Left = 5.991818430000000000
          Top = 52.425206610000000000
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
        object Memo7: TfrxMemoView
          Left = 71.251626770000000000
          Top = 52.425206610000000000
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
        object Memo54: TfrxMemoView
          Left = 70.354391730000000000
          Top = 37.685049130000000000
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
        object Memo56: TfrxMemoView
          Left = 219.968503940000000000
          Top = 169.700789840000000000
          Width = 91.252010000000000000
          Height = 11.338582680000000000
          DataField = 'FONE'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."FONE"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 375.047310000000000000
          Top = 130.504020000000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 375.047310000000000000
          Top = 141.976460950000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NUMERO'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."NUMERO"]')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 370.393940000000000000
          Top = 130.881972760000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object BarCode1: TfrxBarCodeView
          Left = 296.889920000000000000
          Top = 79.370130000000000000
          Width = 129.000000000000000000
          Height = 18.897650000000000000
          BarType = bcCode39
          DataField = 'CODIGO'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Expression = '<frx_DistribuirViewer."CODIGO">'
          Rotation = 0
          ShowText = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo34: TfrxMemoView
          Left = 80.267780000000000000
          Top = 72.811070000000000000
          Width = 119.370130000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 80.267780000000000000
          Top = 87.173274720000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ORDEMPRODUCAO'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."ORDEMPRODUCAO"]')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 205.181202440000000000
          Top = 73.055198660000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 192.755905511811000000
          Width = 122.031540000000000000
          Height = 15.118112680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FASE DE PRODU'#199#195'O:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 139.842610000000000000
          Top = 192.755905510000000000
          Width = 480.968770000000000000
          Height = 15.118112680000000000
          DataField = 'FASE_NOME'
          DataSet = frx_DistribuirTerceirizados
          DataSetName = 'frx_DistribuirTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frx_DistribuirTerceirizados."FASE_NOME"]')
          ParentFont = False
        end
      end
    end
  end
  object db_OPLocalizacao: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PCP_ORDEMPRODUCAO_LOCALIZACAO'
      'WHERE'
      '   EMPRESA=:EMPRESA'
      'AND   '
      '   ORDEMPRODUCAO=:ORDEMPRODUCAO')
    Left = 216
    Top = 360
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
