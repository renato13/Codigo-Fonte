object BaseDados_PCP: TBaseDados_PCP
  OldCreateOrder = True
  Height = 841
  Width = 941
  object ds_cores: TDataSource
    AutoEdit = False
    DataSet = db_cores
    Left = 336
    Top = 352
  end
  object ds_colecao: TDataSource
    AutoEdit = False
    DataSet = db_colecao
    Left = 832
    Top = 352
  end
  object ds_FaixaEtaria: TDataSource
    AutoEdit = False
    DataSet = db_FaixaEtaria
    Left = 40
    Top = 224
  end
  object DS_grifes: TDataSource
    AutoEdit = False
    DataSet = db_grifes
    Left = 432
    Top = 352
  end
  object ds_paramcustos: TDataSource
    AutoEdit = False
    DataSet = db_paramcustos
    Left = 144
    Top = 216
  end
  object ds_maquinas: TDataSource
    DataSet = db_maquinas
    Left = 440
    Top = 224
  end
  object ds_VincMaquinas: TDataSource
    AutoEdit = False
    DataSet = db_VincMaquinas
    Left = 704
    Top = 224
  end
  object ds_turnos: TDataSource
    AutoEdit = False
    DataSet = db_turnos
    Left = 336
    Top = 488
  end
  object ds_Defeitos: TDataSource
    AutoEdit = False
    DataSet = db_Defeitos
    Left = 760
    Top = 352
  end
  object ds_qualidades: TDataSource
    AutoEdit = False
    DataSet = db_qualidades
    Left = 40
    Top = 352
  end
  object ds_etiquetas: TDataSource
    AutoEdit = False
    DataSet = db_etiquetas
    Left = 144
    Top = 352
  end
  object ds_etiquetasDetalhes: TDataSource
    DataSet = db_etiquetasDetalhes
    Left = 240
    Top = 352
  end
  object ds_VincMaquinasDetalhes: TDataSource
    DataSet = db_VincMaquinasDetalhes
    Left = 808
    Top = 227
  end
  object ds_referencias: TDataSource
    AutoEdit = False
    DataSet = db_referencias
    Left = 40
    Top = 40
  end
  object ds_MateriaPrima: TDataSource
    DataSet = db_MateriaPrima
    Left = 288
    Top = 40
  end
  object ds_Cores_Modelos: TDataSource
    DataSet = db_Cores_Modelos
    Left = 392
    Top = 40
  end
  object ds_pcp_processos: TDataSource
    DataSet = db_pcp_processos
    Left = 472
    Top = 40
  end
  object ds_pcp_Custos: TDataSource
    DataSet = db_pcp_Custos
    Left = 544
    Top = 43
  end
  object ds_pcp_Medidas: TDataSource
    DataSet = db_pcp_Medidas
    Left = 704
    Top = 40
  end
  object ds_VincHumano: TDataSource
    AutoEdit = False
    DataSet = db_VincHumano
    Left = 520
    Top = 224
  end
  object ds_VincHumanoDetalhes: TDataSource
    DataSet = db_VincHumanoDetalhes
    Left = 592
    Top = 224
  end
  object ds_Cad_processos: TDataSource
    AutoEdit = False
    DataSet = db_Cad_processos
    Left = 536
    Top = 360
  end
  object ds_Cad_Tamanhos: TDataSource
    AutoEdit = False
    DataSet = DB_Cad_Tamanhos
    Left = 40
    Top = 488
  end
  object ds_Grade: TDataSource
    AutoEdit = False
    DataSet = db_Grade
    Left = 144
    Top = 496
  end
  object ds_GradeLista: TDataSource
    DataSet = db_GradeLista
    Left = 240
    Top = 488
  end
  object ds_pcp_Maquinas: TDataSource
    DataSet = db_pcp_Maquinas
    Left = 616
    Top = 40
  end
  object db_referencias: TFDQuery
    BeforeOpen = db_referenciasBeforeOpen
    BeforePost = db_referenciasBeforePost
    AfterPost = db_referenciasAfterPost
    OnNewRecord = db_referenciasNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'TIPO_PRODUTO='#39'ACA'#39)
    Left = 40
    Top = 8
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
    object db_referenciasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_referenciasCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_referenciasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      OnChange = db_referenciasREFERENCIAChange
      Size = 30
    end
    object db_referenciasGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object db_referenciasSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
    end
    object db_referenciasTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Required = True
      Size = 30
    end
    object db_referenciasDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_referenciasDT_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'DT_ULTIMA_COMPRA'
      EditMask = '99/99/9999'
    end
    object db_referenciasDT_ULTIMA_VENDA: TSQLTimeStampField
      FieldName = 'DT_ULTIMA_VENDA'
      EditMask = '99/99/9999'
    end
    object db_referenciasDT_VALIDADE: TSQLTimeStampField
      FieldName = 'DT_VALIDADE'
      EditMask = '99/99/9999'
    end
    object db_referenciasFASE: TIntegerField
      FieldName = 'FASE'
      OnChange = db_referenciasFASEChange
    end
    object db_referenciasGRIFE: TIntegerField
      FieldName = 'GRIFE'
    end
    object db_referenciasCOLECAO: TIntegerField
      FieldName = 'COLECAO'
    end
    object db_referenciasFAIXA_ETARIA: TIntegerField
      FieldName = 'FAIXA_ETARIA'
    end
    object db_referenciasESTILISTA: TIntegerField
      FieldName = 'ESTILISTA'
    end
    object db_referenciasETIQUETA: TIntegerField
      FieldName = 'ETIQUETA'
    end
    object db_referenciasGRADE: TIntegerField
      FieldName = 'GRADE'
    end
    object db_referenciasEMBALAGEM: TIntegerField
      FieldName = 'EMBALAGEM'
    end
    object db_referenciasCOMPOSICAO: TIntegerField
      FieldName = 'COMPOSICAO'
    end
    object db_referenciasGENERO: TIntegerField
      FieldName = 'GENERO'
    end
    object db_referenciasNCM: TStringField
      FieldName = 'NCM'
      Size = 30
    end
    object db_referenciasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 200
    end
    object db_referenciasDESCRICAOREDUZIDA: TStringField
      FieldName = 'DESCRICAOREDUZIDA'
      Size = 200
    end
    object db_referenciasCLASSIFICAO_FISCAL: TStringField
      FieldName = 'CLASSIFICAO_FISCAL'
      Size = 30
    end
    object db_referenciasSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 30
    end
    object db_referenciasGERAR_CODBARRA: TStringField
      FieldName = 'GERAR_CODBARRA'
      Size = 10
    end
    object db_referenciasCOMPOSICAO_DESCRICAO: TStringField
      FieldName = 'COMPOSICAO_DESCRICAO'
      Size = 200
    end
    object db_referenciasCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 30
    end
    object db_referenciasCODIGO_FABRICANTE: TStringField
      FieldName = 'CODIGO_FABRICANTE'
      Size = 30
    end
    object db_referenciasUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 30
    end
    object db_referenciasPESO: TBCDField
      FieldName = 'PESO'
      DisplayFormat = '###,##0'
    end
    object db_referenciasPESO_LIQUIDO: TBCDField
      FieldName = 'PESO_LIQUIDO'
      DisplayFormat = '###,##0'
    end
    object db_referenciasPESO_M2: TBCDField
      FieldName = 'PESO_M2'
      DisplayFormat = '###,##0'
    end
    object db_referenciasQTDE_TECIDOS: TBCDField
      FieldName = 'QTDE_TECIDOS'
      DisplayFormat = '###,##0'
    end
    object db_referenciasQTDE_OPCOES: TBCDField
      FieldName = 'QTDE_OPCOES'
      DisplayFormat = '###,##0'
    end
    object db_referenciasPRAZOENTREGA: TIntegerField
      FieldName = 'PRAZOENTREGA'
      DisplayFormat = '###,##0'
    end
    object db_referenciasLOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object db_referenciasNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object db_referenciasCOMISSAO_VAREJO: TBCDField
      FieldName = 'COMISSAO_VAREJO'
    end
    object db_referenciasCOMISSAO_ATACADO: TBCDField
      FieldName = 'COMISSAO_ATACADO'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasCOMISSAO_REPRESENTANTE: TBCDField
      FieldName = 'COMISSAO_REPRESENTANTE'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasREGISTROINPI: TStringField
      FieldName = 'REGISTROINPI'
      Size = 30
    end
    object db_referenciasVOLUME: TBCDField
      FieldName = 'VOLUME'
    end
    object db_referenciasPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Size = 10
    end
    object db_referenciasMARCA: TStringField
      FieldName = 'MARCA'
      Size = 200
    end
    object db_referenciasLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 200
    end
    object db_referenciasATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 10
    end
    object db_referenciasINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 5000
    end
    object db_referenciasTOTAL_RESERVA: TBCDField
      FieldName = 'TOTAL_RESERVA'
      DisplayFormat = '###,##0.00'
    end
    object db_referenciasTOTAL_ORDEMPRODUCAO: TBCDField
      FieldName = 'TOTAL_ORDEMPRODUCAO'
      DisplayFormat = '###,##0.00'
    end
    object db_referenciasTOTAL_QTDEMATPRIMA: TBCDField
      FieldName = 'TOTAL_QTDEMATPRIMA'
      DisplayFormat = '###,##0.000'
    end
    object db_referenciasTOTAL_VLRMATPRIMA: TBCDField
      FieldName = 'TOTAL_VLRMATPRIMA'
      DisplayFormat = '###,##0.000'
    end
    object db_referenciasTOTAL_PROCESSO_TEMPO: TBCDField
      FieldName = 'TOTAL_PROCESSO_TEMPO'
      DisplayFormat = '0#:0#'
    end
    object db_referenciasTOTAL_PROCESSO_CUSTOS: TBCDField
      FieldName = 'TOTAL_PROCESSO_CUSTOS'
      DisplayFormat = '###,##0.000'
    end
    object db_referenciasTOTAL_CUSTOS_PERCENTUAL: TBCDField
      FieldName = 'TOTAL_CUSTOS_PERCENTUAL'
      DisplayFormat = '###,##0.000'
    end
    object db_referenciasTOTAL_CUSTOS_VALOR: TBCDField
      FieldName = 'TOTAL_CUSTOS_VALOR'
      DisplayFormat = '###,##0.000'
    end
    object db_referenciasSALDO_IMPLANTACAO: TBCDField
      FieldName = 'SALDO_IMPLANTACAO'
      DisplayFormat = '###,##0.00'
    end
    object db_referenciasESTOQUEMINIMO: TBCDField
      FieldName = 'ESTOQUEMINIMO'
      DisplayFormat = '###,##0.00'
    end
    object db_referenciasESTOQUEMAXIMO: TBCDField
      FieldName = 'ESTOQUEMAXIMO'
      DisplayFormat = '###,##0.00'
    end
    object db_referenciasESTOQUESALDO: TBCDField
      FieldName = 'ESTOQUESALDO'
      DisplayFormat = '###,##0.00'
    end
    object db_referenciasMG_LUCRO: TBCDField
      FieldName = 'MG_LUCRO'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasIPI: TBCDField
      FieldName = 'IPI'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasICMS: TBCDField
      FieldName = 'ICMS'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasPIS: TBCDField
      FieldName = 'PIS'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasCOFINS: TBCDField
      FieldName = 'COFINS'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasPUBLICIDADE: TBCDField
      FieldName = 'PUBLICIDADE'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasINADIMPLENCIA: TBCDField
      FieldName = 'INADIMPLENCIA'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasADMINISTRATIVO: TBCDField
      FieldName = 'ADMINISTRATIVO'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasIMPORTACAO: TBCDField
      FieldName = 'IMPORTACAO'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasPERC_FRETE: TBCDField
      FieldName = 'PERC_FRETE'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasFINANCEIRO: TBCDField
      FieldName = 'FINANCEIRO'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasIMPOSTOS_OUTROS: TBCDField
      FieldName = 'IMPOSTOS_OUTROS'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasMARKUP: TBCDField
      FieldName = 'MARKUP'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasIR: TBCDField
      FieldName = 'IR'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasPRC_CUSTOBRUTO: TBCDField
      FieldName = 'PRC_CUSTOBRUTO'
      DisplayFormat = '###,##0.000'
    end
    object db_referenciasPRC_CUSTO: TBCDField
      FieldName = 'PRC_CUSTO'
      DisplayFormat = '###,##0.000'
    end
    object db_referenciasPRC_VENDA: TBCDField
      FieldName = 'PRC_VENDA'
      DisplayFormat = '###,##0.00'
    end
    object db_referenciasLUCRO_LIQUIDO: TBCDField
      FieldName = 'LUCRO_LIQUIDO'
      DisplayFormat = '###,##0.00'
    end
    object db_referenciasDETALHES: TStringField
      FieldName = 'DETALHES'
      Size = 5000
    end
    object db_referenciasPRODUCAO_TEMPO: TBCDField
      FieldName = 'PRODUCAO_TEMPO'
      DisplayFormat = '0#:0#'
    end
    object db_referenciasPRODUCAO_CUSTOS: TBCDField
      FieldName = 'PRODUCAO_CUSTOS'
      DisplayFormat = '###,##0.000'
    end
    object db_referenciasCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_referenciasTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_referenciasFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object db_referenciasOZ: TBCDField
      FieldName = 'OZ'
    end
    object db_referenciasPRC_CUSTOPRODUCAO: TBCDField
      FieldName = 'PRC_CUSTOPRODUCAO'
    end
    object db_referenciasREFERENCIAREDUZIDA: TStringField
      FieldName = 'REFERENCIAREDUZIDA'
      Size = 30
    end
    object db_referenciasMARKUPID: TIntegerField
      FieldName = 'MARKUPID'
    end
    object db_referenciasHORAS: TTimeField
      FieldName = 'HORAS'
    end
  end
  object db_MateriaPrima: TFDQuery
    BeforePost = db_MateriaPrimaBeforePost
    AfterPost = db_MateriaPrimaAfterPost
    MasterSource = ds_referencias
    MasterFields = 'EMPRESA;CODIGO'
    DetailFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  *  FROM  PCP_MATERIAPRIMA'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 288
    Top = 8
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
    object db_MateriaPrimaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_MateriaPrimaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_MateriaPrimaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      OnChange = db_MateriaPrimaREFERENCIAChange
      Size = 30
    end
    object db_MateriaPrimaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_MateriaPrimaUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_MateriaPrimaQTDE: TBCDField
      FieldName = 'QTDE'
      OnChange = db_MateriaPrimaQTDEChange
      DisplayFormat = '###,##0.0000'
    end
    object db_MateriaPrimaVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
    end
    object db_MateriaPrimaVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
    end
    object db_MateriaPrimaCOMPOSICAO: TIntegerField
      FieldName = 'COMPOSICAO'
    end
    object db_MateriaPrimaCOMPOSICAO_DESCRICAO: TStringField
      FieldName = 'COMPOSICAO_DESCRICAO'
      Size = 200
    end
    object db_MateriaPrimaDIMENSIONAMENTO: TStringField
      FieldName = 'DIMENSIONAMENTO'
      Size = 200
    end
    object db_MateriaPrimaCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_MateriaPrimaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
  end
  object db_Cores_Modelos: TFDQuery
    BeforePost = db_Cores_ModelosBeforePost
    MasterSource = ds_referencias
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  *  FROM  PCP_CORES'
      'WHERE'
      ''
      'CODIGO=:CODIGO')
    Left = 392
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_Cores_ModelosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_Cores_ModelosID_COR: TIntegerField
      FieldName = 'ID_COR'
      OnChange = db_Cores_ModelosID_CORChange
    end
    object db_Cores_ModelosNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object db_pcp_processos: TFDQuery
    BeforePost = db_pcp_processosBeforePost
    MasterSource = ds_referencias
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  *  FROM  PCP_PROCESSOS'
      'WHERE'
      ''
      'CODIGO=:CODIGO')
    Left = 472
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_pcp_processosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_pcp_processosID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      Required = True
      OnChange = db_pcp_processosID_PROCESSOChange
    end
    object db_pcp_processosNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_pcp_processosCUSTOS: TBCDField
      FieldName = 'CUSTOS'
      DisplayFormat = '###,##0.000'
      EditFormat = '###,##0.000'
    end
    object db_pcp_processosINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 5000
    end
    object db_pcp_processosTEMPO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TEMPO'
      ProviderFlags = []
      DisplayFormat = '0#:0#'
    end
  end
  object db_pcp_Custos: TFDQuery
    BeforePost = db_pcp_CustosBeforePost
    AfterPost = db_pcp_CustosAfterPost
    MasterSource = ds_referencias
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  *  FROM  PCP_CUSTOS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 544
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_pcp_CustosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_pcp_CustosCODIGOCUSTO: TIntegerField
      FieldName = 'CODIGOCUSTO'
      OnChange = db_pcp_CustosCODIGOCUSTOChange
    end
    object db_pcp_CustosNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_pcp_CustosVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.000'
      EditFormat = '###,##0.000'
    end
  end
  object db_pcp_Medidas: TFDQuery
    BeforePost = db_pcp_MedidasBeforePost
    AfterPost = db_pcp_MedidasAfterPost
    MasterSource = ds_referencias
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  *  FROM  PCP_MEDIDAS'
      'WHERE'
      ''
      'CODIGO=:CODIGO')
    Left = 704
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_pcp_MedidasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_pcp_MedidasIDNOME: TIntegerField
      FieldName = 'IDNOME'
    end
    object db_pcp_MedidasNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_pcp_MedidasIDMOLDE: TStringField
      FieldName = 'IDMOLDE'
      Size = 30
    end
    object db_pcp_MedidasMEDIDA: TBCDField
      FieldName = 'MEDIDA'
      DisplayFormat = '###,##0.00'
    end
  end
  object db_colecao: TFDQuery
    OnNewRecord = db_colecaoNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_COLECAO')
    Left = 832
    Top = 320
    object db_colecaoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_colecaoNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_colecaoPERIODO_INI: TSQLTimeStampField
      FieldName = 'PERIODO_INI'
      EditMask = '99/99/9999'
    end
    object db_colecaoPERIODO_FIM: TSQLTimeStampField
      FieldName = 'PERIODO_FIM'
      EditMask = '99/99/9999'
    end
    object db_colecaoPECAS_META: TIntegerField
      FieldName = 'PECAS_META'
      DisplayFormat = '###,##0'
    end
    object db_colecaoQTDE_MODELOS: TIntegerField
      FieldName = 'QTDE_MODELOS'
      DisplayFormat = '###,##0'
    end
    object db_colecaoVALOR_META: TBCDField
      FieldName = 'VALOR_META'
      DisplayFormat = '###,##0.00'
    end
    object db_colecaoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
  end
  object db_FaixaEtaria: TFDQuery
    BeforePost = db_FaixaEtariaBeforePost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_FAIXAETARIA')
    Left = 40
    Top = 192
  end
  object db_paramcustos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PARAMCUSTOS')
    Left = 144
    Top = 192
  end
  object db_pcp_Maquinas: TFDQuery
    BeforePost = db_pcp_MaquinasBeforePost
    MasterSource = ds_referencias
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM PCP_MAQUINAS'
      'WHERE'
      ''
      'CODIGO=:CODIGO')
    Left = 616
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_pcp_MaquinasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_pcp_MaquinasID_MAQUINA: TIntegerField
      FieldName = 'ID_MAQUINA'
      OnChange = db_pcp_MaquinasID_MAQUINAChange
    end
    object db_pcp_MaquinasNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_pcp_MaquinasAGULHAS: TIntegerField
      FieldName = 'AGULHAS'
    end
    object db_pcp_MaquinasFIOS: TIntegerField
      FieldName = 'FIOS'
    end
  end
  object db_VincHumano: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PROCESSO_OPERADOR')
    Left = 520
    Top = 192
    object db_VincHumanoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Required = True
    end
    object db_VincHumanoFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
    end
  end
  object db_VincHumanoDetalhes: TFDQuery
    BeforePost = db_VincHumanoDetalhesBeforePost
    MasterSource = ds_VincHumano
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM CAD_PROCESSO_OPERADOR_DETALHE'
      'WHERE'
      ''
      'CODIGO=:CODIGO')
    Left = 592
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_VincHumanoDetalhesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_VincHumanoDetalhesMAQUINA: TIntegerField
      FieldName = 'MAQUINA'
      Required = True
      OnChange = db_VincHumanoDetalhesMAQUINAChange
    end
    object db_VincHumanoDetalhesNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_VincHumanoDetalhesNomeMaquina: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeMaquina'
      LookupDataSet = db_maquinas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'MAQUINA'
      Size = 200
      Lookup = True
    end
  end
  object db_VincMaquinas: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM  CAD_PROCESSO_MAQUINA')
    Left = 704
    Top = 195
    object db_VincMaquinasCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_VincMaquinasMAQUINA: TIntegerField
      FieldName = 'MAQUINA'
      Required = True
    end
  end
  object db_VincMaquinasDetalhes: TFDQuery
    BeforePost = db_VincMaquinasDetalhesBeforePost
    MasterSource = ds_VincMaquinas
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM  CAD_PROCESSO_MAQUINA_DETALHE'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 808
    Top = 195
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_VincMaquinasDetalhesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_VincMaquinasDetalhesMAQUINA: TIntegerField
      FieldName = 'MAQUINA'
      Required = True
    end
    object db_VincMaquinasDetalhesPROCESSO: TIntegerField
      FieldName = 'PROCESSO'
      Required = True
      OnChange = db_VincMaquinasDetalhesPROCESSOChange
    end
    object db_VincMaquinasDetalhesNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_VincMaquinasDetalhesTEMPO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TEMPO'
      ProviderFlags = []
      DisplayFormat = '0#:0#'
    end
  end
  object db_qualidades: TFDQuery
    OnNewRecord = db_qualidadesNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_QUALIDADES')
    Left = 40
    Top = 320
  end
  object db_etiquetas: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_ETIQUETAS')
    Left = 144
    Top = 320
  end
  object db_etiquetasDetalhes: TFDQuery
    BeforePost = db_etiquetasDetalhesBeforePost
    MasterSource = ds_etiquetas
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM CAD_ETIQUETASDET'
      'WHERE'
      ''
      'CODIGO=:CODIGO')
    Left = 240
    Top = 320
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
  end
  object db_etiquetasSum: TFDQuery
    MasterSource = ds_etiquetas
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT CODIGO, SUM(PERCENTUAL) as PERCENTUAL from CAD_ETIQUETASD' +
        'ET'
      'WHERE'
      ''
      'CODIGO=:CODIGO'
      'GROUP BY CODIGO')
    Left = 240
    Top = 392
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_cores: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_CORES')
    Left = 336
    Top = 320
  end
  object db_grifes: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_GRIFES')
    Left = 432
    Top = 320
  end
  object db_Cad_processos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PROCESSOS')
    Left = 536
    Top = 328
    object db_Cad_processosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_Cad_processosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 200
    end
    object db_Cad_processosCUSTO: TBCDField
      FieldName = 'CUSTO'
      DisplayFormat = '###,##0.000'
    end
    object db_Cad_processosINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 5000
    end
    object db_Cad_processosTEMPO: TFloatField
      FieldName = 'TEMPO'
      Origin = 'TEMPO'
      DisplayFormat = '0#:0#'
    end
  end
  object DB_Cad_Tamanhos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_TAMANHOS')
    Left = 40
    Top = 456
    object DB_Cad_TamanhosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object DB_Cad_TamanhosTAMANHO: TStringField
      FieldName = 'TAMANHO'
      OnChange = DB_Cad_TamanhosTAMANHOChange
      Size = 30
    end
    object DB_Cad_TamanhosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object db_Grade: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_GRADE')
    Left = 144
    Top = 456
    object db_GradeCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_GradeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object db_GradeLista: TFDQuery
    BeforePost = db_GradeListaBeforePost
    MasterSource = ds_Grade
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM CAD_GRADELISTA'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 240
    Top = 456
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object db_GradeListaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_GradeListaID_TAMANHO: TIntegerField
      FieldName = 'ID_TAMANHO'
    end
    object db_GradeListaORDEM: TStringField
      FieldName = 'ORDEM'
      Size = 30
    end
    object db_GradeListaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_GradeListaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      OnChange = db_GradeListaTAMANHOChange
      Size = 30
    end
    object db_GradeListaNometamanho: TStringField
      FieldKind = fkLookup
      FieldName = 'Nometamanho'
      LookupDataSet = DB_Cad_Tamanhos
      LookupKeyFields = 'TAMANHO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TAMANHO'
      Size = 100
      Lookup = True
    end
  end
  object db_GradeListaMax: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT MAX(ORDEM) AS ORDEM FROM CAD_GRADELISTA'
      'WHERE'
      ''
      'CODIGO=:CODIGO')
    Left = 240
    Top = 553
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_GradeListaMaxORDEM: TStringField
      FieldName = 'ORDEM'
      ReadOnly = True
      Size = 30
    end
  end
  object db_turnos: TFDQuery
    AfterPost = db_turnosAfterPost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_TURNO')
    Left = 336
    Top = 456
    object db_turnosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_turnosNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_turnosTOLERANCIA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOLERANCIA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0#:0#'
    end
  end
  object db_Defeitos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_DEFEITOS')
    Left = 760
    Top = 321
  end
  object ds_SituacaoTributaria: TDataSource
    DataSet = db_SituacaoTributaria
    Left = 40
    Top = 640
  end
  object db_SituacaoTributaria: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_SITUACAO_TRIBUTARIA'
      'ORDER BY CODIGO')
    Left = 40
    Top = 616
  end
  object ds_ClassificacaoFiscal: TDataSource
    DataSet = db_ClassificacaoFiscal
    Left = 152
    Top = 640
  end
  object db_ClassificacaoFiscal: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_CLASSIFISCAL'
      'ORDER BY CODIGO')
    Left = 152
    Top = 616
  end
  object db_OrdemProducao: TFDQuery
    BeforeOpen = db_OrdemProducaoBeforeOpen
    BeforePost = db_OrdemProducaoBeforePost
    OnNewRecord = db_OrdemProducaoNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PCP_ORDEMPRODUCAO'
      'WHERE'
      ''
      'EMPRESA=:EMPRESA'
      '/*'
      'AND'
      'CODIGO=:CODIGO'
      '*/')
    Left = 520
    Top = 456
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_OrdemProducaoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object db_OrdemProducaoCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object db_OrdemProducaoAPROVADO: TStringField
      FieldName = 'APROVADO'
      Origin = 'APROVADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object db_OrdemProducaoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'DATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '99/99/9999'
    end
    object db_OrdemProducaoDATAPREVISAO: TSQLTimeStampField
      FieldName = 'DATAPREVISAO'
      Origin = 'DATAPREVISAO'
      EditMask = '99/99/9999'
    end
    object db_OrdemProducaoDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
      Origin = 'DATAFECHAMENTO'
      EditMask = '99/99/9999'
    end
    object db_OrdemProducaoLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object db_OrdemProducaoLOTENOME: TStringField
      FieldName = 'LOTENOME'
      Origin = 'LOTENOME'
      Size = 200
    end
    object db_OrdemProducaoENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      Origin = 'ENCERRADO'
      Size = 10
    end
    object db_OrdemProducaoNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
      Size = 30
    end
    object db_OrdemProducaoQTDE_TOTAL: TIntegerField
      FieldName = 'QTDE_TOTAL'
      Origin = 'QTDE_TOTAL'
      DisplayFormat = '###,##0'
    end
    object db_OrdemProducaoQTDE_PRODUZIDA: TIntegerField
      FieldName = 'QTDE_PRODUZIDA'
      Origin = 'QTDE_PRODUZIDA'
      DisplayFormat = '###,##0'
    end
    object db_OrdemProducaoQTDE_RESTANTE: TIntegerField
      FieldName = 'QTDE_RESTANTE'
      Origin = 'QTDE_RESTANTE'
      DisplayFormat = '###,##0'
    end
    object db_OrdemProducaoQTDE_PERDAS: TIntegerField
      FieldName = 'QTDE_PERDAS'
      Origin = 'QTDE_PERDAS'
      DisplayFormat = '###,##0'
    end
    object db_OrdemProducaoQTDE_DEFEITOS: TIntegerField
      FieldName = 'QTDE_DEFEITOS'
      Origin = 'QTDE_DEFEITOS'
      DisplayFormat = '###,##0'
    end
    object db_OrdemProducaoTEMPO_PRODUCAO: TFloatField
      FieldName = 'TEMPO_PRODUCAO'
      Origin = 'TEMPO_PRODUCAO'
    end
    object db_OrdemProducaoPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      Precision = 15
    end
    object db_OrdemProducaoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 5000
    end
    object db_OrdemProducaoTERCEIRIZADOATUAL: TIntegerField
      FieldName = 'TERCEIRIZADOATUAL'
      Origin = 'TERCEIRIZADOATUAL'
    end
    object db_OrdemProducaoFASEATUAL: TIntegerField
      FieldName = 'FASEATUAL'
      Origin = 'FASEATUAL'
    end
    object db_OrdemProducaoCELULAATUAL: TIntegerField
      FieldName = 'CELULAATUAL'
      Origin = 'CELULAATUAL'
    end
    object db_OrdemProducaoMAQUINAATUAL: TIntegerField
      FieldName = 'MAQUINAATUAL'
      Origin = 'MAQUINAATUAL'
    end
    object db_OrdemProducaoOPERADORATUAL: TIntegerField
      FieldName = 'OPERADORATUAL'
      Origin = 'OPERADORATUAL'
    end
    object db_OrdemProducaoPROCESSOATUAL: TIntegerField
      FieldName = 'PROCESSOATUAL'
      Origin = 'PROCESSOATUAL'
    end
    object db_OrdemProducaoTURNOATUAL: TIntegerField
      FieldName = 'TURNOATUAL'
      Origin = 'TURNOATUAL'
    end
    object db_OrdemProducaoDEFEITOATUAL: TIntegerField
      FieldName = 'DEFEITOATUAL'
      Origin = 'DEFEITOATUAL'
    end
    object db_OrdemProducaoQUALIDADEATUAL: TIntegerField
      FieldName = 'QUALIDADEATUAL'
      Origin = 'QUALIDADEATUAL'
    end
  end
  object ds_OrdemProducao: TDataSource
    DataSet = db_OrdemProducao
    Left = 520
    Top = 488
  end
  object db_OrdemProducaoItens: TFDQuery
    BeforePost = db_OrdemProducaoItensBeforePost
    MasterSource = ds_OrdemProducao
    MasterFields = 'EMPRESA;CODIGO'
    DetailFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM PCP_ORDEMPRODUCAO_ITENS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 632
    Top = 456
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
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_OrdemProducaoItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object db_OrdemProducaoItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object db_OrdemProducaoItensAPROVADO: TStringField
      FieldName = 'APROVADO'
      Origin = 'APROVADO'
      Required = True
      Size = 10
    end
    object db_OrdemProducaoItensDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = 'DATA'
      Required = True
      EditMask = '99/99/9999'
    end
    object db_OrdemProducaoItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Required = True
      OnChange = db_OrdemProducaoItensREFERENCIAChange
      Size = 30
    end
    object db_OrdemProducaoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object db_OrdemProducaoItensQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      DisplayFormat = '###,##0'
    end
    object db_OrdemProducaoItensQTDEPRODUZIDA: TIntegerField
      FieldName = 'QTDEPRODUZIDA'
      Origin = 'QTDEPRODUZIDA'
      DisplayFormat = '###,##0'
    end
    object db_OrdemProducaoItensQTDE_RESTANTE: TIntegerField
      FieldName = 'QTDE_RESTANTE'
      Origin = 'QTDE_RESTANTE'
      DisplayFormat = '###,##0'
    end
    object db_OrdemProducaoItensTEMPOPRODUCAO: TBCDField
      FieldName = 'TEMPOPRODUCAO'
      Origin = 'TEMPOPRODUCAO'
      DisplayFormat = '0#:0#'
      Precision = 15
    end
  end
  object ds_OrdemProducaoItens: TDataSource
    DataSet = db_OrdemProducaoItens
    Left = 632
    Top = 488
  end
  object db_MateriaPrimaTecidos: TFDQuery
    BeforePost = db_MateriaPrimaTecidosBeforePost
    AfterPost = db_MateriaPrimaTecidosAfterPost
    MasterSource = ds_referencias
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  *  FROM  PCP_MATERIAPRIMA_TECIDOS'
      'WHERE'
      ''
      'CODIGO=:CODIGO'
      '')
    Left = 200
    Top = 9
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_MateriaPrimaTecidosEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_MateriaPrimaTecidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_MateriaPrimaTecidosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      OnChange = db_MateriaPrimaTecidosREFERENCIAChange
      Size = 30
    end
    object db_MateriaPrimaTecidosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_MateriaPrimaTecidosUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_MateriaPrimaTecidosQTDE_METROS: TBCDField
      FieldName = 'QTDE_METROS'
      OnChange = db_MateriaPrimaTecidosQTDE_METROSChange
      DisplayFormat = '###,##0.0000'
    end
    object db_MateriaPrimaTecidosVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
    end
    object db_MateriaPrimaTecidosVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
    end
    object db_MateriaPrimaTecidosCOMPOSICAO: TIntegerField
      FieldName = 'COMPOSICAO'
    end
    object db_MateriaPrimaTecidosCOMPOSICAO_DESCRICAO: TStringField
      FieldName = 'COMPOSICAO_DESCRICAO'
      Size = 200
    end
    object db_MateriaPrimaTecidosDIMENSIONAMENTO: TStringField
      FieldName = 'DIMENSIONAMENTO'
      Size = 200
    end
    object db_MateriaPrimaTecidosCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_MateriaPrimaTecidosTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
  end
  object ds_MateriaPrimaTecidos: TDataSource
    DataSet = db_MateriaPrimaTecidos
    Left = 200
    Top = 40
  end
  object SP_OP_CALCULAR: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPOP_CALCULAR'
    Left = 520
    Top = 560
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_maquinas: TFDQuery
    OnNewRecord = db_maquinasNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_MAQUINAS')
    Left = 442
    Top = 192
    object db_maquinasCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_maquinasNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_maquinasN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Size = 200
    end
    object db_maquinasNRO_AGULHAS: TIntegerField
      FieldName = 'NRO_AGULHAS'
    end
    object db_maquinasNRO_FIOS: TIntegerField
      FieldName = 'NRO_FIOS'
    end
    object db_maquinasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_maquinasSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
  end
  object ds_pcp_MedidasPosLavagem: TDataSource
    DataSet = db_pcp_MedidasPosLavagem
    Left = 704
    Top = 128
  end
  object db_pcp_MedidasPosLavagem: TFDQuery
    BeforePost = db_pcp_MedidasPosLavagemBeforePost
    AfterPost = db_pcp_MedidasPosLavagemAfterPost
    MasterSource = ds_referencias
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  PCP_MEDIDAS_APOS_LAVAR'
      'WHERE'
      ''
      'CODIGO=:CODIGO')
    Left = 704
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_pcp_MedidasPosLavagemCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_pcp_MedidasPosLavagemIDNOME: TIntegerField
      FieldName = 'IDNOME'
    end
    object db_pcp_MedidasPosLavagemNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_pcp_MedidasPosLavagemIDMOLDE: TStringField
      FieldName = 'IDMOLDE'
      Size = 30
    end
    object db_pcp_MedidasPosLavagemMEDIDA: TBCDField
      FieldName = 'MEDIDA'
      DisplayFormat = '###,##0.00'
    end
  end
  object ds_referencia_Fotos: TDataSource
    DataSet = db_referencia_Fotos
    Left = 104
    Top = 40
  end
  object db_referencia_Fotos: TFDQuery
    BeforePost = db_referencia_FotosBeforePost
    MasterSource = ds_referencias
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  *  FROM   CAD_PRODUTOS_FOTOS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 104
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
  end
  object ACBrExtenso1: TACBrExtenso
    StrMoeda = ' '
    StrMoedas = ' '
    StrCentavo = ' '
    StrCentavos = ' '
    ZeroAEsquerda = False
    Left = 80
    Top = 145
  end
  object db_fases: TFDQuery
    OnNewRecord = db_fasesNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_FASES')
    Left = 232
    Top = 192
  end
  object ds_fases: TDataSource
    AutoEdit = False
    DataSet = db_fases
    Left = 232
    Top = 216
  end
  object db_Cad_processosdGrade: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PROCESSOSGRADE')
    Left = 616
    Top = 328
    object db_Cad_processosdGradeCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      DisplayFormat = '###,##0.000'
    end
    object db_Cad_processosdGradeNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_Cad_processosdGradeCUSTO_TOTAL: TBCDField
      FieldName = 'CUSTO_TOTAL'
    end
    object db_Cad_processosdGradeTEMPO_TOTAL: TFloatField
      FieldName = 'TEMPO_TOTAL'
      Origin = 'TEMPO_TOTAL'
      DisplayFormat = '0#:0#'
    end
  end
  object db_Cad_processosdLista: TFDQuery
    BeforePost = db_Cad_processosdListaBeforePost
    AfterPost = db_Cad_processosdListaAfterPost
    MasterSource = ds_Cad_processosdGrade
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM  CAD_PROCESSOSLISTA'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 688
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_Cad_processosdListaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_Cad_processosdListaPROCESSO: TIntegerField
      FieldName = 'PROCESSO'
      Required = True
      OnChange = db_Cad_processosdListaPROCESSOChange
    end
    object db_Cad_processosdListaNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_Cad_processosdListaCUSTO: TBCDField
      FieldName = 'CUSTO'
      DisplayFormat = '###,##0.000'
    end
    object db_Cad_processosdListaTEMPO: TFloatField
      FieldName = 'TEMPO'
      Origin = 'TEMPO'
      DisplayFormat = '0#:0#'
    end
  end
  object ds_Cad_processosdGrade: TDataSource
    AutoEdit = False
    DataSet = db_Cad_processosdGrade
    Left = 616
    Top = 360
  end
  object ds_Cad_processosdLista: TDataSource
    DataSet = db_Cad_processosdLista
    Left = 688
    Top = 360
  end
  object db_Cad_processosdListaSum: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT'
      'SUM(TEMPO) AS TEMPO,'
      'SUM(CUSTO) AS CUSTO'
      'FROM  CAD_PROCESSOSLISTA'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 776
    Top = 456
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_turnosGrade: TDataSource
    DataSet = db_turnosGrade
    Left = 432
    Top = 496
  end
  object db_turnosGrade: TFDQuery
    BeforePost = db_turnosGradeBeforePost
    MasterSource = ds_turnos
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM CAD_TURNO_GRADE'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 432
    Top = 456
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_turnosGradeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_turnosGradeDIA_SEMANA: TStringField
      FieldName = 'DIA_SEMANA'
      Size = 30
    end
    object db_turnosGradeTURNO1_HORA_INI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TURNO1_HORA_INI'
      ProviderFlags = []
      DisplayFormat = '0#:0#'
    end
    object db_turnosGradeTURNO1_HORA_FIM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TURNO1_HORA_FIM'
      ProviderFlags = []
      DisplayFormat = '0#:0#'
    end
    object db_turnosGradeTURNO2_HORA_INI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TURNO2_HORA_INI'
      ProviderFlags = []
      DisplayFormat = '0#:0#'
    end
    object db_turnosGradeTURNO2_HORA_FIM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TURNO2_HORA_FIM'
      ProviderFlags = []
      DisplayFormat = '0#:0#'
    end
  end
  object SP_TotalizaReferencia: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPTOTALIZAREFENCIA'
    Left = 40
    Top = 80
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SP_PRODUTOS_QTDE_STATUS: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPPRODUTOS_QTDE_STATUS'
    Left = 632
    Top = 560
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'TREFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'TCOR'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'TTAMANHO'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object ds_MateriaPrimaGrade: TDataSource
    DataSet = db_MateriaPrimaGrade
    Left = 288
    Top = 128
  end
  object db_MateriaPrimaGrade: TFDQuery
    BeforePost = db_MateriaPrimaGradeBeforePost
    AfterPost = db_MateriaPrimaGradeAfterPost
    MasterSource = ds_MateriaPrima
    MasterFields = 'EMPRESA;CODIGO;REFERENCIA'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  PCP_MATERIAPRIMA_GRADE'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'REFERENCIA=:REFERENCIA')
    Left = 288
    Top = 96
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
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
    object db_MateriaPrimaGradeEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_MateriaPrimaGradeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_MateriaPrimaGradeREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      Size = 30
    end
    object db_MateriaPrimaGradeCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object db_MateriaPrimaGradeCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_MateriaPrimaGradeTAMANHO_ID: TIntegerField
      FieldName = 'TAMANHO_ID'
    end
    object db_MateriaPrimaGradeTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_MateriaPrimaGradeORDEM_GRADE: TStringField
      FieldName = 'ORDEM_GRADE'
      Size = 30
    end
    object db_MateriaPrimaGradeTAMANHOPADRAO: TStringField
      FieldName = 'TAMANHOPADRAO'
      OnChange = db_MateriaPrimaGradeTAMANHOPADRAOChange
      Size = 30
    end
    object db_MateriaPrimaGradeQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###,##0.0000'
    end
    object db_MateriaPrimaGradePADRAOCORID: TIntegerField
      FieldName = 'PADRAOCORID'
    end
    object db_MateriaPrimaGradePADRAOCORNOME: TStringField
      FieldName = 'PADRAOCORNOME'
      Size = 200
    end
  end
  object db_MateriaPrimaTamanhos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      
        'DISTINCT  COR_CODIGO, COR, TAMANHO_CODIGO, TAMANHO, TAMANHO_ORDE' +
        'M  '
      ''
      'FROM VIEW_GRADEREFERENCIA'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'REFERENCIA=:REFERENCIA'
      'ORDER BY COR, TAMANHO_ORDEM')
    Left = 392
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object db_FasesGrade: TFDQuery
    OnNewRecord = db_FasesGradeNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_FASESGRADE')
    Left = 288
    Top = 192
    object db_FasesGradeCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_FasesGradeNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object db_FasesGradeIMPRIMEOP: TStringField
      FieldName = 'IMPRIMEOP'
      Size = 10
    end
  end
  object ds_FasesGrade: TDataSource
    AutoEdit = False
    DataSet = db_FasesGrade
    Left = 288
    Top = 216
  end
  object db_FasesGradeLista: TFDQuery
    BeforePost = db_FasesGradeListaBeforePost
    OnNewRecord = db_FasesGradeListaNewRecord
    MasterSource = ds_FasesGrade
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM CAD_FASESGRADE_LISTA'
      'WHERE'
      'CODIGO=:CODIGO'
      'ORDER BY ORDEM')
    Left = 360
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 2
      end>
    object db_FasesGradeListaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_FasesGradeListaFASE: TIntegerField
      FieldName = 'FASE'
      Required = True
      OnChange = db_FasesGradeListaFASEChange
    end
    object db_FasesGradeListaORDEM: TStringField
      FieldName = 'ORDEM'
      Size = 30
    end
    object db_FasesGradeListaNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_FasesGradeListaIMPRIMEOP: TStringField
      FieldName = 'IMPRIMEOP'
      Size = 10
    end
  end
  object ds_FasesGradeLista: TDataSource
    DataSet = db_FasesGradeLista
    Left = 360
    Top = 216
  end
  object ds_LoteProducao: TDataSource
    AutoEdit = False
    DataSet = db_LoteProducao
    Left = 776
    Top = 568
  end
  object db_LoteProducao: TFDQuery
    OnNewRecord = db_LoteProducaoNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_LOTEPRODUCAO')
    Left = 776
    Top = 536
    object db_LoteProducaoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_LoteProducaoNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_LoteProducaoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
  end
  object ds_MateriaPrimaTecidosGrade: TDataSource
    DataSet = db_MateriaPrimaTecidosGrade
    Left = 200
    Top = 128
  end
  object db_MateriaPrimaTecidosGrade: TFDQuery
    BeforePost = db_MateriaPrimaTecidosGradeBeforePost
    AfterPost = db_MateriaPrimaTecidosGradeAfterPost
    MasterSource = ds_MateriaPrimaTecidos
    MasterFields = 'EMPRESA;CODIGO;REFERENCIA'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  PCP_MATERIAPRIMA_TECIDOSGRADE'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'REFERENCIA=:REFERENCIA'
      'ORDER BY REFERENCIA_COR_NOME')
    Left = 200
    Top = 96
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
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
    object db_MateriaPrimaTecidosGradeEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_MateriaPrimaTecidosGradeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_MateriaPrimaTecidosGradeREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      Size = 30
    end
    object db_MateriaPrimaTecidosGradeREFERENCIA_COR_ID: TIntegerField
      FieldName = 'REFERENCIA_COR_ID'
    end
    object db_MateriaPrimaTecidosGradeREFERENCIA_COR_NOME: TStringField
      FieldName = 'REFERENCIA_COR_NOME'
      Size = 30
    end
    object db_MateriaPrimaTecidosGradeCOR_ID: TIntegerField
      FieldName = 'COR_ID'
      OnChange = db_MateriaPrimaTecidosGradeCOR_IDChange
    end
    object db_MateriaPrimaTecidosGradeCOR_NOME: TStringField
      FieldName = 'COR_NOME'
      Size = 30
    end
    object db_MateriaPrimaTecidosGradeQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
    end
    object db_MateriaPrimaTecidosGradeREFERENCIA_TAMANHO_ID: TIntegerField
      FieldName = 'REFERENCIA_TAMANHO_ID'
    end
    object db_MateriaPrimaTecidosGradeREFERENCIA_TAMANHO: TStringField
      FieldName = 'REFERENCIA_TAMANHO'
      Size = 200
    end
    object db_MateriaPrimaTecidosGradeTAMANHO_ID: TIntegerField
      FieldName = 'TAMANHO_ID'
    end
    object db_MateriaPrimaTecidosGradeTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 200
    end
    object db_MateriaPrimaTecidosGradeORDEM_GRADE: TStringField
      FieldName = 'ORDEM_GRADE'
      Size = 30
    end
  end
  object db_MateriaPrimaTamanhosTecidos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT DISTINCT  COR_CODIGO, COR, TAMANHO_CODIGO, TAMANHO, TAMAN' +
        'HO_ORDEM  FROM VIEW_GRADEREFERENCIA'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'REFERENCIA=:REFERENCIA'
      'ORDER BY COR_CODIGO, COR, TAMANHO_ORDEM')
    Left = 240
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object db_MateriaPrimaTecidosGradeSomar: TFDQuery
    MasterSource = ds_MateriaPrimaTecidos
    MasterFields = 'EMPRESA;CODIGO;REFERENCIA'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'SELECT  SUM(QUANTIDADE) AS QUANTIDADE FROM  PCP_MATERIAPRIMA_TEC' +
        'IDOSGRADE'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'REFERENCIA=:REFERENCIA')
    Left = 160
    Top = 16
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
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
        Size = 31
        Value = Null
      end>
  end
end
