object FrmFaseProducao: TFrmFaseProducao
  Left = 0
  Top = 0
  Caption = 'Andamento de Fase de Produ'#231#227'o'
  ClientHeight = 503
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1008
    Height = 36
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1008
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 1008
      ExplicitWidth = 1008
      inherited LblBarraTitulo: TLabel
        Width = 250
        Caption = 'Andamento de Fase de Produ'#231#227'o'
        ExplicitWidth = 250
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 463
    Width = 1008
    Height = 40
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      1008
      40)
    object btnDefeitos: TBitBtn
      Left = 563
      Top = 6
      Width = 106
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Informar Defeito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 27865
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnDefeitosClick
    end
    object BitBtn2: TBitBtn
      Left = 10
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object btnPerdas: TBitBtn
      Left = 786
      Top = 6
      Width = 106
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Informar Perda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnPerdasClick
    end
    object btnRetoronServicos: TButton
      Left = 444
      Top = 6
      Width = 110
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Retorno de Servi'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnRetoronServicosClick
    end
    object btnEstornarDefeitos: TBitBtn
      Left = 668
      Top = 6
      Width = 106
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Estornar Defeito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 27865
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnEstornarDefeitosClick
    end
    object btnEstornarPerdas: TBitBtn
      Left = 891
      Top = 6
      Width = 106
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Estornar Perda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnEstornarPerdasClick
    end
    object BtnRemessas: TBitBtn
      Left = 359
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Remessas...'
      TabOrder = 6
      OnClick = BtnRemessasClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 36
    Width = 1008
    Height = 427
    Align = alClient
    TabOrder = 0
    object AdvGroupBox1: TGroupBox
      Left = 1
      Top = 167
      Width = 1006
      Height = 259
      Align = alClient
      TabOrder = 1
      object GroupBox5: TGroupBox
        Left = 3
        Top = 3
        Width = 673
        Height = 253
        Align = alClient
        Caption = '[ PRODUTOS NA FASE ATUAL ]'
        TabOrder = 0
        object DbGridReferencias: TDBGrid
          Left = 2
          Top = 15
          Width = 279
          Height = 236
          Align = alClient
          DataSource = ds_OrdemProducaoFases
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'REFERENCIA'
              Width = 124
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Width = 445
              Visible = True
            end>
        end
        object GroupBox1: TGroupBox
          Left = 281
          Top = 15
          Width = 390
          Height = 236
          Align = alRight
          Caption = 'Grade Cores/Tamanhos'
          TabOrder = 1
          object dbGridQuantidades: TDBGrid
            Left = 2
            Top = 15
            Width = 386
            Height = 178
            Align = alClient
            Color = clSilver
            DataSource = ds_ReferenciasFaseGrade
            DrawingStyle = gdsGradient
            FixedColor = clSilver
            Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbGridQuantidadesDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'COR'
                Title.Caption = 'COR:'
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TAMANHO'
                Title.Caption = 'TAMANHO:'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE_PRODUZIR'
                Title.Caption = 'PRODUZIR:'
                Width = 76
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE_DEFEITO'
                Title.Caption = 'DEFEITO:'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE_PERDA'
                Title.Caption = 'PERDA:'
                Width = 46
                Visible = True
              end>
          end
          object Panel4: TPanel
            Left = 2
            Top = 193
            Width = 386
            Height = 41
            Align = alBottom
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Enabled = False
            TabOrder = 1
            object EditQuantidade: TLabeledEdit
              Left = 184
              Top = 9
              Width = 78
              Height = 23
              Alignment = taCenter
              Color = clBtnFace
              EditLabel.Width = 71
              EditLabel.Height = 15
              EditLabel.Caption = 'Quantidade: '
              EditLabel.Font.Charset = ANSI_CHARSET
              EditLabel.Font.Color = clBlack
              EditLabel.Font.Height = -13
              EditLabel.Font.Name = 'Calibri'
              EditLabel.Font.Style = [fsBold]
              EditLabel.ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              LabelPosition = lpLeft
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
      object GroupBox4: TGroupBox
        Left = 676
        Top = 3
        Width = 327
        Height = 253
        Align = alRight
        Caption = '[ PR'#211'XIMA FASE ]'
        TabOrder = 1
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 246
          Height = 236
          Align = alClient
          DataSource = ds_FasesDestino
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ORDEM'
              Title.Color = clHighlight
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Color = clHighlight
              Width = 171
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 248
          Top = 15
          Width = 77
          Height = 236
          Align = alRight
          TabOrder = 1
          object btnTransferir: TBitBtn
            Left = 6
            Top = 91
            Width = 65
            Height = 50
            Caption = 'Transferir'
            Kind = bkOK
            Layout = blGlyphBottom
            NumGlyphs = 2
            TabOrder = 0
            OnClick = btnTransferirClick
          end
        end
      end
    end
    object BoxFornecedor: TGroupBox
      Left = 1
      Top = 1
      Width = 1006
      Height = 74
      Align = alTop
      Caption = 'Dados Principais'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        1006
        74)
      object EditDescricao: TEdit
        Left = 254
        Top = 34
        Width = 594
        Height = 23
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '***'
      end
      object dbProcurarReferencia: TIDBEditDialog
        Left = 119
        Top = 34
        Width = 131
        Height = 23
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = ''
        Visible = True
        OnChange = dbProcurarReferenciaChange
        OnEnter = dbProcurarReferenciaEnter
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Refer'#234'ncia'
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
        SQLdbFocusControl = EditDescricao
        SQLdbCampoRetorno = 'DESCRICAO'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'REFERENCIA'
        SQLdbSQL.Strings = (
          'SELECT *  FROM VIEW_REFERENCIAS'
          'WHERE'
          'TIPO_PRODUTO IN ('#39'ACA'#39','#39'ACABADO'#39')'
          'AND'
          'REFERENCIA=:REFERENCIA')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT '
          'DISTINCT REFERENCIA, DESCRICAO  '
          'FROM PCP_ORDEMPRODUCAO_ITENS'
          
            'INNER JOIN PCP_ORDEMPRODUCAO ON PCP_ORDEMPRODUCAO.EMPRESA=PCP_OR' +
            'DEMPRODUCAO_ITENS.EMPRESA '
          'AND '
          'PCP_ORDEMPRODUCAO.CODIGO=PCP_ORDEMPRODUCAO_ITENS.CODIGO '
          'AND '
          'PCP_ORDEMPRODUCAO.ENCERRADO IN ('#39'N'#39','#39'NAO'#39')'
          'WHERE'
          '%WHERE%'
          'ORDER BY REFERENCIA'
          '')
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
            DisplayWidth = 84
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
      object LocalizaOrdemProducao: TIDBEditDialog
        Left = 9
        Top = 34
        Width = 104
        Height = 23
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 30
        ParentFont = False
        TabOrder = 0
        Text = ''
        Visible = True
        OnChange = LocalizaOrdemProducaoChange
        LabelCaption = 'Ordem de Produ'#231#227'o'
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
        SQLdbCampoRetorno = 'CODIGO'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT *  FROM VIEW_ORDEMPRODUCAO'
          'WHERE'
          'ENCERRADO IN ('#39'N'#39','#39'NAO'#39')'
          'AND'
          '%WHERE%'
          '')
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
            FieldName = 'DATAFECHAMENTO'
            WhereSyntax = 'DATAFECHAMENTO'
            DisplayLabel = 'FECHAMENTO:'
            DisplayWidth = 13
            DisplayColumnWidth = 0
            FieldType = ftDateTime
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'NATUREZA'
            WhereSyntax = 'NATUREZA'
            DisplayLabel = 'NATUREZA:'
            DisplayWidth = 10
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
            DisplayLabel = 'PRODUZIR:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'QTDE_PRODUZIDA'
            WhereSyntax = 'QTDE_PRODUZIDA'
            DisplayLabel = 'PRODUZIDA:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'QTDE_RESTANTE'
            WhereSyntax = 'QTDE_RESTANTE'
            DisplayLabel = 'RESTANTE:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'PERCENTUAL'
            WhereSyntax = 'PERCENTUAL'
            DisplayLabel = 'CONCLUIDO:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftFloat
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'AUTORIZADO'
            WhereSyntax = 'AUTORIZADO'
            DisplayLabel = 'AUTORIZADO:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'STATUS'
            WhereSyntax = 'STATUS'
            DisplayLabel = 'STATUS:'
            DisplayWidth = 8
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'ENCERRADO'
            WhereSyntax = 'ENCERRADO'
            DisplayLabel = 'ENCERRADO:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'REFERENCIA'
            WhereSyntax = 'REFERENCIA'
            DisplayLabel = 'REFERENCIA'
            DisplayWidth = 20
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end>
        SearchPresetList = <>
        ShowPresets = False
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
      object btnEncerrar: TBitBtn
        Left = 856
        Top = 11
        Width = 120
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Encerrar Andamento...'
        TabOrder = 3
        OnClick = btnEncerrarClick
      end
      object BitBtn4: TBitBtn
        Left = 856
        Top = 42
        Width = 120
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Estornos'
        Enabled = False
        TabOrder = 4
      end
    end
    object gbxFaseAtual: TGroupBox
      Left = 1
      Top = 75
      Width = 1006
      Height = 92
      Align = alTop
      Caption = '[FASE ATUAL]'
      TabOrder = 0
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 2
        Top = 15
        Width = 1000
        Height = 75
        Align = alClient
        AllowDelete = False
        AllowInsert = False
        ColCount = 10
        Color = clGray
        DataSource = ds_FasesGradeLista
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Orientation = goHorizontal
        PanelHeight = 58
        PanelWidth = 100
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        RowCount = 1
        SelectedColor = clBlue
        ExplicitWidth = 1002
        object DBText1: TDBText
          Left = 0
          Top = 0
          Width = 100
          Height = 17
          Align = alTop
          Alignment = taCenter
          DataField = 'ORDEM'
          DataSource = ds_FasesGradeLista
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 2
          ExplicitWidth = 120
        end
        object DBText2: TDBText
          Left = 0
          Top = 17
          Width = 100
          Height = 41
          Align = alClient
          Alignment = taCenter
          DataField = 'NOME'
          DataSource = ds_FasesGradeLista
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitTop = 16
          ExplicitWidth = 120
          ExplicitHeight = 25
        end
      end
    end
  end
  object db_FasesGradeLista: TFDQuery
    AfterClose = db_FasesGradeListaAfterClose
    AfterScroll = db_FasesGradeListaAfterScroll
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT DISTINCT '
      'CODIGO,'
      'FASE,'
      'ORDEM,'
      'NOME'
      'FROM  CAD_FASESGRADE_LISTA'
      'WHERE'
      'CODIGO=:CODIGO'
      '--AND'
      '--FASE=:FASE'
      'ORDER BY CODIGO, ORDEM')
    Left = 88
    Top = 136
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_FasesGradeLista: TDataSource
    DataSet = db_FasesGradeLista
    Left = 216
    Top = 136
  end
  object db_OrdemProducaoFases: TFDQuery
    AfterOpen = db_OrdemProducaoFasesAfterOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      
        '--DISTINCT CODIGO, FASE, REFERENCIA, DESCRICAO, SOBRA, FASETRANS' +
        'FERENCIA, TERCEIRIZADO'
      'DISTINCT '
      'CODIGO, FASE, REFERENCIA, DESCRICAO '
      'FROM PCP_ORDEMPRODUCAO_ANDAMENTO'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'FASE=:FASE'
      'AND'
      'REFERENCIA=:REFERENCIA'
      ''
      ''
      ''
      'ORDER BY REFERENCIA')
    Left = 96
    Top = 280
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
      end
      item
        Name = 'FASE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
    object db_OrdemProducaoFasesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_OrdemProducaoFasesFASE: TIntegerField
      FieldName = 'FASE'
    end
    object db_OrdemProducaoFasesREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object db_OrdemProducaoFasesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object ds_OrdemProducaoFases: TDataSource
    DataSet = db_OrdemProducaoFases
    Left = 96
    Top = 336
  end
  object db_FasesDestino: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT DISTINCT '
      'FASE,'
      'ORDEM,'
      'NOME'
      'FROM  CAD_FASESGRADE_LISTA'
      'WHERE'
      'CODIGO=:CODIGO'
      ''
      'ORDER BY ORDEM')
    Left = 776
    Top = 304
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_FasesDestino: TDataSource
    DataSet = db_FasesDestino
    Left = 776
    Top = 360
  end
  object db_ReferenciasFaseGrade: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      'DISTINCT REFERENCIA,'
      'COR_ID,'
      'COR,'
      'TAMANHO_ID,'
      'TAMANHO,'
      'ORDEM_GRADE,'
      'TAMANHO,'
      'QTDE_PRODUZIR,'
      'QTDE_TRANSFERIDA,'
      'QTDE_PENDENTE,'
      'QTDE_DEFEITO,'
      'QTDE_PERDA,'
      'TERCEIRIZADO,'
      'FASETRANSFERENCIA'
      ''
      'FROM PCP_ORDEMPRODUCAO_ANDAMENTO'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'FASE=:FASE'
      'AND'
      'REFERENCIA=:REFERENCIA'
      ''
      'AND QTDE_PRODUZIR>0'
      ''
      'ORDER BY COR, ORDEM_GRADE')
    Left = 384
    Top = 304
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
      end
      item
        Name = 'FASE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
    object db_ReferenciasFaseGradeREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object db_ReferenciasFaseGradeCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object db_ReferenciasFaseGradeCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_ReferenciasFaseGradeTAMANHO_ID: TIntegerField
      FieldName = 'TAMANHO_ID'
    end
    object db_ReferenciasFaseGradeTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_ReferenciasFaseGradeORDEM_GRADE: TStringField
      FieldName = 'ORDEM_GRADE'
      Size = 30
    end
    object db_ReferenciasFaseGradeTAMANHO_1: TStringField
      FieldName = 'TAMANHO_1'
      Size = 30
    end
    object db_ReferenciasFaseGradeQTDE_PRODUZIR: TIntegerField
      FieldName = 'QTDE_PRODUZIR'
    end
    object db_ReferenciasFaseGradeQTDE_TRANSFERIDA: TIntegerField
      FieldName = 'QTDE_TRANSFERIDA'
    end
    object db_ReferenciasFaseGradeQTDE_PENDENTE: TIntegerField
      FieldName = 'QTDE_PENDENTE'
    end
    object db_ReferenciasFaseGradeQTDE_DEFEITO: TIntegerField
      FieldName = 'QTDE_DEFEITO'
    end
    object db_ReferenciasFaseGradeQTDE_PERDA: TIntegerField
      FieldName = 'QTDE_PERDA'
    end
    object db_ReferenciasFaseGradeTERCEIRIZADO: TIntegerField
      FieldName = 'TERCEIRIZADO'
    end
    object db_ReferenciasFaseGradeFASETRANSFERENCIA: TIntegerField
      FieldName = 'FASETRANSFERENCIA'
    end
  end
  object ds_ReferenciasFaseGrade: TDataSource
    DataSet = db_ReferenciasFaseGrade
    Left = 384
    Top = 360
  end
  object SP_OrdemProducaoFinalizar: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPPCP_FINALIZAR'
    Left = 392
    Top = 80
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
        Size = 6357091
      end
      item
        Name = 'NORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 655373
      end
      item
        Name = 'SREFERENCIA'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'SFASE'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'SVIA'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
end
