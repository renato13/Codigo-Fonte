object FrmReajustePreco: TFrmReajustePreco
  Left = 279
  Top = 147
  BorderStyle = bsDialog
  Caption = 'Reajuste de Pre'#231'os'
  ClientHeight = 246
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 467
    Height = 212
    Align = alClient
    TabOrder = 0
    object Label7: TLabel
      Left = 12
      Top = 180
      Width = 51
      Height = 13
      Caption = 'Percentual'
    end
    object Bevel1: TBevel
      Left = 1
      Top = 157
      Width = 465
      Height = 53
      Align = alTop
      Shape = bsFrame
    end
    object RG_Local: TRadioGroup
      Left = 1
      Top = 1
      Width = 465
      Height = 34
      Hint = 'Reajuste no Cadastro de Produtos ou nas Tabelas de Pre'#231'os'
      Align = alTop
      Caption = 'Local'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Produtos'
        'Tabelas de Pre'#231'os')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 35
      Width = 465
      Height = 88
      Align = alTop
      Caption = 'Sele'#231#227'o'
      TabOrder = 1
      object Label1: TLabel
        Left = 9
        Top = 21
        Width = 33
        Height = 13
        Caption = 'Tabela'
      end
      object Label2: TLabel
        Left = 9
        Top = 43
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      object Label3: TLabel
        Left = 9
        Top = 65
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
      end
      object Edit_tabela: TEdit
        Left = 68
        Top = 17
        Width = 50
        Height = 21
        TabOrder = 0
      end
      object Edit_grupo: TEdit
        Left = 68
        Top = 39
        Width = 50
        Height = 21
        TabOrder = 1
      end
      object Edit_forn: TEdit
        Left = 68
        Top = 61
        Width = 50
        Height = 21
        TabOrder = 2
      end
    end
    object RG_Tipo: TRadioGroup
      Left = 1
      Top = 123
      Width = 465
      Height = 34
      Hint = 'Acrescentar ou Descontar Percentual ao Valor ?'
      Align = alTop
      Caption = 'Tipo'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Acr'#233'cimo'
        'Desconto')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = True
    end
    object DBEdit_perc: TDBEdit
      Left = 73
      Top = 176
      Width = 41
      Height = 21
      DataField = 'FLOAT_LIVRE'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 212
    Width = 467
    Height = 34
    Align = alBottom
    TabOrder = 1
    object BtnSair: TBitBtn
      Left = 381
      Top = 3
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'Sair'
      Caption = 'Sai&r'
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0077FF77FF700F
        77FFFF77FF77F0B0FF7777FF77FF70B307FF00000007F0B330007777770000B3
        307777770708800330777777000880F03077777702088003307700000A2080B3
        3077AAAAAAA200B3307700000AA080B3307777770A0880B330777777000880BB
        307777770708880BB077777777088880B0777777770000000077}
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnSairClick
    end
    object BtnReajustar: TBitBtn
      Left = 7
      Top = 3
      Width = 80
      Height = 28
      Caption = 'Reajustar'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333338383333333000000B0B0000003333333F3F8333333000B0BBBBBB
        00003333F8FFFFF883333000BBBBBBBBB0003333FFFFFFFFF8333000BB0B0B0B
        B0003333F88F8F3FF8333000B00B0B0BB0003333F83F8F3FF8333000000B0BBB
        B0003333333F8FFF88333000000BBBBB00003333333FFFF8833330000BBBBBB0
        000033333FFFFF8833333000BBBB0B0000003333FFF88F3333333000BB0B0B00
        B0003333FF838F33F8333000BB0B0B0BB0003333FF838F3FF8333000BBBBBBBB
        B0003333FFFFFFFFF83330000BBBBBB0B00033333FFFFFF8F8333000000B0B00
        00003333333F8F83333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
end
