object FrmPedidoAprovarVenda: TFrmPedidoAprovarVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Aprova'#231#227'o de Pedido de Venda'
  ClientHeight = 502
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvGroupBox1: TGroupBox
    Left = 0
    Top = 123
    Width = 1028
    Height = 331
    Align = alClient
    Caption = 'Edi'#231#227'o de Pedidos'
    TabOrder = 1
    ExplicitWidth = 1052
    object AdvGroupBox3: TGroupBox
      Left = 3
      Top = 275
      Width = 1046
      Height = 53
      Align = alBottom
      Caption = 'TOTAIS'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label7: TLabel
        Left = 77
        Top = 28
        Width = 81
        Height = 13
        Caption = 'Quantidade Total:'
      end
      object Label9: TLabel
        Left = 282
        Top = 28
        Width = 55
        Height = 13
        Caption = 'Valor Bruto:'
      end
      object Label6: TLabel
        Left = 453
        Top = 28
        Width = 71
        Height = 13
        Caption = 'Desconto Total:'
      end
      object Label8: TLabel
        Left = 657
        Top = 28
        Width = 64
        Height = 13
        Caption = 'Valor Liquido:'
      end
      object DBEdit1: TDBEdit
        Left = 183
        Top = 23
        Width = 72
        Height = 21
        Color = clBtnFace
        DataField = 'QTDE_TOTAL'
        DataSource = ds_Pedido
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 350
        Top = 23
        Width = 86
        Height = 21
        Color = clBtnFace
        DataField = 'VLR_PRODUTOS'
        DataSource = ds_Pedido
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 546
        Top = 23
        Width = 82
        Height = 21
        Color = clBtnFace
        DataField = 'VLR_DESCONTO'
        DataSource = ds_Pedido
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 739
        Top = 23
        Width = 86
        Height = 21
        Color = clBtnFace
        DataField = 'VLR_TOTAL'
        DataSource = ds_Pedido
        TabOrder = 3
      end
    end
    object AdvGroupBox2: TGroupBox
      Left = 3
      Top = 111
      Width = 1046
      Height = 164
      Align = alBottom
      Caption = '[ ITENS DO PEDIDO DE VENDA ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object dbGrid_Produtos: TDBGrid
        Left = 3
        Top = 16
        Width = 1040
        Height = 145
        HelpType = htKeyword
        TabStop = False
        Align = alClient
        Ctl3D = True
        DataSource = ds_PedidoItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = 'Calibri'
        TitleFont.Style = []
        OnKeyDown = dbGrid_ProdutosKeyDown
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Caption = 'Produto:'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o:'
            Width = 428
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'Qtde:'
            Width = 75
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'VLR_UNIT'
            Title.Caption = 'Valor Unit:'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Title.Caption = 'Valor Total:'
            Width = 110
            Visible = True
          end>
      end
    end
    object DBAdvGrid1: TDBGrid
      Left = 3
      Top = 16
      Width = 1046
      Height = 95
      Align = alClient
      DataSource = ds_Pedido
      DrawingStyle = gdsClassic
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -12
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'PEDIDO:'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'DATA EMISS'#195'O:'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_ENTREGA'
          Title.Caption = 'DATA ENTREGA:'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE_NOME'
          Title.Caption = 'CLIENTE:'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENDEDOR_NOME'
          Title.Caption = 'VENDEDOR:'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE_TOTAL'
          Title.Caption = 'QTDE TOTAL:'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_TOTAL'
          Title.Caption = 'VALOR TOTAL:'
          Width = 83
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'APROVADO'
          Title.Caption = 'APROVADO:'
          Width = 73
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'STATUS'
          Title.Caption = 'FATURADO:'
          Width = 69
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRODUZINDO'
          Title.Caption = 'PRODUZINDO:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORDEMPRODUCAO'
          Title.Caption = 'ORDEM PRODU'#199#195'O:'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORMA_PAGTO_NOME'
          Title.Caption = 'FORMA DE PAGAMENTO:'
          Width = 139
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 454
    Width = 1028
    Height = 48
    Align = alBottom
    TabOrder = 2
    ExplicitWidth = 1052
    object Btnaprovar: TBitBtn
      Left = 5
      Top = 5
      Width = 75
      Height = 40
      Caption = 'Aprovar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnaprovarClick
    end
    object Btndesaprovar: TBitBtn
      Left = 86
      Top = 6
      Width = 75
      Height = 40
      Caption = 'Reabrir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtndesaprovarClick
    end
    object Btnsair: TBitBtn
      Left = 266
      Top = 5
      Width = 75
      Height = 40
      Caption = 'Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BtnsairClick
    end
    object BtnProcurar: TBitBtn
      Left = 183
      Top = 5
      Width = 75
      Height = 40
      Caption = 'Procurar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtnProcurarClick
    end
  end
  object dbeditPedidoProcurar: TIDBEditDialog
    Left = 859
    Top = 307
    Width = 65
    Height = 22
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
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
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
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
        FieldName = 'DATA'
        WhereSyntax = 'DATA'
        DisplayLabel = 'DATA:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DATA_ENTREGA'
        WhereSyntax = 'DATA_ENTREGA'
        DisplayLabel = 'DATA ENTREGA:'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
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
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'VENDEDOR_NOME'
        WhereSyntax = 'VENDEDOR_NOME'
        DisplayLabel = 'VENDEDOR:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'QTDE_TOTAL'
        WhereSyntax = 'QTDE_TOTAL'
        DisplayLabel = 'QTDE TOTAL:'
        DisplayFormat = '###,##0'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VLR_TOTAL'
        WhereSyntax = 'VLR_TOTAL'
        DisplayLabel = 'VALOR TOTAL:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 14
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'APROVADO'
        WhereSyntax = 'APROVADO'
        DisplayLabel = 'APROVADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'STATUS'
        WhereSyntax = 'STATUS'
        DisplayLabel = 'FATURADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'PRODUZINDO'
        WhereSyntax = 'PRODUZINDO'
        DisplayLabel = 'PRODUZINDO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
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
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1028
    Height = 36
    Align = alTop
    TabOrder = 4
    ExplicitWidth = 1052
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 1052
      ExplicitWidth = 1052
      inherited LblBarraTitulo: TLabel
        Width = 239
        Caption = 'Aprova'#231#227'o de Pedido de Venda'
        ExplicitWidth = 239
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 53
    Width = 1028
    Height = 70
    Align = alTop
    Caption = 'Par'#226'metros de Pedidos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1052
    object EditPedido: TLabeledEdit
      Left = 14
      Top = 37
      Width = 121
      Height = 23
      EditLabel.Width = 113
      EditLabel.Height = 15
      EditLabel.Caption = 'C'#211'DIGO DO PEDIDO:'
      NumbersOnly = True
      TabOrder = 0
      OnChange = EditPedidoChange
    end
    object rdgFiltroPedidos: TRadioGroup
      Left = 584
      Top = 17
      Width = 466
      Height = 51
      Align = alRight
      Caption = 'Pedidos'
      Columns = 4
      ItemIndex = 3
      Items.Strings = (
        'Pendentes'
        'Aprovados'
        'Faturados'
        'Todos')
      TabOrder = 1
      OnClick = rdgFiltroPedidosClick
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 36
    Width = 1028
    Height = 17
    Align = alTop
    PopupMenu = PopupMenu1
    TabOrder = 5
    ExplicitWidth = 1052
  end
  object db_Pedido: TFDQuery
    AfterOpen = db_PedidoAfterOpen
    AfterScroll = db_PedidoAfterScroll
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      'STATUS IN ('#39'N'#39','#39'NAO'#39')')
    Left = 72
    Top = 96
    object db_PedidoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_PedidoTITULO: TStringField
      FieldName = 'TITULO'
      ReadOnly = True
      Size = 274
    end
    object db_PedidoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
    end
    object db_PedidoDATA_FATURAMENTO: TSQLTimeStampField
      FieldName = 'DATA_FATURAMENTO'
    end
    object db_PedidoDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
    end
    object db_PedidoTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object db_PedidoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object db_PedidoCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_PedidoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Required = True
    end
    object db_PedidoVENDEDOR_NOME: TStringField
      FieldName = 'VENDEDOR_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_PedidoTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Required = True
    end
    object db_PedidoTRANSPORTADORA_NOME: TStringField
      FieldName = 'TRANSPORTADORA_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_PedidoFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
      Required = True
    end
    object db_PedidoQTDE_TOTAL: TIntegerField
      FieldName = 'QTDE_TOTAL'
      ReadOnly = True
      DisplayFormat = '###,##0'
    end
    object db_PedidoVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoVLR_PRODUTOS: TBCDField
      FieldName = 'VLR_PRODUTOS'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoAPROVADO: TStringField
      FieldName = 'APROVADO'
      ReadOnly = True
      Size = 3
    end
    object db_PedidoSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      Size = 3
    end
    object db_PedidoITENS_IMPORTADO: TStringField
      FieldName = 'ITENS_IMPORTADO'
      Size = 10
    end
    object db_PedidoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      ReadOnly = True
      Size = 3
    end
    object db_PedidoRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 200
    end
    object db_PedidoPRODUZINDO: TStringField
      FieldName = 'PRODUZINDO'
      ReadOnly = True
      Size = 3
    end
    object db_PedidoORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      ReadOnly = True
    end
    object db_PedidoFORMA_PAGTO_NOME: TStringField
      FieldName = 'FORMA_PAGTO_NOME'
      ReadOnly = True
      Size = 200
    end
  end
  object db_PedidoItens: TFDQuery
    MasterSource = ds_Pedido
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PEDIDOS_ITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 160
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 3
      end>
    object db_PedidoItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_PedidoItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_PedidoItensAPROVADO: TStringField
      FieldName = 'APROVADO'
      Required = True
      Size = 10
    end
    object db_PedidoItensDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
    end
    object db_PedidoItensCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_PedidoItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_PedidoItensTABELA: TIntegerField
      FieldName = 'TABELA'
    end
    object db_PedidoItensFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object db_PedidoItensTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_PedidoItensTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object db_PedidoItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      Size = 30
    end
    object db_PedidoItensGRADE_TAMANHOS: TIntegerField
      FieldName = 'GRADE_TAMANHOS'
    end
    object db_PedidoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_PedidoItensUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_PedidoItensQTDE: TBCDField
      FieldName = 'QTDE'
      DisplayFormat = '###,##0'
    end
    object db_PedidoItensVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoItensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoItensVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoItensVLR_IMPOSTOS: TBCDField
      FieldName = 'VLR_IMPOSTOS'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoItensVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoItensQTDE_LIBERADA: TIntegerField
      FieldName = 'QTDE_LIBERADA'
      DisplayFormat = '###,##0'
    end
    object db_PedidoItensQTDE_FATURADA: TIntegerField
      FieldName = 'QTDE_FATURADA'
      DisplayFormat = '###,##0'
    end
    object db_PedidoItensQTDE_CANCELADA: TIntegerField
      FieldName = 'QTDE_CANCELADA'
      DisplayFormat = '###,##0'
    end
    object db_PedidoItensORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
  end
  object ds_Pedido: TDataSource
    AutoEdit = False
    DataSet = db_Pedido
    Left = 64
    Top = 192
  end
  object ds_PedidoItens: TDataSource
    DataSet = db_PedidoItens
    Left = 152
    Top = 200
  end
  object POP_Produto: TPopupMenu
    Left = 344
    Top = 96
    object ProcurarProduto1: TMenuItem
      Caption = 'Procurar Produto'
      ShortCut = 119
    end
  end
  object SP_Aprovar: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPVENDA_PEDIDOAPROVAR'
    Left = 184
    Top = 288
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NPEDIDO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object SP_MovimentoAtualizar: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPMVTO_PRODUTOSATUALIZA'
    Left = 184
    Top = 344
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 24
    object AprovarTudo1: TMenuItem
      Caption = 'Aprovar Tudo'
      OnClick = AprovarTudo1Click
    end
    object Desaprovartudo1: TMenuItem
      Caption = 'Desaprovar tudo'
      OnClick = Desaprovartudo1Click
    end
  end
  object db_ChecarAtrasos: TFDQuery
    BeforeOpen = db_ChecarAtrasosBeforeOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  * FROM VIEW_ATRASOS'
      'where'
      'EMPRESA=:EMPRESA'
      'AND'
      'CLIENTE=:CLIENTE')
    Left = 328
    Top = 240
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
