object FrmBalcaoProdutos: TFrmBalcaoProdutos
  Left = 200
  Top = 109
  BorderStyle = bsDialog
  Caption = 'Pesquisa de Produtos'
  ClientHeight = 453
  ClientWidth = 756
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 419
    Width = 756
    Height = 34
    Align = alBottom
    Alignment = taLeftJustify
    BevelInner = bvRaised
    BorderStyle = bsSingle
    Caption = '     ESC - Sair'
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 92
    Align = alTop
    TabOrder = 1
    object RDSelecao: TRadioGroup
      Left = 1
      Top = 1
      Width = 754
      Height = 44
      Align = alTop
      Caption = 'Localizar por:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '&C'#243'digo do Produto'
        '&Descri'#231#227'o do Produto')
      TabOrder = 0
      OnClick = RDSelecaoClick
    end
    object EditPesquisa: TLabeledEdit
      Left = 8
      Top = 63
      Width = 361
      Height = 21
      AutoSize = False
      CharCase = ecUpperCase
      EditLabel.Width = 61
      EditLabel.Height = 13
      EditLabel.Caption = 'EditPesquisa'
      LabelSpacing = 1
      MaxLength = 35
      TabOrder = 1
      OnChange = EditPesquisaChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 92
    Width = 756
    Height = 327
    Align = alClient
    Color = 14811135
    DataSource = DS_DADOS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 317
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UND'
        Title.Caption = 'Und:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAM'
        Title.Caption = 'Tam:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COR'
        Title.Caption = 'Cor:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        Title.Caption = 'Marca:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_TOTAL'
        Title.Caption = 'Estoque:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRC_VENDA'
        Title.Caption = 'Pre'#231'o:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCALIZACAO'
        Title.Caption = 'Localiza'#231#227'o:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 137
        Visible = True
      end>
  end
  object DS_DADOS: TDataSource
    DataSet = ADO_Produtos
    Left = 263
    Top = 175
  end
  object ADO_Produtos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM ESTOQUE'
      'ORDER BY DESCRICAO, UND, TAM')
    Left = 168
    Top = 174
    object ADO_ProdutosCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object ADO_ProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object ADO_ProdutosREF: TStringField
      FieldName = 'REF'
    end
    object ADO_ProdutosUND: TStringField
      FieldName = 'UND'
      FixedChar = True
      Size = 3
    end
    object ADO_ProdutosTAM: TStringField
      FieldName = 'TAM'
      FixedChar = True
      Size = 3
    end
    object ADO_ProdutosCOR: TStringField
      FieldName = 'COR'
      Size = 6
    end
    object ADO_ProdutosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 6
    end
    object ADO_ProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object ADO_ProdutosPRC_VENDA: TBCDField
      FieldName = 'PRC_VENDA'
      DisplayFormat = '###,##0.00'
      currency = True
    end
    object ADO_ProdutosQTD_TOTAL: TBCDField
      FieldName = 'QTD_TOTAL'
    end
  end
end
