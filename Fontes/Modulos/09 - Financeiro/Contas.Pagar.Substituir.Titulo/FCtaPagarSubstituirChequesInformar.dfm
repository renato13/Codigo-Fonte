object FrmCtaPagarSubstituirChequesInformar: TFrmCtaPagarSubstituirChequesInformar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Dados dos cheques'
  ClientHeight = 313
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
      DataSource = ds_CtaPagarCheque
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
    Top = 272
    Width = 766
    Height = 41
    Align = alBottom
    TabOrder = 1
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
  object GroupBox7: TGroupBox
    Left = 0
    Top = 218
    Width = 766
    Height = 54
    Align = alBottom
    Caption = 'Calculo:'
    Enabled = False
    TabOrder = 2
    object Image1: TImage
      Left = 2
      Top = 15
      Width = 762
      Height = 37
      Align = alClient
      Picture.Data = {
        0A544A504547496D616765CA070000FFD8FFE000104A46494600010101006000
        600000FFDB004300020101020101020202020202020203050303030303060404
        0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
        0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080023016803012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F30F
        ED0FF68FE747F687FB47F3AC3FED0F7A3FB43DEBFD35F667F9BDF55373FB43FD
        A3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF0068FE747F687F
        B47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FF00B4
        3DE8FED0F7A3D987D54DCFED0FF68FE747F687FB47F3AC3FED0F7A3FB43DE8F6
        61F55373FB43FDA3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF
        0068FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1F
        ED1FCEB0FF00B43DE8FED0F7A3D987D54DCFED0FF68FE747F687FB47F3AC3FED
        0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D
        987D54DCFED0FF0068FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373FB4
        3FDA3F9D1FDA1FED1FCEB0FF00B43DE8FED0F7A3D987D54DCFED0FF68FE747F6
        87FB47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FFB
        43DE8FED0F7A3D987D54DCFED0FF0068FE747F687FB47F3AC3FED0F7A3FB43DE
        8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FF00B43DE8FED0F7A3D987D54DCF
        ED0FF68FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FD
        A1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF0068FE747F687FB47F3AC3
        FED0F7A3FB43DE8F661F55373FB43FDA3F9D1FDA1FED1FCEB0FF00B43DE8FED0
        F7A3D987D54DCFED0FF68FE747F687FB47F3AC3FED0F7A3FB43DE8F661F55373
        FB43FDA3F9D1FDA1FED1FCEB0FFB43DE8FED0F7A3D987D54DCFED0FF0068FE74
        561FF687BD147B30FAA989FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD77FB2
        3E8BEAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A3FB47DC7E7589FDA1EF47F687BD1EC83EAA6DFF0068FB8FCE8FED1F71F9D6
        27F687BD1FDA1EF47B20FAA9B7FDA3EE3F3A3FB47DC7E7589FDA1EF47F687BD1
        EC83EAA6DFF68FB8FCE8FED1F71F9D627F687BD1FDA1EF47B20FAA9B7FDA3EE3
        F3A2B13FB43DE8A3D907D54C9F31BD4D1E637A9A28AE83D70F31BD4D1E637A9A
        28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F534798DEA68A2
        800F31BD4D1E637A9A28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A00
        3CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F534798DEA68A2800F3
        1BD4D1E637A9A28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F
        534798DEA68A2800F31BD4D1E637A9A28A003CC6F534798DEA68A2800F31BD4D
        1E637A9A28A003CC6F534798DEA68A2800F31BD4D1E637A9A28A003CC6F53479
        8DEA68A2800F31BD4D1E637A9A28A003CC6F5345145007FFD9}
      Stretch = True
      ExplicitTop = 13
      ExplicitWidth = 741
      ExplicitHeight = 59
    end
    object lblTotais: TLabel
      Left = 2
      Top = 15
      Width = 60
      Height = 23
      Align = alClient
      Alignment = taCenter
      Caption = 'R$ 0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
  end
  object db_CtaPagarCheque: TFDQuery
    AfterOpen = db_CtaPagarChequeAfterOpen
    BeforePost = db_CtaPagarChequeBeforePost
    AfterPost = db_CtaPagarChequeAfterPost
    AfterDelete = db_CtaPagarChequeAfterDelete
    OnNewRecord = db_CtaPagarChequeNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'NOTAFISCAL=:NOTAFISCAL'
      'AND'
      'FORNECEDOR=:FORNECEDOR'
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
        Name = 'FORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_CtaPagarChequeEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_CtaPagarChequeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_CtaPagarChequeFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object db_CtaPagarChequeFORNECEDOR_NOME: TStringField
      FieldName = 'FORNECEDOR_NOME'
      Size = 200
    end
    object db_CtaPagarChequeNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_CtaPagarChequeSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_CtaPagarChequeDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_CtaPagarChequeVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_CtaPagarChequeDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
      EditMask = '99/99/9999'
    end
    object db_CtaPagarChequeDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Required = True
      Size = 30
    end
    object db_CtaPagarChequeREMESSA: TIntegerField
      FieldName = 'REMESSA'
    end
    object db_CtaPagarChequePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_CtaPagarChequeCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_CtaPagarChequeESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_CtaPagarChequeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_CtaPagarChequeVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaPagarChequeVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaPagarChequeVALOR_SALDO: TBCDField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaPagarChequeCONTA_CREDITO: TIntegerField
      FieldName = 'CONTA_CREDITO'
    end
    object db_CtaPagarChequeCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 30
    end
    object db_CtaPagarChequeCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 30
    end
    object db_CtaPagarChequeCHQ_NUMEROCHEQUE: TStringField
      FieldName = 'CHQ_NUMEROCHEQUE'
      Size = 30
    end
    object db_CtaPagarChequeCHQ_CONTA_CORRENTE: TStringField
      FieldName = 'CHQ_CONTA_CORRENTE'
      Size = 30
    end
    object db_CtaPagarChequeCHQ_CODCIDADE: TStringField
      FieldName = 'CHQ_CODCIDADE'
      Size = 200
    end
    object db_CtaPagarChequeCHQ_NOMECIDADE_UF: TStringField
      FieldName = 'CHQ_NOMECIDADE_UF'
      Size = 200
    end
    object db_CtaPagarChequeCHQ_EMITENTE: TStringField
      FieldName = 'CHQ_EMITENTE'
      Size = 200
    end
    object db_CtaPagarChequeCHQ_DESTINO: TStringField
      FieldName = 'CHQ_DESTINO'
      Size = 200
    end
    object db_CtaPagarChequeFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_CtaPagarChequeDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_CtaPagarChequeDESCONTO: TBCDField
      FieldName = 'DESCONTO'
    end
    object db_CtaPagarChequeDESCONTOVALOR: TBCDField
      FieldName = 'DESCONTOVALOR'
    end
    object db_CtaPagarChequePLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 200
    end
    object db_CtaPagarChequeCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_CtaPagarChequeHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_CtaPagarChequeOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_CtaPagarChequeGERARRECIBO: TStringField
      FieldName = 'GERARRECIBO'
      Size = 30
    end
    object db_CtaPagarChequeNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_CtaPagarChequeDESPESAS_BOLETO: TBCDField
      FieldName = 'DESPESAS_BOLETO'
    end
    object db_CtaPagarChequeDESPESAS_JUROS: TBCDField
      FieldName = 'DESPESAS_JUROS'
    end
    object db_CtaPagarChequeDESPESAS_JUROSVALOR: TBCDField
      FieldName = 'DESPESAS_JUROSVALOR'
    end
    object db_CtaPagarChequeDESPESAS_MULTA: TBCDField
      FieldName = 'DESPESAS_MULTA'
    end
    object db_CtaPagarChequeDESPESAS_CARTORIO: TBCDField
      FieldName = 'DESPESAS_CARTORIO'
    end
    object db_CtaPagarChequeDESPESAS_TOTAL: TBCDField
      FieldName = 'DESPESAS_TOTAL'
    end
    object db_CtaPagarChequeATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 10
    end
    object db_CtaPagarChequeQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_CtaPagarChequeMOTIVO_BAIXA: TIntegerField
      FieldName = 'MOTIVO_BAIXA'
    end
    object db_CtaPagarChequeUSER_NOME: TStringField
      FieldName = 'USER_NOME'
      Size = 200
    end
    object db_CtaPagarChequeUSER_DATA: TSQLTimeStampField
      FieldName = 'USER_DATA'
    end
    object db_CtaPagarChequeUSER_HORA: TTimeField
      FieldName = 'USER_HORA'
    end
    object db_CtaPagarChequeCOMPLEMENTAR: TStringField
      FieldName = 'COMPLEMENTAR'
      Size = 10
    end
    object db_CtaPagarChequeCHECADO: TStringField
      FieldName = 'CHECADO'
      Size = 10
    end
    object db_CtaPagarChequePAGTOTERCEIRIZADO: TStringField
      FieldName = 'PAGTOTERCEIRIZADO'
      Size = 10
    end
    object db_CtaPagarChequePROTESTOSTATUS: TStringField
      FieldName = 'PROTESTOSTATUS'
      Size = 30
    end
    object db_CtaPagarChequeSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 30
    end
    object db_CtaPagarChequePAGAMENTOTITULO: TStringField
      FieldName = 'PAGAMENTOTITULO'
      Size = 30
    end
  end
  object db_CtaPagarChequeSomar: TFDQuery
    MasterSource = ds_CtaPagarCheque
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT  COUNT(*) AS REGISTROS , SUM(VALOR) AS VALORTOTAL  FROM F' +
        'IN_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'NOTAFISCAL=:NOTAFISCAL'
      'AND'
      'FORNECEDOR=:FORNECEDOR'
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
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_CtaPagarCheque: TDataSource
    DataSet = db_CtaPagarCheque
    Left = 192
    Top = 80
  end
end
