object FrmTransportadoras: TFrmTransportadoras
  Left = 0
  Top = 1
  BorderStyle = bsDialog
  Caption = 'Cadastro de Transportadoras'
  ClientHeight = 541
  ClientWidth = 995
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 33
    Width = 995
    Height = 445
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 10
      Top = 48
      Width = 70
      Height = 15
      Caption = 'Raz'#227'o Social'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 10
      Top = 92
      Width = 82
      Height = 15
      Caption = 'Nome Fantasia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label68: TLabel
      Left = 10
      Top = 279
      Width = 88
      Height = 15
      Caption = 'E-mail (contato)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label69: TLabel
      Left = 390
      Top = 279
      Width = 90
      Height = 15
      Caption = 'Site (home page)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label33: TLabel
      Left = 10
      Top = 238
      Width = 110
      Height = 15
      Caption = 'Fone (DDD+N'#250'mero)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label38: TLabel
      Left = 130
      Top = 238
      Width = 111
      Height = 15
      Caption = 'VOIP (DDD+N'#250'mero)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 250
      Top = 238
      Width = 103
      Height = 15
      Caption = 'Fax (DDD+N'#250'mero)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 369
      Top = 238
      Width = 104
      Height = 15
      Caption = 'Cel. (DDD+N'#250'mero)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 97
      Top = 6
      Width = 82
      Height = 15
      Caption = 'Data Cadastro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 197
      Top = 6
      Width = 25
      Height = 15
      Caption = 'CNPJ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label70: TLabel
      Left = 348
      Top = 6
      Width = 124
      Height = 15
      Caption = 'Incri'#231#227'o Estadual (I.E.)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 6
      Width = 41
      Height = 15
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 485
      Top = 238
      Width = 43
      Height = 15
      Caption = 'Contato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 768
      Top = 17
      Width = 225
      Height = 367
      Align = alRight
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 384
      Width = 991
      Height = 59
      Align = alBottom
      Caption = 'Observa'#231#245'es'
      TabOrder = 21
      object DBMemo1: TDBMemo
        Left = 2
        Top = 17
        Width = 987
        Height = 40
        Align = alClient
        DataField = 'OBSERVACAO'
        DataSource = DS_Transportadora
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 12
      Top = 321
      Width = 736
      Height = 63
      Caption = 'Dados do Ve'#237'culo'
      TabOrder = 20
      object Label4: TLabel
        Left = 445
        Top = 20
        Width = 14
        Height = 15
        Caption = 'UF'
        FocusControl = EditUFVeic
      end
      object Label6: TLabel
        Left = 83
        Top = 20
        Width = 38
        Height = 15
        Caption = 'Cidade'
        FocusControl = DBEdit1
      end
      object Label20: TLabel
        Left = 11
        Top = 20
        Width = 31
        Height = 15
        Caption = 'Placa'
        FocusControl = EditCOMISSAO
      end
      object EditUFVeic: TDBEdit
        Left = 445
        Top = 36
        Width = 28
        Height = 23
        CharCase = ecUpperCase
        DataField = 'TRANSPORTADORA_UF'
        DataSource = DS_Transportadora
        TabOrder = 2
      end
      object DBEdit1: TDBEdit
        Left = 80
        Top = 36
        Width = 352
        Height = 23
        CharCase = ecUpperCase
        DataField = 'TRANSPORTADORA_CIDADE'
        DataSource = DS_Transportadora
        TabOrder = 1
      end
      object EditCOMISSAO: TDBEdit
        Left = 11
        Top = 36
        Width = 63
        Height = 23
        CharCase = ecUpperCase
        DataField = 'TRANSPORTADORA_PLACA'
        DataSource = DS_Transportadora
        TabOrder = 0
      end
      object TransportadoraProcurar: TIDBEditDialog
        Left = 309
        Top = -1
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
        SQLdbFazBusca = True
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'TIPO='#39'TRANSPORTADORA'#39
          'AND'
          'CODIGO=:CODIGO'
          '')
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
    end
    object EdRazaoSocial: TDBEdit
      Left = 12
      Top = 64
      Width = 736
      Height = 23
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object EdFantasia: TDBEdit
      Left = 12
      Top = 109
      Width = 736
      Height = 23
      CharCase = ecUpperCase
      DataField = 'NOME_FANTASIA'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object GroupBox4: TGroupBox
      Left = 11
      Top = 136
      Width = 738
      Height = 101
      Hint = 'Editar - use o bot'#227'o direito do mouse'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      object GRPEndereco2: TGroupBox
        Left = 98
        Top = 12
        Width = 333
        Height = 43
        TabOrder = 1
        DesignSize = (
          333
          43)
        object Label8: TLabel
          Left = 2
          Top = 2
          Width = 50
          Height = 15
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object EditEndereco2: TDBEdit
          Left = 2
          Top = 17
          Width = 325
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object GRPBairroCidadeUF2: TGroupBox
        Left = 3
        Top = 54
        Width = 726
        Height = 43
        TabOrder = 3
        object Label28: TLabel
          Left = 678
          Top = 2
          Width = 14
          Height = 15
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 265
          Top = 2
          Width = 38
          Height = 15
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 3
          Top = 2
          Width = 35
          Height = 15
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 176
          Top = 2
          Width = 79
          Height = 15
          Caption = 'C'#243'digo Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object EditBairro2: TDBEdit
          Left = 3
          Top = 17
          Width = 166
          Height = 23
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditCidade2: TDBEdit
          Left = 265
          Top = 17
          Width = 406
          Height = 23
          Hint = 'Tecle F8 para pesquisar'
          CharCase = ecUpperCase
          DataField = 'NOMECIDADE'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object EditUF2: TDBEdit
          Left = 678
          Top = 17
          Width = 36
          Height = 23
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 3
        end
        object EditCodCidade2: TDBEdit
          Left = 176
          Top = 17
          Width = 82
          Height = 23
          Hint = 'Codigo da Cidade de acordo com o IBGE'
          CharCase = ecUpperCase
          DataField = 'CODIGOCIDADE'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = EditCodCidade2KeyDown
        end
      end
      object GroupBox8: TGroupBox
        Left = 435
        Top = 12
        Width = 294
        Height = 43
        TabOrder = 2
        object Label29: TLabel
          Left = 3
          Top = 2
          Width = 46
          Height = 15
          Caption = 'N'#250'mero:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label85: TLabel
          Left = 234
          Top = 2
          Width = 51
          Height = 15
          Caption = 'Cx Postal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 53
          Top = 2
          Width = 78
          Height = 15
          Caption = 'Complemento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object EditNumero: TDBEdit
          Left = 3
          Top = 17
          Width = 43
          Height = 23
          Hint = 'N'#250'mero do Endere'#231'o'
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object EditCxPostal: TDBEdit
          Left = 234
          Top = 17
          Width = 48
          Height = 23
          CharCase = ecUpperCase
          DataField = 'CXP'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
        end
        object DBEdit8: TDBEdit
          Left = 53
          Top = 17
          Width = 174
          Height = 23
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
        end
      end
      object EditCEP: TIDBEditDialog
        Left = 6
        Top = 25
        Width = 89
        Height = 23
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        TabOrder = 0
        Text = ''
        Visible = True
        LabelCaption = 'CEP'
        LabelAlwaysEnabled = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -12
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Version = '5.0.0.0'
        ButtonStyle = bsButton
        ButtonWidth = 16
        ButtonHint = 'Procurar...'
        Etched = False
        ButtonCaption = '...'
        DataField = 'CEP'
        DataSource = DS_Transportadora
        SQLdbRetornoVazio = ' *** '
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_IBGEMUNICIPIO'
          'WHERE'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM CAD_IBGEMUNICIPIO'
          'WHERE'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'CEP'
            WhereSyntax = 'CEP'
            DisplayLabel = 'CEP:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'CIDADE'
            WhereSyntax = 'CIDADE'
            DisplayLabel = 'CIDADE:'
            DisplayWidth = 30
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'UF'
            WhereSyntax = 'UF'
            DisplayLabel = 'UF:'
            DisplayWidth = 5
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'TIPO'
            WhereSyntax = 'TIPO'
            DisplayLabel = 'TIPO:'
            DisplayWidth = 15
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'ENDERECO'
            WhereSyntax = 'ENDERECO'
            DisplayLabel = 'ENDERE'#199'O:'
            DisplayWidth = 25
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'BAIRRO'
            WhereSyntax = 'BAIRRO'
            DisplayLabel = 'BAIRRO:'
            DisplayWidth = 15
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
    object DBEdit47: TDBEdit
      Left = 50
      Top = 253
      Width = 73
      Height = 23
      DataField = 'FONE'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit50: TDBEdit
      Left = 10
      Top = 294
      Width = 354
      Height = 23
      CharCase = ecLowerCase
      DataField = 'EMAIL'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object DBEdit51: TDBEdit
      Left = 390
      Top = 294
      Width = 359
      Height = 23
      CharCase = ecLowerCase
      DataField = 'SITE'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object DBEdit24: TDBEdit
      Left = 10
      Top = 253
      Width = 38
      Height = 23
      DataField = 'DDD_FONE'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit25: TDBEdit
      Left = 169
      Top = 253
      Width = 73
      Height = 23
      DataField = 'VOIP'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object DBEdit45: TDBEdit
      Left = 130
      Top = 253
      Width = 38
      Height = 23
      DataField = 'DDD_VOIP'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object DBEdit48: TDBEdit
      Left = 289
      Top = 253
      Width = 73
      Height = 23
      DataField = 'FAX'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object DBEdit54: TDBEdit
      Left = 250
      Top = 253
      Width = 38
      Height = 23
      DataField = 'DDD_FAX'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object DBEdit57: TDBEdit
      Left = 408
      Top = 253
      Width = 73
      Height = 23
      DataField = 'CELULAR'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object DBEdit60: TDBEdit
      Left = 369
      Top = 253
      Width = 38
      Height = 23
      DataField = 'DDD_CELULAR'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object EditData: TDBEdit
      Left = 96
      Top = 24
      Width = 86
      Height = 23
      CharCase = ecUpperCase
      DataField = 'DATA'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EdRGInscrEst: TDBEdit
      Left = 348
      Top = 24
      Width = 141
      Height = 23
      CharCase = ecUpperCase
      DataField = 'RG_IE'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object EditCNPJCPF2: TDBEdit
      Left = 193
      Top = 24
      Width = 153
      Height = 23
      CharCase = ecUpperCase
      DataField = 'CPF_CNPJ'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EditAtividade: TIDBEditDialog
      Left = 497
      Top = 24
      Width = 56
      Height = 23
      HelpKeyWord = ''
      Color = clWindow
      Enabled = True
      TabOrder = 4
      Text = ''
      Visible = True
      LabelCaption = 'Ramo de Atividade:'
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -12
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Version = '5.0.0.0'
      ButtonStyle = bsButton
      ButtonWidth = 16
      ButtonHint = 'Procurar...'
      Etched = False
      ButtonCaption = '...'
      DataField = 'ATIVIDADE'
      DataSource = DS_Transportadora
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = EditNomeAtividade
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = '***'
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_ATIVIDADES'
        'WHERE'
        'CODIGO=:CODIGO')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM CAD_ATIVIDADES'
        'WHERE'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT COUNT(*) FROM CAD_ATIVIDADES'
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
          DefaultComparison = scContains
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
    object EditNomeAtividade: TEdit
      Left = 559
      Top = 24
      Width = 189
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit9: TDBEdit
      Left = 10
      Top = 24
      Width = 83
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'CODIGO'
      DataSource = DS_Transportadora
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit59: TDBEdit
      Left = 485
      Top = 253
      Width = 263
      Height = 23
      DataField = 'CONTATO'
      DataSource = DS_Transportadora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 995
    Height = 33
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 995
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 995
      Height = 33
      ExplicitWidth = 995
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 124
        Caption = 'Transportadoras'
        ExplicitWidth = 124
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 478
    Width = 995
    Height = 63
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 478
    ExplicitWidth = 995
    ExplicitHeight = 63
    inherited W7Panel1: TPanel
      Width = 995
      Height = 63
      ExplicitWidth = 995
      ExplicitHeight = 63
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
  object DS_Transportadora: TDataSource
    DataSet = db_Transportadora
    Left = 293
    Top = 144
  end
  object db_Transportadora: TFDQuery
    BeforePost = db_TransportadoraBeforePost
    AfterPost = db_TransportadoraAfterPost
    OnNewRecord = db_TransportadoraNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'TIPO='#39'TRANSPORTADORA'#39)
    Left = 293
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_TransportadoraCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_TransportadoraFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object db_TransportadoraTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object db_TransportadoraCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 30
    end
    object db_TransportadoraDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_TransportadoraDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
    end
    object db_TransportadoraDATA_ULTIMA_VENDA: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_VENDA'
    end
    object db_TransportadoraCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      EditMask = '99.999.999/9999-99'
      Size = 30
    end
    object db_TransportadoraNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object db_TransportadoraNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 200
    end
    object db_TransportadoraCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 200
    end
    object db_TransportadoraRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 30
    end
    object db_TransportadoraORG_EMISSOR: TStringField
      FieldName = 'ORG_EMISSOR'
      Size = 30
    end
    object db_TransportadoraSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object db_TransportadoraFILIACAO_NOMEPAI: TStringField
      FieldName = 'FILIACAO_NOMEPAI'
      Size = 200
    end
    object db_TransportadoraFILIACAO_NOMEMAE: TStringField
      FieldName = 'FILIACAO_NOMEMAE'
      Size = 200
    end
    object db_TransportadoraESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 200
    end
    object db_TransportadoraCONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      Size = 30
    end
    object db_TransportadoraCONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      Size = 200
    end
    object db_TransportadoraCXP: TStringField
      FieldName = 'CXP'
      Size = 30
    end
    object db_TransportadoraCEP: TStringField
      FieldName = 'CEP'
      Size = 30
    end
    object db_TransportadoraENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object db_TransportadoraNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object db_TransportadoraCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object db_TransportadoraBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 200
    end
    object db_TransportadoraCODIGOCIDADE: TIntegerField
      FieldName = 'CODIGOCIDADE'
    end
    object db_TransportadoraNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 200
    end
    object db_TransportadoraCODIGOUF: TIntegerField
      FieldName = 'CODIGOUF'
    end
    object db_TransportadoraUF: TStringField
      FieldName = 'UF'
      Size = 30
    end
    object db_TransportadoraDDD_FONE: TIntegerField
      FieldName = 'DDD_FONE'
    end
    object db_TransportadoraFONE: TStringField
      FieldName = 'FONE'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_TransportadoraDDD_FAX: TIntegerField
      FieldName = 'DDD_FAX'
    end
    object db_TransportadoraFAX: TStringField
      FieldName = 'FAX'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_TransportadoraDDD_CELULAR: TIntegerField
      FieldName = 'DDD_CELULAR'
    end
    object db_TransportadoraCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_TransportadoraDDD_VOIP: TIntegerField
      FieldName = 'DDD_VOIP'
    end
    object db_TransportadoraVOIP: TStringField
      FieldName = 'VOIP'
      Size = 30
    end
    object db_TransportadoraEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object db_TransportadoraSITE: TStringField
      FieldName = 'SITE'
      Size = 200
    end
    object db_TransportadoraREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 200
    end
    object db_TransportadoraVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_TransportadoraREGIAO: TIntegerField
      FieldName = 'REGIAO'
    end
    object db_TransportadoraTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_TransportadoraESTRANGEIRO: TStringField
      FieldName = 'ESTRANGEIRO'
      Size = 10
    end
    object db_TransportadoraNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 200
    end
    object db_TransportadoraCREDITO_LIMITE: TBCDField
      FieldName = 'CREDITO_LIMITE'
    end
    object db_TransportadoraCREDITO_UTILIZADO: TBCDField
      FieldName = 'CREDITO_UTILIZADO'
    end
    object db_TransportadoraCREDITO_DISPONIVEL: TBCDField
      FieldName = 'CREDITO_DISPONIVEL'
    end
    object db_TransportadoraBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Size = 10
    end
    object db_TransportadoraPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_TransportadoraCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_TransportadoraCENTROCUSTO: TIntegerField
      FieldName = 'CENTROCUSTO'
    end
    object db_TransportadoraENDCOB_ENDERECO: TStringField
      FieldName = 'ENDCOB_ENDERECO'
      Size = 200
    end
    object db_TransportadoraENDCOB_BAIRRO: TStringField
      FieldName = 'ENDCOB_BAIRRO'
      Size = 200
    end
    object db_TransportadoraENDCOB_DDD: TIntegerField
      FieldName = 'ENDCOB_DDD'
    end
    object db_TransportadoraENDCOB_FONE: TStringField
      FieldName = 'ENDCOB_FONE'
      Size = 30
    end
    object db_TransportadoraENDCOB_CEP: TStringField
      FieldName = 'ENDCOB_CEP'
      Size = 30
    end
    object db_TransportadoraENDCOB_CXP: TStringField
      FieldName = 'ENDCOB_CXP'
      Size = 30
    end
    object db_TransportadoraENDCOB_CODIGOCIDADE: TIntegerField
      FieldName = 'ENDCOB_CODIGOCIDADE'
    end
    object db_TransportadoraENDCOB_NOMECIDADE: TStringField
      FieldName = 'ENDCOB_NOMECIDADE'
      Size = 200
    end
    object db_TransportadoraENDCOB_UF: TStringField
      FieldName = 'ENDCOB_UF'
      Size = 30
    end
    object db_TransportadoraPROTESTO: TStringField
      FieldName = 'PROTESTO'
      Size = 30
    end
    object db_TransportadoraPROTESTO_DATA: TSQLTimeStampField
      FieldName = 'PROTESTO_DATA'
    end
    object db_TransportadoraETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 10
    end
    object db_TransportadoraNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 200
    end
    object db_TransportadoraATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 10
    end
    object db_TransportadoraCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
    end
    object db_TransportadoraATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
    end
    object db_TransportadoraOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_TransportadoraOBS_SERASA: TStringField
      FieldName = 'OBS_SERASA'
      Size = 5000
    end
    object db_TransportadoraOBS_SINTEGRA: TStringField
      FieldName = 'OBS_SINTEGRA'
      Size = 5000
    end
    object db_TransportadoraCONJUGE_DNASCIMENTO: TStringField
      FieldName = 'CONJUGE_DNASCIMENTO'
      Size = 200
    end
    object db_TransportadoraCONJUGE_EMPRESA: TStringField
      FieldName = 'CONJUGE_EMPRESA'
      Size = 200
    end
    object db_TransportadoraCONJUGE_FONE: TStringField
      FieldName = 'CONJUGE_FONE'
      Size = 30
    end
    object db_TransportadoraCONJUGE_ENDERECO: TStringField
      FieldName = 'CONJUGE_ENDERECO'
      Size = 200
    end
    object db_TransportadoraCONJUGE_CIDADE: TStringField
      FieldName = 'CONJUGE_CIDADE'
      Size = 200
    end
    object db_TransportadoraCONJUGE_UF: TStringField
      FieldName = 'CONJUGE_UF'
      Size = 200
    end
    object db_TransportadoraCONJUGE_CARGO: TStringField
      FieldName = 'CONJUGE_CARGO'
      Size = 200
    end
    object db_TransportadoraCONJUGE_TEMPO: TStringField
      FieldName = 'CONJUGE_TEMPO'
      Size = 200
    end
    object db_TransportadoraCONJUGE_SALARIO: TBCDField
      FieldName = 'CONJUGE_SALARIO'
    end
    object db_TransportadoraEMPREGO_EMPRESA: TStringField
      FieldName = 'EMPREGO_EMPRESA'
      Size = 200
    end
    object db_TransportadoraEMPREGO_FONE: TStringField
      FieldName = 'EMPREGO_FONE'
      Size = 30
    end
    object db_TransportadoraEMPREGO_ENDERECO: TStringField
      FieldName = 'EMPREGO_ENDERECO'
      Size = 200
    end
    object db_TransportadoraEMPREGO_CIDADE: TStringField
      FieldName = 'EMPREGO_CIDADE'
      Size = 200
    end
    object db_TransportadoraEMPREGO_UF: TStringField
      FieldName = 'EMPREGO_UF'
      Size = 200
    end
    object db_TransportadoraEMPREGO_CARGO: TStringField
      FieldName = 'EMPREGO_CARGO'
      Size = 200
    end
    object db_TransportadoraEMPREGO_TEMPO: TStringField
      FieldName = 'EMPREGO_TEMPO'
      Size = 200
    end
    object db_TransportadoraEMPREGO_SALARIO: TBCDField
      FieldName = 'EMPREGO_SALARIO'
    end
    object db_TransportadoraCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
    end
    object db_TransportadoraCOMISSIONAR: TStringField
      FieldName = 'COMISSIONAR'
      Size = 10
    end
    object db_TransportadoraSALARIO: TBCDField
      FieldName = 'SALARIO'
    end
    object db_TransportadoraTRANSPORTADORA_PLACA: TStringField
      FieldName = 'TRANSPORTADORA_PLACA'
      Size = 30
    end
    object db_TransportadoraTRANSPORTADORA_CIDADE: TStringField
      FieldName = 'TRANSPORTADORA_CIDADE'
      Size = 200
    end
    object db_TransportadoraTRANSPORTADORA_UF: TStringField
      FieldName = 'TRANSPORTADORA_UF'
      Size = 200
    end
    object db_TransportadoraVALOR_SERVICOS: TBCDField
      FieldName = 'VALOR_SERVICOS'
    end
    object db_TransportadoraPAGTOTERCEIRIZADO: TStringField
      FieldName = 'PAGTOTERCEIRIZADO'
      Size = 10
    end
  end
end
