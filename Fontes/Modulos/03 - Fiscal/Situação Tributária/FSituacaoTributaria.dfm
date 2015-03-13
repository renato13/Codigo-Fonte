object FrmSituacaoTributaria: TFrmSituacaoTributaria
  Left = 215
  Top = 97
  BorderStyle = bsDialog
  Caption = 'Situa'#231#227'o Tribut'#225'ria'
  ClientHeight = 401
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 365
    Width = 590
    Height = 36
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BtnSair: TBitBtn
      Left = 14
      Top = 4
      Width = 85
      Height = 28
      Cursor = crHandPoint
      Caption = 'Sai&r'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0077FF77FF700F
        77FFFF77FF77F0B0FF7777FF77FF70B307FF00000007F0B330007777770000B3
        307777770708800330777777000880F03077777702088003307700000A2080B3
        3077AAAAAAA200B3307700000AA080B3307777770A0880B330777777000880BB
        307777770708880BB077777777088880B0777777770000000077}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnSairClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 590
    Height = 365
    Align = alClient
    Caption = 'Cadastro'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 586
      Height = 348
      Align = alClient
      DataSource = DS_DADOS
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#211'DIGO:'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'DESCRI'#199#195'O:'
          Width = 475
          Visible = True
        end>
    end
  end
  object DS_DADOS: TDataSource
    DataSet = DB_DADOS
    Left = 300
    Top = 72
  end
  object DB_DADOS: TFDQuery
    AfterOpen = DB_DADOSAfterOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_SITUACAO_TRIBUTARIA'
      'ORDER BY CODIGO')
    Left = 120
    Top = 71
  end
end
