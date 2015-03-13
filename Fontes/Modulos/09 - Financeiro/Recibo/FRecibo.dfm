object FrmRecibo: TFrmRecibo
  Left = 287
  Top = 131
  Caption = 'Recibo'
  ClientHeight = 430
  ClientWidth = 582
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 76
    Width = 582
    Height = 296
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 5
      Top = 97
      Width = 100
      Height = 13
      Caption = 'Recebi(emos) de:'
      FocusControl = EditNOME
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 14
      Top = 41
      Width = 3
      Height = 14
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 5
      Top = 221
      Width = 72
      Height = 13
      Caption = 'Referente '#224':'
      FocusControl = EditReferencia
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditNOME: TDBEdit
      Left = 5
      Top = 112
      Width = 556
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = ds_recibo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 15
      Width = 578
      Height = 69
      Align = alTop
      TabOrder = 0
      object Label3: TLabel
        Left = 439
        Top = 7
        Width = 43
        Height = 20
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 14
        Top = 7
        Width = 62
        Height = 20
        Caption = 'Recibo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 94
        Top = 7
        Width = 45
        Height = 20
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditValor: TDBEdit
        Left = 439
        Top = 33
        Width = 123
        Height = 28
        CharCase = ecUpperCase
        DataField = 'VALOR'
        DataSource = ds_recibo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 14
        Top = 33
        Width = 69
        Height = 28
        CharCase = ecUpperCase
        Color = 14811135
        DataField = 'CODIGO'
        DataSource = ds_recibo
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Editdata: TDBEdit
        Left = 94
        Top = 33
        Width = 115
        Height = 28
        CharCase = ecUpperCase
        DataField = 'DATA'
        DataSource = ds_recibo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object EditReferencia: TDBEdit
      Left = 5
      Top = 236
      Width = 556
      Height = 21
      CharCase = ecUpperCase
      DataField = 'HISTORICO'
      DataSource = ds_recibo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object GroupBox3: TGroupBox
      Left = 5
      Top = 144
      Width = 556
      Height = 73
      Caption = 'Valor por Extenso:'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 552
        Height = 56
        Align = alClient
        Color = 14811135
        DataField = 'EXTENSO'
        DataSource = ds_recibo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 0
    Top = 36
    Width = 582
    Height = 40
    Align = alTop
    Caption = 'Tipo:'
    Columns = 2
    DataField = 'TIPO'
    DataSource = ds_recibo
    Items.Strings = (
      'Credito (entrada)'
      'D'#233'bito (sa'#237'da)')
    TabOrder = 0
    Values.Strings = (
      'C'
      'D')
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 582
    Height = 36
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 582
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 582
      ExplicitWidth = 582
      inherited LblBarraTitulo: TLabel
        Width = 148
        Caption = 'Emiss'#227'o de Recibos'
        ExplicitWidth = 148
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 372
    Width = 582
    Height = 58
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TabStop = True
    ExplicitTop = 372
    ExplicitWidth = 582
    inherited W7Panel1: TPanel
      Width = 582
      ExplicitWidth = 582
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
      end
      inherited SpbImprimir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbImprimirClick
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
  object dbEditPesquisar: TIDBEditDialog
    Left = 428
    Top = 8
    Width = 65
    Height = 21
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    TabOrder = 4
    Text = ''
    Visible = False
    LabelCaption = 'C'#243'digo da M'#225'quina'
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
    SQLdbFazBusca = True
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = ' *** '
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_MAQUINAS'
      'WHERE'
      'CODIGO=:CODIGO')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM FIN_RECIBO'
      'WHERE'
      '%WHERE%'
      ''
      '')
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
        FieldName = 'DATA'
        WhereSyntax = 'DATA'
        DisplayLabel = 'DATA:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'NOME:'
        DisplayWidth = 40
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'HISTORICO'
        WhereSyntax = 'HISTORICO'
        DisplayLabel = 'HISTORICO'
        DisplayWidth = 25
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scNotContains
        SearchCase = scUpper
      end
      item
        FieldName = 'VALOR'
        WhereSyntax = 'VALOR'
        DisplayLabel = 'VALOR'
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
  object db_recibo: TFDQuery
    OnNewRecord = db_reciboNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_RECIBO')
    Left = 240
    Top = 224
    object db_reciboCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_reciboDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_reciboTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_reciboNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_reciboEXTENSO: TStringField
      FieldName = 'EXTENSO'
      Size = 200
    end
    object db_reciboVALOR: TBCDField
      FieldName = 'VALOR'
      OnChange = db_reciboVALORChange
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_reciboHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
  end
  object ds_recibo: TDataSource
    DataSet = db_recibo
    Left = 303
    Top = 223
  end
  object ACBrExtenso1: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 152
    Top = 212
  end
end
