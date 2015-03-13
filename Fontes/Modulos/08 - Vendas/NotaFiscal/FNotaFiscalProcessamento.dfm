object FrmNotaFiscalProcessamento: TFrmNotaFiscalProcessamento
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'NF-e (Nota Fiscal Eletr'#244'nica)'
  ClientHeight = 424
  ClientWidth = 970
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
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 970
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 970
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 970
      Height = 33
      ExplicitWidth = 970
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 308
        Caption = 'Processamento de Nota Fiscal Eletr'#244'nica'
        ExplicitWidth = 308
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 384
    Width = 970
    Height = 40
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      970
      40)
    object BtnSair: TBitBtn
      Left = 879
      Top = 6
      Width = 80
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = BtnSairClick
    end
    object BtnDANFE: TBitBtn
      Left = 17
      Top = 6
      Width = 80
      Height = 25
      Caption = 'DANFE...'
      TabOrder = 1
      OnClick = BtnDANFEClick
    end
    object btnGerarPDF: TBitBtn
      Left = 98
      Top = 6
      Width = 80
      Height = 25
      Caption = 'Gerar PDF...'
      TabOrder = 2
      OnClick = btnGerarPDFClick
    end
    object BtnSituacaoSEFAZ: TBitBtn
      Left = 179
      Top = 6
      Width = 101
      Height = 25
      Caption = 'Situa'#231#227'o na SEFAZ'
      TabOrder = 3
      OnClick = BtnSituacaoSEFAZClick
    end
    object BtnCancelarNFe: TBitBtn
      Left = 281
      Top = 6
      Width = 80
      Height = 25
      Caption = 'Cancelar NF-e'
      TabOrder = 4
      OnClick = BtnCancelarNFeClick
    end
    object BtnInutilizarNFe: TBitBtn
      Left = 561
      Top = 6
      Width = 80
      Height = 25
      Caption = 'Inutilizar NF-e'
      Enabled = False
      TabOrder = 7
      Visible = False
      OnClick = BtnInutilizarNFeClick
    end
    object BtnEnviarEMailNFe: TBitBtn
      Left = 461
      Top = 6
      Width = 98
      Height = 25
      Caption = 'Enviar por e-Mail'
      TabOrder = 6
      OnClick = BtnEnviarEMailNFeClick
    end
    object BitBtn1: TBitBtn
      Left = 362
      Top = 6
      Width = 98
      Height = 25
      Caption = 'Revalidar XML'
      TabOrder = 5
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 970
    Height = 351
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 42
      Width = 968
      Height = 308
      Align = alClient
      DataSource = DS_Vendas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial Narrow'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NFE_VALIDADO'
          Title.Caption = 'VALIDADO:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NFE_ASSINADO'
          Title.Caption = 'ASSINADO:'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NFE_TRANSMITIDO'
          Title.Caption = 'TRANSMITIDO:'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMISSAO'
          Title.Caption = 'DATA:'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOTAFISCAL'
          Title.Caption = 'NUMERO NF:'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Title.Caption = 'MODELO:'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIE'
          Title.Caption = 'S'#201'RIE:'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NFE_RECIBO'
          Title.Caption = 'RECIBO:'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NFE_CHAVEACESSO'
          Title.Caption = 'CHAVE DE ACESSO:'
          Width = 235
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NFE_PROTOCOLOUSO'
          Title.Caption = 'PROTOCOLO USO:'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NFE_SITUACAOSEFAZ'
          Title.Caption = 'SITUA'#199#195'O:'
          Width = 75
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 968
      Height = 41
      Align = alTop
      TabOrder = 0
      object BtnProcurarNF: TBitBtn
        Left = 16
        Top = 10
        Width = 151
        Height = 25
        Caption = 'F8 - Procurar Nota Fiscal... '
        TabOrder = 0
        OnClick = BtnProcurarNFClick
      end
    end
  end
  object dbProcurarNFe: TIDBEditDialog
    Left = 176
    Top = 6
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
    DialogWidth = 990
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
  object MemoMSG: TMemo
    Left = 688
    Top = 224
    Width = 249
    Height = 130
    Lines.Strings = (
      'teste')
    TabOrder = 4
    Visible = False
  end
  object db_Vendas_NFE: TFDQuery
    BeforeOpen = db_Vendas_NFEBeforeOpen
    AfterPost = db_Vendas_NFEAfterPost
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM VENDAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      ''
      'ORDER BY EMISSAO DESC, NOTAFISCAL')
    Left = 616
    Top = 8
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
    object db_Vendas_NFECODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_Vendas_NFEEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      ReadOnly = True
      Required = True
    end
    object db_Vendas_NFENOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ReadOnly = True
      Required = True
    end
    object db_Vendas_NFEMODELO: TStringField
      FieldName = 'MODELO'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object db_Vendas_NFESERIE: TStringField
      FieldName = 'SERIE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object db_Vendas_NFETIPONF: TStringField
      FieldName = 'TIPONF'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object db_Vendas_NFEEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
      ReadOnly = True
      Required = True
    end
    object db_Vendas_NFEOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object db_Vendas_NFECLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      ReadOnly = True
      Required = True
    end
    object db_Vendas_NFEVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      ReadOnly = True
      Required = True
    end
    object db_Vendas_NFECFOP: TIntegerField
      FieldName = 'CFOP'
      ReadOnly = True
      Required = True
    end
    object db_Vendas_NFETABELA: TIntegerField
      FieldName = 'TABELA'
      ReadOnly = True
      Required = True
    end
    object db_Vendas_NFEFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      ReadOnly = True
      Required = True
    end
    object db_Vendas_NFETRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      ReadOnly = True
      Required = True
    end
    object db_Vendas_NFENOTAFISCALORIGEM: TIntegerField
      FieldName = 'NOTAFISCALORIGEM'
      ReadOnly = True
    end
    object db_Vendas_NFEDATA_ENTRADASAIDA: TSQLTimeStampField
      FieldName = 'DATA_ENTRADASAIDA'
      ReadOnly = True
    end
    object db_Vendas_NFETIPOPAGAMENTO: TStringField
      FieldName = 'TIPOPAGAMENTO'
      ReadOnly = True
      Size = 30
    end
    object db_Vendas_NFEIE_SUBSTITUTO_TRIBUTARIO: TStringField
      FieldName = 'IE_SUBSTITUTO_TRIBUTARIO'
      ReadOnly = True
      Size = 30
    end
    object db_Vendas_NFEICMS_BASECALCULO: TBCDField
      FieldName = 'ICMS_BASECALCULO'
      ReadOnly = True
    end
    object db_Vendas_NFEICMS_VALOR: TBCDField
      FieldName = 'ICMS_VALOR'
      ReadOnly = True
    end
    object db_Vendas_NFEICMS_BASECALCULO_SUBSTITUICAO: TBCDField
      FieldName = 'ICMS_BASECALCULO_SUBSTITUICAO'
      ReadOnly = True
    end
    object db_Vendas_NFEICMS_BASECALCULO_SUBSTITUICAO_VALOR: TBCDField
      FieldName = 'ICMS_BASECALCULO_SUBSTITUICAO_VALOR'
      ReadOnly = True
    end
    object db_Vendas_NFEICMS_REDUCAO: TBCDField
      FieldName = 'ICMS_REDUCAO'
      ReadOnly = True
    end
    object db_Vendas_NFEICMS_REDUCAO_VALOR: TBCDField
      FieldName = 'ICMS_REDUCAO_VALOR'
      ReadOnly = True
    end
    object db_Vendas_NFEIPI_BASECALCULO: TBCDField
      FieldName = 'IPI_BASECALCULO'
      ReadOnly = True
    end
    object db_Vendas_NFEIPI_VALOR: TBCDField
      FieldName = 'IPI_VALOR'
      ReadOnly = True
    end
    object db_Vendas_NFEISS: TBCDField
      FieldName = 'ISS'
      ReadOnly = True
    end
    object db_Vendas_NFEISS_BASECALCULO: TBCDField
      FieldName = 'ISS_BASECALCULO'
      ReadOnly = True
    end
    object db_Vendas_NFEISS_VALOR: TBCDField
      FieldName = 'ISS_VALOR'
      ReadOnly = True
    end
    object db_Vendas_NFESIMPLESNACIONAL_ALIQUOTA: TBCDField
      FieldName = 'SIMPLESNACIONAL_ALIQUOTA'
      ReadOnly = True
    end
    object db_Vendas_NFESIMPLESNACIONAL_VALOR: TBCDField
      FieldName = 'SIMPLESNACIONAL_VALOR'
      ReadOnly = True
    end
    object db_Vendas_NFEVLR_FRETE: TBCDField
      FieldName = 'VLR_FRETE'
      ReadOnly = True
    end
    object db_Vendas_NFEVLR_SEGURO: TBCDField
      FieldName = 'VLR_SEGURO'
      ReadOnly = True
    end
    object db_Vendas_NFEVLR_DESPESAS_ASSESSORIAS: TBCDField
      FieldName = 'VLR_DESPESAS_ASSESSORIAS'
      ReadOnly = True
    end
    object db_Vendas_NFEDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      ReadOnly = True
    end
    object db_Vendas_NFEVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      ReadOnly = True
    end
    object db_Vendas_NFEVLR_RECEBIDO: TBCDField
      FieldName = 'VLR_RECEBIDO'
      ReadOnly = True
    end
    object db_Vendas_NFEVLR_CARTAO: TBCDField
      FieldName = 'VLR_CARTAO'
      ReadOnly = True
    end
    object db_Vendas_NFETROCO: TBCDField
      FieldName = 'TROCO'
      ReadOnly = True
    end
    object db_Vendas_NFEVLR_CAIXA: TBCDField
      FieldName = 'VLR_CAIXA'
      ReadOnly = True
    end
    object db_Vendas_NFEFRETE: TStringField
      FieldName = 'FRETE'
      ReadOnly = True
      Size = 30
    end
    object db_Vendas_NFEFRETE_QUANTIDADE: TIntegerField
      FieldName = 'FRETE_QUANTIDADE'
      ReadOnly = True
    end
    object db_Vendas_NFEFRETE_ESPECIE: TStringField
      FieldName = 'FRETE_ESPECIE'
      ReadOnly = True
      Size = 30
    end
    object db_Vendas_NFEFRETE_MARCA: TStringField
      FieldName = 'FRETE_MARCA'
      ReadOnly = True
      Size = 30
    end
    object db_Vendas_NFEFRETE_NUMERO: TStringField
      FieldName = 'FRETE_NUMERO'
      ReadOnly = True
      Size = 30
    end
    object db_Vendas_NFEFRETE_PBRUTO: TBCDField
      FieldName = 'FRETE_PBRUTO'
      ReadOnly = True
    end
    object db_Vendas_NFEFRETE_PLIQUIDO: TBCDField
      FieldName = 'FRETE_PLIQUIDO'
      ReadOnly = True
    end
    object db_Vendas_NFEOBS1: TStringField
      FieldName = 'OBS1'
      ReadOnly = True
      Size = 5000
    end
    object db_Vendas_NFEOBS2: TStringField
      FieldName = 'OBS2'
      ReadOnly = True
      Size = 5000
    end
    object db_Vendas_NFETIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      ReadOnly = True
      Size = 30
    end
    object db_Vendas_NFEDESCONTO_ACRESCIMO: TStringField
      FieldName = 'DESCONTO_ACRESCIMO'
      ReadOnly = True
      Size = 30
    end
    object db_Vendas_NFEPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
      ReadOnly = True
    end
    object db_Vendas_NFECONFERENCIA: TIntegerField
      FieldName = 'CONFERENCIA'
      ReadOnly = True
    end
    object db_Vendas_NFECUPOM: TStringField
      FieldName = 'CUPOM'
      ReadOnly = True
      Size = 10
    end
    object db_Vendas_NFEIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      ReadOnly = True
      Size = 10
    end
    object db_Vendas_NFEQTDE_PRODUTOS: TIntegerField
      FieldName = 'QTDE_PRODUTOS'
      ReadOnly = True
    end
    object db_Vendas_NFEVALOR_PRODUTOS: TBCDField
      FieldName = 'VALOR_PRODUTOS'
      ReadOnly = True
    end
    object db_Vendas_NFETOTAL_NF: TBCDField
      FieldName = 'TOTAL_NF'
      ReadOnly = True
    end
    object db_Vendas_NFEREGISTRODIARIO: TIntegerField
      FieldName = 'REGISTRODIARIO'
      ReadOnly = True
    end
    object db_Vendas_NFEDEVOLUCAOCREDITADA: TStringField
      FieldName = 'DEVOLUCAOCREDITADA'
      ReadOnly = True
      Size = 10
    end
    object db_Vendas_NFECREDITOABATIMENTO: TBCDField
      FieldName = 'CREDITOABATIMENTO'
      ReadOnly = True
    end
    object db_Vendas_NFESTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      Size = 30
    end
    object db_Vendas_NFEHORA: TTimeField
      FieldName = 'HORA'
      ReadOnly = True
    end
    object db_Vendas_NFENFE_FINALIDADE: TIntegerField
      FieldName = 'NFE_FINALIDADE'
      ReadOnly = True
    end
    object db_Vendas_NFENFE_CERTIFICADO: TStringField
      FieldName = 'NFE_CERTIFICADO'
      ReadOnly = True
      Size = 200
    end
    object db_Vendas_NFENFE_ASSINADO: TStringField
      FieldName = 'NFE_ASSINADO'
      ReadOnly = True
      Size = 10
    end
    object db_Vendas_NFENFE_ASSINATURA: TStringField
      FieldName = 'NFE_ASSINATURA'
      ReadOnly = True
      Size = 200
    end
    object db_Vendas_NFENFE_VALIDADO: TStringField
      FieldName = 'NFE_VALIDADO'
      ReadOnly = True
      Size = 10
    end
    object db_Vendas_NFENFE_TRANSMITIDO: TStringField
      FieldName = 'NFE_TRANSMITIDO'
      ReadOnly = True
      Size = 10
    end
    object db_Vendas_NFENFE_DANFEIMPRESSA: TStringField
      FieldName = 'NFE_DANFEIMPRESSA'
      ReadOnly = True
      Size = 10
    end
    object db_Vendas_NFENFE_SITUACAOSEFAZ: TStringField
      FieldName = 'NFE_SITUACAOSEFAZ'
      ReadOnly = True
      Size = 5000
    end
    object db_Vendas_NFENFE_APROVADA: TStringField
      FieldName = 'NFE_APROVADA'
      ReadOnly = True
      Size = 10
    end
    object db_Vendas_NFENFE_NFECANCELADA: TStringField
      FieldName = 'NFE_NFECANCELADA'
      ReadOnly = True
      Size = 10
    end
    object db_Vendas_NFENFE_RECIBO: TStringField
      FieldName = 'NFE_RECIBO'
      ReadOnly = True
      Size = 200
    end
    object db_Vendas_NFENFE_DATATRANSMISSAO: TSQLTimeStampField
      FieldName = 'NFE_DATATRANSMISSAO'
      ReadOnly = True
    end
    object db_Vendas_NFENFE_HORATRANSMISSAO: TTimeField
      FieldName = 'NFE_HORATRANSMISSAO'
      ReadOnly = True
    end
    object db_Vendas_NFENFE_CHAVEACESSO: TStringField
      FieldName = 'NFE_CHAVEACESSO'
      ReadOnly = True
      Size = 200
    end
    object db_Vendas_NFENFE_PROTOCOLOUSO: TStringField
      FieldName = 'NFE_PROTOCOLOUSO'
      ReadOnly = True
      Size = 200
    end
    object db_Vendas_NFENFE_SITUACAOCODIGO: TStringField
      FieldName = 'NFE_SITUACAOCODIGO'
      ReadOnly = True
      Size = 30
    end
    object db_Vendas_NFENFE_LOTE: TIntegerField
      FieldName = 'NFE_LOTE'
      ReadOnly = True
    end
    object db_Vendas_NFENFE_ARQUIVO: TStringField
      FieldName = 'NFE_ARQUIVO'
      ReadOnly = True
      Size = 200
    end
    object db_Vendas_NFECANCELAMENTO_MOTIVO: TStringField
      FieldName = 'CANCELAMENTO_MOTIVO'
      ReadOnly = True
      Size = 5000
    end
    object db_Vendas_NFECANCELAMENTO_DATA: TSQLTimeStampField
      FieldName = 'CANCELAMENTO_DATA'
      ReadOnly = True
    end
    object db_Vendas_NFECANCELAMENTO_USUARIO: TStringField
      FieldName = 'CANCELAMENTO_USUARIO'
      ReadOnly = True
      Size = 200
    end
    object db_Vendas_NFECANCELAMENTO_CODIGORETORNO: TIntegerField
      FieldName = 'CANCELAMENTO_CODIGORETORNO'
      ReadOnly = True
    end
    object db_Vendas_NFECANCELAMENTO_PROTOCOLO: TStringField
      FieldName = 'CANCELAMENTO_PROTOCOLO'
      ReadOnly = True
      Size = 200
    end
    object db_Vendas_NFECANCELAMENTO_SITUACAO: TStringField
      FieldName = 'CANCELAMENTO_SITUACAO'
      ReadOnly = True
      Size = 5000
    end
  end
  object DS_Vendas: TDataSource
    DataSet = db_Vendas_NFE
    Left = 704
    Top = 8
  end
end
