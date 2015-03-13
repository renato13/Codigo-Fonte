object FrmEmpresaSelecionar: TFrmEmpresaSelecionar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selecionar Empresa'
  ClientHeight = 376
  ClientWidth = 734
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
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 734
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 734
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 734
      Height = 33
      ExplicitWidth = 734
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 149
        Caption = 'Selecionar Empresa'
        ExplicitWidth = 149
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 335
    Width = 734
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BtnSelecionar: TButton
      Left = 8
      Top = 6
      Width = 100
      Height = 25
      Caption = 'Enter-Selecionar'
      Default = True
      TabOrder = 0
      OnClick = BtnSelecionarClick
    end
    object BtnEditar: TButton
      Left = 120
      Top = 6
      Width = 100
      Height = 25
      Caption = 'F4-Editar'
      TabOrder = 1
      OnClick = BtnEditarClick
    end
    object BtnSair: TButton
      Left = 232
      Top = 6
      Width = 100
      Height = 25
      Caption = 'Esc-Sair'
      TabOrder = 2
      OnClick = BtnSairClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 734
    Height = 302
    Align = alClient
    DataSource = DS_Parametros
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'EMPRESA'
        Title.Caption = 'Empresa'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPRESA_NOME'
        Title.Caption = 'Raz'#227'o Social'
        Width = 208
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPRESA_NOME_FANTASIA'
        Title.Caption = 'Nome Fantasia'
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPRESA_FONE'
        Title.Caption = 'Fone:'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPRESA_CIDADE'
        Title.Caption = 'Cidade'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPRESA_UF'
        Title.Caption = 'UF'
        Width = 33
        Visible = True
      end>
  end
  object db_Parametros: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CONFIG_PARAMETROS'
      'ORDER BY EMPRESA')
    Left = 240
    Top = 72
  end
  object DS_Parametros: TDataSource
    DataSet = db_Parametros
    Left = 336
    Top = 72
  end
end
