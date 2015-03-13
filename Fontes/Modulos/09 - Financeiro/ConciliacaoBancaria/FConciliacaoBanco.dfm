object FrmConciliacaoBanco: TFrmConciliacaoBanco
  Left = 294
  Top = 131
  Caption = 'Baixa de Documentos via Concilia'#231#227'o Banc'#225'ria'
  ClientHeight = 514
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 0
    Width = 749
    Height = 16
    Align = alTop
    TabOrder = 0
  end
  object PainelBotoes: TPanel
    Left = 0
    Top = 473
    Width = 749
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BorderStyle = bsSingle
    TabOrder = 1
    object BtnSair: TBitBtn
      Left = 85
      Top = 5
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'Sair'
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
      TabOrder = 1
      OnClick = BtnSairClick
    end
    object Imprimir: TBitBtn
      Left = 5
      Top = 5
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'imprimir ficha cadastral...'
      Caption = 'Processar...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ImprimirClick
    end
  end
  object GrupoArquivos2: TGroupBox
    Left = 535
    Top = 57
    Width = 214
    Height = 416
    Align = alRight
    Caption = 'Arquivo(s):'
    TabOrder = 2
    Visible = False
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 210
      Height = 90
      Align = alTop
      TabOrder = 0
      object Button1: TButton
        Left = 9
        Top = 8
        Width = 193
        Height = 25
        Caption = 'Selecionar Pasta...'
        TabOrder = 0
        OnClick = Button1Click
      end
      object FilterComboBox1: TFilterComboBox
        Left = 9
        Top = 48
        Width = 193
        Height = 21
        FileList = FileListBox1
        Filter = 'Retorno (*.RET)|*.ret|All files (*.*)|*.*'
        TabOrder = 1
      end
    end
    object FileListBox1: TFileListBox
      Left = 2
      Top = 105
      Width = 210
      Height = 309
      Align = alClient
      FileType = [ftHidden, ftNormal]
      ItemHeight = 13
      Mask = '*.ret'
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 57
    Width = 535
    Height = 416
    Align = alClient
    TabOrder = 3
    object GrupoArquivos1: TGroupBox
      Left = 2
      Top = 15
      Width = 531
      Height = 67
      Align = alTop
      Caption = 'Arquivo de Retorno:'
      TabOrder = 0
      Visible = False
      object SpeedButton1: TSpeedButton
        Left = 492
        Top = 38
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Glyph.Data = {
          E6000000424DE60000000000000076000000280000000E0000000E0000000100
          0400000000007000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33003333333333333300300000000333330000B7B7B7B03333000B0B7B7B7B03
          33000BB0B7B7B7B033000FBB0000000033000BFB0B0B0B0333000FBFBFBFB003
          33000BFBFBF00033330030BFBF03333333003800008333333300333333333333
          33003333333333333300}
        OnClick = SpeedButton1Click
      end
      object EditArquivo: TLabeledEdit
        Left = 7
        Top = 39
        Width = 482
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        EditLabel.Width = 84
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome do arquivo:'
        ReadOnly = True
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 82
      Width = 531
      Height = 104
      Align = alTop
      Caption = 'Detalhes do arquivo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 74
        Width = 184
        Height = 16
        Caption = 'Total de registros....:'
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 184
        Height = 16
        Caption = 'Numero do arquivo.....:'
      end
      object lblRegistos: TLabel
        Left = 200
        Top = 74
        Width = 8
        Height = 16
        Caption = '0'
      end
      object Label3: TLabel
        Left = 8
        Top = 26
        Width = 184
        Height = 16
        Caption = 'Data do arquivo.......:'
      end
      object lblData: TLabel
        Left = 200
        Top = 26
        Width = 80
        Height = 16
        Caption = '00/00/0000'
      end
      object lblNoarquivo: TLabel
        Left = 200
        Top = 48
        Width = 8
        Height = 16
        Caption = '0'
      end
    end
    object GroupBox5: TGroupBox
      Left = 2
      Top = 186
      Width = 531
      Height = 134
      Align = alTop
      Caption = 'Baixar nas seguintes instru'#231#245'es retornadas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object ChkB_06: TCheckBox
        Left = 16
        Top = 32
        Width = 300
        Height = 17
        Cursor = crHandPoint
        Caption = '[06] LIQUIDA'#199#195'O NORMAL'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = ChkB_06Click
      end
      object ChkB_08: TCheckBox
        Left = 16
        Top = 56
        Width = 300
        Height = 17
        Cursor = crHandPoint
        Caption = '[08] LIQUIDA'#199#195'O EM CART'#211'RIO'
        TabOrder = 1
      end
      object ChkB_09: TCheckBox
        Left = 16
        Top = 80
        Width = 300
        Height = 17
        Cursor = crHandPoint
        Caption = '[09] BAIXA SIMPLES'
        TabOrder = 2
      end
      object ChkB_10: TCheckBox
        Left = 16
        Top = 104
        Width = 300
        Height = 17
        Cursor = crHandPoint
        Caption = '[10] BAIXA POR TER SIDO LIQUIDADO'
        TabOrder = 3
      end
    end
  end
  object Tipobaixa: TRadioGroup
    Left = 0
    Top = 16
    Width = 749
    Height = 41
    Align = alTop
    Caption = 'Tipo de baixa'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      '1 por vez'
      'Quero selecionar varios arquivos')
    TabOrder = 4
    OnClick = TipobaixaClick
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'ret'
    Filter = 
      'Arquivo retorno (*.ret)|*.ret|Arquivo Texto (*.txt)|*.txt|Todos ' +
      'os Arquivos (*.*)|*.*'
    Left = 488
    Top = 8
  end
  object db_CtaReceber: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM  FIN_CTARECEBER'
      'WHERE'
      'DOCUMENTO=:DOCUMENTO')
    Left = 408
    Top = 88
    ParamData = <
      item
        Name = 'DOCUMENTO'
      end>
  end
end
