object FrmConsultaNotaFiscal: TFrmConsultaNotaFiscal
  Left = 1
  Top = 1
  Caption = 'Consulta de Nota Fiscal'
  ClientHeight = 496
  ClientWidth = 951
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 18
  object Panel4: TPanel
    Left = 0
    Top = 449
    Width = 951
    Height = 47
    Align = alBottom
    BevelInner = bvRaised
    BorderStyle = bsSingle
    TabOrder = 2
    object BtnProcurar: TBitBtn
      Left = 8
      Top = 8
      Width = 90
      Height = 25
      Caption = '&Procurar - F8'
      TabOrder = 0
      OnClick = BtnProcurarClick
    end
    object BtnSair: TBitBtn
      Left = 108
      Top = 8
      Width = 90
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 951
    Height = 33
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 951
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 951
      Height = 33
      ExplicitWidth = 951
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 262
        Caption = 'Consulta de Notas Fiscais Emitidas'
        ExplicitWidth = 262
      end
    end
  end
  object BoxProdutos: TGroupBox
    Left = 0
    Top = 176
    Width = 951
    Height = 273
    Align = alBottom
    Caption = 'Produtos da Nota Fiscail'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object GridProdutos: TDBGrid
      Left = 2
      Top = 15
      Width = 947
      Height = 217
      Align = alClient
      DataSource = DS_VendasItens
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'PRODUTO:'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 102
          Visible = True
        end
        item
          Color = 12906487
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'DESCRI'#199#195'O DOS PRODUTOS'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 327
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'UNIDADE:'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'QUANTIDADE:'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_UNITARIO'
          Title.Alignment = taCenter
          Title.Caption = 'VLR. UNIT.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ICMS_ALIQUOTA'
          Title.Alignment = taCenter
          Title.Caption = 'ICMS  %:'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IPI_ALIQUOTA'
          Title.Alignment = taCenter
          Title.Caption = 'IPI  %:'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 53
          Visible = True
        end
        item
          Color = 9101294
          Expanded = False
          FieldName = 'VLR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'VALOR PRODUTOS:'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 115
          Visible = True
        end>
    end
    object Panel7: TPanel
      Left = 2
      Top = 232
      Width = 947
      Height = 39
      Align = alBottom
      TabOrder = 1
      object Panel8: TPanel
        Left = 8
        Top = 7
        Width = 105
        Height = 28
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = ' N.F.:'
        Color = 9101294
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object DBText5: TDBText
          Left = 48
          Top = 6
          Width = 51
          Height = 17
          Alignment = taRightJustify
          Color = 9101294
          DataField = 'NOTAFISCAL'
          DataSource = DS_Vendas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
      object Panel9: TPanel
        Left = 120
        Top = 7
        Width = 209
        Height = 28
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = ' Total da Nota: R$'
        Color = 12906487
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object DBText6: TDBText
          Left = 96
          Top = 6
          Width = 108
          Height = 17
          Alignment = taRightJustify
          Color = 12906487
          DataField = 'NF_VALOR_TOTAL'
          DataSource = DS_Vendas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 33
    Width = 951
    Height = 143
    Align = alClient
    Caption = 'Notas Fiscais'
    TabOrder = 0
    object GridNotasFiscais: TDBGrid
      Left = 2
      Top = 20
      Width = 947
      Height = 121
      Align = alClient
      Color = clInfoBk
      DataSource = DS_Vendas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'EMISSAO'
          Title.Caption = 'EMISS'#195'O:'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOTAFISCAL'
          Title.Alignment = taCenter
          Title.Caption = 'NOTA FISCAL:'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE_NOME'
          Title.Alignment = taCenter
          Title.Caption = 'CLIENTE:'
          Width = 558
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_VALOR_TOTAL'
          Title.Caption = 'VALOR DA NF:'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Caption = 'EMITIDA:'
          Width = 57
          Visible = True
        end>
    end
  end
  object dbProcurarNFe: TIDBEditDialog
    Left = 176
    Top = 6
    Width = 65
    Height = 22
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = ''
    Visible = False
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = 'Transportadora:'
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
    ButtonHint = 'Transportadora:'
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
      'SELECT * FROM VIEW_NOTAFISCAL'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'PEDIDO'
        WhereSyntax = 'PEDIDO'
        DisplayLabel = 'PEDIDO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
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
        SearchCase = scMixed
      end
      item
        FieldName = 'EMISSAO'
        WhereSyntax = 'EMISSAO'
        DisplayLabel = 'EMISS'#195'O:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CFOP'
        WhereSyntax = 'CFOP'
        DisplayLabel = 'CFOP:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'IMPRESSO'
        WhereSyntax = 'IMPRESSO'
        DisplayLabel = 'IMPRESSO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'OPERACAO'
        WhereSyntax = 'OPERACAO'
        DisplayLabel = 'OPERA'#199#195'O:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'CLIENTE_NOME'
        WhereSyntax = 'CLIENTE_NOME'
        DisplayLabel = 'CLIENTE:'
        DisplayWidth = 30
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_QTDE_PRODUTOS'
        WhereSyntax = 'NF_QTDE_PRODUTOS'
        DisplayLabel = 'QTDE PRODUTOS:'
        DisplayFormat = '###,##0'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_VALOR_PRODUTOS'
        WhereSyntax = 'NF_VALOR_PRODUTOS'
        DisplayLabel = 'VALOR PRODUTOS:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 18
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NF_VALOR_TOTAL'
        WhereSyntax = 'NF_VALOR_TOTAL'
        DisplayLabel = 'VALOR NF:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
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
  object DS_Vendas: TDataSource
    DataSet = db_Vendas
    Left = 232
    Top = 144
  end
  object DS_VendasItens: TDataSource
    DataSet = db_VendasItens
    Left = 320
    Top = 144
  end
  object db_Vendas: TFDQuery
    BeforeOpen = db_VendasBeforeOpen
    AfterOpen = db_VendasAfterOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_NOTAFISCAL'
      'WHERE'
      'EMPRESA=:EMPRESA')
    Left = 232
    Top = 96
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_VendasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_VendasCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_VendasNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_VendasNOTAFISCALORIGEM: TIntegerField
      FieldName = 'NOTAFISCALORIGEM'
    end
    object db_VendasSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 30
    end
    object db_VendasEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
      Required = True
    end
    object db_VendasDATA_ES: TSQLTimeStampField
      FieldName = 'DATA_ES'
    end
    object db_VendasOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Required = True
      Size = 30
    end
    object db_VendasCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object db_VendasCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_VendasCLIENTE_CNPJ: TStringField
      FieldName = 'CLIENTE_CNPJ'
      ReadOnly = True
      Size = 30
    end
    object db_VendasCLIENTE_RG_IE: TStringField
      FieldName = 'CLIENTE_RG_IE'
      ReadOnly = True
      Size = 30
    end
    object db_VendasCLIENTE_ENDERECO: TStringField
      FieldName = 'CLIENTE_ENDERECO'
      ReadOnly = True
      Size = 200
    end
    object db_VendasCLIENTE_NUMERO: TStringField
      FieldName = 'CLIENTE_NUMERO'
      ReadOnly = True
      Size = 30
    end
    object db_VendasCLIENTE_BAIRRO: TStringField
      FieldName = 'CLIENTE_BAIRRO'
      ReadOnly = True
      Size = 200
    end
    object db_VendasCLIENTE_DDD: TIntegerField
      FieldName = 'CLIENTE_DDD'
      ReadOnly = True
    end
    object db_VendasCLIENTE_FONE: TStringField
      FieldName = 'CLIENTE_FONE'
      ReadOnly = True
      Size = 30
    end
    object db_VendasCLIENTE_FAX: TStringField
      FieldName = 'CLIENTE_FAX'
      ReadOnly = True
      Size = 30
    end
    object db_VendasCLIENTE_REFERENCIA: TStringField
      FieldName = 'CLIENTE_REFERENCIA'
      ReadOnly = True
      Size = 200
    end
    object db_VendasCLIENTE_CIDADE: TIntegerField
      FieldName = 'CLIENTE_CIDADE'
      ReadOnly = True
    end
    object db_VendasCLIENTE_CIDADE_NOME: TStringField
      FieldName = 'CLIENTE_CIDADE_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_VendasCLIENTE_UF: TStringField
      FieldName = 'CLIENTE_UF'
      ReadOnly = True
      Size = 30
    end
    object db_VendasCLIENTE_CONTATO: TStringField
      FieldName = 'CLIENTE_CONTATO'
      ReadOnly = True
      Size = 200
    end
    object db_VendasCLIENTE_EMAIL: TStringField
      FieldName = 'CLIENTE_EMAIL'
      ReadOnly = True
      Size = 200
    end
    object db_VendasCFOP: TIntegerField
      FieldName = 'CFOP'
      Required = True
    end
    object db_VendasCFOP_NOME: TStringField
      FieldName = 'CFOP_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_VendasIE_SUBSTITUICAO: TStringField
      FieldName = 'IE_SUBSTITUICAO'
      Size = 30
    end
    object db_VendasSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object db_VendasFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
      Required = True
    end
    object db_VendasFORMA_PAGTO_NOME: TStringField
      FieldName = 'FORMA_PAGTO_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_VendasVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Required = True
    end
    object db_VendasVENDEDOR_NOME: TStringField
      FieldName = 'VENDEDOR_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_VendasNF_VALOR_TOTAL: TBCDField
      FieldName = 'NF_VALOR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasNF_VALOR_PRODUTOS: TBCDField
      FieldName = 'NF_VALOR_PRODUTOS'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasNF_QTDE_PRODUTOS: TIntegerField
      FieldName = 'NF_QTDE_PRODUTOS'
    end
    object db_VendasNF_VALOR_ICMS: TBCDField
      FieldName = 'NF_VALOR_ICMS'
    end
    object db_VendasNF_VALOR_IPI: TBCDField
      FieldName = 'NF_VALOR_IPI'
    end
    object db_VendasNF_ISS: TBCDField
      FieldName = 'NF_ISS'
    end
    object db_VendasNF_ISS_VALOR: TBCDField
      FieldName = 'NF_ISS_VALOR'
    end
    object db_VendasNF_BASE_CALC_ICMS: TBCDField
      FieldName = 'NF_BASE_CALC_ICMS'
    end
    object db_VendasNF_BASE_CALC_ICMS_II: TBCDField
      FieldName = 'NF_BASE_CALC_ICMS_II'
    end
    object db_VendasNF_VALOR_BASE_ICMS_II: TBCDField
      FieldName = 'NF_VALOR_BASE_ICMS_II'
    end
    object db_VendasSIMPLESNACIONAL_VALOR: TBCDField
      FieldName = 'SIMPLESNACIONAL_VALOR'
    end
    object db_VendasVLR_FRETE: TBCDField
      FieldName = 'VLR_FRETE'
    end
    object db_VendasVLR_SEGURO: TBCDField
      FieldName = 'VLR_SEGURO'
    end
    object db_VendasVLR_DESP_ACES: TBCDField
      FieldName = 'VLR_DESP_ACES'
    end
    object db_VendasPERC_DESCONTO: TBCDField
      FieldName = 'PERC_DESCONTO'
    end
    object db_VendasVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
    end
    object db_VendasVLR_RECEBIDO: TBCDField
      FieldName = 'VLR_RECEBIDO'
    end
    object db_VendasTROCO: TBCDField
      FieldName = 'TROCO'
    end
    object db_VendasVLR_CAIXA: TBCDField
      FieldName = 'VLR_CAIXA'
    end
    object db_VendasTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Required = True
    end
    object db_VendasTRANSP_NOME: TStringField
      FieldName = 'TRANSP_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_VendasTRANSP_FRETE: TStringField
      FieldName = 'TRANSP_FRETE'
      Size = 30
    end
    object db_VendasTRANSP_PLACA: TStringField
      FieldName = 'TRANSP_PLACA'
      ReadOnly = True
      Size = 30
    end
    object db_VendasTRANSP_PLACA_CIDADE: TStringField
      FieldName = 'TRANSP_PLACA_CIDADE'
      ReadOnly = True
      Size = 200
    end
    object db_VendasTRANSP_PLACA_UF: TStringField
      FieldName = 'TRANSP_PLACA_UF'
      ReadOnly = True
      Size = 200
    end
    object db_VendasTRANSP_CNPJ: TStringField
      FieldName = 'TRANSP_CNPJ'
      ReadOnly = True
      Size = 30
    end
    object db_VendasTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      ReadOnly = True
      Size = 200
    end
    object db_VendasTRANSP_CIDADE: TIntegerField
      FieldName = 'TRANSP_CIDADE'
      ReadOnly = True
    end
    object db_VendasTRANSP_CIDADE_NOME: TStringField
      FieldName = 'TRANSP_CIDADE_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_VendasTRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      ReadOnly = True
      Size = 30
    end
    object db_VendasTRANSP_INSCRICAO: TStringField
      FieldName = 'TRANSP_INSCRICAO'
      ReadOnly = True
      Size = 30
    end
    object db_VendasTRANSP_QTDE: TIntegerField
      FieldName = 'TRANSP_QTDE'
    end
    object db_VendasTRANSP_ESPECIE: TStringField
      FieldName = 'TRANSP_ESPECIE'
      Size = 30
    end
    object db_VendasTRANSP_MARCA: TStringField
      FieldName = 'TRANSP_MARCA'
      Size = 30
    end
    object db_VendasTRANSP_NUMERO: TStringField
      FieldName = 'TRANSP_NUMERO'
      Size = 30
    end
    object db_VendasTRANSP_PBRUTO: TBCDField
      FieldName = 'TRANSP_PBRUTO'
    end
    object db_VendasTRANSP_PLIQUIDO: TBCDField
      FieldName = 'TRANSP_PLIQUIDO'
    end
    object db_VendasDADOS_ADICIONAIS: TStringField
      FieldName = 'DADOS_ADICIONAIS'
      Size = 5000
    end
    object db_VendasRESERVADO_FISCO: TStringField
      FieldName = 'RESERVADO_FISCO'
      Size = 5000
    end
    object db_VendasALIQ_ICMS_REDUCAO: TBCDField
      FieldName = 'ALIQ_ICMS_REDUCAO'
    end
    object db_VendasVLR_ICMS_REDUCAO: TBCDField
      FieldName = 'VLR_ICMS_REDUCAO'
    end
    object db_VendasTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 30
    end
    object db_VendasDESCONTO_ACRESCIMO: TStringField
      FieldName = 'DESCONTO_ACRESCIMO'
      Size = 30
    end
    object db_VendasPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object db_VendasCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 10
    end
    object db_VendasTABELA: TIntegerField
      FieldName = 'TABELA'
      Required = True
    end
    object db_VendasIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      Size = 10
    end
    object db_VendasDEVOLUCAOCREDITADA: TStringField
      FieldName = 'DEVOLUCAOCREDITADA'
      Size = 10
    end
    object db_VendasCLIENTE_CEP: TStringField
      FieldName = 'CLIENTE_CEP'
      ReadOnly = True
      Size = 30
    end
    object db_VendasHORA: TTimeField
      FieldName = 'HORA'
    end
  end
  object db_VendasItens: TFDQuery
    AfterOpen = db_VendasItensAfterOpen
    MasterSource = DS_Vendas
    MasterFields = 'NOTAFISCAL'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_NOTAFISCAL_ITENS'
      'WHERE'
      'NUMERO_NF=:NOTAFISCAL'
      'ORDER BY PRODUTO')
    Left = 320
    Top = 96
    ParamData = <
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_VendasItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_VendasItensNUMERO_NF: TIntegerField
      FieldName = 'NUMERO_NF'
      Required = True
    end
    object db_VendasItensSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 30
    end
    object db_VendasItensOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Required = True
      Size = 30
    end
    object db_VendasItensEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
      Required = True
    end
    object db_VendasItensCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object db_VendasItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Required = True
    end
    object db_VendasItensCFOP: TIntegerField
      FieldName = 'CFOP'
      Required = True
    end
    object db_VendasItensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ReadOnly = True
      Size = 30
    end
    object db_VendasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 200
    end
    object db_VendasItensCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Size = 30
    end
    object db_VendasItensSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 30
    end
    object db_VendasItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 30
    end
    object db_VendasItensQTDE: TBCDField
      FieldName = 'QTDE'
      DisplayFormat = '###,##0'
    end
    object db_VendasItensVLR_UNITARIO: TBCDField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasItensVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasItensIPI_ALIQUOTA: TBCDField
      FieldName = 'IPI_ALIQUOTA'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasItensVLR_IPI: TBCDField
      FieldName = 'VLR_IPI'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasItensICMS_ALIQUOTA: TBCDField
      FieldName = 'ICMS_ALIQUOTA'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasItensVLR_ICMS: TBCDField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasItensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasItensDESCONTO_VALOR: TBCDField
      FieldName = 'DESCONTO_VALOR'
      DisplayFormat = '###,##0.00'
    end
  end
end
