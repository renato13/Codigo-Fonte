object FrmPedidoVendaTecidos: TFrmPedidoVendaTecidos
  Left = 229
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Pedido de Venda | Vincular Tecidos a Refer'#234'ncia'
  ClientHeight = 520
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 793
    Height = 33
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 793
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      inherited LblBarraTitulo: TLabel
        Width = 367
        Caption = 'Pedido de Venda | Vincular Tecidos a Refer'#234'ncia'
        ExplicitWidth = 367
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 479
    Width = 793
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BtnOk: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
      OnClick = BtnOkClick
    end
    object BtnSair: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 128
    Width = 793
    Height = 351
    Align = alClient
    Caption = 'Selecione o tecido que deseja vincular'
    TabOrder = 1
    object DBAdvGrid2: TDBGrid
      Left = 2
      Top = 20
      Width = 789
      Height = 329
      Align = alClient
      DataSource = FrmPedidoVenda.dsReferenciaTecidos
      DrawingStyle = gdsClassic
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -15
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      Columns = <
        item
          Color = clWindow
          Expanded = False
          Width = 20
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'PRODUTO'
          Width = 113
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 284
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'UNIDADE'
          Width = 57
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'ESTOQUESALDO'
          Width = 84
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'CONSUMO'
          Width = 80
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'QTDEBAIXAR'
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWindow
          Expanded = False
          FieldName = 'SELECIONADO'
          Width = 38
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 793
    Height = 95
    Align = alTop
    TabOrder = 0
    object RDSelecao: TRadioGroup
      Left = 1
      Top = 1
      Width = 791
      Height = 48
      Align = alTop
      Caption = 'Localizar por:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        '&Refer'#234'ncia'
        '&Descri'#231#227'o do Produto')
      TabOrder = 0
      OnClick = RDSelecaoClick
    end
    object EditPesquisa: TLabeledEdit
      Left = 8
      Top = 68
      Width = 361
      Height = 21
      AutoSize = False
      CharCase = ecUpperCase
      EditLabel.Width = 79
      EditLabel.Height = 18
      EditLabel.Caption = 'EditPesquisa'
      LabelSpacing = 1
      MaxLength = 35
      TabOrder = 1
      OnChange = EditPesquisaChange
    end
  end
end
