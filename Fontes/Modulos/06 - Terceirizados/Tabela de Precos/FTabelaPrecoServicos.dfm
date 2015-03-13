object FrmTabelaPrecoServicos: TFrmTabelaPrecoServicos
  Left = 0
  Top = 1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tabela de Pre'#231'os | Servi'#231'os Terceirizados'
  ClientHeight = 497
  ClientWidth = 546
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 432
    Width = 546
    Height = 65
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TabStop = True
    ExplicitTop = 432
    ExplicitWidth = 546
    ExplicitHeight = 65
    inherited W7Panel1: TPanel
      Width = 546
      Height = 65
      ExplicitWidth = 546
      ExplicitHeight = 65
      inherited SpbExtra: TSpeedButton
        Top = 4
        ExplicitTop = 4
      end
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
      end
      inherited SpbImprimir: TSpeedButton
        Visible = False
      end
      inherited SpbProcurar: TSpeedButton
        Visible = False
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
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 546
    Height = 33
    Align = alTop
    AutoSize = True
    TabOrder = 1
    ExplicitWidth = 546
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 546
      Height = 33
      ExplicitWidth = 546
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 309
        Caption = 'Tabela de Pre'#231'os | Servi'#231'os Terceirizados'
        ExplicitWidth = 309
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 33
    Width = 546
    Height = 399
    Align = alClient
    Caption = 'Grade de Valores'
    TabOrder = 2
    object dbGrid_Tabela: TDBGrid
      Left = 2
      Top = 15
      Width = 542
      Height = 382
      Hint = 'clique aqui com o bot'#227'o direito do mouse'
      HelpType = htKeyword
      TabStop = False
      Align = alClient
      Ctl3D = True
      DataSource = ds_TabelaPreco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = dbGrid_TabelaKeyPress
      Columns = <
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'DATA_ATUALIZADA'
          ReadOnly = True
          Title.Caption = 'Data:'
          Width = 62
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Servi'#231'o:'
          Width = 342
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_UNIT'
          Title.Caption = 'Valor:'
          Width = 100
          Visible = True
        end>
    end
  end
  object db_TabelaPreco: TFDQuery
    BeforePost = db_TabelaPrecoBeforePost
    OnNewRecord = db_TabelaPrecoNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM TPRECOSERVICO')
    Left = 108
    Top = 206
    object db_TabelaPrecoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_TabelaPrecoDATA_ATUALIZADA: TSQLTimeStampField
      FieldName = 'DATA_ATUALIZADA'
      Required = True
      EditMask = '99/99/9999'
    end
    object db_TabelaPrecoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object db_TabelaPrecoVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
      Required = True
      DisplayFormat = '###,##0.000'
      EditFormat = '###,##0.000'
    end
  end
  object ds_TabelaPreco: TDataSource
    DataSet = db_TabelaPreco
    Left = 108
    Top = 264
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 200
    object mnuPreenchergradea: TMenuItem
      Caption = 'Preencher grade automaticamente'
      OnClick = mnuPreenchergradeaClick
    end
  end
  object db_TabelaInserts: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'INSERT INTO TPRECOSERVICO (DATA_ATUALIZADA, NOME, VLR_UNIT) VALU' +
        'ES (GETDATE(), :SNOME, 0)')
    Left = 276
    Top = 262
    ParamData = <
      item
        Name = 'SNOME'
      end>
  end
end
