object FrmEtiquetaProdutosConfigurar: TFrmEtiquetaProdutosConfigurar
  Left = 1
  Top = 1
  BorderStyle = bsDialog
  Caption = 'Etiqueta de Produtos | Configurar'
  ClientHeight = 596
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 984
    Height = 502
    Align = alClient
    TabOrder = 0
    object Grupo1: TGroupBox
      Left = 1
      Top = 1
      Width = 982
      Height = 69
      Align = alTop
      Caption = 'Identifica'#231#227'o'
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 25
        Width = 33
        Height = 13
        Caption = '&C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 79
        Top = 25
        Width = 48
        Height = 13
        Caption = '&Descri'#231#227'o'
        FocusControl = EditNome
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 10
        Top = 40
        Width = 67
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CODIGO'
        DataSource = ds_EtiquetasLayout
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditNome: TDBEdit
        Left = 79
        Top = 40
        Width = 573
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESCRICAO'
        DataSource = ds_EtiquetasLayout
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Locate_EtiquetasLayout: TIDBEditDialog
        Left = 567
        Top = 13
        Width = 65
        Height = 21
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        TabOrder = 2
        Text = ''
        Visible = False
        LabelCaption = 'Procurar'
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
        SQLdbRetornoVazio = ' *** '
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CONFIG_ETIQUETAS_PRODUTOS'
          'WHERE'
          '%WHERE%'
          '')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'C'#211'DIGO:'
            DisplayWidth = 12
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
            DisplayLabel = 'DESCRI'#199#195'O'
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
    object Grupo2: TGroupBox
      Left = 1
      Top = 70
      Width = 982
      Height = 152
      Align = alTop
      Caption = 'Configura'#231#227'o da Impressora'
      TabOrder = 1
      object DBAdvOfficeRadioGroup1: TDBRadioGroup
        Left = 2
        Top = 15
        Width = 202
        Height = 135
        Align = alLeft
        Caption = 'Driver - Linguagem da Impressora'
        Columns = 2
        DataField = 'DRIVER'
        DataSource = ds_EtiquetasLayout
        Items.Strings = (
          'Nenhuma'
          'PPL-A'
          'PPL-B'
          'ZPL-II'
          'EPL-2')
        ParentBackground = False
        TabOrder = 0
        Values.Strings = (
          'etqNenhuma'
          'etqPpla'
          'etqPPlb'
          'etqZPLII'
          'etqEpl2')
      end
      object DBAdvEditBtn1: TDBEdit
        Left = 567
        Top = 35
        Width = 378
        Height = 21
        Hint = 
          'informe "\\nome-computador\nome-impressora-na-rede"  (exemplo:  ' +
          '\\expedicao01\ArgoxOS-214)'
        DataField = 'PORTA'
        DataSource = ds_EtiquetasLayout
        MaxLength = 200
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 204
        Top = 15
        Width = 357
        Height = 135
        Align = alLeft
        Caption = 'Dimens'#245'es do C'#243'digo de Barras'
        TabOrder = 1
        object AdvDBComboBox1: TDBComboBox
          Left = 14
          Top = 34
          Width = 145
          Height = 21
          DataField = 'CODBARRAS_TIPO'
          DataSource = ds_EtiquetasLayout
          Items.Strings = (
            'CODE 128'
            'CODE 39'
            'EAN13')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object DBAdvSpinEdit7: TSpinEdit
          Left = 166
          Top = 34
          Width = 83
          Height = 22
          Hint = 'Altura (de cima pra baixo)'
          MaxValue = 0
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Value = 0
        end
        object DBAdvSpinEdit54: TSpinEdit
          Left = 14
          Top = 93
          Width = 145
          Height = 22
          MaxValue = 0
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Value = 0
        end
        object DBAdvSpinEdit55: TSpinEdit
          Left = 197
          Top = 93
          Width = 145
          Height = 22
          Hint = 'Defina entre 1 e 2 (no tamanho 2 a leitura '#233' mais r'#225'pida)'
          MaxValue = 0
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Value = 0
        end
        object DBAdvSpinEdit1: TSpinEdit
          Left = 255
          Top = 33
          Width = 87
          Height = 22
          MaxValue = 0
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Value = 0
        end
      end
    end
    object ScrollBoxCampos: TScrollBox
      Left = 1
      Top = 222
      Width = 982
      Height = 279
      VertScrollBar.Range = 750
      Align = alClient
      AutoScroll = False
      TabOrder = 2
      object grpColuna1: TGroupBox
        Left = 0
        Top = 0
        Width = 961
        Height = 246
        Align = alTop
        Caption = 'Coordenadas de campos [COLUNA 1]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object GrupoDescricao1: TGroupBox
          Left = 2
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[DESCRI'#199#195'O]'
          TabOrder = 0
          object DBAdvSpinEdit2: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit3: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit4: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox1: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_DESCRICAO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoCBarra1: TGroupBox
          Left = 112
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[C'#211'DIGO DE BARRAS]'
          TabOrder = 1
          object DBAdvSpinEdit5: TSpinEdit
            Left = 7
            Top = 65
            Width = 60
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit6: TSpinEdit
            Left = 7
            Top = 113
            Width = 60
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBCheckBox2: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_CODBARRAS_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 7
            Top = 161
            Width = 85
            Height = 17
            Caption = 'Exibir C'#243'digo'
            DataField = 'L_CODBARRAS_EXIBECODIGO'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoCor1: TGroupBox
          Left = 332
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[COR]'
          TabOrder = 3
          object DBAdvSpinEdit8: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit9: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit10: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox3: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_COR_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoTamanho1: TGroupBox
          Left = 442
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[TAMANHO]'
          TabOrder = 4
          object DBAdvSpinEdit11: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit12: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit13: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox4: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_TAMANHO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoPrecos1: TGroupBox
          Left = 552
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[PRE'#199'OS]'
          TabOrder = 5
          object DBAdvSpinEdit14: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit15: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit16: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox5: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_PRECO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoCodigoProduto: TGroupBox
          Left = 222
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[C'#211'DIGO PRODUTO]'
          TabOrder = 2
          object DBAdvSpinEdit31: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit32: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit33: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox13: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_CODIGO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoOP1: TGroupBox
          Left = 662
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[ORDEM PRODU'#199#195'O]'
          TabOrder = 6
          object DBAdvSpinEdit56: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit57: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit58: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox22: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_OP_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoLote1: TGroupBox
          Left = 772
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[LOTE PRODU'#199#195'O]'
          TabOrder = 7
          object DBAdvSpinEdit59: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit60: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit61: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox23: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_LOTE_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object grpColuna2: TGroupBox
        Left = 0
        Top = 246
        Width = 961
        Height = 246
        Align = alTop
        Caption = 'Coordenadas de campos [COLUNA 2]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object GrupoDescricao2: TGroupBox
          Left = 2
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[DESCRI'#199#195'O]'
          TabOrder = 0
          object DBAdvSpinEdit17: TSpinEdit
            Left = 5
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit18: TSpinEdit
            Left = 5
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit19: TSpinEdit
            Left = 5
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox7: TDBCheckBox
            Left = 5
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_DESCRICAO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoCBarra2: TGroupBox
          Left = 112
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[C'#211'DIGO DE BARRAS]'
          TabOrder = 1
          object DBAdvSpinEdit20: TSpinEdit
            Left = 5
            Top = 65
            Width = 60
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit21: TSpinEdit
            Left = 5
            Top = 113
            Width = 60
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBCheckBox8: TDBCheckBox
            Left = 5
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_CODBARRAS_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox9: TDBCheckBox
            Left = 5
            Top = 161
            Width = 85
            Height = 17
            Caption = 'Exibir C'#243'digo'
            DataField = 'R_CODBARRAS_EXIBECODIGO'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoCor2: TGroupBox
          Left = 332
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[COR]'
          TabOrder = 3
          object DBAdvSpinEdit22: TSpinEdit
            Left = 5
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit23: TSpinEdit
            Left = 5
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit24: TSpinEdit
            Left = 5
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox10: TDBCheckBox
            Left = 5
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_COR_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoTamanho2: TGroupBox
          Left = 442
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[TAMANHO]'
          TabOrder = 4
          object DBAdvSpinEdit25: TSpinEdit
            Left = 5
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit26: TSpinEdit
            Left = 5
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit27: TSpinEdit
            Left = 5
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox11: TDBCheckBox
            Left = 5
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_TAMANHO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoPrecos2: TGroupBox
          Left = 552
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[PRE'#199'OS]'
          TabOrder = 5
          object DBAdvSpinEdit28: TSpinEdit
            Left = 5
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit29: TSpinEdit
            Left = 5
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit30: TSpinEdit
            Left = 5
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox12: TDBCheckBox
            Left = 5
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_PRECO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object AdvGroupBox1: TGroupBox
          Left = 222
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[C'#211'DIGO PRODUTO]'
          TabOrder = 2
          object DBAdvSpinEdit34: TSpinEdit
            Left = 5
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit35: TSpinEdit
            Left = 5
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit36: TSpinEdit
            Left = 5
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox14: TDBCheckBox
            Left = 5
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_CODIGO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoOP2: TGroupBox
          Left = 662
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[ORDEM PRODU'#199#195'O]'
          TabOrder = 6
          object DBAdvSpinEdit62: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit63: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit64: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox24: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_OP_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoLote2: TGroupBox
          Left = 772
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[LOTE PRODU'#199#195'O]'
          TabOrder = 7
          object DBAdvSpinEdit65: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit66: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit67: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox25: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_LOTE_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object grpColuna3: TGroupBox
        Left = 0
        Top = 492
        Width = 961
        Height = 246
        Align = alTop
        Caption = 'Coordenadas de campos [COLUNA 3]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object AdvGroupBox2: TGroupBox
          Left = 2
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[DESCRI'#199#195'O]'
          TabOrder = 0
          object DBAdvSpinEdit37: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit38: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit39: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox15: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_DESCRICAO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object AdvGroupBox3: TGroupBox
          Left = 112
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[C'#211'DIGO DE BARRAS]'
          TabOrder = 1
          object DBAdvSpinEdit40: TSpinEdit
            Left = 7
            Top = 65
            Width = 60
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit41: TSpinEdit
            Left = 7
            Top = 113
            Width = 60
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBCheckBox16: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_CODBARRAS_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox17: TDBCheckBox
            Left = 7
            Top = 161
            Width = 85
            Height = 17
            Caption = 'Exibir C'#243'digo'
            DataField = 'R3_CODBARRAS_EXIBECODIGO'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object AdvGroupBox4: TGroupBox
          Left = 332
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[COR]'
          TabOrder = 3
          object DBAdvSpinEdit42: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit43: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit44: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox18: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_COR_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object AdvGroupBox5: TGroupBox
          Left = 442
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[TAMANHO]'
          TabOrder = 4
          object DBAdvSpinEdit45: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit46: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit47: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox19: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_TAMANHO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object AdvGroupBox6: TGroupBox
          Left = 552
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[PRE'#199'OS]'
          TabOrder = 5
          object DBAdvSpinEdit48: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit49: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit50: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox20: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_PRECO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object AdvGroupBox7: TGroupBox
          Left = 222
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[C'#211'DIGO PRODUTO]'
          TabOrder = 2
          object DBAdvSpinEdit51: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit52: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit53: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox21: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_CODIGO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoOP3: TGroupBox
          Left = 662
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[ORDEM PRODU'#199#195'O]'
          TabOrder = 6
          object DBAdvSpinEdit68: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit69: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit70: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox26: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_OP_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoLote3: TGroupBox
          Left = 772
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[LOTE PRODU'#199#195'O]'
          TabOrder = 7
          object DBAdvSpinEdit71: TSpinEdit
            Left = 7
            Top = 161
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object DBAdvSpinEdit72: TSpinEdit
            Left = 7
            Top = 113
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object DBAdvSpinEdit73: TSpinEdit
            Left = 7
            Top = 65
            Width = 61
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object DBCheckBox27: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_LOTE_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 984
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 984
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 984
      Height = 33
      ExplicitWidth = 984
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 982
        Height = 31
        Caption = 'Etiqueta de Produtos | Configurar'
        ExplicitWidth = 255
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 535
    Width = 984
    Height = 61
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 535
    ExplicitWidth = 984
    ExplicitHeight = 61
    inherited W7Panel1: TPanel
      Width = 984
      Height = 61
      ExplicitWidth = 984
      ExplicitHeight = 61
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
  object ds_EtiquetasLayout: TDataSource
    AutoEdit = False
    DataSet = db_EtiquetasLayout
    Left = 280
  end
  object db_EtiquetasLayout: TFDQuery
    BeforePost = db_EtiquetasLayoutBeforePost
    AfterPost = db_EtiquetasLayoutAfterPost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CONFIG_ETIQUETAS_PRODUTOS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
