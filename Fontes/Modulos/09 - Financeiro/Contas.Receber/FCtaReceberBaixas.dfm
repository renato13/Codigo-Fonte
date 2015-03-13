object FrmCtaReceberBaixas: TFrmCtaReceberBaixas
  Left = 233
  Top = 116
  Caption = 'Contas a Receber - Recebimento de Titulos'
  ClientHeight = 539
  ClientWidth = 942
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 490
    Width = 942
    Height = 49
    Align = alBottom
    TabOrder = 1
    object Label12: TLabel
      Left = 1
      Top = 35
      Width = 453
      Height = 13
      Align = alBottom
      Caption = 
        '         F4                   F5                     F6         ' +
        '           F7                        ESC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object BtnSair: TBitBtn
      Left = 388
      Top = 2
      Width = 97
      Height = 30
      Cursor = crHandPoint
      Hint = 'Sair do contas a receber'
      Caption = 'Sai&r'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TabStop = False
      OnClick = BtnSairClick
    end
    object BtnSalvar: TBitBtn
      Left = 3
      Top = 2
      Width = 97
      Height = 30
      Cursor = crHandPoint
      Hint = 'Salvar registro'
      Caption = '&Baixar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TBitBtn
      Left = 99
      Top = 2
      Width = 97
      Height = 30
      Cursor = crHandPoint
      Hint = 'Cancelar Edi'#231#227'o'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = BtnCancelarClick
    end
    object BtnEstornar: TBitBtn
      Left = 195
      Top = 2
      Width = 97
      Height = 30
      Cursor = crHandPoint
      Hint = 'Reabir documento'
      Caption = 'Estornar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = BtnEstornarClick
    end
    object BtnLocalizar: TBitBtn
      Left = 291
      Top = 2
      Width = 97
      Height = 30
      Cursor = crHandPoint
      Hint = 'Localizar Registro'
      Caption = '&Localizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = BtnLocalizarClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 33
    Width = 942
    Height = 457
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 51
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label2: TLabel
      Left = 145
      Top = 51
      Width = 59
      Height = 13
      Caption = 'Vencimento:'
    end
    object Label4: TLabel
      Left = 13
      Top = 94
      Width = 58
      Height = 13
      Caption = 'Documento:'
    end
    object Label11: TLabel
      Left = 145
      Top = 94
      Width = 73
      Height = 13
      Caption = 'Nosso N'#250'mero:'
    end
    object Label14: TLabel
      Left = 13
      Top = 218
      Width = 81
      Height = 13
      Caption = 'Outras Despesas'
    end
    object Label13: TLabel
      Left = 145
      Top = 177
      Width = 89
      Height = 13
      Caption = 'Despesas Cart'#243'rio:'
    end
    object Label8: TLabel
      Left = 13
      Top = 177
      Width = 56
      Height = 13
      Caption = 'Valor Multa:'
    end
    object Label10: TLabel
      Left = 13
      Top = 260
      Width = 119
      Height = 19
      Caption = 'Valor Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 145
      Top = 218
      Width = 69
      Height = 13
      Caption = 'Despesa Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 265
      Top = 260
      Width = 102
      Height = 19
      Caption = 'Valor Recebido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 145
      Top = 135
      Width = 36
      Height = 13
      Caption = 'Juros %'
    end
    object Label5: TLabel
      Left = 13
      Top = 135
      Width = 57
      Height = 13
      Caption = 'Desconto %'
    end
    object Label3: TLabel
      Left = 139
      Top = 260
      Width = 114
      Height = 19
      Caption = 'Data Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 13
      Top = 67
      Width = 120
      Height = 21
      DataField = 'DATA'
      DataSource = DS_CtaReceber
      Enabled = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 145
      Top = 67
      Width = 120
      Height = 21
      DataField = 'VENCIMENTO'
      DataSource = DS_CtaReceber
      Enabled = False
      TabOrder = 3
    end
    object EditDocumento: TDBEdit
      Left = 13
      Top = 110
      Width = 120
      Height = 21
      DataField = 'DOCUMENTO'
      DataSource = DS_CtaReceber
      Enabled = False
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 145
      Top = 110
      Width = 120
      Height = 21
      DataField = 'NOSSONUMERO'
      DataSource = DS_CtaReceber
      Enabled = False
      TabOrder = 5
    end
    object EditCliente: TIDBEditDialog
      Left = 13
      Top = 28
      Width = 65
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = False
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
      DataSource = DS_CtaReceber
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
        '%WHERE%')
      CountQuery.Strings = (
        '')
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
    object EditNomeCliente: TEdit
      Left = 82
      Top = 28
      Width = 469
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      TabOrder = 1
    end
    object DBEdit10: TDBEdit
      Left = 13
      Top = 281
      Width = 120
      Height = 27
      DataField = 'VALOR'
      DataSource = DS_CtaReceber
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object DBEdit6: TDBEdit
      Left = 145
      Top = 192
      Width = 120
      Height = 21
      DataField = 'DESPESAS_CARTORIO'
      DataSource = DS_CtaReceber
      TabOrder = 9
    end
    object DBEdit4: TDBEdit
      Left = 13
      Top = 192
      Width = 120
      Height = 21
      DataField = 'DESPESAS_MULTA'
      DataSource = DS_CtaReceber
      TabOrder = 8
    end
    object EditDespesas: TDBEdit
      Left = 145
      Top = 233
      Width = 120
      Height = 21
      AutoSize = False
      DataField = 'DESPESAS_TOTAL'
      DataSource = DS_CtaReceber
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object EditValorPago: TDBEdit
      Left = 265
      Top = 281
      Width = 120
      Height = 27
      DataField = 'VALOR_PAGO'
      DataSource = DS_CtaReceber
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object EditAcrescimos: TDBEdit
      Left = 145
      Top = 150
      Width = 120
      Height = 21
      DataField = 'DESPESAS_JUROS'
      DataSource = DS_CtaReceber
      TabOrder = 7
    end
    object EditDescontos: TDBEdit
      Left = 13
      Top = 150
      Width = 120
      Height = 21
      DataField = 'DESCONTO'
      DataSource = DS_CtaReceber
      TabOrder = 6
    end
    object EditDataPagto: TDBEdit
      Left = 139
      Top = 281
      Width = 120
      Height = 27
      DataField = 'DATA_PAGTO'
      DataSource = DS_CtaReceber
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 321
      Width = 938
      Height = 37
      Align = alBottom
      Caption = 'Hist'#243'rico (aparece nos relat'#243'rios):'
      TabOrder = 15
      object EditHistorico: TDBEdit
        Left = 2
        Top = 15
        Width = 934
        Height = 20
        Align = alClient
        CharCase = ecUpperCase
        DataField = 'HISTORICO'
        DataSource = DS_CtaReceber
        TabOrder = 0
        ExplicitHeight = 21
      end
    end
    object GroupBox2: TGroupBox
      Left = 271
      Top = 51
      Width = 280
      Height = 203
      Caption = 'Observa'#231#245'es:'
      TabOrder = 16
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 276
        Height = 186
        Align = alClient
        DataField = 'OBSERVACAO'
        DataSource = DS_CtaReceber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object DBEdit7: TDBEdit
      Left = 13
      Top = 233
      Width = 120
      Height = 21
      Hint = 'Outras despesas (valor do boleto, etc..)'
      DataField = 'DESPESAS_BOLETO'
      DataSource = DS_CtaReceber
      TabOrder = 10
    end
    object GBoxCreditar: TGroupBox
      Left = 2
      Top = 358
      Width = 938
      Height = 97
      Align = alBottom
      Caption = 'Destino da Conta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      object EditConta_Credito: TIDBEditDialog
        Left = 363
        Top = 31
        Width = 105
        Height = 21
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        TabOrder = 2
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
        DataField = 'CONTA_CREDITO'
        DataSource = DS_CtaReceber
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
      object EditContaCorrente: TEdit
        Left = 470
        Top = 31
        Width = 251
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
        TabOrder = 3
      end
      object EditNomeContaCaixa: TEdit
        Left = 118
        Top = 31
        Width = 235
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
        TabOrder = 1
        Text = '***'
      end
      object EditConta_Caixa: TIDBEditDialog
        Left = 11
        Top = 31
        Width = 105
        Height = 21
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
        DataField = 'CONTACAIXA'
        DataSource = DS_CtaReceber
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
      object EditPlano: TIDBEditDialog
        Left = 11
        Top = 68
        Width = 105
        Height = 21
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
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
        DataField = 'PLANO_CONTAS'
        DataSource = DS_CtaReceber
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
          'AND'
          'TIPO='#39'CREDITO'#39
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM VIEW_PLANOCONTAS'
          'WHERE'
          'TIPO='#39'CREDITO'#39
          'AND'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM VIEW_PLANOCONTAS'
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
            DefaultComparison = scBeginsWith
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
      object EditNomePlanoContas: TEdit
        Left = 118
        Top = 68
        Width = 603
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        TabOrder = 5
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 942
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 942
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 942
      Height = 33
      ExplicitWidth = 942
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 378
        Caption = 'Contas a Receber - Baixar Recebimento de Cliente'
        ExplicitWidth = 378
      end
    end
  end
  object dbDlgProcurar: TIDBEditDialog
    Left = 658
    Top = 143
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
      'SELECT *  FROM VIEW_FIN_CTARECEBER '
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'DOCUMENTO'
        WhereSyntax = 'DOCUMENTO'
        DisplayLabel = 'DOCUMENTO:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
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
        SearchCase = scUpper
      end
      item
        FieldName = 'NOSSONUMERO'
        WhereSyntax = 'NOSSONUMERO'
        DisplayLabel = 'NOSSO NUMERO:'
        DisplayWidth = 17
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'DATA'
        WhereSyntax = 'DATA'
        DisplayLabel = 'DATA:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VENCIMENTO'
        WhereSyntax = 'VENCIMENTO'
        DisplayLabel = 'VENCIMENTO:'
        DisplayWidth = 13
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VALOR'
        WhereSyntax = 'VALOR'
        DisplayLabel = 'VALOR:'
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
        FieldName = 'NOME_CLIENTE'
        WhereSyntax = 'NOME_CLIENTE'
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
        FieldName = 'NOME_VENDEDOR'
        WhereSyntax = 'NOME_VENDEDOR'
        DisplayLabel = 'VENDEDOR:'
        DisplayWidth = 25
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'QUITADO'
        WhereSyntax = 'QUITADO'
        DisplayLabel = 'QUITADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
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
  object db_CtaReceber: TFDQuery
    BeforeOpen = db_CtaReceberBeforeOpen
    AfterOpen = db_CtaReceberAfterOpen
    AfterPost = db_CtaReceberAfterPost
    AfterScroll = db_CtaReceberAfterScroll
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CTARECEBER'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 432
    Top = 32
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
    object db_CtaReceberCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_CtaReceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_CtaReceberNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object db_CtaReceberSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_CtaReceberDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_CtaReceberVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_CtaReceberDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
      EditMask = '99/99/9999'
    end
    object db_CtaReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_CtaReceberPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_CtaReceberCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_CtaReceberVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_CtaReceberESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_CtaReceberTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_CtaReceberCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_CtaReceberCONTA_CREDITO: TIntegerField
      FieldName = 'CONTA_CREDITO'
    end
    object db_CtaReceberCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 30
    end
    object db_CtaReceberCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 30
    end
    object db_CtaReceberCHQ_CONTA_CORRENTE: TStringField
      FieldName = 'CHQ_CONTA_CORRENTE'
      Size = 30
    end
    object db_CtaReceberCHQ_NUMEROCHEQUE: TStringField
      FieldName = 'CHQ_NUMEROCHEQUE'
      Size = 30
    end
    object db_CtaReceberCHQ_CODCIDADE: TStringField
      FieldName = 'CHQ_CODCIDADE'
      Size = 200
    end
    object db_CtaReceberCHQ_EMITENTE: TStringField
      FieldName = 'CHQ_EMITENTE'
      Size = 200
    end
    object db_CtaReceberCHQ_NOMECIDADE_UF: TStringField
      FieldName = 'CHQ_NOMECIDADE_UF'
      Size = 200
    end
    object db_CtaReceberCHQ_DESTINO: TStringField
      FieldName = 'CHQ_DESTINO'
      Size = 200
    end
    object db_CtaReceberFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_CtaReceberDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_CtaReceberENTRADA: TBCDField
      FieldName = 'ENTRADA'
    end
    object db_CtaReceberVALOR_SALDO: TBCDField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaReceberVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaReceberVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaReceberDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      OnChange = db_CtaReceberDESCONTOChange
      DisplayFormat = '###,##0.00'
    end
    object db_CtaReceberPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_CtaReceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_CtaReceberOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_CtaReceberGERARRECIBO: TStringField
      FieldName = 'GERARRECIBO'
      Size = 30
    end
    object db_CtaReceberGERARDUPLICATA: TStringField
      FieldName = 'GERARDUPLICATA'
      Size = 10
    end
    object db_CtaReceberGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      Size = 10
    end
    object db_CtaReceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_CtaReceberDESPESAS_BOLETO: TBCDField
      FieldName = 'DESPESAS_BOLETO'
      OnChange = db_CtaReceberDESPESAS_BOLETOChange
      DisplayFormat = '###,##0.00'
    end
    object db_CtaReceberDESPESAS_JUROS: TBCDField
      FieldName = 'DESPESAS_JUROS'
      OnChange = db_CtaReceberDESPESAS_JUROSChange
      DisplayFormat = '###,##0.00'
    end
    object db_CtaReceberDESPESAS_MULTA: TBCDField
      FieldName = 'DESPESAS_MULTA'
      OnChange = db_CtaReceberDESPESAS_MULTAChange
      DisplayFormat = '###,##0.00'
    end
    object db_CtaReceberDESPESAS_CARTORIO: TBCDField
      FieldName = 'DESPESAS_CARTORIO'
      OnChange = db_CtaReceberDESPESAS_CARTORIOChange
      DisplayFormat = '###,##0.00'
    end
    object db_CtaReceberDESPESAS_TOTAL: TBCDField
      FieldName = 'DESPESAS_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object db_CtaReceberATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 10
    end
    object db_CtaReceberQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_CtaReceberMOTIVO_BAIXA: TIntegerField
      FieldName = 'MOTIVO_BAIXA'
    end
    object db_CtaReceberUSER_NOME: TStringField
      FieldName = 'USER_NOME'
      Size = 200
    end
    object db_CtaReceberUSER_DATA: TSQLTimeStampField
      FieldName = 'USER_DATA'
    end
    object db_CtaReceberUSER_HORA: TTimeField
      FieldName = 'USER_HORA'
    end
    object db_CtaReceberCOMPLEMENTAR: TStringField
      FieldName = 'COMPLEMENTAR'
      Size = 10
    end
    object db_CtaReceberDESPESAS_JUROSVALOR: TBCDField
      FieldName = 'DESPESAS_JUROSVALOR'
    end
    object db_CtaReceberDESCONTOVALOR: TBCDField
      FieldName = 'DESCONTOVALOR'
    end
  end
  object DS_CtaReceber: TDataSource
    DataSet = db_CtaReceber
    Left = 496
    Top = 32
  end
  object SPFin_CTAReceber_Baixar: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPFIN_CTARECEBER_BAIXAR'
    Left = 376
    Top = 32
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
        Name = 'NCODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NCLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
end
