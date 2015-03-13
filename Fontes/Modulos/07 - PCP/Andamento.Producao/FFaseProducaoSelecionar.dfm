object FrmFaseProducaoSelecionar: TFrmFaseProducaoSelecionar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Grade de Quantidades'
  ClientHeight = 340
  ClientWidth = 943
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 77
    Width = 943
    Height = 222
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 941
      Height = 220
      Align = alClient
      Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
          FieldName = 'ORDEMPRODUCAO'
          Title.Caption = 'ORDEM PRODU'#199#195'O:'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'DATA:'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FASE_NOME'
          Title.Caption = 'FASE:'
          Width = 217
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE_ENVIADA'
          Title.Caption = 'QTDE PRODUZIR:'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TERCEIRIZADO_NOME'
          Title.Caption = 'TERCEIRIZADO:'
          Width = 206
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATARETORNO'
          Title.Caption = 'DATA RETORNO:'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_UNITARIO'
          Title.Caption = 'VALOR UNIT PAGAR:'
          Width = 113
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 299
    Width = 943
    Height = 41
    Hint = 'clique em dos bot'#245'es'
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object btnEditar: TBitBtn
      Left = 9
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Editar Transfer'#234'ncia Selecionada'
      Caption = 'Editar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object btnNovo: TBitBtn
      Left = 90
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Criar uma nova Transfer'#234'ncia'
      Caption = 'Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object btnCancelar: TBitBtn
      Left = 252
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Cancelar/Sair'
      Caption = 'Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object btnExcluir: TButton
      Left = 171
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 36
    Width = 943
    Height = 41
    Align = alTop
    Enabled = False
    TabOrder = 2
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 943
    Height = 36
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 943
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 943
      ExplicitWidth = 943
      inherited LblBarraTitulo: TLabel
        Width = 181
        Caption = 'Transfer'#234'ncia existente:'
        ExplicitWidth = 181
      end
    end
  end
  object db_Deletar: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'DELETE FROM PCP_FASETRANSFERENCIA'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'ORDEMPRODUCAO=:ORDEMPRODUCAO'
      'AND'
      'FASE=:FASE'
      'AND'
      'ENCERRADO='#39'N'#39)
    Left = 504
    Top = 155
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FASE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_DeletarEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      ReadOnly = True
      Required = True
    end
    object db_DeletarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_DeletarORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      ReadOnly = True
      Required = True
    end
    object db_DeletarDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ReadOnly = True
      Required = True
    end
    object db_DeletarDATARETORNO: TSQLTimeStampField
      FieldName = 'DATARETORNO'
      Required = True
    end
    object db_DeletarTERCEIRIZADO: TIntegerField
      FieldName = 'TERCEIRIZADO'
      ReadOnly = True
      Required = True
    end
    object db_DeletarTERCEIRIZADO_NOME: TStringField
      FieldName = 'TERCEIRIZADO_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_DeletarFASE: TIntegerField
      FieldName = 'FASE'
      ReadOnly = True
      Required = True
    end
    object db_DeletarFASE_NOME: TStringField
      FieldName = 'FASE_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_DeletarTERCEIRIZADOORIGEM: TIntegerField
      FieldName = 'TERCEIRIZADOORIGEM'
      ReadOnly = True
    end
    object db_DeletarTERCEIRIZADOORIGEM_NOME: TStringField
      FieldName = 'TERCEIRIZADOORIGEM_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_DeletarDATARETORNOORIGEM: TSQLTimeStampField
      FieldName = 'DATARETORNOORIGEM'
    end
    object db_DeletarFASEORIGEM: TIntegerField
      FieldName = 'FASEORIGEM'
      ReadOnly = True
    end
    object db_DeletarFASEORIGEM_NOME: TStringField
      FieldName = 'FASEORIGEM_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_DeletarQTDE_ENVIADA: TIntegerField
      FieldName = 'QTDE_ENVIADA'
      ReadOnly = True
      DisplayFormat = '###,##0'
    end
    object db_DeletarQTDE_RETORNADA: TIntegerField
      FieldName = 'QTDE_RETORNADA'
      ReadOnly = True
      DisplayFormat = '###,##0'
    end
    object db_DeletarQTDE_PERDAS: TIntegerField
      FieldName = 'QTDE_PERDAS'
      ReadOnly = True
      DisplayFormat = '###,##0'
    end
    object db_DeletarQTDE_DEFEITOS: TIntegerField
      FieldName = 'QTDE_DEFEITOS'
      ReadOnly = True
      DisplayFormat = '###,##0'
    end
    object db_DeletarVLR_UNITARIO: TBCDField
      FieldName = 'VLR_UNITARIO'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object db_DeletarOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ReadOnly = True
      Size = 5000
    end
    object db_DeletarENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      ReadOnly = True
      Size = 10
    end
    object db_DeletarGEROUPAGAMENTO: TStringField
      FieldName = 'GEROUPAGAMENTO'
      ReadOnly = True
      Size = 10
    end
  end
end
