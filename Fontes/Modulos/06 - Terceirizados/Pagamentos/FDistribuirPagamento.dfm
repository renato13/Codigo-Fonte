object FrmDistribuirPagamento: TFrmDistribuirPagamento
  Left = 1
  Top = 1
  Caption = 'Terceirizado | Gerar Pagamento'
  ClientHeight = 499
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvGroupBox1: TGroupBox
    Left = 0
    Top = 91
    Width = 865
    Height = 347
    Align = alClient
    Caption = 'Edi'#231#227'o de Pedidos'
    TabOrder = 1
    object DBAdvGrid1: TDBGrid
      Left = 3
      Top = 16
      Width = 859
      Height = 328
      Align = alClient
      Color = clBtnFace
      DataSource = ds_Distribuir
      DrawingStyle = gdsClassic
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Color = clWindow
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 20
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'CODIGO'
          Width = 56
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'DATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 63
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'DATAENCERRAMENTO'
          Width = 75
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'FORNECEDOR_NOME'
          Width = 235
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'QTDE_REMESSA'
          Width = 65
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'QTDE_RETORNO'
          Width = 65
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'QTDE_RESTANTE'
          Width = 65
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'VLR_TOTALPAGAR'
          Width = 87
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clBtnFace
          Expanded = False
          FieldName = 'GEROUPAGAMENTO'
          Width = 107
          Visible = True
        end>
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 438
    Width = 865
    Height = 61
    Align = alBottom
    AutoSize = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 438
    ExplicitWidth = 865
    ExplicitHeight = 61
    inherited W7Panel1: TPanel
      Width = 865
      Height = 61
      ExplicitWidth = 865
      ExplicitHeight = 61
      inherited SpbSalvar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSalvarClick
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 865
    Height = 33
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 865
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 865
      Height = 33
      ExplicitWidth = 865
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 399
        Caption = 'Terceirizado | Gerar Pagamento | Parcial ou Intregral'
        ExplicitWidth = 399
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 865
    Height = 58
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 100
      Height = 13
      Caption = 'Data de Vencimento:'
    end
    object Label8: TLabel
      Left = 140
      Top = 8
      Width = 114
      Height = 13
      Caption = 'Especie de Documento:'
    end
    object EditVencimento: TMaskEdit
      Left = 16
      Top = 24
      Width = 112
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '01/01/2012'
    end
    object ComboFormaPagamento: TComboBox
      Left = 140
      Top = 24
      Width = 157
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'A PRAZO'
      Items.Strings = (
        'A VISTA'
        'A PRAZO'
        'CARTAO'
        'DUPLICATA'
        'BOLETO'
        'DDA'
        'CHEQUE'
        'CARTEIRA'
        'TICKET')
    end
  end
  object db_DistribuirGerarPagamento: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM VIEW_DISTRIBUIR_PAGAMENTOS'
      '--WHERE CODIGO=:CODIGO')
    Left = 121
    Top = 208
    object db_DistribuirGerarPagamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_DistribuirGerarPagamentoORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_DistribuirGerarPagamentoFASE: TIntegerField
      FieldName = 'FASE'
    end
    object db_DistribuirGerarPagamentoFASE_NOME: TStringField
      FieldName = 'FASE_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirGerarPagamentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object db_DistribuirGerarPagamentoDATARETORNO: TSQLTimeStampField
      FieldName = 'DATARETORNO'
    end
    object db_DistribuirGerarPagamentoDATAENCERRAMENTO: TSQLTimeStampField
      FieldName = 'DATAENCERRAMENTO'
      ReadOnly = True
    end
    object db_DistribuirGerarPagamentoFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object db_DistribuirGerarPagamentoFORNECEDOR_NOME: TStringField
      FieldName = 'FORNECEDOR_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirGerarPagamentoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object db_DistribuirGerarPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirGerarPagamentoQTDE_REMESSA: TIntegerField
      FieldName = 'QTDE_REMESSA'
      DisplayFormat = '###,##0'
    end
    object db_DistribuirGerarPagamentoQTDE_RETORNO: TIntegerField
      FieldName = 'QTDE_RETORNO'
      DisplayFormat = '###,##0'
    end
    object db_DistribuirGerarPagamentoQTDE_RESTANTE: TIntegerField
      FieldName = 'QTDE_RESTANTE'
      ReadOnly = True
      DisplayFormat = '###,##0'
    end
    object db_DistribuirGerarPagamentoVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.00'
    end
    object db_DistribuirGerarPagamentoVLR_TOTALPAGAR: TBCDField
      FieldName = 'VLR_TOTALPAGAR'
      DisplayFormat = '###,##0.00'
    end
    object db_DistribuirGerarPagamentoCONCLUIDO: TBCDField
      FieldName = 'CONCLUIDO'
      ReadOnly = True
      DisplayFormat = '###,##0.00%'
    end
    object db_DistribuirGerarPagamentoGEROUPAGAMENTO: TStringField
      FieldName = 'GEROUPAGAMENTO'
      ReadOnly = True
      Required = True
      Size = 3
    end
  end
  object ds_Distribuir: TDataSource
    AutoEdit = False
    DataSet = db_DistribuirGerarPagamento
    Left = 123
    Top = 256
  end
  object db_DistribuirBaixar: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'UPDATE PCP_DISTRIBUIR SET STATUS=:ACAO,'
      'DATAENCERRAMENTO   =getdate(),'
      'RESPONSAVEL =:RESPONSAVEL,'
      'OBSERVACAO=:OBSERVACAO'
      'WHERE CODIGO=:CODIGO')
    Left = 289
    Top = 208
    ParamData = <
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'RESPONSAVEL'
      end
      item
        Name = 'OBSERVACAO'
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SPOP_DISTRIBUIR_PAGAR: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPOP_DISTRIBUIR_PAGAR'
    Left = 288
    Top = 280
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'NREMESSA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NFORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DVENCIMENTO'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'STIPOPAGMENTO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'NVALOR'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
