object FrmVisualizarParcelas: TFrmVisualizarParcelas
  Left = 315
  Top = 125
  BorderStyle = bsDialog
  Caption = 'Visualizar Parcelas [contas a receber]'
  ClientHeight = 418
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 73
    Width = 491
    Height = 291
    Align = alClient
    Caption = 'Parcelas/Faturas'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 487
      Height = 274
      Align = alClient
      DataSource = DS_CtaReceber
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Color = 14811135
          Expanded = False
          FieldName = 'NRO_NOTA'
          ReadOnly = True
          Title.Caption = 'Nota Fiscal'
          Width = 75
          Visible = True
        end
        item
          Color = 14811135
          Expanded = False
          FieldName = 'DOCUMENTO'
          ReadOnly = True
          Title.Caption = 'Documento'
          Width = 82
          Visible = True
        end
        item
          Color = 14811135
          Expanded = False
          FieldName = 'DATA'
          ReadOnly = True
          Title.Caption = 'Emiss'#227'o'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENC'
          Title.Caption = 'Vencimento'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 89
          Visible = True
        end
        item
          Color = 14811135
          Expanded = False
          FieldName = 'QUITADO'
          ReadOnly = True
          Title.Caption = 'Status:'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 491
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label8: TLabel
      Left = 5
      Top = 18
      Width = 32
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit4: TDBEdit
      Left = 6
      Top = 32
      Width = 454
      Height = 21
      BevelKind = bkFlat
      Color = 14811135
      DataField = 'NomeCliente'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object PainelBotoes: TPanel
    Left = 0
    Top = 364
    Width = 491
    Height = 54
    Align = alBottom
    TabOrder = 2
    object BtnSair: TBitBtn
      Left = 99
      Top = 5
      Width = 95
      Height = 45
      Cursor = crHandPoint
      Hint = 'sair da gera'#231#227'o de parcelas'
      Caption = 'Sair'
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnSairClick
    end
    object BtnGerar: TBitBtn
      Left = 4
      Top = 5
      Width = 95
      Height = 45
      Cursor = crHandPoint
      Hint = 'gerar parcelas '#224' partir da forma de pagamento selecionada'
      Caption = '&Salvar'
      Default = True
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnGerarClick
    end
  end
  object DS_CtaReceber: TDataSource
    DataSet = db_CtaReceber
    Left = 152
    Top = 248
  end
  object db_CtaReceber: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CTA_RECEBER'
      'WHERE'
      'FILIAL=:FILIAL'
      'AND'
      'NRO_NOTA=:NRO_NOTA')
    Left = 64
    Top = 248
    ParamData = <
      item
        Name = 'FILIAL'
      end
      item
        Name = 'NRO_NOTA'
      end>
    object db_CtaReceberCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_CtaReceberCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object db_CtaReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object db_CtaReceberDATA: TDateField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_CtaReceberVENC: TDateField
      FieldName = 'VENC'
      EditMask = '99/99/9999'
    end
    object db_CtaReceberVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaReceberQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object db_CtaReceberFPAGTO: TStringField
      FieldName = 'FPAGTO'
      Size = 6
    end
    object db_CtaReceberVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object db_CtaReceberPLANO_C: TStringField
      FieldName = 'PLANO_C'
      Size = 14
    end
    object db_CtaReceberNRO_NOTA: TStringField
      FieldName = 'NRO_NOTA'
      Size = 8
    end
    object db_CtaReceberGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      Size = 1
    end
    object db_CtaReceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
  end
end
