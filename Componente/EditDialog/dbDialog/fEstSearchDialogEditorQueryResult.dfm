object FrmEstSearchDialogEditorQueryResult: TFrmEstSearchDialogEditorQueryResult
  Left = 330
  Top = 330
  Caption = 'Query result'
  ClientHeight = 284
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 483
    Height = 284
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = ' '
    TabOrder = 0
    object pnlButtons: TPanel
      Left = 2
      Top = 253
      Width = 479
      Height = 29
      Align = alBottom
      BevelOuter = bvNone
      BorderWidth = 2
      Caption = ' '
      TabOrder = 0
      DesignSize = (
        479
        29)
      object btnOK: TButton
        Left = 402
        Top = 2
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'OK'
        Default = True
        ModalResult = 1
        TabOrder = 0
      end
    end
    object pnlControls: TPanel
      Left = 2
      Top = 2
      Width = 479
      Height = 251
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 2
      Caption = ' '
      TabOrder = 1
      object grdDtsQueryResult: TDBGrid
        Left = 2
        Top = 2
        Width = 475
        Height = 247
        Align = alClient
        DataSource = dtsQueryResult
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = 'Calibri'
        TitleFont.Style = [fsBold]
      end
    end
  end
  object dtsQueryResult: TDataSource
    AutoEdit = False
    Left = 206
    Top = 150
  end
end
