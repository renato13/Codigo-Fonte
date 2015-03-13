object FrmClientes: TFrmClientes
  Left = 0
  Top = 1
  Width = 1040
  Height = 615
  HelpContext = 8
  AutoScroll = True
  Caption = 'Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object Label16: TLabel
    Left = 16
    Top = 198
    Width = 20
    Height = 15
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object PgClientes: TPageControl
    Left = 0
    Top = 36
    Width = 1024
    Height = 479
    ActivePage = Tab_PJuridica
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    HotTrack = True
    MultiLine = True
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    object Tab_PFisica: TTabSheet
      Caption = 'Pessoa F'#237'sica'
      ImageIndex = 1
      OnShow = Tab_PFisicaShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Pg_CadastroF: TPageControl
        Left = 0
        Top = 0
        Width = 1016
        Height = 446
        Cursor = crHandPoint
        ActivePage = Tab_FBasicos
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        MultiLine = True
        ParentFont = False
        TabOrder = 0
        TabPosition = tpBottom
        ExplicitWidth = 1070
        object Tab_FBasicos: TTabSheet
          Caption = 'Dados Cadastrais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label8: TLabel
            Left = 3
            Top = 3
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
          object Label10: TLabel
            Left = 242
            Top = 50
            Width = 94
            Height = 15
            Caption = 'Data Nascimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 89
            Top = 5
            Width = 20
            Height = 15
            Caption = 'CPF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 3
            Top = 50
            Width = 21
            Height = 15
            Caption = 'R.G.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 123
            Top = 50
            Width = 81
            Height = 15
            Caption = 'Org'#227'o Emissor'
          end
          object Label25: TLabel
            Left = 482
            Top = 280
            Width = 35
            Height = 15
            Caption = 'E-mail'
          end
          object Label30: TLabel
            Left = 207
            Top = 5
            Width = 31
            Height = 15
            Caption = 'Nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 686
            Top = 326
            Width = 69
            Height = 15
            Caption = 'Caixa Postal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Spb_email1: TSpeedButton
            Left = 743
            Top = 296
            Width = 25
            Height = 23
            Cursor = crHandPoint
            Hint = 'enviar e-mail...'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = Spb_email1Click
          end
          object Label61: TLabel
            Left = 6
            Top = 326
            Width = 112
            Height = 15
            Caption = 'Ponto de Refer'#234'ncia:'
          end
          object Label22: TLabel
            Left = 6
            Top = 279
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
          object Label23: TLabel
            Left = 125
            Top = 279
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
          object Label24: TLabel
            Left = 246
            Top = 279
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
          object Label32: TLabel
            Left = 364
            Top = 279
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
          object Label17: TLabel
            Left = 8
            Top = 201
            Width = 20
            Height = 15
            Caption = 'CEP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object EditDataf: TDBEdit
            Left = 3
            Top = 20
            Width = 83
            Height = 23
            CharCase = ecUpperCase
            DataField = 'DATA'
            DataSource = BaseDados.DS_Clientes
            TabOrder = 0
          end
          object RgSexo: TDBRadioGroup
            Left = 362
            Top = 50
            Width = 200
            Height = 36
            Caption = 'Se&xo'
            Columns = 2
            DataField = 'SEXO'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              '&Masculino'
              '&Feminino')
            ParentFont = False
            TabOrder = 6
            Values.Strings = (
              'M'
              'F')
          end
          object DBEdit2: TDBEdit
            Left = 242
            Top = 65
            Width = 100
            Height = 23
            CharCase = ecUpperCase
            DataField = 'DATA_NASCIMENTO'
            DataSource = BaseDados.DS_Clientes
            TabOrder = 5
          end
          object EditCNPJCPF1: TDBEdit
            Left = 89
            Top = 20
            Width = 113
            Height = 23
            DataField = 'CPF_CNPJ'
            DataSource = BaseDados.DS_Clientes
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 3
            Top = 65
            Width = 112
            Height = 23
            CharCase = ecUpperCase
            DataField = 'RG_IE'
            DataSource = BaseDados.DS_Clientes
            TabOrder = 3
          end
          object DBEdit5: TDBEdit
            Left = 123
            Top = 65
            Width = 113
            Height = 23
            CharCase = ecUpperCase
            DataField = 'ORG_EMISSOR'
            DataSource = BaseDados.DS_Clientes
            TabOrder = 4
          end
          object DBEdit16: TDBEdit
            Left = 482
            Top = 296
            Width = 258
            Height = 23
            CharCase = ecLowerCase
            DataField = 'EMAIL'
            DataSource = BaseDados.DS_Clientes
            TabOrder = 16
          end
          object DBEdit18: TDBEdit
            Left = 207
            Top = 20
            Width = 355
            Height = 23
            CharCase = ecUpperCase
            DataField = 'NOME'
            DataSource = BaseDados.DS_Clientes
            TabOrder = 2
          end
          object DBEdit_cxpostal: TDBEdit
            Left = 686
            Top = 344
            Width = 84
            Height = 23
            DataField = 'CXP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 18
          end
          object EditcodRegiao1: TIDBEditDialog
            Left = 403
            Top = 383
            Width = 56
            Height = 23
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            TabOrder = 21
            Text = ''
            Visible = True
            LabelCaption = 'Regi'#227'o'
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
            DataField = 'REGIAO'
            DataSource = BaseDados.DS_Clientes
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditRegiao1
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_REGIOES'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_REGIOES'
              'WHERE'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_REGIOES'
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
                Search = True
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
          object EditVendedor1: TEdit
            Left = 65
            Top = 383
            Width = 331
            Height = 23
            Color = clBtnFace
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 20
          end
          object DBEdit66: TDBEdit
            Left = 6
            Top = 344
            Width = 676
            Height = 23
            CharCase = ecUpperCase
            DataField = 'REFERENCIA'
            DataSource = BaseDados.DS_Clientes
            TabOrder = 17
          end
          object DBEdit13: TDBEdit
            Left = 45
            Top = 296
            Width = 73
            Height = 23
            DataField = 'FONE'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object DBEdit14: TDBEdit
            Left = 6
            Top = 296
            Width = 38
            Height = 23
            DataField = 'DDD_FONE'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            MaxLength = 2
            ParentFont = False
            TabOrder = 8
          end
          object DBEdit15: TDBEdit
            Left = 164
            Top = 296
            Width = 73
            Height = 23
            DataField = 'VOIP'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object DBEdit31: TDBEdit
            Left = 125
            Top = 296
            Width = 38
            Height = 23
            DataField = 'DDD_VOIP'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            MaxLength = 2
            ParentFont = False
            TabOrder = 10
          end
          object DBEdit38: TDBEdit
            Left = 284
            Top = 296
            Width = 74
            Height = 23
            DataField = 'FAX'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object DBEdit49: TDBEdit
            Left = 246
            Top = 296
            Width = 37
            Height = 23
            DataField = 'DDD_FAX'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            MaxLength = 2
            ParentFont = False
            TabOrder = 12
          end
          object DBEdit61: TDBEdit
            Left = 403
            Top = 296
            Width = 73
            Height = 23
            DataField = 'CELULAR'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
          end
          object DBEdit62: TDBEdit
            Left = 364
            Top = 296
            Width = 38
            Height = 23
            DataField = 'DDD_CELULAR'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            MaxLength = 2
            ParentFont = False
            TabOrder = 14
          end
          object EditRegiao1: TEdit
            Left = 461
            Top = 383
            Width = 309
            Height = 23
            Color = clBtnFace
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 23
          end
          object EditCodevendedor: TIDBEditDialog
            Left = 3
            Top = 383
            Width = 56
            Height = 23
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
            Text = ''
            Visible = True
            LabelCaption = 'Vendedor'
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
            DataField = 'VENDEDOR'
            DataSource = BaseDados.DS_Clientes
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditVendedor1
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = ' *** '
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              '  TIPO='#39'VENDEDOR'#39
              'AND'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              '  TIPO='#39'VENDEDOR'#39
              'AND'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT count(*) FROM CAD_CLIENTES'
              'WHERE'
              '  TIPO='#39'VENDEDOR'#39
              'AND'
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
                SearchCase = scUpper
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
          object DBEdit6: TDBEdit
            Left = 8
            Top = 216
            Width = 76
            Height = 23
            DataField = 'CEP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            MaxLength = 9
            ParentFont = False
            TabOrder = 24
          end
          object GroupBox9: TGroupBox
            Left = 566
            Top = 14
            Width = 205
            Height = 263
            Caption = '  Foto    [Tamanho 180x140 dpi]   '
            TabOrder = 22
            object Panel3: TPanel
              Left = 2
              Top = 226
              Width = 201
              Height = 35
              Align = alBottom
              TabOrder = 0
              object BitBtn1: TBitBtn
                Left = 8
                Top = 4
                Width = 80
                Height = 27
                Cursor = crHandPoint
                Caption = 'Adicionar'
                TabOrder = 0
                OnClick = BitBtn1Click
              end
              object BitBtn2: TBitBtn
                Left = 115
                Top = 4
                Width = 81
                Height = 27
                Cursor = crHandPoint
                Caption = 'Limpar'
                TabOrder = 1
                OnClick = BitBtn2Click
              end
            end
            object DBImage1: TDBImage
              Left = 2
              Top = 17
              Width = 201
              Height = 209
              Align = alClient
              DataField = 'FOTO'
              DataSource = BaseDados.DS_Clientes
              TabOrder = 1
            end
          end
          object GroupBox2: TGroupBox
            Left = 3
            Top = 180
            Width = 559
            Height = 97
            Hint = 'Editar - use o bot'#227'o direito do mouse'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            object Label52: TLabel
              Left = 5
              Top = 6
              Width = 20
              Height = 15
              Caption = 'CEP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object GRPEndereco1: TGroupBox
              Left = 84
              Top = 6
              Width = 314
              Height = 44
              TabOrder = 1
              DesignSize = (
                314
                44)
              object Label18: TLabel
                Left = 4
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
              object EditEndereco1: TDBEdit
                Left = 4
                Top = 16
                Width = 306
                Height = 23
                Anchors = [akLeft, akTop, akRight]
                CharCase = ecUpperCase
                DataField = 'ENDERECO'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object GRPBairroCidadeUF1: TGroupBox
              Left = 5
              Top = 48
              Width = 552
              Height = 44
              TabOrder = 3
              object Label19: TLabel
                Left = 504
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
              object Label20: TLabel
                Left = 250
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
              object Label21: TLabel
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
              object Label9: TLabel
                Left = 160
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
              object EditUF1: TDBEdit
                Left = 505
                Top = 17
                Width = 36
                Height = 23
                CharCase = ecUpperCase
                DataField = 'UF'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                MaxLength = 2
                ParentFont = False
                TabOrder = 3
              end
              object EditCidade1: TDBEdit
                Left = 250
                Top = 17
                Width = 251
                Height = 23
                Hint = 'Tecle F8 para pesquisar'
                CharCase = ecUpperCase
                DataField = 'NOMECIDADE'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object EditBairro1: TDBEdit
                Left = 3
                Top = 17
                Width = 151
                Height = 23
                CharCase = ecUpperCase
                DataField = 'BAIRRO'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object EditCodCidade1: TDBEdit
                Left = 160
                Top = 17
                Width = 83
                Height = 23
                Hint = 'Codigo da Cidade de acordo com o IBGE'
                CharCase = ecUpperCase
                DataField = 'CODIGOCIDADE'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnKeyDown = EditCodCidade1KeyDown
              end
            end
            object GroupBox14: TGroupBox
              Left = 403
              Top = 6
              Width = 154
              Height = 44
              TabOrder = 2
              object Label51: TLabel
                Left = 4
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
              object Label56: TLabel
                Left = 54
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
              object DBEdit30: TDBEdit
                Left = 4
                Top = 17
                Width = 43
                Height = 23
                Hint = 'N'#250'mero do Endere'#231'o'
                CharCase = ecUpperCase
                DataField = 'NUMERO'
                DataSource = BaseDados.DS_Clientes
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
              object DBEdit52: TDBEdit
                Left = 54
                Top = 17
                Width = 94
                Height = 23
                CharCase = ecUpperCase
                DataField = 'COMPLEMENTO'
                DataSource = BaseDados.DS_Clientes
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
            object EditCEP0: TDBEdit
              Left = 5
              Top = 22
              Width = 77
              Height = 23
              DataField = 'CEP'
              DataSource = BaseDados.DS_Clientes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object BtnComplemento: TButton
            Left = 3
            Top = 103
            Width = 559
            Height = 43
            Caption = 'Complemento (F7)'
            TabOrder = 25
            OnClick = BtnComplementoClick
          end
        end
        object Tab_FImportantes: TTabSheet
          Caption = 'Dados de Cobran'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ImageIndex = 1
          ParentFont = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label57: TLabel
            Left = 2
            Top = 120
            Width = 87
            Height = 15
            Caption = 'Data da Inclus'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 114
            Top = 120
            Width = 96
            Height = 15
            Caption = 'Limite de Cr'#233'dito'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label53: TLabel
            Left = 250
            Top = 120
            Width = 91
            Height = 15
            Caption = 'Cr'#233'dito Utilizado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label55: TLabel
            Left = 386
            Top = 121
            Width = 100
            Height = 15
            Caption = 'Cr'#233'dito Dispon'#237'vel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RDGCredito: TDBRadioGroup
            Left = 0
            Top = 0
            Width = 1062
            Height = 54
            Align = alTop
            Caption = 'Bloquear cr'#233'dito'
            Columns = 2
            DataField = 'BLOQUEADO'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit39: TDBEdit
            Left = 1
            Top = 136
            Width = 108
            Height = 23
            DataField = 'PROTESTO_DATA'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit27: TDBEdit
            Left = 114
            Top = 136
            Width = 129
            Height = 23
            DataField = 'CREDITO_LIMITE'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit28: TDBEdit
            Left = 250
            Top = 136
            Width = 129
            Height = 23
            DataField = 'CREDITO_UTILIZADO'
            DataSource = BaseDados.DS_Clientes
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit29: TDBEdit
            Left = 386
            Top = 136
            Width = 129
            Height = 23
            DataField = 'CREDITO_DISPONIVEL'
            DataSource = BaseDados.DS_Clientes
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object DBRadioGroup3: TDBRadioGroup
            Left = 0
            Top = 59
            Width = 775
            Height = 54
            Caption = 'Inclus'#227'o no Servi'#231'o de Prote'#231#227'o ao Cr'#233'dito'
            Columns = 5
            DataField = 'PROTESTO'
            DataSource = BaseDados.DS_Clientes
            Items.Strings = (
              'N'#195'O'
              'SERASA'
              'SPC'
              'CART'#211'RIO'
              'OUTROS')
            TabOrder = 1
            Values.Strings = (
              'NAO'
              'SERASA'
              'SPC'
              'CARTORIO'
              'OUTROS')
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = -9
            Top = 165
            Width = 776
            Height = 54
            Caption = 'Status do cliente:'
            Columns = 2
            DataField = 'ATIVO'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 6
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
    end
    object Tab_PJuridica: TTabSheet
      Caption = 'Pessoa Jur'#237'dica'
      ImageIndex = -1
      OnShow = Tab_PJuridicaShow
      object Pg_CadastroJ: TPageControl
        Left = 0
        Top = 0
        Width = 1016
        Height = 446
        Cursor = crHandPoint
        ActivePage = Tab_JBasico
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        MultiLine = True
        ParentFont = False
        TabOrder = 0
        TabPosition = tpBottom
        object Tab_JBasico: TTabSheet
          Caption = 'Dados Cadastrais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          object Label1: TLabel
            Left = 91
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
          object Label68: TLabel
            Left = 5
            Top = 272
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
            Left = 384
            Top = 272
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
          object Label2: TLabel
            Left = 5
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
          object Label3: TLabel
            Left = 5
            Top = 87
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
          object Label5: TLabel
            Left = 191
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
            Left = 342
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
          object Label40: TLabel
            Left = 480
            Top = 231
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
          object Label62: TLabel
            Left = 3
            Top = 355
            Width = 112
            Height = 15
            Caption = 'Ponto de Refer'#234'ncia:'
          end
          object Label33: TLabel
            Left = 5
            Top = 231
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
            Left = 124
            Top = 231
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
            Left = 244
            Top = 231
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
            Left = 363
            Top = 231
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
          object Label4: TLabel
            Left = 3
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
          object EditDataj: TDBEdit
            Left = 90
            Top = 24
            Width = 86
            Height = 23
            CharCase = ecUpperCase
            DataField = 'DATA'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit47: TDBEdit
            Left = 44
            Top = 246
            Width = 73
            Height = 23
            DataField = 'FONE'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object DBEdit50: TDBEdit
            Left = 5
            Top = 287
            Width = 354
            Height = 23
            CharCase = ecLowerCase
            DataField = 'EMAIL'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
          end
          object DBEdit51: TDBEdit
            Left = 384
            Top = 287
            Width = 359
            Height = 23
            CharCase = ecLowerCase
            DataField = 'SITE'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
          end
          object EditCodevendedor2: TIDBEditDialog
            Left = 3
            Top = 330
            Width = 56
            Height = 23
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 20
            Text = ''
            Visible = True
            LabelCaption = 'Vendedor'
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
            DataField = 'VENDEDOR'
            DataSource = BaseDados.DS_Clientes
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditVendedor2
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = ' *** '
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              '  TIPO='#39'VENDEDOR'#39
              'AND'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              '  TIPO='#39'VENDEDOR'#39
              'AND'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT count(*) FROM CAD_CLIENTES'
              'WHERE'
              '  TIPO='#39'VENDEDOR'#39
              'AND'
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
                SearchCase = scUpper
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
          object EdRazaoSocial: TDBEdit
            Left = 5
            Top = 64
            Width = 736
            Height = 23
            CharCase = ecUpperCase
            DataField = 'NOME'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object EdFantasia: TDBEdit
            Left = 5
            Top = 104
            Width = 736
            Height = 23
            CharCase = ecUpperCase
            DataField = 'NOME_FANTASIA'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object EdRGInscrEst: TDBEdit
            Left = 342
            Top = 24
            Width = 140
            Height = 23
            CharCase = ecUpperCase
            DataField = 'RG_IE'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object EditCNPJCPF2: TDBEdit
            Left = 187
            Top = 24
            Width = 153
            Height = 23
            CharCase = ecUpperCase
            DataField = 'CPF_CNPJ'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit59: TDBEdit
            Left = 480
            Top = 246
            Width = 263
            Height = 23
            DataField = 'CONTATO'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
          end
          object EditcodRegiao2: TIDBEditDialog
            Left = 241
            Top = 330
            Width = 56
            Height = 23
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 22
            Text = ''
            Visible = True
            LabelCaption = 'Regi'#227'o'
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
            DataField = 'REGIAO'
            DataSource = BaseDados.DS_Clientes
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditRegiao2
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_REGIOES'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_REGIOES'
              'WHERE'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_REGIOES'
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
          object EditRegiao2: TEdit
            Left = 299
            Top = 330
            Width = 173
            Height = 23
            Color = clBtnFace
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 23
            Text = '***'
          end
          object DBEdit67: TDBEdit
            Left = 3
            Top = 371
            Width = 738
            Height = 23
            CharCase = ecUpperCase
            DataField = 'REFERENCIA'
            DataSource = BaseDados.DS_Clientes
            TabOrder = 26
          end
          object DBEdit24: TDBEdit
            Left = 5
            Top = 246
            Width = 38
            Height = 23
            DataField = 'DDD_FONE'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object DBEdit25: TDBEdit
            Left = 163
            Top = 246
            Width = 73
            Height = 23
            DataField = 'VOIP'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object DBEdit45: TDBEdit
            Left = 124
            Top = 246
            Width = 38
            Height = 23
            DataField = 'DDD_VOIP'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object DBEdit48: TDBEdit
            Left = 283
            Top = 246
            Width = 73
            Height = 23
            DataField = 'FAX'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
          end
          object DBEdit54: TDBEdit
            Left = 244
            Top = 246
            Width = 38
            Height = 23
            DataField = 'DDD_FAX'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object DBEdit57: TDBEdit
            Left = 402
            Top = 246
            Width = 73
            Height = 23
            DataField = 'CELULAR'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
          end
          object DBEdit60: TDBEdit
            Left = 363
            Top = 246
            Width = 38
            Height = 23
            DataField = 'DDD_CELULAR'
            DataSource = BaseDados.DS_Clientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
          end
          object EditVendedor2: TEdit
            Left = 62
            Top = 330
            Width = 173
            Height = 23
            Color = clBtnFace
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 21
            Text = '***'
          end
          object GroupBox1: TGroupBox
            Left = 5
            Top = 131
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
              object Label6: TLabel
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
                DataSource = BaseDados.DS_Clientes
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
                DataSource = BaseDados.DS_Clientes
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
                DataSource = BaseDados.DS_Clientes
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
                DataSource = BaseDados.DS_Clientes
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
                DataSource = BaseDados.DS_Clientes
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
                DataSource = BaseDados.DS_Clientes
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
                DataSource = BaseDados.DS_Clientes
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
                DataSource = BaseDados.DS_Clientes
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
              Width = 86
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
              DataSource = BaseDados.DS_Clientes
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
          object EditTransportadora: TIDBEditDialog
            Left = 480
            Top = 330
            Width = 70
            Height = 23
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 24
            Text = ''
            Visible = True
            EditType = etAlphaNumeric
            EmptyText = 'Tecle F8'
            FocusColor = clBtnFace
            LabelCaption = 'Transportadora:'
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
            ButtonHint = 'Transportadora:'
            Etched = False
            ButtonCaption = '...'
            DataField = 'TRANSPORTADORA'
            DataSource = BaseDados.DS_Clientes
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomeTrasportadora
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
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              'TIPO='#39'TRANSPORTADORA'#39
              'AND'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT count(*) FROM CAD_CLIENTES'
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
          object EditNomeTrasportadora: TEdit
            Left = 551
            Top = 330
            Width = 192
            Height = 23
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 25
            Text = '***'
          end
          object EditAtividade: TIDBEditDialog
            Left = 491
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
            DataSource = BaseDados.DS_Clientes
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
            Left = 551
            Top = 24
            Width = 192
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
            Left = 3
            Top = 24
            Width = 83
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'CODIGO'
            DataSource = BaseDados.DS_Clientes
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object Tab_JImportantes: TTabSheet
          Caption = 'Dados de Cobran'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ImageIndex = 1
          ParentFont = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox7: TGroupBox
            Left = 0
            Top = 0
            Width = 1062
            Height = 418
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object GroupBox5: TGroupBox
              Left = 2
              Top = 17
              Width = 1058
              Height = 114
              Align = alTop
              Caption = '[Endere'#231'o de Cobran'#231'a]'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object Label45: TLabel
                Left = 109
                Top = 24
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
              object Label46: TLabel
                Left = 5
                Top = 24
                Width = 20
                Height = 15
                Caption = 'CEP'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object Label47: TLabel
                Left = 484
                Top = 24
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
              object Label48: TLabel
                Left = 224
                Top = 68
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
              object Label49: TLabel
                Left = 697
                Top = 68
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
              object Label50: TLabel
                Left = 135
                Top = 68
                Width = 69
                Height = 15
                Caption = 'Caixa Postal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object Label54: TLabel
                Left = 5
                Top = 68
                Width = 26
                Height = 15
                Caption = 'Fone'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 109
                Top = 40
                Width = 366
                Height = 23
                DataField = 'ENDCOB_ENDERECO'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit4: TDBEdit
                Left = 5
                Top = 40
                Width = 89
                Height = 23
                DataField = 'ENDCOB_CEP'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit7: TDBEdit
                Left = 484
                Top = 40
                Width = 249
                Height = 23
                DataField = 'ENDCOB_BAIRRO'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit32: TDBEdit
                Left = 224
                Top = 83
                Width = 56
                Height = 23
                DataField = 'ENDCOB_CODIGOCIDADE'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object DBEdit33: TDBEdit
                Left = 698
                Top = 83
                Width = 35
                Height = 23
                Color = 14811135
                DataField = 'ENDCOB_UF'
                DataSource = BaseDados.DS_Clientes
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 7
              end
              object DBEdit34: TDBEdit
                Left = 135
                Top = 83
                Width = 81
                Height = 23
                DataField = 'ENDCOB_CXP'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 4
              end
              object DBEdit35: TDBEdit
                Left = 282
                Top = 83
                Width = 408
                Height = 23
                Color = 14811135
                DataField = 'ENDCOB_NOMECIDADE'
                DataSource = BaseDados.DS_Clientes
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
              end
              object DBEdit36: TDBEdit
                Left = 5
                Top = 83
                Width = 125
                Height = 23
                DataField = 'ENDCOB_FONE'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
            end
            object rgpSerasa: TDBRadioGroup
              Left = 2
              Top = 185
              Width = 1058
              Height = 54
              Align = alTop
              Caption = 'Inclus'#227'o no Servi'#231'o de Prote'#231#227'o ao Cr'#233'dito'
              Columns = 5
              DataField = 'PROTESTO'
              DataSource = BaseDados.DS_Clientes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              Items.Strings = (
                'N'#195'O'
                'SERASA'
                'SPC'
                'CART'#211'RIO'
                'OUTROS')
              ParentFont = False
              TabOrder = 2
              Values.Strings = (
                'NAO'
                'SERASA'
                'SPC'
                'CART'#211'RIO'
                'OUTROS')
            end
            object rgpBloqueio: TDBRadioGroup
              Left = 2
              Top = 131
              Width = 1058
              Height = 54
              Align = alTop
              Caption = 'Bloquear cr'#233'dito'
              Columns = 2
              DataField = 'BLOQUEADO'
              DataSource = BaseDados.DS_Clientes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentFont = False
              TabOrder = 1
              Values.Strings = (
                'S'
                'N')
            end
            object GroupBox10: TGroupBox
              Left = 2
              Top = 239
              Width = 423
              Height = 177
              Align = alLeft
              TabOrder = 3
              object Label12: TLabel
                Left = 306
                Top = 22
                Width = 92
                Height = 15
                Caption = 'Cr'#233'dito Utilizado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object Label42: TLabel
                Left = 213
                Top = 23
                Width = 89
                Height = 15
                Caption = 'Cr'#233'd. Dispon'#237'vel'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object Label41: TLabel
                Left = 117
                Top = 22
                Width = 92
                Height = 15
                Caption = 'Limite de Cr'#233'dito'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object Label44: TLabel
                Left = 12
                Top = 21
                Width = 75
                Height = 15
                Caption = 'Data Protesto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit26: TDBEdit
                Left = 306
                Top = 38
                Width = 92
                Height = 23
                DataField = 'CREDITO_UTILIZADO'
                DataSource = BaseDados.DS_Clientes
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit19: TDBEdit
                Left = 213
                Top = 38
                Width = 91
                Height = 23
                DataField = 'CREDITO_DISPONIVEL'
                DataSource = BaseDados.DS_Clientes
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit11: TDBEdit
                Left = 117
                Top = 38
                Width = 91
                Height = 23
                DataField = 'CREDITO_LIMITE'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit41: TDBEdit
                Left = 11
                Top = 38
                Width = 62
                Height = 23
                CharCase = ecUpperCase
                DataField = 'PROTESTO_DATA'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
            end
            object GroupBox15: TGroupBox
              Left = 776
              Top = 239
              Width = 284
              Height = 177
              Cursor = crNo
              Align = alRight
              Caption = 'Ultima Venda'
              Enabled = False
              TabOrder = 5
              object Label7: TLabel
                Left = 130
                Top = 22
                Width = 40
                Height = 15
                Caption = 'Origem'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object Label36: TLabel
                Left = 21
                Top = 23
                Width = 29
                Height = 15
                Caption = 'Data:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit10: TDBEdit
                Left = 130
                Top = 38
                Width = 119
                Height = 23
                Color = clBtnFace
                DataField = 'ULTIMAVENDA_ORIGEM'
                DataSource = BaseDados.DS_Clientes
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit12: TDBEdit
                Left = 21
                Top = 38
                Width = 91
                Height = 23
                Color = clBtnFace
                DataField = 'ULTIMAVENDA_DATA'
                DataSource = BaseDados.DS_Clientes
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
            object GroupBox16: TGroupBox
              Left = 425
              Top = 239
              Width = 351
              Height = 177
              Align = alClient
              Caption = 'Status de Cliente'
              TabOrder = 4
              object Label37: TLabel
                Left = 6
                Top = 78
                Width = 115
                Height = 15
                Caption = 'Data da desativa'#231#227'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object rgpAtivo: TDBRadioGroup
                Left = 2
                Top = 17
                Width = 347
                Height = 54
                Align = alTop
                Caption = 'Cadastro Ativo'
                Columns = 2
                DataField = 'ATIVO'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBEdit17: TDBEdit
                Left = 6
                Top = 94
                Width = 115
                Height = 23
                DataField = 'ATIVODATA'
                DataSource = BaseDados.DS_Clientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
          end
        end
      end
    end
    object Tab_Referencias: TTabSheet
      Caption = 'Refer'#234'ncias'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox11: TGroupBox
        Left = 0
        Top = 246
        Width = 1070
        Height = 86
        Align = alBottom
        Caption = 'Refer'#234'ncias Banc'#225'rias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object GridBancos: TDBGrid
          Left = 2
          Top = 17
          Width = 1066
          Height = 67
          Align = alClient
          DataSource = BaseDados.DS_RefBanc
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnKeyPress = GridBancosKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'BANCO'
              Title.Caption = 'Banco'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AGENCIA'
              Title.Caption = 'Agencia'
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTA'
              Title.Caption = 'C. Corrente'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GERENTE'
              Title.Caption = 'Gerente'
              Width = 303
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FONE_AGENCIA'
              Title.Caption = 'Fone AG.'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CH_ESP'
              PickList.Strings = (
                'S'
                'N')
              Title.Caption = 'CH. Esp.'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ATIVA'
              PickList.Strings = (
                'S'
                'N')
              Title.Caption = 'Ativa'
              Width = 42
              Visible = True
            end>
        end
      end
      object GroupBox12: TGroupBox
        Left = 0
        Top = 153
        Width = 1070
        Height = 93
        Align = alBottom
        Caption = 'Refer'#234'ncias Comerciais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object GridComerciais: TDBGrid
          Left = 2
          Top = 17
          Width = 1066
          Height = 74
          Align = alClient
          DataSource = BaseDados.DS_RefCom
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnKeyPress = GridComerciaisKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'EMPRESA'
              Title.Caption = 'Empresa / Loja'
              Width = 255
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FONE'
              Title.Caption = 'Fone'
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_ULTCOMPRA'
              Title.Caption = 'Dt. Ult. Compra'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_ULTCOMPRA'
              Title.Caption = 'Valor Ult Compra'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_PRESTACAO'
              Title.Caption = 'Valor Presta'#231#227'o'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_ULTPARC'
              Title.Caption = 'Vcto. Ult Parc.'
              Width = 74
              Visible = True
            end>
        end
      end
      object GroupBox13: TGroupBox
        Left = 0
        Top = 332
        Width = 1070
        Height = 114
        Align = alBottom
        Caption = 'Informa'#231#245'es sobre S'#243'cios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object GridSocios: TDBGrid
          Left = 2
          Top = 17
          Width = 1066
          Height = 95
          Align = alClient
          DataSource = BaseDados.DS_Socios
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnKeyPress = DBGrid12KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Nome'
              Width = 219
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPF'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RG'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_NASC'
              Title.Caption = 'Data Nasc'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FONE'
              Title.Caption = 'Fone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CARGO'
              Title.Caption = 'Cargo'
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARTIC'
              Title.Caption = 'Participa'#231#227'o %'
              Width = 78
              Visible = True
            end>
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 1070
        Height = 153
        Align = alClient
        Caption = 'Observa'#231#245'es'
        TabOrder = 0
        object DBMemo1: TDBMemo
          Left = 2
          Top = 17
          Width = 1066
          Height = 134
          Align = alClient
          DataField = 'OBSERVACAO'
          DataSource = BaseDados.DS_Clientes
          TabOrder = 0
        end
      end
    end
    object Tab_Historico: TTabSheet
      Caption = 'Hist'#243'ricos'
      ImageIndex = 3
      OnExit = Tab_HistoricoExit
      OnShow = Tab_HistoricoShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1070
        Height = 402
        Align = alClient
        BevelWidth = 3
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 3
          Top = 203
          Width = 1064
          Height = 5
          Cursor = crVSplit
          Align = alTop
          ExplicitTop = 212
          ExplicitWidth = 1072
        end
        object GroupBox4: TGroupBox
          Left = 3
          Top = 3
          Width = 1064
          Height = 200
          Align = alTop
          Caption = 'Hist'#243'rico de Vendas'
          TabOrder = 0
          object GridPedidos: TDBGrid
            Left = 2
            Top = 17
            Width = 1060
            Height = 181
            Align = alClient
            DataSource = ds_Pedido
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODIGO'
                Title.Caption = 'PEDIDO:'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA'
                Title.Caption = 'DATA DO PEDIDO:'
                Width = 103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_ENTREGA'
                Title.Caption = 'DATA ENTREGA:'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE_TOTAL'
                Title.Caption = 'QTDE TOTAL:'
                Width = 104
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_TOTAL'
                Title.Caption = 'VALOR VENDA:'
                Width = 124
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORMA_PAGTO_NOME'
                Title.Caption = 'FORMA PAGAMENTO:'
                Width = 191
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS'
                Title.Caption = 'FATURADO:'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENDEDOR_NOME'
                Title.Caption = 'REPRESENTANTE:'
                Width = 176
                Visible = True
              end>
          end
        end
        object GroupBox6: TGroupBox
          Left = 3
          Top = 208
          Width = 1064
          Height = 191
          Align = alClient
          Caption = 'Hist'#243'rico Financeiro'
          TabOrder = 1
          object GridFinanceiro: TDBGrid
            Left = 2
            Top = 17
            Width = 1060
            Height = 172
            Align = alClient
            DataSource = ds_ctareceber
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
            OnDrawColumnCell = GridFinanceiroDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'DATA'
                Title.Caption = 'DATA DO DOCUMENTO:'
                Width = 127
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOCUMENTO'
                Title.Caption = 'DOCUMENTO:'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTAFISCAL'
                Title.Caption = 'NOTA FISCAL:'
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENCIMENTO'
                Title.Caption = 'VENCIMENTO:'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_PAGTO'
                Title.Caption = 'DATA PAGAMENTO:'
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORMAPAGAMENTO'
                Title.Caption = 'FORMA DE PAGAMENTO:'
                Width = 158
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'VALOR DO TITULO:'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_PAGO'
                Title.Caption = 'VALOR PAGO:'
                Width = 86
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'QUITADO'
                Title.Alignment = taCenter
                Title.Caption = 'QUITADO:'
                Width = 75
                Visible = True
              end>
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 402
        Width = 1070
        Height = 44
        Align = alBottom
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object LblVendas: TLabel
          Left = 241
          Top = 12
          Width = 43
          Height = 18
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblReceber: TLabel
          Left = 465
          Top = 12
          Width = 43
          Height = 18
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblPago: TLabel
          Left = 688
          Top = 13
          Width = 43
          Height = 18
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblSaldoReceber: TLabel
          Left = 912
          Top = 12
          Width = 43
          Height = 18
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblQuantidade: TLabel
          Left = 18
          Top = 12
          Width = 18
          Height = 18
          Caption = '0.0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1024
    Height = 36
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1024
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 1024
      Height = 36
      Font.Height = -13
      ExplicitWidth = 1024
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 1022
        Height = 34
        Caption = 'Cadastro de Clientes'
        ExplicitWidth = 155
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 515
    Width = 1024
    Height = 62
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 515
    ExplicitWidth = 1024
    ExplicitHeight = 62
    inherited W7Panel1: TPanel
      Width = 1024
      Height = 62
      Font.Height = -13
      ExplicitWidth = 1024
      ExplicitHeight = 62
      inherited SpbExtra: TSpeedButton
        Left = 527
        Width = 59
        Height = 59
        Font.Height = -12
        ExplicitLeft = 527
        ExplicitWidth = 59
        ExplicitHeight = 59
      end
      inherited SpbSair: TSpeedButton
        Left = 461
        Width = 59
        Height = 59
        OnClick = FrmFrameBotoes1SpbSairClick
        ExplicitLeft = 461
        ExplicitWidth = 59
        ExplicitHeight = 59
      end
      inherited SpbImprimir: TSpeedButton
        Left = 396
        Width = 60
        Height = 59
        PopupMenu = PopupImprimir
        OnClick = FrmFrameBotoes1SpbImprimirClick
        ExplicitLeft = 396
        ExplicitWidth = 60
        ExplicitHeight = 59
      end
      inherited SpbProcurar: TSpeedButton
        Left = 331
        Width = 59
        Height = 59
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 331
        ExplicitWidth = 59
        ExplicitHeight = 59
      end
      inherited SpbExcluir: TSpeedButton
        Left = 266
        Width = 59
        Height = 59
        OnClick = FrmFrameBotoes1SpbExcluirClick
        ExplicitLeft = 266
        ExplicitWidth = 59
        ExplicitHeight = 59
      end
      inherited SpbCancelar: TSpeedButton
        Left = 136
        Width = 59
        Height = 59
        OnClick = FrmFrameBotoes1SpbCancelarClick
        ExplicitLeft = 136
        ExplicitWidth = 59
        ExplicitHeight = 59
      end
      inherited SpbSalvar: TSpeedButton
        Left = 200
        Width = 60
        Height = 59
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 200
        ExplicitWidth = 60
        ExplicitHeight = 59
      end
      inherited SpbEditar: TSpeedButton
        Left = 70
        Width = 59
        Height = 59
        OnClick = FrmFrameBotoes1SpbEditarClick
        ExplicitLeft = 70
        ExplicitWidth = 59
        ExplicitHeight = 59
      end
      inherited SpbAdicionar: TSpeedButton
        Width = 60
        Height = 59
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitWidth = 60
        ExplicitHeight = 59
      end
    end
  end
  object EditClienteLocalizarFisica: TIDBEditDialog
    Left = 800
    Top = 9
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
      'SELECT * E FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM VIEW_CLIENTES'
      'WHERE'
      'TIPO='#39'CLIENTE'#39
      'AND'
      'CLASSIFICACAO='#39'F'#39
      'AND'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'C'#211'DIGO'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CPF_CNPJ'
        WhereSyntax = 'CPF_CNPJ'
        DisplayLabel = 'CPF/CNPJ:'
        DisplayWidth = 18
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'NOME:'
        DisplayWidth = 40
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'NOME_FANTASIA'
        WhereSyntax = 'NOME_FANTASIA'
        DisplayLabel = 'NOME FANTASIA:'
        DisplayWidth = 20
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
        DisplayWidth = 25
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'CIDADENOME'
        WhereSyntax = 'CIDADENOME'
        DisplayLabel = 'CIDADE NOME:'
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
    DialogWidth = 1000
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
  object EditClienteLocalizarJuridico: TIDBEditDialog
    Left = 720
    Top = 9
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
    TabOrder = 4
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
      'SELECT * E FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM VIEW_CLIENTES'
      'WHERE'
      'TIPO='#39'CLIENTE'#39
      'AND'
      'CLASSIFICACAO='#39'J'#39
      'AND'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'C'#211'DIGO'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CPF_CNPJ'
        WhereSyntax = 'CPF_CNPJ'
        DisplayLabel = 'CPF/CNPJ:'
        DisplayWidth = 18
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'NOME:'
        DisplayWidth = 40
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'NOME_FANTASIA'
        WhereSyntax = 'NOME_FANTASIA'
        DisplayLabel = 'NOME FANTASIA:'
        DisplayWidth = 20
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
        DisplayWidth = 25
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'CIDADENOME'
        WhereSyntax = 'CIDADENOME'
        DisplayLabel = 'CIDADE NOME:'
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
    DialogWidth = 1000
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
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 613
    Top = 241
  end
  object db_Pedido: TFDQuery
    BeforeOpen = db_PedidoBeforeOpen
    MasterSource = BaseDados.DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CLIENTE=:CODIGO')
    Left = 104
    Top = 144
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
    object db_PedidoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      ReadOnly = True
    end
    object db_PedidoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
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
    object db_PedidoVENDEDOR_NOME: TStringField
      FieldName = 'VENDEDOR_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_PedidoFORMA_PAGTO_NOME: TStringField
      FieldName = 'FORMA_PAGTO_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_PedidoTIPOPAGAMENTO: TStringField
      FieldName = 'TIPOPAGAMENTO'
      ReadOnly = True
      Size = 200
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
    object db_PedidoSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      Required = True
      Size = 3
    end
  end
  object ds_Pedido: TDataSource
    AutoEdit = False
    DataSet = db_Pedido
    Left = 104
    Top = 208
  end
  object db_ctareceber: TFDQuery
    BeforeOpen = db_ctareceberBeforeOpen
    MasterSource = BaseDados.DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_FIN_CTARECEBER'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CLIENTE=:CODIGO'
      '--AND '
      '--PAGAMENTOTITULO IN ('#39'N'#39','#39'NAO'#39')')
    Left = 192
    Top = 328
    ParamData = <
      item
        Name = 'EMPRESA'
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_ctareceberEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      ReadOnly = True
    end
    object db_ctareceberCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_ctareceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ReadOnly = True
      Size = 30
    end
    object db_ctareceberNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ReadOnly = True
    end
    object db_ctareceberDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object db_ctareceberVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
    end
    object db_ctareceberDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
    end
    object db_ctareceberFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ReadOnly = True
      Size = 200
    end
    object db_ctareceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      ReadOnly = True
      Size = 30
    end
    object db_ctareceberVALOR: TBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object db_ctareceberVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object db_ctareceberVALOR_SALDO: TBCDField
      FieldName = 'VALOR_SALDO'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object db_ctareceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      ReadOnly = True
    end
    object db_ctareceberNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ReadOnly = True
      Size = 200
    end
    object db_ctareceberVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      ReadOnly = True
    end
    object db_ctareceberNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ReadOnly = True
      Size = 200
    end
    object db_ctareceberCIDADE_UF: TStringField
      FieldName = 'CIDADE_UF'
      ReadOnly = True
      Size = 233
    end
    object db_ctareceberPLN_CONTA: TStringField
      FieldName = 'PLN_CONTA'
      Size = 30
    end
    object db_ctareceberPLN_CONTA_NOME: TStringField
      FieldName = 'PLN_CONTA_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_ctareceberQUITADO: TStringField
      FieldName = 'QUITADO'
      ReadOnly = True
      Size = 3
    end
    object db_ctareceberATRASO_DIAS: TIntegerField
      FieldName = 'ATRASO_DIAS'
      ReadOnly = True
    end
    object db_ctareceberBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      ReadOnly = True
      Size = 10
    end
    object db_ctareceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ReadOnly = True
      Size = 5000
    end
    object db_ctareceberCOMPLEMENTAR: TStringField
      FieldName = 'COMPLEMENTAR'
      ReadOnly = True
      Size = 10
    end
    object db_ctareceberGERARCOMPLEMENTO: TStringField
      FieldName = 'GERARCOMPLEMENTO'
      ReadOnly = True
      Size = 10
    end
    object db_ctareceberCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
      ReadOnly = True
    end
    object db_ctareceberCONTACAIXANOME: TStringField
      FieldName = 'CONTACAIXANOME'
      ReadOnly = True
      Size = 200
    end
    object db_ctareceberCONTACAIXASALDOINICIAL: TBCDField
      FieldName = 'CONTACAIXASALDOINICIAL'
      ReadOnly = True
    end
    object db_ctareceberCONTACORRENTE: TIntegerField
      FieldName = 'CONTACORRENTE'
      ReadOnly = True
    end
    object db_ctareceberDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      ReadOnly = True
    end
    object db_ctareceberDESCONTOVALOR: TBCDField
      FieldName = 'DESCONTOVALOR'
      ReadOnly = True
    end
    object db_ctareceberDESPESAS_JUROS: TBCDField
      FieldName = 'DESPESAS_JUROS'
      ReadOnly = True
    end
    object db_ctareceberDESPESAS_JUROSVALOR: TBCDField
      FieldName = 'DESPESAS_JUROSVALOR'
      ReadOnly = True
    end
    object db_ctareceberDESPESAS_MULTA: TBCDField
      FieldName = 'DESPESAS_MULTA'
      ReadOnly = True
    end
    object db_ctareceberDESPESAS_CARTORIO: TBCDField
      FieldName = 'DESPESAS_CARTORIO'
      ReadOnly = True
    end
    object db_ctareceberDESPESAS_OUTRAS: TBCDField
      FieldName = 'DESPESAS_OUTRAS'
      ReadOnly = True
    end
    object db_ctareceberDESPESAS_TOTAL: TBCDField
      FieldName = 'DESPESAS_TOTAL'
      ReadOnly = True
    end
    object db_ctareceberESPECIE: TStringField
      FieldName = 'ESPECIE'
      ReadOnly = True
      Size = 30
    end
    object db_ctareceberDATA_PAGTODIAS: TIntegerField
      FieldName = 'DATA_PAGTODIAS'
      ReadOnly = True
    end
    object db_ctareceberPRAZO_DIAS: TIntegerField
      FieldName = 'PRAZO_DIAS'
      ReadOnly = True
    end
    object db_ctareceberVALOR_DIFERENCA: TBCDField
      FieldName = 'VALOR_DIFERENCA'
      ReadOnly = True
    end
    object db_ctareceberDESCONTADO: TStringField
      FieldName = 'DESCONTADO'
      ReadOnly = True
      Size = 10
    end
    object db_ctareceberPAGAMENTOTITULO: TStringField
      FieldName = 'PAGAMENTOTITULO'
      ReadOnly = True
      Size = 10
    end
  end
  object ds_ctareceber: TDataSource
    AutoEdit = False
    DataSet = db_ctareceber
    Left = 192
    Top = 384
  end
  object db_PedidoSum: TFDQuery
    BeforeOpen = db_PedidoSumBeforeOpen
    MasterSource = BaseDados.DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      'SUM(QTDE_TOTAL) AS QTDE_TOTAL,'
      'SUM(VLR_TOTAL) AS VLR_TOTAL'
      'FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CLIENTE=:CODIGO')
    Left = 176
    Top = 216
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
  end
  object db_ctareceberSum: TFDQuery
    BeforeOpen = db_ctareceberSumBeforeOpen
    MasterSource = BaseDados.DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      'SUM(VALOR)      AS TOTALRECEBER,'
      'SUM(VALOR_PAGO) AS TOTALPAGO,'
      'SUM(VALOR)- SUM(VALOR_PAGO) AS SALSOFINAL'
      ' FROM VIEW_FIN_CTARECEBER'
      ''
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CLIENTE=:CODIGO')
    Left = 280
    Top = 384
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
  end
  object frdb_Pedido: TfrxDBDataset
    UserName = 'frdb_Pedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'DATA_FATURAMENTO=DATA_FATURAMENTO'
      'DATA_ENTREGA=DATA_ENTREGA'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'FORMA_PAGTO_NOME=FORMA_PAGTO_NOME'
      'TIPOPAGAMENTO=TIPOPAGAMENTO'
      'QTDE_TOTAL=QTDE_TOTAL'
      'VLR_TOTAL=VLR_TOTAL'
      'STATUS=STATUS')
    DataSet = db_Pedido
    BCDToCurrency = False
    Left = 176
    Top = 144
  end
  object frdb_ctareceber: TfrxDBDataset
    UserName = 'frdb_ctareceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DOCUMENTO=DOCUMENTO'
      'NOTAFISCAL=NOTAFISCAL'
      'DATA=DATA'
      'VENCIMENTO=VENCIMENTO'
      'DATA_PAGTO=DATA_PAGTO'
      'FORMAPAGAMENTO=FORMAPAGAMENTO'
      'NOSSONUMERO=NOSSONUMERO'
      'VALOR=VALOR'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_SALDO=VALOR_SALDO'
      'CLIENTE=CLIENTE'
      'NOME_CLIENTE=NOME_CLIENTE'
      'VENDEDOR=VENDEDOR'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'CIDADE_UF=CIDADE_UF'
      'PLN_CONTA=PLN_CONTA'
      'PLN_CONTA_NOME=PLN_CONTA_NOME'
      'QUITADO=QUITADO'
      'ATRASO_DIAS=ATRASO_DIAS'
      'BLOQUEADO=BLOQUEADO'
      'HISTORICO=HISTORICO'
      'COMPLEMENTAR=COMPLEMENTAR'
      'GERARCOMPLEMENTO=GERARCOMPLEMENTO'
      'CONTACAIXA=CONTACAIXA'
      'CONTACAIXANOME=CONTACAIXANOME'
      'CONTACAIXASALDOINICIAL=CONTACAIXASALDOINICIAL'
      'CONTACORRENTE=CONTACORRENTE'
      'DESCONTO=DESCONTO'
      'DESCONTOVALOR=DESCONTOVALOR'
      'DESPESAS_JUROS=DESPESAS_JUROS'
      'DESPESAS_JUROSVALOR=DESPESAS_JUROSVALOR'
      'DESPESAS_MULTA=DESPESAS_MULTA'
      'DESPESAS_CARTORIO=DESPESAS_CARTORIO'
      'DESPESAS_OUTRAS=DESPESAS_OUTRAS'
      'DESPESAS_TOTAL=DESPESAS_TOTAL'
      'ESPECIE=ESPECIE'
      'DATA_PAGTODIAS=DATA_PAGTODIAS'
      'PRAZO_DIAS=PRAZO_DIAS'
      'VALOR_DIFERENCA=VALOR_DIFERENCA'
      'DESCONTADO=DESCONTADO'
      'PAGAMENTOTITULO=PAGAMENTOTITULO')
    DataSet = db_ctareceber
    BCDToCurrency = False
    Left = 280
    Top = 328
  end
  object frdb_Clientes: TfrxDBDataset
    UserName = 'frdb_Clientes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA=DATA'
      'TIPO=TIPO'
      'CLASSIFICACAO=CLASSIFICACAO'
      'NOME=NOME'
      'NOME_FANTASIA=NOME_FANTASIA'
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'REGIAO=REGIAO'
      'REGIAO_NOME=REGIAO_NOME'
      'CPF_CNPJ=CPF_CNPJ'
      'RG_IE=RG_IE'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'DDD_FONE=DDD_FONE'
      'FONE=FONE'
      'DDD_FAX=DDD_FAX'
      'FAX=FAX'
      'REFERENCIA=REFERENCIA'
      'CIDADECODIGO=CIDADECODIGO'
      'CIDADENOME=CIDADENOME'
      'UF=UF'
      'CONTATO=CONTATO'
      'EMAIL=EMAIL'
      'SITE=SITE'
      'ENDCOB_ENDERECO=ENDCOB_ENDERECO'
      'ENDCOB_BAIRRO=ENDCOB_BAIRRO'
      'ENDCOB_DDD=ENDCOB_DDD'
      'ENDCOB_FONE=ENDCOB_FONE'
      'ENDCOB_CXP=ENDCOB_CXP'
      'ENDCOB_NOMECIDADE=ENDCOB_NOMECIDADE'
      'ENDCOB_UF=ENDCOB_UF'
      'ENDCOB_CEP=ENDCOB_CEP'
      'BLOQUEADO=BLOQUEADO'
      'PROTESTO=PROTESTO'
      'CREDITO_LIMITE=CREDITO_LIMITE'
      'CREDITO_DISPONIVEL=CREDITO_DISPONIVEL'
      'CREDITO_UTILIZADO=CREDITO_UTILIZADO')
    DataSet = db_ViewCliente
    BCDToCurrency = False
    Left = 288
    Top = 136
  end
  object frxReportCliente: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40905.983237453700000000
    ReportOptions.LastChange = 41026.807519849540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 456
    Top = 144
    Datasets = <
      item
        DataSet = frdb_Clientes
        DataSetName = 'frdb_Clientes'
      end
      item
        DataSet = frdb_ctareceber
        DataSetName = 'frdb_ctareceber'
      end
      item
        DataSet = frdb_Pedido
        DataSetName = 'frdb_Pedido'
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
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 17.007874020000000000
        ParentFont = False
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        DataSet = frdb_Pedido
        DataSetName = 'frdb_Pedido'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 68.031496060000000000
          Top = 1.889763780000000000
          Width = 74.078740160000000000
          Height = 11.338582680000000000
          DataField = 'DATA'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Pedido."DATA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 238.110236220000000000
          Top = 1.889763780000000000
          Width = 67.275590550000000000
          Height = 11.338582680000000000
          DataField = 'QTDE_TOTAL'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdb_Pedido."QTDE_TOTAL"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 423.307086610000000000
          Top = 1.889763780000000000
          Width = 108.472440940000000000
          Height = 11.338582680000000000
          DataField = 'FORMA_PAGTO_NOME'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Pedido."FORMA_PAGTO_NOME"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 1.889763779527560000
          Top = 1.889763779527560000
          Width = 48.881880000000000000
          Height = 11.338582680000000000
          DataField = 'CODIGO'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdb_Pedido."CODIGO"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 151.181102360000000000
          Top = 1.889763780000000000
          Width = 81.259842520000000000
          Height = 11.338582680000000000
          DataField = 'DATA_ENTREGA'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Pedido."DATA_ENTREGA"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 544.251968500000000000
          Top = 1.889763780000000000
          Width = 90.708661420000000000
          Height = 11.338582680000000000
          DataField = 'VENDEDOR_NOME'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Pedido."VENDEDOR_NOME"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 317.480314960000000000
          Top = 1.889763780000000000
          Width = 82.015748030000000000
          Height = 11.338582680000000000
          DataField = 'VLR_TOTAL'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdb_Pedido."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 651.968503940000000000
          Top = 1.889763780000000000
          Width = 59.338582680000000000
          Height = 11.338582680000000000
          DataField = 'STATUS'
          DataSet = frdb_Pedido
          DataSetName = 'frdb_Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdb_Pedido."STATUS"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 105.826840000000000000
        Top = 680.315400000000000000
        Width = 718.110700000000000000
        object Line5: TfrxLineView
          Align = baWidth
          Top = 1.889763780000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 277.244280000000000000
          Top = 7.559055120000000000
          Width = 68.031466770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdb_Pedido."QTDE_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 277.244280000000000000
          Top = 25.456710000000000000
          Width = 68.031466770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [SUM(<frdb_Pedido."VLR_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 277.244280000000000000
          Top = 43.354360000000000000
          Width = 68.031466770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [SUM(<frdb_ctareceber."VALOR">,DetailData2)]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 277.244280000000000000
          Top = 61.252010000000000000
          Width = 68.031466770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [SUM(<frdb_ctareceber."VALOR_PAGO">,DetailData2)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 277.244280000000000000
          Top = 78.929190000000000000
          Width = 68.031466770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              'R$ [SUM(<frdb_ctareceber."VALOR">-<frdb_ctareceber."VALOR_PAGO">' +
              ',DetailData2)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 158.740260000000000000
          Top = 7.559055120000000000
          Width = 113.385826770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE VENDIDA:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 158.740260000000000000
          Top = 25.456714880000000000
          Width = 113.385826770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL DE VENDAS:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 158.740260000000000000
          Top = 43.354364880000000000
          Width = 113.385826770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'A RECEBER:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 158.740260000000000000
          Top = 61.252014880000000000
          Width = 113.385826770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'RECEBIDOS:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 158.740260000000000000
          Top = 78.929194880000000000
          Width = 113.385826770000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SALDO A RECEBER:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559055120000000000
          Width = 126.614173228346000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'QUANTIDADE DE PEDIDOS: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 427.086890000000000000
          Top = 17.677180000000000000
          Width = 279.685146770000000000
          Height = 71.811060240000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Esse cliente possui [COUNT(MasterData1)] Pedido(s) de Venda(s). ' +
              'Em cada Pedido foi vendido [AVG(<frdb_Pedido."QTDE_TOTAL">,Maste' +
              'rData1)]  iten(s). Significam R$ [AVG(<frdb_Pedido."VLR_TOTAL">,' +
              'MasterData1)] por cada Pedido. Cada parcela de titulo(s) a receb' +
              'er desse cliente ficam em torno de R$ [AVG(<frdb_ctareceber."VAL' +
              'OR">,DetailData2)]. Prazo m'#233'dio de pagamento '#233' [AVG(<frdb_ctarec' +
              'eber."PRAZO_DIAS">,DetailData2)] dia(s).  Prazo m'#233'dio de atraso ' +
              #233' de [AVG(<frdb_ctareceber."ATRASO_DIAS">,DetailData2)] dia(s). ')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 427.086890000000000000
          Top = 3.779530000000000000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'AN'#193'LISE DE M'#201'DIAS:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 126.614173228346000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'QUANTIDADE DE TITULOS:[COUNT(DetailData2)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 808.819420000000000000
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
          DataField = 'EMP_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_SITE"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Align = baWidth
          Top = 1.889763779527560000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Top = 540.472790000000000000
        Width = 718.110700000000000000
        DataSet = frdb_Clientes
        DataSetName = 'frdb_Clientes'
        RowCount = 0
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 13.228344020000000000
        Top = 563.149970000000000000
        Width = 718.110700000000000000
        DataSet = frdb_ctareceber
        DataSetName = 'frdb_ctareceber'
        RowCount = 0
        object Memo59: TfrxMemoView
          Left = 68.031496060000000000
          Width = 62.740150160000000000
          Height = 11.338582680000000000
          DataField = 'DOCUMENTO'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_ctareceber."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 207.874015750000000000
          Width = 67.275590550000000000
          Height = 11.338582680000000000
          DataField = 'VENCIMENTO'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_ctareceber."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 655.748031500000000000
          Width = 55.559052680000000000
          Height = 11.338582680000000000
          DataField = 'QUITADO'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdb_ctareceber."QUITADO"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 1.889763780000000000
          Width = 56.440940000000000000
          Height = 11.338582680000000000
          DataField = 'DATA'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_ctareceber."DATA"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 139.842519690000000000
          Width = 58.582662520000000000
          Height = 11.338582680000000000
          DataField = 'NOTAFISCAL'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_ctareceber."NOTAFISCAL"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 499.456692910000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          DataField = 'VALOR'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdb_ctareceber."VALOR"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 279.685039370000000000
          Width = 82.015748030000000000
          Height = 11.338582680000000000
          DataField = 'DATA_PAGTO'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_ctareceber."DATA_PAGTO"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 366.614173230000000000
          Width = 119.811030940000000000
          Height = 11.338582680000000000
          DataField = 'FORMAPAGAMENTO'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_ctareceber."FORMAPAGAMENTO"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 578.826771650000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          DataField = 'VALOR_PAGO'
          DataSet = frdb_ctareceber
          DataSetName = 'frdb_ctareceber'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdb_ctareceber."VALOR_PAGO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 177.637741570000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo78: TfrxMemoView
          Top = 7.559060000000000000
          Width = 550.464750000000000000
          Height = 52.913388270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          Memo.UTF8W = (
            'HIST'#211'RICO DE CLIENTE')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 554.590910000000000000
          Top = 7.559060000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo79: TfrxMemoView
          Left = 566.149603860000000000
          Top = 9.448823780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 567.149603860000000000
          Top = 24.188981260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 567.149603860000000000
          Top = 39.307091500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 632.299215040000000000
          Top = 9.448823780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo83: TfrxMemoView
          Left = 632.299215040000000000
          Top = 24.188981260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo84: TfrxMemoView
          Left = 632.299215040000000000
          Top = 39.307091500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
          WordWrap = False
        end
        object Shape4: TfrxShapeView
          Top = 63.252010000000000000
          Width = 718.000000000000000000
          Height = 113.385826770000000000
        end
        object Memo88: TfrxMemoView
          Left = 3.779527560000000000
          Top = 65.377991810000000000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOME/RAZ'#195'O SOCIAL:')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 459.000000000000000000
          Top = 65.377991810000000000
          Width = 58.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 587.000000000000000000
          Top = 65.377991810000000000
          Width = 123.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'I.E/RG:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 3.779527560000000000
          Top = 77.252010000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataField = 'NOME'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."NOME"]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 459.000000000000000000
          Top = 77.252010000000000000
          Width = 50.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CPF_CNPJ'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."CPF_CNPJ"]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 587.000000000000000000
          Top = 77.252010000000000000
          Width = 29.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'RG_IE'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."RG_IE"]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 4.000000000000000000
          Top = 93.834684720000000000
          Width = 59.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 437.842610000000000000
          Top = 93.834684720000000000
          Width = 43.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 648.740260000000000000
          Top = 93.834684720000000000
          Width = 26.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 3.779527560000000000
          Top = 106.252010000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."ENDERECO"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 437.842610000000000000
          Top = 106.252010000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'BAIRRO'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."BAIRRO"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 648.740260000000000000
          Top = 106.252010000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CEP'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."CEP"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 3.779527560000000000
          Top = 121.047283150000000000
          Width = 65.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MUNICIPIO:')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 3.779527560000000000
          Top = 133.252010000000000000
          Width = 69.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CIDADENOME'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."CIDADENOME"]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 177.527520000000000000
          Top = 133.252010000000000000
          Width = 14.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'UF'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."UF"]')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 177.527520000000000000
          Top = 121.047283150000000000
          Width = 20.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 216.307050000000000000
          Top = 121.047283150000000000
          Width = 33.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 303.409400000000000000
          Top = 121.047283150000000000
          Width = 32.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FAX:')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 303.409400000000000000
          Top = 133.393739840000000000
          Width = 18.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FAX'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."FAX"]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 391.732220000000000000
          Top = 133.141771340000000000
          Width = 45.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CONTATO'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."CONTATO"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 391.732220000000000000
          Top = 121.047283150000000000
          Width = 54.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONTATO:')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 3.779527560000000000
          Top = 161.252010000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VENDEDOR_NOME'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."VENDEDOR_NOME"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 3.779527560000000000
          Top = 147.881928820000000000
          Width = 98.118120000000000000
          Height = 12.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REPRESENTANTE:')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 532.606370000000000000
          Top = 121.047283150000000000
          Width = 102.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMAIL DO CLIENTE:')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 532.606370000000000000
          Top = 133.141771340000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'EMAIL'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."EMAIL"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Top = 92.858380000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object Line7: TfrxLineView
          Top = 119.535560000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object Line18: TfrxLineView
          Top = 147.771800000000000000
          Width = 718.110236220000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 453.543600000000000000
          Top = 63.118110240000000000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          Left = 582.047620000000000000
          Top = 63.118110240000000000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          Left = 433.189240000000000000
          Top = 93.354330710000000000
          Height = 25.322834650000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          Left = 645.520100000000000000
          Top = 93.354330710000000000
          Height = 25.322834650000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line25: TfrxLineView
          Left = 388.291590000000000000
          Top = 119.401574800000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          Left = 298.582870000000000000
          Top = 119.401574800000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          Left = 211.653680000000000000
          Top = 119.401574800000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          Left = 230.551330000000000000
          Top = 147.771800000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 529.134200000000000000
          Top = 119.401574800000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 170.078850000000000000
          Top = 119.535560000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo113: TfrxMemoView
          Left = 215.433210000000000000
          Top = 133.393739840000000000
          Width = 19.440940000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DDD_FONE'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdb_Clientes."DDD_FONE"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 240.575140000000000000
          Top = 133.393739840000000000
          Width = 49.677180000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FONE'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."FONE"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 371.267780000000000000
          Top = 93.196970000000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 371.267780000000000000
          Top = 105.669410950000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NUMERO'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."NUMERO"]')
          ParentFont = False
        end
        object Line31: TfrxLineView
          Left = 366.614410000000000000
          Top = 93.354330710000000000
          Height = 25.322834650000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        Condition = 'frdb_Clientes."CODIGO"'
        ReprintOnNewPage = True
        object Memo72: TfrxMemoView
          Left = 68.031496060000000000
          Top = 41.574632280000000000
          Width = 74.078740160000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA PEDIDO:')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 238.110236220472000000
          Top = 41.574632280000000000
          Width = 67.275590551181090000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE TOTAL:')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 651.968503940000000000
          Top = 41.574632280000000000
          Width = 59.338582680000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURADO:')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 1.889763780000000000
          Top = 41.574632280000000000
          Width = 56.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 151.181102360000000000
          Top = 41.574632280000000000
          Width = 81.259842520000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA ENTREGA:')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 544.251968500000000000
          Top = 41.574632280000000000
          Width = 90.708661420000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REPRESENTANTE:')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 317.480314960630000000
          Top = 41.574632280000000000
          Width = 82.015748031496100000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR VENDA:')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Top = 3.779530000000000000
          Width = 718.110236220000000000
          Height = 26.456678270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'HIST'#211'RICO DE VENDAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 423.307086610000000000
          Top = 41.574632280000000000
          Width = 108.472440940000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORMA PAGAMENTO:')
          ParentFont = False
        end
        object Line32: TfrxLineView
          Top = 56.440940000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 317.480314960000000000
          Top = 1.889763780000000000
          Width = 82.015748030000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdb_Pedido."VLR_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 238.110236220000000000
          Top = 1.889763779527560000
          Width = 67.275590550000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdb_Pedido."QTDE_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Width = 718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo5: TfrxSysMemoView
          Left = 11.338590000000000000
          Top = 1.889763780000000000
          Width = 67.275590550000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        Condition = 'frdb_Clientes."CODIGO"'
        ReprintOnNewPage = True
        object Memo57: TfrxMemoView
          Top = 3.779530000000000000
          Width = 718.110236220000000000
          Height = 26.456678270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'HIST'#211'RICO FINANCEIRO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 68.031496060000000000
          Top = 41.795300000000000000
          Width = 62.740150160000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DOCUMENTO:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 207.874015750000000000
          Top = 41.795300000000000000
          Width = 67.275590550000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 655.748031500000000000
          Top = 41.795300000000000000
          Width = 55.559052680000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'QUITADO:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 1.889763780000000000
          Top = 41.795300000000000000
          Width = 56.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 139.842519690000000000
          Top = 41.795300000000000000
          Width = 58.582662520000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOTA FISCAL:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 499.456692910000000000
          Top = 41.795300000000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TITULO:')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 279.685039370000000000
          Top = 41.795300000000000000
          Width = 82.015748030000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA PAGAMENTO:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 366.614173230000000000
          Top = 41.795300000000000000
          Width = 108.472440940000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORMA PAGAMENTO:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 578.826771650000000000
          Top = 41.574830000000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR PAGO:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 56.692950000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 600.945270000000000000
        Width = 718.110700000000000000
        object SysMemo3: TfrxSysMemoView
          Left = 578.826771650000000000
          Top = 1.889763780000000000
          Width = 68.031496060000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdb_ctareceber."VALOR_PAGO">,DetailData2)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Width = 718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo4: TfrxSysMemoView
          Left = 499.456692910000000000
          Top = 1.889763779527560000
          Width = 68.031496060000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdb_ctareceber."VALOR">,DetailData2)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 7.559060000000000000
          Top = 1.889763780000000000
          Width = 67.275590550000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(DetailData2)]')
          ParentFont = False
        end
      end
    end
  end
  object db_ViewCliente: TFDQuery
    MasterSource = BaseDados.DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM VIEW_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 288
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object PopupImprimir: TPopupMenu
    Left = 824
    Top = 296
    object ImprimirPedidocomvalores1: TMenuItem
      Caption = 'Historico de Clientes'
      OnClick = ImprimirPedidocomvalores1Click
    end
    object ImprimirPedidosemvalores1: TMenuItem
      Caption = 'Ficha Cadatral'
      OnClick = ImprimirPedidosemvalores1Click
    end
  end
  object frxClienteFicha: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40905.983237453700000000
    ReportOptions.LastChange = 41026.807519849540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 744
    Top = 160
    Datasets = <
      item
        DataSet = frdb_Clientes
        DataSetName = 'frdb_Clientes'
      end
      item
        DataSet = frdb_ctareceber
        DataSetName = 'frdb_ctareceber'
      end
      item
        DataSet = frdb_Pedido
        DataSetName = 'frdb_Pedido'
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
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000022000
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
          Left = 536.693259999999900000
          Top = 3.779530000000022000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'EMP_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_SITE"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Align = baWidth
          Top = 1.889763779527584000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 177.637741570000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo78: TfrxMemoView
          Top = 7.559059999999999000
          Width = 550.464750000000000000
          Height = 52.913388270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          Memo.UTF8W = (
            'CADASTRO CLIENTE')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 554.590910000000000000
          Top = 7.559059999999999000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo79: TfrxMemoView
          Left = 566.149603860000000000
          Top = 9.448823780000001000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 567.149603860000000000
          Top = 24.188981260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 567.149603860000000000
          Top = 39.307091500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 632.299215040000000000
          Top = 9.448823780000001000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo83: TfrxMemoView
          Left = 632.299215040000000000
          Top = 24.188981260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo84: TfrxMemoView
          Left = 632.299215040000000000
          Top = 39.307091500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
          WordWrap = False
        end
        object Shape4: TfrxShapeView
          Top = 63.252010000000000000
          Width = 718.000000000000000000
          Height = 113.385826770000000000
        end
        object Memo88: TfrxMemoView
          Left = 3.779527560000000000
          Top = 65.377991810000000000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOME/RAZ'#195'O SOCIAL:')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 459.000000000000000000
          Top = 65.377991810000000000
          Width = 58.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 587.000000000000000000
          Top = 65.377991810000000000
          Width = 123.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'I.E/RG:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 3.779527560000000000
          Top = 77.252010000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataField = 'NOME'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."NOME"]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 459.000000000000000000
          Top = 77.252010000000000000
          Width = 50.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CPF_CNPJ'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."CPF_CNPJ"]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 587.000000000000000000
          Top = 77.252010000000000000
          Width = 29.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'RG_IE'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."RG_IE"]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 4.000000000000000000
          Top = 93.834684720000000000
          Width = 59.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 437.842610000000000000
          Top = 93.834684720000000000
          Width = 43.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 648.740260000000000000
          Top = 93.834684720000000000
          Width = 26.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 3.779527560000000000
          Top = 106.252010000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."ENDERECO"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 437.842610000000000000
          Top = 106.252010000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'BAIRRO'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."BAIRRO"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 648.740260000000000000
          Top = 106.252010000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CEP'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."CEP"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 3.779527560000000000
          Top = 121.047283150000000000
          Width = 65.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MUNICIPIO:')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 3.779527560000000000
          Top = 133.252010000000000000
          Width = 69.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CIDADENOME'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."CIDADENOME"]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 177.527520000000000000
          Top = 133.252010000000000000
          Width = 14.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'UF'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."UF"]')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 177.527520000000000000
          Top = 121.047283150000000000
          Width = 20.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 216.307050000000000000
          Top = 121.047283150000000000
          Width = 33.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 303.409400000000000000
          Top = 121.047283150000000000
          Width = 32.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FAX:')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 303.409400000000000000
          Top = 133.393739840000000000
          Width = 18.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FAX'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."FAX"]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 391.732220000000000000
          Top = 133.141771340000000000
          Width = 45.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CONTATO'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."CONTATO"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 391.732220000000000000
          Top = 121.047283150000000000
          Width = 54.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONTATO:')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 3.779527560000000000
          Top = 161.252010000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VENDEDOR_NOME'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."VENDEDOR_NOME"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 3.779527560000000000
          Top = 147.881928820000000000
          Width = 98.118120000000000000
          Height = 12.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REPRESENTANTE:')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 532.606370000000000000
          Top = 121.047283150000000000
          Width = 102.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMAIL DO CLIENTE:')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 532.606370000000000000
          Top = 133.141771340000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'EMAIL'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."EMAIL"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Top = 92.858380000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object Line7: TfrxLineView
          Top = 119.535560000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
        object Line18: TfrxLineView
          Top = 147.771800000000000000
          Width = 718.110236220000000000
          Height = -0.000007320000000000
          Color = clBlack
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 453.543600000000000000
          Top = 63.118110239999990000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          Left = 582.047620000000000000
          Top = 63.118110239999990000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          Left = 433.189240000000000000
          Top = 93.354330710000000000
          Height = 25.322834650000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          Left = 645.520100000000000000
          Top = 93.354330710000000000
          Height = 25.322834650000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line25: TfrxLineView
          Left = 388.291590000000000000
          Top = 119.401574800000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          Left = 298.582870000000000000
          Top = 119.401574800000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          Left = 211.653680000000000000
          Top = 119.401574800000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          Left = 230.551330000000000000
          Top = 147.771800000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 529.134200000000000000
          Top = 119.401574800000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 170.078850000000000000
          Top = 119.535560000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo113: TfrxMemoView
          Left = 215.433210000000000000
          Top = 133.393739840000000000
          Width = 19.440940000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DDD_FONE'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdb_Clientes."DDD_FONE"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 240.575140000000000000
          Top = 133.393739840000000000
          Width = 49.677180000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FONE'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."FONE"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 371.267780000000000000
          Top = 93.196969999999990000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 371.267780000000000000
          Top = 105.669410950000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NUMERO'
          DataSet = frdb_Clientes
          DataSetName = 'frdb_Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdb_Clientes."NUMERO"]')
          ParentFont = False
        end
        object Line31: TfrxLineView
          Left = 366.614410000000000000
          Top = 93.354330710000000000
          Height = 25.322834650000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
end
