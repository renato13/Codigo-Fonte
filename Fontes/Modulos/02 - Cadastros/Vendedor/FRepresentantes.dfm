object FrmRepresentantes: TFrmRepresentantes
  Left = 0
  Top = 1
  HelpContext = 9
  BorderStyle = bsDialog
  Caption = 'Representantes'
  ClientHeight = 573
  ClientWidth = 995
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 449
    Width = 995
    Height = 66
    Align = alClient
    Caption = 'Observa'#231#245'es'
    TabOrder = 1
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 991
      Height = 49
      Align = alClient
      DataField = 'OBSERVACAO'
      DataSource = DS_Vendedor
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 515
    Width = 995
    Height = 58
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 515
    ExplicitWidth = 995
    inherited W7Panel1: TPanel
      Width = 995
      ExplicitWidth = 995
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
      end
      inherited SpbImprimir: TSpeedButton
        Visible = False
      end
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
      end
      inherited SpbExcluir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbExcluirClick
      end
      inherited SpbCancelar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbCancelarClick
      end
      inherited SpbSalvar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSalvarClick
      end
      inherited SpbEditar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbEditarClick
      end
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 995
    Height = 36
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 995
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 995
      Height = 36
      ExplicitWidth = 995
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 117
        Caption = 'Representantes'
        ExplicitWidth = 117
      end
    end
  end
  object dbEditPesquisar: TIDBEditDialog
    Left = 624
    Top = 9
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 4
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
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39','#39'EMPRESA'#39','#39'FUNCIONARIO'#39')'
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
  object GroupBox4: TGroupBox
    Left = 0
    Top = 36
    Width = 995
    Height = 413
    Align = alTop
    TabOrder = 0
    object Label6: TLabel
      Left = 542
      Top = 323
      Width = 62
      Height = 13
      Caption = 'Comiss'#227'o (%)'
      FocusControl = DBEdit1
    end
    object Label4: TLabel
      Left = 619
      Top = 323
      Width = 116
      Height = 13
      Caption = 'Sal'#225'rio (campo opcional)'
      FocusControl = DBEdit4
    end
    object Label1: TLabel
      Left = 91
      Top = 14
      Width = 82
      Height = 15
      Caption = 'Data Cadastro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label68: TLabel
      Left = 5
      Top = 280
      Width = 88
      Height = 15
      Caption = 'E-mail (contato)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label69: TLabel
      Left = 384
      Top = 280
      Width = 90
      Height = 15
      Caption = 'Site (home page)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 56
      Width = 70
      Height = 15
      Caption = 'Raz'#227'o Social'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 95
      Width = 82
      Height = 15
      Caption = 'Nome Fantasia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 191
      Top = 14
      Width = 25
      Height = 15
      Caption = 'CNPJ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label70: TLabel
      Left = 342
      Top = 14
      Width = 124
      Height = 15
      Caption = 'Incri'#231#227'o Estadual (I.E.)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 480
      Top = 239
      Width = 43
      Height = 15
      Caption = 'Contato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label33: TLabel
      Left = 5
      Top = 239
      Width = 110
      Height = 15
      Caption = 'Fone (DDD+N'#250'mero)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label38: TLabel
      Left = 124
      Top = 239
      Width = 111
      Height = 15
      Caption = 'VOIP (DDD+N'#250'mero)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 244
      Top = 239
      Width = 103
      Height = 15
      Caption = 'Fax (DDD+N'#250'mero)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 363
      Top = 239
      Width = 104
      Height = 15
      Caption = 'Cel. (DDD+N'#250'mero)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 3
      Top = 14
      Width = 41
      Height = 15
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 542
      Top = 339
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COMISSAO'
      DataSource = DS_Vendedor
      TabOrder = 25
    end
    object DBEdit4: TDBEdit
      Left = 619
      Top = 339
      Width = 124
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SALARIO'
      DataSource = DS_Vendedor
      TabOrder = 26
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 606
      Top = 62
      Width = 137
      Height = 71
      Hint = 'informe se o(a) vendedor(a) deve receber comiss'#227'o nas vendas'
      Caption = 'Classifica'#231#227'o'
      DataField = 'TIPO'
      DataSource = DS_Vendedor
      Items.Strings = (
        'VENDEDOR'
        'REPRESENTANTE'
        'FUNCION'#193'RIO')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Values.Strings = (
        'VENDEDOR'
        'REPRESENTANTE'
        'EMPRESA')
    end
    object EditData: TDBEdit
      Left = 90
      Top = 32
      Width = 86
      Height = 23
      CharCase = ecUpperCase
      DataField = 'DATA'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit47: TDBEdit
      Left = 44
      Top = 254
      Width = 73
      Height = 23
      DataField = 'FONE'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object DBEdit50: TDBEdit
      Left = 5
      Top = 295
      Width = 354
      Height = 23
      TabStop = False
      CharCase = ecLowerCase
      DataField = 'EMAIL'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object DBEdit51: TDBEdit
      Left = 384
      Top = 295
      Width = 359
      Height = 23
      CharCase = ecLowerCase
      DataField = 'SITE'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
    object EdRazaoSocial: TDBEdit
      Left = 5
      Top = 72
      Width = 593
      Height = 23
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object EdFantasia: TDBEdit
      Left = 5
      Top = 112
      Width = 593
      Height = 23
      CharCase = ecUpperCase
      DataField = 'NOME_FANTASIA'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object EdRGInscrEst: TDBEdit
      Left = 342
      Top = 32
      Width = 140
      Height = 23
      CharCase = ecUpperCase
      DataField = 'RG_IE'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object EditCNPJCPF2: TDBEdit
      Left = 187
      Top = 32
      Width = 153
      Height = 23
      CharCase = ecUpperCase
      DataField = 'CPF_CNPJ'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit59: TDBEdit
      Left = 480
      Top = 254
      Width = 263
      Height = 23
      DataField = 'CONTATO'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object EditcodRegiao2: TIDBEditDialog
      Left = 9
      Top = 338
      Width = 56
      Height = 23
      HelpKeyWord = ''
      Color = clWindow
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      Text = ''
      Visible = True
      LabelCaption = 'Regi'#227'o'
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -12
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Version = '5.0.0.0'
      ButtonStyle = bsButton
      ButtonWidth = 16
      ButtonHint = 'Procurar...'
      Etched = False
      ButtonCaption = '...'
      DataField = 'REGIAO'
      DataSource = DS_Vendedor
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditRegiao2
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = '***'
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_REGIOES'
        'WHERE'
        'CODIGO=:CODIGO')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM CAD_REGIOES'
        'WHERE'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT COUNT(*) FROM CAD_REGIOES'
        'WHERE'
        '%WHERE%')
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
    object EditRegiao2: TEdit
      Left = 67
      Top = 338
      Width = 173
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
      Text = '***'
    end
    object DBEdit24: TDBEdit
      Left = 5
      Top = 254
      Width = 38
      Height = 23
      DataField = 'DDD_FONE'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit25: TDBEdit
      Left = 163
      Top = 254
      Width = 73
      Height = 23
      DataField = 'VOIP'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object DBEdit45: TDBEdit
      Left = 124
      Top = 254
      Width = 38
      Height = 23
      DataField = 'DDD_VOIP'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object DBEdit48: TDBEdit
      Left = 283
      Top = 254
      Width = 73
      Height = 23
      DataField = 'FAX'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object DBEdit54: TDBEdit
      Left = 244
      Top = 254
      Width = 38
      Height = 23
      DataField = 'DDD_FAX'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object DBEdit57: TDBEdit
      Left = 402
      Top = 254
      Width = 73
      Height = 23
      DataField = 'CELULAR'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object DBEdit60: TDBEdit
      Left = 363
      Top = 254
      Width = 38
      Height = 23
      DataField = 'DDD_CELULAR'
      DataSource = DS_Vendedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object GroupBox3: TGroupBox
      Left = 5
      Top = 139
      Width = 738
      Height = 101
      Hint = 'Editar - use o bot'#227'o direito do mouse'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      object GRPEndereco2: TGroupBox
        Left = 98
        Top = 12
        Width = 333
        Height = 43
        TabOrder = 1
        DesignSize = (
          333
          43)
        object Label8: TLabel
          Left = 2
          Top = 2
          Width = 50
          Height = 15
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object EditEndereco2: TDBEdit
          Left = 2
          Top = 17
          Width = 325
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = DS_Vendedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object GRPBairroCidadeUF2: TGroupBox
        Left = 3
        Top = 54
        Width = 726
        Height = 43
        TabOrder = 3
        object Label28: TLabel
          Left = 678
          Top = 2
          Width = 14
          Height = 15
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 265
          Top = 2
          Width = 38
          Height = 15
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 3
          Top = 2
          Width = 35
          Height = 15
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 176
          Top = 2
          Width = 79
          Height = 15
          Caption = 'C'#243'digo Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object EditBairro2: TDBEdit
          Left = 3
          Top = 17
          Width = 166
          Height = 23
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = DS_Vendedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditCidade2: TDBEdit
          Left = 265
          Top = 17
          Width = 406
          Height = 23
          Hint = 'Tecle F8 para pesquisar'
          CharCase = ecUpperCase
          DataField = 'NOMECIDADE'
          DataSource = DS_Vendedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object EditUF2: TDBEdit
          Left = 678
          Top = 17
          Width = 36
          Height = 23
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = DS_Vendedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 3
        end
        object EditCodCidade2: TDBEdit
          Left = 176
          Top = 17
          Width = 82
          Height = 23
          Hint = 'Codigo da Cidade de acordo com o IBGE'
          CharCase = ecUpperCase
          DataField = 'CODIGOCIDADE'
          DataSource = DS_Vendedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = EditCodCidade2KeyDown
        end
      end
      object GroupBox8: TGroupBox
        Left = 435
        Top = 12
        Width = 294
        Height = 43
        TabOrder = 2
        object Label29: TLabel
          Left = 3
          Top = 2
          Width = 46
          Height = 15
          Caption = 'N'#250'mero:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label85: TLabel
          Left = 234
          Top = 2
          Width = 51
          Height = 15
          Caption = 'Cx Postal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 53
          Top = 2
          Width = 78
          Height = 15
          Caption = 'Complemento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object EditNumero: TDBEdit
          Left = 3
          Top = 17
          Width = 43
          Height = 23
          Hint = 'N'#250'mero do Endere'#231'o'
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = DS_Vendedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object EditCxPostal: TDBEdit
          Left = 234
          Top = 17
          Width = 48
          Height = 23
          CharCase = ecUpperCase
          DataField = 'CXP'
          DataSource = DS_Vendedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
        end
        object DBEdit8: TDBEdit
          Left = 53
          Top = 17
          Width = 174
          Height = 23
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = DS_Vendedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
        end
      end
      object EditCEP: TIDBEditDialog
        Left = 6
        Top = 25
        Width = 86
        Height = 21
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        TabOrder = 0
        Text = '0'
        Visible = True
        LabelCaption = 'CEP'
        LabelAlwaysEnabled = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -12
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Version = '5.0.0.0'
        ButtonStyle = bsButton
        ButtonWidth = 16
        ButtonHint = 'Procurar...'
        Etched = False
        ButtonCaption = '...'
        DataField = 'CEP'
        DataSource = DS_Vendedor
        SQLdbRetornoVazio = ' *** '
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_IBGEMUNICIPIO'
          'WHERE'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM CAD_IBGEMUNICIPIO'
          'WHERE'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'CEP'
            WhereSyntax = 'CEP'
            DisplayLabel = 'CEP:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'CIDADE'
            WhereSyntax = 'CIDADE'
            DisplayLabel = 'CIDADE:'
            DisplayWidth = 30
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'UF'
            WhereSyntax = 'UF'
            DisplayLabel = 'UF:'
            DisplayWidth = 5
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
            DisplayLabel = 'TIPO:'
            DisplayWidth = 15
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'ENDERECO'
            WhereSyntax = 'ENDERECO'
            DisplayLabel = 'ENDERE'#199'O:'
            DisplayWidth = 25
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'BAIRRO'
            WhereSyntax = 'BAIRRO'
            DisplayLabel = 'BAIRRO:'
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
    end
    object EditTransportadora: TIDBEditDialog
      Left = 248
      Top = 338
      Width = 70
      Height = 23
      HelpKeyWord = ''
      Color = clWindow
      Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
      Text = ''
      Visible = True
      EditType = etAlphaNumeric
      EmptyText = 'Tecle F8'
      FocusColor = clBtnFace
      LabelCaption = 'Transportadora:'
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -12
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Version = '5.0.0.0'
      ButtonStyle = bsButton
      ButtonWidth = 16
      ButtonHint = 'Transportadora:'
      Etched = False
      ButtonCaption = '...'
      DataField = 'TRANSPORTADORA'
      DataSource = DS_Vendedor
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomeTrasportadora
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
        'SELECT * FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'TRANSPORTADORA'#39
        'AND'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT count(*) FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'TRANSPORTADORA'#39
        'AND'
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
    object EditNomeTrasportadora: TEdit
      Left = 319
      Top = 338
      Width = 192
      Height = 23
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 24
      Text = '***'
    end
    object EditAtividade: TIDBEditDialog
      Left = 491
      Top = 32
      Width = 56
      Height = 21
      HelpKeyWord = ''
      Color = clWindow
      Enabled = True
      TabOrder = 4
      Text = ''
      Visible = True
      LabelCaption = 'Ramo de Atividade:'
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -12
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Version = '5.0.0.0'
      ButtonStyle = bsButton
      ButtonWidth = 16
      ButtonHint = 'Procurar...'
      Etched = False
      ButtonCaption = '...'
      DataField = 'ATIVIDADE'
      DataSource = DS_Vendedor
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomeAtividade
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = '***'
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_ATIVIDADES'
        'WHERE'
        'CODIGO=:CODIGO')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM CAD_ATIVIDADES'
        'WHERE'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT COUNT(*) FROM CAD_ATIVIDADES'
        'WHERE'
        '%WHERE%')
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
    object EditNomeAtividade: TEdit
      Left = 551
      Top = 32
      Width = 192
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit9: TDBEdit
      Left = 3
      Top = 32
      Width = 83
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'CODIGO'
      DataSource = DS_Vendedor
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EditConta_Credito: TIDBEditDialog
      Left = 9
      Top = 386
      Width = 92
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      TabOrder = 27
      Text = '0'
      Visible = True
      EditType = etNumeric
      EmptyText = 'F8 - Pesquisar'
      LabelCaption = 'Conta Corrente (C/C banc'#225'ria)'
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
      DataField = 'CONTACORRENTE'
      DataSource = DS_Vendedor
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
          DisplayLabel = 'CONTA CORRENTE:'
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
      Left = 108
      Top = 386
      Width = 635
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
      TabOrder = 28
      Text = '***'
    end
  end
  object DS_Vendedor: TDataSource
    DataSet = db_Vendedor
    Left = 848
    Top = 16
  end
  object db_Vendedor: TFDQuery
    BeforePost = db_VendedorBeforePost
    AfterPost = db_VendedorAfterPost
    OnNewRecord = db_VendedorNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39','#39'EMPRESA'#39','#39'FUNCIONARIO'#39')')
    Left = 760
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_VendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_VendedorFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object db_VendedorTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object db_VendedorCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 30
    end
    object db_VendedorDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_VendedorDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
    end
    object db_VendedorDATA_ULTIMA_VENDA: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_VENDA'
    end
    object db_VendedorCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 30
    end
    object db_VendedorNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object db_VendedorNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 200
    end
    object db_VendedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 200
    end
    object db_VendedorRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 30
    end
    object db_VendedorORG_EMISSOR: TStringField
      FieldName = 'ORG_EMISSOR'
      Size = 30
    end
    object db_VendedorSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object db_VendedorFILIACAO_NOMEPAI: TStringField
      FieldName = 'FILIACAO_NOMEPAI'
      Size = 200
    end
    object db_VendedorFILIACAO_NOMEMAE: TStringField
      FieldName = 'FILIACAO_NOMEMAE'
      Size = 200
    end
    object db_VendedorESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 200
    end
    object db_VendedorCONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      Size = 30
    end
    object db_VendedorCONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      Size = 200
    end
    object db_VendedorCXP: TStringField
      FieldName = 'CXP'
      Size = 30
    end
    object db_VendedorCEP: TStringField
      FieldName = 'CEP'
      Size = 30
    end
    object db_VendedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object db_VendedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object db_VendedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object db_VendedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 200
    end
    object db_VendedorCODIGOCIDADE: TIntegerField
      FieldName = 'CODIGOCIDADE'
    end
    object db_VendedorNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 200
    end
    object db_VendedorCODIGOUF: TIntegerField
      FieldName = 'CODIGOUF'
    end
    object db_VendedorUF: TStringField
      FieldName = 'UF'
      Size = 30
    end
    object db_VendedorDDD_FONE: TIntegerField
      FieldName = 'DDD_FONE'
    end
    object db_VendedorFONE: TStringField
      FieldName = 'FONE'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_VendedorDDD_FAX: TIntegerField
      FieldName = 'DDD_FAX'
    end
    object db_VendedorFAX: TStringField
      FieldName = 'FAX'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_VendedorDDD_CELULAR: TIntegerField
      FieldName = 'DDD_CELULAR'
    end
    object db_VendedorCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_VendedorDDD_VOIP: TIntegerField
      FieldName = 'DDD_VOIP'
    end
    object db_VendedorVOIP: TStringField
      FieldName = 'VOIP'
      Size = 30
    end
    object db_VendedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object db_VendedorSITE: TStringField
      FieldName = 'SITE'
      Size = 200
    end
    object db_VendedorREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 200
    end
    object db_VendedorVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_VendedorREGIAO: TIntegerField
      FieldName = 'REGIAO'
    end
    object db_VendedorTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_VendedorESTRANGEIRO: TStringField
      FieldName = 'ESTRANGEIRO'
      Size = 10
    end
    object db_VendedorNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 200
    end
    object db_VendedorCREDITO_LIMITE: TBCDField
      FieldName = 'CREDITO_LIMITE'
    end
    object db_VendedorCREDITO_UTILIZADO: TBCDField
      FieldName = 'CREDITO_UTILIZADO'
    end
    object db_VendedorCREDITO_DISPONIVEL: TBCDField
      FieldName = 'CREDITO_DISPONIVEL'
    end
    object db_VendedorBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Size = 10
    end
    object db_VendedorPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_VendedorCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_VendedorCENTROCUSTO: TIntegerField
      FieldName = 'CENTROCUSTO'
    end
    object db_VendedorENDCOB_ENDERECO: TStringField
      FieldName = 'ENDCOB_ENDERECO'
      Size = 200
    end
    object db_VendedorENDCOB_BAIRRO: TStringField
      FieldName = 'ENDCOB_BAIRRO'
      Size = 200
    end
    object db_VendedorENDCOB_DDD: TIntegerField
      FieldName = 'ENDCOB_DDD'
    end
    object db_VendedorENDCOB_FONE: TStringField
      FieldName = 'ENDCOB_FONE'
      Size = 30
    end
    object db_VendedorENDCOB_CEP: TStringField
      FieldName = 'ENDCOB_CEP'
      Size = 30
    end
    object db_VendedorENDCOB_CXP: TStringField
      FieldName = 'ENDCOB_CXP'
      Size = 30
    end
    object db_VendedorENDCOB_CODIGOCIDADE: TIntegerField
      FieldName = 'ENDCOB_CODIGOCIDADE'
    end
    object db_VendedorENDCOB_NOMECIDADE: TStringField
      FieldName = 'ENDCOB_NOMECIDADE'
      Size = 200
    end
    object db_VendedorENDCOB_UF: TStringField
      FieldName = 'ENDCOB_UF'
      Size = 30
    end
    object db_VendedorPROTESTO: TStringField
      FieldName = 'PROTESTO'
      Size = 30
    end
    object db_VendedorPROTESTO_DATA: TSQLTimeStampField
      FieldName = 'PROTESTO_DATA'
    end
    object db_VendedorETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 10
    end
    object db_VendedorNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 200
    end
    object db_VendedorATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 10
    end
    object db_VendedorCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
    end
    object db_VendedorATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
    end
    object db_VendedorOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_VendedorOBS_SERASA: TStringField
      FieldName = 'OBS_SERASA'
      Size = 5000
    end
    object db_VendedorOBS_SINTEGRA: TStringField
      FieldName = 'OBS_SINTEGRA'
      Size = 5000
    end
    object db_VendedorCONJUGE_DNASCIMENTO: TStringField
      FieldName = 'CONJUGE_DNASCIMENTO'
      Size = 200
    end
    object db_VendedorCONJUGE_EMPRESA: TStringField
      FieldName = 'CONJUGE_EMPRESA'
      Size = 200
    end
    object db_VendedorCONJUGE_FONE: TStringField
      FieldName = 'CONJUGE_FONE'
      Size = 30
    end
    object db_VendedorCONJUGE_ENDERECO: TStringField
      FieldName = 'CONJUGE_ENDERECO'
      Size = 200
    end
    object db_VendedorCONJUGE_CIDADE: TStringField
      FieldName = 'CONJUGE_CIDADE'
      Size = 200
    end
    object db_VendedorCONJUGE_UF: TStringField
      FieldName = 'CONJUGE_UF'
      Size = 200
    end
    object db_VendedorCONJUGE_CARGO: TStringField
      FieldName = 'CONJUGE_CARGO'
      Size = 200
    end
    object db_VendedorCONJUGE_TEMPO: TStringField
      FieldName = 'CONJUGE_TEMPO'
      Size = 200
    end
    object db_VendedorCONJUGE_SALARIO: TBCDField
      FieldName = 'CONJUGE_SALARIO'
    end
    object db_VendedorEMPREGO_EMPRESA: TStringField
      FieldName = 'EMPREGO_EMPRESA'
      Size = 200
    end
    object db_VendedorEMPREGO_FONE: TStringField
      FieldName = 'EMPREGO_FONE'
      Size = 30
    end
    object db_VendedorEMPREGO_ENDERECO: TStringField
      FieldName = 'EMPREGO_ENDERECO'
      Size = 200
    end
    object db_VendedorEMPREGO_CIDADE: TStringField
      FieldName = 'EMPREGO_CIDADE'
      Size = 200
    end
    object db_VendedorEMPREGO_UF: TStringField
      FieldName = 'EMPREGO_UF'
      Size = 200
    end
    object db_VendedorEMPREGO_CARGO: TStringField
      FieldName = 'EMPREGO_CARGO'
      Size = 200
    end
    object db_VendedorEMPREGO_TEMPO: TStringField
      FieldName = 'EMPREGO_TEMPO'
      Size = 200
    end
    object db_VendedorEMPREGO_SALARIO: TBCDField
      FieldName = 'EMPREGO_SALARIO'
    end
    object db_VendedorCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
    end
    object db_VendedorCOMISSIONAR: TStringField
      FieldName = 'COMISSIONAR'
      Size = 10
    end
    object db_VendedorSALARIO: TBCDField
      FieldName = 'SALARIO'
    end
    object db_VendedorTRANSPORTADORA_PLACA: TStringField
      FieldName = 'TRANSPORTADORA_PLACA'
      Size = 30
    end
    object db_VendedorTRANSPORTADORA_CIDADE: TStringField
      FieldName = 'TRANSPORTADORA_CIDADE'
      Size = 200
    end
    object db_VendedorTRANSPORTADORA_UF: TStringField
      FieldName = 'TRANSPORTADORA_UF'
      Size = 200
    end
    object db_VendedorVALOR_SERVICOS: TBCDField
      FieldName = 'VALOR_SERVICOS'
    end
    object db_VendedorPAGTOTERCEIRIZADO: TStringField
      FieldName = 'PAGTOTERCEIRIZADO'
      Size = 10
    end
    object db_VendedorULTIMAVENDA_DATA: TSQLTimeStampField
      FieldName = 'ULTIMAVENDA_DATA'
    end
    object db_VendedorULTIMAVENDA_ORIGEM: TStringField
      FieldName = 'ULTIMAVENDA_ORIGEM'
      Size = 30
    end
    object db_VendedorATIVODATA: TSQLTimeStampField
      FieldName = 'ATIVODATA'
    end
    object db_VendedorCONTACORRENTE: TIntegerField
      FieldName = 'CONTACORRENTE'
    end
  end
end
