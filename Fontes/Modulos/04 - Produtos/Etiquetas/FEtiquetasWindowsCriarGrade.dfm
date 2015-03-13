object FrmEtiquetasWindowsCriarGrade: TFrmEtiquetasWindowsCriarGrade
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 524
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 75
    Width = 725
    Height = 408
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 723
      Height = 406
      Align = alClient
      DataSource = ds_dados
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGOPRODUTO'
          Title.Caption = 'REFERENCIA'
          Width = 157
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGOBARRA'
          Title.Caption = 'IDENTIFICADOR'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COR'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAMANHO'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Width = 110
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 483
    Width = 725
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Button2: TButton
      Left = 17
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 568
      Top = 6
      Width = 75
      Height = 25
      Caption = 'excluir tudo'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object gbxProdutos: TGroupBox
    Left = 0
    Top = 0
    Width = 725
    Height = 75
    Align = alTop
    Caption = 'Produtos'
    TabOrder = 0
    object Label1: TLabel
      Left = 541
      Top = 27
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = NumQtdeEtiquetas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 445
      Top = 27
      Width = 44
      Height = 13
      Caption = 'Tamanho'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 223
      Top = 27
      Width = 17
      Height = 13
      Caption = 'Cor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EditReferencia: TLabeledEdit
      Left = 9
      Top = 40
      Width = 208
      Height = 26
      Hint = 'tecle F8'
      AutoSize = False
      CharCase = ecUpperCase
      Color = clBlack
      EditLabel.Width = 82
      EditLabel.Height = 15
      EditLabel.Caption = 'Refer'#234'ncia (F8)'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Calibri'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = EditReferenciaExit
      OnKeyDown = EditReferenciaKeyDown
    end
    object EditCor: TDBLookupComboBox
      Left = 223
      Top = 40
      Width = 207
      Height = 26
      Color = clBlack
      DropDownRows = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'COR_CODIGO'
      ListField = 'COR'
      ListSource = dsEtiquetasCor
      ParentFont = False
      TabOrder = 1
      OnExit = EditCorExit
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 445
      Top = 40
      Width = 72
      Height = 26
      Color = clBlack
      DropDownRows = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'TAMANHO'
      ListField = 'TAMANHO'
      ListSource = dsEtiquetasTamanho
      ParentFont = False
      TabOrder = 2
    end
    object NumQtdeEtiquetas: TSpinEdit
      Left = 541
      Top = 40
      Width = 65
      Height = 28
      AutoSize = False
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 3
      Value = 1
    end
    object BitBtn1: TBitBtn
      Left = 633
      Top = 38
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 4
      OnClick = BitBtn1Click
    end
  end
  object dbProcurarFichaTecnica: TIDBEditDialog
    Left = 416
    Top = 137
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
      'TIPO_PRODUTO IN ('#39'ACA'#39','#39'ACABADO'#39')'
      'AND'
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
        SearchCase = scMixed
      end
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'DESCRI'#199#195'O:'
        DisplayWidth = 45
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
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
        SearchCase = scMixed
      end
      item
        FieldName = 'SUBGRUPO_NOME'
        WhereSyntax = 'SUBGRUPO_NOME'
        DisplayLabel = 'SUBGRUPO:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'PRC_CUSTO'
        WhereSyntax = 'PRC_CUSTO'
        DisplayLabel = 'PRE'#199'O CUSTO:'
        DisplayFormat = '###,##0.0000'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VALOR_VENDA'
        WhereSyntax = 'VALOR_VENDA'
        DisplayLabel = 'PRE'#199'O VENDA:'
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
  object dsEtiquetasCor: TDataSource
    DataSet = dbEtiquetasCor
    Left = 496
    Top = 240
  end
  object dbEtiquetasCor: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT DISTINCT COR, COR_CODIGO, DESCRICAO   FROM VIEW_ETIQUETAS' +
        'PRODUTOS'
      'WHERE'
      'REFERENCIA=:SREFERENCIA'
      ''
      'ORDER BY COR')
    Left = 488
    Top = 176
    ParamData = <
      item
        Name = 'SREFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object dbEtiquetasTamanho: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT DISTINCT TAMANHO, TAMANHO_ORDEM  FROM VIEW_ETIQUETASPRODU' +
        'TOS'
      'WHERE'
      'REFERENCIA=:SREFERENCIA '
      'AND'
      'COR_CODIGO=:NCOR'
      ''
      'ORDER BY TAMANHO_ORDEM')
    Left = 616
    Top = 64
    ParamData = <
      item
        Name = 'SREFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'NCOR'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsEtiquetasTamanho: TDataSource
    DataSet = dbEtiquetasTamanho
    Left = 616
    Top = 120
  end
  object db_dados: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select * from CONFIG_ETIQUETAS01_TEMP')
    Left = 184
    Top = 176
  end
  object ds_dados: TDataSource
    DataSet = db_dados
    Left = 184
    Top = 240
  end
end
