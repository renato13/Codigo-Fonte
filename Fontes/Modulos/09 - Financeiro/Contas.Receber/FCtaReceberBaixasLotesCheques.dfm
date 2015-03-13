object FrmCtaReceberBaixasLotesCheques: TFrmCtaReceberBaixasLotesCheques
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Dados dos cheques'
  ClientHeight = 259
  ClientWidth = 766
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 766
    Height = 218
    Align = alClient
    Caption = 
      'Dados dos cheques                                               ' +
      '                               [Deletar -> Ctrl+Delete]'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 762
      Height = 201
      Align = alClient
      DataSource = DS_CtaReceber
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CHQ_BANCO'
          Title.Caption = 'BANCO'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHQ_AGENCIA'
          Title.Caption = 'AG'#202'NCIA'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHQ_CONTA_CORRENTE'
          Title.Caption = 'C/CORRENTE'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Caption = 'NUMERO CHEQUE'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHQ_EMITENTE'
          Title.Caption = 'EMITENTE'
          Width = 161
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Width = 82
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 218
    Width = 766
    Height = 41
    Align = alBottom
    TabOrder = 1
    object lblValor: TLabel
      Left = 264
      Top = 1
      Width = 501
      Height = 39
      Align = alRight
      Alignment = taCenter
      AutoSize = False
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object db_CtaReceberCheque: TFDQuery
    AfterOpen = db_CtaReceberChequeAfterOpen
    BeforePost = db_CtaReceberChequeBeforePost
    AfterPost = db_CtaReceberChequeAfterPost
    AfterDelete = db_CtaReceberChequeAfterDelete
    OnNewRecord = db_CtaReceberChequeNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CTARECEBER'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'NOTAFISCAL=:NOTAFISCAL'
      'AND'
      'CLIENTE=:CLIENTE'
      'AND'
      'ESPECIE='#39'CHEQUE'#39
      'AND'
      'QUITADO<>'#39'S'#39)
    Left = 80
    Top = 80
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object db_CtaReceberChequeCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_CtaReceberChequeCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_CtaReceberChequeNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object db_CtaReceberChequeSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_CtaReceberChequeDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_CtaReceberChequeVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_CtaReceberChequeDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
      EditMask = '99/99/9999'
    end
    object db_CtaReceberChequeDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_CtaReceberChequePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_CtaReceberChequeCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_CtaReceberChequeVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_CtaReceberChequeESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_CtaReceberChequeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_CtaReceberChequeVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object db_CtaReceberChequeVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
    end
    object db_CtaReceberChequeVALOR_SALDO: TBCDField
      FieldName = 'VALOR_SALDO'
    end
    object db_CtaReceberChequeCONTA_CREDITO: TIntegerField
      FieldName = 'CONTA_CREDITO'
    end
    object db_CtaReceberChequeCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 30
    end
    object db_CtaReceberChequeCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 30
    end
    object db_CtaReceberChequeCHQ_CONTA_CORRENTE: TStringField
      FieldName = 'CHQ_CONTA_CORRENTE'
      Size = 30
    end
    object db_CtaReceberChequeCHQ_NUMEROCHEQUE: TStringField
      FieldName = 'CHQ_NUMEROCHEQUE'
      Size = 30
    end
    object db_CtaReceberChequeCHQ_CODCIDADE: TStringField
      FieldName = 'CHQ_CODCIDADE'
      Size = 200
    end
    object db_CtaReceberChequeCHQ_EMITENTE: TStringField
      FieldName = 'CHQ_EMITENTE'
      Size = 200
    end
    object db_CtaReceberChequeCHQ_NOMECIDADE_UF: TStringField
      FieldName = 'CHQ_NOMECIDADE_UF'
      Size = 200
    end
    object db_CtaReceberChequeCHQ_DESTINO: TStringField
      FieldName = 'CHQ_DESTINO'
      Size = 200
    end
    object db_CtaReceberChequeFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_CtaReceberChequeDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_CtaReceberChequeDESCONTO: TBCDField
      FieldName = 'DESCONTO'
    end
    object db_CtaReceberChequeDESCONTO_DATA: TSQLTimeStampField
      FieldName = 'DESCONTO_DATA'
    end
    object db_CtaReceberChequeDESCONTO_USER: TIntegerField
      FieldName = 'DESCONTO_USER'
    end
    object db_CtaReceberChequeENTRADA: TBCDField
      FieldName = 'ENTRADA'
    end
    object db_CtaReceberChequePLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_CtaReceberChequeCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_CtaReceberChequeHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_CtaReceberChequeOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_CtaReceberChequeGERARRECIBO: TStringField
      FieldName = 'GERARRECIBO'
      Size = 30
    end
    object db_CtaReceberChequeGERARDUPLICATA: TStringField
      FieldName = 'GERARDUPLICATA'
      Size = 10
    end
    object db_CtaReceberChequeGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      Size = 10
    end
    object db_CtaReceberChequeNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_CtaReceberChequeDESPESAS_BOLETO: TBCDField
      FieldName = 'DESPESAS_BOLETO'
    end
    object db_CtaReceberChequeDESPESAS_JUROS: TBCDField
      FieldName = 'DESPESAS_JUROS'
    end
    object db_CtaReceberChequeDESPESAS_MULTA: TBCDField
      FieldName = 'DESPESAS_MULTA'
    end
    object db_CtaReceberChequeDESPESAS_CARTORIO: TBCDField
      FieldName = 'DESPESAS_CARTORIO'
    end
    object db_CtaReceberChequeDESPESAS_TOTAL: TBCDField
      FieldName = 'DESPESAS_TOTAL'
    end
    object db_CtaReceberChequeATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 10
    end
    object db_CtaReceberChequeQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_CtaReceberChequeMOTIVO_BAIXA: TIntegerField
      FieldName = 'MOTIVO_BAIXA'
    end
    object db_CtaReceberChequeCOMPLEMENTAR: TStringField
      FieldName = 'COMPLEMENTAR'
      Size = 10
    end
    object db_CtaReceberChequeGERARCOMPLEMENTO: TStringField
      FieldName = 'GERARCOMPLEMENTO'
      Size = 10
    end
    object db_CtaReceberChequePAGAMENTOTITULO: TStringField
      FieldName = 'PAGAMENTOTITULO'
      Size = 10
    end
    object db_CtaReceberChequeEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
  end
  object db_CtaReceberChequeSomar: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT  COUNT(*) AS REGISTROS , SUM(VALOR) AS VALORTOTAL  FROM F' +
        'IN_CTARECEBER'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'NOTAFISCAL=:NOTAFISCAL'
      'AND'
      'CLIENTE=:CLIENTE'
      'AND'
      'ESPECIE='#39'CHEQUE'#39
      'AND'
      'PAGAMENTOTITULO='#39'S'#39)
    Left = 80
    Top = 144
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  object DS_CtaReceber: TDataSource
    DataSet = db_CtaReceberCheque
    Left = 192
    Top = 80
  end
end
