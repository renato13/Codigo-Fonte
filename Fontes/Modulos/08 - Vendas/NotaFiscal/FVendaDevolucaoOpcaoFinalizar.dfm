object FrmVendaDevolucaoOpcaoFinalizar: TFrmVendaDevolucaoOpcaoFinalizar
  Left = 229
  Top = 107
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Devolu'#231#227'o de Produtos | Conclus'#227'o'
  ClientHeight = 343
  ClientWidth = 617
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 18
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 617
    Height = 33
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 617
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 617
      Height = 33
      ExplicitWidth = 617
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 617
        Height = 33
        Caption = 'Devolu'#231#227'o de Produtos | Conclus'#227'o'
        ExplicitWidth = 219
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 302
    Width = 617
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BtnOk: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BtnOkClick
    end
    object BtnSair: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
  object PnlValorDevolucao: TPanel
    Left = 0
    Top = 33
    Width = 617
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Valor da Devolu'#231#227'o: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object rdgOpcao: TDBRadioGroup
    Left = 0
    Top = 74
    Width = 617
    Height = 103
    Align = alTop
    Caption = 'O que fazer este valor?'
    DataField = 'DEVOLUCAOCREDITADA'
    DataSource = FrmVendaDevolucaoProdutos.ds_VendasDevolucao
    Items.Strings = (
      'Deixar como cr'#233'dito para o cliente'
      'N'#227'o creditar')
    ParentBackground = True
    TabOrder = 0
    Values.Strings = (
      'S'
      'N')
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 177
    Width = 617
    Height = 125
    Align = alClient
    Caption = 'Motivo da Devolu'#231#227'o'
    TabOrder = 1
    object DBMemo1: TDBMemo
      Left = 2
      Top = 20
      Width = 613
      Height = 103
      Align = alClient
      DataField = 'OBS1'
      DataSource = FrmVendaDevolucaoProdutos.ds_VendasDevolucao
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
end
