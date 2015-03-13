object FrmComprasPagar: TFrmComprasPagar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Lan'#231'amento de Faturas a Pagar'
  ClientHeight = 394
  ClientWidth = 332
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
  object GroupBox5: TGroupBox
    Left = 0
    Top = 0
    Width = 332
    Height = 183
    Align = alClient
    Caption = '[ Lance nesta grade as Fatura '#224' Pagar ]'
    TabOrder = 0
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 328
      Height = 166
      Align = alClient
      DataSource = FrmCompras.DS_CtaPagar
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Caption = 'Documento/Parcela'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Caption = 'Vencimento'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 88
          Visible = True
        end>
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 183
    Width = 332
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 114
      Top = 10
      Width = 95
      Height = 25
      Hint = 'exclui somente a linha selecioanda'
      Caption = 'Excluir no cursor'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 215
      Top = 10
      Width = 95
      Height = 25
      Caption = 'Excluir tudo'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 224
    Width = 332
    Height = 129
    Align = alBottom
    Caption = '[ DESPESAS FRETE ]'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 328
      Height = 112
      Align = alClient
      DataSource = FrmCompras.ds_CtaPagarFrete
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Caption = 'Nota Fiscal'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Caption = 'Vencimento'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 88
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 353
    Width = 332
    Height = 41
    Align = alBottom
    TabOrder = 3
    object BitBtn4: TBitBtn
      Left = 114
      Top = 10
      Width = 95
      Height = 25
      Hint = 'exclui somente a linha selecioanda'
      Caption = 'Excluir no cursor'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 215
      Top = 10
      Width = 95
      Height = 25
      Caption = 'Excluir tudo'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 8
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Salvar e sair'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn6Click
    end
  end
end
