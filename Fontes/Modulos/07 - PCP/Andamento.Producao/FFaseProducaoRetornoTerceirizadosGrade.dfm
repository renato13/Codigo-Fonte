object FrmFaseProducaoRetornoTerceirizadosGrade: TFrmFaseProducaoRetornoTerceirizadosGrade
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Grade de Quantidades'
  ClientHeight = 421
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 375
    Height = 339
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 373
      Height = 337
      Align = alClient
      DataSource = FrmFaseProducaoRetornoTerceirizados.ds_AndamentoReferencias
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Color = clSilver
          Expanded = False
          FieldName = 'COR'
          ReadOnly = True
          Title.Caption = 'COR:'
          Title.Color = clSilver
          Width = 194
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'TAMANHO'
          ReadOnly = True
          Title.Caption = 'TAMANHO:'
          Title.Color = clSilver
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE_ENVIADA'
          Title.Caption = 'QUANTIDADE:'
          Width = 75
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 380
    Width = 375
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 9
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Ok'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 375
    Height = 41
    Align = alTop
    Enabled = False
    TabOrder = 2
  end
end
