object BaseDados: TBaseDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 506
  Width = 822
  object db_Parametros: TFDQuery
    BeforeOpen = db_ParametrosBeforeOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CONFIG_PARAMETROS'
      'WHERE '
      'EMPRESA=:EMPRESA')
    Left = 160
    Top = 200
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_usuario: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM USUARIOS'
      'WHERE'
      'UserName=:UserName'
      'AND'
      'SENHA=:SENHA')
    Left = 248
    Top = 200
    ParamData = <
      item
        Name = 'UserName'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object db_ctaReceber: TFDQuery
    BeforeOpen = db_ctaReceberBeforeOpen
    AfterClose = db_ctaReceberAfterClose
    OnNewRecord = db_ctaReceberNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM FIN_CTARECEBER'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 72
    Top = 88
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_ctaReceberEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_ctaReceberCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_ctaReceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
      OnChange = db_ctaReceberCLIENTEChange
    end
    object db_ctaReceberNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_ctaReceberSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_ctaReceberDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_ctaReceberVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_ctaReceberDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
      EditMask = '99/99/9999'
    end
    object db_ctaReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_ctaReceberPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_ctaReceberCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_ctaReceberVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_ctaReceberESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_ctaReceberTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_ctaReceberVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object db_ctaReceberVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
    end
    object db_ctaReceberVALOR_SALDO: TBCDField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
    end
    object db_ctaReceberCONTA_CREDITO: TIntegerField
      FieldName = 'CONTA_CREDITO'
    end
    object db_ctaReceberCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 30
    end
    object db_ctaReceberCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 30
    end
    object db_ctaReceberCHQ_CONTA_CORRENTE: TStringField
      FieldName = 'CHQ_CONTA_CORRENTE'
      Size = 30
    end
    object db_ctaReceberCHQ_NUMEROCHEQUE: TStringField
      FieldName = 'CHQ_NUMEROCHEQUE'
      Size = 30
    end
    object db_ctaReceberCHQ_CODCIDADE: TStringField
      FieldName = 'CHQ_CODCIDADE'
      Size = 200
    end
    object db_ctaReceberCHQ_EMITENTE: TStringField
      FieldName = 'CHQ_EMITENTE'
      Size = 200
    end
    object db_ctaReceberCHQ_NOMECIDADE_UF: TStringField
      FieldName = 'CHQ_NOMECIDADE_UF'
      Size = 200
    end
    object db_ctaReceberCHQ_DESTINO: TStringField
      FieldName = 'CHQ_DESTINO'
      Size = 200
    end
    object db_ctaReceberFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_ctaReceberDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_ctaReceberDESCONTO: TBCDField
      FieldName = 'DESCONTO'
    end
    object db_ctaReceberDESCONTO_DATA: TSQLTimeStampField
      FieldName = 'DESCONTO_DATA'
    end
    object db_ctaReceberENTRADA: TBCDField
      FieldName = 'ENTRADA'
    end
    object db_ctaReceberPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_ctaReceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_ctaReceberOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_ctaReceberGERARRECIBO: TStringField
      FieldName = 'GERARRECIBO'
      Size = 30
    end
    object db_ctaReceberGERARDUPLICATA: TStringField
      FieldName = 'GERARDUPLICATA'
      Size = 10
    end
    object db_ctaReceberGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      Size = 10
    end
    object db_ctaReceberGERARCOMPLEMENTO: TStringField
      FieldName = 'GERARCOMPLEMENTO'
      Size = 10
    end
    object db_ctaReceberGERARREMESSA: TStringField
      FieldName = 'GERARREMESSA'
      Size = 10
    end
    object db_ctaReceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_ctaReceberDESPESAS_BOLETO: TBCDField
      FieldName = 'DESPESAS_BOLETO'
    end
    object db_ctaReceberDESPESAS_JUROS: TBCDField
      FieldName = 'DESPESAS_JUROS'
    end
    object db_ctaReceberDESPESAS_MULTA: TBCDField
      FieldName = 'DESPESAS_MULTA'
    end
    object db_ctaReceberDESPESAS_CARTORIO: TBCDField
      FieldName = 'DESPESAS_CARTORIO'
    end
    object db_ctaReceberDESPESAS_TOTAL: TBCDField
      FieldName = 'DESPESAS_TOTAL'
    end
    object db_ctaReceberATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 10
    end
    object db_ctaReceberQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_ctaReceberMOTIVO_BAIXA: TIntegerField
      FieldName = 'MOTIVO_BAIXA'
    end
    object db_ctaReceberCOMPLEMENTAR: TStringField
      FieldName = 'COMPLEMENTAR'
      Size = 10
    end
    object db_ctaReceberDESCONTO_USER: TIntegerField
      FieldName = 'DESCONTO_USER'
    end
    object db_ctaReceberCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_ctaReceberPROTESTOSTATUS: TStringField
      FieldName = 'PROTESTOSTATUS'
      Size = 30
    end
    object db_ctaReceberDESCONTOVALOR: TBCDField
      FieldName = 'DESCONTOVALOR'
    end
    object db_ctaReceberDESPESAS_JUROSVALOR: TBCDField
      FieldName = 'DESPESAS_JUROSVALOR'
    end
    object db_ctaReceberSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 10
    end
    object db_ctaReceberDESCONTADO: TStringField
      FieldName = 'DESCONTADO'
      Size = 10
    end
    object db_ctaReceberPAGAMENTOTITULO: TStringField
      FieldName = 'PAGAMENTOTITULO'
      Size = 10
    end
    object db_ctaReceberCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
  end
  object ds_ctaReceber: TDataSource
    AutoEdit = False
    DataSet = db_ctaReceber
    Left = 72
    Top = 128
  end
  object db_CtaPagar: TFDQuery
    BeforeOpen = db_CtaPagarBeforeOpen
    AfterClose = db_CtaPagarAfterClose
    BeforePost = db_CtaPagarBeforePost
    OnNewRecord = db_CtaPagarNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM FIN_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 160
    Top = 88
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_CtaPagarCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_CtaPagarFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
      OnChange = db_CtaPagarFORNECEDORChange
    end
    object db_CtaPagarNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_CtaPagarSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_CtaPagarDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_CtaPagarVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_CtaPagarDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
      EditMask = '99/99/9999'
    end
    object db_CtaPagarDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_CtaPagarPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_CtaPagarCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_CtaPagarESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_CtaPagarTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_CtaPagarVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object db_CtaPagarVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
    end
    object db_CtaPagarVALOR_SALDO: TBCDField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
    end
    object db_CtaPagarCONTA_CREDITO: TIntegerField
      FieldName = 'CONTA_CREDITO'
    end
    object db_CtaPagarCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 30
    end
    object db_CtaPagarCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 30
    end
    object db_CtaPagarCHQ_CONTA_CORRENTE: TStringField
      FieldName = 'CHQ_CONTA_CORRENTE'
      Size = 30
    end
    object db_CtaPagarCHQ_CODCIDADE: TStringField
      FieldName = 'CHQ_CODCIDADE'
      Size = 200
    end
    object db_CtaPagarCHQ_NOMECIDADE_UF: TStringField
      FieldName = 'CHQ_NOMECIDADE_UF'
      Size = 200
    end
    object db_CtaPagarCHQ_EMITENTE: TStringField
      FieldName = 'CHQ_EMITENTE'
      Size = 200
    end
    object db_CtaPagarCHQ_DESTINO: TStringField
      FieldName = 'CHQ_DESTINO'
      Size = 200
    end
    object db_CtaPagarFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_CtaPagarDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_CtaPagarDESCONTO: TBCDField
      FieldName = 'DESCONTO'
    end
    object db_CtaPagarPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 200
    end
    object db_CtaPagarHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_CtaPagarOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_CtaPagarGERARRECIBO: TStringField
      FieldName = 'GERARRECIBO'
      Size = 30
    end
    object db_CtaPagarNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_CtaPagarDESPESAS_BOLETO: TBCDField
      FieldName = 'DESPESAS_BOLETO'
    end
    object db_CtaPagarDESPESAS_JUROS: TBCDField
      FieldName = 'DESPESAS_JUROS'
    end
    object db_CtaPagarDESPESAS_MULTA: TBCDField
      FieldName = 'DESPESAS_MULTA'
    end
    object db_CtaPagarDESPESAS_CARTORIO: TBCDField
      FieldName = 'DESPESAS_CARTORIO'
    end
    object db_CtaPagarDESPESAS_TOTAL: TBCDField
      FieldName = 'DESPESAS_TOTAL'
    end
    object db_CtaPagarATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 10
    end
    object db_CtaPagarQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_CtaPagarMOTIVO_BAIXA: TIntegerField
      FieldName = 'MOTIVO_BAIXA'
    end
    object db_CtaPagarFORNECEDOR_NOME: TStringField
      FieldName = 'FORNECEDOR_NOME'
      Size = 200
    end
    object db_CtaPagarCOMPLEMENTAR: TStringField
      FieldName = 'COMPLEMENTAR'
      Size = 10
    end
    object db_CtaPagarCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_CtaPagarREMESSA: TIntegerField
      FieldName = 'REMESSA'
    end
    object db_CtaPagarCHECADO: TStringField
      FieldName = 'CHECADO'
      Size = 10
    end
    object db_CtaPagarPAGTOTERCEIRIZADO: TStringField
      FieldName = 'PAGTOTERCEIRIZADO'
      Size = 10
    end
    object db_CtaPagarPROTESTOSTATUS: TStringField
      FieldName = 'PROTESTOSTATUS'
      Size = 30
    end
    object db_CtaPagarEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_CtaPagarDESCONTOVALOR: TBCDField
      FieldName = 'DESCONTOVALOR'
    end
    object db_CtaPagarDESPESAS_JUROSVALOR: TBCDField
      FieldName = 'DESPESAS_JUROSVALOR'
    end
  end
  object DS_CtaPagar: TDataSource
    AutoEdit = False
    DataSet = db_CtaPagar
    Left = 160
    Top = 120
  end
  object DS_Clientes: TDataSource
    AutoEdit = False
    DataSet = db_Clientes
    Left = 240
    Top = 128
  end
  object db_Clientes: TFDQuery
    AfterClose = db_ClientesAfterClose
    BeforePost = db_ClientesBeforePost
    AfterPost = db_ClientesAfterPost
    OnNewRecord = db_ClientesNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'TIPO IN ('#39'CLIENTE'#39')')
    Left = 240
    Top = 88
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_ClientesCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_ClientesFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object db_ClientesDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_ClientesDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_ClientesTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object db_ClientesCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 30
    end
    object db_ClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      OnChange = db_ClientesCPF_CNPJChange
      Size = 30
    end
    object db_ClientesNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object db_ClientesNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 200
    end
    object db_ClientesCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 200
    end
    object db_ClientesRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 30
    end
    object db_ClientesORG_EMISSOR: TStringField
      FieldName = 'ORG_EMISSOR'
      Size = 30
    end
    object db_ClientesSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object db_ClientesFILIACAO_NOMEPAI: TStringField
      FieldName = 'FILIACAO_NOMEPAI'
      Size = 200
    end
    object db_ClientesFILIACAO_NOMEMAE: TStringField
      FieldName = 'FILIACAO_NOMEMAE'
      Size = 200
    end
    object db_ClientesESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 200
    end
    object db_ClientesCONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      Size = 30
    end
    object db_ClientesCONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      Size = 200
    end
    object db_ClientesCXP: TStringField
      FieldName = 'CXP'
      Size = 30
    end
    object db_ClientesCEP: TStringField
      FieldName = 'CEP'
      OnChange = db_ClientesCEPChange
      EditMask = '########'
      Size = 30
    end
    object db_ClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object db_ClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object db_ClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object db_ClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 200
    end
    object db_ClientesCODIGOCIDADE: TIntegerField
      FieldName = 'CODIGOCIDADE'
    end
    object db_ClientesNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 200
    end
    object db_ClientesUF: TStringField
      FieldName = 'UF'
      Size = 30
    end
    object db_ClientesDDD_FONE: TIntegerField
      FieldName = 'DDD_FONE'
    end
    object db_ClientesFONE: TStringField
      FieldName = 'FONE'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_ClientesDDD_FAX: TIntegerField
      FieldName = 'DDD_FAX'
    end
    object db_ClientesFAX: TStringField
      FieldName = 'FAX'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_ClientesDDD_CELULAR: TIntegerField
      FieldName = 'DDD_CELULAR'
    end
    object db_ClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_ClientesDDD_VOIP: TIntegerField
      FieldName = 'DDD_VOIP'
    end
    object db_ClientesVOIP: TStringField
      FieldName = 'VOIP'
      Size = 30
    end
    object db_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object db_ClientesSITE: TStringField
      FieldName = 'SITE'
      Size = 200
    end
    object db_ClientesREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 200
    end
    object db_ClientesVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      OnChange = db_ClientesVENDEDORChange
    end
    object db_ClientesREGIAO: TIntegerField
      FieldName = 'REGIAO'
    end
    object db_ClientesTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_ClientesESTRANGEIRO: TStringField
      FieldName = 'ESTRANGEIRO'
      Size = 10
    end
    object db_ClientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 200
    end
    object db_ClientesCREDITO_LIMITE: TBCDField
      FieldName = 'CREDITO_LIMITE'
      DisplayFormat = '###,##0.00'
    end
    object db_ClientesCREDITO_UTILIZADO: TBCDField
      FieldName = 'CREDITO_UTILIZADO'
      DisplayFormat = '###,##0.00'
    end
    object db_ClientesCREDITO_DISPONIVEL: TBCDField
      FieldName = 'CREDITO_DISPONIVEL'
      DisplayFormat = '###,##0.00'
    end
    object db_ClientesBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Size = 10
    end
    object db_ClientesENDCOB_ENDERECO: TStringField
      FieldName = 'ENDCOB_ENDERECO'
      Size = 200
    end
    object db_ClientesENDCOB_BAIRRO: TStringField
      FieldName = 'ENDCOB_BAIRRO'
      Size = 200
    end
    object db_ClientesENDCOB_DDD: TIntegerField
      FieldName = 'ENDCOB_DDD'
    end
    object db_ClientesENDCOB_FONE: TStringField
      FieldName = 'ENDCOB_FONE'
      Size = 30
    end
    object db_ClientesENDCOB_CEP: TStringField
      FieldName = 'ENDCOB_CEP'
      Size = 30
    end
    object db_ClientesENDCOB_CXP: TStringField
      FieldName = 'ENDCOB_CXP'
      Size = 30
    end
    object db_ClientesENDCOB_CODIGOCIDADE: TIntegerField
      FieldName = 'ENDCOB_CODIGOCIDADE'
    end
    object db_ClientesENDCOB_NOMECIDADE: TStringField
      FieldName = 'ENDCOB_NOMECIDADE'
      Size = 200
    end
    object db_ClientesENDCOB_UF: TStringField
      FieldName = 'ENDCOB_UF'
      Size = 30
    end
    object db_ClientesPROTESTO: TStringField
      FieldName = 'PROTESTO'
      Size = 30
    end
    object db_ClientesPROTESTO_DATA: TSQLTimeStampField
      FieldName = 'PROTESTO_DATA'
      EditMask = '99/99/9999'
    end
    object db_ClientesETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 10
    end
    object db_ClientesNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 200
    end
    object db_ClientesATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 10
    end
    object db_ClientesATIVODATA: TSQLTimeStampField
      FieldName = 'ATIVODATA'
      EditMask = '99/99/9999'
    end
    object db_ClientesCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
    end
    object db_ClientesATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
    end
    object db_ClientesOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_ClientesOBS_SERASA: TStringField
      FieldName = 'OBS_SERASA'
      Size = 5000
    end
    object db_ClientesOBS_SINTEGRA: TStringField
      FieldName = 'OBS_SINTEGRA'
      Size = 5000
    end
    object db_ClientesCONJUGE_DNASCIMENTO: TStringField
      FieldName = 'CONJUGE_DNASCIMENTO'
      Size = 200
    end
    object db_ClientesCONJUGE_EMPRESA: TStringField
      FieldName = 'CONJUGE_EMPRESA'
      Size = 200
    end
    object db_ClientesCONJUGE_FONE: TStringField
      FieldName = 'CONJUGE_FONE'
      Size = 30
    end
    object db_ClientesCONJUGE_ENDERECO: TStringField
      FieldName = 'CONJUGE_ENDERECO'
      Size = 200
    end
    object db_ClientesCONJUGE_CIDADE: TStringField
      FieldName = 'CONJUGE_CIDADE'
      Size = 200
    end
    object db_ClientesCONJUGE_UF: TStringField
      FieldName = 'CONJUGE_UF'
      Size = 200
    end
    object db_ClientesCONJUGE_CARGO: TStringField
      FieldName = 'CONJUGE_CARGO'
      Size = 200
    end
    object db_ClientesCONJUGE_TEMPO: TStringField
      FieldName = 'CONJUGE_TEMPO'
      Size = 200
    end
    object db_ClientesCONJUGE_SALARIO: TBCDField
      FieldName = 'CONJUGE_SALARIO'
    end
    object db_ClientesEMPREGO_EMPRESA: TStringField
      FieldName = 'EMPREGO_EMPRESA'
      Size = 200
    end
    object db_ClientesEMPREGO_FONE: TStringField
      FieldName = 'EMPREGO_FONE'
      Size = 30
    end
    object db_ClientesEMPREGO_ENDERECO: TStringField
      FieldName = 'EMPREGO_ENDERECO'
      Size = 200
    end
    object db_ClientesEMPREGO_CIDADE: TStringField
      FieldName = 'EMPREGO_CIDADE'
      Size = 200
    end
    object db_ClientesEMPREGO_UF: TStringField
      FieldName = 'EMPREGO_UF'
      Size = 200
    end
    object db_ClientesEMPREGO_CARGO: TStringField
      FieldName = 'EMPREGO_CARGO'
      Size = 200
    end
    object db_ClientesEMPREGO_TEMPO: TStringField
      FieldName = 'EMPREGO_TEMPO'
      Size = 200
    end
    object db_ClientesEMPREGO_SALARIO: TBCDField
      FieldName = 'EMPREGO_SALARIO'
    end
    object db_ClientesCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      DisplayFormat = '###,##0.00%'
    end
    object db_ClientesCOMISSIONAR: TStringField
      FieldName = 'COMISSIONAR'
      Size = 10
    end
    object db_ClientesSALARIO: TBCDField
      FieldName = 'SALARIO'
      DisplayFormat = '###,##0.00'
    end
    object db_ClientesCODIGOUF: TIntegerField
      FieldName = 'CODIGOUF'
    end
    object db_ClientesPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_ClientesCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_ClientesCENTROCUSTO: TIntegerField
      FieldName = 'CENTROCUSTO'
    end
    object db_ClientesTRANSPORTADORA_PLACA: TStringField
      FieldName = 'TRANSPORTADORA_PLACA'
      Size = 30
    end
    object db_ClientesTRANSPORTADORA_CIDADE: TStringField
      FieldName = 'TRANSPORTADORA_CIDADE'
      Size = 200
    end
    object db_ClientesTRANSPORTADORA_UF: TStringField
      FieldName = 'TRANSPORTADORA_UF'
      Size = 200
    end
    object db_ClientesULTIMAVENDA_DATA: TSQLTimeStampField
      FieldName = 'ULTIMAVENDA_DATA'
      EditMask = '99/99/9999'
    end
    object db_ClientesULTIMAVENDA_ORIGEM: TStringField
      FieldName = 'ULTIMAVENDA_ORIGEM'
      Size = 30
    end
  end
  object DS_RefCom: TDataSource
    DataSet = db_RefCom
    Left = 320
    Top = 128
  end
  object DS_RefBanc: TDataSource
    DataSet = db_RefBanc
    Left = 400
    Top = 128
  end
  object db_RefBanc: TFDQuery
    BeforePost = db_RefBancBeforePost
    MasterSource = DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *  from CAD_CLIENTES_BANCO'
      'WHERE'
      ''
      'CLIENTE=:CODIGO'
      '')
    Left = 400
    Top = 88
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
  end
  object db_RefCom: TFDQuery
    BeforePost = db_RefComBeforePost
    MasterSource = DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from CAD_CLIENTES_COMERCIO'
      'WHERE'
      ''
      'CLIENTE=:CODIGO')
    Left = 320
    Top = 88
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
  end
  object db_Socios: TFDQuery
    BeforePost = db_SociosBeforePost
    MasterSource = DS_Clientes
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from CAD_CLIENTES_SOCIOS'
      'WHERE'
      ''
      'CLIENTE=:CODIGO')
    Left = 480
    Top = 88
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
  end
  object DS_Socios: TDataSource
    DataSet = db_Socios
    Left = 480
    Top = 128
  end
  object db_UsuarioLog: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM USUARIOS_LOG')
    Left = 328
    Top = 200
  end
  object DS_Vendas: TDataSource
    DataSet = db_Vendas
    Left = 632
    Top = 122
  end
  object DS_VendasItens: TDataSource
    DataSet = db_VendasItens
    Left = 720
    Top = 122
  end
  object db_Vendas: TFDQuery
    BeforeOpen = db_VendasBeforeOpen
    AfterClose = db_VendasAfterClose
    BeforePost = db_VendasBeforePost
    OnNewRecord = db_VendasNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VENDAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 632
    Top = 95
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_VendasCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_VendasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_VendasNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_VendasMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 30
    end
    object db_VendasSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 30
    end
    object db_VendasTIPONF: TStringField
      FieldName = 'TIPONF'
      Required = True
      Size = 30
    end
    object db_VendasEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
      Required = True
      OnChange = db_VendasEMISSAOChange
      EditMask = '99/99/9999'
    end
    object db_VendasOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Required = True
      Size = 30
    end
    object db_VendasCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
      OnChange = db_VendasCLIENTEChange
    end
    object db_VendasVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Required = True
    end
    object db_VendasCFOP: TIntegerField
      FieldName = 'CFOP'
      Required = True
      OnChange = db_VendasCFOPChange
    end
    object db_VendasTABELA: TIntegerField
      FieldName = 'TABELA'
      Required = True
    end
    object db_VendasFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Required = True
    end
    object db_VendasTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Required = True
    end
    object db_VendasDATA_ENTRADASAIDA: TSQLTimeStampField
      FieldName = 'DATA_ENTRADASAIDA'
      EditMask = '99/99/9999'
    end
    object db_VendasIE_SUBSTITUTO_TRIBUTARIO: TStringField
      FieldName = 'IE_SUBSTITUTO_TRIBUTARIO'
      Size = 30
    end
    object db_VendasICMS_BASECALCULO: TBCDField
      FieldName = 'ICMS_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasICMS_VALOR: TBCDField
      FieldName = 'ICMS_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasICMS_BASECALCULO_SUBSTITUICAO: TBCDField
      FieldName = 'ICMS_BASECALCULO_SUBSTITUICAO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasICMS_BASECALCULO_SUBSTITUICAO_VALOR: TBCDField
      FieldName = 'ICMS_BASECALCULO_SUBSTITUICAO_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasICMS_REDUCAO: TBCDField
      FieldName = 'ICMS_REDUCAO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasICMS_REDUCAO_VALOR: TBCDField
      FieldName = 'ICMS_REDUCAO_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasIPI_BASECALCULO: TBCDField
      FieldName = 'IPI_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasIPI_VALOR: TBCDField
      FieldName = 'IPI_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasISS: TBCDField
      FieldName = 'ISS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasISS_BASECALCULO: TBCDField
      FieldName = 'ISS_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasISS_VALOR: TBCDField
      FieldName = 'ISS_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasVLR_FRETE: TBCDField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasVLR_SEGURO: TBCDField
      FieldName = 'VLR_SEGURO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasVLR_DESPESAS_ASSESSORIAS: TBCDField
      FieldName = 'VLR_DESPESAS_ASSESSORIAS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasVLR_RECEBIDO: TBCDField
      FieldName = 'VLR_RECEBIDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasTROCO: TBCDField
      FieldName = 'TROCO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasVLR_CAIXA: TBCDField
      FieldName = 'VLR_CAIXA'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasFRETE: TStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object db_VendasFRETE_QUANTIDADE: TIntegerField
      FieldName = 'FRETE_QUANTIDADE'
    end
    object db_VendasFRETE_ESPECIE: TStringField
      FieldName = 'FRETE_ESPECIE'
      Size = 30
    end
    object db_VendasFRETE_MARCA: TStringField
      FieldName = 'FRETE_MARCA'
      Size = 30
    end
    object db_VendasFRETE_NUMERO: TStringField
      FieldName = 'FRETE_NUMERO'
      Size = 30
    end
    object db_VendasFRETE_PBRUTO: TBCDField
      FieldName = 'FRETE_PBRUTO'
    end
    object db_VendasFRETE_PLIQUIDO: TBCDField
      FieldName = 'FRETE_PLIQUIDO'
    end
    object db_VendasOBS1: TStringField
      FieldName = 'OBS1'
      Size = 5000
    end
    object db_VendasOBS2: TStringField
      FieldName = 'OBS2'
      Size = 5000
    end
    object db_VendasTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 30
    end
    object db_VendasDESCONTO_ACRESCIMO: TStringField
      FieldName = 'DESCONTO_ACRESCIMO'
      Size = 30
    end
    object db_VendasPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object db_VendasCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 10
    end
    object db_VendasIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      Size = 10
    end
    object db_VendasTIPOPAGAMENTO: TStringField
      FieldName = 'TIPOPAGAMENTO'
      Size = 30
    end
    object db_VendasQTDE_PRODUTOS: TIntegerField
      FieldName = 'QTDE_PRODUTOS'
      DisplayFormat = '###,##0'
      EditFormat = '###,##0'
    end
    object db_VendasVALOR_PRODUTOS: TBCDField
      FieldName = 'VALOR_PRODUTOS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasTOTAL_NF: TBCDField
      FieldName = 'TOTAL_NF'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasCREDITOABATIMENTO: TBCDField
      FieldName = 'CREDITOABATIMENTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object db_VendasNFE_ARQUIVO: TStringField
      FieldName = 'NFE_ARQUIVO'
      Size = 200
    end
    object db_VendasVLR_CARTAO: TBCDField
      FieldName = 'VLR_CARTAO'
    end
    object db_VendasCONFERENCIA: TIntegerField
      FieldName = 'CONFERENCIA'
    end
    object db_VendasSIMPLESNACIONAL_ALIQUOTA: TBCDField
      FieldName = 'SIMPLESNACIONAL_ALIQUOTA'
    end
    object db_VendasSIMPLESNACIONAL_VALOR: TBCDField
      FieldName = 'SIMPLESNACIONAL_VALOR'
    end
    object db_VendasNOTAFISCALORIGEM: TIntegerField
      FieldName = 'NOTAFISCALORIGEM'
    end
    object db_VendasNFE_CERTIFICADO: TStringField
      FieldName = 'NFE_CERTIFICADO'
      Size = 200
    end
    object db_VendasREGISTRODIARIO: TIntegerField
      FieldName = 'REGISTRODIARIO'
    end
    object db_VendasDEVOLUCAOCREDITADA: TStringField
      FieldName = 'DEVOLUCAOCREDITADA'
      Size = 10
    end
    object db_VendasNFE_FINALIDADE: TIntegerField
      FieldName = 'NFE_FINALIDADE'
    end
    object db_VendasHORA: TTimeField
      FieldName = 'HORA'
    end
    object db_VendasNFE_ASSINADO: TStringField
      FieldName = 'NFE_ASSINADO'
      Size = 10
    end
    object db_VendasNFE_ASSINATURA: TStringField
      FieldName = 'NFE_ASSINATURA'
      Size = 200
    end
    object db_VendasNFE_VALIDADO: TStringField
      FieldName = 'NFE_VALIDADO'
      Size = 10
    end
    object db_VendasNFE_TRANSMITIDO: TStringField
      FieldName = 'NFE_TRANSMITIDO'
      Size = 10
    end
    object db_VendasNFE_DANFEIMPRESSA: TStringField
      FieldName = 'NFE_DANFEIMPRESSA'
      Size = 10
    end
    object db_VendasNFE_SITUACAOSEFAZ: TStringField
      FieldName = 'NFE_SITUACAOSEFAZ'
      Size = 5000
    end
    object db_VendasNFE_APROVADA: TStringField
      FieldName = 'NFE_APROVADA'
      Size = 10
    end
    object db_VendasNFE_NFECANCELADA: TStringField
      FieldName = 'NFE_NFECANCELADA'
      Size = 10
    end
    object db_VendasNFE_RECIBO: TStringField
      FieldName = 'NFE_RECIBO'
      Size = 200
    end
    object db_VendasNFE_DATATRANSMISSAO: TSQLTimeStampField
      FieldName = 'NFE_DATATRANSMISSAO'
    end
    object db_VendasNFE_HORATRANSMISSAO: TTimeField
      FieldName = 'NFE_HORATRANSMISSAO'
    end
    object db_VendasNFE_CHAVEACESSO: TStringField
      FieldName = 'NFE_CHAVEACESSO'
      Size = 200
    end
    object db_VendasNFE_PROTOCOLOUSO: TStringField
      FieldName = 'NFE_PROTOCOLOUSO'
      Size = 200
    end
    object db_VendasNFE_SITUACAOCODIGO: TStringField
      FieldName = 'NFE_SITUACAOCODIGO'
      Size = 30
    end
    object db_VendasNFE_LOTE: TIntegerField
      FieldName = 'NFE_LOTE'
    end
    object db_VendasCANCELAMENTO_MOTIVO: TStringField
      FieldName = 'CANCELAMENTO_MOTIVO'
      Size = 5000
    end
    object db_VendasCANCELAMENTO_DATA: TSQLTimeStampField
      FieldName = 'CANCELAMENTO_DATA'
    end
    object db_VendasCANCELAMENTO_USUARIO: TStringField
      FieldName = 'CANCELAMENTO_USUARIO'
      Size = 200
    end
    object db_VendasCANCELAMENTO_CODIGORETORNO: TIntegerField
      FieldName = 'CANCELAMENTO_CODIGORETORNO'
    end
    object db_VendasCANCELAMENTO_PROTOCOLO: TStringField
      FieldName = 'CANCELAMENTO_PROTOCOLO'
      Size = 200
    end
    object db_VendasCANCELAMENTO_SITUACAO: TStringField
      FieldName = 'CANCELAMENTO_SITUACAO'
      Size = 5000
    end
  end
  object db_VendasItens: TFDQuery
    BeforePost = db_VendasItensBeforePost
    AfterPost = db_VendasItensAfterPost
    OnNewRecord = db_VendasItensNewRecord
    MasterSource = DS_Vendas
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM VENDAS_ITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 720
    Top = 95
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_VendasItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_VendasItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_VendasItensNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object db_VendasItensMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 30
    end
    object db_VendasItensSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 30
    end
    object db_VendasItensTIPONF: TStringField
      FieldName = 'TIPONF'
      Required = True
      Size = 30
    end
    object db_VendasItensEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
      Required = True
    end
    object db_VendasItensOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Required = True
      Size = 30
    end
    object db_VendasItensCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_VendasItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_VendasItensCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_VendasItensTABELA: TIntegerField
      FieldName = 'TABELA'
    end
    object db_VendasItensFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object db_VendasItensTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_VendasItensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      OnChange = db_VendasItensPRODUTOChange
      Size = 30
    end
    object db_VendasItensNCM: TStringField
      FieldName = 'NCM'
      Size = 30
    end
    object db_VendasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_VendasItensUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_VendasItensNCFOP: TIntegerField
      FieldName = 'NCFOP'
    end
    object db_VendasItensCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Size = 30
    end
    object db_VendasItensSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 30
    end
    object db_VendasItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      OnChange = db_VendasItensQUANTIDADEChange
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
      OnChange = db_VendasItensVLR_UNITChange
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensIPI: TBCDField
      FieldName = 'IPI'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensVLR_IPI: TBCDField
      FieldName = 'VLR_IPI'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensICMS: TBCDField
      FieldName = 'ICMS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensVLR_ICMS: TBCDField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensISS: TBCDField
      FieldName = 'ISS'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensISS_BASECALCULO: TBCDField
      FieldName = 'ISS_BASECALCULO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensISS_VALOR: TBCDField
      FieldName = 'ISS_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_VendasItensSEQUENCIAITEM: TIntegerField
      FieldName = 'SEQUENCIAITEM'
    end
    object db_VendasItensALIQUOTA: TStringField
      FieldName = 'ALIQUOTA'
      Size = 30
    end
    object db_VendasItensTIPOQTDE: TStringField
      FieldName = 'TIPOQTDE'
      Size = 30
    end
    object db_VendasItensNATUREZA_DESCONTO: TStringField
      FieldName = 'NATUREZA_DESCONTO'
      Size = 30
    end
    object db_VendasItensCASAS_DECIMAIS: TIntegerField
      FieldName = 'CASAS_DECIMAIS'
    end
  end
  object DS_Usuario: TDataSource
    DataSet = db_usuario
    Left = 248
    Top = 248
  end
  object DB_UsuarioAcesso: TFDQuery
    MasterSource = DS_Usuario
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM USUARIOS_ACESSO'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 248
    Top = 304
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object frx_dsParametro: TfrxDBDataset
    UserName = 'frx_dsParametro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'EMPRESA_NOME=EMPRESA_NOME'
      'EMPRESA_NOME_FANTASIA=EMPRESA_NOME_FANTASIA'
      'EMPRESA_CNPJ=EMPRESA_CNPJ'
      'EMPRESA_IE=EMPRESA_IE'
      'EMPRESA_IEMUNICIPAL=EMPRESA_IEMUNICIPAL'
      'EMPRESA_ENDERECO=EMPRESA_ENDERECO'
      'EMPRESA_NUMERO=EMPRESA_NUMERO'
      'EMPRESA_BAIRRO=EMPRESA_BAIRRO'
      'EMPRESA_COMPLEMENTO=EMPRESA_COMPLEMENTO'
      'EMPRESA_CEP=EMPRESA_CEP'
      'EMPRESA_FONE=EMPRESA_FONE'
      'EMPRESA_FAX=EMPRESA_FAX'
      'EMPRESA_EMAIL=EMPRESA_EMAIL'
      'EMPRESA_SITE=EMPRESA_SITE'
      'EMPRESA_CONTATO=EMPRESA_CONTATO'
      'EMPRESA_CODIGOCIDADE=EMPRESA_CODIGOCIDADE'
      'EMPRESA_CIDADE=EMPRESA_CIDADE'
      'EMPRESA_UF=EMPRESA_UF'
      'EMPRESA_CODIGOPAIS=EMPRESA_CODIGOPAIS'
      'EMPRESA_NOMEPAIS=EMPRESA_NOMEPAIS'
      'EMPRESA_SIMPLESNACIONAL=EMPRESA_SIMPLESNACIONAL'
      'EMPRESA_SIMPLESNACIONALALIQUOTA=EMPRESA_SIMPLESNACIONALALIQUOTA'
      'PRODUTO_CODIFICACAO=PRODUTO_CODIFICACAO'
      'PRODUTO_SEPARADOR=PRODUTO_SEPARADOR'
      'PRODUTO_GRUPO=PRODUTO_GRUPO'
      'PRODUTO_SUBGRUPO=PRODUTO_SUBGRUPO'
      'PRODUTO_PRODUTO=PRODUTO_PRODUTO'
      'PRODUTO_EXEMPLOS=PRODUTO_EXEMPLOS'
      'PRODUTO_ESTOQUENEGATIVO=PRODUTO_ESTOQUENEGATIVO'
      'PRODUTO_ICMS=PRODUTO_ICMS'
      'PRODUTO_IPI=PRODUTO_IPI'
      'PRODUTO_PUBLICIDADE=PRODUTO_PUBLICIDADE'
      'PRODUTO_INADIMPLENCIA=PRODUTO_INADIMPLENCIA'
      'PRODUTO_ADMINISTRATIVO=PRODUTO_ADMINISTRATIVO'
      'PRODUTO_FINANCEIRO=PRODUTO_FINANCEIRO'
      'PRODUTO_PIS=PRODUTO_PIS'
      'PRODUTO_COFINS=PRODUTO_COFINS'
      'PRODUTO_IR=PRODUTO_IR'
      'PRODUTO_MARKUP=PRODUTO_MARKUP'
      'PRODUTO_OUTROSIMPOSTOS=PRODUTO_OUTROSIMPOSTOS'
      'PRODUTO_IMPORTACAO=PRODUTO_IMPORTACAO'
      'PRODUTO_FRETE=PRODUTO_FRETE'
      'PRODUTO_MARGEMLUCRO=PRODUTO_MARGEMLUCRO'
      'PRODUTO_SITUACAO_TRIBUTARIA=PRODUTO_SITUACAO_TRIBUTARIA'
      'PRODUTO_CLASSIFICACAO_FISCAL=PRODUTO_CLASSIFICACAO_FISCAL'
      'PRODUTO_NCM=PRODUTO_NCM'
      'PRODUTO_TERCEIROSPRAZO=PRODUTO_TERCEIROSPRAZO'
      'FINANCEIRO_JUROS=FINANCEIRO_JUROS'
      'FINANCEIRO_CARTORIO=FINANCEIRO_CARTORIO'
      'FINANCEIRO_COBRANCADIAS=FINANCEIRO_COBRANCADIAS'
      'FINANCEIRO_VENDAVISTABAIXAR=FINANCEIRO_VENDAVISTABAIXAR'
      'FINANCEIRO_DIASBLOQUEIO=FINANCEIRO_DIASBLOQUEIO'
      'FINANCEIRO_PAGAR_LANCARCAIXA=FINANCEIRO_PAGAR_LANCARCAIXA'
      'FINANCEIRO_PAGAR_LANCARBANCO=FINANCEIRO_PAGAR_LANCARBANCO'
      'FINANCEIRO_PAGAR_COMISSAO=FINANCEIRO_PAGAR_COMISSAO'
      
        'FINANCEIRO_PAGAR_COMISSAOVENCIMENTO=FINANCEIRO_PAGAR_COMISSAOVEN' +
        'CIMENTO'
      'FINANCEIRO_RECEBER_LANCARCAIXA=FINANCEIRO_RECEBER_LANCARCAIXA'
      'FINANCEIRO_RECEBER_LANCARBANCO=FINANCEIRO_RECEBER_LANCARBANCO'
      'FINANCEIRO_RECEBER_CONTACAIXA=FINANCEIRO_RECEBER_CONTACAIXA'
      'FINANCEIRO_BALCAO_LANCARCAIXA=FINANCEIRO_BALCAO_LANCARCAIXA'
      'ALERTA_ESTOQUE=ALERTA_ESTOQUE'
      'ALERTA_CTARECEBER=ALERTA_CTARECEBER'
      'ALERTA_CTARECEBER_DIAS=ALERTA_CTARECEBER_DIAS'
      'ALERTA_CTAPAGAR=ALERTA_CTAPAGAR'
      'ALERTA_CTAPAGAR_DIAS=ALERTA_CTAPAGAR_DIAS'
      'ALERTA_PEDIDOS=ALERTA_PEDIDOS'
      'ALERTA_COBRANCA=ALERTA_COBRANCA'
      'ALERTA_VALIDADE=ALERTA_VALIDADE'
      'ALERTA_VALIDADE_DIAS=ALERTA_VALIDADE_DIAS'
      'ALERTA_PEDIDOSCOMPRAS=ALERTA_PEDIDOSCOMPRAS'
      'CFOP_VENDA_UF_INTERNO=CFOP_VENDA_UF_INTERNO'
      'CFOP_VENDA_UF_EXTERNO=CFOP_VENDA_UF_EXTERNO'
      'CFOP_DEVOLUCAO_UF_INTERNO=CFOP_DEVOLUCAO_UF_INTERNO'
      'CFOP_DEVOLUCAO_UF_EXTERNO=CFOP_DEVOLUCAO_UF_EXTERNO'
      'CFOP_COMPRA_UF_INTERNO=CFOP_COMPRA_UF_INTERNO'
      'CFOP_COMPRA_UF_EXTERNO=CFOP_COMPRA_UF_EXTERNO'
      'NFE_AMBIENTE=NFE_AMBIENTE'
      'NFE_TIPODANFE=NFE_TIPODANFE'
      'NFE_FORMAEMISSAO=NFE_FORMAEMISSAO'
      'NFE_MODELO=NFE_MODELO'
      'NFE_SERIE=NFE_SERIE'
      'NFE_SEQUENCIA=NFE_SEQUENCIA'
      'NFE_LOTE=NFE_LOTE'
      'SISTEMA_LOGO_PRINCIPAL=SISTEMA_LOGO_PRINCIPAL'
      'SISTEMA_LOGO_RELATORIOS=SISTEMA_LOGO_RELATORIOS'
      'CLIENTE_INATIVIDADE=CLIENTE_INATIVIDADE'
      'CLIENTE_ATRASOPERMITIDO=CLIENTE_ATRASOPERMITIDO'
      'VENDA_VENDEDOR=VENDA_VENDEDOR'
      'VENDA_CLIENTE=VENDA_CLIENTE'
      'VENDA_IMPRIMEFATURA=VENDA_IMPRIMEFATURA'
      'COMPRA_FORNECEDOR=COMPRA_FORNECEDOR'
      'PEDIDO_ENTREGA=PEDIDO_ENTREGA'
      'PEDIDO_BAIXAESTOQUE=PEDIDO_BAIXAESTOQUE'
      'PEDIDO_MENSAGEM=PEDIDO_MENSAGEM')
    DataSet = db_Parametros
    BCDToCurrency = False
    Left = 160
    Top = 240
  end
  object frx_dsEmpresa: TfrxDBDataset
    UserName = 'frx_dsEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'EMP_NOME=EMP_NOME'
      'EMP_NOME_FANTASIA=EMP_NOME_FANTASIA'
      'EMP_CNPJ=EMP_CNPJ'
      'EMP_IE=EMP_IE'
      'EMP_ENDERECO=EMP_ENDERECO'
      'EMP_NUMERO=EMP_NUMERO'
      'EMP_COMPLEMENTO=EMP_COMPLEMENTO'
      'EMP_CEP=EMP_CEP'
      'EMP_BAIRRO=EMP_BAIRRO'
      'EMP_CIDADE=EMP_CIDADE'
      'EMP_UF=EMP_UF'
      'EMP_FONE=EMP_FONE'
      'EMP_CONTATO=EMP_CONTATO'
      'EMP_MSG_PEDIDO=EMP_MSG_PEDIDO'
      'EMP_EMAIL=EMP_EMAIL'
      'EMP_SITE=EMP_SITE'
      'SRV_EMPRESA=SRV_EMPRESA'
      'SRV_SITE=SRV_SITE'
      'SRV_ANO=SRV_ANO'
      'SRV_MES=SRV_MES'
      'SRV_DIA=SRV_DIA'
      'EMPRESA_1=EMPRESA_1')
    DataSet = db_empresa
    BCDToCurrency = False
    Left = 160
    Top = 368
  end
  object SP_NFE_CALCULA: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPNFE_CALCULA'
    Left = 592
    Top = 239
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NCODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object SPNFE_PROCESSAR: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPNFE_PROCESSAR'
    Left = 720
    Top = 239
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NVENDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.Salvar = True
    Configuracoes.Geral.PathSalvar = 'C:\Sisteria\NFE\Geradas\'
    Configuracoes.Geral.PathSchemas = 'C:\Sisteria\NFE\Arquitetura\'
    Configuracoes.Geral.ExibirErroSchema = True
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.RetirarAcentos = True
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.IntervaloTentativas = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = False
    Configuracoes.Arquivos.Salvar = True
    Configuracoes.Arquivos.PathNFe = 'C:\Sisteria\NFE\Geradas'
    Configuracoes.Arquivos.PathCan = 'C:\Sisteria\NFE\Canceladas'
    Configuracoes.Arquivos.PathInu = 'C:\Sisteria\NFE\Inutilizadas'
    Configuracoes.Arquivos.PathDPEC = 'C:\Sisteria\NFE\DPEC'
    Configuracoes.Arquivos.PathCCe = 'C:\Sisteria\NFE\CCE'
    OnStatusChange = ACBrNFe1StatusChange
    DANFE = DANFE_FastReport
    Left = 64
    Top = 16
  end
  object ds_VendasDevolucaoItens: TDataSource
    DataSet = db_VendasDevolucaoItens
    Left = 720
    Top = 194
  end
  object db_VendasDevolucaoItens: TFDQuery
    BeforePost = db_VendasDevolucaoItensBeforePost
    MasterSource = DS_Vendas
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VENDAS_DEVOLUCAO_ITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 720
    Top = 167
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_VendasDevolucaoItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_VendasDevolucaoItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_VendasDevolucaoItensNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_VendasDevolucaoItensMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 30
    end
    object db_VendasDevolucaoItensSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 30
    end
    object db_VendasDevolucaoItensTIPONF: TStringField
      FieldName = 'TIPONF'
      Required = True
      Size = 30
    end
    object db_VendasDevolucaoItensEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
      Required = True
    end
    object db_VendasDevolucaoItensOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Required = True
      Size = 30
    end
    object db_VendasDevolucaoItensCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object db_VendasDevolucaoItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Required = True
    end
    object db_VendasDevolucaoItensCFOP: TIntegerField
      FieldName = 'CFOP'
      Required = True
    end
    object db_VendasDevolucaoItensTABELA: TIntegerField
      FieldName = 'TABELA'
      Required = True
    end
    object db_VendasDevolucaoItensFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Required = True
    end
    object db_VendasDevolucaoItensTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Required = True
    end
    object db_VendasDevolucaoItensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object db_VendasDevolucaoItensSEQUENCIAITEM: TIntegerField
      FieldName = 'SEQUENCIAITEM'
    end
    object db_VendasDevolucaoItensNCM: TStringField
      FieldName = 'NCM'
      Size = 30
    end
    object db_VendasDevolucaoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_VendasDevolucaoItensUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_VendasDevolucaoItensCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Size = 30
    end
    object db_VendasDevolucaoItensSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 30
    end
    object db_VendasDevolucaoItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
    end
    object db_VendasDevolucaoItensVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
    end
    object db_VendasDevolucaoItensIPI: TBCDField
      FieldName = 'IPI'
    end
    object db_VendasDevolucaoItensVLR_IPI: TBCDField
      FieldName = 'VLR_IPI'
    end
    object db_VendasDevolucaoItensICMS: TBCDField
      FieldName = 'ICMS'
    end
    object db_VendasDevolucaoItensVLR_ICMS: TBCDField
      FieldName = 'VLR_ICMS'
    end
    object db_VendasDevolucaoItensISS: TBCDField
      FieldName = 'ISS'
    end
    object db_VendasDevolucaoItensISS_BASECALCULO: TBCDField
      FieldName = 'ISS_BASECALCULO'
    end
    object db_VendasDevolucaoItensISS_VALOR: TBCDField
      FieldName = 'ISS_VALOR'
    end
    object db_VendasDevolucaoItensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
    end
    object db_VendasDevolucaoItensVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
    end
    object db_VendasDevolucaoItensVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
    end
    object db_VendasDevolucaoItensALIQUOTA: TStringField
      FieldName = 'ALIQUOTA'
      Size = 30
    end
    object db_VendasDevolucaoItensTIPOQTDE: TStringField
      FieldName = 'TIPOQTDE'
      Size = 30
    end
    object db_VendasDevolucaoItensNATUREZA_DESCONTO: TStringField
      FieldName = 'NATUREZA_DESCONTO'
      Size = 30
    end
    object db_VendasDevolucaoItensCASAS_DECIMAIS: TIntegerField
      FieldName = 'CASAS_DECIMAIS'
    end
  end
  object db_empresa: TFDQuery
    BeforeOpen = db_empresaBeforeOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_EMPRESA'
      'WHERE '
      'EMPRESA=:EMPRESA')
    Left = 160
    Top = 312
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_PedidoCompra: TDataSource
    DataSet = db_PedidoCompra
    Left = 376
    Top = 368
  end
  object ds_PedidoCompraItens: TDataSource
    DataSet = db_PedidoCompraItens
    Left = 488
    Top = 368
  end
  object db_PedidoCompra: TFDQuery
    BeforeOpen = db_PedidoCompraBeforeOpen
    AfterClose = db_PedidoCompraAfterClose
    BeforePost = db_PedidoCompraBeforePost
    AfterPost = db_PedidoCompraAfterPost
    OnNewRecord = db_PedidoCompraNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM COMPRA_PEDIDOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 376
    Top = 312
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_PedidoCompraEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_PedidoCompraCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_PedidoCompraDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_PedidoCompraDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
      EditMask = '99/99/9999'
    end
    object db_PedidoCompraREQUISICAO: TIntegerField
      FieldName = 'REQUISICAO'
    end
    object db_PedidoCompraFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object db_PedidoCompraFORNECEDORPEDIDO: TStringField
      FieldName = 'FORNECEDORPEDIDO'
      Size = 30
    end
    object db_PedidoCompraTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_PedidoCompraFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object db_PedidoCompraDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_PedidoCompraUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object db_PedidoCompraQTDE_PEDIDA: TBCDField
      FieldName = 'QTDE_PEDIDA'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoCompraQTDE_ENTREGUE: TBCDField
      FieldName = 'QTDE_ENTREGUE'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoCompraVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoCompraFRETE_VALOR: TBCDField
      FieldName = 'FRETE_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoCompraFRETE_TIPO: TStringField
      FieldName = 'FRETE_TIPO'
      Size = 30
    end
    object db_PedidoCompraOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_PedidoCompraEFETIVADO: TStringField
      FieldName = 'EFETIVADO'
      Size = 10
    end
    object db_PedidoCompraAPROVADO: TStringField
      FieldName = 'APROVADO'
      Size = 10
    end
  end
  object db_PedidoCompraItens: TFDQuery
    BeforePost = db_PedidoCompraItensBeforePost
    AfterPost = db_PedidoCompraItensAfterPost
    AfterDelete = db_PedidoCompraItensAfterDelete
    MasterSource = ds_PedidoCompra
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM COMPRA_PEDIDOS_ITENS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 488
    Top = 312
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_PedidoCompraItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_PedidoCompraItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_PedidoCompraItensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      OnChange = db_PedidoCompraItensPRODUTOChange
      Size = 30
    end
    object db_PedidoCompraItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_PedidoCompraItensUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_PedidoCompraItensQTDE_PEDIDA: TBCDField
      FieldName = 'QTDE_PEDIDA'
      DisplayFormat = '###,##0.000'
      EditFormat = '###,##0.000'
    end
    object db_PedidoCompraItensQTDE_ENTREGUE: TBCDField
      FieldName = 'QTDE_ENTREGUE'
      DisplayFormat = '###,##0.000'
      EditFormat = '###,##0.000'
    end
    object db_PedidoCompraItensQTDE_RESTANTE: TBCDField
      FieldName = 'QTDE_RESTANTE'
      ReadOnly = True
      DisplayFormat = '###,##0.000'
      EditFormat = '###,##0.000'
    end
    object db_PedidoCompraItensVALOR_UNIT: TBCDField
      FieldName = 'VALOR_UNIT'
      DisplayFormat = '###,##0.0000'
      EditFormat = '###,##0.0000'
    end
    object db_PedidoCompraItensVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoCompraItensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.000'
      EditFormat = '###,##0.000'
    end
    object db_PedidoCompraItensVLR_DESCONTO: TBCDField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.000'
      EditFormat = '###,##0.000'
    end
  end
  object SPPEDIDOCOMPRA_CALCULAR: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPPEDIDOCOMPRA_CALCULAR'
    Left = 376
    Top = 432
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_transportadora: TDataSource
    Left = 704
    Top = 335
  end
  object DANFE_FastReport: TACBrNFeDANFEFR
    ACBrNFe = ACBrNFe1
    PathPDF = 'C:\Sisteria\NFE\PDF\'
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiRetrato
    NumCopias = 1
    ImprimirDescPorc = True
    ImprimirTotalLiquido = True
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    ExibirResumoCanhoto = True
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    LocalImpCanhoto = 0
    ImprimeItens = True
    vTroco = 0.000000000000000000
    ViaConsumidor = True
    EspessuraBorda = 1
    ExibirTotalTributosItem = False
    ExibeCampoFatura = True
    TributosPercentual = ptValorProdutos
    ImprimirUnQtVlComercial = False
    Detalhado = False
    DescricaoViaEstabelec = 'Via do Consumidor'
    ExpandirDadosAdicionaisAuto = False
    Left = 160
    Top = 16
  end
end
