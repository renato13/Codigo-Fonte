object FrmGeraParcelasVenda: TFrmGeraParcelasVenda
  Left = 315
  Top = 125
  BorderStyle = bsDialog
  Caption = 'Gerar Faturas - Nota Fiscal'
  ClientHeight = 475
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 187
    Width = 535
    Height = 234
    Align = alClient
    Caption = 'Parcelas/Faturas'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 531
      Height = 217
      Align = alClient
      DataSource = DS_CtaReceber
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Caption = 'Documento'
          Width = 103
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'DATA'
          ReadOnly = True
          Title.Caption = 'Emiss'#227'o'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Caption = 'Vencimento'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 96
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clBtnFace
          Expanded = False
          FieldName = 'GERARCOMPLEMENTO'
          Title.Caption = 'Cobran'#231'a:'
          Width = 61
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 535
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 70
      Width = 93
      Height = 13
      Caption = 'Parcelas (opcional):'
    end
    object EditParcelas: TEdit
      Left = 113
      Top = 66
      Width = 49
      Height = 21
      Hint = 
        'Voc'#234' define quantas parcelas deseja (esse campo '#233' uma alternativ' +
        'a... ou seja, opcional)'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '0'
    end
    object EditNomeFormaPagto: TEdit
      Left = 84
      Top = 30
      Width = 333
      Height = 22
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EditPagamento: TIDBEditDialog
      Left = 12
      Top = 30
      Width = 70
      Height = 22
      HelpKeyWord = ''
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      Visible = True
      EditType = etNumeric
      EmptyText = 'F8 - Cliente'
      FocusColor = clBtnFace
      LabelCaption = 'Forma de Pagamento'
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
      ButtonHint = 'Forma de Pagamento'
      Etched = False
      ButtonCaption = '...'
      DataField = 'FORMAPAGTO'
      DataSource = BaseDados.DS_Vendas
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomeFormaPagto
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = '***'
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT CODIGO, NOME FROM CAD_FORMAPAGTO'
        'WHERE'
        'CODIGO=:CODIGO')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT CODIGO, NOME FROM CAD_FORMAPAGTO'
        'WHERE'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT COUNT(NOME) FROM CAD_FORMAPAGTO'
        'WHERE'
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
  end
  object PainelBotoes: TPanel
    Left = 0
    Top = 421
    Width = 535
    Height = 54
    Align = alBottom
    TabOrder = 3
    object BtnSair: TBitBtn
      Left = 196
      Top = 5
      Width = 95
      Height = 45
      Cursor = crHandPoint
      Hint = 'sair da gera'#231#227'o de parcelas'
      Caption = 'Sair'
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnSairClick
    end
    object BtnExcluir: TBitBtn
      Left = 100
      Top = 5
      Width = 95
      Height = 45
      Cursor = crHandPoint
      Hint = 'Excluir Registro'
      Caption = 'E&xcluir...'
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnExcluirClick
    end
    object BtnGerar: TBitBtn
      Left = 4
      Top = 5
      Width = 95
      Height = 45
      Cursor = crHandPoint
      Hint = 'gerar parcelas '#224' partir da forma de pagamento selecionada'
      Caption = '&Criar Parcelas'
      Default = True
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnGerarClick
    end
    object EditTotal: TLabeledEdit
      Left = 383
      Top = 21
      Width = 121
      Height = 26
      Alignment = taRightJustify
      Color = clBtnFace
      EditLabel.Width = 34
      EditLabel.Height = 18
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Total:'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Calibri'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '0'
    end
  end
  object GroupBoxCredito: TGroupBox
    Left = 0
    Top = 97
    Width = 535
    Height = 90
    Align = alTop
    Caption = 'Credito Disponivel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label2: TLabel
      Left = 196
      Top = 26
      Width = 100
      Height = 18
      Caption = 'Utilizar (abater):'
    end
    object EditDisponivel: TLabeledEdit
      Left = 13
      Top = 47
      Width = 121
      Height = 26
      BiDiMode = bdRightToLeft
      EditLabel.Width = 115
      EditLabel.Height = 18
      EditLabel.BiDiMode = bdRightToLeft
      EditLabel.Caption = 'Cr'#233'dito Disponivel'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clRed
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Calibri'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '0,00'
    end
    object EditUtilizar: TDBEdit
      Left = 199
      Top = 47
      Width = 121
      Height = 26
      DataField = 'CREDITOABATIMENTO'
      DataSource = BaseDados.DS_Vendas
      TabOrder = 1
      OnExit = EditUtilizarExit
    end
  end
  object db_FormaPagto: TFDQuery
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT'
      'A.*, B.*'
      ' FROM CAD_FORMAPAGTO  A, CAD_FORMAPAGTODIAS B'
      'WHERE'
      'B.CODIGO=A.CODIGO'
      'AND'
      'A.CODIGO=:FORMAPAGTO'
      'ORDER BY A.CODIGO, B.DIAS')
    Left = 328
    Top = 237
    ParamData = <
      item
        Name = 'FORMAPAGTO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DS_CtaReceber: TDataSource
    DataSet = db_CtaReceber
    Left = 64
    Top = 296
  end
  object db_CtaReceber: TFDQuery
    BeforeOpen = db_CtaReceberBeforeOpen
    AfterPost = db_CtaReceberAfterPost
    AfterScroll = db_CtaReceberAfterScroll
    MasterSource = BaseDados.DS_Vendas
    MasterFields = 'CLIENTE;NOTAFISCAL'
    DetailFields = 'CLIENTE;NOTAFISCAL'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CTARECEBER'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'NOTAFISCAL=:NOTAFISCAL'
      'AND'
      'CLIENTE=:CLIENTE')
    Left = 64
    Top = 240
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_CtaReceberCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_CtaReceberEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_CtaReceberDATA: TSQLTimeStampField
      FieldName = 'DATA'
      OnChange = db_CtaReceberDATAChange
      EditMask = '99/99/9999'
    end
    object db_CtaReceberVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      OnChange = db_CtaReceberVENCIMENTOChange
      EditMask = '99/99/9999'
    end
    object db_CtaReceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object db_CtaReceberVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_CtaReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_CtaReceberVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object db_CtaReceberQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
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
    object db_CtaReceberNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_CtaReceberSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_CtaReceberPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_CtaReceberFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_CtaReceberPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_CtaReceberESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_CtaReceberTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_CtaReceberGERARCOMPLEMENTO: TStringField
      FieldName = 'GERARCOMPLEMENTO'
      Size = 10
    end
    object db_CtaReceberCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
  end
  object db_CtaReceberSomar: TFDQuery
    BeforeOpen = db_CtaReceberSomarBeforeOpen
    AfterPost = db_CtaReceberAfterPost
    MasterSource = BaseDados.DS_Vendas
    MasterFields = 'NOTAFISCAL;CLIENTE;EMPRESA'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALORTOTAL FROM FIN_CTARECEBER'
      'WHERE'
      'NOTAFISCAL=:NOTAFISCAL'
      'AND'
      'CLIENTE=:CLIENTE'
      'AND'
      'EMPRESA=:EMPRESA')
    Left = 200
    Top = 240
    ParamData = <
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_CtaReceberSomarVALORTOTAL: TBCDField
      FieldName = 'VALORTOTAL'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
  end
  object SPCLIENTE_ATUALIZACREDITO: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPCLIENTE_ATUALIZACREDITO'
    Left = 264
    Top = 304
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'NCODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
