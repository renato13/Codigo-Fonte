object FrmVeiculos: TFrmVeiculos
  Left = 220
  Top = 111
  BorderStyle = bsDialog
  Caption = 'Cadastro de Ve'#237'culos'
  ClientHeight = 475
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 586
    Height = 416
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 397
    object Label5: TLabel
      Left = 5
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
    object Label3: TLabel
      Left = 10
      Top = 136
      Width = 80
      Height = 13
      Caption = 'Nome do veiculo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 231
      Top = 136
      Width = 128
      Height = 13
      Caption = 'Modelo/Vers'#227'o do Ve'#237'culo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 155
      Top = 94
      Width = 27
      Height = 13
      Caption = 'Placa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 376
      Top = 136
      Width = 16
      Height = 13
      Caption = 'Cor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 143
      Top = 222
      Width = 31
      Height = 13
      Caption = 'Chassi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 293
      Top = 222
      Width = 42
      Height = 13
      Caption = 'N'#186' Motor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 10
      Top = 179
      Width = 21
      Height = 13
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 144
      Top = 180
      Width = 57
      Height = 13
      Caption = 'Combustivel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 499
      Top = 136
      Width = 69
      Height = 13
      Caption = 'Ano Fab/Mod:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 97
      Top = 265
      Width = 39
      Height = 13
      Caption = 'Cilindros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 189
      Top = 265
      Width = 101
      Height = 13
      Caption = 'Cilindradas (pot'#234'ncia)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 403
      Top = 222
      Width = 62
      Height = 13
      Caption = 'Tabela FIPE:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 308
      Top = 265
      Width = 88
      Height = 13
      Caption = 'Vecimento Extintor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 403
      Top = 264
      Width = 87
      Height = 13
      Caption = 'Vecimento Seguro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 497
      Top = 265
      Width = 77
      Height = 13
      Caption = 'Vecimento IPVA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 278
      Top = 179
      Width = 62
      Height = 13
      Caption = 'Esp'#233'cie Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 10
      Top = 222
      Width = 52
      Height = 13
      Caption = 'RENAVAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 532
      Top = 152
      Width = 14
      Height = 16
      Caption = ' / '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 499
      Top = 222
      Width = 64
      Height = 13
      Caption = 'N'#186' Redutores'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 265
      Width = 75
      Height = 13
      Caption = 'N'#186' Cilindro GNV'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 412
      Top = 178
      Width = 66
      Height = 13
      Caption = 'Qtde de Eixos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 499
      Top = 178
      Width = 71
      Height = 13
      Caption = 'Qtde de Pneus'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 215
      Top = 94
      Width = 33
      Height = 13
      Caption = 'Cidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 458
      Top = 94
      Width = 14
      Height = 13
      Caption = 'UF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 499
      Top = 94
      Width = 16
      Height = 13
      Caption = 'KM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 10
      Top = 94
      Width = 27
      Height = 13
      Caption = 'Frota:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 10
      Top = 152
      Width = 217
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = ds_Veiculos
      TabOrder = 9
    end
    object DBEdit5: TDBEdit
      Left = 231
      Top = 152
      Width = 142
      Height = 21
      CharCase = ecUpperCase
      DataField = 'MODELO'
      DataSource = ds_Veiculos
      TabOrder = 10
    end
    object DBEdit6: TDBEdit
      Left = 155
      Top = 109
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PLACA'
      DataSource = ds_Veiculos
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 376
      Top = 152
      Width = 119
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COR'
      DataSource = ds_Veiculos
      TabOrder = 11
    end
    object DBEdit9: TDBEdit
      Left = 293
      Top = 237
      Width = 106
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NRO_MOTOR'
      DataSource = ds_Veiculos
      TabOrder = 21
    end
    object DBEdit10: TDBEdit
      Left = 499
      Top = 152
      Width = 35
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ANO_FAB1'
      DataSource = ds_Veiculos
      TabOrder = 12
    end
    object DBEdit11: TDBEdit
      Left = 542
      Top = 151
      Width = 35
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ANO_FAB2'
      DataSource = ds_Veiculos
      TabOrder = 13
    end
    object DBEdit12: TDBEdit
      Left = 97
      Top = 280
      Width = 88
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CILINDRO'
      DataSource = ds_Veiculos
      TabOrder = 25
    end
    object DBEdit13: TDBEdit
      Left = 189
      Top = 280
      Width = 114
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CILINDRADAS'
      DataSource = ds_Veiculos
      TabOrder = 26
    end
    object DBEdit14: TDBEdit
      Left = 403
      Top = 237
      Width = 84
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FIPE'
      DataSource = ds_Veiculos
      TabOrder = 22
    end
    object DBEdit15: TDBEdit
      Left = 308
      Top = 280
      Width = 90
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VCTO_EXTINTOR'
      DataSource = ds_Veiculos
      TabOrder = 27
    end
    object DBEdit16: TDBEdit
      Left = 403
      Top = 280
      Width = 90
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VCTO_SEGURO'
      DataSource = ds_Veiculos
      TabOrder = 28
    end
    object DBEdit17: TDBEdit
      Left = 497
      Top = 280
      Width = 80
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VCTO_IPVA'
      DataSource = ds_Veiculos
      TabOrder = 29
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 329
      Width = 582
      Height = 85
      Align = alBottom
      Caption = 'Detalhes:'
      TabOrder = 30
      ExplicitTop = 310
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 578
        Height = 68
        Align = alClient
        DataField = 'OBSERVACAO'
        DataSource = ds_Veiculos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        ExplicitLeft = 229
        ExplicitTop = 3
      end
    end
    object IDBEditDialog1: TIDBEditDialog
      Left = 10
      Top = 67
      Width = 55
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      TabOrder = 2
      Text = ''
      Visible = True
      LabelCaption = 'Fabricante do Ve'#237'culo'
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
      DataField = 'FABRICANTE'
      DataSource = ds_Veiculos
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomeCliente
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = ' *** '
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'FORNECEDOR'#39
        'AND'
        'CODIGO=:CODIGO')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'FORNECEDOR'#39
        'AND'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT COUNT(*) FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'FORNECEDO'#39
        'AND'
        '%WHERE%')
      SearchDialogFieldList = <
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
        end
        item
          FieldName = 'CODIGO'
          WhereSyntax = 'CODIGO'
          DisplayLabel = 'C'#243'digo:'
          DisplayWidth = 10
          DisplayColumnWidth = 0
          FieldType = ftInteger
          Search = True
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
    object EditNomeCliente: TEdit
      Left = 67
      Top = 67
      Width = 510
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 3
      Text = '***'
    end
    object EditCliente: TIDBEditDialog
      Left = 10
      Top = 27
      Width = 55
      Height = 21
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      TabOrder = 0
      Text = ''
      Visible = True
      LabelCaption = 'Cliente (propriet'#225'rio do ve'#237'culo)'
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
      DataSource = ds_Veiculos
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = Edit1
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = ' *** '
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'CLIENTE'#39
        'AND'
        'CODIGO=:CODIGO')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'CLIENTE'#39
        'AND'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT COUNT(*) FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'CLIENTE'#39
        'AND'
        '%WHERE%')
      SearchDialogFieldList = <
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
        end
        item
          FieldName = 'CODIGO'
          WhereSyntax = 'CODIGO'
          DisplayLabel = 'C'#243'digo:'
          DisplayWidth = 10
          DisplayColumnWidth = 0
          FieldType = ftInteger
          Search = True
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
    object Edit1: TEdit
      Left = 66
      Top = 27
      Width = 510
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 1
      Text = '***'
    end
    object DBComboBox1: TDBComboBox
      Left = 10
      Top = 194
      Width = 130
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      DataField = 'TIPO'
      DataSource = ds_Veiculos
      Items.Strings = (
        'CAMINHAO'
        'CARRETA'
        'CARRO'
        'MOTO'
        'PICK-UP')
      Sorted = True
      TabOrder = 14
    end
    object DBComboBox2: TDBComboBox
      Left = 144
      Top = 194
      Width = 130
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      DataField = 'COMBUSTIVEL'
      DataSource = ds_Veiculos
      Items.Strings = (
        'ALCOOL'
        'GASOLINA'
        'FLEX'
        'DIESEL'
        'GNV'
        'ELETRICO'
        'HIBRIDO'
        'OUTRO')
      TabOrder = 15
    end
    object DBComboBox3: TDBComboBox
      Left = 278
      Top = 194
      Width = 130
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      DataField = 'ESPECIE'
      DataSource = ds_Veiculos
      Items.Strings = (
        'CARGA'
        'PASSAGEIRO')
      Sorted = True
      TabOrder = 16
    end
    object DBEdit8: TDBEdit
      Left = 143
      Top = 237
      Width = 144
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CHASSI'
      DataSource = ds_Veiculos
      TabOrder = 20
    end
    object DBEdit18: TDBEdit
      Left = 10
      Top = 237
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RENAVAN'
      DataSource = ds_Veiculos
      TabOrder = 19
    end
    object DBEdit2: TDBEdit
      Left = 499
      Top = 237
      Width = 78
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NRO_REDUTOR'
      DataSource = ds_Veiculos
      TabOrder = 23
    end
    object DBEdit3: TDBEdit
      Left = 10
      Top = 280
      Width = 84
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NRO_CILINDROGNV'
      DataSource = ds_Veiculos
      TabOrder = 24
    end
    object DBEdit4: TDBEdit
      Left = 412
      Top = 194
      Width = 75
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EIXOS'
      DataSource = ds_Veiculos
      TabOrder = 17
    end
    object DBEdit19: TDBEdit
      Left = 499
      Top = 194
      Width = 78
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PNEUS'
      DataSource = ds_Veiculos
      TabOrder = 18
    end
    object DBEdit20: TDBEdit
      Left = 216
      Top = 109
      Width = 236
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PLACA_CIDADE'
      DataSource = ds_Veiculos
      TabOrder = 6
    end
    object DBEdit21: TDBEdit
      Left = 458
      Top = 109
      Width = 35
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PLACA_UF'
      DataSource = ds_Veiculos
      TabOrder = 7
    end
    object DBEdit22: TDBEdit
      Left = 499
      Top = 109
      Width = 78
      Height = 21
      CharCase = ecUpperCase
      DataField = 'KM'
      DataSource = ds_Veiculos
      TabOrder = 8
    end
    object DBEdit23: TDBEdit
      Left = 10
      Top = 109
      Width = 139
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FROTA'
      DataSource = ds_Veiculos
      TabOrder = 4
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 416
    Width = 586
    Height = 59
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 416
    ExplicitWidth = 586
    ExplicitHeight = 59
    inherited W7Panel1: TPanel
      Width = 586
      Height = 59
      ExplicitWidth = 586
      ExplicitHeight = 41
    end
  end
  object ds_Veiculos: TDataSource
    AutoEdit = False
    DataSet = db_Veiculos
    Left = 280
  end
  object db_Veiculos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM OS_VEICULOS')
    Left = 216
    object db_VeiculosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_VeiculosDATA: TDateField
      FieldName = 'DATA'
    end
    object db_VeiculosNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_VeiculosMODELO: TStringField
      FieldName = 'MODELO'
      Size = 200
    end
    object db_VeiculosFROTA: TStringField
      FieldName = 'FROTA'
      Size = 30
    end
    object db_VeiculosPLACA: TStringField
      FieldName = 'PLACA'
      EditMask = 'LLL-9999'
    end
    object db_VeiculosPLACA_CIDADE: TStringField
      FieldName = 'PLACA_CIDADE'
      Size = 200
    end
    object db_VeiculosPLACA_UF: TStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object db_VeiculosCOR: TStringField
      FieldName = 'COR'
      Size = 200
    end
    object db_VeiculosCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 200
    end
    object db_VeiculosNRO_MOTOR: TStringField
      FieldName = 'NRO_MOTOR'
      Size = 200
    end
    object db_VeiculosTIPO: TStringField
      FieldName = 'TIPO'
    end
    object db_VeiculosFOTO_PATH: TStringField
      FieldName = 'FOTO_PATH'
      Size = 200
    end
    object db_VeiculosCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
    end
    object db_VeiculosANO_FAB1: TIntegerField
      FieldName = 'ANO_FAB1'
    end
    object db_VeiculosANO_FAB2: TIntegerField
      FieldName = 'ANO_FAB2'
    end
    object db_VeiculosRENAVAN: TStringField
      FieldName = 'RENAVAN'
      Size = 200
    end
    object db_VeiculosVCTO_EXTINTOR: TDateField
      FieldName = 'VCTO_EXTINTOR'
      EditMask = '99/99/9999'
    end
    object db_VeiculosVCTO_SEGURO: TDateField
      FieldName = 'VCTO_SEGURO'
      EditMask = '99/99/9999'
    end
    object db_VeiculosVCTO_IPVA: TDateField
      FieldName = 'VCTO_IPVA'
      EditMask = '99/99/9999'
    end
    object db_VeiculosESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object db_VeiculosFIPE: TStringField
      FieldName = 'FIPE'
    end
    object db_VeiculosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 1000
    end
    object db_VeiculosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_VeiculosFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object db_VeiculosKM: TIntegerField
      FieldName = 'KM'
      DisplayFormat = '###,##0'
      EditFormat = '######'
    end
    object db_VeiculosCILINDRO: TIntegerField
      FieldName = 'CILINDRO'
    end
    object db_VeiculosCILINDRADAS: TIntegerField
      FieldName = 'CILINDRADAS'
    end
    object db_VeiculosNRO_REDUTOR: TIntegerField
      FieldName = 'NRO_REDUTOR'
    end
    object db_VeiculosNRO_CILINDROGNV: TIntegerField
      FieldName = 'NRO_CILINDROGNV'
    end
    object db_VeiculosEIXOS: TIntegerField
      FieldName = 'EIXOS'
    end
    object db_VeiculosPNEUS: TIntegerField
      FieldName = 'PNEUS'
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = db_Veiculos
    BCDToCurrency = False
    Left = 112
    Top = 344
  end
  object frxReport1: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39857.426388159720000000
    ReportOptions.LastChange = 39857.426388159720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 272
    Top = 352
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
    end
  end
end
