object FrmMaquinas: TFrmMaquinas
  Left = 232
  Top = 106
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Maquinas e Equipamentos'
  ClientHeight = 347
  ClientWidth = 575
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 33
    Width = 575
    Height = 273
    Align = alClient
    TabOrder = 0
    object Label5: TLabel
      Left = 14
      Top = 84
      Width = 3
      Height = 14
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 83
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
    object Label3: TLabel
      Left = 80
      Top = 83
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = EditNome
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 129
      Width = 67
      Height = 13
      Caption = 'Qtde Agulhas:'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 115
      Top = 129
      Width = 84
      Height = 13
      Caption = 'Qtde Fios/Linhas:'
      FocusControl = DBEdit3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 221
      Top = 129
      Width = 55
      Height = 13
      Caption = 'Num. S'#233'rie:'
      FocusControl = DBEdit4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 98
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      Color = 14811135
      DataField = 'CODIGO'
      DataSource = BaseDados_PCP.ds_maquinas
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EditNome: TDBEdit
      Left = 81
      Top = 98
      Width = 476
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = BaseDados_PCP.ds_maquinas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 144
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NRO_AGULHAS'
      DataSource = BaseDados_PCP.ds_maquinas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 115
      Top = 144
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NRO_FIOS'
      DataSource = BaseDados_PCP.ds_maquinas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 221
      Top = 144
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      DataField = 'N_SERIE'
      DataSource = BaseDados_PCP.ds_maquinas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 2
      Top = 40
      Width = 571
      Height = 38
      Align = alTop
      Caption = 'Equipamento em Opera'#231#227'o:'
      Columns = 2
      DataField = 'STATUS'
      DataSource = BaseDados_PCP.ds_maquinas
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentBackground = True
      TabOrder = 0
      Values.Strings = (
        'S'
        'N')
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 177
      Width = 571
      Height = 94
      Align = alBottom
      Caption = 'Observa'#231#245'es:'
      TabOrder = 6
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 567
        Height = 77
        Align = alClient
        DataField = 'OBSERVACAO'
        DataSource = BaseDados_PCP.ds_maquinas
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object LocalizaOrdemMaquina: TIDBEditDialog
      Left = 397
      Top = 217
      Width = 65
      Height = 21
      Color = clWindow
      Enabled = True
      TabOrder = 7
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
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 15
      Width = 571
      Height = 25
      Cursor = crHandPoint
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alTop
      Flat = True
      TabOrder = 8
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 306
    Width = 575
    Height = 41
    Align = alBottom
    AutoSize = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 306
    ExplicitWidth = 575
    ExplicitHeight = 41
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 575
    Height = 33
    Align = alTop
    AutoSize = True
    TabOrder = 2
    ExplicitWidth = 575
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      inherited LblBarraTitulo: TLabel
        Width = 164
        Caption = 'Maquinas e Equipamentos'
        ExplicitWidth = 164
      end
    end
  end
end
