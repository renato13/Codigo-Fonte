object FrmPedidoVendaParcial: TFrmPedidoVendaParcial
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Entrega Parcial de Pedido'
  ClientHeight = 144
  ClientWidth = 178
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
  object Label1: TLabel
    Left = 8
    Top = 80
    Width = 14
    Height = 13
    Caption = ' %'
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 0
    Top = 0
    Width = 178
    Height = 65
    Align = alTop
    Caption = 'Pedido Parcial'
    Columns = 2
    DataField = 'ENTREGAPARCIAL'
    DataSource = FrmPedidoVenda.ds_Pedido
    Items.Strings = (
      'Sim'
      'N'#227'o')
    ParentBackground = True
    TabOrder = 0
    Values.Strings = (
      'S'
      'N')
  end
  object DBEdit1: TDBEdit
    Left = 28
    Top = 77
    Width = 121
    Height = 21
    DataField = 'ENTREGAPARCIALPERCENTUAL'
    DataSource = FrmPedidoVenda.ds_Pedido
    TabOrder = 1
  end
  object Button1: TButton
    Left = 28
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Aplicar'
    TabOrder = 2
    OnClick = Button1Click
  end
end
