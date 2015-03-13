object FrmCidades: TFrmCidades
  Left = 0
  Top = 1
  BorderStyle = bsDialog
  Caption = 'CEP | Cidades | IBGE'
  ClientHeight = 276
  ClientWidth = 653
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 33
    Width = 653
    Height = 183
    Align = alClient
    TabOrder = 0
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
    object Label1: TLabel
      Left = 12
      Top = 22
      Width = 21
      Height = 13
      Caption = 'CEP'
    end
    object Label2: TLabel
      Left = 99
      Top = 22
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object Label3: TLabel
      Left = 186
      Top = 22
      Width = 46
      Height = 13
      Caption = 'Endere'#231'o'
    end
    object Label4: TLabel
      Left = 439
      Top = 22
      Width = 27
      Height = 13
      Caption = 'Bairro'
    end
    object Label6: TLabel
      Left = 12
      Top = 70
      Width = 61
      Height = 13
      Caption = 'C'#243'digo IBGE'
    end
    object Label7: TLabel
      Left = 137
      Top = 70
      Width = 79
      Height = 13
      Caption = 'Nome da Cidade'
    end
    object Label8: TLabel
      Left = 491
      Top = 70
      Width = 84
      Height = 13
      Caption = 'C'#243'digo IBGE (UF)'
    end
    object Label9: TLabel
      Left = 584
      Top = 70
      Width = 14
      Height = 13
      Caption = 'UF'
    end
    object Label10: TLabel
      Left = 12
      Top = 119
      Width = 47
      Height = 13
      Caption = #193'rea KM2'
    end
    object Label11: TLabel
      Left = 137
      Top = 119
      Width = 54
      Height = 13
      Caption = 'Popula'#231#227'o:'
    end
    object EditCEP: TDBEdit
      Left = 12
      Top = 38
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEP'
      DataSource = ds_Cidades
      TabOrder = 0
    end
    object EditTipo: TDBEdit
      Left = 99
      Top = 38
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TIPO'
      DataSource = ds_Cidades
      TabOrder = 1
    end
    object EditEndereco: TDBEdit
      Left = 186
      Top = 38
      Width = 247
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = ds_Cidades
      TabOrder = 2
    end
    object EditBairro: TDBEdit
      Left = 439
      Top = 38
      Width = 202
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = ds_Cidades
      TabOrder = 3
    end
    object EditCodigoIBGE: TDBEdit
      Left = 12
      Top = 86
      Width = 117
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE_CODIGO'
      DataSource = ds_Cidades
      TabOrder = 4
      OnKeyDown = EditCodigoIBGEKeyDown
    end
    object EditMunicipio: TDBEdit
      Left = 137
      Top = 86
      Width = 348
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = ds_Cidades
      TabOrder = 5
    end
    object EditCodigoIBGEUF: TDBEdit
      Left = 491
      Top = 86
      Width = 90
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UF_CODIGO'
      DataSource = ds_Cidades
      TabOrder = 6
    end
    object EditUF: TDBEdit
      Left = 586
      Top = 86
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = ds_Cidades
      TabOrder = 7
    end
    object CEPProcurar: TIDBEditDialog
      Left = 451
      Top = 134
      Width = 79
      Height = 21
      HelpKeyWord = ''
      Color = clWindow
      Enabled = True
      TabOrder = 8
      Text = '0'
      Visible = False
      EditType = etNumeric
      LabelCaption = 'CEP'
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
      DataField = 'CEP'
      DataSource = BaseDados.DS_Clientes
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
    object DBAdvEdit1: TDBEdit
      Left = 12
      Top = 134
      Width = 117
      Height = 21
      CharCase = ecUpperCase
      DataField = 'AREAKM2'
      DataSource = ds_Cidades
      TabOrder = 9
    end
    object DBAdvEdit2: TDBEdit
      Left = 137
      Top = 134
      Width = 117
      Height = 21
      CharCase = ecUpperCase
      DataField = 'POPULACAO'
      DataSource = ds_Cidades
      TabOrder = 10
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 653
    Height = 33
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 653
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 653
      Height = 33
      ExplicitWidth = 653
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 651
        Height = 31
        Caption = 'CEP | Cidades | IBGE'
        ExplicitWidth = 150
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 216
    Width = 653
    Height = 60
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 216
    ExplicitWidth = 653
    ExplicitHeight = 60
    inherited W7Panel1: TPanel
      Width = 653
      Height = 60
      ExplicitWidth = 653
      ExplicitHeight = 60
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
  object ds_Cidades: TDataSource
    AutoEdit = False
    DataSet = db_Cidades
    Left = 320
    Top = 8
  end
  object db_Cidades: TFDQuery
    BeforePost = db_CidadesBeforePost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_IBGEMUNICIPIO'
      'WHERE'
      'CEP=:CEP')
    Left = 408
    Top = 8
    ParamData = <
      item
        Name = 'CEP'
        DataType = ftString
        ParamType = ptInput
      end>
    object db_CidadesCEP: TStringField
      FieldName = 'CEP'
      Required = True
      Size = 30
    end
    object db_CidadesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 200
    end
    object db_CidadesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object db_CidadesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 200
    end
    object db_CidadesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 200
    end
    object db_CidadesCIDADE_CODIGO: TStringField
      FieldName = 'CIDADE_CODIGO'
      Size = 30
    end
    object db_CidadesUF: TStringField
      FieldName = 'UF'
      Size = 200
    end
    object db_CidadesUF_CODIGO: TIntegerField
      FieldName = 'UF_CODIGO'
    end
    object db_CidadesAREAKM2: TBCDField
      FieldName = 'AREAKM2'
    end
    object db_CidadesPOPULACAO: TIntegerField
      FieldName = 'POPULACAO'
    end
  end
end
