object FrmHistoricoFuncionario: TFrmHistoricoFuncionario
  Left = 190
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Controle de Despesas com Funcion'#225'rios'
  ClientHeight = 374
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 216
    Top = 80
    Width = 21
    Height = 13
    Caption = 'Tipo'
  end
  object PaginaHistorico: TPageControl
    Left = 0
    Top = 23
    Width = 676
    Height = 314
    Cursor = crHandPoint
    ActivePage = Tab_Detalhes
    Align = alClient
    TabOrder = 0
    object Tab_Principal: TTabSheet
      Caption = 'Registros'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GridCadastrados: TDBGrid
        Left = 0
        Top = 0
        Width = 668
        Height = 286
        Align = alClient
        Color = 14811135
        DataSource = ds_CaixaFuncionarios
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = GridCadastradosCellClick
        OnDrawColumnCell = GridCadastradosDrawColumnCell
        OnDblClick = GridCadastradosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vencimento'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeFuncionario'
            Title.Alignment = taCenter
            Title.Caption = 'Funcion'#225'rio'
            Width = 299
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Title.Caption = 'Classifica'#231#227'o:'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'Valor:'
            Width = 65
            Visible = True
          end>
      end
    end
    object Tab_Detalhes: TTabSheet
      Caption = 'Detalhes'
      ImageIndex = 1
      OnShow = Tab_DetalhesShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 668
        Height = 286
        Align = alClient
        Caption = 'Dados do Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label8: TLabel
          Left = 7
          Top = 98
          Width = 85
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 7
          Top = 173
          Width = 85
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 7
          Top = 122
          Width = 85
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vencimento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 7
          Top = 46
          Width = 85
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Centro de Custo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 7
          Top = 72
          Width = 85
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Hist'#243'rico:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 7
          Top = 147
          Width = 85
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Classifica'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EditData: TDBEdit
          Left = 95
          Top = 96
          Width = 90
          Height = 21
          DataField = 'DATA'
          DataSource = ds_CaixaFuncionarios
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object EditValor: TDBEdit
          Left = 95
          Top = 170
          Width = 90
          Height = 21
          DataField = 'VALOR'
          DataSource = ds_CaixaFuncionarios
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit6: TDBEdit
          Left = 95
          Top = 120
          Width = 90
          Height = 21
          DataField = 'VENCIMENTO'
          DataSource = ds_CaixaFuncionarios
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object EditPlano: TDBEdit
          Left = 95
          Top = 44
          Width = 58
          Height = 21
          DataField = 'DEPARTAMENTO'
          DataSource = ds_CaixaFuncionarios
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object EditNome: TDBEdit
          Left = 157
          Top = 44
          Width = 480
          Height = 21
          Color = 14811135
          DataField = 'NomeCentroCusto'
          DataSource = ds_CaixaFuncionarios
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 95
          Top = 70
          Width = 544
          Height = 21
          CharCase = ecUpperCase
          DataField = 'HISTORICO'
          DataSource = ds_CaixaFuncionarios
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBComboBox1: TDBComboBox
          Left = 95
          Top = 145
          Width = 170
          Height = 21
          Style = csDropDownList
          DataField = 'TIPO'
          DataSource = ds_CaixaFuncionarios
          Items.Strings = (
            'PAGAMENTO'
            'ADIANTAMENTO'
            '13'#186' DECIMO TERCEIRO'
            'FERIAS PROPORCIONAIS'
            'BONIFICA'#199#195'O'
            'COMISSAO'
            'VALE TRANSPORTE'
            'VALE REFEICAO')
          TabOrder = 7
        end
        object EditCodevendedor: TIDBEditDialog
          Left = 95
          Top = 17
          Width = 58
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
          Text = ''
          Visible = True
          LabelCaption = 'Vendedor'
          LabelPosition = lpLeftCenter
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
          DataSource = ds_CaixaFuncionarios
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditVendedor1
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = ' *** '
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            '%WHERE%')
          CountQuery.Strings = (
            '')
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
          Connection = FrmPrincipal.DBConexao
        end
        object EditVendedor1: TEdit
          Left = 157
          Top = 17
          Width = 480
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 337
    Width = 676
    Height = 37
    Align = alBottom
    TabOrder = 1
    object BtnSair: TBitBtn
      Left = 485
      Top = 5
      Width = 90
      Height = 28
      Cursor = crHandPoint
      Hint = 'Sair do contas a Pagar'
      Caption = 'Sai&r'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0077FF77FF700F
        77FFFF77FF77F0B0FF7777FF77FF70B307FF00000007F0B330007777770000B3
        307777770708800330777777000880F03077777702088003307700000A2080B3
        3077AAAAAAA200B3307700000AA080B3307777770A0880B330777777000880BB
        307777770708880BB077777777088880B0777777770000000077}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BtnSairClick
    end
    object BtnSalvar: TBitBtn
      Left = 101
      Top = 5
      Width = 90
      Height = 28
      Cursor = crHandPoint
      Hint = 'Salvar registro'
      Caption = '&Salvar'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00900000000000
        000988888000000888808F7778888807F7808F7778078807F7808F7778078807
        F7808F777788888877808F777777777777808F77FFFFFFFF77808F7FFFCCCCFF
        F7808F7FFFFFCCFFF7808F7FFFFCFCFFF7808F7FFFCFFCFFF7808F7FFFFFFFFF
        F7808F777777777770808FFFFFFFFFFFF7809888888888888889}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TBitBtn
      Left = 197
      Top = 5
      Width = 90
      Height = 28
      Cursor = crHandPoint
      Hint = 'Cancelar Edi'#231#227'o'
      Caption = '&Cancelar'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777177777777779777191777777777777799917777777977777991777777
        1777777799177771977777777991771977777777779911977777777777719977
        7777777777199917777777777199779177777771199777791777771999777777
        9177779997777777779777777777777777777777777777777777}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnCancelarClick
    end
    object BtnNovo: TBitBtn
      Left = 5
      Top = 5
      Width = 90
      Height = 28
      Cursor = crHandPoint
      Hint = 'Lan'#231'ar novo documento'
      Caption = '&Novo'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000CE0E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800888
        88888888800BF008888888800FB003308888800BFBFBFBF308887FBFBFBFBFBF
        30887BFBFBFBFB0B308887BFBFBFBF08B308887BFBFBFB0B83088887BFB70000
        083088887BF0FCCCC08088887FB7744407B0888887FB7CCC7778888887BF7444
        78888888887B0CCC08888888887770007888}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnNovoClick
    end
    object BtnExcluir: TBitBtn
      Left = 293
      Top = 5
      Width = 90
      Height = 28
      Cursor = crHandPoint
      Hint = 'Excluir Registro'
      Caption = 'E&xcluir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000D1D1B7D1D1B7
        D0D0B6D0D0B6DDDDC0E1E1C3E0E0C2E0DFC2DCDCBFD1D1B7CFCFB5D0D0B6D1D1
        B7D1D1B7D1D1B7D1D1B7D1D1B7D0D0B7D3D3B8D4D4B9B4B5A2AAAB9BADAE9EAD
        AF9EB6B8A5D1D1B7D7D7BCD3D3B9D0D0B6D1D1B7D1D1B7D1D1B7D0D0B6D3D3B8
        C8CAB2A1A193BDBAA4D0C7A8D3C3A5C5B6A0AAA590A0A090A4A695C8C9B1D7D7
        BCD0D0B6D1D1B7D1D1B7D1D0B6D2D3B9D0C4A4EFE0BBFFF4C7FDDDBBE9C2B3EE
        C6C1FFD8C6FFF2D3E1D4BCA1A191ADAD9BD9D9BDD0D0B6D1D1B7D2D1B6CED1BA
        EBCA97FFE8B9F2DBC2D8B8B9E0B6BDA1C89499CD9389CB81D2EBBEFFFEE5B7B8
        A5AEAE9DD6D6BBD0D0B6D1D0B7D2D2B9E8B97BF1C492E9DADEE1CECCF5CFD678
        BD6D0093000C9C0D06970BABDD9EFFF1D1938F80D2D2B9D1D1B7CDD3BDDACDAB
        F7BF81F5E4D7F4EBEEE6D9D6F2C0CA7DBF74008A006DC26BCDE6C052B953E6CF
        99AF9F8ACFD2BAD1D1B6CCD3BDDBCCAAFEDAB4FCFEFFFBFAF8DCB8B9D6B7ADCF
        DBBA9DD19462BE64EBF2DCCCE8C0DAD495A28C80B5BAA7D6D6BACBD1BCE9CC9F
        FEEFD8FEFEFDEBDAD8CD989BD6BCB287C477FFFEFCA3DAA21A9A1B5EBE5BFFE8
        C1AF9C82ADB0A0D8D8BCD1CEB4F5DFB8FDFBE5FDFDF1E6CFC9DEC7C3F0CCD77D
        BB732FAE3262BD6000890031AA2CFEF2CECABA9BB2B4A2D8D8BCE2CDAEFAEDCB
        FDFEE3FDFBE2FDFDE6FFFFEFE5F3F5F4E3E974C06F20A22136AC3658B74EFEFD
        E2D3CBAFA4A495D7D7BCE0CDAFF9F3D2FCFDDDFCFBDAFAFDE1F0FCEFEFFEFCED
        F6F6FFF8FEFDFEF8FFFFFEE6F4E0FEFEEFE2E1C4878780D3D3BAE2CDAFFCF0CC
        FFFFE1FFFEDBF2FADBCAF7F1E1F9EFF1FAF1E4CFC9F4EAE7F6F8EFFCEDD3FEFF
        E7EAEBCF939388D2D2B8D3D0B5E0D5B6EEDDBCEEDFC0D9E4E0F2FCF5FAFDFAFB
        FEFDEBD8D7F0F3F6DDDDD1F3B977FBD5A2F2EBC99C9E91D0CFB5D0D1B7CFD0B7
        CECEB6CFCDB2BAD9DCBDE2EBC2EFF9C1FAFFCEFBFCC4FEFFDBCDAAFCBF80F9C3
        8AF6C5959C978ACFD0B6D1D1B7D1D1B7D1D1B7D2D2B8D2D0B5D0CEB3C7D0C1BA
        D7D0B2E3E5A2EAF7CCCBB8F4C793FDC993E1C09AB8B8A4D3D3B8}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BtnExcluirClick
    end
    object BtnLocalizar: TBitBtn
      Left = 389
      Top = 5
      Width = 90
      Height = 28
      Cursor = crHandPoint
      Hint = 'Localizar Registro'
      Caption = '&Localizar'
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000C1CDD7BBB0B4
        8C9298BCC6CCB9BFC5B8BEC4B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BF
        C5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC50000A5A9A689797F9C727F9A959CBCC6
        CCB9BDC3B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9
        BFC5B9BFC5B9BFC50000657F954A6CAE927FA2AB7B8496939BBDC6CCB9BEC4B9
        BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5
        000052B4FC3EA0F8446BB89081A1AB7B8595939BBDC6CCBABEC4B9BFC5B9BFC5
        B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC500009EBDD35FBAF7
        3AA1F94371C1917F9EAB7B8596939BBBC4CAB8BDC3B8BDC3B8BDC3B8BDC3B8BD
        C3B8BDC3B9BFC5B9BFC5B9BFC5B9BFC50000C4BFBFA8BBCC5CBCF83B9FF74270
        C191809EAA7A84A29DA4C0C8CEBDC5CBBFC7CDBFC8CDBFC8CDBEC7CCBAC0C6B8
        BEC4B9BFC5B9BFC50000B5BFC7BEBFC2AABDCC5CBCF83DA0F74272C2867596B3
        95A4A5AFB48B858C8A848D8A838D89818C938E98B7BFC6BCC2C8B8BDC4B9BFC5
        0000B9BFC5B7BFC6BFC0C2AABCCC5ABCF83D9EFC6E75A0837D8A92717ABF9283
        C9AB8FD1B79ED2B1A5AB7B7D86656EA8B0B6BFC5CBB8BDC30000B9BFC5B9BFC5
        B7BFC6C1BFC1A0BED087B8E9B8A8BDA78983E7B99DFCEFC0FFFFD1FFFFDAFFFF
        DBFFFCDED1B0A6876573AAB1B7BCC2C8FFFFB9BFC5B9BFC5B9BFC5B8BFC5BCBD
        C2BFC4C5B8A9A7EDBF9AFFF5C3FCF4C2FBFBCEFBFADCFBFBE5FCFCF9FFFFFFCD
        AAA3795F6BB3BDC20000B9BFC5B9BFC5B9BFC5B9BFC5B8C1C5B6B8C7DCAEA4FF
        EDBBFCE7B5FCF1BEFDFED4FDFDE2FDFDF2FBFBFBFCFDF6FBF8D69A717294919A
        0000B9BFC5B9BFC5B9BFC5B9BFC5B8C2C8BFABADECC6A8FDF2BEFCDBA9FDF3C0
        FDFED3FDFDE1FDFDEEFCFCF0FBFBE3FEFEDABB978C867B860000B9BFC5B9BFC5
        B9BFC5BABFC4B7C0C8CEACA0F2DDB7FEE8B4FCD5A3FDEDBAFDFCCCFDFDD9FDFD
        E0FDFCE1FBFADAFDFDD8C8AD8F857B840000B9BFC5B9BFC5B9BFC5B9BFC4B8C2
        C8C4ACA8EDD1AFFDF2C1FCDEB1FDE4B2FDF4C1FDFBCBFDFED1FCFDD3FBFBCCFE
        FCCDC09686928A94FFFFB9BFC5B9BFC5B9BFC5B9BFC5B8C0C6B8B8BFE2C5A4FF
        FCDBFCEDD4FCE0B9FDE0ADFDF0BDFDF0BCFBEDB9FCF4C2FCEBBAAB7D80B3B3BE
        0000B9BFC5B9BFC5B9BFC5B9BFC5B9BEC4B8C3CAC2A5A7F4DDCAFFFFFFFBF5E7
        FBDDB1FCD9A9FCD8A6FCE9B8FFF7C2D29F85A18996BCC7CC9C01B9BFC5B9BFC5
        B9BFC5B9BFC5B9BFC5B9C0C5B8BAC4C6A6A9EFDAD1FEFEE4FFFFD4FFF0BDFFF4
        C0FDE8B8DEAE8EB1918FB8BDC5B9BFC56600B9BFC5B9BFC5B9BFC5B9BFC5B9BF
        C5B9BEC5B9C2C7B7B9C1BCA1A6D0AC9FD6B799E2C4A5E8C1ACCCA9A4B4AAB1B9
        C0C6BAC1C6B9BEC50000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
  end
  object PainelDicas: TPanel
    Left = 0
    Top = 0
    Width = 676
    Height = 23
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object db_Departamento: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM DEPARTAMENTOS')
    Left = 516
    Top = 183
  end
  object db_CaixaFuncionarios: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAIXA_FUNCIONARIO'
      'WHERE'
      'FILIAL=:FILIAL')
    Left = 249
    Top = 183
    ParamData = <
      item
        Name = 'FILIAL'
      end>
    object db_CaixaFuncionariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_CaixaFuncionariosFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
    end
    object db_CaixaFuncionariosDATA: TDateField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_CaixaFuncionariosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_CaixaFuncionariosDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object db_CaixaFuncionariosTIPO: TStringField
      FieldName = 'TIPO'
    end
    object db_CaixaFuncionariosDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
    end
    object db_CaixaFuncionariosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object db_CaixaFuncionariosVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CaixaFuncionariosQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 1
    end
    object db_CaixaFuncionariosNomeFuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFuncionario'
      LookupDataSet = db_Vendedores
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FUNCIONARIO'
      Size = 100
      Lookup = True
    end
    object db_CaixaFuncionariosNomeCentroCusto: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCentroCusto'
      LookupDataSet = db_Departamento
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'DEPARTAMENTO'
      Size = 100
      Lookup = True
    end
  end
  object ds_CaixaFuncionarios: TDataSource
    DataSet = db_CaixaFuncionarios
    Left = 252
    Top = 239
  end
  object db_Vendedores: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT CODIGO, NOME  FROM VENDEDORES'
      'ORDER BY NOME')
    Left = 392
    Top = 181
  end
  object db_IncluirSequencia: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'INSERT INTO SEQUENCIAS (FILIAL, MODULO, DESCRICAO, CODIGO, OBSER' +
        'VACAO) VALUES (1, '#39'CXF'#39', '#39'Despesas de Funcion'#225'rios'#39', 1, '#39#39');'
      '')
    Left = 282
    Top = 23
  end
  object db_ChecarSequencia: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM SEQUENCIAS'
      'WHERE'
      'MODULO='#39'CXF'#39)
    Left = 426
    Top = 23
  end
end
