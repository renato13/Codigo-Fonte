object FrmCFOP: TFrmCFOP
  Left = 202
  Top = 111
  BorderStyle = bsDialog
  Caption = 'CFOP - C'#243'digos Fiscais de Opera'#231#245'es'
  ClientHeight = 543
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 36
    Width = 640
    Height = 449
    Cursor = crHandPoint
    ActivePage = Tab_Editar
    Align = alClient
    TabOrder = 0
    object Tab_Principal: TTabSheet
      Caption = 'Registros'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 632
        Height = 421
        Align = alClient
        DataSource = DS_CFOP
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'CFOP:'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o:'
            Width = 402
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CALCULA_ICMS'
            Title.Caption = 'ICMS:'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CALCULA_IPI'
            Title.Caption = 'IPI:'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CALCULA_ISS'
            Title.Caption = 'ISS:'
            Width = 40
            Visible = True
          end>
      end
    end
    object Tab_Editar: TTabSheet
      Caption = 'Editar'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 1
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = EditCodigo
      end
      object Label2: TLabel
        Left = 73
        Top = 8
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = EditNome
      end
      object EditCodigo: TDBEdit
        Left = 1
        Top = 24
        Width = 64
        Height = 21
        DataField = 'CODIGO'
        DataSource = DS_CFOP
        TabOrder = 0
      end
      object EditNome: TDBEdit
        Left = 73
        Top = 24
        Width = 292
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESCRICAO'
        DataSource = DS_CFOP
        TabOrder = 1
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 372
        Top = 79
        Width = 257
        Height = 57
        Caption = 'Calcula ICMS'
        Columns = 2
        DataField = 'CALCULA_ICMS'
        DataSource = DS_CFOP
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 6
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 372
        Top = 272
        Width = 257
        Height = 57
        Caption = 'Baixa Estoque'
        Columns = 2
        DataField = 'BAIXA_ESTOQUE'
        DataSource = DS_CFOP
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 9
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 372
        Top = 16
        Width = 257
        Height = 57
        Caption = 'Tipo de Opera'#231#227'o'
        Columns = 2
        DataField = 'OPERACAO'
        DataSource = DS_CFOP
        Items.Strings = (
          'Sa'#237'da'
          'Entrada')
        TabOrder = 5
        Values.Strings = (
          'S'
          'E')
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 372
        Top = 336
        Width = 257
        Height = 57
        Caption = 'Dentro do Estado'
        Columns = 2
        DataField = 'DENTRO_ESTADO'
        DataSource = DS_CFOP
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 10
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 372
        Top = 144
        Width = 257
        Height = 57
        Caption = 'Calcula IPI'
        Columns = 2
        DataField = 'CALCULA_IPI'
        DataSource = DS_CFOP
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 7
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup6: TDBRadioGroup
        Left = 372
        Top = 208
        Width = 257
        Height = 57
        Caption = 'Calcula ISS'
        Columns = 2
        DataField = 'CALCULA_ISS'
        DataSource = DS_CFOP
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 8
        Values.Strings = (
          'S'
          'N')
        Visible = False
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 48
        Width = 365
        Height = 120
        Caption = 'Reservado ao Fisco'
        TabOrder = 2
        object DBMemo_Fisco: TDBMemo
          Left = 2
          Top = 15
          Width = 361
          Height = 103
          Align = alClient
          DataField = 'FISCO'
          DataSource = DS_CFOP
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 176
        Width = 365
        Height = 120
        Caption = 'Tributa'#231#245'es'
        TabOrder = 3
        object Label7: TLabel
          Left = 13
          Top = 16
          Width = 105
          Height = 13
          Caption = 'Redu'#231#227'o do ICMS - %'
          FocusControl = EditReduc
        end
        object EditReduc: TDBEdit
          Left = 13
          Top = 32
          Width = 108
          Height = 21
          DataField = 'REDUCAO_ICMS'
          DataSource = DS_CFOP
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 1
        Top = 298
        Width = 365
        Height = 97
        Caption = 'DADOS ADICIONAIS'
        TabOrder = 4
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 361
          Height = 80
          Align = alClient
          DataField = 'DETALHE'
          DataSource = DS_CFOP
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 640
    Height = 36
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 640
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 640
      ExplicitWidth = 640
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 485
    Width = 640
    Height = 58
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 485
    ExplicitWidth = 640
    inherited W7Panel1: TPanel
      Width = 640
      ExplicitWidth = 640
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
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
  object dbEditPesquisarCFOP: TIDBEditDialog
    Left = 479
    Top = 8
    Width = 65
    Height = 21
    HelpKeyWord = ''
    CharCase = ecUpperCase
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
    EditType = etUppercase
    EmptyText = 'F8 - Pesquisar'
    FocusColor = clWindow
    LabelCaption = 'CFOP'
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
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbCampoRetorno = 'DESCRICAO'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_CFOP'
      'WHERE'
      'CODIGO=:CODIGO')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_CFOP'
      'WHERE'
      '%WHERE%'
      'ORDER BY CODIGO')
    CountQuery.Strings = (
      'SELECT COUNT(CODIGO) FROM CAD_CFOP'
      'WHERE'
      '%WHERE%'
      'ORDER BY CODIGO')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'CFOP'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'NOME:'
        DisplayWidth = 70
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'OPERACAO'
        WhereSyntax = 'OPERACAO'
        DisplayLabel = 'Sa'#237'da/Entrada'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
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
  object DS_CFOP: TDataSource
    DataSet = db_CFOP
    Left = 317
    Top = 39
  end
  object db_CFOP: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_CFOP'
      'order by CODIGO')
    Left = 317
    Top = 15
    object db_CFOPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_CFOPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_CFOPNFE: TStringField
      FieldName = 'NFE'
      Size = 10
    end
    object db_CFOPDENTRO_ESTADO: TStringField
      FieldName = 'DENTRO_ESTADO'
      Size = 10
    end
    object db_CFOPDETALHE: TStringField
      FieldName = 'DETALHE'
      Size = 5000
    end
    object db_CFOPFISCO: TStringField
      FieldName = 'FISCO'
      Size = 5000
    end
    object db_CFOPOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 30
    end
    object db_CFOPCALCULA_ICMS: TStringField
      FieldName = 'CALCULA_ICMS'
      Size = 10
    end
    object db_CFOPCALCULA_IPI: TStringField
      FieldName = 'CALCULA_IPI'
      Size = 10
    end
    object db_CFOPCALCULA_ISS: TStringField
      FieldName = 'CALCULA_ISS'
      Size = 10
    end
    object db_CFOPCALCULA_SEFAZ: TStringField
      FieldName = 'CALCULA_SEFAZ'
      Size = 10
    end
    object db_CFOPCALCULA_COFINS: TStringField
      FieldName = 'CALCULA_COFINS'
      Size = 10
    end
    object db_CFOPREDUCAO_ICMS: TBCDField
      FieldName = 'REDUCAO_ICMS'
    end
    object db_CFOPREDUCAO_IPI: TBCDField
      FieldName = 'REDUCAO_IPI'
    end
    object db_CFOPDESCONTO_SEFAZ: TBCDField
      FieldName = 'DESCONTO_SEFAZ'
    end
    object db_CFOPDESCONTO_COFINS: TBCDField
      FieldName = 'DESCONTO_COFINS'
    end
    object db_CFOPDESCONTO_PIS: TBCDField
      FieldName = 'DESCONTO_PIS'
    end
    object db_CFOPRECUPERA_ICMS: TStringField
      FieldName = 'RECUPERA_ICMS'
      Size = 30
    end
    object db_CFOPRECUPERA_IPI: TStringField
      FieldName = 'RECUPERA_IPI'
      Size = 10
    end
    object db_CFOPDESCONTO_SUFRAMA: TBCDField
      FieldName = 'DESCONTO_SUFRAMA'
    end
    object db_CFOPBAIXA_ESTOQUE: TStringField
      FieldName = 'BAIXA_ESTOQUE'
      Size = 10
    end
    object db_CFOPSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 30
    end
  end
end
