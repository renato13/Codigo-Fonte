object FrmFormaPagto: TFrmFormaPagto
  Left = 0
  Top = 1
  BorderStyle = bsDialog
  Caption = 'Formas de Pagamento'
  ClientHeight = 470
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PgFPagto: TPageControl
    Left = 0
    Top = 33
    Width = 608
    Height = 376
    ActivePage = TabEditar
    Align = alClient
    TabOrder = 0
    object TabRegistros: TTabSheet
      Caption = 'Registros'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 600
        Height = 348
        Align = alClient
        Color = 14811135
        DataSource = DS_FormaPagto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 328
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ACRESCIMO'
            Title.Caption = 'Acr'#233'scimo %'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Caption = 'Desconto %'
            Width = 70
            Visible = True
          end>
      end
    end
    object TabEditar: TTabSheet
      Caption = 'Editar'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBRG_arredond: TDBRadioGroup
        Left = 0
        Top = 285
        Width = 600
        Height = 63
        Align = alBottom
        Caption = 'Centavos'
        Columns = 2
        DataField = 'ARREDONDAR'
        DataSource = DS_FormaPagto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Primeira Parcela'
          #218'ltima Parcela')
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          'P'
          'U')
        Visible = False
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 600
        Height = 285
        Align = alClient
        TabOrder = 0
        object Label7: TLabel
          Left = 86
          Top = 67
          Width = 60
          Height = 13
          Caption = 'Desconto %:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 6
          Top = 16
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 86
          Top = 16
          Width = 28
          Height = 13
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 6
          Top = 67
          Width = 63
          Height = 13
          Caption = 'Acr'#233'scimo %:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 166
          Top = 67
          Width = 35
          Height = 13
          Caption = 'Dia fixo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 237
          Top = 67
          Width = 72
          Height = 13
          Caption = 'Parcela Minima'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit_Multiplicador: TDBEdit
          Left = 86
          Top = 81
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCONTO'
          DataSource = DS_FormaPagto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit_nome: TDBEdit
          Left = 86
          Top = 31
          Width = 307
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DS_FormaPagto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 6
          Top = 31
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODIGO'
          DataSource = DS_FormaPagto
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit_indice: TDBEdit
          Left = 6
          Top = 81
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ACRESCIMO'
          DataSource = DS_FormaPagto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object GroupBox1: TGroupBox
          Left = 496
          Top = 15
          Width = 102
          Height = 268
          Align = alRight
          Caption = 'Prazos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 98
            Height = 251
            Align = alClient
            DataSource = DS_Prazos
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnEnter = DBGrid1Enter
            Columns = <
              item
                Expanded = False
                FieldName = 'DIAS'
                Title.Caption = 'Dias'
                Width = 60
                Visible = True
              end>
          end
        end
        object DBCheckBox1: TDBCheckBox
          Left = 8
          Top = 108
          Width = 119
          Height = 17
          Cursor = crHandPoint
          Caption = 'Arredondar Valor'
          DataField = 'ARRED_SN'
          DataSource = DS_FormaPagto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit2: TDBEdit
          Left = 166
          Top = 81
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VENCIMENTO_DIA'
          DataSource = DS_FormaPagto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 5
          Top = 131
          Width = 390
          Height = 148
          Caption = 'Tipo de pagamento'
          Columns = 2
          DataField = 'TIPO_PAGAMENTO'
          DataSource = DS_FormaPagto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Dinheiro'
            #192' Vista (diversos)'
            'A Prazo'
            'Cartao Credito'
            'Duplicata'
            'Boleto'
            'DDA'
            'Cheque'
            'Carteira'
            'Ticket')
          ParentFont = False
          TabOrder = 7
          Values.Strings = (
            'DINHEIRO'
            'A VISTA'
            'A PRAZO'
            'CARTAO'
            'DUPLICATA'
            'BOLETO'
            'DDA'
            'CHEQUE'
            'CARTEIRA'
            'TICKET')
        end
        object DBEdit3: TDBEdit
          Left = 237
          Top = 81
          Width = 84
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PARCELAMINIMA'
          DataSource = DS_FormaPagto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 409
    Width = 608
    Height = 61
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 409
    ExplicitWidth = 608
    ExplicitHeight = 61
    inherited W7Panel1: TPanel
      Width = 608
      Height = 61
      ExplicitWidth = 608
      ExplicitHeight = 61
      inherited SpbImprimir: TSpeedButton
        Visible = False
      end
      inherited SpbProcurar: TSpeedButton
        Visible = False
      end
      inherited SpbCancelar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbCancelarClick
      end
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 608
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 608
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 608
      Height = 33
      ExplicitWidth = 608
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 170
        Caption = 'Formas de pagamento'
        ExplicitWidth = 170
      end
    end
  end
  object DS_FormaPagto: TDataSource
    DataSet = db_FormaPagto
    Left = 295
    Top = 39
  end
  object DS_Prazos: TDataSource
    DataSet = db_FormaPagtoDias
    Left = 391
    Top = 38
  end
  object db_FormaPagto: TFDQuery
    OnNewRecord = db_FormaPagtoNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select *  from  CAD_FORMAPAGTO'
      'ORDER BY  NOME')
    Left = 292
    Top = 9
    object db_FormaPagtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_FormaPagtoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object db_FormaPagtoACRESCIMO: TBCDField
      FieldName = 'ACRESCIMO'
    end
    object db_FormaPagtoDESCONTO: TBCDField
      FieldName = 'DESCONTO'
    end
    object db_FormaPagtoVENCIMENTO_DIA: TIntegerField
      FieldName = 'VENCIMENTO_DIA'
    end
    object db_FormaPagtoTIPO_PAGAMENTO: TStringField
      FieldName = 'TIPO_PAGAMENTO'
      Size = 200
    end
    object db_FormaPagtoARRED_SN: TStringField
      FieldName = 'ARRED_SN'
      Size = 10
    end
    object db_FormaPagtoARREDONDAR: TStringField
      FieldName = 'ARREDONDAR'
      Size = 30
    end
    object db_FormaPagtoPARCELAMINIMA: TBCDField
      FieldName = 'PARCELAMINIMA'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
  end
  object db_FormaPagtoDias: TFDQuery
    BeforePost = db_FormaPagtoDiasBeforePost
    AfterDelete = db_FormaPagtoDiasAfterDelete
    MasterSource = DS_FormaPagto
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select * FROM CAD_FORMAPAGTODIAS'
      'where'
      'CODIGO= :CODIGO'
      'ORDER BY DIAS')
    Left = 392
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_FormaPagtoDiasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_FormaPagtoDiasDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object db_FormaPagtoDiasDIA_FIXO: TIntegerField
      FieldName = 'DIA_FIXO'
    end
  end
end
