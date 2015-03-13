object FrmOrdemProducaoMateriaPrimaBaixar: TFrmOrdemProducaoMateriaPrimaBaixar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Baixa de Mat'#233'ria Prima'
  ClientHeight = 523
  ClientWidth = 1002
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 203
    Width = 1002
    Height = 279
    Align = alClient
    BevelWidth = 3
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 3
      Top = 35
      Width = 581
      Height = 241
      Align = alClient
      Caption = 'Mat'#233'ria Prima'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object dbGrid_ProdutosMateriaPrima: TDBGrid
        Left = 2
        Top = 15
        Width = 577
        Height = 224
        Align = alClient
        DataSource = ds_MateriaPrima
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Color = clSilver
            Expanded = False
            FieldName = 'REFERENCIA'
            ReadOnly = True
            Title.Caption = 'Refer'#234'ncia:'
            Width = 139
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'DESCRICAO'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o:'
            Width = 233
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'QTDE_ESTIMADA'
            ReadOnly = True
            Title.Caption = 'QTDE Estimada:'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE_CONSUMOSTOTAL'
            Title.Caption = 'Qtde Baixar:'
            Width = 77
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'ESTOQUE'
            ReadOnly = True
            Title.Caption = 'Em Estoque:'
            Width = 75
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'NECESSIDADE'
            ReadOnly = True
            Title.Caption = 'Necessidade'
            Width = 85
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'BAIXADO'
            ReadOnly = True
            Title.Caption = 'Baixado (S/N):'
            Width = 79
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Left = 3
      Top = 3
      Width = 996
      Height = 32
      Align = alTop
      BevelInner = bvRaised
      Caption = 'Mat'#233'ria Prima'
      TabOrder = 1
    end
    object GroupBox18: TGroupBox
      Left = 584
      Top = 35
      Width = 415
      Height = 241
      Align = alRight
      Caption = 'MAT'#201'RIA PRIMA - GRADE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object GridMateriaPrimaGrade: TDBGrid
        Left = 2
        Top = 15
        Width = 411
        Height = 224
        Align = alClient
        DataSource = ds_MateriaPrimaGrade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -9
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
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
            Color = clBtnFace
            Expanded = False
            FieldName = 'TAMANHOPADRAO'
            ReadOnly = True
            Title.Caption = 'TAMANHO (F8):'
            Width = 71
            Visible = True
          end
          item
            Color = clBtnFace
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
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1002
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 1002
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 1002
      Height = 33
      ExplicitWidth = 1002
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 177
        Caption = 'Baixa de Mat'#233'ria Prima'
        ExplicitWidth = 177
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 482
    Width = 1002
    Height = 41
    Align = alBottom
    TabOrder = 3
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Baixar...'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 97
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Estornar...'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 178
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 33
    Width = 1002
    Height = 170
    Align = alTop
    BevelWidth = 3
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 3
      Top = 35
      Width = 581
      Height = 132
      Align = alClient
      Caption = 'Tecidos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object GridMateriaPrimaTecidos: TDBGrid
        Left = 2
        Top = 15
        Width = 577
        Height = 115
        Align = alClient
        DataSource = ds_MateriaPrimaTecidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Color = clSilver
            Expanded = False
            FieldName = 'REFERENCIA'
            ReadOnly = True
            Title.Caption = 'Refer'#234'ncia:'
            Width = 139
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'DESCRICAO'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o:'
            Width = 370
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'QTDE_ESTIMADA'
            ReadOnly = True
            Title.Caption = 'QTDE Estimada:'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE_CONSUMOSTOTAL'
            Title.Caption = 'Qtde Baixar:'
            Width = 77
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'ESTOQUE'
            ReadOnly = True
            Title.Caption = 'Em Estoque:'
            Width = 75
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'NECESSIDADE'
            ReadOnly = True
            Title.Caption = 'Necessidade'
            Width = 85
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'BAIXADO'
            ReadOnly = True
            Title.Caption = 'Baixado (S/N):'
            Width = 79
            Visible = True
          end>
      end
    end
    object Panel5: TPanel
      Left = 3
      Top = 3
      Width = 996
      Height = 32
      Align = alTop
      BevelInner = bvRaised
      Caption = 'Tecidos'
      TabOrder = 1
    end
    object GroupBox19: TGroupBox
      Left = 584
      Top = 35
      Width = 415
      Height = 132
      Align = alRight
      Caption = 'TECIDOS - GRADE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object DBGrid5: TDBGrid
        Left = 2
        Top = 15
        Width = 411
        Height = 115
        Align = alClient
        DataSource = ds_MateriaPrimaTecidosGrade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -9
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
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
            Color = clBtnFace
            Expanded = False
            FieldName = 'COR_ID'
            ReadOnly = True
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
    end
  end
  object db_MateriaPrima: TFDQuery
    BeforePost = db_MateriaPrimaBeforePost
    MasterSource = BaseDados_PCP.ds_OrdemProducao
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PCP_ORDEMPRODUCAO_MP'
      'where'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      ''
      'ORDER BY REFERENCIA')
    Left = 272
    Top = 320
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
  object ds_MateriaPrima: TDataSource
    DataSet = db_MateriaPrima
    Left = 132
    Top = 320
  end
  object SP_BaixarEstoque: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPOP_BAIXARESTOQUE;1'
    Left = 592
    Top = 200
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'NORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object ds_MateriaPrimaTecidos: TDataSource
    DataSet = db_MateriaPrimaTecidos
    Left = 348
    Top = 48
  end
  object db_MateriaPrimaTecidos: TFDQuery
    BeforePost = db_MateriaPrimaTecidosBeforePost
    MasterSource = BaseDados_PCP.ds_OrdemProducao
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PCP_ORDEMPRODUCAO_MPTECIDOS'
      'where'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      ''
      'ORDER BY REFERENCIA')
    Left = 480
    Top = 48
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
  object db_MateriaPrimaTecidosGrade: TFDQuery
    AfterPost = db_MateriaPrimaTecidosGradeAfterPost
    MasterSource = ds_MateriaPrimaTecidos
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  PCP_ORDEMPRODUCAO_MPTECIDOSGRADE'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'REFERENCIA=:REFERENCIA'
      'ORDER BY REFERENCIA_COR_NOME')
    Left = 480
    Top = 112
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
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object ds_MateriaPrimaTecidosGrade: TDataSource
    DataSet = db_MateriaPrimaTecidosGrade
    Left = 344
    Top = 112
  end
  object db_MateriaPrimaGrade: TFDQuery
    AfterPost = db_MateriaPrimaGradeAfterPost
    MasterSource = ds_MateriaPrima
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  PCP_ORDEMPRODUCAO_MPGRADE'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'REFERENCIA=:REFERENCIA')
    Left = 272
    Top = 376
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
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object ds_MateriaPrimaGrade: TDataSource
    DataSet = db_MateriaPrimaGrade
    Left = 128
    Top = 376
  end
  object db_MateriaPrimaOrigem: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  VIEW_ORDEMPRODUCAO_MATERIAPRIMA'
      'WHERE'
      'ORDEMPRODUCAO=:ORDEMPRODUCAO'
      'ORDER BY REFERENCIA')
    Left = 512
    Top = 344
    ParamData = <
      item
        Name = 'ORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_MateriaPrimaOrigemORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_MateriaPrimaOrigemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_MateriaPrimaOrigemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ReadOnly = True
      Size = 30
    end
    object db_MateriaPrimaOrigemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 200
    end
    object db_MateriaPrimaOrigemUND: TStringField
      FieldName = 'UND'
      ReadOnly = True
      Size = 30
    end
    object db_MateriaPrimaOrigemCOMPOSICAO_DESCRICAO: TStringField
      FieldName = 'COMPOSICAO_DESCRICAO'
      ReadOnly = True
      Size = 200
    end
    object db_MateriaPrimaOrigemDIMENSIONAMENTO: TStringField
      FieldName = 'DIMENSIONAMENTO'
      ReadOnly = True
      Size = 200
    end
    object db_MateriaPrimaOrigemCOR: TStringField
      FieldName = 'COR'
      ReadOnly = True
      Size = 30
    end
    object db_MateriaPrimaOrigemTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ReadOnly = True
      Size = 30
    end
    object db_MateriaPrimaOrigemQTDE: TBCDField
      FieldName = 'QTDE'
      ReadOnly = True
    end
    object db_MateriaPrimaOrigemQTDE_CONSUMOSTOTAL: TBCDField
      FieldName = 'QTDE_CONSUMOSTOTAL'
      ReadOnly = True
    end
    object db_MateriaPrimaOrigemVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
      ReadOnly = True
    end
    object db_MateriaPrimaOrigemVLR_CUSTOTOTAL: TBCDField
      FieldName = 'VLR_CUSTOTOTAL'
      ReadOnly = True
    end
    object db_MateriaPrimaOrigemESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      ReadOnly = True
    end
    object db_MateriaPrimaOrigemNECESSIDADE: TBCDField
      FieldName = 'NECESSIDADE'
      ReadOnly = True
    end
  end
  object ds_MateriaPrimaOrigem: TDataSource
    DataSet = db_MateriaPrimaOrigem
    Left = 512
    Top = 376
  end
  object db_MateriaPrimaGradeOrigem: TFDQuery
    MasterSource = ds_MateriaPrimaOrigem
    MasterFields = 'ORDEMPRODUCAO;REFERENCIA'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  VIEW_ORDEMPRODUCAO_MATERIAPRIMAGRADE'
      'WHERE'
      'ORDEMPRODUCAO=:ORDEMPRODUCAO'
      'AND REFERENCIA=:REFERENCIA'
      '--AND QTDE_CONSUMOSTOTAL>0')
    Left = 608
    Top = 352
    ParamData = <
      item
        Name = 'ORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object ds_MateriaPrimaGradeOrigem: TDataSource
    DataSet = db_MateriaPrimaGradeOrigem
    Left = 608
    Top = 384
  end
  object db_MateriaPrimaTecidosOrigem: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOS'
      'WHERE'
      'ORDEMPRODUCAO=:ORDEMPRODUCAO'
      '--AND'
      '--CODIGO=:IDREFERENCIA')
    Left = 776
    Top = 337
    ParamData = <
      item
        Name = 'ORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_MateriaPrimaTecidosOrigem: TDataSource
    DataSet = db_MateriaPrimaTecidosOrigem
    Left = 776
    Top = 368
  end
  object db_MateriaPrimaTecidosGradeOrigem: TFDQuery
    MasterSource = ds_MateriaPrimaTecidosOrigem
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  VIEW_ORDEMPRODUCAO_MATERIAPRIMATECIDOSGRADE'
      'WHERE'
      'ORDEMPRODUCAO=:ORDEMPRODUCAO'
      '  AND REFERENCIA=:REFERENCIA'
      '-- AND QTDE_CONSUMOSTOTAL>0')
    Left = 904
    Top = 336
    ParamData = <
      item
        Name = 'ORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object ds_MateriaPrimaTecidosGradeOrigem: TDataSource
    DataSet = db_MateriaPrimaTecidosGradeOrigem
    Left = 904
    Top = 368
  end
  object db_MateriaPrimaTecidosGradeSomar: TFDQuery
    MasterSource = ds_MateriaPrimaTecidos
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT  SUM(QUANTIDADE) AS QUANTIDADE FROM  PCP_ORDEMPRODUCAO_MP' +
        'TECIDOSGRADE'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'REFERENCIA=:REFERENCIA')
    Left = 696
    Top = 120
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
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object db_MateriaPrimaGradeSomar: TFDQuery
    MasterSource = ds_MateriaPrima
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT  SUM(QUANTIDADE) AS QUANTIDADE FROM  PCP_ORDEMPRODUCAO_MP' +
        'GRADE'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'REFERENCIA=:REFERENCIA')
    Left = 400
    Top = 296
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
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
