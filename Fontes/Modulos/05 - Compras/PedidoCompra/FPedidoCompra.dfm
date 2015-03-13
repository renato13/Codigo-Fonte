object FrmPedidoCompra: TFrmPedidoCompra
  Left = 0
  Top = 0
  Caption = 'Pedido de Compra'
  ClientHeight = 490
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 41
    Align = alTop
    BevelWidth = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    inline FrmFrameBarra1: TFrmFrameBarra
      Left = 2
      Top = 2
      Width = 930
      Height = 33
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 930
      ExplicitHeight = 33
      inherited W7Panel1: TPanel
        Width = 930
        Height = 33
        ExplicitWidth = 930
        ExplicitHeight = 33
        inherited LblBarraTitulo: TLabel
          Width = 928
          Height = 31
          Caption = 'Pedido de Compra'
          ExplicitWidth = 141
        end
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 934
    Height = 391
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 2
      Top = 17
      Width = 930
      Height = 372
      Align = alClient
      TabOrder = 0
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 928
        Height = 160
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 78
          Top = 2
          Width = 26
          Height = 15
          Caption = 'Data'
        end
        object Label2: TLabel
          Left = 157
          Top = 2
          Width = 70
          Height = 15
          Caption = 'Data Entrega'
        end
        object Label3: TLabel
          Left = 521
          Top = 41
          Width = 103
          Height = 15
          Caption = 'Pedido Fornecedor'
        end
        object Label4: TLabel
          Left = 646
          Top = 41
          Width = 76
          Height = 15
          Caption = 'Valor do Frete'
        end
        object EditCliente: TIDBEditDialog
          Left = 239
          Top = 18
          Width = 65
          Height = 23
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = ''
          Visible = True
          EditType = etAlphaNumeric
          EmptyText = 'Tecle F8'
          FocusColor = clBtnFace
          LabelCaption = 'Fornecedor:'
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
          ButtonHint = 'C'#243'digo do Fornecedor'
          Etched = False
          ButtonCaption = '...'
          DataField = 'FORNECEDOR'
          DataSource = BaseDados.ds_PedidoCompra
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditClienteNome
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
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'TIPO in ('#39'FORNECEDOR'#39','#39'OFICINA'#39','#39'TERCEIRIZADO'#39','#39'TRANSPORTADORA'#39')'
            'AND'
            'COALESCE(ATIVO,'#39'S'#39')<>'#39'N'#39
            'AND'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'CODIGO'
              WhereSyntax = 'CODIGO'
              DisplayLabel = 'C'#243'digo'
              DisplayWidth = 10
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
              DisplayLabel = 'Nome/Raz'#227'o Social'
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
        object EditData: TDBEdit
          Left = 78
          Top = 18
          Width = 75
          Height = 23
          DataField = 'DATA'
          DataSource = BaseDados.ds_PedidoCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditPedido: TDBEdit
          Left = 7
          Top = 18
          Width = 65
          Height = 23
          DataField = 'CODIGO'
          DataSource = BaseDados.ds_PedidoCompra
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditDataEntrega: TDBEdit
          Left = 157
          Top = 18
          Width = 75
          Height = 23
          DataField = 'DATA_ENTREGA'
          DataSource = BaseDados.ds_PedidoCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object EditPagamento: TIDBEditDialog
          Left = 7
          Top = 59
          Width = 65
          Height = 23
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Text = ''
          Visible = True
          EditType = etAlphaNumeric
          EmptyText = 'Tecle F8'
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
          DataSource = BaseDados.ds_PedidoCompra
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
              DisplayWidth = 80
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
        object EditNomeFormaPagto: TEdit
          Left = 72
          Top = 59
          Width = 169
          Height = 23
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = '***'
        end
        object EditNomeTrasportadora: TEdit
          Left = 311
          Top = 59
          Width = 204
          Height = 23
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Text = '***'
        end
        object EditTransportadora: TIDBEditDialog
          Left = 245
          Top = 59
          Width = 65
          Height = 23
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          Text = ''
          Visible = True
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
          DataField = 'TRANSPORTADORA'
          DataSource = BaseDados.ds_PedidoCompra
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeTrasportadora
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'CODIGO=:CODIGO'
            'AND'
            'TIPO='#39'TRANSPORTADORA'#39)
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'TIPO='#39'TRANSPORTADORA'#39
            'AND'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(*) FROM CAD_CLIENTES'
            'WHERE'
            'TIPO='#39'TRANSPORTADORA'#39
            'AND'
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
              DisplayWidth = 80
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
        object EditClienteNome: TEdit
          Left = 306
          Top = 18
          Width = 246
          Height = 23
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Text = '***'
        end
        object EstSearchDialogZeos1: TIDBEditDialog
          Left = 557
          Top = 19
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
          TabOrder = 5
          Text = ''
          Visible = True
          EditType = etUppercase
          FocusColor = clWindow
          LabelCaption = 'Centro de Custo:'
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
          DataField = 'DEPARTAMENTO'
          DataSource = BaseDados.ds_PedidoCompra
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeCentroCusto
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_DEPARTAMENTOS'
            'WHERE'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_DEPARTAMENTOS'
            'WHERE'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(CODIGO) FROM CAD_DEPARTAMENTOS'
            'WHERE'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'CODIGO'
              WhereSyntax = 'CODIGO'
              DisplayLabel = 'C'#243'digo:'
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
              DefaultComparison = scBeginsWith
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
        object EditNomeCentroCusto: TEdit
          Left = 622
          Top = 18
          Width = 137
          Height = 23
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          Text = '***'
        end
        object DBEdit1: TDBEdit
          Left = 518
          Top = 59
          Width = 113
          Height = 23
          Hint = '[campo opcional] informe o Pedido do Fornecedor no sistema dele'
          DataField = 'FORNECEDORPEDIDO'
          DataSource = BaseDados.ds_PedidoCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
        object DBEdit2: TDBEdit
          Left = 646
          Top = 57
          Width = 113
          Height = 23
          Hint = 'Informe o Pedido do Fornecedor no sistema dele'
          DataField = 'FRETE_VALOR'
          DataSource = BaseDados.ds_PedidoCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 765
          Top = 6
          Width = 155
          Height = 76
          Caption = 'Frete por conta'
          DataField = 'FRETE_TIPO'
          DataSource = BaseDados.ds_PedidoCompra
          Items.Strings = (
            'Emitente (fornecedor)'
            'Destinat'#225'rio'
            'Sem Frete')
          TabOrder = 13
          Values.Strings = (
            'CIF'
            'FOB')
        end
        object GroupBox2: TGroupBox
          Left = 1
          Top = 86
          Width = 926
          Height = 73
          Align = alBottom
          Caption = 'Observa'#231#227'o'
          TabOrder = 14
          object DBMemo1: TDBMemo
            Left = 2
            Top = 17
            Width = 922
            Height = 54
            Align = alClient
            DataField = 'OBSERVACAO'
            DataSource = BaseDados.ds_PedidoCompra
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 161
        Width = 928
        Height = 154
        Align = alClient
        DataSource = BaseDados.ds_PedidoCompraItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = 'Calibri'
        TitleFont.Style = [fsBold]
        OnEditButtonClick = DBGrid1EditButtonClick
        OnEnter = DBGrid1Enter
        OnKeyDown = DBGrid1KeyDown
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'PRODUTO'
            Title.Caption = 'PRODUTO:'
            Width = 144
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'DESCRICAO'
            ReadOnly = True
            Title.Caption = 'DESCRICAO:'
            Width = 309
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UND'
            Title.Caption = 'UND:'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE_PEDIDA'
            Title.Caption = 'QUANTIDADE:'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_UNIT'
            Title.Caption = 'VALOR UNIT:'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Caption = 'DESCONTO %'
            Width = 90
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            ReadOnly = True
            Title.Caption = 'VALOR TOTAL:'
            Width = 99
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 1
        Top = 315
        Width = 928
        Height = 56
        Align = alBottom
        Enabled = False
        TabOrder = 2
        object Label5: TLabel
          Left = 10
          Top = 20
          Width = 155
          Height = 15
          Caption = 'Quantidade Total do Pedida:'
        end
        object Label6: TLabel
          Left = 294
          Top = 20
          Width = 62
          Height = 15
          Caption = 'Valor Total:'
        end
        object EditQTDETotal: TDBEdit
          Left = 168
          Top = 17
          Width = 110
          Height = 23
          Hint = 'Informe o Pedido do Fornecedor no sistema dele'
          Color = clBtnFace
          DataField = 'QTDE_PEDIDA'
          DataSource = BaseDados.ds_PedidoCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object EditValorTotal: TDBEdit
          Left = 362
          Top = 17
          Width = 102
          Height = 23
          Hint = 'Informe o Pedido do Fornecedor no sistema dele'
          Color = clBtnFace
          DataField = 'VLR_TOTAL'
          DataSource = BaseDados.ds_PedidoCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object dbProcurarPedido: TIDBEditDialog
          Left = 637
          Top = 19
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
          TabOrder = 2
          Text = ''
          Visible = False
          EditType = etAlphaNumeric
          EmptyText = 'Tecle F8'
          FocusColor = clBtnFace
          LabelCaption = '.'
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
            'SELECT * FROM VIEW_PEDIDOSCOMPRAS'
            'WHERE'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'CODIGO'
              WhereSyntax = 'CODIGO'
              DisplayLabel = 'CODIGO:'
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
              DisplayLabel = 'ENTREGA:'
              DisplayWidth = 12
              DisplayColumnWidth = 0
              FieldType = ftDateTime
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scMixed
            end
            item
              FieldName = 'FORNECEDOR'
              WhereSyntax = 'FORNECEDOR'
              DisplayLabel = 'FORNECEDOR:'
              DisplayWidth = 13
              DisplayColumnWidth = 0
              FieldType = ftInteger
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scMixed
            end
            item
              FieldName = 'FORNECEDOR_NOME'
              WhereSyntax = 'FORNECEDOR_NOME'
              DisplayLabel = 'NOME DO FORNECEDOR:'
              DisplayWidth = 40
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scBeginsWith
              SearchCase = scMixed
            end
            item
              FieldName = 'QTDE_PEDIDA'
              WhereSyntax = 'QTDE_PEDIDA'
              DisplayLabel = 'QTDE:'
              DisplayWidth = 8
              DisplayColumnWidth = 0
              FieldType = ftFloat
              Search = False
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scMixed
            end
            item
              FieldName = 'VLR_TOTAL'
              WhereSyntax = 'VLR_TOTAL'
              DisplayLabel = 'VALOR TOTAL:'
              DisplayWidth = 15
              DisplayColumnWidth = 0
              FieldType = ftFloat
              Search = False
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scMixed
            end
            item
              FieldName = 'FRETE_VALOR'
              WhereSyntax = 'FRETE_VALOR'
              DisplayLabel = 'FRETE VALOR:'
              DisplayWidth = 13
              DisplayColumnWidth = 0
              FieldType = ftFloat
              Search = False
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scMixed
            end
            item
              FieldName = 'FRETE_TIPO_STATUS'
              WhereSyntax = 'FRETE_TIPO_STATUS'
              DisplayLabel = 'FRETE:'
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
      end
      object dbProcurarProdutos: TIDBEditDialog
        Left = 124
        Top = 230
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
        LabelCaption = '.'
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
          'SELECT *  FROM VIEW_REFERENCIAS'
          'WHERE'
          ''
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'REFERENCIA'
            WhereSyntax = 'REFERENCIA'
            DisplayLabel = 'REFER'#202'NCIA:'
            DisplayWidth = 20
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'DESCRICAO'
            WhereSyntax = 'DESCRICAO'
            DisplayLabel = 'DESCRI'#199#195'O:'
            DisplayWidth = 50
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'GRUPO_NOME'
            WhereSyntax = 'GRUPO_NOME'
            DisplayLabel = 'GRUPO:'
            DisplayWidth = 20
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'PRC_CUSTO'
            WhereSyntax = 'PRC_CUSTO'
            DisplayLabel = 'PRE'#199'O CUSTO:'
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
            FieldName = 'CODIGO_FABRICANTE'
            WhereSyntax = 'CODIGO_FABRICANTE'
            DisplayLabel = 'CODIGO FABRICANTE:'
            DisplayWidth = 25
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end>
        SearchPresetList = <>
        DialogCaption = 'Pesquisa'
        DialogWidth = 900
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
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 432
    Width = 934
    Height = 58
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 432
    ExplicitWidth = 934
    inherited W7Panel1: TPanel
      Width = 934
      ExplicitWidth = 934
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
  object dbfp_PedidCompra: TfrxDBDataset
    UserName = 'dbPedidCompra'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'DATA_ENTREGA=DATA_ENTREGA'
      'REQUISICAO=REQUISICAO'
      'FORNECEDOR=FORNECEDOR'
      'FORNECEDOR_NOME=FORNECEDOR_NOME'
      'FORNECEDORPEDIDO=FORNECEDORPEDIDO'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TRANSPORTADORA_NOME=TRANSPORTADORA_NOME'
      'FORMAPAGTO=FORMAPAGTO'
      'FORMAPAGTO_NOME=FORMAPAGTO_NOME'
      'DEPARTAMENTO=DEPARTAMENTO'
      'DEPARTAMENTO_NOME=DEPARTAMENTO_NOME'
      'USUARIO=USUARIO'
      'QTDE_PEDIDA=QTDE_PEDIDA'
      'QTDE_ENTREGUE=QTDE_ENTREGUE'
      'QTDE_PENDENTE=QTDE_PENDENTE'
      'VLR_TOTAL=VLR_TOTAL'
      'FRETE_VALOR=FRETE_VALOR'
      'FRETE_TIPO=FRETE_TIPO'
      'FRETE_TIPO_STATUS=FRETE_TIPO_STATUS'
      'EFETIVADO=EFETIVADO'
      'APROVADO=APROVADO'
      'EMPRESA_1=EMPRESA_1')
    DataSet = db_PedidoCompra
    BCDToCurrency = False
    Left = 448
    Top = 304
  end
  object frx_PedidoCompra: TfrxReport
    Version = '5.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40905.983237453700000000
    ReportOptions.LastChange = 40924.460993206020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 688
    Top = 296
    Datasets = <
      item
        DataSet = dbfp_PedidCompra
        DataSetName = 'dbPedidCompra'
      end
      item
        DataSet = dbfp_PedidCompraItens
        DataSetName = 'dbPedidCompraItens'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 13.228346460000000000
        ParentFont = False
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = dbfp_PedidCompraItens
        DataSetName = 'dbPedidCompraItens'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 84.283464570000000000
          Width = 47.661410000000000000
          Height = 12.094488188976380000
          DataField = 'DESCRICAO'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
          DisplayFormat.FormatStr = '####,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidCompraItens."DESCRICAO"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 3.779527560000000000
          Width = 56.440940000000000000
          Height = 12.094488188976380000
          DataField = 'PRODUTO'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
          DisplayFormat.FormatStr = '####,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidCompraItens."PRODUTO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 391.181102360000000000
          Width = 62.362204720000000000
          Height = 12.094488190000000000
          DataField = 'QTDE_PEDIDA'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
          DisplayFormat.FormatStr = '###,###0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedidCompraItens."QTDE_PEDIDA"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 333.354330710000000000
          Width = 35.905487400000000000
          Height = 12.094488188976380000
          DataField = 'UNIDADE'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidCompraItens."UNIDADE"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 472.440944880000000000
          Width = 63.496067870000000000
          Height = 12.094488190000000000
          DataField = 'VALOR_UNIT'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
          DisplayFormat.FormatStr = '###,##0.0000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedidCompraItens."VALOR_UNIT"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 557.480314960000000000
          Width = 63.496067870000000000
          Height = 12.094488190000000000
          DataField = 'DESCONTO'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedidCompraItens."DESCONTO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 640.629921260000000000
          Width = 69.921259840000000000
          Height = 12.094488190000000000
          DataField = 'VALOR_TOTAL'
          DataSet = dbfp_PedidCompraItens
          DataSetName = 'dbPedidCompraItens'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedidCompraItens."VALOR_TOTAL"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 200.315090000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Top = 69.252010000000000000
          Width = 718.110236220000000000
          Height = 128.504020000000000000
        end
        object Memo1: TfrxMemoView
          Left = 3.779527560000000000
          Top = 99.779527559055120000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORNECEDOR:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 3.779527560000000000
          Top = 113.007874020000000000
          Width = 228.315090000000000000
          Height = 12.472440940000000000
          DataField = 'FORNECEDOR_NOME'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidCompra."FORNECEDOR_NOME"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 123.968770000000000000
          Top = 70.677165354330710000
          Width = 93.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA DE EMISS'#195'O:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 123.968770000000000000
          Top = 83.149606300000000000
          Width = 94.811070000000000000
          Height = 12.472440944881890000
          AutoWidth = True
          DataField = 'DATA'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidCompra."DATA"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 3.779527560000000000
          Top = 70.669291340000000000
          Width = 58.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ID PEDIDO:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 3.779527560000000000
          Top = 83.149606300000000000
          Width = 103.252010000000000000
          Height = 12.472440944881890000
          DataField = 'CODIGO'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidCompra."CODIGO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 84.267716540000000000
          Top = 182.929133860000000000
          Width = 59.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 391.181102360000000000
          Top = 182.929133860000000000
          Width = 71.055118110000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 3.779527560000000000
          Top = 182.929133860000000000
          Width = 71.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTO:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 333.354330708661400000
          Top = 182.929133860000000000
          Width = 35.905487400000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UND:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 98.370130000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 127.385900000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 228.165740000000000000
          Top = 69.921259842519690000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 384.543600000000000000
          Top = 99.023622050000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 117.283552440000000000
          Top = 69.921259842519690000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object MemoTitulo: TfrxMemoView
          Top = 7.559060000000000000
          Width = 550.464750000000000000
          Height = 52.913388270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'PEDIDO DE COMPRA')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 555.590910000000000000
          Top = 7.559060000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 566.149603860000000000
          Top = 9.448823780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 567.149603860000000000
          Top = 24.188981260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 567.149603860000000000
          Top = 39.307091500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 632.299215040000000000
          Top = 9.448823780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          Left = 632.299215040000000000
          Top = 24.188981260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Left = 632.299215040000000000
          Top = 39.307091500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 238.110390000000000000
          Top = 70.677165350000000000
          Width = 100.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA DE ENTREGA:')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 238.110390000000000000
          Top = 83.149606300000000000
          Width = 94.811070000000000000
          Height = 12.472440944881890000
          AutoWidth = True
          DataField = 'DATA_ENTREGA'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidCompra."DATA_ENTREGA"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          Left = 342.307360000000000000
          Top = 69.921259842519690000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo2: TfrxMemoView
          Left = 201.496287560000000000
          Top = 128.503937007874000000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TRANSPORTADORA:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 201.496287560000000000
          Top = 140.220472440000000000
          Width = 160.283550000000000000
          Height = 12.472440940000000000
          DataField = 'TRANSPORTADORA_NOME'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidCompra."TRANSPORTADORA_NOME"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Align = baWidth
          Top = 155.984408190000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Left = 385.512060000000000000
          Top = 99.779527559055120000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CENTRO DE CUSTO (DEPARTAMENTO):')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 385.512060000000000000
          Top = 113.007874020000000000
          Width = 228.315090000000000000
          Height = 12.472440940000000000
          DataField = 'DEPARTAMENTO_NOME'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidCompra."DEPARTAMENTO_NOME"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 347.716760000000000000
          Top = 70.787445510000000000
          Width = 112.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO FORNECEDOR:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 347.716760000000000000
          Top = 83.149606300000000000
          Width = 94.811070000000000000
          Height = 12.472440940000000000
          AutoWidth = True
          DataField = 'FORNECEDORPEDIDO'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidCompra."FORNECEDORPEDIDO"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 467.913730000000000000
          Top = 69.921259842519690000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 375.858690000000000000
          Top = 127.504020000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 128.503937007874000000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORMA PAGAMENTO:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 140.220472440000000000
          Width = 179.181200000000000000
          Height = 12.472440940000000000
          DataField = 'FORMAPAGTO_NOME'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidCompra."FORMAPAGTO_NOME"]')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Left = 195.614412440000000000
          Top = 127.504020000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo18: TfrxMemoView
          Left = 381.732530000000000000
          Top = 128.503937007874000000
          Width = 83.102350000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR FRETE:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 381.732530000000000000
          Top = 140.220472440000000000
          Width = 99.811070000000000000
          Height = 12.472440944881890000
          DataField = 'FRETE_VALOR'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidCompra."FRETE_VALOR"]')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 490.094932440000000000
          Top = 127.504020000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo20: TfrxMemoView
          Left = 494.677490000000000000
          Top = 128.503937007874000000
          Width = 98.220470000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FRETE POR CONTA:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 494.677490000000000000
          Top = 140.220472440000000000
          Width = 99.811070000000000000
          Height = 12.472440944881890000
          DataField = 'FRETE_TIPO_STATUS'
          DataSet = dbfp_PedidCompra
          DataSetName = 'dbPedidCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedidCompra."FRETE_TIPO_STATUS"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 472.440944881889800000
          Top = 182.929133860000000000
          Width = 71.055127870000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR UNIT:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 557.480314960629900000
          Top = 182.929133860000000000
          Width = 71.055127870000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO%:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 640.519685040000000000
          Top = 182.929133860000000000
          Width = 71.055127870000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SUBTOTAL:')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        object Memo52: TfrxMemoView
          Left = 640.629921260000000000
          Top = 3.779527560000000000
          Width = 69.921259840000000000
          Height = 12.094488188976380000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbPedidCompraItens."VALOR_TOTAL">)]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Align = baWidth
          Top = 1.889763780000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo53: TfrxMemoView
          Left = 391.181102360000000000
          Top = 3.779527560000000000
          Width = 62.362204720000000000
          Height = 12.094488188976380000
          DisplayFormat.FormatStr = '###,##0.0000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbPedidCompraItens."QTDE_PEDIDA">)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'SRV_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Align = baWidth
          Top = 1.889763780000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object ds_PedidoCompra: TDataSource
    DataSet = db_PedidoCompra
    Left = 448
    Top = 240
  end
  object db_PedidoCompra: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSCOMPRAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 448
    Top = 183
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
    object db_PedidoCompraEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      ReadOnly = True
      Required = True
    end
    object db_PedidoCompraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_PedidoCompraDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_PedidoCompraDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
      EditMask = '99/99/9999'
    end
    object db_PedidoCompraREQUISICAO: TIntegerField
      FieldName = 'REQUISICAO'
      ReadOnly = True
    end
    object db_PedidoCompraFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      ReadOnly = True
    end
    object db_PedidoCompraFORNECEDOR_NOME: TStringField
      FieldName = 'FORNECEDOR_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_PedidoCompraFORNECEDORPEDIDO: TStringField
      FieldName = 'FORNECEDORPEDIDO'
      ReadOnly = True
      Size = 30
    end
    object db_PedidoCompraTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      ReadOnly = True
    end
    object db_PedidoCompraTRANSPORTADORA_NOME: TStringField
      FieldName = 'TRANSPORTADORA_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_PedidoCompraFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      ReadOnly = True
    end
    object db_PedidoCompraFORMAPAGTO_NOME: TStringField
      FieldName = 'FORMAPAGTO_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_PedidoCompraDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
      ReadOnly = True
    end
    object db_PedidoCompraDEPARTAMENTO_NOME: TStringField
      FieldName = 'DEPARTAMENTO_NOME'
      ReadOnly = True
      Size = 30
    end
    object db_PedidoCompraUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      ReadOnly = True
    end
    object db_PedidoCompraQTDE_PEDIDA: TBCDField
      FieldName = 'QTDE_PEDIDA'
      ReadOnly = True
      DisplayFormat = '###,###0'
      EditFormat = '###,###0'
    end
    object db_PedidoCompraQTDE_ENTREGUE: TBCDField
      FieldName = 'QTDE_ENTREGUE'
      ReadOnly = True
      DisplayFormat = '###,###0'
      EditFormat = '###,###0'
    end
    object db_PedidoCompraQTDE_PENDENTE: TBCDField
      FieldName = 'QTDE_PENDENTE'
      ReadOnly = True
      DisplayFormat = '###,###0'
      EditFormat = '###,###0'
    end
    object db_PedidoCompraVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoCompraFRETE_VALOR: TBCDField
      FieldName = 'FRETE_VALOR'
      ReadOnly = True
    end
    object db_PedidoCompraFRETE_TIPO: TStringField
      FieldName = 'FRETE_TIPO'
      ReadOnly = True
      Size = 30
    end
    object db_PedidoCompraFRETE_TIPO_STATUS: TStringField
      FieldName = 'FRETE_TIPO_STATUS'
      ReadOnly = True
      Required = True
      Size = 9
    end
    object db_PedidoCompraEFETIVADO: TStringField
      FieldName = 'EFETIVADO'
      ReadOnly = True
      Size = 10
    end
    object db_PedidoCompraAPROVADO: TStringField
      FieldName = 'APROVADO'
      ReadOnly = True
      Size = 10
    end
  end
  object db_PedidoCompraItens: TFDQuery
    MasterSource = ds_PedidoCompra
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSCOMPRASITENS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 568
    Top = 184
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
    object db_PedidoCompraItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      ReadOnly = True
      Required = True
    end
    object db_PedidoCompraItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_PedidoCompraItensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ReadOnly = True
      Size = 30
    end
    object db_PedidoCompraItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 200
    end
    object db_PedidoCompraItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ReadOnly = True
      Size = 30
    end
    object db_PedidoCompraItensQTDE_PEDIDA: TBCDField
      FieldName = 'QTDE_PEDIDA'
      ReadOnly = True
      DisplayFormat = '###,###0'
      EditFormat = '###,###0'
    end
    object db_PedidoCompraItensQTDE_ENTREGUE: TBCDField
      FieldName = 'QTDE_ENTREGUE'
      ReadOnly = True
      DisplayFormat = '###,###0'
      EditFormat = '###,###0'
    end
    object db_PedidoCompraItensQTDE_RESTANTE: TBCDField
      FieldName = 'QTDE_RESTANTE'
      ReadOnly = True
      DisplayFormat = '###,###0'
      EditFormat = '###,###0'
    end
    object db_PedidoCompraItensVALOR_UNIT: TBCDField
      FieldName = 'VALOR_UNIT'
      ReadOnly = True
      DisplayFormat = '###,##0.0000'
      EditFormat = '###,##0.0000'
    end
    object db_PedidoCompraItensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      ReadOnly = True
    end
    object db_PedidoCompraItensVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      ReadOnly = True
    end
    object db_PedidoCompraItensVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
  end
  object dbfp_PedidCompraItens: TfrxDBDataset
    UserName = 'dbPedidCompraItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'PRODUTO=PRODUTO'
      'DESCRICAO=DESCRICAO'
      'UNIDADE=UNIDADE'
      'QTDE_PEDIDA=QTDE_PEDIDA'
      'QTDE_ENTREGUE=QTDE_ENTREGUE'
      'QTDE_RESTANTE=QTDE_RESTANTE'
      'VALOR_UNIT=VALOR_UNIT'
      'DESCONTO=DESCONTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VALOR_TOTAL=VALOR_TOTAL')
    DataSet = db_PedidoCompraItens
    BCDToCurrency = False
    Left = 560
    Top = 304
  end
end
