object FrmProdutosQuantidadeGrade: TFrmProdutosQuantidadeGrade
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estoque | Grade'
  ClientHeight = 316
  ClientWidth = 591
  Color = clWhite
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
  object Panel1: TPanel
    Left = 0
    Top = 289
    Width = 591
    Height = 27
    Align = alBottom
    Caption = 'ESC - Sair'
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 591
    Height = 289
    Align = alClient
    Color = clBtnFace
    DataSource = ds_EstoqueGrade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
  end
  object ds_EstoqueGrade: TDataSource
    DataSet = db_EstoqueGrade
    Left = 96
    Top = 48
  end
  object db_EstoqueGrade: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES')
    Left = 243
    Top = 48
  end
end
