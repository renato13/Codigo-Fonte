object FrmClientesGradeEdicao: TFrmClientesGradeEdicao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Clientes'
  ClientHeight = 480
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 416
    Width = 934
    Height = 64
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TabStop = True
    ExplicitTop = 416
    ExplicitWidth = 934
    ExplicitHeight = 64
    inherited W7Panel1: TPanel
      Width = 934
      Height = 64
      ExplicitWidth = 934
      ExplicitHeight = 64
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
        Visible = False
        OnClick = FrmFrameBotoes1SpbExcluirClick
      end
      inherited SpbCancelar: TSpeedButton
        Visible = False
        OnClick = FrmFrameBotoes1SpbCancelarClick
      end
      inherited SpbSalvar: TSpeedButton
        Visible = False
        OnClick = FrmFrameBotoes1SpbSalvarClick
      end
      inherited SpbEditar: TSpeedButton
        Visible = False
        OnClick = FrmFrameBotoes1SpbEditarClick
      end
      inherited SpbAdicionar: TSpeedButton
        Visible = False
        OnClick = FrmFrameBotoes1SpbAdicionarClick
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 934
    Height = 383
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 932
      Height = 381
      Align = alClient
      DataSource = DS_Clientes
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Color = clSilver
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo:'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome:'
          Width = 254
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FANTASIA'
          Title.Caption = 'Fantasia:'
          Width = 153
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DDD_FONE'
          Title.Caption = 'DDD:'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONE'
          Title.Caption = 'Fone:'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DDD_FAX'
          Title.Caption = 'DDD:'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FAX'
          Title.Caption = 'Fax:'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Title.Caption = 'EMail:'
          Width = 172
          Visible = True
        end>
    end
    object EditClienteLocalizar: TIDBEditDialog
      Left = 736
      Top = 105
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
      TabOrder = 1
      Text = ''
      Visible = False
      EditType = etAlphaNumeric
      EmptyText = 'Tecle F8'
      FocusColor = clBtnFace
      LabelCaption = 'Cliente:'
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
      ButtonHint = 'C'#243'digo do Cliente'
      Etched = False
      ButtonCaption = '...'
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = '***'
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT CODIGO, NOME FROM CAD_CLIENTES'
        'WHERE'
        'CODIGO=:CODIGO'
        '')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM VIEW_CLIENTES'
        'WHERE'
        '%WHERE%')
      SearchDialogFieldList = <
        item
          FieldName = 'CODIGO'
          WhereSyntax = 'CODIGO'
          DisplayLabel = 'C'#243'digo'
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
          DisplayWidth = 60
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scContains
          SearchCase = scUpper
        end
        item
          FieldName = 'VENDEDOR_NOME'
          WhereSyntax = 'VENDEDOR_NOME'
          DisplayLabel = 'VENDEDOR:'
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
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 934
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 934
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 934
      Height = 33
      ExplicitWidth = 934
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 177
        Caption = 'Edi'#231#227'o r'#225'pida de dados'
        ExplicitWidth = 177
      end
    end
  end
  object db_clientes: TFDQuery
    AfterOpen = db_clientesAfterOpen
    BeforeDelete = db_clientesBeforeDelete
    OnNewRecord = db_clientesNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE '
      'TIPO='#39'CLIENTE'#39
      'ORDER BY NOME')
    Left = 264
    Top = 120
    object db_clientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_clientesNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object db_clientesNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 200
    end
    object db_clientesDDD_FONE: TIntegerField
      FieldName = 'DDD_FONE'
    end
    object db_clientesFONE: TStringField
      FieldName = 'FONE'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_clientesDDD_FAX: TIntegerField
      FieldName = 'DDD_FAX'
    end
    object db_clientesFAX: TStringField
      FieldName = 'FAX'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_clientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
  end
  object DS_Clientes: TDataSource
    DataSet = db_clientes
    Left = 172
    Top = 120
  end
end
