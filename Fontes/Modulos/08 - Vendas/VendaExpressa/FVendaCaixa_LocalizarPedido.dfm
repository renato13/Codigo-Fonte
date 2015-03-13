object FrmVendaCaixa_LocalizarPedido: TFrmVendaCaixa_LocalizarPedido
  Left = 218
  Top = 120
  BorderStyle = bsDialog
  Caption = 'Importar Or'#231'amento'
  ClientHeight = 374
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 332
    Width = 728
    Height = 42
    Align = alBottom
    BevelInner = bvRaised
    BorderStyle = bsSingle
    TabOrder = 1
    object BtnOk: TBitBtn
      Left = 2
      Top = 4
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'importa os dados do pedido'
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
      OnClick = BtnOkClick
    end
    object BtnSair: TBitBtn
      Left = 87
      Top = 4
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'Cancelar importa'#231#227'o do pedido'
      Caption = 'Cancelar'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0077FF77FF700F
        77FFFF77FF77F0B0FF7777FF77FF70B307FF00000007F0B330007777770000B3
        307777770708800330777777000880F03077777702088003307700000A2080B3
        3077AAAAAAA200B3307700000AA080B3307777770A0880B330777777000880BB
        307777770708880BB077777777088880B0777777770000000077}
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 91
    Align = alTop
    TabOrder = 0
    object RDSelecao: TRadioGroup
      Left = 1
      Top = 1
      Width = 726
      Height = 43
      Align = alTop
      Caption = 'Localizar por:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '&C'#243'digo'
        '&Nome de Cliente')
      TabOrder = 0
      OnClick = RDSelecaoClick
    end
    object EditPesquisa: TLabeledEdit
      Left = 8
      Top = 64
      Width = 361
      Height = 21
      AutoSize = False
      CharCase = ecUpperCase
      EditLabel.Width = 74
      EditLabel.Height = 13
      EditLabel.Caption = 'EditPesquisa'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clMaroon
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      LabelSpacing = 1
      MaxLength = 35
      TabOrder = 1
      OnChange = EditPesquisaChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 91
    Width = 728
    Height = 241
    Align = alClient
    Color = 14811135
    DataSource = DS_Pedido
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'PEDIDO_NUMERO'
        Title.Caption = 'Pedido'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENTREGA'
        Title.Caption = 'DT. Entrega'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome do Cliente'
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_PEDIDO'
        Title.Caption = 'Total Pedido'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROD_QTDE'
        Title.Caption = 'Qtde'
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PEDIDO_NATUREZA'
        Title.Caption = 'Tipo'
        Width = 32
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'VENDEDOR'
        Title.Caption = 'Vendedor'
        Width = 58
        Visible = True
      end>
  end
  object DS_Pedido: TDataSource
    DataSet = DB_PEDIDOS
    Left = 65
    Top = 173
  end
  object DB_PEDIDOS: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'Select A.FILIAL, A.PEDIDO_NUMERO, A.DATA, A.ENTREGA, A.PROD_QTDE' +
        ', A.TOTAL_PEDIDO, A.VENDEDOR, '
      'A.PEDIDO_NATUREZA, B.CODIGO, B.NOME '
      ' From PEDIDOS A, CLIENTES B '
      ' WHERE '
      ' a.FILIAL=:FILIAL'
      ' AND '
      ' B.CODIGO=A.COD_CLIENTE '
      ' AND '
      ' A.STATUS<>'#39'S'#39
      ' ORDER BY A.Data, A.PEDIDO_NUMERO')
    Left = 168
    Top = 168
    ParamData = <
      item
        Name = 'FILIAL'
      end>
  end
end
