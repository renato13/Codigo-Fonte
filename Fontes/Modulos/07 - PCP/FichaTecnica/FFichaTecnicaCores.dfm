object FrmFichaTecnicaCores: TFrmFichaTecnicaCores
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Grade de Cores'
  ClientHeight = 444
  ClientWidth = 504
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
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 387
    Width = 504
    Height = 57
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TabStop = True
    ExplicitTop = 387
    ExplicitWidth = 504
    ExplicitHeight = 57
    inherited W7Panel1: TPanel
      Width = 504
      Height = 57
      ExplicitWidth = 504
      ExplicitHeight = 57
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 0
    Width = 504
    Height = 387
    Align = alClient
    Caption = 'Grade de Cores:'
    TabOrder = 1
    object GridGradeCores: TDBGrid
      Left = 2
      Top = 15
      Width = 500
      Height = 370
      Align = alClient
      DataSource = BaseDados_PCP.ds_Cores_Modelos
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = GridGradeCoresKeyPress
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'ID_COR'
          Title.Caption = 'C'#243'digo:'
          Width = 58
          Visible = True
        end
        item
          Color = 14811135
          Expanded = False
          FieldName = 'NOME'
          ReadOnly = True
          Title.Caption = 'Descri'#231#227'o:'
          Width = 410
          Visible = True
        end>
    end
  end
end
