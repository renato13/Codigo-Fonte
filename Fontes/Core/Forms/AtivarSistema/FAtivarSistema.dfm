object FrmAtivarSistema: TFrmAtivarSistema
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Registro do Sistema'
  ClientHeight = 135
  ClientWidth = 415
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 102
    Width = 415
    Height = 33
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      415
      33)
    object BtnAtivar: TButton
      Left = 205
      Top = 5
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Ativar'
      TabOrder = 0
      OnClick = BtnAtivarClick
    end
    object BtnSair: TButton
      Left = 311
      Top = 5
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 415
    Height = 102
    Align = alClient
    TabOrder = 0
    inline FrmFrameBarra1: TFrmFrameBarra
      Left = 1
      Top = 1
      Width = 413
      Height = 33
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 413
      ExplicitHeight = 33
      inherited W7Panel1: TPanel
        Width = 413
        Height = 33
        ExplicitWidth = 413
        ExplicitHeight = 33
        inherited LblBarraTitulo: TLabel
          Width = 207
          Caption = 'Ativa'#231#227'o online de Sistema'
          ExplicitWidth = 207
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 34
      Width = 413
      Height = 67
      Align = alClient
      BorderWidth = 2
      TabOrder = 0
      object Panel4: TPanel
        Left = 3
        Top = 96
        Width = 407
        Height = 136
        Enabled = False
        TabOrder = 1
        object Label2: TLabel
          Left = 24
          Top = 46
          Width = 197
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data de Ativa'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 23
          Top = 100
          Width = 197
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Limite de dias de uso:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 23
          Top = 73
          Width = 197
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data de validade desta ativa'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 24
          Top = 127
          Width = 197
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Limite de usu'#225'rios em rede:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblStatus: TLabel
          Left = 1
          Top = 1
          Width = 202
          Height = 19
          Align = alTop
          Alignment = taCenter
          Caption = 'Status do sistema:  indefinido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditLimiteUsuarios: TDBEdit
          Left = 226
          Top = 124
          Width = 80
          Height = 21
          BevelKind = bkFlat
          DataField = 'LIMITE_USUARIOS'
          DataSource = DS_AtivacaoLocal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object EditDataExpira: TDBEdit
          Left = 226
          Top = 70
          Width = 80
          Height = 21
          BevelKind = bkFlat
          DataField = 'VALIDADE_ATIVACAO'
          DataSource = DS_AtivacaoLocal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object EditLimiteDias: TEdit
          Left = 226
          Top = 97
          Width = 80
          Height = 21
          BevelKind = bkFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditDataInicial: TDBEdit
          Left = 226
          Top = 43
          Width = 80
          Height = 21
          BevelKind = bkFlat
          DataField = 'DATA_ATIVACAO'
          DataSource = DS_AtivacaoLocal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel5: TPanel
        Left = 3
        Top = 3
        Width = 407
        Height = 55
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 6
          Top = 7
          Width = 252
          Height = 13
          Caption = 'e-Mail utilizado na compra do sistema:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit10: TDBEdit
          Left = 6
          Top = 23
          Width = 371
          Height = 21
          BevelKind = bkFlat
          CharCase = ecLowerCase
          DataField = 'EMAIL'
          DataSource = DS_AtivacaoLocal
          TabOrder = 0
        end
      end
    end
  end
  object DS_AtivacaoRemota: TDataSource
    DataSet = db_AtivacaoRemota
    Left = 336
    Top = 48
  end
  object db_AtivacaoRemota: TFDQuery
    Connection = DBConexaoRemota
    SQL.Strings = (
      'select * from liberacoes'
      'where'
      'lower(email)=:email')
    Left = 216
    Top = 48
    ParamData = <
      item
        Name = 'EMAIL'
      end>
    object db_AtivacaoRemotaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_AtivacaoRemotaDATA_LIBERACAO: TDateField
      FieldName = 'DATA_LIBERACAO'
    end
    object db_AtivacaoRemotaDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object db_AtivacaoRemotaUSUARIOS: TIntegerField
      FieldName = 'USUARIOS'
    end
    object db_AtivacaoRemotaNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_AtivacaoRemotaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object db_AtivacaoRemotaSISTEMA: TStringField
      FieldName = 'SISTEMA'
      Size = 200
    end
    object db_AtivacaoRemotaLIBERADO: TStringField
      FieldName = 'LIBERADO'
      Size = 1
    end
    object db_AtivacaoRemotaultimo_acesso: TSQLTimeStampField
      FieldName = 'ultimo_acesso'
    end
    object db_AtivacaoRemotasistema_nome: TStringField
      FieldName = 'sistema_nome'
      Size = 200
    end
    object db_AtivacaoRemotasistema_versao: TStringField
      FieldName = 'sistema_versao'
      Size = 200
    end
    object db_AtivacaoRemotasistema_descricao: TStringField
      FieldName = 'sistema_descricao'
      Required = True
      Size = 200
    end
    object db_AtivacaoRemotasistema_tipo: TStringField
      FieldName = 'sistema_tipo'
      Size = 200
    end
  end
  object DBConexaoRemota: TFDConnection
    BeforeConnect = DBConexaoRemotaBeforeConnect
    Left = 96
    Top = 48
  end
  object db_AtivacaoLocal: TFDQuery
    AfterPost = db_AtivacaoLocalAfterPost
    AfterScroll = db_AtivacaoLocalAfterScroll
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PARAM_SERIE')
    Left = 112
    Top = 248
  end
  object DS_AtivacaoLocal: TDataSource
    DataSet = db_AtivacaoLocal
    Left = 32
    Top = 248
  end
end
