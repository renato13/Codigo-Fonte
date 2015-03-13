object FrmCtaPagarSubstituirTitulos: TFrmCtaPagarSubstituirTitulos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Conta a Pagar - Substituir titulos'
  ClientHeight = 596
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 731
    Height = 36
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 731
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 731
      ExplicitWidth = 731
      inherited LblBarraTitulo: TLabel
        Width = 340
        Caption = 'Conta a Pagar - Substituir titulos | Selecionar'
        ExplicitWidth = 340
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 731
    Height = 448
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 185
      Width = 729
      Height = 262
      Align = alClient
      Caption = 'Selecionar titulos a baixar'
      TabOrder = 0
      object GridMenus: TDBGrid
        Left = 2
        Top = 15
        Width = 725
        Height = 245
        Align = alClient
        DataSource = ds_ctaPagar
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Color = clWindow
            Expanded = False
            Width = 20
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'DOCUMENTO'
            ReadOnly = True
            Width = 116
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'DATA'
            ReadOnly = True
            Width = 104
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'VENCIMENTO'
            ReadOnly = True
            Width = 133
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'FORNECEDOR'
            ReadOnly = True
            Width = 112
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'VALOR'
            ReadOnly = True
            Width = 115
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'SELECIONADO'
            Width = 95
            Visible = True
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 729
      Height = 184
      Align = alTop
      Caption = 'Par'#226'metros'
      TabOrder = 1
      object Panel3: TPanel
        Left = 2
        Top = 15
        Width = 725
        Height = 90
        Align = alTop
        BevelWidth = 2
        TabOrder = 0
        object GroupBox3: TGroupBox
          Left = 219
          Top = 2
          Width = 504
          Height = 86
          Align = alClient
          Caption = 'Fornecedor'
          TabOrder = 0
          object chkCliente: TCheckBox
            Left = 8
            Top = 20
            Width = 105
            Height = 13
            Cursor = crHandPoint
            Caption = 'Todos os Fornecedores'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkClienteClick
          end
          object EditClienteNome: TEdit
            Left = 76
            Top = 52
            Width = 246
            Height = 21
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '***'
          end
          object EditFornecedor: TIDBEditDialog
            Left = 8
            Top = 52
            Width = 65
            Height = 21
            HelpKeyWord = ''
            Color = clWindow
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = ''
            Visible = True
            OnChange = EditFornecedorChange
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
            ButtonHint = 'C'#243'digo do Cliente'
            Etched = False
            ButtonCaption = '...'
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditClienteNome
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT CODIGO, NOME FROM CAD_CLIENTES'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM VIEW_CLIENTES'
              'WHERE'
              'TIPO <>'#39'CLIENTE'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#243'digo'
                DisplayWidth = 12
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
                DisplayLabel = 'NOME:'
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
        object GroupBox4: TGroupBox
          Left = 2
          Top = 2
          Width = 217
          Height = 86
          Align = alLeft
          Caption = 'Vencimento dos Titulos'
          TabOrder = 1
          object Label4: TLabel
            Left = 110
            Top = 39
            Width = 17
            Height = 13
            Caption = 'At'#233
          end
          object Label3: TLabel
            Left = 10
            Top = 39
            Width = 13
            Height = 13
            Caption = 'De'
          end
          object MskDataFim: TMaskEdit
            Left = 133
            Top = 35
            Width = 69
            Height = 21
            EditMask = '99/99/9999'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 1
            Text = '  /  /    '
            OnChange = MskDataFimChange
            OnExit = MskDataFimExit
          end
          object MskDataIni: TMaskEdit
            Left = 29
            Top = 35
            Width = 70
            Height = 21
            EditMask = '99/99/9999'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = '  /  /    '
            OnChange = MskDataIniChange
            OnExit = MskDataIniExit
          end
        end
      end
      object GroupBox5: TGroupBox
        Left = 2
        Top = 105
        Width = 725
        Height = 65
        Align = alTop
        Caption = 'Motivo de Baixa'
        TabOrder = 1
        object Edit1: TEdit
          Left = 90
          Top = 36
          Width = 202
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '***'
        end
        object EditMotivoBaixa: TIDBEditDialog
          Left = 8
          Top = 36
          Width = 80
          Height = 21
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '0'
          Visible = True
          EditType = etNumeric
          FocusColor = clBtnFace
          LabelCaption = 'Motivo de Baixa'
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
          SQLdbFazBusca = True
          SQLdbFocusControl = Edit1
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = ' *** '
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'TIPO='#39'CLIENTE'#39
            'AND'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_MOTIVOBAIXA'
            'WHERE'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'CODIGO'
              WhereSyntax = 'CODIGO'
              DisplayLabel = 'C'#211'DIGO:'
              DisplayWidth = 10
              DisplayColumnWidth = 0
              FieldType = ftInteger
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scUpper
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
        object Edit2: TEdit
          Left = 381
          Top = 36
          Width = 332
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = '***'
        end
        object EditContaCorrente: TIDBEditDialog
          Left = 297
          Top = 36
          Width = 78
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          TabOrder = 2
          Text = '0'
          Visible = True
          EditType = etNumeric
          EmptyText = 'F8 - Pesquisar'
          LabelCaption = 'Conta Banc'#225'ria'
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
          SQLdbFazBusca = True
          SQLdbFocusControl = Edit2
          SQLdbCampoRetorno = 'DADOS_CONTA'
          SQLdbRetornoVazio = ' *** '
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT DADOS_CONTA   FROM VIEW_CONTA_CORRENTE_DADOS'
            'WHERE'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM VIEW_CONTA_CORRENTE_DADOS'
            'WHERE'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'DADOS_CONTA'
              WhereSyntax = 'DADOS_CONTA'
              DisplayLabel = 'CONTA CORRENTE:'
              DisplayWidth = 100
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
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 555
    Width = 731
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 132
      Top = 6
      Width = 125
      Height = 25
      Caption = 'Baixar/Substituir...'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 273
      Top = 6
      Width = 90
      Height = 25
      Caption = 'Cancelar/Sair'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object btnCheque: TButton
      Left = 15
      Top = 6
      Width = 113
      Height = 25
      Caption = 'Informar Cheques...'
      TabOrder = 0
      OnClick = btnChequeClick
    end
  end
  object GroupBox7: TGroupBox
    Left = 0
    Top = 501
    Width = 731
    Height = 54
    Align = alBottom
    Caption = 'Calculo:'
    Enabled = False
    TabOrder = 3
    object Image1: TImage
      Left = 2
      Top = 15
      Width = 727
      Height = 37
      Align = alClient
      Picture.Data = {
        0A544A504547496D616765CA070000FFD8FFE000104A46494600010101006000
        600000FFDB004300020101020101020202020202020203050303030303060404
        0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
        0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080023016803012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F30F
        ED0FF68FE747F687FB47F3AC3FED0F7A3FB43DEBFD35F667F9BDF55373FB43FD
        A3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF0068FE747F687F
        B47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FF00B4
        3DE8FED0F7A3D987D54DCFED0FF68FE747F687FB47F3AC3FED0F7A3FB43DE8F6
        61F55373FB43FDA3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF
        0068FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1F
        ED1FCEB0FF00B43DE8FED0F7A3D987D54DCFED0FF68FE747F687FB47F3AC3FED
        0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D
        987D54DCFED0FF0068FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373FB4
        3FDA3F9D1FDA1FED1FCEB0FF00B43DE8FED0F7A3D987D54DCFED0FF68FE747F6
        87FB47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FFB
        43DE8FED0F7A3D987D54DCFED0FF0068FE747F687FB47F3AC3FED0F7A3FB43DE
        8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FF00B43DE8FED0F7A3D987D54DCF
        ED0FF68FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FD
        A1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF0068FE747F687FB47F3AC3
        FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FF00B43DE8FED0
        F7A3D987D54DCFED0FF68FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373
        FB43FDA3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF0068FE74
        561FF687BD147B30FAA989FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD77FB2
        3E8BEAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A2B13FB43DE8A3D907D54C9F31BD4D1E637A9A28AE83D70F31BD4D1E637A9A
        28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F534798DEA68A2
        800F31BD4D1E637A9A28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A00
        3CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F534798DEA68A2800F3
        1BD4D1E637A9A28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F
        534798DEA68A2800F31BD4D1E637A9A28A003CC6F534798DEA68A2800F31BD4D
        1E637A9A28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F53479
        8DEA68A2800F31BD4D1E637A9A28A003CC6F5345145007FFD9}
      Stretch = True
      ExplicitTop = 13
      ExplicitWidth = 741
      ExplicitHeight = 59
    end
    object lblTotais: TLabel
      Left = 2
      Top = 15
      Width = 727
      Height = 37
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'R$ 0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitLeft = 11
      ExplicitTop = 23
      ExplicitWidth = 196
      ExplicitHeight = 23
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 484
    Width = 731
    Height = 17
    Align = alBottom
    TabOrder = 4
  end
  object db_Somar: TFDQuery
    MasterSource = ds_ctaPagar
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT COUNT(*) AS REGISTROS , SUM(VALOR) AS VALORTOTAL FROM FIN' +
        '_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      '-- AND'
      '--FIN_CTAPAGAR.QUITADO='#39'N'#39
      'AND'
      'FIN_CTAPAGAR.FORNECEDOR BETWEEN :CL_INICIAL AND :CL_FINAL'
      'AND'
      'FIN_CTAPAGAR.VENCIMENTO BETWEEN :DATA1 AND :DATA2'
      'AND'
      'FIN_CTAPAGAR.SELECIONADO='#39'S'#39)
    Left = 328
    Top = 376
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CL_INICIAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CL_FINAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATA1'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        DataType = ftDateTime
        ParamType = ptInput
      end>
  end
  object ds_ctaPagar: TDataSource
    DataSet = db_ctaPagar
    Left = 147
    Top = 416
  end
  object db_ctaPagar: TFDQuery
    AfterPost = db_ctaPagarAfterPost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM FIN_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      '--FIN_CTAPAGAR.QUITADO='#39'N'#39
      '--AND'
      'FIN_CTAPAGAR.FORNECEDOR BETWEEN :CL_INICIAL AND :CL_FINAL'
      'AND'
      'FIN_CTAPAGAR.VENCIMENTO BETWEEN :DATA1 AND :DATA2')
    Left = 147
    Top = 376
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CL_INICIAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CL_FINAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATA1'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        DataType = ftDateTime
        ParamType = ptInput
      end>
    object db_ctaPagarEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_ctaPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_ctaPagarFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object db_ctaPagarFORNECEDOR_NOME: TStringField
      FieldName = 'FORNECEDOR_NOME'
      Size = 200
    end
    object db_ctaPagarNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_ctaPagarSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_ctaPagarDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_ctaPagarVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_ctaPagarDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
      EditMask = '99/99/9999'
    end
    object db_ctaPagarDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Required = True
      Size = 30
    end
    object db_ctaPagarREMESSA: TIntegerField
      FieldName = 'REMESSA'
    end
    object db_ctaPagarPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_ctaPagarCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_ctaPagarESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_ctaPagarTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_ctaPagarVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ctaPagarVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ctaPagarVALOR_SALDO: TBCDField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_ctaPagarCONTA_CREDITO: TIntegerField
      FieldName = 'CONTA_CREDITO'
    end
    object db_ctaPagarCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 30
    end
    object db_ctaPagarCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 30
    end
    object db_ctaPagarCHQ_CONTA_CORRENTE: TStringField
      FieldName = 'CHQ_CONTA_CORRENTE'
      Size = 30
    end
    object db_ctaPagarCHQ_CODCIDADE: TStringField
      FieldName = 'CHQ_CODCIDADE'
      Size = 200
    end
    object db_ctaPagarCHQ_NOMECIDADE_UF: TStringField
      FieldName = 'CHQ_NOMECIDADE_UF'
      Size = 200
    end
    object db_ctaPagarCHQ_EMITENTE: TStringField
      FieldName = 'CHQ_EMITENTE'
      Size = 200
    end
    object db_ctaPagarCHQ_DESTINO: TStringField
      FieldName = 'CHQ_DESTINO'
      Size = 200
    end
    object db_ctaPagarFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_ctaPagarDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_ctaPagarDESCONTO: TBCDField
      FieldName = 'DESCONTO'
    end
    object db_ctaPagarDESCONTOVALOR: TBCDField
      FieldName = 'DESCONTOVALOR'
    end
    object db_ctaPagarPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 200
    end
    object db_ctaPagarCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_ctaPagarHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_ctaPagarOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_ctaPagarGERARRECIBO: TStringField
      FieldName = 'GERARRECIBO'
      Size = 30
    end
    object db_ctaPagarNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_ctaPagarDESPESAS_BOLETO: TBCDField
      FieldName = 'DESPESAS_BOLETO'
    end
    object db_ctaPagarDESPESAS_JUROS: TBCDField
      FieldName = 'DESPESAS_JUROS'
    end
    object db_ctaPagarDESPESAS_JUROSVALOR: TBCDField
      FieldName = 'DESPESAS_JUROSVALOR'
    end
    object db_ctaPagarDESPESAS_MULTA: TBCDField
      FieldName = 'DESPESAS_MULTA'
    end
    object db_ctaPagarDESPESAS_CARTORIO: TBCDField
      FieldName = 'DESPESAS_CARTORIO'
    end
    object db_ctaPagarDESPESAS_TOTAL: TBCDField
      FieldName = 'DESPESAS_TOTAL'
    end
    object db_ctaPagarATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 10
    end
    object db_ctaPagarQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_ctaPagarMOTIVO_BAIXA: TIntegerField
      FieldName = 'MOTIVO_BAIXA'
    end
    object db_ctaPagarUSER_NOME: TStringField
      FieldName = 'USER_NOME'
      Size = 200
    end
    object db_ctaPagarUSER_DATA: TSQLTimeStampField
      FieldName = 'USER_DATA'
    end
    object db_ctaPagarUSER_HORA: TTimeField
      FieldName = 'USER_HORA'
    end
    object db_ctaPagarCOMPLEMENTAR: TStringField
      FieldName = 'COMPLEMENTAR'
      Size = 10
    end
    object db_ctaPagarCHECADO: TStringField
      FieldName = 'CHECADO'
      Size = 10
    end
    object db_ctaPagarPAGTOTERCEIRIZADO: TStringField
      FieldName = 'PAGTOTERCEIRIZADO'
      Size = 10
    end
    object db_ctaPagarPROTESTOSTATUS: TStringField
      FieldName = 'PROTESTOSTATUS'
      Size = 30
    end
    object db_ctaPagarSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 30
    end
    object db_ctaPagarCHQ_NUMEROCHEQUE: TStringField
      FieldName = 'CHQ_NUMEROCHEQUE'
      Size = 30
    end
    object db_ctaPagarPAGAMENTOTITULO: TStringField
      FieldName = 'PAGAMENTOTITULO'
      Size = 30
    end
  end
end
