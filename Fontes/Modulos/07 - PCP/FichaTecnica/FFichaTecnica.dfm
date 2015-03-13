object FrmFichaTecnica: TFrmFichaTecnica
  Left = 0
  Top = 0
  Caption = 'Refer'#234'ncias - Cadastro Detalhado'
  ClientHeight = 548
  ClientWidth = 992
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Tab_Principal: TPageControl
    Left = 0
    Top = 36
    Width = 992
    Height = 454
    Cursor = crHandPoint
    ActivePage = Tab_1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    OnEnter = Tab_PrincipalEnter
    object Tab_0: TTabSheet
      Caption = 'Refer'#234'ncia'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 984
        Height = 223
        Align = alTop
        Caption = 'Dados da Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 14
          Width = 55
          Height = 13
          Caption = 'Referencia:'
        end
        object Label2: TLabel
          Left = 11
          Top = 174
          Width = 43
          Height = 13
          Hint = 'Unidade de medida'
          Caption = 'Unidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label3: TLabel
          Left = 66
          Top = 174
          Width = 63
          Height = 13
          Hint = 'Unidade de medida'
          Caption = 'C'#243'digo NCM:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label30: TLabel
          Left = 202
          Top = 174
          Width = 15
          Height = 13
          Hint = 'Unidade de medida'
          Caption = 'OZ'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label17: TLabel
          Left = 455
          Top = 14
          Width = 218
          Height = 13
          Caption = 'Descri'#231#227'o Reduzida (este campo '#233' opcional): '
        end
        object Label7: TLabel
          Left = 193
          Top = 14
          Width = 51
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object Label20: TLabel
          Left = 102
          Top = 14
          Width = 73
          Height = 13
          Caption = 'C'#243'd. Reduzido:'
        end
        object EditReferencia: TDBEdit
          Left = 8
          Top = 30
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'REFERENCIA'
          DataSource = BaseDados_PCP.ds_referencias
          TabOrder = 0
        end
        object EditGrife: TIDBEditDialog
          Left = 8
          Top = 70
          Width = 49
          Height = 21
          Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          ShowHint = True
          TabOrder = 4
          Text = ''
          Visible = True
          LabelCaption = 'Grife'
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
          DataField = 'GRIFE'
          DataSource = BaseDados_PCP.ds_referencias
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeGrife
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT NOME FROM CAD_GRIFES'
            'WHERE'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT *  FROM CAD_GRIFES'
            'WHERE'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(CODIGO) FROM CAD_GRIFES'
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
        object EditNomeGrife: TEdit
          Left = 58
          Top = 70
          Width = 170
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 5
          Text = '***'
        end
        object EditColecao: TIDBEditDialog
          Left = 235
          Top = 70
          Width = 49
          Height = 21
          Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          ShowHint = True
          TabOrder = 6
          Text = ''
          Visible = True
          LabelCaption = 'Cole'#231#227'o:'
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
          DataField = 'COLECAO'
          DataSource = BaseDados_PCP.ds_referencias
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeColecao
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT NOME FROM CAD_COLECAO'
            'WHERE'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_COLECAO'
            'WHERE'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(*) FROM CAD_COLECAO'
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
              DisplayWidth = 40
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scContains
              SearchCase = scUpper
            end
            item
              FieldName = 'PERIODO_INI'
              WhereSyntax = 'PERIODO_INI'
              DisplayLabel = 'Periodo de:'
              DisplayWidth = 12
              DisplayColumnWidth = 0
              FieldType = ftDate
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scMixed
            end
            item
              FieldName = 'PERIODO_FIM'
              WhereSyntax = 'PERIODO_FIM'
              DisplayLabel = 'Periodo at'#233':'
              DisplayWidth = 12
              DisplayColumnWidth = 0
              FieldType = ftDate
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scMixed
            end
            item
              FieldName = 'PECAS_META'
              WhereSyntax = 'PECAS_META'
              DisplayLabel = 'Produ'#231#227'o Estimada:'
              DisplayFormat = '###,##0'
              DisplayWidth = 15
              DisplayColumnWidth = 0
              FieldType = ftFloat
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scMixed
            end
            item
              FieldName = 'STATUS'
              WhereSyntax = 'STATUS'
              DisplayLabel = 'Ativa'
              DisplayWidth = 10
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
        object EditNomeColecao: TEdit
          Left = 284
          Top = 70
          Width = 170
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 7
          Text = '***'
        end
        object EditFaixaEtaria: TIDBEditDialog
          Left = 455
          Top = 70
          Width = 49
          Height = 21
          Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          ShowHint = True
          TabOrder = 8
          Text = ''
          Visible = True
          LabelCaption = 'Faixa Et'#225'ria'
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
          DataField = 'FAIXA_ETARIA'
          DataSource = BaseDados_PCP.ds_referencias
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeFaixaEtaria
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT NOME FROM CAD_FAIXAETARIA'
            'WHERE'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_FAIXAETARIA'
            'WHERE'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(*) FROM CAD_FAIXAETARIA'
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
              DisplayLabel = 'NOME'
              DisplayWidth = 60
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scContains
              SearchCase = scUpper
            end
            item
              FieldName = 'IDADE_INICIO'
              WhereSyntax = 'IDADE_INICIO'
              DisplayLabel = 'Idade de:'
              DisplayWidth = 10
              DisplayColumnWidth = 0
              FieldType = ftInteger
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scMixed
            end
            item
              FieldName = 'IDADE_TERMINO'
              WhereSyntax = 'IDADE_TERMINO'
              DisplayLabel = 'Idade at'#233':'
              DisplayWidth = 10
              DisplayColumnWidth = 0
              FieldType = ftInteger
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scEqual
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
        object EditNomeFaixaEtaria: TEdit
          Left = 510
          Top = 70
          Width = 210
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 9
          Text = '***'
        end
        object EditEtiquetas: TIDBEditDialog
          Left = 9
          Top = 108
          Width = 49
          Height = 21
          Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          ShowHint = True
          TabOrder = 10
          Text = ''
          Visible = True
          LabelCaption = 'Composi'#231#227'o (Etiqueta):'
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
          DataField = 'ETIQUETA'
          DataSource = BaseDados_PCP.ds_referencias
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeEtiqueta
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT NOME FROM CAD_ETIQUETAS'
            'WHERE'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_ETIQUETAS'
            'WHERE'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT count(*) FROM CAD_ETIQUETAS'
            'WHERE'
            '%WHERE%')
          SearchDialogFieldList = <
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
            end
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
        object EditNomeEtiqueta: TEdit
          Left = 59
          Top = 108
          Width = 170
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 11
          Text = '***'
        end
        object GB_Foto: TGroupBox
          Left = 776
          Top = 15
          Width = 206
          Height = 206
          Hint = 'Duplo clique para expandir'
          Align = alRight
          Caption = 'Foto do Produto Acabado'
          Color = clBtnFace
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 25
          object Panel4: TPanel
            Left = 2
            Top = 15
            Width = 202
            Height = 28
            Align = alTop
            BevelWidth = 2
            TabOrder = 0
            object SpeedButton6: TSpeedButton
              Left = 6
              Top = 3
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = 'colocar foto'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000C7C7C7C7C7C6
                C7C8C8C8C7C5999192AD9B95D0C6C1D1D3D3C9CCCEC5C6C7C5C6C6C7C7C7C8C8
                C8C8C8C8C7C7C7C8C8C8C8C8C8C5C6C7CECAC79BAFBC28A4D93F95B86F86959E
                999AC0B8B4CDCAC8CBCDCDC7C9C9C6C6C7C7C7C7C7C7C7C7C7C7C7C6C7C6C8C9
                CCC4C045A8D60EBEFE1CCEFF1EBBEF30A4CF518CA67F8993ABA3A2C5BFBDCDCD
                CCCACCCCC7C8C8C7C7C7C5C6C7CDC9C8A6B3BD12B6F222C0F63DD4FB38D8FF36
                DDFF33D5FF35BEE543A1C362899C8C8F95B5ACABCAC5C3CACAC9C2C6C8D1C8C5
                74B2CE0AC3FE29C1F450DFFD50E2FF51DFFB51E0FC50E6FF4CE7FF47D9F946BD
                DC519BB66D8592AFAFB0C6C9CACAC2C04CB9E216CDFF30C5F662E0F459E2F55C
                EEFF62F1FF65ECFF65E9FC67EDFF66F3FF64F3FF4CCBE98097A2CFCDCAB3B9BF
                3BC1EA2AD3FD31CCFAA6D2CBC9B8A198C1B97BD0D171EBF37AF7FF76F2FD75F1
                FC78F3FD74EEFB799EABD4CBC69BB3C03DCFF63CDCFF40D1F7B6E1DCFFD8BCFE
                C3A4F0BB9B93C4C179F0FB89F5FC8BF9FF8CF8FE8DEBEF7AA1ACD3C7C28CB7C7
                49DCFE41D2E756D3FAC4DED7EAC7B6F7D2C1FFD7C0B1C9C27CE0F47DD9F182E1
                F588E1F29EE5E980A4AFD8C4C288BFE53BC5A73BCB6343C581AAE3D1E6D7C8F9
                EAE1FFE4D7B8D1CD88E1F588D9EF83D7F089D2E8A7DEE786A4B07C997539A464
                2DBE564AEC6E41D96061CCCF91E6FFA3DFEBC0DEE3C5EEF1C6FAFEBEF2FAB1ED
                F9A2D5E6AED8E48FA5B129AD3F19C02C27C94238D95D3FDA6440C7814ACBB554
                D2ED59DBFC6CDAF680D9F39AE0F6B4EAF9D0E9EFBAD7E493A7B343BF6025CC45
                1AC43329CB4638D95A46E5693CCD5A749A8D96B9CF64E0F069F6FF66EDFD52D0
                F083A5BBA2BBCBB3BBC1A7BCAA85B08B26A93418C1302CCB4843EB7032CB598E
                9F89CFC3C780C0D276DDED70E9F86AB9CFB6B3B5CBC9C8C8C8C7CACACAD9C6D5
                4CAE590AC22211B5264A9C5882AD8ABEC0BFC9CACAC3C0C0B7BDC5ABBECBBABE
                C3CBC9C8C7C7C8C7C7C7C3C6C3CBC8CA76B07F3FC75C38AA4AA4A7A1D2CAD1C8
                C8C8C6C7C7C8C9C9CBCAC8CEC9C7CBCAC9C7C7C8C8C8C8C8C8C8}
              OnClick = SpeedButton6Click
            end
            object SpeedButton7: TSpeedButton
              Left = 175
              Top = 3
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = 'apagar foto'
              Glyph.Data = {
                26040000424D2604000000000000360000002800000012000000120000000100
                180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFDFDFEFBFBFFFFFFFFFFFFFFF2F2E2D3D3CDCFCFC9E6E6D8FFFFFBFFFF
                FFFFFFFFFBFBFCFEFEFEFFFFFFFEFEFE6E00FEFEFEFFFFFEFDFDFEFFFFFFFFFF
                FEC6C6D56C6CB03E3EAA3838AB3838A83939A25A5A9FAAAABDF9F9F2FFFFFFFC
                FCFDFEFEFEFFFFFF6500FFFFFFFDFDFDFFFFFFF5F5F26F6FB71B1BB32A2AD741
                41ED4B4BF84B4BF84343EE2F2FD61717A84A4A94D6D6D7FFFFFFFCFCFDFEFEFE
                3C00FCFCFDFDFDFFF1F1F44949B21111CF4242FF4747FF4848FF4343FF4343FF
                4747FF4848FF4545FF1A1ACC27278BCFCFD3FFFFFFFDFDFD6900FAFAFDFEFEFC
                6262BB0808D83030FF2929FE2E2EFD2323FD2E2EFE2D2DFE2525FE2A2AFC2D2D
                FD2E2EFF1313D732328DE9E9E6FEFEFF7400FFFFFFB6B6D50202C81B1BFF1414
                FDA1A1FDCACAFF1A1AFD1010FF1515FF0D0DFFB7B7FDBBBBFD1C1CFC1B1BFF00
                00BB7F7FA5FFFFFD2200FEFEF14D4DC00000EF0000FE4A4AFCFFFFFEFFFFFEC4
                C4FE1212FE0000FEACACFEFFFFFDFFFFFF6A6AFD0000FE0101F3252596E8E8E6
                7400CDCDD81F1FCA0000FD0101FC0101FC7676FEFFFFFEFFFFFEBABAFDA8A8FC
                FFFFFEFFFFFF9292FC0606F90101F80000FF0101ACBABAC96C00A8A8DB0E0ED3
                0707FF0D0DFE0C0CFE0000FE7777FFF3F3FEFFFFFEFFFFFEF8F8FE8F8FF90000
                F30000F30000F10101FC0000BFA0A0BC3C00A1A1DA0B0BD52424FE2E2EFD2E2E
                FD2626FF1E1EFFD4D4FDFCFCFDFBFBFEE3E3FD1313F10000F00303F20000EF01
                01F90000C39B9BBB6100AFAFDE1111D43838FD5252FE4646FE4747FFC1C1FFFF
                FFFEFFFFFEFFFFFEFFFFFEC3C3FB1717F20000F00000EF0000F90000BEA7A7C3
                6900DFDFE02121CE3333F97575FE6B6BFECCCCFEFFFFFEFFFFFDB9B9FFA9A9FF
                FFFFFEFFFFFECBCBFC4343F61010F20303F70808AECFCFD95000FFFFF96262CE
                0C0CE78B8BFFA8A8FDFFFFFEFFFFFFCBCBFE8080FE7B7BFFBEBEFFFEFEFDFFFF
                FEB8B8FD8F8FFE2929E93838A7FAFAF56900FEFEFFD7D7E80303CD5353F9B7B7
                FFC6C6FDD7D7FE9F9FFDA8A8FEAAAAFE9D9DFED0D0FDCCCCFDB2B2FE8787FF00
                00B8B3B3CDFFFFFF6900FAFAFDFFFFFE9797DC0000D67171FBD8D8FFCDCDFDC6
                C6FDC3C3FEC2C2FEC5C5FEC7C7FDDADAFFA3A3FF0303CA6767B7FFFFFDFCFCFE
                6400FDFDFDFCFCFEFFFFFE8888DB0000D14545F1BCBCFFEAEAFFF5F5FFF5F5FF
                F0F0FFD0D0FF6E6EF40303C56161BDFAFAF6FCFCFEFDFDFD3C00FFFFFEFEFEFE
                FCFCFEFFFFFFB4B4E22F2FCC0000D52828E34848E84B4BE73636E10A0ACF2222
                BC9E9ED0FFFFFCFFFFFFFDFDFEFFFFFF3C00FEFEFFFFFFFFFEFEFEFCFCFEFFFF
                FFFAFAF7B9B9E08080D86767D96565D67878D4ACACDAF1F1F0FFFFFFFDFDFFFE
                FEFEFFFFFFFEFEFE6900}
              OnClick = SpeedButton7Click
            end
          end
          object Panel6: TPanel
            Left = 2
            Top = 43
            Width = 202
            Height = 161
            Align = alClient
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object FotoReferencia: TImage
              Left = 1
              Top = 1
              Width = 200
              Height = 159
              Hint = 'clique para expandir'
              Align = alClient
              Center = True
              Proportional = True
              Transparent = True
              OnClick = FotoReferenciaClick
              ExplicitTop = 41
              ExplicitWidth = 202
              ExplicitHeight = 161
            end
          end
        end
        object Edit1: TEdit
          Left = 284
          Top = 108
          Width = 170
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 13
          Text = '***'
        end
        object EstSearchDialogZeos2: TIDBEditDialog
          Left = 455
          Top = 108
          Width = 49
          Height = 21
          Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          ShowHint = True
          TabOrder = 14
          Text = ''
          Visible = True
          LabelCaption = 'Subgrupo:'
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
          DataField = 'SUBGRUPO'
          DataSource = BaseDados_PCP.ds_referencias
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = Edit2
          SQLdbCampoRetorno = 'DESCRICAO '
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT DESCRICAO FROM CAD_SUBGRUPO'
            'WHERE'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_SUBGRUPO'
            'WHERE'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(*) FROM CAD_SUBGRUPO'
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
              FieldName = 'DESCRICAO'
              WhereSyntax = 'DESCRICAO'
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
          Left = 510
          Top = 108
          Width = 210
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 15
          Text = '***'
        end
        object DBEdit2: TDBEdit
          Left = 11
          Top = 188
          Width = 49
          Height = 21
          Hint = 
            'Unidade de medida (pc=pe'#231'a,  cj=conjunto, m2=metro quadrado, etc' +
            '..)'
          CharCase = ecUpperCase
          DataField = 'UNIDADE'
          DataSource = BaseDados_PCP.ds_referencias
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
        end
        object EditGradeTamanhos: TIDBEditDialog
          Left = 9
          Top = 147
          Width = 49
          Height = 21
          Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          ShowHint = True
          TabOrder = 16
          Text = ''
          Visible = True
          OnChange = EditGradeTamanhosChange
          LabelCaption = 'Grade/Tamanhos:'
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
          DataField = 'GRADE'
          DataSource = BaseDados_PCP.ds_referencias
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeGrade
          SQLdbCampoRetorno = 'DESCRICAO '
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT DESCRICAO FROM CAD_GRADE'
            'WHERE'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_GRADE'
            'WHERE'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(*) FROM CAD_GRADE'
            'WHERE'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'DESCRICAO'
              WhereSyntax = 'DESCRICAO'
              DisplayLabel = 'Nome:'
              DisplayWidth = 80
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scContains
              SearchCase = scUpper
            end
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
        object EditNomeGrade: TEdit
          Left = 58
          Top = 148
          Width = 396
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 17
          Text = '***'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 275
          Top = 189
          Width = 161
          Height = 17
          Caption = 'Gerar C'#243'digo de Barras EAN13'
          DataField = 'GERAR_CODBARRA'
          DataSource = BaseDados_PCP.ds_referencias
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit1: TDBEdit
          Left = 66
          Top = 188
          Width = 130
          Height = 21
          Hint = 'C'#243'digo NCM (obrigat'#243'rio para emiss'#227'o de Nota Fiscal)'
          CharCase = ecUpperCase
          DataField = 'NCM'
          DataSource = BaseDados_PCP.ds_referencias
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
        end
        object EstSearchDialogZeos1: TIDBEditDialog
          Left = 232
          Top = 108
          Width = 49
          Height = 21
          Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          ShowHint = True
          TabOrder = 12
          Text = ''
          Visible = True
          LabelCaption = 'Grupo:'
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
          DataField = 'GRUPO'
          DataSource = BaseDados_PCP.ds_referencias
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = Edit1
          SQLdbCampoRetorno = 'DESCRICAO '
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT DESCRICAO FROM CAD_GRUPO'
            'WHERE'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_GRUPO'
            'WHERE'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(*) FROM CAD_GRUPO'
            'WHERE'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'DESCRICAO'
              WhereSyntax = 'DESCRICAO'
              DisplayLabel = 'Nome:'
              DisplayWidth = 80
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scContains
              SearchCase = scUpper
            end
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
        object EditOZ: TDBEdit
          Left = 202
          Top = 188
          Width = 67
          Height = 21
          CharCase = ecUpperCase
          DataField = 'OZ'
          DataSource = BaseDados_PCP.ds_referencias
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 26
        end
        object DBEdit10: TDBEdit
          Left = 455
          Top = 30
          Width = 218
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRICAOREDUZIDA'
          DataSource = BaseDados_PCP.ds_referencias
          TabOrder = 3
        end
        object DBEdit11: TDBEdit
          Left = 193
          Top = 30
          Width = 256
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRICAO'
          DataSource = BaseDados_PCP.ds_referencias
          TabOrder = 2
        end
        object DBEdit12: TDBEdit
          Left = 102
          Top = 30
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'REFERENCIAREDUZIDA'
          DataSource = BaseDados_PCP.ds_referencias
          TabOrder = 1
        end
        object dbEditPesquisarFasesGrade: TIDBEditDialog
          Left = 455
          Top = 188
          Width = 49
          Height = 21
          Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          ShowHint = True
          TabOrder = 23
          Text = ''
          Visible = True
          LabelCaption = 'Fases de Produ'#231#227'o:'
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
          DataField = 'FASE'
          DataSource = BaseDados_PCP.ds_referencias
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeFase
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_FASESGRADE'
            'WHERE'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_FASESGRADE'
            'WHERE'
            '%WHERE%')
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
        object EditNomeFase: TEdit
          Left = 510
          Top = 188
          Width = 210
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          TabOrder = 24
          Text = '***'
        end
        object EditMarkup: TIDBEditDialog
          Left = 455
          Top = 148
          Width = 49
          Height = 21
          Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          ShowHint = True
          TabOrder = 18
          Text = '0'
          Visible = True
          EditType = etNumeric
          LabelCaption = 'Markup'
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
          DataField = 'MARKUPID'
          DataSource = BaseDados_PCP.ds_referencias
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditMarkupNome
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT *  FROM CAD_MARKUP'
            'WHERE'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT *  FROM CAD_MARKUP'
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
              SearchCase = scMixed
            end
            item
              FieldName = 'NOME'
              WhereSyntax = 'NOME'
              DisplayLabel = 'NOME:'
              DisplayWidth = 60
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scContains
              SearchCase = scUpper
            end
            item
              FieldName = 'MARKUP'
              WhereSyntax = 'MARKUP'
              DisplayLabel = 'MARKUP:'
              DisplayFormat = '###,##0.00%'
              DisplayWidth = 10
              DisplayColumnWidth = 0
              FieldType = ftFloat
              Search = False
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scMixed
            end
            item
              FieldName = 'MARGEMLUCRO'
              WhereSyntax = 'MARGEMLUCRO'
              DisplayLabel = 'MARGEM LUCRO:'
              DisplayFormat = '###,##0.00%'
              DisplayWidth = 20
              DisplayColumnWidth = 0
              FieldType = ftFloat
              Search = False
              EmptyOperation = eoNull
              DefaultComparison = scEqual
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
        object EditMarkupNome: TEdit
          Left = 510
          Top = 148
          Width = 210
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 19
          Text = '***'
        end
      end
      object GroupBox11: TGroupBox
        Left = 0
        Top = 223
        Width = 984
        Height = 200
        Align = alClient
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object GroupBox4: TGroupBox
          Left = 859
          Top = 15
          Width = 123
          Height = 183
          Align = alRight
          TabOrder = 2
          object Label6: TLabel
            Left = 6
            Top = 132
            Width = 96
            Height = 13
            Caption = 'Pre'#231'o de Venda:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 6
            Top = 54
            Width = 102
            Height = 13
            Caption = '&Pre'#231'o de Custo/Base'
            FocusControl = DBEdit_prcvenda
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 6
            Top = 95
            Width = 94
            Height = 13
            Hint = 'Estoque minimo de seguran'#231'a para produ'#231'ao'
            Caption = 'Quantidade M'#225'xima'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label8: TLabel
            Left = 6
            Top = 15
            Width = 82
            Height = 13
            Hint = 'Saldo atual do produto em estoque'
            Caption = '&Quantidade Atual'
            FocusControl = EditQtde
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object SpeedButton5: TSpeedButton
            Left = 94
            Top = 29
            Width = 21
            Height = 20
            Cursor = crHandPoint
            Hint = 'Como liberar campo "C'#243'digo do Produto"'
            Caption = '?'
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton5Click
          end
          object DBEdit13: TDBEdit
            Left = 6
            Top = 147
            Width = 109
            Height = 21
            Hint = 'Pre'#231'o de venda'
            CharCase = ecUpperCase
            DataField = 'PRC_VENDA'
            DataSource = BaseDados_PCP.ds_referencias
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 5
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit_prcvenda: TDBEdit
            Left = 6
            Top = 69
            Width = 109
            Height = 21
            Hint = 'Pre'#231'o de custo (valor pago pelo produto)'
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'PRC_CUSTO'
            DataSource = BaseDados_PCP.ds_referencias
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 13
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit5: TDBEdit
            Left = 6
            Top = 109
            Width = 109
            Height = 21
            Hint = 'Quantidade m'#225'xima a ser produzida'
            CharCase = ecUpperCase
            DataField = 'ESTOQUEMAXIMO'
            DataSource = BaseDados_PCP.ds_referencias
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object EditQtde: TDBEdit
            Left = 6
            Top = 30
            Width = 87
            Height = 21
            Hint = 'Saldo atual em estoque'
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'ESTOQUESALDO'
            DataSource = BaseDados_PCP.ds_referencias
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
          end
        end
        object GroupBox6: TGroupBox
          Left = 362
          Top = 15
          Width = 497
          Height = 183
          Align = alClient
          Caption = 'Grade de Cores:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnEnter = GroupBox6Enter
          object GridGradeCores: TDBGrid
            Left = 2
            Top = 15
            Width = 493
            Height = 166
            Align = alClient
            DataSource = BaseDados_PCP.ds_Cores_Modelos
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = GridGradeCoresDrawColumnCell
            OnEditButtonClick = GridGradeCoresEditButtonClick
            OnKeyDown = GridGradeCoresKeyDown
            OnKeyPress = GridGradeCoresKeyPress
            Columns = <
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'ID_COR'
                Title.Caption = 'C'#243'digo:'
                Width = 42
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                ReadOnly = True
                Title.Caption = 'Descri'#231#227'o:'
                Width = 317
                Visible = True
              end>
          end
        end
        object GroupBox16: TGroupBox
          Left = 2
          Top = 15
          Width = 360
          Height = 183
          Align = alLeft
          Caption = 'Grade de Tamanhos'
          TabOrder = 0
          object DBGrid4: TDBGrid
            Left = 2
            Top = 15
            Width = 356
            Height = 166
            Cursor = crNo
            Align = alClient
            DataSource = ds_GradeLista
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'TAMANHO'
                Title.Caption = 'Tamanho:'
                Width = 67
                Visible = True
              end
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'Nometamanho'
                Title.Caption = 'Descri'#231#227'o:'
                Width = 253
                Visible = True
              end>
          end
        end
      end
    end
    object Tab_1: TTabSheet
      Caption = 'Tecidos e Mat'#233'rias Primas'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 984
        Height = 423
        Align = alClient
        BevelWidth = 2
        TabOrder = 0
        object GrupoMateriaPrima: TGroupBox
          Left = 2
          Top = 145
          Width = 569
          Height = 154
          Align = alClient
          Caption = 'MAT'#201'RIA PRIMA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnEnter = GrupoMateriaPrimaEnter
          object GridMateriaPrima: TDBGrid
            Left = 2
            Top = 15
            Width = 565
            Height = 137
            Align = alClient
            DataSource = BaseDados_PCP.ds_MateriaPrima
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnEditButtonClick = GridMateriaPrimaEditButtonClick
            OnKeyDown = GridMateriaPrimaKeyDown
            OnKeyPress = GridMateriaPrimaKeyPress
            Columns = <
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'REFERENCIA'
                Title.Caption = 'Produto:'
                Width = 116
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                ReadOnly = True
                Title.Caption = 'Nome:'
                Width = 213
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UND'
                Title.Caption = 'UND:'
                Width = 47
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE'
                Title.Caption = 'Qtde:'
                Width = 59
                Visible = True
              end
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'VLR_UNIT'
                ReadOnly = True
                Title.Caption = 'Vlr Unit:'
                Width = 70
                Visible = True
              end
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'VLR_TOTAL'
                ReadOnly = True
                Title.Caption = 'Total:'
                Width = 76
                Visible = True
              end>
          end
        end
        object GrupoServicosExternos: TGroupBox
          Left = 2
          Top = 299
          Width = 980
          Height = 122
          Align = alBottom
          Caption = 'SERVI'#199'OS EXTERNOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnEnter = GrupoServicosExternosEnter
          object GridServicosExternos: TDBGrid
            Left = 2
            Top = 15
            Width = 976
            Height = 105
            Align = alClient
            DataSource = BaseDados_PCP.ds_pcp_Custos
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnEditButtonClick = GridServicosExternosEditButtonClick
            OnKeyDown = GridServicosExternosKeyDown
            OnKeyPress = GridServicosExternosKeyPress
            Columns = <
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'CODIGOCUSTO'
                Title.Caption = 'C'#211'DIGO:'
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'NOME:'
                Width = 678
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'CUSTO:'
                Width = 85
                Visible = True
              end>
          end
          object BuscaServicoExterno: TIDBEditDialog
            Left = 167
            Top = 62
            Width = 70
            Height = 21
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '0'
            Visible = False
            EditType = etUppercase
            EmptyText = 'F8 - Pesquisar'
            FocusColor = clWindow
            LabelCaption = 'Tabela de Valores:'
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
            DataField = 'TABELACUSTO'
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit1
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM  TPRECOSERVICO'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM TPRECOSERVICO'
              'WHERE'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(CODIGO) FROM TPRECOSERVICO'
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
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'NOME:'
                DisplayWidth = 77
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'VLR_UNIT'
                WhereSyntax = 'VLR_UNIT'
                DisplayLabel = 'PRE'#199'O SERVI'#199'O:'
                DisplayFormat = '###,##0.00'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftFloat
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
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
        object GroupBox18: TGroupBox
          Left = 571
          Top = 145
          Width = 411
          Height = 154
          Align = alRight
          Caption = 'MAT'#201'RIA PRIMA - GRADE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnEnter = GrupoMateriaPrimaEnter
          object GridMateriaPrimaGrade: TDBGrid
            Left = 2
            Top = 15
            Width = 407
            Height = 137
            Align = alClient
            DataSource = BaseDados_PCP.ds_MateriaPrimaGrade
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            PopupMenu = PopupMateriaPrimaGrade
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -9
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            OnKeyDown = GridMateriaPrimaGradeKeyDown
            OnKeyPress = GridMateriaPrimaGradeKeyPress
            Columns = <
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'COR'
                ReadOnly = True
                Title.Caption = 'COR:'
                Width = 95
                Visible = True
              end
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'TAMANHO'
                ReadOnly = True
                Title.Caption = 'TAMANHO:'
                Width = 52
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TAMANHOPADRAO'
                Title.Caption = 'TAMANHO (F8):'
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PADRAOCORNOME'
                ReadOnly = True
                Title.Caption = 'NOME COR (F8)'
                Width = 103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Title.Caption = 'QTDE:'
                Width = 46
                Visible = True
              end>
          end
          object editPesquisaMateriaCor: TIDBEditDialog
            Left = 74
            Top = 76
            Width = 75
            Height = 21
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            ShowHint = True
            TabOrder = 1
            Text = ''
            Visible = False
            LabelCaption = 'Cole'#231#227'o:'
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
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT NOME FROM CAD_COLECAO'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT DISTINCT COR_CODIGO, COR FROM VIEW_GRADEREFERENCIA'
              'WHERE'
              '%WHERE%'
              'ORDER BY COR'
              '')
            SearchDialogFieldList = <
              item
                FieldName = 'COR_CODIGO'
                WhereSyntax = 'COR_CODIGO'
                DisplayLabel = 'C'#211'DIGO COR:'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'COR'
                WhereSyntax = 'COR'
                DisplayLabel = 'NOME COR'
                DisplayWidth = 60
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
          object editPesquisaMateriaTamanho: TIDBEditDialog
            Left = 250
            Top = 92
            Width = 75
            Height = 21
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            ShowHint = True
            TabOrder = 2
            Text = ''
            Visible = False
            LabelCaption = 'Cole'#231#227'o:'
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
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT NOME FROM CAD_COLECAO'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              
                'SELECT DISTINCT TAMANHO_CODIGO, TAMANHO, TAMANHO_ORDEM  FROM VIE' +
                'W_GRADEREFERENCIA'
              'WHERE'
              '%WHERE%'
              'ORDER BY TAMANHO_ORDEM'
              '')
            SearchDialogFieldList = <
              item
                FieldName = 'TAMANHO'
                WhereSyntax = 'TAMANHO'
                DisplayLabel = 'TAMANHO'
                DisplayWidth = 30
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
        object Panel20: TPanel
          Left = 2
          Top = 2
          Width = 980
          Height = 143
          Align = alTop
          BevelWidth = 2
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 2
            Top = 2
            Width = 563
            Height = 139
            Align = alClient
            Caption = 'TECIDOS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnEnter = GroupBox2Enter
            object GridMateriaPrimaTecidos: TDBGrid
              Left = 2
              Top = 15
              Width = 559
              Height = 122
              Align = alClient
              DataSource = BaseDados_PCP.ds_MateriaPrimaTecidos
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -9
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              OnEditButtonClick = GridMateriaPrimaTecidosEditButtonClick
              OnKeyDown = GridMateriaPrimaTecidosKeyDown
              OnKeyPress = GridMateriaPrimaTecidosKeyPress
              Columns = <
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'REFERENCIA'
                  Title.Caption = 'Produto:'
                  Width = 115
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  ReadOnly = True
                  Title.Caption = 'Nome:'
                  Width = 142
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UND'
                  Title.Caption = 'UND:'
                  Width = 41
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDE_METROS'
                  Title.Caption = 'Metros:'
                  Width = 56
                  Visible = True
                end
                item
                  Color = clBtnFace
                  Expanded = False
                  FieldName = 'VLR_UNIT'
                  ReadOnly = True
                  Title.Caption = 'Vlr Unit:'
                  Width = 75
                  Visible = True
                end
                item
                  Color = clBtnFace
                  Expanded = False
                  FieldName = 'VLR_TOTAL'
                  ReadOnly = True
                  Title.Caption = 'Total:'
                  Width = 79
                  Visible = True
                end>
            end
          end
          object GroupBox19: TGroupBox
            Left = 565
            Top = 2
            Width = 413
            Height = 139
            Align = alRight
            Caption = 'TECIDOS - GRADE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnEnter = GrupoMateriaPrimaEnter
            object DBGrid5: TDBGrid
              Left = 2
              Top = 15
              Width = 409
              Height = 122
              Align = alClient
              DataSource = BaseDados_PCP.ds_MateriaPrimaTecidosGrade
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              PopupMenu = PopupMateriaPrimaGradeTecidos
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -9
              TitleFont.Name = 'Arial'
              TitleFont.Style = [fsBold]
              OnKeyDown = DBGrid5KeyDown
              OnKeyPress = GridMateriaPrimaGradeKeyPress
              Columns = <
                item
                  Color = clBtnFace
                  Expanded = False
                  FieldName = 'REFERENCIA_COR_NOME'
                  ReadOnly = True
                  Title.Caption = 'COR REFER'#202'NCIA:'
                  Width = 117
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COR_ID'
                  Title.Caption = 'CODIGO COR (F8):'
                  Width = 94
                  Visible = True
                end
                item
                  Color = clBtnFace
                  Expanded = False
                  FieldName = 'COR_NOME'
                  ReadOnly = True
                  Title.Caption = 'NOME COR:'
                  Width = 102
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QUANTIDADE'
                  Title.Caption = 'QTDE:'
                  Width = 52
                  Visible = True
                end>
            end
            object dbEditPesquisarCoresTecidos: TIDBEditDialog
              Left = 122
              Top = 82
              Width = 75
              Height = 21
              Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              ShowHint = True
              TabOrder = 1
              Text = ''
              Visible = False
              LabelCaption = 'Cole'#231#227'o:'
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
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT NOME FROM CAD_COLECAO'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT DISTINCT  '
                'COR_CODIGO,'
                'COR'
                ''
                ' FROM VIEW_GRADEREFERENCIA'
                'WHERE'
                '%WHERE%'
                'ORDER BY COR'
                '')
              SearchDialogFieldList = <
                item
                  FieldName = 'COR_CODIGO'
                  WhereSyntax = 'COR_CODIGO'
                  DisplayLabel = 'C'#211'DIGO COR:'
                  DisplayWidth = 15
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end
                item
                  FieldName = 'COR'
                  WhereSyntax = 'COR'
                  DisplayLabel = 'NOME COR'
                  DisplayWidth = 80
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
    end
    object Tab_2: TTabSheet
      Caption = 'Processos e M'#225'quinas'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox10: TGroupBox
        Left = 0
        Top = 52
        Width = 984
        Height = 371
        Align = alClient
        TabOrder = 0
        object GroupBox3: TGroupBox
          Left = 2
          Top = 15
          Width = 670
          Height = 354
          Align = alClient
          Caption = 'Processos de Produ'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object GridProcessos: TDBGrid
            Left = 36
            Top = 96
            Width = 531
            Height = 252
            DataSource = BaseDados_PCP.ds_pcp_processos
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            Visible = False
            OnEditButtonClick = GridProcessosEditButtonClick
            OnKeyDown = GridProcessosKeyDown
            OnKeyPress = GridProcessosKeyPress
            Columns = <
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'ID_PROCESSO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'C'#243'digo:'
                Width = 42
                Visible = True
              end
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'NOME'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ReadOnly = True
                Title.Caption = 'Descri'#231#227'o:'
                Width = 220
                Visible = True
              end
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'TEMPO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ReadOnly = True
                Title.Caption = 'Tempo:'
                Width = 59
                Visible = True
              end
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'CUSTOS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ReadOnly = True
                Title.Caption = 'Custos:'
                Width = 61
                Visible = True
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'INSTRUCOES'
                Title.Caption = 'Instru'#231#245'es:'
                Width = 149
                Visible = True
              end>
          end
          object PainelGridProcessos: TPanel
            Left = 131
            Top = 144
            Width = 311
            Height = 169
            Color = 507128
            ParentBackground = False
            TabOrder = 1
            Visible = False
            object Label9: TLabel
              Left = 1
              Top = 1
              Width = 135
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = 'Instru'#231#245'es do Processo:'
            end
            object Panel15: TPanel
              Left = 1
              Top = 137
              Width = 309
              Height = 31
              Align = alBottom
              TabOrder = 0
              object Button1: TButton
                Left = 4
                Top = 3
                Width = 75
                Height = 25
                Caption = 'Ok'
                TabOrder = 0
                OnClick = Button1Click
              end
            end
            object DBMemo2: TDBMemo
              Left = 1
              Top = 14
              Width = 309
              Height = 123
              Align = alClient
              DataField = 'INSTRUCOES'
              DataSource = BaseDados_PCP.ds_pcp_processos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 1
            end
          end
          object DBCtrlGrid1: TDBCtrlGrid
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 660
            Height = 331
            Align = alClient
            DataSource = BaseDados_PCP.ds_pcp_processos
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            PanelHeight = 110
            PanelWidth = 643
            ParentFont = False
            TabOrder = 2
            object Panel18: TPanel
              Left = 0
              Top = 0
              Width = 214
              Height = 110
              Align = alLeft
              TabOrder = 0
              object Label16: TLabel
                Left = 49
                Top = 51
                Width = 32
                Height = 13
                Caption = 'Custo:'
              end
              object Label15: TLabel
                Left = 5
                Top = 51
                Width = 32
                Height = 13
                Caption = 'Tempo'
              end
              object Label14: TLabel
                Left = 65
                Top = 8
                Width = 27
                Height = 13
                Caption = 'Nome'
              end
              object Label10: TLabel
                Left = 5
                Top = 8
                Width = 33
                Height = 13
                Caption = 'C'#243'digo'
              end
              object DBEdit3: TDBEdit
                Left = 5
                Top = 24
                Width = 58
                Height = 21
                DataField = 'ID_PROCESSO'
                DataSource = BaseDados_PCP.ds_pcp_processos
                TabOrder = 0
                OnKeyDown = DBEdit3KeyDown
              end
              object DBEdit4: TDBEdit
                Left = 65
                Top = 24
                Width = 143
                Height = 21
                Color = clBtnFace
                DataField = 'NOME'
                DataSource = BaseDados_PCP.ds_pcp_processos
                Enabled = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 5
                Top = 67
                Width = 44
                Height = 21
                Color = clBtnFace
                DataField = 'TEMPO'
                DataSource = BaseDados_PCP.ds_pcp_processos
                Enabled = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 2
              end
              object DBEdit9: TDBEdit
                Left = 49
                Top = 67
                Width = 44
                Height = 21
                Color = clBtnFace
                DataField = 'CUSTOS'
                DataSource = BaseDados_PCP.ds_pcp_processos
                Enabled = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 3
              end
            end
            object GroupBox17: TGroupBox
              Left = 214
              Top = 0
              Width = 429
              Height = 110
              Align = alClient
              Caption = 'Instru'#231#245'es'
              TabOrder = 1
              object DBMemo3: TDBMemo
                Left = 2
                Top = 15
                Width = 425
                Height = 93
                Align = alClient
                DataField = 'INSTRUCOES'
                DataSource = BaseDados_PCP.ds_pcp_processos
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Courier New'
                Font.Style = []
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
          end
        end
        object GroupBox9: TGroupBox
          Left = 672
          Top = 15
          Width = 310
          Height = 354
          Align = alRight
          Caption = 'M'#225'quinas utilizadas nos processos de produ'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnEnter = GroupBox9Enter
          object GridMaquinas: TDBGrid
            Left = 2
            Top = 15
            Width = 306
            Height = 337
            Align = alClient
            DataSource = BaseDados_PCP.ds_pcp_Maquinas
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnEditButtonClick = GridMaquinasEditButtonClick
            OnKeyDown = GridMaquinasKeyDown
            OnKeyPress = GridGradeCoresKeyPress
            Columns = <
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'ID_MAQUINA'
                Title.Caption = 'C'#243'digo:'
                Width = 42
                Visible = True
              end
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'NOME'
                ReadOnly = True
                Title.Caption = 'Descri'#231#227'o:'
                Width = 150
                Visible = True
              end
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'AGULHAS'
                ReadOnly = True
                Title.Caption = 'Agulhas:'
                Width = 47
                Visible = True
              end
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'FIOS'
                ReadOnly = True
                Title.Caption = 'Fios:'
                Width = 30
                Visible = True
              end>
          end
          object LocalizaOrdemMaquina: TIDBEditDialog
            Left = 69
            Top = 109
            Width = 65
            Height = 21
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            TabOrder = 1
            Text = ''
            Visible = False
            LabelCaption = 'C'#243'digo da M'#225'quina'
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
            SQLdbFazBusca = True
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = ' *** '
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_MAQUINAS'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_MAQUINAS'
              'WHERE'
              '%WHERE%'
              'ORDER BY NOME'
              '')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_MAQUINAS'
              'WHERE'
              '%WHERE%'
              'ORDER BY NOME')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#211'DIGO:'
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
                DisplayLabel = 'NOME:'
                DisplayWidth = 65
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'NRO_AGULHAS'
                WhereSyntax = 'NRO_AGULHAS'
                DisplayLabel = 'AGULHAS:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'NRO_FIOS'
                WhereSyntax = 'NRO_FIOS'
                DisplayLabel = 'FIOS:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
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
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 984
        Height = 52
        Align = alTop
        BevelOuter = bvLowered
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label22: TLabel
          Left = 80
          Top = 7
          Width = 37
          Height = 13
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 7
          Top = 7
          Width = 67
          Height = 13
          Caption = 'Refer'#234'ncia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit27: TDBEdit
          Left = 80
          Top = 22
          Width = 785
          Height = 21
          BevelKind = bkFlat
          Color = clBtnFace
          DataField = 'DESCRICAO'
          DataSource = BaseDados_PCP.ds_referencias
          TabOrder = 0
        end
        object DBEdit28: TDBEdit
          Left = 7
          Top = 22
          Width = 66
          Height = 21
          BevelKind = bkFlat
          Color = clBtnFace
          DataField = 'REFERENCIA'
          DataSource = BaseDados_PCP.ds_referencias
          TabOrder = 1
        end
      end
    end
    object Tab_3: TTabSheet
      Caption = 'Etapas/Medidas/Instru'#231#245'es Gerais'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 0
        Top = 52
        Width = 984
        Height = 292
        Align = alClient
        BevelWidth = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object GroupBox8: TGroupBox
          Left = 472
          Top = 3
          Width = 509
          Height = 286
          Align = alClient
          Caption = 'TABELA DE MEDIDAS - AP'#211'S LAVAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object DBGrid3: TDBGrid
            Left = 2
            Top = 15
            Width = 505
            Height = 269
            Align = alClient
            DataSource = BaseDados_PCP.ds_pcp_MedidasPosLavagem
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnKeyPress = DBGrid3KeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'Nome:'
                Width = 210
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDMOLDE'
                Title.Caption = 'Identifica'#231#227'o:'
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MEDIDA'
                Title.Caption = 'Medida (cm):'
                Width = 80
                Visible = True
              end>
          end
        end
        object GroupBox15: TGroupBox
          Left = 3
          Top = 3
          Width = 412
          Height = 286
          Align = alLeft
          Caption = 'TABELA DE MEDIDAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 408
            Height = 269
            Align = alClient
            DataSource = BaseDados_PCP.ds_pcp_Medidas
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnKeyPress = DBGrid1KeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'Nome:'
                Width = 210
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDMOLDE'
                Title.Caption = 'Identifica'#231#227'o:'
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MEDIDA'
                Title.Caption = 'Medida (cm):'
                Width = 80
                Visible = True
              end>
          end
        end
        object Panel2: TPanel
          Left = 415
          Top = 3
          Width = 57
          Height = 286
          Align = alLeft
          TabOrder = 1
          object BitBtn1: TBitBtn
            Left = 6
            Top = 34
            Width = 47
            Height = 49
            Cursor = crHandPoint
            Hint = 'Clonar tabela de medidas. Evita digita'#231#227'o repetitiva'
            Caption = 'Clonar'
            Enabled = False
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              200000000000000900000000000000000000000000000000000000000000FFFF
              FF5FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF5F00000000FFFFFF5FEFF7
              EFFF449C44FF097D09FF0C7D0CFF0F800FFF118111FF128012FF118211FF1184
              11FF118911FF108B10FF0D8D0DFF0B910BFF099309FF089708FF069306FF0495
              04FF029702FF009300FF008400FF3F993FFFEFF6EFFFFFFFFF5FFFFFFFDF44AB
              44FF0E970EFF149A14FF199C19FF1F9F1FFF219F21FF22A022FF21A121FF20A4
              20FF1FA81FFF1DAC1DFF1BB11BFF18B518FF14B914FF12BC12FF0EBD0EFF09C0
              09FF05C005FF02BA02FF00AD00FF009700FF3F993FFFFFFFFFDFFFFFFFFF0AA1
              0AFF15A815FF1EAB1EFF26AE26FF2CB02CFF2FB22FFF2EB22EFF2EB32EFF2EB7
              2EFF2DBB2DFF2ABE2AFF28C428FF24C924FF1FCE1FFF1BD21BFF16D516FF10D5
              10FF09D409FF04CE04FF00C300FF00AD00FF008500FFFFFFFFFFFFFFFFFF0EAA
              0EFF1CAF1CFF26B326FF2FB62FFF35B835FF39BA39FF39BA39FF37BB37FF37BF
              37FF37C337FF35C735FF30CD30FF2DD22DFF27D827FF21DB21FF1BDE1BFF14DF
              14FF0DDE0DFF07D907FF03CE03FF01B901FF008F00FFFFFFFFFFFFFFFFFF12AC
              12FF24B224FF2FB62FFF36B936FF3DBB3DFF41BD41FF40BE40FF40BF40FF40C2
              40FF62D162FFF3FCF3FFF3FCF3FF33D733FF2DDD2DFF27E127FF21E521FF19E6
              19FF11E411FF0ADE0AFF05D305FF03BF03FF019401FFFFFFFFFFFFFFFFFF16AE
              16FF2BB52BFF37B937FF3FBC3FFF45BE45FF48BF48FF47C047FF46C146FF47C4
              47FFA2E4A2FFFFFFFFFFFFFFFFFFF3FDF3FF32DF32FF2BE42BFF24E724FF1DE8
              1DFF15E615FF0EE10EFF09D609FF06C006FF039603FFFFFFFFFFFFFFFFFF1BAF
              1BFF31B731FF3DBB3DFF45BE45FF4BC04BFF4CC14CFF4BC14BFF4AC34AFF4AC5
              4AFF48CA48FFF3FCF3FFFFFFFFFFFFFFFFFFF2FDF2FF2DE42DFF27E627FF1FE7
              1FFF18E518FF13DF13FF0FD50FFF0CC00CFF069606FFFFFFFFFFFFFFFFFF20B1
              20FF38BA38FF44BE44FF4AC04AFF50C250FF51C351FF50C350FF4DC34DFF4CC6
              4CFF4ACA4AFF47CD47FFF3FCF3FFFFFFFFFFFFFFFFFFF2FDF2FF28E328FF21E4
              21FF1CE11CFF18DD18FF15D315FF11BE11FF099409FFFFFFFFFFFFFFFFFF24B3
              24FF3EBC3EFF4AC04AFF50C250FF53C353FF55C455FF52C452FF50C450FF4EC6
              4EFF4BC94BFF47CC47FF43D043FFF3FCF3FFFFFFFFFFFFFFFFFFF2FDF2FF22DE
              22FF1EDC1EFF1DD81DFF1BCE1BFF17BB17FF0D960DFFFFFFFFFFFFFFFFFF2BB5
              2BFF46BE46FF50C250FF55C455FF58C458FF57C457FF54C554FF51C451FF4EC5
              4EFF4AC74AFF46CA46FF41CC41FF3ACF3AFFF2FCF2FFFFFFFFFFFFFFFFFFF1FC
              F1FF20D520FF20D120FF20CA20FF1CB71CFF109310FFFFFFFFFFFFFFFFFF30B7
              30FF4CC14CFF56C456FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFF1FCF1FF24CC24FF25C525FF20B320FF139013FFFFFFFFFFFFFFFFFF34B8
              34FF52C352FF5CC65CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF1FBF1FF28C028FF24AF24FF168F16FFFFFFFFFFFFFFFFFF3ABA
              3AFF5AC55AFF63C963FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF29C029FF2BBC2BFF26AB26FF188B18FFFFFFFFFFFFFFFFFF3FBC
              3FFF62C862FF6ACB6AFF6ACB6AFF66CA66FF62C862FF5CC75CFF56C556FF50C3
              50FF49C149FF42C042FF3BBE3BFF34BE34FFD8F2D8FFFFFFFFFFFFFFFFFFFFFF
              FFFF27BB27FF2ABB2AFF2DB82DFF28A928FF198919FFFFFFFFFFFFFFFFFF40BD
              40FF68CB68FF72CE72FF70CD70FF6CCC6CFF66CA66FF60C860FF5AC65AFF53C4
              53FF4CC24CFF45BF45FF3EBD3EFFD9F2D9FFFFFFFFFFFFFFFFFFFFFFFFFF28B8
              28FF2AB72AFF2CB72CFF2EB52EFF29A629FF1A871AFFFFFFFFFFFFFFFFFF47BF
              47FF6FCD6FFF7AD07AFF77CF77FF71CE71FF6ACB6AFF64C964FF5DC75DFF56C5
              56FF4EC24EFF47C047FFDBF3DBFFFFFFFFFFFFFFFFFFFFFFFFFF2DB72DFF2CB6
              2CFF2DB72DFF2EB72EFF2EB32EFF2AA52AFF1B871BFFFFFFFFFFFFFFFFFF4AC0
              4AFF78D078FF84D484FF80D280FF77D077FF6FCD6FFF67CA67FF60C860FF5AC5
              5AFF52C352FFDDF3DDFFFFFFFFFFFFFFFFFFFFFFFFFF36B936FF33B833FF31B7
              31FF30B730FF30B730FF30B230FF29A429FF1A861AFFFFFFFFFFFFFFFFFF52C2
              52FF84D484FF91D891FF8BD68BFF82D382FF76CF76FF70CD70FF69CB69FF62C8
              62FF85D485FFFFFFFFFFFFFFFFFFFFFFFFFF46BF46FF44BE44FF40BC40FF3CBB
              3CFF39BA39FF34B834FF30B230FF27A327FF178417FFFFFFFFFFFFFFFFFF58C5
              58FF90D890FF9DDD9DFF96DA96FF8AD68AFF7FD27FFF78D078FF72CE72FF6CCC
              6CFF71CD71FFD8F1D8FFF5FCF5FF5CC65CFF57C557FF54C354FF4EC14EFF48BF
              48FF42BD42FF39BA39FF30B230FF24A224FF138213FFFFFFFFFFFFFFFFFF5BC6
              5BFF96DA96FFA4DFA4FF9CDC9CFF8DD78DFF82D382FF7BD17BFF75CF75FF70CD
              70FF6DCC6DFF69CB69FF67CA67FF63C963FF5FC75FFF5BC65BFF54C354FF4EC2
              4EFF46BE46FF3CBB3CFF2FB22FFF20A020FF108110FFFFFFFFFFFFFFFFDF77CF
              77FF80D380FF92D992FF8BD68BFF7CD17CFF71CD71FF6DCC6DFF68CA68FF63C9
              63FF5FC75FFF5CC65CFF5AC55AFF57C457FF52C352FF50C250FF4BC04BFF46BE
              46FF3DBB3DFF34B834FF28B028FF1B9D1BFF4AA04AFFFFFFFFDFFFFFFF5FF1FA
              F1FF77CF77FF58C558FF54C354FF4CC14CFF49C049FF43BD43FF3EBB3EFF3CBB
              3CFF3DBB3DFF3CBB3CFF39BA39FF35B935FF34B834FF2EB62EFF2DB62DFF2CB5
              2CFF25B325FF1FB01FFF18A718FF4DB14DFFF0F7F0FFFFFFFF5F00000000FFFF
              FF5FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF5F00000000}
            Layout = blGlyphTop
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object BitBtn2: TBitBtn
            Left = 6
            Top = 137
            Width = 47
            Height = 49
            Cursor = crHandPoint
            Hint = 'Excluir toda a tabela de medidas'
            Caption = 'Excluir'
            Enabled = False
            Glyph.Data = {
              76060000424D7606000000000000360400002800000018000000180000000100
              080000000000400200000000000000000000000100000001000004021C009C82
              EC002C0A9400644E94001C065C00D4C2F4002C223C002C02DC00BCA2E4007446
              E4008462EC005422E40014023C00AC92EC004C12E400ECE6FC001C123C004C42
              6C007C52E4009472EC004402FC00A48AEC003C3A3C00AC92F4001C1634002C06
              84002C224C00440AE400C4B6F4006432E4000C062C004C2E9C00B4A2F400FCF6
              FC008452FC00B49AF4002C127C003C1A94003C02DC008C6AEC00140A3C00241A
              3C00845AE400C4AAF400A482FC00340EA400DCD2FC00642AFC009C7AEC00342E
              4C002C0E8C000C0A1C009C82F400744AEC005C2AE400F4EEFC00AC8EFC00B492
              FC003C02E40034129400342E3C008C62FC0014024C00A48AF4006C3EEC00C4A6
              FC00241A4C007C5AEC00A47AFC002C128C003C06E4000C022400D4CAFC006C42
              EC008C66EC005C26EC00B49EE400541AE400ECEAFC0024164C00544A74007C52
              EC00AC96F4002C264C00440EE4006432EC0014063400BCA6F400FCFEFC00B49A
              FC00946AFC001C0A4400C4AEF400E4DAFC009C7EF400342A5400A486F400A48E
              F400845EEC00A486EC00340E94007C62B40024067400CCC2FC002C2244003402
              E4008C62EC005C26E40014063C004C16E4001C163C00544674009476EC004406
              FC00241A34002C0A8C00CCBAF40014062C00BCA2F400FCFAFC00B49EF4002C0E
              84008C6EEC001C0E3C00241E3C003C12A4009C7EEC00340E8C00140A24002C2A
              440034129C00B49EEC00642EE4007446EC003C2E5400744EEC00F4F2FC00B496
              FC0014064C000C0624007C56EC006436EC00E4DEFC00A482F4004402E4002C1A
              4C00845AEC0034128C004406E400F4EAFC00B496F40034264C004C0EE400CCAE
              F400AC8EF4000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000009911687C2929
              6E10107B567B28560C560C5B8080338B812B500339637E1327628C09408D360E
              541B1B1B322424790411185978523F3470276251351D6D1B54541B1B64327F7F
              8200060D7817155E70270A8C351D989454981B1B6493324593757C17780D3F7E
              139287408D4D691B541B1B1B3B327F323B8B7C9678173F5E304867051C1C2326
              98981B1B643245793B1E7C52780D637E0F5858585858353A541B541B64937F32
              3B8B7C1778173F0F5877777737853A1B54981B1B827993793B1E7C9623960F58
              585858880A4D3A263A3A3A3A643232323B75060D209558585858586051356B4B
              36366B6B8279457F3B1E2917955858585858585858585858585858581F199332
              3B8B3C95585858585858585858585858585877581F7345323B75165858585858
              5858585877777777777721771F1932793B1E6E57775858585858585858585858
              585858581F1993323B7506615C77585858585823605E62623D62626225323232
              3B1E7C52965777585858582E406D3A070769076902327F4564757C17763F7877
              585877585D8446949494944664453279821E06177896341777585858585D6D3A
              263A903A64797F3264757C52780D9A139A374E950F375C3A943A269082457F79
              3B1E7217781715347A4A8C35490B3A263A903A3A6479933282750617780D3F7E
              70276287851D903A3A3A903A64323279641E7259830D637E134A4312096B2626
              26262626027945197D4786654139382C445A3D222F711414141414142D3B8282
              661A08505F5F5F1A1A914F4F3E0C3E3E0C3E0C3E561E75561A4C}
            Layout = blGlyphTop
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object BitBtn3: TBitBtn
            Left = 6
            Top = 185
            Width = 47
            Height = 49
            Cursor = crHandPoint
            Hint = 'Excluir toda a tabela de medidas (ap'#243's lavar)'
            Caption = 'Excluir'
            Enabled = False
            Glyph.Data = {
              76060000424D7606000000000000360400002800000018000000180000000100
              080000000000400200000000000000000000000100000001000004021C009C82
              EC002C0A9400644E94001C065C00D4C2F4002C223C002C02DC00BCA2E4007446
              E4008462EC005422E40014023C00AC92EC004C12E400ECE6FC001C123C004C42
              6C007C52E4009472EC004402FC00A48AEC003C3A3C00AC92F4001C1634002C06
              84002C224C00440AE400C4B6F4006432E4000C062C004C2E9C00B4A2F400FCF6
              FC008452FC00B49AF4002C127C003C1A94003C02DC008C6AEC00140A3C00241A
              3C00845AE400C4AAF400A482FC00340EA400DCD2FC00642AFC009C7AEC00342E
              4C002C0E8C000C0A1C009C82F400744AEC005C2AE400F4EEFC00AC8EFC00B492
              FC003C02E40034129400342E3C008C62FC0014024C00A48AF4006C3EEC00C4A6
              FC00241A4C007C5AEC00A47AFC002C128C003C06E4000C022400D4CAFC006C42
              EC008C66EC005C26EC00B49EE400541AE400ECEAFC0024164C00544A74007C52
              EC00AC96F4002C264C00440EE4006432EC0014063400BCA6F400FCFEFC00B49A
              FC00946AFC001C0A4400C4AEF400E4DAFC009C7EF400342A5400A486F400A48E
              F400845EEC00A486EC00340E94007C62B40024067400CCC2FC002C2244003402
              E4008C62EC005C26E40014063C004C16E4001C163C00544674009476EC004406
              FC00241A34002C0A8C00CCBAF40014062C00BCA2F400FCFAFC00B49EF4002C0E
              84008C6EEC001C0E3C00241E3C003C12A4009C7EEC00340E8C00140A24002C2A
              440034129C00B49EEC00642EE4007446EC003C2E5400744EEC00F4F2FC00B496
              FC0014064C000C0624007C56EC006436EC00E4DEFC00A482F4004402E4002C1A
              4C00845AEC0034128C004406E400F4EAFC00B496F40034264C004C0EE400CCAE
              F400AC8EF4000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000004C1A56751E56
              3E0C3E0C3E3E0C3E4F4F911A1A5F5F5F50081A6682823B2D141414141414712F
              223D5A442C3839416586477D194579022626262626266B0912434A137E630D83
              59721E64793232643A903A3A3A901D85876227707E3F0D781706758232937964
              3A3A903A263A0B49358C4A7A3415177817721E3B797F458290263A943A5C370F
              954E379A139A0D78527C7564327F79643A903A263A6D5D585858587717349678
              17061E8279324564469494949446845D5877585877783F76177C7564457F3202
              69076907073A6D402E58585858775796527C1E3B323232256262623D62625E60
              235858585858775C6106753B3293191F58585858585858585858585858585877
              576E1E3B7932191F772177777777777758585858585858585816753B3245731F
              58775858585858585858585858585858953C8B3B3293191F5858585858585858
              585858585858589517291E3B7F4579826B6B36364B6B35516058585858589520
              0D06753B323232643A3A3A3A263A4D0A88585858580F9623967C1E3B79937982
              1B1B98541B3A8537777777580F3F1778177C8B3B327F93641B541B543A355858
              5858580F7E630D78527C1E3B794532641B1B989826231C1C056748305E3F1778
              967C8B3B327F323B1B1B1B541B694D8D408792137E3F0D78177C759345329364
              1B1B985494981D358C0A27705E1517780D0600827F7F32641B1B54541B6D1D35
              51622770343F527859181104792424321B1B1B540E368D40098C6227137E6339
              03502B818B3380805B0C560C56287B567B10106E29297C681199}
            Layout = blGlyphTop
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
        end
      end
      object GroupBox12: TGroupBox
        Left = 0
        Top = 344
        Width = 984
        Height = 79
        Align = alBottom
        Caption = 'INSTRU'#199#213'ES GERAIS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 980
          Height = 62
          Align = alClient
          DataField = 'INSTRUCOES'
          DataSource = BaseDados_PCP.ds_referencias
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel19: TPanel
        Left = 0
        Top = 0
        Width = 984
        Height = 52
        Align = alTop
        BevelOuter = bvLowered
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label4: TLabel
          Left = 80
          Top = 7
          Width = 37
          Height = 13
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 7
          Top = 7
          Width = 67
          Height = 13
          Caption = 'Refer'#234'ncia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit7: TDBEdit
          Left = 80
          Top = 22
          Width = 785
          Height = 21
          BevelKind = bkFlat
          Color = clBtnFace
          DataField = 'DESCRICAO'
          DataSource = BaseDados_PCP.ds_referencias
          TabOrder = 0
        end
        object DBEdit20: TDBEdit
          Left = 7
          Top = 22
          Width = 66
          Height = 21
          BevelKind = bkFlat
          Color = clBtnFace
          DataField = 'REFERENCIA'
          DataSource = BaseDados_PCP.ds_referencias
          TabOrder = 1
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Modelagem (fotos)'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel7: TPanel
        Left = 0
        Top = 52
        Width = 984
        Height = 371
        Align = alClient
        BevelWidth = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object GroupBox5: TGroupBox
          Left = 223
          Top = 3
          Width = 221
          Height = 365
          Align = alLeft
          Caption = 'Costas'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object Panel10: TPanel
            Left = 2
            Top = 15
            Width = 217
            Height = 28
            Align = alTop
            BevelWidth = 2
            TabOrder = 0
            DesignSize = (
              217
              28)
            object SpeedButton2: TSpeedButton
              Left = 6
              Top = 3
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = 'colocar foto'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000C7C7C7C7C7C6
                C7C8C8C8C7C5999192AD9B95D0C6C1D1D3D3C9CCCEC5C6C7C5C6C6C7C7C7C8C8
                C8C8C8C8C7C7C7C8C8C8C8C8C8C5C6C7CECAC79BAFBC28A4D93F95B86F86959E
                999AC0B8B4CDCAC8CBCDCDC7C9C9C6C6C7C7C7C7C7C7C7C7C7C7C7C6C7C6C8C9
                CCC4C045A8D60EBEFE1CCEFF1EBBEF30A4CF518CA67F8993ABA3A2C5BFBDCDCD
                CCCACCCCC7C8C8C7C7C7C5C6C7CDC9C8A6B3BD12B6F222C0F63DD4FB38D8FF36
                DDFF33D5FF35BEE543A1C362899C8C8F95B5ACABCAC5C3CACAC9C2C6C8D1C8C5
                74B2CE0AC3FE29C1F450DFFD50E2FF51DFFB51E0FC50E6FF4CE7FF47D9F946BD
                DC519BB66D8592AFAFB0C6C9CACAC2C04CB9E216CDFF30C5F662E0F459E2F55C
                EEFF62F1FF65ECFF65E9FC67EDFF66F3FF64F3FF4CCBE98097A2CFCDCAB3B9BF
                3BC1EA2AD3FD31CCFAA6D2CBC9B8A198C1B97BD0D171EBF37AF7FF76F2FD75F1
                FC78F3FD74EEFB799EABD4CBC69BB3C03DCFF63CDCFF40D1F7B6E1DCFFD8BCFE
                C3A4F0BB9B93C4C179F0FB89F5FC8BF9FF8CF8FE8DEBEF7AA1ACD3C7C28CB7C7
                49DCFE41D2E756D3FAC4DED7EAC7B6F7D2C1FFD7C0B1C9C27CE0F47DD9F182E1
                F588E1F29EE5E980A4AFD8C4C288BFE53BC5A73BCB6343C581AAE3D1E6D7C8F9
                EAE1FFE4D7B8D1CD88E1F588D9EF83D7F089D2E8A7DEE786A4B07C997539A464
                2DBE564AEC6E41D96061CCCF91E6FFA3DFEBC0DEE3C5EEF1C6FAFEBEF2FAB1ED
                F9A2D5E6AED8E48FA5B129AD3F19C02C27C94238D95D3FDA6440C7814ACBB554
                D2ED59DBFC6CDAF680D9F39AE0F6B4EAF9D0E9EFBAD7E493A7B343BF6025CC45
                1AC43329CB4638D95A46E5693CCD5A749A8D96B9CF64E0F069F6FF66EDFD52D0
                F083A5BBA2BBCBB3BBC1A7BCAA85B08B26A93418C1302CCB4843EB7032CB598E
                9F89CFC3C780C0D276DDED70E9F86AB9CFB6B3B5CBC9C8C8C8C7CACACAD9C6D5
                4CAE590AC22211B5264A9C5882AD8ABEC0BFC9CACAC3C0C0B7BDC5ABBECBBABE
                C3CBC9C8C7C7C8C7C7C7C3C6C3CBC8CA76B07F3FC75C38AA4AA4A7A1D2CAD1C8
                C8C8C6C7C7C8C9C9CBCAC8CEC9C7CBCAC9C7C7C8C8C8C8C8C8C8}
              OnClick = SpeedButton2Click
            end
            object SpeedButton4: TSpeedButton
              Left = 189
              Top = 3
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = 'apagar foto'
              Anchors = [akTop, akRight]
              Glyph.Data = {
                26040000424D2604000000000000360000002800000012000000120000000100
                180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFDFDFEFBFBFFFFFFFFFFFFFFF2F2E2D3D3CDCFCFC9E6E6D8FFFFFBFFFF
                FFFFFFFFFBFBFCFEFEFEFFFFFFFEFEFE6E00FEFEFEFFFFFEFDFDFEFFFFFFFFFF
                FEC6C6D56C6CB03E3EAA3838AB3838A83939A25A5A9FAAAABDF9F9F2FFFFFFFC
                FCFDFEFEFEFFFFFF6500FFFFFFFDFDFDFFFFFFF5F5F26F6FB71B1BB32A2AD741
                41ED4B4BF84B4BF84343EE2F2FD61717A84A4A94D6D6D7FFFFFFFCFCFDFEFEFE
                3C00FCFCFDFDFDFFF1F1F44949B21111CF4242FF4747FF4848FF4343FF4343FF
                4747FF4848FF4545FF1A1ACC27278BCFCFD3FFFFFFFDFDFD6900FAFAFDFEFEFC
                6262BB0808D83030FF2929FE2E2EFD2323FD2E2EFE2D2DFE2525FE2A2AFC2D2D
                FD2E2EFF1313D732328DE9E9E6FEFEFF7400FFFFFFB6B6D50202C81B1BFF1414
                FDA1A1FDCACAFF1A1AFD1010FF1515FF0D0DFFB7B7FDBBBBFD1C1CFC1B1BFF00
                00BB7F7FA5FFFFFD2200FEFEF14D4DC00000EF0000FE4A4AFCFFFFFEFFFFFEC4
                C4FE1212FE0000FEACACFEFFFFFDFFFFFF6A6AFD0000FE0101F3252596E8E8E6
                7400CDCDD81F1FCA0000FD0101FC0101FC7676FEFFFFFEFFFFFEBABAFDA8A8FC
                FFFFFEFFFFFF9292FC0606F90101F80000FF0101ACBABAC96C00A8A8DB0E0ED3
                0707FF0D0DFE0C0CFE0000FE7777FFF3F3FEFFFFFEFFFFFEF8F8FE8F8FF90000
                F30000F30000F10101FC0000BFA0A0BC3C00A1A1DA0B0BD52424FE2E2EFD2E2E
                FD2626FF1E1EFFD4D4FDFCFCFDFBFBFEE3E3FD1313F10000F00303F20000EF01
                01F90000C39B9BBB6100AFAFDE1111D43838FD5252FE4646FE4747FFC1C1FFFF
                FFFEFFFFFEFFFFFEFFFFFEC3C3FB1717F20000F00000EF0000F90000BEA7A7C3
                6900DFDFE02121CE3333F97575FE6B6BFECCCCFEFFFFFEFFFFFDB9B9FFA9A9FF
                FFFFFEFFFFFECBCBFC4343F61010F20303F70808AECFCFD95000FFFFF96262CE
                0C0CE78B8BFFA8A8FDFFFFFEFFFFFFCBCBFE8080FE7B7BFFBEBEFFFEFEFDFFFF
                FEB8B8FD8F8FFE2929E93838A7FAFAF56900FEFEFFD7D7E80303CD5353F9B7B7
                FFC6C6FDD7D7FE9F9FFDA8A8FEAAAAFE9D9DFED0D0FDCCCCFDB2B2FE8787FF00
                00B8B3B3CDFFFFFF6900FAFAFDFFFFFE9797DC0000D67171FBD8D8FFCDCDFDC6
                C6FDC3C3FEC2C2FEC5C5FEC7C7FDDADAFFA3A3FF0303CA6767B7FFFFFDFCFCFE
                6400FDFDFDFCFCFEFFFFFE8888DB0000D14545F1BCBCFFEAEAFFF5F5FFF5F5FF
                F0F0FFD0D0FF6E6EF40303C56161BDFAFAF6FCFCFEFDFDFD3C00FFFFFEFEFEFE
                FCFCFEFFFFFFB4B4E22F2FCC0000D52828E34848E84B4BE73636E10A0ACF2222
                BC9E9ED0FFFFFCFFFFFFFDFDFEFFFFFF3C00FEFEFFFFFFFFFEFEFEFCFCFEFFFF
                FFFAFAF7B9B9E08080D86767D96565D67878D4ACACDAF1F1F0FFFFFFFDFDFFFE
                FEFEFFFFFFFEFEFE6900}
              OnClick = SpeedButton4Click
              ExplicitLeft = 248
            end
          end
          object Panel9: TPanel
            Left = 2
            Top = 43
            Width = 217
            Height = 320
            Align = alClient
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object FotoCostas: TImage
              Left = 1
              Top = 1
              Width = 215
              Height = 318
              Align = alClient
              Center = True
              Proportional = True
              ExplicitTop = 46
              ExplicitWidth = 217
              ExplicitHeight = 314
            end
          end
        end
        object GroupBox7: TGroupBox
          Left = 3
          Top = 3
          Width = 220
          Height = 365
          Align = alLeft
          Caption = 'Frente'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Panel11: TPanel
            Left = 2
            Top = 15
            Width = 216
            Height = 28
            Align = alTop
            BevelWidth = 2
            TabOrder = 0
            DesignSize = (
              216
              28)
            object SpeedButton1: TSpeedButton
              Left = 6
              Top = 3
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = 'colocar foto'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000C7C7C7C7C7C6
                C7C8C8C8C7C5999192AD9B95D0C6C1D1D3D3C9CCCEC5C6C7C5C6C6C7C7C7C8C8
                C8C8C8C8C7C7C7C8C8C8C8C8C8C5C6C7CECAC79BAFBC28A4D93F95B86F86959E
                999AC0B8B4CDCAC8CBCDCDC7C9C9C6C6C7C7C7C7C7C7C7C7C7C7C7C6C7C6C8C9
                CCC4C045A8D60EBEFE1CCEFF1EBBEF30A4CF518CA67F8993ABA3A2C5BFBDCDCD
                CCCACCCCC7C8C8C7C7C7C5C6C7CDC9C8A6B3BD12B6F222C0F63DD4FB38D8FF36
                DDFF33D5FF35BEE543A1C362899C8C8F95B5ACABCAC5C3CACAC9C2C6C8D1C8C5
                74B2CE0AC3FE29C1F450DFFD50E2FF51DFFB51E0FC50E6FF4CE7FF47D9F946BD
                DC519BB66D8592AFAFB0C6C9CACAC2C04CB9E216CDFF30C5F662E0F459E2F55C
                EEFF62F1FF65ECFF65E9FC67EDFF66F3FF64F3FF4CCBE98097A2CFCDCAB3B9BF
                3BC1EA2AD3FD31CCFAA6D2CBC9B8A198C1B97BD0D171EBF37AF7FF76F2FD75F1
                FC78F3FD74EEFB799EABD4CBC69BB3C03DCFF63CDCFF40D1F7B6E1DCFFD8BCFE
                C3A4F0BB9B93C4C179F0FB89F5FC8BF9FF8CF8FE8DEBEF7AA1ACD3C7C28CB7C7
                49DCFE41D2E756D3FAC4DED7EAC7B6F7D2C1FFD7C0B1C9C27CE0F47DD9F182E1
                F588E1F29EE5E980A4AFD8C4C288BFE53BC5A73BCB6343C581AAE3D1E6D7C8F9
                EAE1FFE4D7B8D1CD88E1F588D9EF83D7F089D2E8A7DEE786A4B07C997539A464
                2DBE564AEC6E41D96061CCCF91E6FFA3DFEBC0DEE3C5EEF1C6FAFEBEF2FAB1ED
                F9A2D5E6AED8E48FA5B129AD3F19C02C27C94238D95D3FDA6440C7814ACBB554
                D2ED59DBFC6CDAF680D9F39AE0F6B4EAF9D0E9EFBAD7E493A7B343BF6025CC45
                1AC43329CB4638D95A46E5693CCD5A749A8D96B9CF64E0F069F6FF66EDFD52D0
                F083A5BBA2BBCBB3BBC1A7BCAA85B08B26A93418C1302CCB4843EB7032CB598E
                9F89CFC3C780C0D276DDED70E9F86AB9CFB6B3B5CBC9C8C8C8C7CACACAD9C6D5
                4CAE590AC22211B5264A9C5882AD8ABEC0BFC9CACAC3C0C0B7BDC5ABBECBBABE
                C3CBC9C8C7C7C8C7C7C7C3C6C3CBC8CA76B07F3FC75C38AA4AA4A7A1D2CAD1C8
                C8C8C6C7C7C8C9C9CBCAC8CEC9C7CBCAC9C7C7C8C8C8C8C8C8C8}
              OnClick = SpeedButton1Click
            end
            object SpeedButton3: TSpeedButton
              Left = 189
              Top = 3
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = 'apagar foto'
              Anchors = [akTop, akRight]
              Glyph.Data = {
                26040000424D2604000000000000360000002800000012000000120000000100
                180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFDFDFEFBFBFFFFFFFFFFFFFFF2F2E2D3D3CDCFCFC9E6E6D8FFFFFBFFFF
                FFFFFFFFFBFBFCFEFEFEFFFFFFFEFEFE6E00FEFEFEFFFFFEFDFDFEFFFFFFFFFF
                FEC6C6D56C6CB03E3EAA3838AB3838A83939A25A5A9FAAAABDF9F9F2FFFFFFFC
                FCFDFEFEFEFFFFFF6500FFFFFFFDFDFDFFFFFFF5F5F26F6FB71B1BB32A2AD741
                41ED4B4BF84B4BF84343EE2F2FD61717A84A4A94D6D6D7FFFFFFFCFCFDFEFEFE
                3C00FCFCFDFDFDFFF1F1F44949B21111CF4242FF4747FF4848FF4343FF4343FF
                4747FF4848FF4545FF1A1ACC27278BCFCFD3FFFFFFFDFDFD6900FAFAFDFEFEFC
                6262BB0808D83030FF2929FE2E2EFD2323FD2E2EFE2D2DFE2525FE2A2AFC2D2D
                FD2E2EFF1313D732328DE9E9E6FEFEFF7400FFFFFFB6B6D50202C81B1BFF1414
                FDA1A1FDCACAFF1A1AFD1010FF1515FF0D0DFFB7B7FDBBBBFD1C1CFC1B1BFF00
                00BB7F7FA5FFFFFD2200FEFEF14D4DC00000EF0000FE4A4AFCFFFFFEFFFFFEC4
                C4FE1212FE0000FEACACFEFFFFFDFFFFFF6A6AFD0000FE0101F3252596E8E8E6
                7400CDCDD81F1FCA0000FD0101FC0101FC7676FEFFFFFEFFFFFEBABAFDA8A8FC
                FFFFFEFFFFFF9292FC0606F90101F80000FF0101ACBABAC96C00A8A8DB0E0ED3
                0707FF0D0DFE0C0CFE0000FE7777FFF3F3FEFFFFFEFFFFFEF8F8FE8F8FF90000
                F30000F30000F10101FC0000BFA0A0BC3C00A1A1DA0B0BD52424FE2E2EFD2E2E
                FD2626FF1E1EFFD4D4FDFCFCFDFBFBFEE3E3FD1313F10000F00303F20000EF01
                01F90000C39B9BBB6100AFAFDE1111D43838FD5252FE4646FE4747FFC1C1FFFF
                FFFEFFFFFEFFFFFEFFFFFEC3C3FB1717F20000F00000EF0000F90000BEA7A7C3
                6900DFDFE02121CE3333F97575FE6B6BFECCCCFEFFFFFEFFFFFDB9B9FFA9A9FF
                FFFFFEFFFFFECBCBFC4343F61010F20303F70808AECFCFD95000FFFFF96262CE
                0C0CE78B8BFFA8A8FDFFFFFEFFFFFFCBCBFE8080FE7B7BFFBEBEFFFEFEFDFFFF
                FEB8B8FD8F8FFE2929E93838A7FAFAF56900FEFEFFD7D7E80303CD5353F9B7B7
                FFC6C6FDD7D7FE9F9FFDA8A8FEAAAAFE9D9DFED0D0FDCCCCFDB2B2FE8787FF00
                00B8B3B3CDFFFFFF6900FAFAFDFFFFFE9797DC0000D67171FBD8D8FFCDCDFDC6
                C6FDC3C3FEC2C2FEC5C5FEC7C7FDDADAFFA3A3FF0303CA6767B7FFFFFDFCFCFE
                6400FDFDFDFCFCFEFFFFFE8888DB0000D14545F1BCBCFFEAEAFFF5F5FFF5F5FF
                F0F0FFD0D0FF6E6EF40303C56161BDFAFAF6FCFCFEFDFDFD3C00FFFFFEFEFEFE
                FCFCFEFFFFFFB4B4E22F2FCC0000D52828E34848E84B4BE73636E10A0ACF2222
                BC9E9ED0FFFFFCFFFFFFFDFDFEFFFFFF3C00FEFEFFFFFFFFFEFEFEFCFCFEFFFF
                FFFAFAF7B9B9E08080D86767D96565D67878D4ACACDAF1F1F0FFFFFFFDFDFFFE
                FEFEFFFFFFFEFEFE6900}
              OnClick = SpeedButton3Click
              ExplicitLeft = 204
            end
          end
          object Panel8: TPanel
            Left = 2
            Top = 43
            Width = 216
            Height = 320
            Align = alClient
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object FotoFrente: TImage
              Left = 1
              Top = 1
              Width = 214
              Height = 318
              Align = alClient
              Center = True
              Proportional = True
              ExplicitLeft = -2
              ExplicitTop = 3
              ExplicitHeight = 312
            end
          end
        end
        object GroupBox13: TGroupBox
          Left = 664
          Top = 3
          Width = 317
          Height = 365
          Align = alClient
          Caption = 'Perfil Esquerdo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          object Panel13: TPanel
            Left = 2
            Top = 15
            Width = 313
            Height = 28
            Align = alTop
            BevelWidth = 2
            TabOrder = 0
            DesignSize = (
              313
              28)
            object SpeedButton8: TSpeedButton
              Left = 6
              Top = 3
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = 'colocar foto'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000C7C7C7C7C7C6
                C7C8C8C8C7C5999192AD9B95D0C6C1D1D3D3C9CCCEC5C6C7C5C6C6C7C7C7C8C8
                C8C8C8C8C7C7C7C8C8C8C8C8C8C5C6C7CECAC79BAFBC28A4D93F95B86F86959E
                999AC0B8B4CDCAC8CBCDCDC7C9C9C6C6C7C7C7C7C7C7C7C7C7C7C7C6C7C6C8C9
                CCC4C045A8D60EBEFE1CCEFF1EBBEF30A4CF518CA67F8993ABA3A2C5BFBDCDCD
                CCCACCCCC7C8C8C7C7C7C5C6C7CDC9C8A6B3BD12B6F222C0F63DD4FB38D8FF36
                DDFF33D5FF35BEE543A1C362899C8C8F95B5ACABCAC5C3CACAC9C2C6C8D1C8C5
                74B2CE0AC3FE29C1F450DFFD50E2FF51DFFB51E0FC50E6FF4CE7FF47D9F946BD
                DC519BB66D8592AFAFB0C6C9CACAC2C04CB9E216CDFF30C5F662E0F459E2F55C
                EEFF62F1FF65ECFF65E9FC67EDFF66F3FF64F3FF4CCBE98097A2CFCDCAB3B9BF
                3BC1EA2AD3FD31CCFAA6D2CBC9B8A198C1B97BD0D171EBF37AF7FF76F2FD75F1
                FC78F3FD74EEFB799EABD4CBC69BB3C03DCFF63CDCFF40D1F7B6E1DCFFD8BCFE
                C3A4F0BB9B93C4C179F0FB89F5FC8BF9FF8CF8FE8DEBEF7AA1ACD3C7C28CB7C7
                49DCFE41D2E756D3FAC4DED7EAC7B6F7D2C1FFD7C0B1C9C27CE0F47DD9F182E1
                F588E1F29EE5E980A4AFD8C4C288BFE53BC5A73BCB6343C581AAE3D1E6D7C8F9
                EAE1FFE4D7B8D1CD88E1F588D9EF83D7F089D2E8A7DEE786A4B07C997539A464
                2DBE564AEC6E41D96061CCCF91E6FFA3DFEBC0DEE3C5EEF1C6FAFEBEF2FAB1ED
                F9A2D5E6AED8E48FA5B129AD3F19C02C27C94238D95D3FDA6440C7814ACBB554
                D2ED59DBFC6CDAF680D9F39AE0F6B4EAF9D0E9EFBAD7E493A7B343BF6025CC45
                1AC43329CB4638D95A46E5693CCD5A749A8D96B9CF64E0F069F6FF66EDFD52D0
                F083A5BBA2BBCBB3BBC1A7BCAA85B08B26A93418C1302CCB4843EB7032CB598E
                9F89CFC3C780C0D276DDED70E9F86AB9CFB6B3B5CBC9C8C8C8C7CACACAD9C6D5
                4CAE590AC22211B5264A9C5882AD8ABEC0BFC9CACAC3C0C0B7BDC5ABBECBBABE
                C3CBC9C8C7C7C8C7C7C7C3C6C3CBC8CA76B07F3FC75C38AA4AA4A7A1D2CAD1C8
                C8C8C6C7C7C8C9C9CBCAC8CEC9C7CBCAC9C7C7C8C8C8C8C8C8C8}
              OnClick = SpeedButton8Click
            end
            object SpeedButton9: TSpeedButton
              Left = 172
              Top = 3
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = 'apagar foto'
              Anchors = [akTop, akRight]
              Glyph.Data = {
                26040000424D2604000000000000360000002800000012000000120000000100
                180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFDFDFEFBFBFFFFFFFFFFFFFFF2F2E2D3D3CDCFCFC9E6E6D8FFFFFBFFFF
                FFFFFFFFFBFBFCFEFEFEFFFFFFFEFEFE6E00FEFEFEFFFFFEFDFDFEFFFFFFFFFF
                FEC6C6D56C6CB03E3EAA3838AB3838A83939A25A5A9FAAAABDF9F9F2FFFFFFFC
                FCFDFEFEFEFFFFFF6500FFFFFFFDFDFDFFFFFFF5F5F26F6FB71B1BB32A2AD741
                41ED4B4BF84B4BF84343EE2F2FD61717A84A4A94D6D6D7FFFFFFFCFCFDFEFEFE
                3C00FCFCFDFDFDFFF1F1F44949B21111CF4242FF4747FF4848FF4343FF4343FF
                4747FF4848FF4545FF1A1ACC27278BCFCFD3FFFFFFFDFDFD6900FAFAFDFEFEFC
                6262BB0808D83030FF2929FE2E2EFD2323FD2E2EFE2D2DFE2525FE2A2AFC2D2D
                FD2E2EFF1313D732328DE9E9E6FEFEFF7400FFFFFFB6B6D50202C81B1BFF1414
                FDA1A1FDCACAFF1A1AFD1010FF1515FF0D0DFFB7B7FDBBBBFD1C1CFC1B1BFF00
                00BB7F7FA5FFFFFD2200FEFEF14D4DC00000EF0000FE4A4AFCFFFFFEFFFFFEC4
                C4FE1212FE0000FEACACFEFFFFFDFFFFFF6A6AFD0000FE0101F3252596E8E8E6
                7400CDCDD81F1FCA0000FD0101FC0101FC7676FEFFFFFEFFFFFEBABAFDA8A8FC
                FFFFFEFFFFFF9292FC0606F90101F80000FF0101ACBABAC96C00A8A8DB0E0ED3
                0707FF0D0DFE0C0CFE0000FE7777FFF3F3FEFFFFFEFFFFFEF8F8FE8F8FF90000
                F30000F30000F10101FC0000BFA0A0BC3C00A1A1DA0B0BD52424FE2E2EFD2E2E
                FD2626FF1E1EFFD4D4FDFCFCFDFBFBFEE3E3FD1313F10000F00303F20000EF01
                01F90000C39B9BBB6100AFAFDE1111D43838FD5252FE4646FE4747FFC1C1FFFF
                FFFEFFFFFEFFFFFEFFFFFEC3C3FB1717F20000F00000EF0000F90000BEA7A7C3
                6900DFDFE02121CE3333F97575FE6B6BFECCCCFEFFFFFEFFFFFDB9B9FFA9A9FF
                FFFFFEFFFFFECBCBFC4343F61010F20303F70808AECFCFD95000FFFFF96262CE
                0C0CE78B8BFFA8A8FDFFFFFEFFFFFFCBCBFE8080FE7B7BFFBEBEFFFEFEFDFFFF
                FEB8B8FD8F8FFE2929E93838A7FAFAF56900FEFEFFD7D7E80303CD5353F9B7B7
                FFC6C6FDD7D7FE9F9FFDA8A8FEAAAAFE9D9DFED0D0FDCCCCFDB2B2FE8787FF00
                00B8B3B3CDFFFFFF6900FAFAFDFFFFFE9797DC0000D67171FBD8D8FFCDCDFDC6
                C6FDC3C3FEC2C2FEC5C5FEC7C7FDDADAFFA3A3FF0303CA6767B7FFFFFDFCFCFE
                6400FDFDFDFCFCFEFFFFFE8888DB0000D14545F1BCBCFFEAEAFFF5F5FFF5F5FF
                F0F0FFD0D0FF6E6EF40303C56161BDFAFAF6FCFCFEFDFDFD3C00FFFFFEFEFEFE
                FCFCFEFFFFFFB4B4E22F2FCC0000D52828E34848E84B4BE73636E10A0ACF2222
                BC9E9ED0FFFFFCFFFFFFFDFDFEFFFFFF3C00FEFEFFFFFFFFFEFEFEFCFCFEFFFF
                FFFAFAF7B9B9E08080D86767D96565D67878D4ACACDAF1F1F0FFFFFFFDFDFFFE
                FEFEFFFFFFFEFEFE6900}
              OnClick = SpeedButton9Click
              ExplicitLeft = 248
            end
          end
          object Panel17: TPanel
            Left = 2
            Top = 43
            Width = 313
            Height = 320
            Align = alClient
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object FotoPerfilEsquerdo: TImage
              Left = 1
              Top = 1
              Width = 311
              Height = 318
              Align = alClient
              Center = True
              Proportional = True
              ExplicitLeft = 4
              ExplicitTop = 42
              ExplicitWidth = 216
              ExplicitHeight = 272
            end
          end
        end
        object GroupBox14: TGroupBox
          Left = 444
          Top = 3
          Width = 220
          Height = 365
          Align = alLeft
          Caption = 'Perfil Direito'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object Panel14: TPanel
            Left = 2
            Top = 15
            Width = 216
            Height = 28
            Align = alTop
            BevelWidth = 2
            TabOrder = 0
            DesignSize = (
              216
              28)
            object SpeedButton10: TSpeedButton
              Left = 6
              Top = 3
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = 'colocar foto'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000C7C7C7C7C7C6
                C7C8C8C8C7C5999192AD9B95D0C6C1D1D3D3C9CCCEC5C6C7C5C6C6C7C7C7C8C8
                C8C8C8C8C7C7C7C8C8C8C8C8C8C5C6C7CECAC79BAFBC28A4D93F95B86F86959E
                999AC0B8B4CDCAC8CBCDCDC7C9C9C6C6C7C7C7C7C7C7C7C7C7C7C7C6C7C6C8C9
                CCC4C045A8D60EBEFE1CCEFF1EBBEF30A4CF518CA67F8993ABA3A2C5BFBDCDCD
                CCCACCCCC7C8C8C7C7C7C5C6C7CDC9C8A6B3BD12B6F222C0F63DD4FB38D8FF36
                DDFF33D5FF35BEE543A1C362899C8C8F95B5ACABCAC5C3CACAC9C2C6C8D1C8C5
                74B2CE0AC3FE29C1F450DFFD50E2FF51DFFB51E0FC50E6FF4CE7FF47D9F946BD
                DC519BB66D8592AFAFB0C6C9CACAC2C04CB9E216CDFF30C5F662E0F459E2F55C
                EEFF62F1FF65ECFF65E9FC67EDFF66F3FF64F3FF4CCBE98097A2CFCDCAB3B9BF
                3BC1EA2AD3FD31CCFAA6D2CBC9B8A198C1B97BD0D171EBF37AF7FF76F2FD75F1
                FC78F3FD74EEFB799EABD4CBC69BB3C03DCFF63CDCFF40D1F7B6E1DCFFD8BCFE
                C3A4F0BB9B93C4C179F0FB89F5FC8BF9FF8CF8FE8DEBEF7AA1ACD3C7C28CB7C7
                49DCFE41D2E756D3FAC4DED7EAC7B6F7D2C1FFD7C0B1C9C27CE0F47DD9F182E1
                F588E1F29EE5E980A4AFD8C4C288BFE53BC5A73BCB6343C581AAE3D1E6D7C8F9
                EAE1FFE4D7B8D1CD88E1F588D9EF83D7F089D2E8A7DEE786A4B07C997539A464
                2DBE564AEC6E41D96061CCCF91E6FFA3DFEBC0DEE3C5EEF1C6FAFEBEF2FAB1ED
                F9A2D5E6AED8E48FA5B129AD3F19C02C27C94238D95D3FDA6440C7814ACBB554
                D2ED59DBFC6CDAF680D9F39AE0F6B4EAF9D0E9EFBAD7E493A7B343BF6025CC45
                1AC43329CB4638D95A46E5693CCD5A749A8D96B9CF64E0F069F6FF66EDFD52D0
                F083A5BBA2BBCBB3BBC1A7BCAA85B08B26A93418C1302CCB4843EB7032CB598E
                9F89CFC3C780C0D276DDED70E9F86AB9CFB6B3B5CBC9C8C8C8C7CACACAD9C6D5
                4CAE590AC22211B5264A9C5882AD8ABEC0BFC9CACAC3C0C0B7BDC5ABBECBBABE
                C3CBC9C8C7C7C8C7C7C7C3C6C3CBC8CA76B07F3FC75C38AA4AA4A7A1D2CAD1C8
                C8C8C6C7C7C8C9C9CBCAC8CEC9C7CBCAC9C7C7C8C8C8C8C8C8C8}
              OnClick = SpeedButton10Click
            end
            object SpeedButton11: TSpeedButton
              Left = 188
              Top = 3
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = 'apagar foto'
              Anchors = [akTop, akRight]
              Glyph.Data = {
                26040000424D2604000000000000360000002800000012000000120000000100
                180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFDFDFEFBFBFFFFFFFFFFFFFFF2F2E2D3D3CDCFCFC9E6E6D8FFFFFBFFFF
                FFFFFFFFFBFBFCFEFEFEFFFFFFFEFEFE6E00FEFEFEFFFFFEFDFDFEFFFFFFFFFF
                FEC6C6D56C6CB03E3EAA3838AB3838A83939A25A5A9FAAAABDF9F9F2FFFFFFFC
                FCFDFEFEFEFFFFFF6500FFFFFFFDFDFDFFFFFFF5F5F26F6FB71B1BB32A2AD741
                41ED4B4BF84B4BF84343EE2F2FD61717A84A4A94D6D6D7FFFFFFFCFCFDFEFEFE
                3C00FCFCFDFDFDFFF1F1F44949B21111CF4242FF4747FF4848FF4343FF4343FF
                4747FF4848FF4545FF1A1ACC27278BCFCFD3FFFFFFFDFDFD6900FAFAFDFEFEFC
                6262BB0808D83030FF2929FE2E2EFD2323FD2E2EFE2D2DFE2525FE2A2AFC2D2D
                FD2E2EFF1313D732328DE9E9E6FEFEFF7400FFFFFFB6B6D50202C81B1BFF1414
                FDA1A1FDCACAFF1A1AFD1010FF1515FF0D0DFFB7B7FDBBBBFD1C1CFC1B1BFF00
                00BB7F7FA5FFFFFD2200FEFEF14D4DC00000EF0000FE4A4AFCFFFFFEFFFFFEC4
                C4FE1212FE0000FEACACFEFFFFFDFFFFFF6A6AFD0000FE0101F3252596E8E8E6
                7400CDCDD81F1FCA0000FD0101FC0101FC7676FEFFFFFEFFFFFEBABAFDA8A8FC
                FFFFFEFFFFFF9292FC0606F90101F80000FF0101ACBABAC96C00A8A8DB0E0ED3
                0707FF0D0DFE0C0CFE0000FE7777FFF3F3FEFFFFFEFFFFFEF8F8FE8F8FF90000
                F30000F30000F10101FC0000BFA0A0BC3C00A1A1DA0B0BD52424FE2E2EFD2E2E
                FD2626FF1E1EFFD4D4FDFCFCFDFBFBFEE3E3FD1313F10000F00303F20000EF01
                01F90000C39B9BBB6100AFAFDE1111D43838FD5252FE4646FE4747FFC1C1FFFF
                FFFEFFFFFEFFFFFEFFFFFEC3C3FB1717F20000F00000EF0000F90000BEA7A7C3
                6900DFDFE02121CE3333F97575FE6B6BFECCCCFEFFFFFEFFFFFDB9B9FFA9A9FF
                FFFFFEFFFFFECBCBFC4343F61010F20303F70808AECFCFD95000FFFFF96262CE
                0C0CE78B8BFFA8A8FDFFFFFEFFFFFFCBCBFE8080FE7B7BFFBEBEFFFEFEFDFFFF
                FEB8B8FD8F8FFE2929E93838A7FAFAF56900FEFEFFD7D7E80303CD5353F9B7B7
                FFC6C6FDD7D7FE9F9FFDA8A8FEAAAAFE9D9DFED0D0FDCCCCFDB2B2FE8787FF00
                00B8B3B3CDFFFFFF6900FAFAFDFFFFFE9797DC0000D67171FBD8D8FFCDCDFDC6
                C6FDC3C3FEC2C2FEC5C5FEC7C7FDDADAFFA3A3FF0303CA6767B7FFFFFDFCFCFE
                6400FDFDFDFCFCFEFFFFFE8888DB0000D14545F1BCBCFFEAEAFFF5F5FFF5F5FF
                F0F0FFD0D0FF6E6EF40303C56161BDFAFAF6FCFCFEFDFDFD3C00FFFFFEFEFEFE
                FCFCFEFFFFFFB4B4E22F2FCC0000D52828E34848E84B4BE73636E10A0ACF2222
                BC9E9ED0FFFFFCFFFFFFFDFDFEFFFFFF3C00FEFEFFFFFFFFFEFEFEFCFCFEFFFF
                FFFAFAF7B9B9E08080D86767D96565D67878D4ACACDAF1F1F0FFFFFFFDFDFFFE
                FEFEFFFFFFFEFEFE6900}
              OnClick = SpeedButton11Click
              ExplicitLeft = 248
            end
          end
          object Panel16: TPanel
            Left = 2
            Top = 43
            Width = 216
            Height = 320
            Align = alClient
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object FotoPerfilDireito: TImage
              Left = 1
              Top = 1
              Width = 214
              Height = 318
              Align = alClient
              Center = True
              Proportional = True
              ExplicitLeft = 0
              ExplicitTop = 3
              ExplicitHeight = 312
            end
          end
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 984
        Height = 52
        Align = alTop
        BevelOuter = bvLowered
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label12: TLabel
          Left = 80
          Top = 7
          Width = 37
          Height = 13
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 7
          Top = 7
          Width = 67
          Height = 13
          Caption = 'Refer'#234'ncia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit8: TDBEdit
          Left = 80
          Top = 22
          Width = 785
          Height = 21
          BevelKind = bkFlat
          Color = clBtnFace
          DataField = 'DESCRICAO'
          DataSource = BaseDados_PCP.ds_referencias
          TabOrder = 0
        end
        object DBEdit17: TDBEdit
          Left = 7
          Top = 22
          Width = 66
          Height = 21
          BevelKind = bkFlat
          Color = clBtnFace
          DataField = 'REFERENCIA'
          DataSource = BaseDados_PCP.ds_referencias
          TabOrder = 1
        end
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 992
    Height = 36
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 992
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 992
      Height = 36
      ExplicitWidth = 992
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 261
        Caption = 'Ficha T'#233'cnica de Produto Acabado'
        ExplicitWidth = 261
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 490
    Width = 992
    Height = 58
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 490
    ExplicitWidth = 992
    inherited W7Panel1: TPanel
      Width = 992
      ExplicitWidth = 992
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
  object dbProcurarTecidos: TIDBEditDialog
    Left = 742
    Top = 8
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
      'TIPO_PRODUTO IN ('#39'TCD'#39','#39'TECIDO'#39')'
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
  object dbProcurarFichaTecnica: TIDBEditDialog
    Left = 24
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
  object dbProcurarMateriaPrima: TIDBEditDialog
    Left = 742
    Top = 42
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
    TabOrder = 5
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
      'TIPO_PRODUTO IN ('#39'MAT'#39')'
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
        SearchCase = scUpper
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
        SearchCase = scUpper
      end
      item
        FieldName = 'GRIFE_NOME'
        WhereSyntax = 'GRIFE_NOME'
        DisplayLabel = 'GRIFE:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'GRADE_NOME'
        WhereSyntax = 'GRADE_NOME'
        DisplayLabel = 'GRADE:'
        DisplayWidth = 20
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
  object dbEditPesquisarCores: TIDBEditDialog
    Left = 624
    Top = 42
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 6
    Text = ''
    Visible = False
    LabelCaption = 'Cole'#231#227'o:'
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
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT NOME FROM CAD_COLECAO'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_CORES'
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
        SearchCase = scMixed
      end
      item
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'NOME:'
        DisplayWidth = 60
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'COR'
        WhereSyntax = 'COR'
        DisplayLabel = 'COR:'
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
  object dbEditPesquisarProcessos: TIDBEditDialog
    Left = 638
    Top = 8
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 7
    Text = ''
    Visible = False
    LabelCaption = 'Cole'#231#227'o:'
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
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT NOME FROM CAD_COLECAO'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_PROCESSOS'
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
        SearchCase = scMixed
      end
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'DESCRI'#199#195'O:'
        DisplayWidth = 60
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'TEMPO'
        WhereSyntax = 'TEMPO'
        DisplayLabel = 'TEMPO:'
        DisplayFormat = '0#:0#'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CUSTO'
        WhereSyntax = 'CUSTO'
        DisplayLabel = 'CUSTO:'
        DisplayFormat = '###,##0.000'
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
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.j' +
      'peg;*.bmp;*.ico;*.emf;*.wmf|GIF Image (*.gif)|*.gif|JPEG Image F' +
      'ile (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp' +
      ')|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Met' +
      'afiles (*.wmf)|*.wmf'
    Left = 80
    Top = 336
  end
  object db_CountEstoque: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT COUNT(*) AS TOTAL FROM CAD_PRODUTOS'
      'WHERE'
      'TIPO_PRODUTO='#39'ACA'#39
      '')
    Left = 184
    Top = 336
  end
  object dts_MateriasPrimas: TfrxDBDataset
    UserName = 'dts_MateriasPrimas'
    CloseDataSource = False
    DataSource = BaseDados_PCP.ds_MateriaPrima
    BCDToCurrency = False
    Left = 216
    Top = 96
  end
  object dts_Tecidos: TfrxDBDataset
    UserName = 'dts_Tecidos'
    CloseDataSource = False
    DataSource = BaseDados_PCP.ds_MateriaPrimaTecidos
    BCDToCurrency = False
    Left = 120
    Top = 96
  end
  object dts_cores: TfrxDBDataset
    UserName = 'dts_cores'
    CloseDataSource = False
    DataSource = BaseDados_PCP.ds_Cores_Modelos
    BCDToCurrency = False
    Left = 304
    Top = 96
  end
  object dst_processos: TfrxDBDataset
    UserName = 'dst_processos'
    CloseDataSource = False
    DataSource = BaseDados_PCP.ds_pcp_processos
    BCDToCurrency = False
    Left = 256
    Top = 192
  end
  object dts_maquinas: TfrxDBDataset
    UserName = 'dts_maquinas'
    CloseDataSource = False
    DataSource = BaseDados_PCP.ds_pcp_Maquinas
    BCDToCurrency = False
    Left = 592
    Top = 96
  end
  object dts_medidas: TfrxDBDataset
    UserName = 'dts_medidas'
    CloseDataSource = False
    DataSource = BaseDados_PCP.ds_pcp_Medidas
    BCDToCurrency = False
    Left = 640
    Top = 96
  end
  object dts_Fotos: TfrxDBDataset
    UserName = 'dts_Fotos'
    CloseDataSource = False
    DataSource = BaseDados_PCP.ds_pcp_Medidas
    BCDToCurrency = False
    Left = 176
    Top = 216
  end
  object dts_Referencia: TfrxDBDataset
    UserName = 'dts_Referencia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'EMPRESA=EMPRESA'
      'REFERENCIA=REFERENCIA'
      'GRUPO=GRUPO'
      'SUBGRUPO=SUBGRUPO'
      'TIPO_PRODUTO=TIPO_PRODUTO'
      'DATA=DATA'
      'HORAS=HORAS'
      'DT_ULTIMA_COMPRA=DT_ULTIMA_COMPRA'
      'DT_ULTIMA_VENDA=DT_ULTIMA_VENDA'
      'DT_VALIDADE=DT_VALIDADE'
      'GRIFE=GRIFE'
      'COLECAO=COLECAO'
      'FAIXA_ETARIA=FAIXA_ETARIA'
      'ESTILISTA=ESTILISTA'
      'ETIQUETA=ETIQUETA'
      'GRADE=GRADE'
      'EMBALAGEM=EMBALAGEM'
      'COMPOSICAO=COMPOSICAO'
      'GENERO=GENERO'
      'NCM=NCM'
      'DESCRICAO=DESCRICAO'
      'CLASSIFICAO_FISCAL=CLASSIFICAO_FISCAL'
      'SITUACAO_TRIBUTARIA=SITUACAO_TRIBUTARIA'
      'GERAR_CODBARRA=GERAR_CODBARRA'
      'COMPOSICAO_DESCRICAO=COMPOSICAO_DESCRICAO'
      'CODIGO_BARRA=CODIGO_BARRA'
      'CODIGO_FABRICANTE=CODIGO_FABRICANTE'
      'UNIDADE=UNIDADE'
      'PESO=PESO'
      'PESO_LIQUIDO=PESO_LIQUIDO'
      'PESO_M2=PESO_M2'
      'QTDE_TECIDOS=QTDE_TECIDOS'
      'QTDE_OPCOES=QTDE_OPCOES'
      'PRAZOENTREGA=PRAZOENTREGA'
      'LOTE=LOTE'
      'NUM_SERIE=NUM_SERIE'
      'COMISSAO_VAREJO=COMISSAO_VAREJO'
      'COMISSAO_ATACADO=COMISSAO_ATACADO'
      'COMISSAO_REPRESENTANTE=COMISSAO_REPRESENTANTE'
      'REGISTROINPI=REGISTROINPI'
      'VOLUME=VOLUME'
      'PROMOCAO=PROMOCAO'
      'MARCA=MARCA'
      'LOCALIZACAO=LOCALIZACAO'
      'ATIVO=ATIVO'
      'INSTRUCOES=INSTRUCOES'
      'TOTAL_RESERVA=TOTAL_RESERVA'
      'TOTAL_ORDEMPRODUCAO=TOTAL_ORDEMPRODUCAO'
      'TOTAL_ORDEMCORTE=TOTAL_ORDEMCORTE'
      'TOTAL_QTDEMATPRIMA=TOTAL_QTDEMATPRIMA'
      'TOTAL_VLRMATPRIMA=TOTAL_VLRMATPRIMA'
      'TOTAL_PROCESSO_TEMPO=TOTAL_PROCESSO_TEMPO'
      'TOTAL_PROCESSO_CUSTOS=TOTAL_PROCESSO_CUSTOS'
      'TOTAL_CUSTOS_PERCENTUAL=TOTAL_CUSTOS_PERCENTUAL'
      'TOTAL_CUSTOS_VALOR=TOTAL_CUSTOS_VALOR'
      'SALDO_IMPLANTACAO=SALDO_IMPLANTACAO'
      'ESTOQUEMINIMO=ESTOQUEMINIMO'
      'ESTOQUEMAXIMO=ESTOQUEMAXIMO'
      'ESTOQUESALDO=ESTOQUESALDO'
      'MG_LUCRO=MG_LUCRO'
      'IPI=IPI'
      'ICMS=ICMS'
      'PIS=PIS'
      'COFINS=COFINS'
      'PUBLICIDADE=PUBLICIDADE'
      'INADIMPLENCIA=INADIMPLENCIA'
      'ADMINISTRATIVO=ADMINISTRATIVO'
      'IMPORTACAO=IMPORTACAO'
      'PERC_FRETE=PERC_FRETE'
      'FINANCEIRO=FINANCEIRO'
      'IMPOSTOS_OUTROS=IMPOSTOS_OUTROS'
      'MARKUP=MARKUP'
      'IR=IR'
      'PRC_CUSTOBRUTO=PRC_CUSTOBRUTO'
      'PRC_CUSTO=PRC_CUSTO'
      'PRC_VENDA=PRC_VENDA'
      'LUCRO_LIQUIDO=LUCRO_LIQUIDO'
      'DETALHES=DETALHES'
      'PRODUCAO_TEMPO=PRODUCAO_TEMPO'
      'PRODUCAO_CUSTOS=PRODUCAO_CUSTOS'
      'COR=COR'
      'TAMANHO=TAMANHO'
      'FORNECEDOR=FORNECEDOR'
      'OZ=OZ')
    DataSource = BaseDados_PCP.ds_referencias
    BCDToCurrency = False
    Left = 64
    Top = 216
  end
  object frxR_FichaTecnica: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.ConnectionName = 'FICHA T'#201'CNICA'
    ReportOptions.CreateDate = 40132.929550960600000000
    ReportOptions.Name = 'FICHA T'#201'CNICA'
    ReportOptions.LastChange = 40998.028084131950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure SubdetailData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<dts_MateriaPrimaGrade."TAMANHO">) >'#39#39' then'
      '     BandamateriaPrimaGrade.Visible :=True'
      '  else               '
      '     BandamateriaPrimaGrade.Visible :=false;'
      '                               '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '      if (<dts_TecidoGrade."REFERENCIA_COR_ID">) >0 then'
      '      bandamateriaPrimaTecidosGrade.Visible :=True'
      '    else               '
      '      bandamateriaPrimaTecidosGrade.Visible :=false;'
      '  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 369
    Top = 400
    Datasets = <
      item
        DataSet = dst_processos
        DataSetName = 'dst_processos'
      end
      item
        DataSet = dts_cores
        DataSetName = 'dts_cores'
      end
      item
        DataSet = dts_Fotos
        DataSetName = 'dts_Fotos'
      end
      item
        DataSet = dts_maquinas
        DataSetName = 'dts_maquinas'
      end
      item
        DataSet = dts_MateriaPrimaGrade
        DataSetName = 'dts_MateriaPrimaGrade'
      end
      item
        DataSet = dts_MateriasPrimas
        DataSetName = 'dts_MateriasPrimas'
      end
      item
        DataSet = dts_medidas
        DataSetName = 'dts_medidas'
      end
      item
        DataSet = fxdbPathFotos
        DataSetName = 'dts_PathFotos'
      end
      item
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
      end
      item
        DataSet = fxdbReferenciaGrade
        DataSetName = 'dts_ReferenciaGrade'
      end
      item
        DataSet = fxdbServicosExternos
        DataSetName = 'dts_ServicosExternos'
      end
      item
        DataSet = dts_TecidoGrade
        DataSetName = 'dts_TecidoGrade'
      end
      item
        DataSet = dts_Tecidos
        DataSetName = 'dts_Tecidos'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end
      item
        DataSet = tds_ReferenciaFotos
        DataSetName = 'ReferenciaFotos'
      end
      item
        DataSet = tds_ViewReferencia
        DataSetName = 'tds_ViewReferencia'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 277.000000000000000000
      DataSet = tds_ViewReferencia
      DataSetName = 'tds_ViewReferencia'
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      LargeDesignHeight = True
      TitleBeforeHeader = False
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 179.748046140000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Child = frxR_FichaTecnica.Child1
        KeepChild = True
        object Shape2: TfrxShapeView
          Left = 0.779530000000000000
          Top = 58.708720000000000000
          Width = 714.330708660000000000
          Height = 119.055096140000000000
        end
        object Memo11: TfrxMemoView
          Left = 3.779527559055120000
          Top = 59.716584250000000000
          Width = 84.322820000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FICHA T'#201'CNICA:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 3.779527560000000000
          Top = 70.472482440000000000
          Width = 126.252010000000000000
          Height = 18.897637800000000000
          DataField = 'CODIGO'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dts_Referencia."CODIGO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 184.188898270000000000
          Top = 133.692913390000000000
          Width = 232.740260000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'COLECAO_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."COLECAO_NOME"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 445.228466060000000000
          Top = 120.944881890000000000
          Width = 117.456710000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ETIQUETA INTERNA:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 445.228466060000000000
          Top = 133.795275590000000000
          Width = 148.811070000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ETIQUETA_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."ETIQUETA_NOME"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 3.779527560000000000
          Top = 133.692913390000000000
          Width = 162.267780000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'GRIFE_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."GRIFE_NOME"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 184.188898270000000000
          Top = 120.842519690000000000
          Width = 56.559060000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COLE'#199#195'O:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 3.779527559055120000
          Top = 120.842519690000000000
          Width = 93.472480000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GRIFE:')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 1.889763780000000000
          Top = 146.748046140000000000
          Width = 713.574803150000000000
          Color = clBlack
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 301.362400000000000000
          Top = 58.692962200000000000
          Height = 32.125986690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object BarCode2: TfrxBarCodeView
          Left = 377.953000000000000000
          Top = 65.472492200000000000
          Width = 38.000000000000000000
          Height = 18.897650000000000000
          BarType = bcCode39
          DataField = 'CODIGO'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          Rotation = 0
          ShowText = False
          Text = '0'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo2: TfrxMemoView
          Left = 3.779527560000000000
          Top = 7.559060000000000000
          Width = 501.330860000000000000
          Height = 49.133858270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'FICHA T'#201'CNICA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          Left = 508.055660000000000000
          Top = 7.559060000000000000
          Width = 207.866110000000000000
          Height = 49.133858270000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
        end
        object Memo3: TfrxMemoView
          Left = 520.149603860000000000
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
        object Memo4: TfrxMemoView
          Left = 521.149603860000000000
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
        object Memo5: TfrxMemoView
          Left = 521.149603860000000000
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
        object Memo6: TfrxMemoView
          Left = 586.299215040000000000
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
        object Memo7: TfrxMemoView
          Left = 586.299215040000000000
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
        object Memo8: TfrxMemoView
          Left = 586.299215040000000000
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
        object Line1: TfrxLineView
          Left = 180.063082440000000000
          Top = 118.708661420000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 1096.063700000000000000
          Top = 92.598408110000000000
          Height = 29.858267720000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 434.645950000000000000
          Top = 118.708720000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          Left = 1.889763780000000000
          Top = 118.504020000000000000
          Width = 713.574803150000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 3.779527559055120000
          Top = 90.464566930000000000
          Width = 114.559060000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA/MODELO:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779527560000000000
          Top = 98.708661420000000000
          Width = 152.708720000000000000
          Height = 18.897640240000000000
          AutoWidth = True
          DataField = 'REFERENCIA'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dts_Referencia."REFERENCIA"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 164.504022440000000000
          Top = 90.708720000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo10: TfrxMemoView
          Left = 169.385826770000000000
          Top = 90.464566930000000000
          Width = 61.645640000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 169.385826770000000000
          Top = 98.708661420000000000
          Width = 273.653680000000000000
          Height = 18.897640240000000000
          AutoWidth = True
          DataField = 'DESCRICAO'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dts_Referencia."DESCRICAO"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 275.023810000000000000
          Top = 147.401670000000000000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo28: TfrxMemoView
          Left = 3.779527560000000000
          Top = 162.519685040000000000
          Width = 264.315090000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FASE_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."FASE_NOME"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 3.779527560000000000
          Top = 150.047244094488200000
          Width = 119.811023620000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FASES DE PRODU'#199#195'O:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 278.803340000000000000
          Top = 162.519685040000000000
          Width = 158.488250000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'GRADE_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."GRADE_NOME"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 278.803340000000000000
          Top = 150.047244094488200000
          Width = 119.811023620000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GRADE DE TAMANHOS:')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 1.889763779527560000
          Top = 89.708720000000000000
          Width = 713.574803149606000000
          Color = clBlack
          Diagonal = True
        end
        object Line47: TfrxLineView
          Left = 449.764070000000000000
          Top = 147.401670000000000000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo57: TfrxMemoView
          Left = 453.543600000000000000
          Top = 162.519685040000000000
          Width = 158.488250000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'GENERO_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."GENERO_NOME"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 453.543600000000000000
          Top = 150.047244094488200000
          Width = 119.929190000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'G'#202'NERO:')
          ParentFont = False
        end
      end
      object bandamateriaPrimaTecidos: TfrxHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Top = 1.889763780000010000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TECIDO:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 595.275590550000000000
          Top = 1.889763780000010000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UND:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 651.968503940000000000
          Top = 1.889763780000010000
          Width = 60.472440944881900000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'METRAGEM:')
          ParentFont = False
        end
        object Line23: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line34: TfrxLineView
          Left = 589.606680000000000000
          Height = 15.118110236220500000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          Left = 642.520100000000000000
          Height = 15.118110236220500000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line48: TfrxLineView
          Align = baWidth
          Top = 15.118120000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 13.228346460000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        AllowSplit = True
        Child = frxR_FichaTecnica.bandamateriaPrimaTecidosGrade
        DataSet = dts_Tecidos
        DataSetName = 'dts_Tecidos'
        RowCount = 0
        object Memo44: TfrxMemoView
          Width = 238.110390000000000000
          Height = 13.228346460000000000
          DataField = 'DESCRICAO'
          DataSet = dts_Tecidos
          DataSetName = 'dts_Tecidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_Tecidos."DESCRICAO"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 595.275590551181000000
          Width = 30.236240000000000000
          Height = 13.228346460000000000
          DataField = 'UND'
          DataSet = dts_Tecidos
          DataSetName = 'dts_Tecidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_Tecidos."UND"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 653.968503940000000000
          Width = 52.913380940000000000
          Height = 13.228346460000000000
          DataField = 'QTDE_METROS'
          DataSet = dts_Tecidos
          DataSetName = 'dts_Tecidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_Tecidos."QTDE_METROS"]')
          ParentFont = False
        end
        object Line20: TfrxLineView
          Left = 589.606680000000000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 642.520100000000000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line44: TfrxLineView
          Align = baWidth
          Top = 13.000000000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 600.945270000000000000
        Width = 718.110700000000000000
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
        RowCount = 0
      end
      object bandamateriaPrima: TfrxDetailData
        FillType = ftBrush
        Height = 37.795282910000000000
        Top = 631.181510000000000000
        Width = 718.110700000000000000
        DataSet = dts_MateriasPrimas
        DataSetName = 'dts_MateriasPrimas'
        RowCount = 0
        object Memo17: TfrxMemoView
          Left = 3.779527559055118000
          Top = 15.118110240000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MATERIA PRIMA:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 595.275590550000000000
          Top = 15.118110240000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UND:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 651.968503940000000000
          Top = 15.118110240000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE:')
          ParentFont = False
        end
        object Line36: TfrxLineView
          Left = 642.520100000000000000
          Top = 10.960629921259900000
          Height = 23.811023620000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          Left = 589.606680000000000000
          Top = 10.960629921259900000
          Height = 23.811023620000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          Align = baWidth
          Top = 11.338590000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line49: TfrxLineView
          Align = baWidth
          Top = 34.677180000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object SubdetailData2: TfrxSubdetailData
        FillType = ftBrush
        Height = 13.984251970000000000
        Top = 691.653990000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'SubdetailData2OnBeforePrint'
        Child = frxR_FichaTecnica.BandamateriaPrimaGrade
        DataSet = dts_MateriasPrimas
        DataSetName = 'dts_MateriasPrimas'
        RowCount = 0
        object Memo37: TfrxMemoView
          Left = 3.779527559055118000
          Width = 238.110390000000000000
          Height = 13.228346460000000000
          DataField = 'DESCRICAO'
          DataSet = dts_MateriasPrimas
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_MateriasPrimas."DESCRICAO"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 595.275590550000000000
          Width = 30.236240000000000000
          Height = 13.228346460000000000
          DataField = 'UND'
          DataSet = dts_MateriasPrimas
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_MateriasPrimas."UND"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 653.968503940000000000
          Width = 52.913380940000000000
          Height = 13.228346460000000000
          DataField = 'QTDE'
          DataSet = dts_MateriasPrimas
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_MateriasPrimas."QTDE"]')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 589.606680000000000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 642.520100000000000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line43: TfrxLineView
          Align = baWidth
          Top = 13.000000000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        FillType = ftBrush
        Height = 37.795260940000000000
        Top = 1296.378790000000000000
        Width = 718.110700000000000000
        object Line18: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Top = 0.755905509999999900
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
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 476.220780000000000000
          Top = 0.755905509999999900
          Width = 241.889920000000000000
          Height = 12.094488190000000000
          DataField = 'EMP_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_SITE"]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 884.410020000000000000
        Width = 718.110700000000000000
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
        RowCount = 0
        object Memo62: TfrxMemoView
          Top = 15.118110240000000000
          Width = 147.401670000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROCESSOS DE PRODU'#199#195'O:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 166.299212600000000000
          Top = 15.118110240000000000
          Width = 71.811023622047200000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TEMPO:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 268.346630000000000000
          Top = 15.118110236220500000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'INSTRU'#199#195'O:')
          ParentFont = False
        end
        object Line26: TfrxLineView
          Align = baWidth
          Top = 11.338590000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line41: TfrxLineView
          Left = 264.567100000000000000
          Top = 11.338590000000000000
          Height = 16.629921260000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line42: TfrxLineView
          Left = 158.740260000000000000
          Top = 11.338590000000000000
          Height = 16.629921260000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line50: TfrxLineView
          Align = baWidth
          Top = 28.456710000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 32.779530000000000000
        Top = 937.323440000000000000
        Width = 718.110700000000000000
        DataSet = dst_processos
        DataSetName = 'dst_processos'
        RowCount = 0
        Stretched = True
        object Line11: TfrxLineView
          Left = 264.567100000000000000
          Height = 32.881892200000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 158.740260000000000000
          Height = 32.881892200000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo24: TfrxMemoView
          Left = 165.842610000000000000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          DataField = 'TEMPO'
          DataSet = dst_processos
          DataSetName = 'dst_processos'
          DisplayFormat.FormatStr = '0#:0#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dst_processos."TEMPO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Width = 151.181200000000000000
          Height = 13.228346460000000000
          DataField = 'NOME'
          DataSet = dst_processos
          DataSetName = 'dst_processos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dst_processos."NOME"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 268.346630000000000000
          Width = 441.914276920000000000
          Height = 18.025450770000000000
          StretchMode = smMaxHeight
          DataField = 'INSTRUCOES'
          DataSet = dst_processos
          DataSetName = 'dst_processos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[dst_processos."INSTRUCOES"]')
          ParentFont = False
          WordBreak = True
        end
        object Line45: TfrxLineView
          Align = baWidth
          Top = 32.000000000000000000
          Width = 718.110700000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 994.016390000000000000
        Width = 718.110700000000000000
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
        RowCount = 0
        object Memo23: TfrxMemoView
          Top = 15.118110240000000000
          Width = 147.401670000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'M'#193'QUINA:')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 230.551181102362000000
          Top = 15.118110240000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'AGULHAS:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 349.606299212598000000
          Top = 15.118110240000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FIOS/LINHAS:')
          ParentFont = False
        end
        object Line27: TfrxLineView
          Align = baWidth
          Top = 11.338590000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 222.992270000000000000
          Top = 11.338590000000000000
          Height = 139.842600240000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 343.937230000000000000
          Top = 11.338590000000000000
          Height = 139.842600240000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line51: TfrxLineView
          Align = baWidth
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object DetailData3: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 1043.150280000000000000
        Width = 718.110700000000000000
        DataSet = dts_maquinas
        DataSetName = 'dts_maquinas'
        RowCount = 0
        object Memo54: TfrxMemoView
          Left = 230.551181102362000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          DataField = 'AGULHAS'
          DataSet = dts_maquinas
          DataSetName = 'dts_maquinas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_maquinas."AGULHAS"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Width = 143.622140000000000000
          Height = 13.228346460000000000
          DataField = 'NOME'
          DataSet = dts_maquinas
          DataSetName = 'dts_maquinas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_maquinas."NOME"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 349.606299212598000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          DataField = 'FIOS'
          DataSet = dts_maquinas
          DataSetName = 'dts_maquinas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_maquinas."FIOS"]')
          ParentFont = False
        end
        object Line46: TfrxLineView
          Align = baWidth
          Top = 15.000000000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Height = 30.236222910000000000
        Top = 1080.945580000000000000
        Width = 718.110700000000000000
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
        RowCount = 0
        object Memo52: TfrxMemoView
          Top = 15.118110240000000000
          Width = 147.401670000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ID MEDIAS:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 230.551181102362000000
          Top = 15.118110240000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 349.606299212598000000
          Top = 15.118110240000000000
          Width = 147.401670000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MEDIAS CM:')
          ParentFont = False
        end
        object Line28: TfrxLineView
          Align = baWidth
          Top = 1.118119999999980000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line52: TfrxLineView
          Align = baWidth
          Top = 27.456710000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object DetailData4: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 1133.859000000000000000
        Width = 718.110700000000000000
        DataSet = dts_medidas
        DataSetName = 'dts_medidas'
        RowCount = 0
        object Memo58: TfrxMemoView
          Left = 230.551181102362000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          DataField = 'IDNOME'
          DataSet = dts_medidas
          DataSetName = 'dts_medidas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_medidas."IDNOME"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Width = 143.622140000000000000
          Height = 13.228346460000000000
          DataField = 'NOME'
          DataSet = dts_medidas
          DataSetName = 'dts_medidas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_medidas."NOME"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 349.606299212598000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          DataField = 'MEDIDA'
          DataSet = dts_medidas
          DataSetName = 'dts_medidas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_medidas."MEDIDA"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Align = baWidth
          Top = 14.118120000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 1171.654300000000000000
        Width = 718.110700000000000000
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
        RowCount = 0
        object Memo70: TfrxMemoView
          Top = 13.228346460000000000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SERVI'#199'OS EXTERNOS:')
          ParentFont = False
        end
        object Linha10: TfrxLineView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Linha11: TfrxLineView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 385.512060000000000000
          Top = 11.338582680000000000
          Height = 14.740157480315000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line53: TfrxLineView
          Align = baLeft
          Top = 26.456710000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object DetailData5: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 1220.788190000000000000
        Width = 718.110700000000000000
        DataSet = fxdbServicosExternos
        DataSetName = 'dts_ServicosExternos'
        RowCount = 0
        object Memo72: TfrxMemoView
          Left = 3.779447010000000000
          Width = 366.614361180000000000
          Height = 13.228346460000000000
          DataField = 'NOME'
          DataSet = fxdbServicosExternos
          DataSetName = 'dts_ServicosExternos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_ServicosExternos."NOME"]')
          ParentFont = False
        end
        object Linha12: TfrxLineView
          Align = baLeft
          Top = 15.000000000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line56: TfrxLineView
          Left = 385.512060000000000000
          Height = 14.740157480315000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object DBCross2: TfrxDBCrossView
          Width = 148.000000000000000000
          Height = 94.000000000000000000
          DownThenAcross = False
          ShowColumnTotal = False
          ShowRowTotal = False
          CellFields.Strings = (
            'TAMANHO')
          ColumnFields.Strings = (
            'TAMANHO')
          DataSet = fxdbReferenciaGrade
          DataSetName = 'dts_ReferenciaGrade'
          RowFields.Strings = (
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2236352220
            546F703D223237382C3939323237222057696474683D22363322204865696768
            743D22313822205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            302220466F6E742E436F6C6F723D2231363737373231352220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C546672784D656D6F56696577
            204C6566743D2234352220546F703D223534222057696474683D223130302220
            4865696768743D22323022205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C73652220446973706C6179466F
            726D61742E4B696E643D22666B4E756D657269632220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31322220466F6E742E4E616D653D22417269616C204E6172726F7722
            20466F6E742E5374796C653D223022204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C
            6566743D2239352220546F703D223336222057696474683D2235302220486569
            6768743D22323222205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686152
            69676874222056416C69676E3D22766143656E7465722220546578743D223022
            2F3E3C546672784D656D6F56696577204C6566743D2239352220546F703D2235
            38222057696474683D22353022204865696768743D2232322220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D2268615269676874222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C2F63656C6C6D656D6F733E3C
            63656C6C6865616465726D656D6F733E3C546672784D656D6F56696577204C65
            66743D223230312220546F703D223430222057696474683D2239342220486569
            6768743D22323222205265737472696374696F6E733D22382220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222056416C69676E3D2276614365
            6E7465722220546578743D2254414D414E484F222F3E3C546672784D656D6F56
            696577204C6566743D223230312220546F703D223632222057696474683D2239
            3422204865696768743D22323222205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D2254414D414E484F222F3E3C2F6365
            6C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C54667278
            4D656D6F56696577204C6566743D2236352220546F703D223236302C39393232
            37222057696474683D22363322204865696768743D2231382220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D
            22417269616C204E6172726F772220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22222F3E3C2F
            636F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C54
            6672784D656D6F56696577204C6566743D2239352220546F703D223138222057
            696474683D22353022204865696768743D22313822205265737472696374696F
            6E733D2238222056697369626C653D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3922
            20466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E53
            74796C653D223122204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222048416C69676E3D22686152696768742220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D22535542544F54414C222F3E3C2F636F6C756D6E746F74616C6D65
            6D6F733E3C636F726E65726D656D6F733E3C546672784D656D6F56696577204C
            6566743D2232302220546F703D223234322C3939323237222057696474683D22
            343522204865696768743D22313822205265737472696374696F6E733D223822
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D392220466F6E742E4E616D653D22417269616C204E617272
            6F772220466F6E742E5374796C653D223122204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268614365
            6E7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D2220434F5245533A222F3E3C54667278
            4D656D6F56696577204C6566743D2236352220546F703D223234322C39393232
            37222057696474683D22363322204865696768743D2231382220526573747269
            6374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D22
            417269616C204E6172726F772220466F6E742E5374796C653D22312220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2254414D414E
            484F533A222F3E3C546672784D656D6F56696577204C6566743D223230312220
            546F703D223138222057696474683D22393422204865696768743D2232322220
            5265737472696374696F6E733D2238222056697369626C653D2246616C736522
            20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686143656E746572222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577204C6566743D2232302220
            546F703D223236302C3939323237222057696474683D22343522204865696768
            743D22313822205265737472696374696F6E733D22382220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D22332220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F726E65
            726D656D6F733E3C726F776D656D6F733E3C546672784D656D6F56696577204C
            6566743D2232302220546F703D223237382C3939323237222057696474683D22
            343522204865696768743D22313822205265737472696374696F6E733D223234
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D392220466F6E742E4E616D653D22417269616C204E6172
            726F772220466F6E742E5374796C653D223022204672616D652E5479703D2231
            352220476170583D22332220476170593D22332220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C5466
            72784D656D6F56696577204C6566743D22302220546F703D2235342220576964
            74683D22343522204865696768743D22323022205265737472696374696F6E73
            3D2238222056697369626C653D2246616C73652220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2230222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39222046
            6F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E537479
            6C653D223122204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686152696768742220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D22546F74616C203D262336323B222F3E3C2F726F77746F74616C6D656D
            6F733E3C63656C6C66756E6374696F6E733E3C6974656D20302F3E3C2F63656C
            6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20322F3E
            3C2F636F6C756D6E736F72743E3C726F77736F72743E3C6974656D20302F3E3C
            2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object bandamateriaPrimaTecidosGrade: TfrxChild
        FillType = ftBrush
        Height = 119.559060000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        object DBCross3: TfrxDBCrossView
          Left = 3.779530000000000000
          Width = 323.000000000000000000
          Height = 76.000000000000000000
          ColumnLevels = 0
          DownThenAcross = False
          RowLevels = 2
          ShowColumnTotal = False
          ShowRowTotal = False
          CellFields.Strings = (
            'QUANTIDADE')
          DataSet = dts_TecidoGrade
          DataSetName = 'dts_TecidoGrade'
          RowFields.Strings = (
            'REFERENCIA_COR_NOME'
            'COR_NOME')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223234322C
            37373935332220546F703D223439352C3332333133222057696474683D223634
            22204865696768743D22313822205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D2243616C696272692220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D2230222F3E3C546672784D656D6F56696577204C656674
            3D223230302220546F703D223434222057696474683D22313222204865696768
            743D22323222205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C73652220446973706C6179466F726D61742E
            4B696E643D22666B4E756D657269632220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            322220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E74
            2E5374796C653D223022204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686152696768742220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D22
            3133372220546F703D223538222057696474683D22343122204865696768743D
            22313822205265737472696374696F6E733D2232342220416C6C6F7745787072
            657373696F6E733D2246616C736522204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            222056416C69676E3D22766143656E7465722220546578743D22222F3E3C5466
            72784D656D6F56696577204C6566743D223232382220546F703D223538222057
            696474683D22333822204865696768743D22323222205265737472696374696F
            6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D2268615269676874222056416C69676E3D22766143656E
            7465722220546578743D22222F3E3C2F63656C6C6D656D6F733E3C63656C6C68
            65616465726D656D6F733E3C546672784D656D6F56696577204C6566743D2239
            322220546F703D223430222057696474683D22393422204865696768743D2232
            3222205265737472696374696F6E733D22382220416C6C6F7745787072657373
            696F6E733D2246616C736522204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222056416C69676E3D22766143656E7465722220
            546578743D225155414E544944414445222F3E3C546672784D656D6F56696577
            204C6566743D2239322220546F703D223632222057696474683D223934222048
            65696768743D22323222205265737472696374696F6E733D22382220416C6C6F
            7745787072657373696F6E733D2246616C736522204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222056416C69676E3D227661
            43656E7465722220546578743D225155414E544944414445222F3E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D2230222057696474683D
            223022204865696768743D223022205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D225155414E544944414445222F3E3C
            2F63656C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C54
            6672784D656D6F56696577204C6566743D223234322C37373935332220546F70
            3D223439352C3332333133222057696474683D22363422204865696768743D22
            3022205265737472696374696F6E733D2232342220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2230222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39222046
            6F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D2230
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2222
            2F3E3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F
            733E3C546672784D656D6F56696577204C6566743D2239352220546F703D2231
            38222057696474683D22353022204865696768743D2231382220526573747269
            6374696F6E733D2238222056697369626C653D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D392220466F6E742E4E616D653D22417269616C204E6172726F772220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D22535542544F54414C222F3E3C2F636F6C756D6E746F74
            616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D656D6F5669
            6577204C6566743D2232332C37373935332220546F703D223437372C33323331
            33222057696474683D2232313922204865696768743D22302220526573747269
            6374696F6E733D2238222056697369626C653D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D392220466F6E742E4E616D653D2243616C696272692220466F6E742E5374
            796C653D223122204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E7465722220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D22434F52205245464552C38A4E4349413A222F3E3C546672784D65
            6D6F56696577204C6566743D223234322C37373935332220546F703D22343737
            2C3332333133222057696474683D22363422204865696768743D223138222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22312220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22434F4E5355
            4C4D4F3A222F3E3C546672784D656D6F56696577204C6566743D223932222054
            6F703D223138222057696474683D22393422204865696768743D223232222052
            65737472696374696F6E733D2238222056697369626C653D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E746572222056416C69676E3D22766143656E74657222205465
            78743D22222F3E3C546672784D656D6F56696577204C6566743D2232332C3737
            3935332220546F703D223437372C3332333133222057696474683D2231333022
            204865696768743D22313822205265737472696374696F6E733D22382220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D392220466F6E742E4E616D653D2243616C696272692220466F6E74
            2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
            332220476170593D22332220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22434F52205245464552
            C38A4E434941222F3E3C546672784D656D6F56696577204C6566743D22313533
            2C37373935332220546F703D223437372C3332333133222057696474683D2238
            3922204865696768743D22313822205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D2243616C696272692220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D22434F5220494E464F524D4144413A222F3E3C2F636F
            726E65726D656D6F733E3C726F776D656D6F733E3C546672784D656D6F566965
            77204C6566743D2232332C37373935332220546F703D223439352C3332333133
            222057696474683D2231333022204865696768743D2231382220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D
            2243616C696272692220466F6E742E5374796C653D223022204672616D652E54
            79703D2231352220476170583D22332220476170593D22332220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577204C6566743D223135332C
            37373935332220546F703D223439352C3332333133222057696474683D223839
            22204865696768743D22313822205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D2243616C696272692220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D22222F3E3C2F726F776D656D6F733E3C726F77746F74
            616C6D656D6F733E3C546672784D656D6F56696577204C6566743D2230222054
            6F703D223534222057696474683D22343522204865696768743D223230222052
            65737472696374696F6E733D2238222056697369626C653D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22546F74616C203D262336323B222F3E3C54
            6672784D656D6F56696577204C6566743D223130392220546F703D2234342220
            57696474683D22393122204865696768743D2232322220526573747269637469
            6F6E733D2238222056697369626C653D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2231
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22546F74616C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66
            756E6374696F6E733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E
            733E3C636F6C756D6E736F72743E3C6974656D20302F3E3C2F636F6C756D6E73
            6F72743E3C726F77736F72743E3C6974656D20302F3E3C6974656D20322F3E3C
            2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object BandamateriaPrimaGrade: TfrxChild
        FillType = ftBrush
        Height = 132.283550000000000000
        Top = 729.449290000000000000
        Width = 718.110700000000000000
        object DBCross1: TfrxDBCrossView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 180.000000000000000000
          Height = 112.000000000000000000
          ColumnLevels = 2
          DownThenAcross = False
          ShowColumnTotal = False
          ShowRowTotal = False
          CellFields.Strings = (
            'QUANTIDADE')
          ColumnFields.Strings = (
            'TAMANHO'
            'TAMANHOPADRAO')
          DataSet = dts_MateriaPrimaGrade
          DataSetName = 'dts_MateriaPrimaGrade'
          RowFields.Strings = (
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2236362C37
            373935332220546F703D223830372C3232383832222057696474683D22393722
            204865696768743D22313822205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D392220466F6E742E4E616D653D2243616C696272692220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223133362220546F703D223736222057696474683D2233382220486569676874
            3D22323022205265737472696374696F6E733D2232342220416C6C6F77457870
            72657373696F6E733D2246616C73652220446973706C6179466F726D61742E4B
            696E643D22666B4E756D657269632220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3132
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223022204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D2268615269676874222050617265
            6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
            20546578743D2230222F3E3C546672784D656D6F56696577204C6566743D2231
            33372220546F703D223538222057696474683D22343122204865696768743D22
            313822205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D226861526967687422
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C546672
            784D656D6F56696577204C6566743D223232382220546F703D22353822205769
            6474683D22333822204865696768743D22323222205265737472696374696F6E
            733D2232342220416C6C6F7745787072657373696F6E733D2246616C73652220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D2268615269676874222056416C69676E3D22766143656E74
            65722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D
            22302220546F703D2230222057696474683D223022204865696768743D223022
            205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
            6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D2268615269676874222056416C
            69676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D
            6F56696577204C6566743D22302220546F703D2230222057696474683D223022
            204865696768743D223022205265737472696374696F6E733D22382220416C6C
            6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            615269676874222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865616465726D656D6F733E
            3C546672784D656D6F56696577204C6566743D2239322220546F703D22343022
            2057696474683D22393422204865696768743D22323222205265737472696374
            696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C7365
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222056416C69676E3D22766143656E7465722220546578743D225155414E54
            4944414445222F3E3C546672784D656D6F56696577204C6566743D2239322220
            546F703D223632222057696474683D22393422204865696768743D2232322220
            5265737472696374696F6E733D22382220416C6C6F7745787072657373696F6E
            733D2246616C736522204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222056416C69676E3D22766143656E7465722220546578
            743D225155414E544944414445222F3E3C546672784D656D6F56696577204C65
            66743D22302220546F703D2230222057696474683D223022204865696768743D
            223022205265737472696374696F6E733D22382220416C6C6F77457870726573
            73696F6E733D2246616C736522204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222056416C69676E3D22766143656E74657222
            20546578743D225155414E544944414445222F3E3C2F63656C6C686561646572
            6D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D6F56696577
            204C6566743D2236362C37373935332220546F703D223737312C323238383222
            2057696474683D22393722204865696768743D22313822205265737472696374
            696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2243
            616C696272692220466F6E742E5374796C653D223022204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686152696768742220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F
            56696577204C6566743D2236362C37373935332220546F703D223738392C3232
            383832222057696474683D22393722204865696768743D223138222052657374
            72696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D
            653D2243616C696272692220466F6E742E5374796C653D223022204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686152696768742220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C
            756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C54667278
            4D656D6F56696577204C6566743D2239352220546F703D223138222057696474
            683D22353022204865696768743D22313822205265737472696374696F6E733D
            2238222056697369626C653D2246616C73652220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223122204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D22686152696768742220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D22535542544F54414C222F3E3C546672784D656D6F56696577204C656674
            3D223133362220546F703D223336222057696474683D22333822204865696768
            743D22323222205265737472696374696F6E733D2238222056697369626C653D
            2246616C73652220416C6C6F7745787072657373696F6E733D2246616C736522
            20466F6E742E436861727365743D22312220466F6E742E436F6C6F723D223022
            20466F6E742E4865696768743D222D31332220466F6E742E4E616D653D224172
            69616C2220466F6E742E5374796C653D223122204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686143
            656E7465722220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D22546F74616C222F3E3C2F636F6C75
            6D6E746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D
            656D6F56696577204C6566743D2232332C37373935332220546F703D22373533
            2C3232383832222057696474683D22343322204865696768743D223138222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            47524144453A222F3E3C546672784D656D6F56696577204C6566743D2236362C
            37373935332220546F703D223735332C3232383832222057696474683D223937
            22204865696768743D22313822205265737472696374696F6E733D2238222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D392220466F6E742E4E616D653D2243616C696272692220466F6E
            742E5374796C653D223122204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D22686143656E746572222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D2254414D414E484F533A222F3E3C546672784D656D6F56
            696577204C6566743D2239322220546F703D223138222057696474683D223934
            22204865696768743D22323222205265737472696374696F6E733D2238222056
            697369626C653D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E746572222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
            696577204C6566743D2232332C37373935332220546F703D223737312C323238
            3832222057696474683D22343322204865696768743D22333622205265737472
            696374696F6E733D22382220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D
            22417269616C204E6172726F772220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D22434F523A222F3E3C2F636F726E65726D656D6F733E3C
            726F776D656D6F733E3C546672784D656D6F56696577204C6566743D2232332C
            37373935332220546F703D223830372C3232383832222057696474683D223433
            22204865696768743D22313822205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D22332220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D22222F
            3E3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D22353422205769647468
            3D22343522204865696768743D22323022205265737472696374696F6E733D22
            38222056697369626C653D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E
            742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C65
            3D223122204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22546F74616C203D262336323B222F3E3C2F726F77746F74616C6D656D6F73
            3E3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C2F63656C6C66
            756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20322F3E3C69
            74656D20322F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C6974
            656D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
    end
  end
  object db_view_referencias: TFDQuery
    MasterSource = BaseDados_PCP.ds_referencias
    MasterFields = 'REFERENCIA'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM  VIEW_REFERENCIAS'
      'WHERE'
      'REFERENCIA=:REFERENCIA')
    Left = 640
    Top = 224
    ParamData = <
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object tds_ViewReferencia: TfrxDBDataset
    UserName = 'tds_ViewReferencia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'TIPO_PRODUTO=TIPO_PRODUTO'
      'UNIDADE=UNIDADE'
      'FASE=FASE'
      'FASE_NOME=FASE_NOME'
      'GRIFE=GRIFE'
      'GRIFE_NOME=GRIFE_NOME'
      'COLECAO=COLECAO'
      'COLECAO_NOME=COLECAO_NOME'
      'FAIXAETARIA=FAIXAETARIA'
      'FAIXAETARIA_NOME=FAIXAETARIA_NOME'
      'ETIQUETA=ETIQUETA'
      'ETIQUETA_NOME=ETIQUETA_NOME'
      'GRADE=GRADE'
      'GRADE_NOME=GRADE_NOME'
      'ESTILISTA=ESTILISTA'
      'ESTILISTA_NOME=ESTILISTA_NOME'
      'PRC_CUSTO=PRC_CUSTO'
      'VALOR_VENDA=VALOR_VENDA'
      'GRUPO=GRUPO'
      'GRUPO_NOME=GRUPO_NOME'
      'SUBGRUPO=SUBGRUPO'
      'SUBGRUPO_NOME=SUBGRUPO_NOME'
      'FORNECEDOR=FORNECEDOR'
      'FORNECEDOR_NOME=FORNECEDOR_NOME'
      'GENERO=GENERO'
      'GENERO_NOME=GENERO_NOME'
      'COMPOSICAO=COMPOSICAO'
      'TAMANHO=TAMANHO'
      'COR=COR'
      'CODIGO_1=CODIGO_1')
    DataSet = db_view_referencias
    BCDToCurrency = False
    Left = 640
    Top = 272
  end
  object db_ReferenciaGrade: TFDQuery
    MasterSource = BaseDados_PCP.ds_referencias
    MasterFields = 'REFERENCIA'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM  VIEW_GRADEREFERENCIA'
      'WHERE'
      'REFERENCIA=:REFERENCIA')
    Left = 368
    Top = 264
    ParamData = <
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 31
        Value = Null
      end>
    object db_ReferenciaGradeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_ReferenciaGradeREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      Size = 30
    end
    object db_ReferenciaGradeIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      ReadOnly = True
      Size = 30
    end
    object db_ReferenciaGradeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 200
    end
    object db_ReferenciaGradeCOR_CODIGO: TIntegerField
      FieldName = 'COR_CODIGO'
      ReadOnly = True
    end
    object db_ReferenciaGradeCOR: TStringField
      FieldName = 'COR'
      ReadOnly = True
      Size = 200
    end
    object db_ReferenciaGradeGRADE_ID: TIntegerField
      FieldName = 'GRADE_ID'
      ReadOnly = True
    end
    object db_ReferenciaGradeTAMANHO_ORDEM: TStringField
      FieldName = 'TAMANHO_ORDEM'
      ReadOnly = True
      Size = 30
    end
    object db_ReferenciaGradeTAMANHO_CODIGO: TIntegerField
      FieldName = 'TAMANHO_CODIGO'
      ReadOnly = True
    end
    object db_ReferenciaGradeTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ReadOnly = True
      Size = 30
    end
  end
  object fxdbReferenciaGrade: TfrxDBDataset
    UserName = 'dts_ReferenciaGrade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'REFERENCIA=REFERENCIA'
      'IDENTIFICADOR=IDENTIFICADOR'
      'DESCRICAO=DESCRICAO'
      'COR_CODIGO=COR_CODIGO'
      'COR=COR'
      'GRADE_ID=GRADE_ID'
      'TAMANHO_ORDEM=TAMANHO_ORDEM'
      'TAMANHO_CODIGO=TAMANHO_CODIGO'
      'TAMANHO=TAMANHO')
    DataSet = db_ReferenciaGrade
    BCDToCurrency = False
    Left = 256
    Top = 264
  end
  object db_GradeLista: TFDQuery
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM CAD_GRADELISTA'
      'WHERE'
      'CODIGO=:GRADE')
    Left = 424
    Top = 320
    ParamData = <
      item
        Name = 'GRADE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_GradeListaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_GradeListaID_TAMANHO: TIntegerField
      FieldName = 'ID_TAMANHO'
    end
    object db_GradeListaORDEM: TStringField
      FieldName = 'ORDEM'
      Size = 30
    end
    object db_GradeListaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_GradeListaNometamanho: TStringField
      FieldKind = fkLookup
      FieldName = 'Nometamanho'
      LookupDataSet = BaseDados_PCP.DB_Cad_Tamanhos
      LookupKeyFields = 'TAMANHO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TAMANHO'
      Size = 100
      Lookup = True
    end
    object db_GradeListaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
  end
  object ds_GradeLista: TDataSource
    DataSet = db_GradeLista
    Left = 528
    Top = 320
  end
  object tds_ReferenciaFotos: TfrxDBDataset
    UserName = 'ReferenciaFotos'
    CloseDataSource = False
    DataSet = BaseDados_PCP.db_referencia_Fotos
    BCDToCurrency = False
    Left = 376
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 88
  end
  object frxReportImagem: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.ConnectionName = 'FICHA T'#201'CNICA - FOTO'
    ReportOptions.CreateDate = 40132.929550960600000000
    ReportOptions.Name = 'FICHA T'#201'CNICA - IMAGEM'
    ReportOptions.LastChange = 40753.539937963000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      ''
      'procedure pctRegiaoImagemOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' Try'
      
        '    pctRegiaoImagem.Picture.loadfromfile( <dts_PathFotos."FOTO_P' +
        'ATH"> );'
      ' Except'
      ' End;           '
      '  '
      'end;'
      ''
      'procedure SubdetailData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if (<dts_MateriaPrimaGrade."TAMANHO">) >'#39#39' then'
      '     BandamateriaPrimaGrade.Visible :=True'
      '    else               '
      '     BandamateriaPrimaGrade.Visible :=false;'
      '  '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if (<dts_TecidoGrade."REFERENCIA_COR_ID">) >0 then'
      '      bandamateriaPrimaTecidos.Visible :=True'
      '    else               '
      '      bandamateriaPrimaTecidos.Visible :=false;'
      '  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 481
    Top = 400
    Datasets = <
      item
        DataSet = dst_processos
        DataSetName = 'dst_processos'
      end
      item
        DataSet = dts_cores
        DataSetName = 'dts_cores'
      end
      item
        DataSet = dts_Fotos
        DataSetName = 'dts_Fotos'
      end
      item
        DataSet = dts_maquinas
        DataSetName = 'dts_maquinas'
      end
      item
        DataSet = dts_MateriaPrimaGrade
        DataSetName = 'dts_MateriaPrimaGrade'
      end
      item
        DataSet = dts_MateriasPrimas
        DataSetName = 'dts_MateriasPrimas'
      end
      item
        DataSet = dts_medidas
        DataSetName = 'dts_medidas'
      end
      item
        DataSet = fxdbPathFotos
        DataSetName = 'dts_PathFotos'
      end
      item
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
      end
      item
        DataSet = fxdbReferenciaGrade
        DataSetName = 'dts_ReferenciaGrade'
      end
      item
        DataSet = fxdbServicosExternos
        DataSetName = 'dts_ServicosExternos'
      end
      item
        DataSet = dts_TecidoGrade
        DataSetName = 'dts_TecidoGrade'
      end
      item
        DataSet = dts_Tecidos
        DataSetName = 'dts_Tecidos'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end
      item
        DataSet = tds_ReferenciaFotos
        DataSetName = 'ReferenciaFotos'
      end
      item
        DataSet = tds_ViewReferencia
        DataSetName = 'tds_ViewReferencia'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 277.000000000000000000
      DataSet = tds_ViewReferencia
      DataSetName = 'tds_ViewReferencia'
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      LargeDesignHeight = True
      TitleBeforeHeader = False
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 179.748046140000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Child = frxReportImagem.Child1
        KeepChild = True
        object Shape2: TfrxShapeView
          Left = 0.779530000000000000
          Top = 58.708720000000000000
          Width = 714.330708660000000000
          Height = 119.055096140000000000
        end
        object Memo11: TfrxMemoView
          Left = 3.779527559055120000
          Top = 59.716584250000000000
          Width = 84.322820000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FICHA T'#201'CNICA:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 3.779527560000000000
          Top = 70.472482440000000000
          Width = 126.252010000000000000
          Height = 18.897637800000000000
          DataField = 'CODIGO'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dts_Referencia."CODIGO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 184.188898270000000000
          Top = 133.692913390000000000
          Width = 232.740260000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'COLECAO_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."COLECAO_NOME"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 445.228466060000000000
          Top = 120.944881890000000000
          Width = 117.456710000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ETIQUETA INTERNA:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 445.228466060000000000
          Top = 133.795275590000000000
          Width = 148.811070000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ETIQUETA_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."ETIQUETA_NOME"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 3.779527560000000000
          Top = 133.692913390000000000
          Width = 162.267780000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'GRIFE_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."GRIFE_NOME"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 184.188898270000000000
          Top = 120.842519690000000000
          Width = 56.559060000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COLE'#199#195'O:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 3.779527559055120000
          Top = 120.842519690000000000
          Width = 93.472480000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GRIFE:')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 1.889763780000000000
          Top = 146.748046140000000000
          Width = 713.574803150000000000
          Color = clBlack
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 301.362400000000000000
          Top = 58.692962200000000000
          Height = 32.125986690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object BarCode2: TfrxBarCodeView
          Left = 377.953000000000000000
          Top = 65.472492200000000000
          Width = 38.000000000000000000
          Height = 18.897650000000000000
          BarType = bcCode39
          DataField = 'CODIGO'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          Rotation = 0
          ShowText = False
          Text = '0'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo2: TfrxMemoView
          Left = 3.779527560000000000
          Top = 7.559060000000000000
          Width = 501.330860000000000000
          Height = 49.133858270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'FICHA T'#201'CNICA (IMAGEM)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          Left = 508.055660000000000000
          Top = 7.559060000000000000
          Width = 207.866110000000000000
          Height = 49.133858270000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
        end
        object Memo3: TfrxMemoView
          Left = 520.149603860000000000
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
        object Memo4: TfrxMemoView
          Left = 521.149603860000000000
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
        object Memo5: TfrxMemoView
          Left = 521.149603860000000000
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
        object Memo6: TfrxMemoView
          Left = 586.299215040000000000
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
        object Memo7: TfrxMemoView
          Left = 586.299215040000000000
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
        object Memo8: TfrxMemoView
          Left = 586.299215040000000000
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
        object Line1: TfrxLineView
          Left = 180.063082440000000000
          Top = 118.708661420000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 1096.063700000000000000
          Top = 92.598408110000000000
          Height = 29.858267720000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 434.645950000000000000
          Top = 118.708720000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          Left = 1.889763780000000000
          Top = 118.504020000000000000
          Width = 713.574803150000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 3.779527559055120000
          Top = 90.464566930000000000
          Width = 114.559060000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA/MODELO:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779527560000000000
          Top = 98.708661420000000000
          Width = 152.708720000000000000
          Height = 18.897640240000000000
          AutoWidth = True
          DataField = 'REFERENCIA'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dts_Referencia."REFERENCIA"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 164.504022440000000000
          Top = 90.708720000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo10: TfrxMemoView
          Left = 169.385826770000000000
          Top = 90.464566930000000000
          Width = 61.645640000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 169.385826770000000000
          Top = 98.708661420000000000
          Width = 273.653680000000000000
          Height = 18.897640240000000000
          AutoWidth = True
          DataField = 'DESCRICAO'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dts_Referencia."DESCRICAO"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 275.023810000000000000
          Top = 147.401670000000000000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo32: TfrxMemoView
          Left = 278.803340000000000000
          Top = 162.519685040000000000
          Width = 158.488250000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'GRADE_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."GRADE_NOME"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 278.803340000000000000
          Top = 150.047244094488200000
          Width = 119.929190000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GRADE DE TAMANHOS:')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 1.889763779527560000
          Top = 89.708720000000000000
          Width = 713.574803149606000000
          Color = clBlack
          Diagonal = True
        end
        object Line47: TfrxLineView
          Left = 449.764070000000000000
          Top = 147.401670000000000000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo57: TfrxMemoView
          Left = 453.543600000000000000
          Top = 162.519685040000000000
          Width = 158.488250000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'GENERO_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."GENERO_NOME"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 453.543600000000000000
          Top = 150.047244090000000000
          Width = 119.929190000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'G'#202'NERO:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Top = 163.653640950000000000
          Width = 264.315090000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FASE_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."FASE_NOME"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 3.779530000000000000
          Top = 150.047244094488200000
          Width = 119.929190000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FASES DE PRODU'#199#195'O:')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 15.874015750000000000
        ParentFont = False
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Top = 1.889763780000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TECIDO:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 163.338643700000000000
          Top = 1.889763780000000000
          Width = 75.590551181102400000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COMPOSI'#199#195'O:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 248.314943540000000000
          Top = 1.889763780000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COR:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 319.370078740000000000
          Top = 1.889763780000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'METRAGEM:')
          ParentFont = False
        end
        object Linha1: TfrxLineView
          Align = baLeft
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line31: TfrxLineView
          Left = 157.669450000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          Left = 241.889763779528000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 313.700787401575000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Linha2: TfrxLineView
          Align = baLeft
          Top = 15.118120000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 385.511811020000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 13.606299210000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        AllowSplit = True
        Child = frxReportImagem.bandamateriaPrimaTecidos
        DataSet = dts_Tecidos
        DataSetName = 'dts_Tecidos'
        RowCount = 0
        object Memo35: TfrxMemoView
          Left = 162.519685040000000000
          Width = 75.590551181102400000
          Height = 13.228346460000000000
          DataField = 'COMPOSICAO_DESCRICAO'
          DataSet = dts_Tecidos
          DataSetName = 'dts_Tecidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_Tecidos."COMPOSICAO_DESCRICAO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Width = 151.181102360000000000
          Height = 13.228346460000000000
          DataField = 'DESCRICAO'
          DataSet = dts_Tecidos
          DataSetName = 'dts_Tecidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_Tecidos."DESCRICAO"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 248.314960630000000000
          Width = 60.472426300000000000
          Height = 13.228346460000000000
          DataField = 'COR'
          DataSet = dts_Tecidos
          DataSetName = 'dts_Tecidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_Tecidos."COR"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 321.928923940000000000
          Width = 52.913380940000000000
          Height = 13.228346460000000000
          DataField = 'QTDE_METROS'
          DataSet = dts_Tecidos
          DataSetName = 'dts_Tecidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_Tecidos."QTDE_METROS"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 157.606299212598000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 241.889920000000000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 313.700787401575000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Linha3: TfrxLineView
          Align = baLeft
          Top = 13.000000000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line29: TfrxLineView
          Left = 385.511811023622000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 570.709030000000000000
        Width = 718.110700000000000000
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
        RowCount = 0
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 34.771653540000000000
        Top = 600.945270000000000000
        Width = 718.110700000000000000
        DataSet = dts_MateriasPrimas
        DataSetName = 'dts_MateriasPrimas'
        RowCount = 0
        object Memo17: TfrxMemoView
          Top = 15.118110240000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MATERIA PRIMA:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 162.519685040000000000
          Top = 15.118110240000000000
          Width = 75.590551181102400000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COMPOSI'#199#195'O:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 248.314943540000000000
          Top = 15.118110240000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COR:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 319.370078740000000000
          Top = 15.118110240000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE:')
          ParentFont = False
        end
        object Line36: TfrxLineView
          Left = 385.511811020000000000
          Top = 11.338582677165400000
          Height = 23.433070866141700000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          Left = 313.700787400000000000
          Top = 11.338582677165400000
          Height = 23.433070866141700000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          Left = 241.889763780000000000
          Top = 11.338582677165400000
          Height = 23.433070866141700000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          Left = 157.606299210000000000
          Top = 11.338582677165400000
          Height = 23.433070866141700000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Linha4: TfrxLineView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Linha5: TfrxLineView
          Align = baLeft
          Top = 34.677180000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object SubdetailData2: TfrxSubdetailData
        FillType = ftBrush
        Height = 13.606299210000000000
        Top = 657.638220000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'SubdetailData2OnBeforePrint'
        Child = frxReportImagem.BandamateriaPrimaGrade
        DataSet = dts_MateriasPrimas
        DataSetName = 'dts_MateriasPrimas'
        RowCount = 0
        object Line4: TfrxLineView
          Left = 157.606299212598000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo36: TfrxMemoView
          Left = 162.519685040000000000
          Width = 75.590551181102400000
          Height = 13.228346460000000000
          DataField = 'COMPOSICAO_DESCRICAO'
          DataSet = dts_MateriasPrimas
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_MateriasPrimas."COMPOSICAO_DESCRICAO"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Width = 151.181102360000000000
          Height = 13.228346460000000000
          DataField = 'DESCRICAO'
          DataSet = dts_MateriasPrimas
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_MateriasPrimas."DESCRICAO"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 248.314960630000000000
          Width = 60.472426300000000000
          Height = 13.228346460000000000
          DataField = 'COR'
          DataSet = dts_MateriasPrimas
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_MateriasPrimas."COR"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 319.370078740157000000
          Width = 52.913380940000000000
          Height = 13.228346460000000000
          DataField = 'QTDE'
          DataSet = dts_MateriasPrimas
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_MateriasPrimas."QTDE"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 241.889763779528000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 313.700990000000000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 385.511811020000000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Linha6: TfrxLineView
          Align = baLeft
          Top = 13.000000000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        FillType = ftBrush
        Height = 37.795260940000000000
        Top = 1251.024430000000000000
        Width = 718.110700000000000000
        object Line18: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Top = 0.755905509999999900
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
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 476.220780000000000000
          Top = 0.755905509999999900
          Width = 241.889920000000000000
          Height = 12.094488190000000000
          DataField = 'SRV_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 29.102362200000000000
        Top = 839.055660000000000000
        Width = 718.110700000000000000
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
        RowCount = 0
        object Memo62: TfrxMemoView
          Top = 15.118110240000000000
          Width = 147.401670000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROCESSOS DE PRODU'#199#195'O:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 166.299212600000000000
          Top = 15.118110240000000000
          Width = 45.354330708661400000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TEMPO:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 220.346630000000000000
          Top = 15.118110240000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'INSTRU'#199#195'O:')
          ParentFont = False
        end
        object Linha7: TfrxLineView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line41: TfrxLineView
          Left = 215.567100000000000000
          Top = 11.338590000000000000
          Height = 16.629921260000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line42: TfrxLineView
          Left = 158.740260000000000000
          Top = 11.338590000000000000
          Height = 16.629921260000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Linha8: TfrxLineView
          Align = baLeft
          Top = 28.456710000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 385.512060000000000000
          Top = 11.338590000000000000
          Height = 16.629921260000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 32.779530000000000000
        Top = 891.969080000000000000
        Width = 718.110700000000000000
        DataSet = dst_processos
        DataSetName = 'dst_processos'
        RowCount = 0
        Stretched = True
        object Line11: TfrxLineView
          Left = 215.566929130000000000
          Height = 32.125984251968500000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 158.740157480000000000
          Height = 32.125984251968500000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo24: TfrxMemoView
          Left = 165.842610000000000000
          Width = 45.354330708661400000
          Height = 13.228346460000000000
          DataField = 'TEMPO'
          DataSet = dst_processos
          DataSetName = 'dst_processos'
          DisplayFormat.FormatStr = '0#:0#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dst_processos."TEMPO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Width = 151.181200000000000000
          Height = 13.228346460000000000
          DataField = 'NOME'
          DataSet = dst_processos
          DataSetName = 'dst_processos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dst_processos."NOME"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 220.346456690000000000
          Width = 158.449526920000000000
          Height = 18.025450770000000000
          StretchMode = smMaxHeight
          DataField = 'INSTRUCOES'
          DataSet = dst_processos
          DataSetName = 'dst_processos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dst_processos."INSTRUCOES"]')
          ParentFont = False
          WordBreak = True
        end
        object Linha9: TfrxLineView
          Align = baLeft
          Top = 32.000000000000000000
          Width = 385.512060000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Diagonal = True
        end
        object Line34: TfrxLineView
          Left = 385.512060000000000000
          Height = 32.125984251968500000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 948.662030000000000000
        Width = 718.110700000000000000
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
        RowCount = 0
        object Memo23: TfrxMemoView
          Top = 13.228346456692900000
          Width = 147.401670000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'M'#193'QUINA:')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 166.299212600000000000
          Top = 13.228346460000000000
          Width = 56.692901180000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'AGULHAS:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 268.346456690000000000
          Top = 13.228346456692900000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FIOS/LINHAS:')
          ParentFont = False
        end
        object Linha10: TfrxLineView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 158.740157480000000000
          Top = 11.338582677165400000
          Height = 142.866141732283000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 264.566929130000000000
          Top = 11.338582677165400000
          Height = 142.866141732283000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Linha11: TfrxLineView
          Align = baLeft
          Top = 26.456710000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line35: TfrxLineView
          Left = 385.512060000000000000
          Top = 11.338582677165400000
          Height = 142.866141732283000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object DetailData3: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 997.795920000000000000
        Width = 718.110700000000000000
        DataSet = dts_maquinas
        DataSetName = 'dts_maquinas'
        RowCount = 0
        object Memo54: TfrxMemoView
          Left = 166.299212600000000000
          Width = 56.692901180000000000
          Height = 13.228346460000000000
          DataField = 'AGULHAS'
          DataSet = dts_maquinas
          DataSetName = 'dts_maquinas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_maquinas."AGULHAS"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Width = 143.622140000000000000
          Height = 13.228346460000000000
          DataField = 'NOME'
          DataSet = dts_maquinas
          DataSetName = 'dts_maquinas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_maquinas."NOME"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 268.346456692913000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          DataField = 'FIOS'
          DataSet = dts_maquinas
          DataSetName = 'dts_maquinas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_maquinas."FIOS"]')
          ParentFont = False
        end
        object Linha12: TfrxLineView
          Align = baLeft
          Top = 15.000000000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Height = 30.236222910000000000
        Top = 1035.591220000000000000
        Width = 718.110700000000000000
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
        RowCount = 0
        object Memo52: TfrxMemoView
          Top = 15.118110240000000000
          Width = 147.401670000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ID MEDIAS:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 166.299212600000000000
          Top = 15.118110240000000000
          Width = 75.590551180000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 268.346456690000000000
          Top = 15.118110240000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MEDIAS CM:')
          ParentFont = False
        end
        object Linha13: TfrxLineView
          Align = baLeft
          Top = 1.118120000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Linha14: TfrxLineView
          Align = baLeft
          Top = 27.456710000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object DetailData4: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 1088.504640000000000000
        Width = 718.110700000000000000
        DataSet = dts_medidas
        DataSetName = 'dts_medidas'
        RowCount = 0
        object Memo58: TfrxMemoView
          Left = 166.299212600000000000
          Width = 75.590551181102400000
          Height = 13.228346460000000000
          DataField = 'IDNOME'
          DataSet = dts_medidas
          DataSetName = 'dts_medidas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_medidas."IDNOME"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Width = 143.622140000000000000
          Height = 13.228346460000000000
          DataField = 'NOME'
          DataSet = dts_medidas
          DataSetName = 'dts_medidas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_medidas."NOME"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 268.346456692913000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          DataField = 'MEDIDA'
          DataSet = dts_medidas
          DataSetName = 'dts_medidas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_medidas."MEDIDA"]')
          ParentFont = False
        end
        object Linha15: TfrxLineView
          Align = baLeft
          Top = 14.118120000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Subreport1: TfrxSubreport
        Left = 387.401574803150000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Page = frxReportImagem.Page2
      end
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 1126.299940000000000000
        Width = 718.110700000000000000
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
        RowCount = 0
        object Memo70: TfrxMemoView
          Top = 13.228346460000000000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SERVI'#199'OS EXTERNOS:')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line23: TfrxLineView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 385.512060000000000000
          Top = 11.338582680000000000
          Height = 14.740157480315000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          Align = baLeft
          Top = 26.456710000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object DetailData5: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 1175.433830000000000000
        Width = 718.110700000000000000
        DataSet = fxdbServicosExternos
        DataSetName = 'dts_ServicosExternos'
        RowCount = 0
        object Memo72: TfrxMemoView
          Left = 3.779447010000000000
          Width = 366.614361180000000000
          Height = 13.228346460000000000
          DataField = 'NOME'
          DataSet = fxdbServicosExternos
          DataSetName = 'dts_ServicosExternos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_ServicosExternos."NOME"]')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Align = baLeft
          Top = 15.000000000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line56: TfrxLineView
          Left = 385.512060000000000000
          Height = 14.740157480315000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 98.267716540000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object DBCross2: TfrxDBCrossView
          Width = 131.000000000000000000
          Height = 94.000000000000000000
          DownThenAcross = False
          ShowColumnTotal = False
          ShowRowTotal = False
          CellFields.Strings = (
            'TAMANHO')
          ColumnFields.Strings = (
            'TAMANHO')
          DataSet = fxdbReferenciaGrade
          DataSetName = 'dts_ReferenciaGrade'
          RowFields.Strings = (
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2235382220
            546F703D223237382C3939323237222057696474683D22353322204865696768
            743D22313822205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            302220466F6E742E436F6C6F723D2231363737373231352220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C546672784D656D6F56696577
            204C6566743D2234352220546F703D223534222057696474683D223130302220
            4865696768743D22323022205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C73652220446973706C6179466F
            726D61742E4B696E643D22666B4E756D657269632220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31322220466F6E742E4E616D653D22417269616C204E6172726F7722
            20466F6E742E5374796C653D223022204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C
            6566743D2239352220546F703D223336222057696474683D2235302220486569
            6768743D22323222205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686152
            69676874222056416C69676E3D22766143656E7465722220546578743D223022
            2F3E3C546672784D656D6F56696577204C6566743D2239352220546F703D2235
            38222057696474683D22353022204865696768743D2232322220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D2268615269676874222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C2F63656C6C6D656D6F733E3C
            63656C6C6865616465726D656D6F733E3C546672784D656D6F56696577204C65
            66743D223230312220546F703D223430222057696474683D2239342220486569
            6768743D22323222205265737472696374696F6E733D22382220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222056416C69676E3D2276614365
            6E7465722220546578743D2254414D414E484F222F3E3C546672784D656D6F56
            696577204C6566743D223230312220546F703D223632222057696474683D2239
            3422204865696768743D22323222205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D2254414D414E484F222F3E3C2F6365
            6C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C54667278
            4D656D6F56696577204C6566743D2235382220546F703D223236302C39393232
            37222057696474683D22353322204865696768743D2231382220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D
            22417269616C204E6172726F772220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22222F3E3C2F
            636F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C54
            6672784D656D6F56696577204C6566743D2239352220546F703D223138222057
            696474683D22353022204865696768743D22313822205265737472696374696F
            6E733D2238222056697369626C653D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3922
            20466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E53
            74796C653D223122204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222048416C69676E3D22686152696768742220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D22535542544F54414C222F3E3C2F636F6C756D6E746F74616C6D65
            6D6F733E3C636F726E65726D656D6F733E3C546672784D656D6F56696577204C
            6566743D2232302220546F703D223234322C3939323237222057696474683D22
            333822204865696768743D22313822205265737472696374696F6E733D223822
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D392220466F6E742E4E616D653D22417269616C204E617272
            6F772220466F6E742E5374796C653D223122204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268614365
            6E7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D2220434F5245533A222F3E3C54667278
            4D656D6F56696577204C6566743D2235382220546F703D223234322C39393232
            37222057696474683D22353322204865696768743D2231382220526573747269
            6374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D22
            417269616C204E6172726F772220466F6E742E5374796C653D22312220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2254414D414E
            484F533A222F3E3C546672784D656D6F56696577204C6566743D223230312220
            546F703D223138222057696474683D22393422204865696768743D2232322220
            5265737472696374696F6E733D2238222056697369626C653D2246616C736522
            20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686143656E746572222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577204C6566743D2232302220
            546F703D223236302C3939323237222057696474683D22333822204865696768
            743D22313822205265737472696374696F6E733D22382220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D22332220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F726E65
            726D656D6F733E3C726F776D656D6F733E3C546672784D656D6F56696577204C
            6566743D2232302220546F703D223237382C3939323237222057696474683D22
            333822204865696768743D22313822205265737472696374696F6E733D223234
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D392220466F6E742E4E616D653D22417269616C204E6172
            726F772220466F6E742E5374796C653D223022204672616D652E5479703D2231
            352220476170583D22332220476170593D22332220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C5466
            72784D656D6F56696577204C6566743D22302220546F703D2235342220576964
            74683D22343522204865696768743D22323022205265737472696374696F6E73
            3D2238222056697369626C653D2246616C73652220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2230222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39222046
            6F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E537479
            6C653D223122204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686152696768742220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D22546F74616C203D262336323B222F3E3C2F726F77746F74616C6D656D
            6F733E3C63656C6C66756E6374696F6E733E3C6974656D20302F3E3C2F63656C
            6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20322F3E
            3C2F636F6C756D6E736F72743E3C726F77736F72743E3C6974656D20302F3E3C
            2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object bandamateriaPrimaTecidos: TfrxChild
        FillType = ftBrush
        Height = 90.708720000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        object DBCross3: TfrxDBCrossView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 281.000000000000000000
          Height = 76.000000000000000000
          ColumnLevels = 0
          DownThenAcross = False
          RowLevels = 2
          ShowColumnTotal = False
          ShowRowTotal = False
          CellFields.Strings = (
            'QUANTIDADE')
          DataSet = dts_TecidoGrade
          DataSetName = 'dts_TecidoGrade'
          RowFields.Strings = (
            'REFERENCIA_COR_NOME'
            'COR_NOME')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223230392C
            37373935332220546F703D223439392C3130323636222057696474683D223535
            22204865696768743D22313822205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D2243616C696272692220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D2230222F3E3C546672784D656D6F56696577204C656674
            3D223230302220546F703D223434222057696474683D22313222204865696768
            743D22323222205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C73652220446973706C6179466F726D61742E
            4B696E643D22666B4E756D657269632220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            322220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E74
            2E5374796C653D223022204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686152696768742220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D22
            3133372220546F703D223538222057696474683D22343122204865696768743D
            22313822205265737472696374696F6E733D2232342220416C6C6F7745787072
            657373696F6E733D2246616C736522204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            222056416C69676E3D22766143656E7465722220546578743D22222F3E3C5466
            72784D656D6F56696577204C6566743D223232382220546F703D223538222057
            696474683D22333822204865696768743D22323222205265737472696374696F
            6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D2268615269676874222056416C69676E3D22766143656E
            7465722220546578743D22222F3E3C2F63656C6C6D656D6F733E3C63656C6C68
            65616465726D656D6F733E3C546672784D656D6F56696577204C6566743D2239
            322220546F703D223430222057696474683D22393422204865696768743D2232
            3222205265737472696374696F6E733D22382220416C6C6F7745787072657373
            696F6E733D2246616C736522204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222056416C69676E3D22766143656E7465722220
            546578743D225155414E544944414445222F3E3C546672784D656D6F56696577
            204C6566743D2239322220546F703D223632222057696474683D223934222048
            65696768743D22323222205265737472696374696F6E733D22382220416C6C6F
            7745787072657373696F6E733D2246616C736522204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222056416C69676E3D227661
            43656E7465722220546578743D225155414E544944414445222F3E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D2230222057696474683D
            223022204865696768743D223022205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D225155414E544944414445222F3E3C
            2F63656C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C54
            6672784D656D6F56696577204C6566743D223230392C37373935332220546F70
            3D223439392C3130323636222057696474683D22353522204865696768743D22
            3022205265737472696374696F6E733D2232342220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2230222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39222046
            6F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D2230
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2222
            2F3E3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F
            733E3C546672784D656D6F56696577204C6566743D2239352220546F703D2231
            38222057696474683D22353022204865696768743D2231382220526573747269
            6374696F6E733D2238222056697369626C653D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D392220466F6E742E4E616D653D22417269616C204E6172726F772220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D22535542544F54414C222F3E3C2F636F6C756D6E746F74
            616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D656D6F5669
            6577204C6566743D2232332C37373935332220546F703D223438312C31303236
            36222057696474683D2231383622204865696768743D22302220526573747269
            6374696F6E733D2238222056697369626C653D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D392220466F6E742E4E616D653D2243616C696272692220466F6E742E5374
            796C653D223122204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E7465722220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D22434F52205245464552C38A4E4349413A222F3E3C546672784D65
            6D6F56696577204C6566743D223230392C37373935332220546F703D22343831
            2C3130323636222057696474683D22353522204865696768743D223138222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22312220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22434F4E5355
            4C4D4F3A222F3E3C546672784D656D6F56696577204C6566743D223932222054
            6F703D223138222057696474683D22393422204865696768743D223232222052
            65737472696374696F6E733D2238222056697369626C653D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E746572222056416C69676E3D22766143656E74657222205465
            78743D22222F3E3C546672784D656D6F56696577204C6566743D2232332C3737
            3935332220546F703D223438312C3130323636222057696474683D2231303922
            204865696768743D22313822205265737472696374696F6E733D22382220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D392220466F6E742E4E616D653D2243616C696272692220466F6E74
            2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
            332220476170593D22332220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22434F52205245464552
            C38A4E434941222F3E3C546672784D656D6F56696577204C6566743D22313332
            2C37373935332220546F703D223438312C3130323636222057696474683D2237
            3722204865696768743D22313822205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D2243616C696272692220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D22434F5220494E464F524D4144413A222F3E3C2F636F
            726E65726D656D6F733E3C726F776D656D6F733E3C546672784D656D6F566965
            77204C6566743D2232332C37373935332220546F703D223439392C3130323636
            222057696474683D2231303922204865696768743D2231382220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D
            2243616C696272692220466F6E742E5374796C653D223022204672616D652E54
            79703D2231352220476170583D22332220476170593D22332220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577204C6566743D223133322C
            37373935332220546F703D223439392C3130323636222057696474683D223737
            22204865696768743D22313822205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D2243616C696272692220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D22222F3E3C2F726F776D656D6F733E3C726F77746F74
            616C6D656D6F733E3C546672784D656D6F56696577204C6566743D2230222054
            6F703D223534222057696474683D22343522204865696768743D223230222052
            65737472696374696F6E733D2238222056697369626C653D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22546F74616C203D262336323B222F3E3C54
            6672784D656D6F56696577204C6566743D223130392220546F703D2234342220
            57696474683D22393122204865696768743D2232322220526573747269637469
            6F6E733D2238222056697369626C653D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2231
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22546F74616C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66
            756E6374696F6E733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E
            733E3C636F6C756D6E736F72743E3C6974656D20302F3E3C2F636F6C756D6E73
            6F72743E3C726F77736F72743E3C6974656D20302F3E3C6974656D20322F3E3C
            2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object BandamateriaPrimaGrade: TfrxChild
        FillType = ftBrush
        Height = 120.944960000000000000
        Top = 695.433520000000000000
        Width = 718.110700000000000000
        object DBCross1: TfrxDBCrossView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 162.000000000000000000
          Height = 112.000000000000000000
          ColumnLevels = 2
          DownThenAcross = False
          ShowColumnTotal = False
          ShowRowTotal = False
          CellFields.Strings = (
            'QUANTIDADE')
          ColumnFields.Strings = (
            'TAMANHO'
            'TAMANHOPADRAO')
          DataSet = dts_MateriaPrimaGrade
          DataSetName = 'dts_MateriaPrimaGrade'
          RowFields.Strings = (
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2235392C37
            373935332220546F703D223737332C3231333035222057696474683D22383622
            204865696768743D22313822205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D392220466F6E742E4E616D653D2243616C696272692220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223133362220546F703D223736222057696474683D2233382220486569676874
            3D22323022205265737472696374696F6E733D2232342220416C6C6F77457870
            72657373696F6E733D2246616C73652220446973706C6179466F726D61742E4B
            696E643D22666B4E756D657269632220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3132
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223022204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D2268615269676874222050617265
            6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
            20546578743D2230222F3E3C546672784D656D6F56696577204C6566743D2231
            33372220546F703D223538222057696474683D22343122204865696768743D22
            313822205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D226861526967687422
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C546672
            784D656D6F56696577204C6566743D223232382220546F703D22353822205769
            6474683D22333822204865696768743D22323222205265737472696374696F6E
            733D2232342220416C6C6F7745787072657373696F6E733D2246616C73652220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D2268615269676874222056416C69676E3D22766143656E74
            65722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D
            22302220546F703D2230222057696474683D223022204865696768743D223022
            205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
            6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D2268615269676874222056416C
            69676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D
            6F56696577204C6566743D22302220546F703D2230222057696474683D223022
            204865696768743D223022205265737472696374696F6E733D22382220416C6C
            6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            615269676874222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865616465726D656D6F733E
            3C546672784D656D6F56696577204C6566743D2239322220546F703D22343022
            2057696474683D22393422204865696768743D22323222205265737472696374
            696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C7365
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222056416C69676E3D22766143656E7465722220546578743D225155414E54
            4944414445222F3E3C546672784D656D6F56696577204C6566743D2239322220
            546F703D223632222057696474683D22393422204865696768743D2232322220
            5265737472696374696F6E733D22382220416C6C6F7745787072657373696F6E
            733D2246616C736522204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222056416C69676E3D22766143656E7465722220546578
            743D225155414E544944414445222F3E3C546672784D656D6F56696577204C65
            66743D22302220546F703D2230222057696474683D223022204865696768743D
            223022205265737472696374696F6E733D22382220416C6C6F77457870726573
            73696F6E733D2246616C736522204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222056416C69676E3D22766143656E74657222
            20546578743D225155414E544944414445222F3E3C2F63656C6C686561646572
            6D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D6F56696577
            204C6566743D2235392C37373935332220546F703D223733372C323133303522
            2057696474683D22383622204865696768743D22313822205265737472696374
            696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2243
            616C696272692220466F6E742E5374796C653D223022204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686152696768742220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F
            56696577204C6566743D2235392C37373935332220546F703D223735352C3231
            333035222057696474683D22383622204865696768743D223138222052657374
            72696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D
            653D2243616C696272692220466F6E742E5374796C653D223022204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686152696768742220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C
            756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C54667278
            4D656D6F56696577204C6566743D2239352220546F703D223138222057696474
            683D22353022204865696768743D22313822205265737472696374696F6E733D
            2238222056697369626C653D2246616C73652220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223122204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D22686152696768742220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D22535542544F54414C222F3E3C546672784D656D6F56696577204C656674
            3D223133362220546F703D223336222057696474683D22333822204865696768
            743D22323222205265737472696374696F6E733D2238222056697369626C653D
            2246616C73652220416C6C6F7745787072657373696F6E733D2246616C736522
            20466F6E742E436861727365743D22312220466F6E742E436F6C6F723D223022
            20466F6E742E4865696768743D222D31332220466F6E742E4E616D653D224172
            69616C2220466F6E742E5374796C653D223122204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686143
            656E7465722220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D22546F74616C222F3E3C2F636F6C75
            6D6E746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D
            656D6F56696577204C6566743D2232332C37373935332220546F703D22373139
            2C3231333035222057696474683D22333622204865696768743D223138222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            47524144453A222F3E3C546672784D656D6F56696577204C6566743D2235392C
            37373935332220546F703D223731392C3231333035222057696474683D223836
            22204865696768743D22313822205265737472696374696F6E733D2238222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D392220466F6E742E4E616D653D2243616C696272692220466F6E
            742E5374796C653D223122204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D22686143656E746572222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D2254414D414E484F533A222F3E3C546672784D656D6F56
            696577204C6566743D2239322220546F703D223138222057696474683D223934
            22204865696768743D22323222205265737472696374696F6E733D2238222056
            697369626C653D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E746572222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
            696577204C6566743D2232332C37373935332220546F703D223733372C323133
            3035222057696474683D22333622204865696768743D22333622205265737472
            696374696F6E733D22382220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D
            22417269616C204E6172726F772220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D22434F523A222F3E3C2F636F726E65726D656D6F733E3C
            726F776D656D6F733E3C546672784D656D6F56696577204C6566743D2232332C
            37373935332220546F703D223737332C3231333035222057696474683D223336
            22204865696768743D22313822205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D22332220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D22222F
            3E3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D22353422205769647468
            3D22343522204865696768743D22323022205265737472696374696F6E733D22
            38222056697369626C653D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E
            742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C65
            3D223122204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22546F74616C203D262336323B222F3E3C2F726F77746F74616C6D656D6F73
            3E3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C2F63656C6C66
            756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20322F3E3C69
            74656D20322F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C6974
            656D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData7: TfrxMasterData
        FillType = ftBrush
        Height = 672.756340000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = fxdbPathFotos
        DataSetName = 'dts_PathFotos'
        RowCount = 1
        object pctRegiaoImagem: TfrxPictureView
          Left = 1.779530000000000000
          Top = 3.779527560000000000
          Width = 325.039580000000000000
          Height = 657.638220000000000000
          OnBeforePrint = 'pctRegiaoImagemOnBeforePrint'
          Center = True
          HightQuality = True
          Transparent = True
          TransparentColor = clWhite
        end
      end
    end
  end
  object fxdbPathFotos: TfrxDBDataset
    UserName = 'dts_PathFotos'
    CloseDataSource = False
    DataSet = BaseDados_PCP.db_referencia_Fotos
    BCDToCurrency = False
    Left = 376
    Top = 208
  end
  object frxFichaCusto: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.ConnectionName = 'FICHA DE CUSTO'
    ReportOptions.CreateDate = 40132.929550960600000000
    ReportOptions.Name = 'FICHA DE CUSTO'
    ReportOptions.LastChange = 40998.613609502320000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      ''
      'procedure pctRegiaoImagemOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' Try'
      
        '    pctRegiaoImagem.Picture.loadfromfile( <dts_PathFotos."FOTO_P' +
        'ATH"> );'
      ' Except'
      ' End;           '
      '  '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '      if (<dts_TecidoGrade."REFERENCIA_COR_ID">) >0 then'
      '      bandamateriaPrimaTecidos.Visible :=True'
      '    else               '
      '      bandamateriaPrimaTecidos.Visible :=false;'
      '  '
      'end;'
      ''
      'procedure SubdetailData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '      if (<dts_MateriaPrimaGrade."TAMANHO">) >'#39#39' then'
      '     BandamateriaPrimaGrade.Visible :=True'
      '    else               '
      '     BandamateriaPrimaGrade.Visible :=false;'
      '  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 577
    Top = 400
    Datasets = <
      item
        DataSet = dbfrx_MARKUP
        DataSetName = 'dbx_MARKUP'
      end
      item
        DataSet = dst_processos
        DataSetName = 'dst_processos'
      end
      item
        DataSet = dts_cores
        DataSetName = 'dts_cores'
      end
      item
        DataSet = dts_Fotos
        DataSetName = 'dts_Fotos'
      end
      item
        DataSet = dts_maquinas
        DataSetName = 'dts_maquinas'
      end
      item
        DataSet = dts_MateriaPrimaGrade
        DataSetName = 'dts_MateriaPrimaGrade'
      end
      item
        DataSet = dts_MateriasPrimas
        DataSetName = 'dts_MateriasPrimas'
      end
      item
        DataSet = dts_medidas
        DataSetName = 'dts_medidas'
      end
      item
        DataSet = fxdbPathFotos
        DataSetName = 'dts_PathFotos'
      end
      item
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
      end
      item
        DataSet = fxdbReferenciaGrade
        DataSetName = 'dts_ReferenciaGrade'
      end
      item
        DataSet = fxdbServicosExternos
        DataSetName = 'dts_ServicosExternos'
      end
      item
        DataSet = dts_TecidoGrade
        DataSetName = 'dts_TecidoGrade'
      end
      item
        DataSet = dts_Tecidos
        DataSetName = 'dts_Tecidos'
      end
      item
        DataSet = BaseDados.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = BaseDados.frx_dsParametro
        DataSetName = 'frx_dsParametro'
      end
      item
        DataSet = tds_ReferenciaFotos
        DataSetName = 'ReferenciaFotos'
      end
      item
        DataSet = tds_ViewReferencia
        DataSetName = 'tds_ViewReferencia'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 277.000000000000000000
      DataSet = tds_ViewReferencia
      DataSetName = 'tds_ViewReferencia'
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      LargeDesignHeight = True
      TitleBeforeHeader = False
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 179.748046140000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Child = frxFichaCusto.Child1
        KeepChild = True
        object Shape2: TfrxShapeView
          Left = 0.779530000000000000
          Top = 58.708720000000000000
          Width = 714.330708660000000000
          Height = 119.055096140000000000
        end
        object Memo11: TfrxMemoView
          Left = 3.779527559055120000
          Top = 59.716584250000000000
          Width = 84.322820000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FICHA T'#201'CNICA:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 3.779527560000000000
          Top = 70.472482440000000000
          Width = 126.252010000000000000
          Height = 18.897637800000000000
          DataField = 'CODIGO'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dts_Referencia."CODIGO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 184.188898270000000000
          Top = 133.692913390000000000
          Width = 232.740260000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'COLECAO_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."COLECAO_NOME"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 445.228466060000000000
          Top = 120.944881890000000000
          Width = 117.456710000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ETIQUETA INTERNA:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 445.228466060000000000
          Top = 133.795275590000000000
          Width = 148.811070000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ETIQUETA_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."ETIQUETA_NOME"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 3.779527560000000000
          Top = 133.692913390000000000
          Width = 162.267780000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'GRIFE_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."GRIFE_NOME"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 184.188898270000000000
          Top = 120.842519690000000000
          Width = 56.559060000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COLE'#199#195'O:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 3.779527559055120000
          Top = 120.842519690000000000
          Width = 93.472480000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GRIFE:')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 1.889763780000000000
          Top = 146.748046140000000000
          Width = 713.574803150000000000
          Color = clBlack
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 301.362400000000000000
          Top = 58.692962200000000000
          Height = 32.125986690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object BarCode2: TfrxBarCodeView
          Left = 377.953000000000000000
          Top = 65.472492200000000000
          Width = 38.000000000000000000
          Height = 18.897650000000000000
          BarType = bcCode39
          DataField = 'CODIGO'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          Rotation = 0
          ShowText = False
          Text = '0'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo2: TfrxMemoView
          Left = 3.779527560000000000
          Top = 7.559060000000000000
          Width = 501.330860000000000000
          Height = 49.133858270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'FICHA DE CUSTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          Left = 508.055660000000000000
          Top = 7.559060000000000000
          Width = 207.866110000000000000
          Height = 49.133858270000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
        end
        object Memo3: TfrxMemoView
          Left = 520.149603860000000000
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
        object Memo4: TfrxMemoView
          Left = 521.149603860000000000
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
        object Memo5: TfrxMemoView
          Left = 521.149603860000000000
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
        object Memo6: TfrxMemoView
          Left = 586.299215040000000000
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
        object Memo7: TfrxMemoView
          Left = 586.299215040000000000
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
        object Memo8: TfrxMemoView
          Left = 586.299215040000000000
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
        object Line1: TfrxLineView
          Left = 180.063082440000000000
          Top = 118.708661420000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 1096.063700000000000000
          Top = 92.598408110000000000
          Height = 29.858267720000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 434.645950000000000000
          Top = 118.708720000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          Left = 1.889763780000000000
          Top = 118.504020000000000000
          Width = 713.574803150000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 3.779527559055120000
          Top = 90.464566930000000000
          Width = 114.559060000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA/MODELO:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779527560000000000
          Top = 98.708661420000000000
          Width = 152.708720000000000000
          Height = 18.897640240000000000
          AutoWidth = True
          DataField = 'REFERENCIA'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dts_Referencia."REFERENCIA"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 164.504022440000000000
          Top = 90.708720000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo10: TfrxMemoView
          Left = 169.385826770000000000
          Top = 90.464566930000000000
          Width = 61.645640000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 169.385826770000000000
          Top = 98.708661420000000000
          Width = 273.653680000000000000
          Height = 18.897640240000000000
          AutoWidth = True
          DataField = 'DESCRICAO'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dts_Referencia."DESCRICAO"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 281.677180000000000000
          Top = 162.519685040000000000
          Width = 158.488250000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'GRADE_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."GRADE_NOME"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 281.677180000000000000
          Top = 150.047244094488200000
          Width = 119.929190000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GRADE DE TAMANHOS:')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 1.889763779527560000
          Top = 89.708720000000000000
          Width = 713.574803149606000000
          Color = clBlack
          Diagonal = True
        end
        object Line47: TfrxLineView
          Left = 449.764070000000000000
          Top = 147.401574803149600000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo57: TfrxMemoView
          Left = 453.543600000000000000
          Top = 162.519685040000000000
          Width = 158.488250000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'GENERO_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."GENERO_NOME"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 453.543600000000000000
          Top = 150.047244090000000000
          Width = 119.929190000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'G'#202'NERO:')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 3.779530000000000000
          Top = 163.653640950000000000
          Width = 264.315090000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FASE_NOME'
          DataSet = tds_ViewReferencia
          DataSetName = 'tds_ViewReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tds_ViewReferencia."FASE_NOME"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 3.779530000000000000
          Top = 150.047244094488200000
          Width = 119.929190000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FASES DE PRODU'#199#195'O:')
          ParentFont = False
        end
        object Line27: TfrxLineView
          Left = 275.905690000000000000
          Top = 147.401574803149600000
          Height = 30.236220470000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 15.874015750000000000
        ParentFont = False
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Top = 1.889763780000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TECIDO:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 159.874015750000000000
          Top = 1.889763780000000000
          Width = 68.031496062992100000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'METRAGEM:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 233.574803150000000000
          Top = 1.889763780000000000
          Width = 68.031496062992100000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CUSTO UNIT:')
          ParentFont = False
        end
        object Linha1: TfrxLineView
          Align = baLeft
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line31: TfrxLineView
          Left = 157.669450000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          Left = 229.795275590551000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 304.251968503937000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Linha2: TfrxLineView
          Align = baLeft
          Top = 15.118120000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 385.511811020000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo20: TfrxMemoView
          Left = 306.141732280000000000
          Top = 1.889763780000000000
          Width = 75.590551180000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CUSTO TOTAL:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 13.606299210000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        AllowSplit = True
        Child = frxFichaCusto.bandamateriaPrimaTecidos
        DataSet = dts_Tecidos
        DataSetName = 'dts_Tecidos'
        RowCount = 0
        object Memo35: TfrxMemoView
          Left = 159.874015750000000000
          Width = 68.031496062992100000
          Height = 13.228346460000000000
          DataField = 'QTDE_METROS'
          DataSet = dts_Tecidos
          DataSetName = 'dts_Tecidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_Tecidos."QTDE_METROS"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Width = 151.181102360000000000
          Height = 13.228346460000000000
          DataField = 'DESCRICAO'
          DataSet = dts_Tecidos
          DataSetName = 'dts_Tecidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_Tecidos."DESCRICAO"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 233.574803150000000000
          Width = 68.031496062992100000
          Height = 13.228346460000000000
          DataField = 'VLR_UNIT'
          DataSet = dts_Tecidos
          DataSetName = 'dts_Tecidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_Tecidos."VLR_UNIT"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 306.141732283465000000
          Width = 75.590551181102400000
          Height = 13.228346460000000000
          DataField = 'VLR_TOTAL'
          DataSet = dts_Tecidos
          DataSetName = 'dts_Tecidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_Tecidos."VLR_TOTAL"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 157.606299212598000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 229.889920000000000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 304.251968503937000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Linha3: TfrxLineView
          Align = baLeft
          Top = 13.000000000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line29: TfrxLineView
          Left = 385.511811023622000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 559.370440000000000000
        Width = 718.110700000000000000
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
        RowCount = 0
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 34.771653540000000000
        Top = 589.606680000000000000
        Width = 718.110700000000000000
        DataSet = dts_MateriasPrimas
        DataSetName = 'dts_MateriasPrimas'
        RowCount = 0
        object Memo17: TfrxMemoView
          Top = 15.118110240000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MATERIA PRIMA:')
          ParentFont = False
        end
        object Line36: TfrxLineView
          Left = 385.511811020000000000
          Top = 11.338582677165400000
          Height = 23.433070866141700000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          Left = 304.251968500000000000
          Top = 11.338582680000000000
          Height = 23.433070870000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          Left = 229.795275590551000000
          Top = 11.338582680000000000
          Height = 23.433070870000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          Left = 157.606299210000000000
          Top = 11.338582677165400000
          Height = 23.433070866141700000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Linha4: TfrxLineView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Linha5: TfrxLineView
          Align = baLeft
          Top = 34.677180000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Left = 159.874015750000000000
          Top = 15.118120000000000000
          Width = 68.031496062992100000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 233.574803150000000000
          Top = 15.118120000000000000
          Width = 68.031496062992100000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CUSTO UNIT:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 306.141732280000000000
          Top = 15.118120000000000000
          Width = 75.590551180000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CUSTO TOTAL:')
          ParentFont = False
        end
      end
      object SubdetailData2: TfrxSubdetailData
        FillType = ftBrush
        Height = 13.606299210000000000
        Top = 646.299630000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'SubdetailData2OnBeforePrint'
        Child = frxFichaCusto.BandamateriaPrimaGrade
        DataSet = dts_MateriasPrimas
        DataSetName = 'dts_MateriasPrimas'
        RowCount = 0
        object Line4: TfrxLineView
          Left = 157.606299212598000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo36: TfrxMemoView
          Left = 159.874015750000000000
          Width = 68.031496062992100000
          Height = 13.228346460000000000
          DataField = 'QTDE'
          DataSet = dts_MateriasPrimas
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_MateriasPrimas."QTDE"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Width = 151.181102360000000000
          Height = 13.228346460000000000
          DataField = 'DESCRICAO'
          DataSet = dts_MateriasPrimas
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_MateriasPrimas."DESCRICAO"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 233.574803150000000000
          Width = 68.031496062992100000
          Height = 13.228346460000000000
          DataField = 'VLR_UNIT'
          DataSet = dts_MateriasPrimas
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_MateriasPrimas."VLR_UNIT"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 306.141732283465000000
          Width = 75.590551181102400000
          Height = 13.228346460000000000
          DataField = 'VLR_TOTAL'
          DataSet = dts_MateriasPrimas
          DataSetName = 'dts_MateriasPrimas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_MateriasPrimas."VLR_TOTAL"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 229.795275590551000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 304.251968503937000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 385.511811020000000000
          Height = 13.228322050000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Linha6: TfrxLineView
          Align = baLeft
          Top = 13.000000000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        FillType = ftBrush
        Height = 37.795260940000000000
        Top = 1220.788190000000000000
        Width = 718.110700000000000000
        object Line18: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 718.110700000000000000
          Top = 0.755905509999999900
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
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 476.220780000000000000
          Top = 0.755905509999999900
          Width = 241.889920000000000000
          Height = 12.094488190000000000
          DataField = 'SRV_SITE'
          DataSet = BaseDados.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 29.102362200000000000
        Top = 827.717070000000000000
        Width = 718.110700000000000000
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
        RowCount = 0
        object Memo62: TfrxMemoView
          Top = 15.118110240000000000
          Width = 147.401670000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROCESSOS DE PRODU'#199#195'O:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 309.921259840000000000
          Top = 15.118110240000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CUSTO:')
          ParentFont = False
        end
        object Linha7: TfrxLineView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line41: TfrxLineView
          Left = 302.362204720000000000
          Top = 11.338590000000000000
          Height = 16.629921260000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Linha8: TfrxLineView
          Align = baLeft
          Top = 28.456710000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 385.512060000000000000
          Top = 11.338590000000000000
          Height = 16.629921260000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 17.661410000000000000
        Top = 880.630490000000000000
        Width = 718.110700000000000000
        DataSet = dst_processos
        DataSetName = 'dst_processos'
        RowCount = 0
        Stretched = True
        object Line11: TfrxLineView
          Left = 302.362204720000000000
          Height = 16.629921259842500000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo25: TfrxMemoView
          Width = 291.023810000000000000
          Height = 13.228346460000000000
          DataField = 'NOME'
          DataSet = dst_processos
          DataSetName = 'dst_processos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dst_processos."NOME"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 306.141732280000000000
          Width = 75.590551180000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'CUSTOS'
          DataSet = dst_processos
          DataSetName = 'dst_processos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dst_processos."CUSTOS"]')
          ParentFont = False
          WordBreak = True
        end
        object Linha9: TfrxLineView
          Align = baLeft
          Top = 17.000000000000000000
          Width = 385.512060000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Diagonal = True
        end
        object Line34: TfrxLineView
          Left = 385.512060000000000000
          Height = 16.629921259842500000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 922.205320000000000000
        Width = 718.110700000000000000
        DataSet = dts_Referencia
        DataSetName = 'dts_Referencia'
        RowCount = 0
        object Memo23: TfrxMemoView
          Top = 13.228346460000000000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SERVI'#199'OS EXTERNOS:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 309.921259840000000000
          Top = 13.228346460000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CUSTO:')
          ParentFont = False
        end
        object Linha10: TfrxLineView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line14: TfrxLineView
          Left = 302.362204720000000000
          Top = 11.338582680000000000
          Height = 14.740157480315000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Linha11: TfrxLineView
          Align = baLeft
          Top = 26.456710000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line35: TfrxLineView
          Left = 385.512060000000000000
          Top = 11.338582680000000000
          Height = 14.740157480315000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object DetailData3: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 971.339210000000000000
        Width = 718.110700000000000000
        DataSet = fxdbServicosExternos
        DataSetName = 'dts_ServicosExternos'
        RowCount = 0
        object Memo54: TfrxMemoView
          Left = 3.779447010000000000
          Width = 287.244231180000000000
          Height = 13.228346460000000000
          DataField = 'NOME'
          DataSet = fxdbServicosExternos
          DataSetName = 'dts_ServicosExternos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[dts_ServicosExternos."NOME"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 306.141732280000000000
          Width = 75.590551180000000000
          Height = 13.228346460000000000
          DataField = 'VALOR'
          DataSet = fxdbServicosExternos
          DataSetName = 'dts_ServicosExternos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_ServicosExternos."VALOR"]')
          ParentFont = False
        end
        object Linha12: TfrxLineView
          Align = baLeft
          Top = 15.000000000000000000
          Width = 385.511811020000000000
          Color = clBlack
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 302.362400000000000000
          Height = 14.740157480315000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 385.512060000000000000
          Height = 14.740157480315000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object Subreport1: TfrxSubreport
        Left = 387.401574803150000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Page = frxFichaCusto.Page2
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 150.622140000000000000
        ParentFont = False
        Top = 1046.929810000000000000
        Width = 718.110700000000000000
        object frx_dsParametroPRODUTO_IMPORTACAO: TfrxMemoView
          Left = 309.921460000000000000
          Top = 87.252010000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'IMPORTACAO'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."IMPORTACAO"]')
        end
        object frx_dsParametroPRODUTO_IPI: TfrxMemoView
          Left = 113.385900000000000000
          Top = 41.897650000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'IPI'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."IPI"]')
        end
        object frx_dsParametroPRODUTO_ICMS: TfrxMemoView
          Left = 113.385900000000000000
          Top = 26.779530000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'ICMS'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."ICMS"]')
        end
        object frx_dsParametroPRODUTO_PUBLICIDADE: TfrxMemoView
          Left = 113.385900000000000000
          Top = 57.015770000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'PUBLICIDADE'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."PUBLICIDADE"]')
        end
        object frx_dsParametroPRODUTO_INADIMPLENCIA: TfrxMemoView
          Left = 113.385900000000000000
          Top = 72.133890000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'INADIMPLENCIA'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."INADIMPLENCIA"]')
        end
        object frx_dsParametroPRODUTO_FINANCEIRO: TfrxMemoView
          Left = 113.385900000000000000
          Top = 102.370130000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'FINANCEIRO'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."FINANCEIRO"]')
        end
        object frx_dsParametroPRODUTO_PIS: TfrxMemoView
          Left = 113.385900000000000000
          Top = 117.488250000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'PIS'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."PIS"]')
        end
        object Memo28: TfrxMemoView
          Left = 7.559055118110240000
          Top = 26.779530000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ICMS:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 7.559060000000000000
          Top = 41.897650000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'IPI:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 7.559060000000000000
          Top = 57.015770000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUBLICIDADE:')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 7.559060000000000000
          Top = 72.133890000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'INADIMPL'#202'NCIA:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 7.559060000000000000
          Top = 87.252010000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ADMINISTRATIVO:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.370130000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ENC. FINANCEIROS:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 7.559060000000000000
          Top = 117.488250000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PIS:')
          ParentFont = False
        end
        object frx_dsParametroPRODUTO_COFINS: TfrxMemoView
          Left = 309.921460000000000000
          Top = 26.779530000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'COFINS'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."COFINS"]')
        end
        object frx_dsParametroPRODUTO_IR: TfrxMemoView
          Left = 309.921460000000000000
          Top = 41.897650000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'IR'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."IR"]')
        end
        object frx_dsParametroPRODUTO_MARKUP: TfrxMemoView
          Left = 309.921460000000000000
          Top = 57.015770000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'MARKUP'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."MARKUP"]')
        end
        object Memo46: TfrxMemoView
          Left = 204.094620000000000000
          Top = 26.779530000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COFINS:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 204.094620000000000000
          Top = 41.897650000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'IMP. RENDA:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 204.094620000000000000
          Top = 57.015770000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MARKUP:')
          ParentFont = False
        end
        object frx_dsParametroPRODUTO_OUTROSIMPOSTOS: TfrxMemoView
          Left = 309.921460000000000000
          Top = 72.133890000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'OUTROSIMPOSTOS'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."OUTROSIMPOSTOS"]')
        end
        object frx_dsParametroPRODUTO_FRETE: TfrxMemoView
          Left = 309.921460000000000000
          Top = 102.370130000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'FRETE'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."FRETE"]')
        end
        object frx_dsParametroPRODUTO_MARGEMLUCRO: TfrxMemoView
          Left = 309.921460000000000000
          Top = 117.488250000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'MARGEMLUCRO'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."MARGEMLUCRO"]')
        end
        object Memo50: TfrxMemoView
          Left = 204.094620000000000000
          Top = 72.133890000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OUTROS IMPOSTOS:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 204.094620000000000000
          Top = 87.252010000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'IMPORTA'#199#195'O:')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 204.094620000000000000
          Top = 102.370130000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TRANSPORTE:')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 204.094620000000000000
          Top = 117.488250000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MARGEM DE LUCRO:')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baRight
          Left = 718.110700000000000000
          Height = 136.062994570000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo59: TfrxMemoView
          Left = 7.559060000000000000
          Top = 2.779530000000000000
          Width = 328.819110000000000000
          Height = 15.118112680000000000
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MARKUP: [dbx_MARKUP."NOME"]')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line23: TfrxLineView
          Align = baWidth
          Top = 145.842610000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line24: TfrxLineView
          Left = 0.755905511811024000
          Height = 136.062994570000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          Align = baCenter
          Left = 359.055350000000000000
          Height = 143.622054570000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo63: TfrxMemoView
          Left = 476.220780000000000000
          Top = 26.456710000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DataField = 'PRC_CUSTO'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_Referencia."PRC_CUSTO"]')
        end
        object Memo65: TfrxMemoView
          Left = 476.220780000000000000
          Top = 41.574830000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DataField = 'TOTAL_VLRMATPRIMA'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_Referencia."TOTAL_VLRMATPRIMA"]')
        end
        object Memo67: TfrxMemoView
          Left = 476.220780000000000000
          Top = 56.692950000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DataField = 'TOTAL_PROCESSO_CUSTOS'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_Referencia."TOTAL_PROCESSO_CUSTOS"]')
        end
        object Memo68: TfrxMemoView
          Left = 370.393940000000000000
          Top = 26.456710000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRE'#199'O DE CUSTO:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 370.393940000000000000
          Top = 41.574830000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MAT'#201'RIA PRIMA:')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 370.393940000000000000
          Top = 56.692950000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROC. PRODU'#199#195'O')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 476.220780000000000000
          Top = 72.165430000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DataField = 'PRC_VENDA'
          DataSet = dts_Referencia
          DataSetName = 'dts_Referencia'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dts_Referencia."PRC_VENDA"]')
        end
        object Memo78: TfrxMemoView
          Left = 370.393940000000000000
          Top = 72.165430000000000000
          Width = 100.157480310000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRE'#199'O DE VENDA:')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 370.393940000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 15.118112680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CUSTOS:')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 113.385900000000000000
          Top = 86.929190000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DataField = 'ADMINISTRATIVO'
          DataSet = dbfrx_MARKUP
          DataSetName = 'dbx_MARKUP'
          DisplayFormat.FormatStr = '###,##0.00%'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dbx_MARKUP."ADMINISTRATIVO"]')
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 98.267716540000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object DBCross2: TfrxDBCrossView
          Width = 131.000000000000000000
          Height = 94.000000000000000000
          DownThenAcross = False
          ShowColumnTotal = False
          ShowRowTotal = False
          CellFields.Strings = (
            'TAMANHO')
          ColumnFields.Strings = (
            'TAMANHO')
          DataSet = fxdbReferenciaGrade
          DataSetName = 'dts_ReferenciaGrade'
          RowFields.Strings = (
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2235382220
            546F703D223237382C3939323237222057696474683D22353322204865696768
            743D22313822205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            302220466F6E742E436F6C6F723D2231363737373231352220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C546672784D656D6F56696577
            204C6566743D2234352220546F703D223534222057696474683D223130302220
            4865696768743D22323022205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C73652220446973706C6179466F
            726D61742E4B696E643D22666B4E756D657269632220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31322220466F6E742E4E616D653D22417269616C204E6172726F7722
            20466F6E742E5374796C653D223022204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C
            6566743D2239352220546F703D223336222057696474683D2235302220486569
            6768743D22323222205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686152
            69676874222056416C69676E3D22766143656E7465722220546578743D223022
            2F3E3C546672784D656D6F56696577204C6566743D2239352220546F703D2235
            38222057696474683D22353022204865696768743D2232322220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D2268615269676874222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C2F63656C6C6D656D6F733E3C
            63656C6C6865616465726D656D6F733E3C546672784D656D6F56696577204C65
            66743D223230312220546F703D223430222057696474683D2239342220486569
            6768743D22323222205265737472696374696F6E733D22382220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222056416C69676E3D2276614365
            6E7465722220546578743D2254414D414E484F222F3E3C546672784D656D6F56
            696577204C6566743D223230312220546F703D223632222057696474683D2239
            3422204865696768743D22323222205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D2254414D414E484F222F3E3C2F6365
            6C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C54667278
            4D656D6F56696577204C6566743D2235382220546F703D223236302C39393232
            37222057696474683D22353322204865696768743D2231382220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D
            22417269616C204E6172726F772220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22222F3E3C2F
            636F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C54
            6672784D656D6F56696577204C6566743D2239352220546F703D223138222057
            696474683D22353022204865696768743D22313822205265737472696374696F
            6E733D2238222056697369626C653D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3922
            20466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E53
            74796C653D223122204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222048416C69676E3D22686152696768742220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D22535542544F54414C222F3E3C2F636F6C756D6E746F74616C6D65
            6D6F733E3C636F726E65726D656D6F733E3C546672784D656D6F56696577204C
            6566743D2232302220546F703D223234322C3939323237222057696474683D22
            333822204865696768743D22313822205265737472696374696F6E733D223822
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D392220466F6E742E4E616D653D22417269616C204E617272
            6F772220466F6E742E5374796C653D223122204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268614365
            6E7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D2220434F5245533A222F3E3C54667278
            4D656D6F56696577204C6566743D2235382220546F703D223234322C39393232
            37222057696474683D22353322204865696768743D2231382220526573747269
            6374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D22
            417269616C204E6172726F772220466F6E742E5374796C653D22312220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2254414D414E
            484F533A222F3E3C546672784D656D6F56696577204C6566743D223230312220
            546F703D223138222057696474683D22393422204865696768743D2232322220
            5265737472696374696F6E733D2238222056697369626C653D2246616C736522
            20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686143656E746572222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577204C6566743D2232302220
            546F703D223236302C3939323237222057696474683D22333822204865696768
            743D22313822205265737472696374696F6E733D22382220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D22332220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F726E65
            726D656D6F733E3C726F776D656D6F733E3C546672784D656D6F56696577204C
            6566743D2232302220546F703D223237382C3939323237222057696474683D22
            333822204865696768743D22313822205265737472696374696F6E733D223234
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D392220466F6E742E4E616D653D22417269616C204E6172
            726F772220466F6E742E5374796C653D223022204672616D652E5479703D2231
            352220476170583D22332220476170593D22332220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C5466
            72784D656D6F56696577204C6566743D22302220546F703D2235342220576964
            74683D22343522204865696768743D22323022205265737472696374696F6E73
            3D2238222056697369626C653D2246616C73652220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2230222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39222046
            6F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E537479
            6C653D223122204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686152696768742220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D22546F74616C203D262336323B222F3E3C2F726F77746F74616C6D656D
            6F733E3C63656C6C66756E6374696F6E733E3C6974656D20302F3E3C2F63656C
            6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20322F3E
            3C2F636F6C756D6E736F72743E3C726F77736F72743E3C6974656D20302F3E3C
            2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object bandamateriaPrimaTecidos: TfrxChild
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        object DBCross3: TfrxDBCrossView
          Left = 3.779530000000000000
          Width = 281.000000000000000000
          Height = 76.000000000000000000
          ColumnLevels = 0
          DownThenAcross = False
          RowLevels = 2
          ShowColumnTotal = False
          ShowRowTotal = False
          CellFields.Strings = (
            'QUANTIDADE')
          DataSet = dts_TecidoGrade
          DataSetName = 'dts_TecidoGrade'
          RowFields.Strings = (
            'REFERENCIA_COR_NOME'
            'COR_NOME')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223230392C
            37373935332220546F703D223439352C3332333133222057696474683D223535
            22204865696768743D22313822205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D2243616C696272692220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D2230222F3E3C546672784D656D6F56696577204C656674
            3D223230302220546F703D223434222057696474683D22313222204865696768
            743D22323222205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C73652220446973706C6179466F726D61742E
            4B696E643D22666B4E756D657269632220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            322220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E74
            2E5374796C653D223022204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686152696768742220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D22
            3133372220546F703D223538222057696474683D22343122204865696768743D
            22313822205265737472696374696F6E733D2232342220416C6C6F7745787072
            657373696F6E733D2246616C736522204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            222056416C69676E3D22766143656E7465722220546578743D22222F3E3C5466
            72784D656D6F56696577204C6566743D223232382220546F703D223538222057
            696474683D22333822204865696768743D22323222205265737472696374696F
            6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D2268615269676874222056416C69676E3D22766143656E
            7465722220546578743D22222F3E3C2F63656C6C6D656D6F733E3C63656C6C68
            65616465726D656D6F733E3C546672784D656D6F56696577204C6566743D2239
            322220546F703D223430222057696474683D22393422204865696768743D2232
            3222205265737472696374696F6E733D22382220416C6C6F7745787072657373
            696F6E733D2246616C736522204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222056416C69676E3D22766143656E7465722220
            546578743D225155414E544944414445222F3E3C546672784D656D6F56696577
            204C6566743D2239322220546F703D223632222057696474683D223934222048
            65696768743D22323222205265737472696374696F6E733D22382220416C6C6F
            7745787072657373696F6E733D2246616C736522204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222056416C69676E3D227661
            43656E7465722220546578743D225155414E544944414445222F3E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D2230222057696474683D
            223022204865696768743D223022205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D225155414E544944414445222F3E3C
            2F63656C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C54
            6672784D656D6F56696577204C6566743D223230392C37373935332220546F70
            3D223439352C3332333133222057696474683D22353522204865696768743D22
            3022205265737472696374696F6E733D2232342220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2230222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39222046
            6F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D2230
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2222
            2F3E3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F
            733E3C546672784D656D6F56696577204C6566743D2239352220546F703D2231
            38222057696474683D22353022204865696768743D2231382220526573747269
            6374696F6E733D2238222056697369626C653D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D392220466F6E742E4E616D653D22417269616C204E6172726F772220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D22535542544F54414C222F3E3C2F636F6C756D6E746F74
            616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D656D6F5669
            6577204C6566743D2232332C37373935332220546F703D223437372C33323331
            33222057696474683D2231383622204865696768743D22302220526573747269
            6374696F6E733D2238222056697369626C653D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D392220466F6E742E4E616D653D2243616C696272692220466F6E742E5374
            796C653D223122204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E7465722220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D22434F52205245464552C38A4E4349413A222F3E3C546672784D65
            6D6F56696577204C6566743D223230392C37373935332220546F703D22343737
            2C3332333133222057696474683D22353522204865696768743D223138222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22312220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22434F4E5355
            4C4D4F3A222F3E3C546672784D656D6F56696577204C6566743D223932222054
            6F703D223138222057696474683D22393422204865696768743D223232222052
            65737472696374696F6E733D2238222056697369626C653D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E746572222056416C69676E3D22766143656E74657222205465
            78743D22222F3E3C546672784D656D6F56696577204C6566743D2232332C3737
            3935332220546F703D223437372C3332333133222057696474683D2231303922
            204865696768743D22313822205265737472696374696F6E733D22382220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D392220466F6E742E4E616D653D2243616C696272692220466F6E74
            2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
            332220476170593D22332220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22434F52205245464552
            C38A4E434941222F3E3C546672784D656D6F56696577204C6566743D22313332
            2C37373935332220546F703D223437372C3332333133222057696474683D2237
            3722204865696768743D22313822205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D2243616C696272692220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D22434F5220494E464F524D4144413A222F3E3C2F636F
            726E65726D656D6F733E3C726F776D656D6F733E3C546672784D656D6F566965
            77204C6566743D2232332C37373935332220546F703D223439352C3332333133
            222057696474683D2231303922204865696768743D2231382220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D
            2243616C696272692220466F6E742E5374796C653D223022204672616D652E54
            79703D2231352220476170583D22332220476170593D22332220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577204C6566743D223133322C
            37373935332220546F703D223439352C3332333133222057696474683D223737
            22204865696768743D22313822205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D2243616C696272692220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D22222F3E3C2F726F776D656D6F733E3C726F77746F74
            616C6D656D6F733E3C546672784D656D6F56696577204C6566743D2230222054
            6F703D223534222057696474683D22343522204865696768743D223230222052
            65737472696374696F6E733D2238222056697369626C653D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22546F74616C203D262336323B222F3E3C54
            6672784D656D6F56696577204C6566743D223130392220546F703D2234342220
            57696474683D22393122204865696768743D2232322220526573747269637469
            6F6E733D2238222056697369626C653D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2231
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22546F74616C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66
            756E6374696F6E733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E
            733E3C636F6C756D6E736F72743E3C6974656D20302F3E3C2F636F6C756D6E73
            6F72743E3C726F77736F72743E3C6974656D20302F3E3C6974656D20322F3E3C
            2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object BandamateriaPrimaGrade: TfrxChild
        FillType = ftBrush
        Height = 120.944960000000000000
        Top = 684.094930000000000000
        Width = 718.110700000000000000
        object DBCross1: TfrxDBCrossView
          Left = 7.559060000000000000
          Width = 162.000000000000000000
          Height = 112.000000000000000000
          ColumnLevels = 2
          DownThenAcross = False
          ShowColumnTotal = False
          ShowRowTotal = False
          CellFields.Strings = (
            'QUANTIDADE')
          ColumnFields.Strings = (
            'TAMANHO'
            'TAMANHOPADRAO')
          DataSet = dts_MateriaPrimaGrade
          DataSetName = 'dts_MateriaPrimaGrade'
          RowFields.Strings = (
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2236332C35
            353930362220546F703D223735382C3039343933222057696474683D22383622
            204865696768743D22313822205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D392220466F6E742E4E616D653D2243616C696272692220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223133362220546F703D223736222057696474683D2233382220486569676874
            3D22323022205265737472696374696F6E733D2232342220416C6C6F77457870
            72657373696F6E733D2246616C73652220446973706C6179466F726D61742E4B
            696E643D22666B4E756D657269632220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3132
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223022204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D2268615269676874222050617265
            6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
            20546578743D2230222F3E3C546672784D656D6F56696577204C6566743D2231
            33372220546F703D223538222057696474683D22343122204865696768743D22
            313822205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D226861526967687422
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C546672
            784D656D6F56696577204C6566743D223232382220546F703D22353822205769
            6474683D22333822204865696768743D22323222205265737472696374696F6E
            733D2232342220416C6C6F7745787072657373696F6E733D2246616C73652220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D2268615269676874222056416C69676E3D22766143656E74
            65722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D
            22302220546F703D2230222057696474683D223022204865696768743D223022
            205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
            6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D2268615269676874222056416C
            69676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D
            6F56696577204C6566743D22302220546F703D2230222057696474683D223022
            204865696768743D223022205265737472696374696F6E733D22382220416C6C
            6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            615269676874222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865616465726D656D6F733E
            3C546672784D656D6F56696577204C6566743D2239322220546F703D22343022
            2057696474683D22393422204865696768743D22323222205265737472696374
            696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C7365
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222056416C69676E3D22766143656E7465722220546578743D225155414E54
            4944414445222F3E3C546672784D656D6F56696577204C6566743D2239322220
            546F703D223632222057696474683D22393422204865696768743D2232322220
            5265737472696374696F6E733D22382220416C6C6F7745787072657373696F6E
            733D2246616C736522204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222056416C69676E3D22766143656E7465722220546578
            743D225155414E544944414445222F3E3C546672784D656D6F56696577204C65
            66743D22302220546F703D2230222057696474683D223022204865696768743D
            223022205265737472696374696F6E733D22382220416C6C6F77457870726573
            73696F6E733D2246616C736522204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222056416C69676E3D22766143656E74657222
            20546578743D225155414E544944414445222F3E3C2F63656C6C686561646572
            6D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D6F56696577
            204C6566743D2236332C35353930362220546F703D223732322C303934393322
            2057696474683D22383622204865696768743D22313822205265737472696374
            696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2243
            616C696272692220466F6E742E5374796C653D223022204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686152696768742220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F
            56696577204C6566743D2236332C35353930362220546F703D223734302C3039
            343933222057696474683D22383622204865696768743D223138222052657374
            72696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22302220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D
            653D2243616C696272692220466F6E742E5374796C653D223022204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686152696768742220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C
            756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C54667278
            4D656D6F56696577204C6566743D2239352220546F703D223138222057696474
            683D22353022204865696768743D22313822205265737472696374696F6E733D
            2238222056697369626C653D2246616C73652220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223122204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D22686152696768742220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D22535542544F54414C222F3E3C546672784D656D6F56696577204C656674
            3D223133362220546F703D223336222057696474683D22333822204865696768
            743D22323222205265737472696374696F6E733D2238222056697369626C653D
            2246616C73652220416C6C6F7745787072657373696F6E733D2246616C736522
            20466F6E742E436861727365743D22312220466F6E742E436F6C6F723D223022
            20466F6E742E4865696768743D222D31332220466F6E742E4E616D653D224172
            69616C2220466F6E742E5374796C653D223122204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686143
            656E7465722220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D22546F74616C222F3E3C2F636F6C75
            6D6E746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D
            656D6F56696577204C6566743D2232372C35353930362220546F703D22373034
            2C3039343933222057696474683D22333622204865696768743D223138222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            47524144453A222F3E3C546672784D656D6F56696577204C6566743D2236332C
            35353930362220546F703D223730342C3039343933222057696474683D223836
            22204865696768743D22313822205265737472696374696F6E733D2238222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D392220466F6E742E4E616D653D2243616C696272692220466F6E
            742E5374796C653D223122204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D22686143656E746572222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D2254414D414E484F533A222F3E3C546672784D656D6F56
            696577204C6566743D2239322220546F703D223138222057696474683D223934
            22204865696768743D22323222205265737472696374696F6E733D2238222056
            697369626C653D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E746572222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
            696577204C6566743D2232372C35353930362220546F703D223732322C303934
            3933222057696474683D22333622204865696768743D22333622205265737472
            696374696F6E733D22382220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22302220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D
            22417269616C204E6172726F772220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D22434F523A222F3E3C2F636F726E65726D656D6F733E3C
            726F776D656D6F733E3C546672784D656D6F56696577204C6566743D2232372C
            35353930362220546F703D223735382C3039343933222057696474683D223336
            22204865696768743D22313822205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D392220466F6E742E4E616D653D22417269616C204E6172726F
            772220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D22332220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D22222F
            3E3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D22353422205769647468
            3D22343522204865696768743D22323022205265737472696374696F6E733D22
            38222056697369626C653D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D392220466F6E
            742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C65
            3D223122204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22546F74616C203D262336323B222F3E3C2F726F77746F74616C6D656D6F73
            3E3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C2F63656C6C66
            756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20322F3E3C69
            74656D20322F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C6974
            656D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData7: TfrxMasterData
        FillType = ftBrush
        Height = 415.748300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = fxdbPathFotos
        DataSetName = 'dts_PathFotos'
        RowCount = 1
        object pctRegiaoImagem: TfrxPictureView
          Left = 1.779530000000000000
          Top = 3.779527560000000000
          Width = 325.039580000000000000
          Height = 400.630180000000000000
          OnBeforePrint = 'pctRegiaoImagemOnBeforePrint'
          Center = True
          HightQuality = True
          Transparent = True
          TransparentColor = clWhite
        end
      end
    end
  end
  object fxdbServicosExternos: TfrxDBDataset
    UserName = 'dts_ServicosExternos'
    CloseDataSource = False
    DataSet = BaseDados_PCP.db_pcp_Custos
    BCDToCurrency = False
    Left = 288
    Top = 416
  end
  object PopupMateriaPrimaGrade: TPopupMenu
    Left = 776
    Top = 232
    object Deletar1: TMenuItem
      Caption = 'Deletar Linha'
      OnClick = Deletar1Click
    end
    object Excluirtudo1: TMenuItem
      Caption = 'Excluir tudo'
      OnClick = Excluirtudo1Click
    end
  end
  object dts_MateriaPrimaGrade: TfrxDBDataset
    UserName = 'dts_MateriaPrimaGrade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'REFERENCIA=REFERENCIA'
      'COR_ID=COR_ID'
      'COR=COR'
      'TAMANHO_ID=TAMANHO_ID'
      'TAMANHO=TAMANHO'
      'ORDEM_GRADE=ORDEM_GRADE'
      'TAMANHOPADRAO=TAMANHOPADRAO'
      'QUANTIDADE=QUANTIDADE')
    DataSet = BaseDados_PCP.db_MateriaPrimaGrade
    BCDToCurrency = False
    Left = 552
    Top = 248
  end
  object dts_TecidoGrade: TfrxDBDataset
    UserName = 'dts_TecidoGrade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'REFERENCIA=REFERENCIA'
      'REFERENCIA_COR_ID=REFERENCIA_COR_ID'
      'REFERENCIA_COR_NOME=REFERENCIA_COR_NOME'
      'COR_ID=COR_ID'
      'COR_NOME=COR_NOME'
      'QUANTIDADE=QUANTIDADE')
    DataSet = BaseDados_PCP.db_MateriaPrimaTecidosGrade
    BCDToCurrency = False
    Left = 544
    Top = 176
  end
  object SP_MarkupAplicar: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPTOTALIZAREFENCIA_MARKUP;1'
    Left = 752
    Top = 424
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NMARKUP'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dbfrx_MARKUP: TfrxDBDataset
    UserName = 'dbx_MARKUP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'NOME=NOME'
      'MARKUP=MARKUP'
      'OUTROSIMPOSTOS=OUTROSIMPOSTOS'
      'ICMS=ICMS'
      'IPI=IPI'
      'PUBLICIDADE=PUBLICIDADE'
      'INADIMPLENCIA=INADIMPLENCIA'
      'ADMINISTRATIVO=ADMINISTRATIVO'
      'FINANCEIRO=FINANCEIRO'
      'PIS=PIS'
      'COFINS=COFINS'
      'IR=IR'
      'IMPORTACAO=IMPORTACAO'
      'FRETE=FRETE'
      'MARGEMLUCRO=MARGEMLUCRO')
    DataSet = db_MARKUP
    BCDToCurrency = False
    Left = 144
    Top = 424
  end
  object db_MARKUP: TFDQuery
    MasterSource = BaseDados_PCP.ds_referencias
    MasterFields = 'MARKUPID'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM CAD_MARKUP'
      'WHERE'
      'CODIGO=:MARKUPID')
    Left = 48
    Top = 416
    ParamData = <
      item
        Name = 'MARKUPID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object PopupMateriaPrimaGradeTecidos: TPopupMenu
    Left = 808
    Top = 136
    object MenuItem1: TMenuItem
      Caption = 'Deletar Linha'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Excluir tudo'
      OnClick = MenuItem2Click
    end
  end
end
