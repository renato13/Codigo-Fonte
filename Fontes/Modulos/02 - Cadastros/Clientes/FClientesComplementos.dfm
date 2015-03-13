object FrmClientesComplementos: TFrmClientesComplementos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Clientes'
  ClientHeight = 499
  ClientWidth = 743
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 458
    Width = 743
    Height = 41
    Align = alBottom
    TabOrder = 3
    object Button1: TButton
      Left = 16
      Top = 6
      Width = 137
      Height = 25
      Caption = '< Retornar (tecle ESC)'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 743
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label36: TLabel
      Left = 11
      Top = 13
      Width = 106
      Height = 13
      Caption = 'Filia'#231#227'o (Nome do Pai)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label37: TLabel
      Left = 192
      Top = 13
      Width = 112
      Height = 13
      Caption = 'Filia'#231#227'o (Nome da M'#227'e)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label35: TLabel
      Left = 376
      Top = 13
      Width = 60
      Height = 13
      Caption = 'Naturalidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit22: TDBEdit
      Left = 11
      Top = 28
      Width = 177
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FILIACAO_NOMEPAI'
      DataSource = BaseDados.DS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit23: TDBEdit
      Left = 192
      Top = 28
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FILIACAO_NOMEMAE'
      DataSource = BaseDados.DS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit21: TDBEdit
      Left = 376
      Top = 28
      Width = 154
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NATURALIDADE'
      DataSource = BaseDados.DS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 65
    Width = 743
    Height = 175
    Align = alTop
    Caption = 'Emprego:'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 45
      Height = 13
      Caption = 'Empresa:'
    end
    object Label2: TLabel
      Left = 341
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Fone:'
    end
    object Label3: TLabel
      Left = 16
      Top = 72
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label4: TLabel
      Left = 341
      Top = 72
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label5: TLabel
      Left = 16
      Top = 120
      Width = 33
      Height = 13
      Caption = 'Cargo:'
    end
    object Label6: TLabel
      Left = 341
      Top = 120
      Width = 88
      Height = 13
      Caption = 'Tempo de servi'#231'o:'
    end
    object Label7: TLabel
      Left = 627
      Top = 120
      Width = 60
      Height = 13
      Caption = 'Sal'#225'rio (R$):'
    end
    object Label8: TLabel
      Left = 627
      Top = 72
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 317
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMPREGO_EMPRESA'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 341
      Top = 40
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMPREGO_FONE'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 88
      Width = 317
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMPREGO_ENDERECO'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 341
      Top = 88
      Width = 276
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMPREGO_CIDADE'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 136
      Width = 317
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMPREGO_CARGO'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 341
      Top = 136
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMPREGO_TEMPO'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 627
      Top = 136
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMPREGO_SALARIO'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 627
      Top = 88
      Width = 42
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMPREGO_UF'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 7
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 240
    Width = 743
    Height = 218
    Align = alClient
    Caption = 'Conjuge:'
    TabOrder = 2
    object Label97: TLabel
      Left = 112
      Top = 21
      Width = 84
      Height = 13
      Caption = 'Nome da conjuge'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 11
      Top = 21
      Width = 55
      Height = 13
      Caption = 'Estado Civil'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 11
      Top = 61
      Width = 45
      Height = 13
      Caption = 'Empresa:'
    end
    object Label11: TLabel
      Left = 336
      Top = 61
      Width = 28
      Height = 13
      Caption = 'Fone:'
    end
    object Label12: TLabel
      Left = 11
      Top = 109
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label13: TLabel
      Left = 336
      Top = 109
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label14: TLabel
      Left = 11
      Top = 157
      Width = 33
      Height = 13
      Caption = 'Cargo:'
    end
    object Label15: TLabel
      Left = 336
      Top = 157
      Width = 88
      Height = 13
      Caption = 'Tempo de servi'#231'o:'
    end
    object Label16: TLabel
      Left = 627
      Top = 157
      Width = 60
      Height = 13
      Caption = 'Sal'#225'rio (R$):'
    end
    object Label17: TLabel
      Left = 627
      Top = 109
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object CbEstCivil: TDBComboBox
      Left = 11
      Top = 36
      Width = 96
      Height = 21
      Style = csDropDownList
      DataField = 'ESTADO_CIVIL'
      DataSource = BaseDados.DS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Casado(a)'
        'Solteiro(a)'
        'Vi'#250'vo(a)'
        'Separado(a)'
        'Divorciado(a)'
        'Outros(as)')
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit37: TDBEdit
      Left = 112
      Top = 36
      Width = 620
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONJUGE_NOME'
      DataSource = BaseDados.DS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit9: TDBEdit
      Left = 11
      Top = 77
      Width = 317
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONJUGE_EMPRESA'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 336
      Top = 77
      Width = 121
      Height = 21
      DataField = 'CONJUGE_FONE'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 3
    end
    object DBEdit11: TDBEdit
      Left = 11
      Top = 125
      Width = 317
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONJUGE_ENDERECO'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 4
    end
    object DBEdit12: TDBEdit
      Left = 336
      Top = 125
      Width = 276
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONJUGE_CIDADE'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 5
    end
    object DBEdit13: TDBEdit
      Left = 11
      Top = 173
      Width = 317
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONJUGE_CARGO'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 6
    end
    object DBEdit14: TDBEdit
      Left = 336
      Top = 173
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONJUGE_TEMPO'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 7
    end
    object DBEdit15: TDBEdit
      Left = 627
      Top = 173
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONJUGE_SALARIO'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 8
    end
    object DBEdit16: TDBEdit
      Left = 627
      Top = 125
      Width = 42
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONJUGE_UF'
      DataSource = BaseDados.DS_Clientes
      TabOrder = 9
    end
  end
end
