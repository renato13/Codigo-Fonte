object FrmConta: TFrmConta
  Left = 1
  Top = 1
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Cadastro de Contas'
  ClientHeight = 207
  ClientWidth = 510
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 33
    Width = 510
    Height = 116
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 10
      Top = 65
      Width = 74
      Height = 13
      Caption = 'Nome da Conta'
      FocusControl = EditNOME
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 23
      Width = 33
      Height = 13
      Caption = '&C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 255
      Top = 65
      Width = 60
      Height = 13
      Caption = 'Saldo Inicial:'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 371
      Top = 65
      Width = 57
      Height = 13
      Caption = 'Saldo Atual:'
      FocusControl = DBEdit3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 83
      Top = 23
      Width = 26
      Height = 13
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 156
      Top = 23
      Width = 106
      Height = 13
      Caption = 'Data Ultima Altera'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditNOME: TDBEdit
      Left = 10
      Top = 80
      Width = 242
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DS_Conta
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 10
      Top = 40
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'CODIGO'
      DataSource = DS_Conta
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 255
      Top = 80
      Width = 110
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SALDOINICIAL'
      DataSource = DS_Conta
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 371
      Top = 80
      Width = 110
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'SALDOATUAL'
      DataSource = DS_Conta
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object ContaProcurar: TIDBEditDialog
      Left = 311
      Top = 20
      Width = 65
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
      TabOrder = 6
      Text = ''
      Visible = False
      EditType = etAlphaNumeric
      EmptyText = 'Tecle F8'
      FocusColor = clBtnFace
      LabelCaption = 'Contas'
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
    object DBEdit4: TDBEdit
      Left = 83
      Top = 40
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'DATA'
      DataSource = DS_Conta
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 156
      Top = 40
      Width = 125
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'DATAALTERACAO'
      DataSource = DS_Conta
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 510
    Height = 33
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 510
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 510
      Height = 33
      ExplicitWidth = 510
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 146
        Caption = 'Cadastro de Contas'
        ExplicitWidth = 146
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 149
    Width = 510
    Height = 58
    Align = alBottom
    AutoSize = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 149
    ExplicitWidth = 510
    inherited W7Panel1: TPanel
      Width = 510
      ExplicitWidth = 510
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
  object db_Conta: TFDQuery
    OnNewRecord = db_ContaNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_CONTAS')
    Left = 352
    Top = 40
    object db_ContaDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/99'
    end
    object db_ContaDATAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAALTERACAO'
    end
    object db_ContaCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_ContaNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_ContaSALDOINICIAL: TBCDField
      FieldName = 'SALDOINICIAL'
      OnChange = db_ContaSALDOINICIALChange
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ContaSALDOATUAL: TBCDField
      FieldName = 'SALDOATUAL'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
  end
  object DS_Conta: TDataSource
    AutoEdit = False
    DataSet = db_Conta
    Left = 352
    Top = 80
  end
end
