object FrmComprasEtiquetas: TFrmComprasEtiquetas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Etiquetas de Produtos'
  ClientHeight = 223
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 182
    Width = 507
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BtnImprimir: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = BtnImprimirClick
    end
    object BtnSair: TButton
      Left = 97
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 507
    Height = 182
    Align = alClient
    TabOrder = 0
    inline FrmFrameBarra1: TFrmFrameBarra
      Left = 1
      Top = 1
      Width = 505
      Height = 33
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 505
      ExplicitHeight = 33
      inherited W7Panel1: TPanel
        Width = 505
        Height = 33
        ExplicitWidth = 505
        ExplicitHeight = 33
        inherited LblBarraTitulo: TLabel
          Width = 418
          Caption = 'C'#243'digo de Barras - Etiquetas para reposi'#231#227'o de estoque'
          ExplicitWidth = 418
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 50
      Width = 505
      Height = 79
      Align = alTop
      Caption = 'Layout da Etiqueta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 414
        Top = 15
        Width = 86
        Height = 55
        Cursor = crHandPoint
        Hint = 'Crie ou Configure suas pr'#243'prias etiquetas...'
        Caption = 'Configurar...'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8BFBFBFAEAEAEAEAEAEBBBBBBC4C4C4C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C6C6C6BD
          BDBDB6B6B6BDBDBDC7C7C7C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C4C4C4989A9C587B9244728E586B7A76777A8D8D8DA3A3A3B5B5B5C0C0
          C0C5C5C5C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C0C0C08A92975E
          778962707A7D7E7DA2A2A2BFBFBFC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C0C1C168889F2193CC0ACBFB05D6FF0AC3F316A1D12D7DA64569805D6873797B
          7F959595A8A8A8B6B6B6C2C2C2C7C7C7C8C8C8C8C8C8B2B3B4587E9C258CE828
          90F9278AEE2C79BA53636F8D8D8DBBBBBBC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          90A4B516A8F60FB1F109C4F807CBF905D2F900DBFE0CC1F30DC2F70DBCEB1D98
          C43176984C6A7F6D70758A8A8AA0A0A0B7B7B7A7ABAE4384B52592F12891FC23
          98F9209FFB2796FF278AE4496173939393C1C1C1C8C8C8C8C8C8C8C8C8BCBCBC
          57848A169C8E138F940F8EBB0E9DDD0FAFF10BC1FA10B1EB0AC0EF03D5FC03DA
          FF04DAFF0AC8F715A0D62885AE416D85626D773D78A72599FC2590F12496F810
          BAFA07CAF80FBDF9249BFF2688DF5C676EA9A9A9C8C8C8C8C8C8A7ACA73A6D3A
          23952D56EB784FE2703FCC6725A86118957A1392A4158FC8119EE40DB1F10BBF
          F708C9F908C9F507C9F504D9FF06D4FF0DB8E71F94EA2292F02392F1229AFA17
          A9F413B6FB12B5F516B0F8269AFF346F9D8E8E8EC4C4C4C8C8C8468B48108719
          33BC4D55F68457F98745CB6433933C2BA63A24AF3A23AB4726A1691C958A1491
          AE1098D010A3E810B2F30AC6F705CFF705CCF51F9CF02196F02295F12299FA21
          96F22198F42299F81BA4F321A1FF2687D5747A7FC0C0C0C8C8C83B8D412CAA43
          3AC95B47EC7040CF663C4337854E5A7F5E5A696E5343814241D55E3BCC5425AE
          3E22A84E1C9B6C148C981093C610A4E60FADED1D9CEF1F9AF12098F2209DFA22
          98F8258EF1268DF02197F521A0FE2292E66C767DBFBFBFC8C8C844974D4BD773
          49E07139E35E35B4544A353C88555E9F626BBD6E7BBF6D7C315D35525D45586B
          483F853E2C9D3940D05B34C15A1F9F591B92861C9CE91D9EF41F9BF21F9DF61F
          9DF7209FFB2299F9209CF91FA3FE2196E76C767DBFBFBFC8C8C8479F5265FD99
          5AEE8939DD5D2FB14A523E41734B5287585E9E656BB16F764630397C4D58A461
          6DAF6473A1656A40974E37914732923527A4411BA2E11AA2F71D9EF219A0E917
          A4EB1D9BED1D9FF41CA3F91CA8FF1F97E76C767DBFBFBFC8C8C88CAE8C3AB350
          3EC25E29B7432CAE425B4246624249754F548C5B619C646A4E3A3E6B4A4F8859
          5FA2676DC0737E503C3E754651985A617E64641FA1E415A9F71BA1F11BA0EE12
          B9FC0FBCF712AFEE18A1EA1BA5F61D9CE86C767DBFBFBFC8C8C8C8C8C84B804E
          17912415A8272AAC3D65474B533A4165464B7B52588B5A60563F4363454A754E
          558D5D62A3686E583E446F4D51975E62A66A7823A6E911ADF718A6F218A4ED19
          AAF91CA3F917AEFC0FBAF916A9F01C9FE86C767DBFBFBFC8C8C89DA49D246C24
          0D931816CA3126A7356E4D51453339553E436A494F7950566044485B41456346
          4A7B52578F5D635F444864464B8151558B5E6A1FA9E710B2F716ABF31AA1EE14
          B4FA10BEFC13B6FB1CA6F91BA2F119A4E96C767DBFBFBFC8C8C839883C108019
          16A0260FC32624A430785256392D3348373B5B424768484D68484D533D41533E
          426B494F7C525967484D5C42466F494B7C56621CACE50EB8F815AFF216A8EE18
          ADFC1DA3F919ABF911B8FB15ADF218A7E96C757DBFBFBFC8C8C83A8B3F28A33E
          20B03507BC1C23A12C84575D29252B3B31344D3A3E584044724E534D3A3E4335
          395A42456A4A4E6F4C51543D425D3F416C4D5817B1E50BBDF912B6F516A7EB14
          AEF110BCFA12B9FD1AA8FA18A7F114ADEA6C767DBFBFBFC8C8C841954942C663
          30C54E00B311129F1D985F66492A3B33262F4030374B343D7C515846373A362E
          314C3A3D5B41467750554D3A3D4E37395F445014B3E309C0F810BAF507C8FE0F
          B4F317A6EB18A6ED13B2F414B1F113B1EA6C757DBFBFBFC8C8C84C9A545BED8A
          60F49229CD4508B3181C8E1F3E69323F49343B2F342E392D875C5E5539432525
          273C32344A383C7F545A47363A3F2F304F3D4A18C0E718E2FF0CB3EE17ADE602
          C2F700CBFD07C9FB12B2EE11B7F310B6EB6C757DBFBFBFC8C8C891AE923EB859
          60F1926AFFA05EF79044EF6F25D74715B92B0F961C00A21036842E6A514C4932
          3B3F29363C28358C56614234372E282943353D2D96BB0CCAF43A95B98B8890A5
          C8DE5DC2EC15BCF000CEFD00DFFF0EBBEC6B757DBFBFBFC8C8C8C8C8C8AEBBAE
          76A378559F5D4AB6614DD5745EF08E60FF9250F97F3AE35F1ACA380FB2231894
          201F6C2111631B69714D7641543523313B2C33442E35595B6A8C8381A09994EE
          E5E1FFF4F1E1E4ED8DBEDA24B2DB0CB7EF7C858DC4C4C4C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8B6BEB699B19971A2734DA1583EB9594ADB7255EF8351F37F3EEB
          672ADA4C16CB2E0BA81C2A842837643132402E36303089807DBEBEBBD1D0CEE4
          E3E3EAEAEAF6F4F2EED8D06498A83C85ACAEAFB0C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8BAC1BA8CAA8C629F6746A3533EBB
          5841D76647E56F3BE36125D64610CB2A2E9D39858581CCC9C9DFDFDDE4E3E3E3
          E2E1E5E3E3E9E8E8E0DEDC888B8E696868A6A6A6C6C6C6C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C4C6C4A7B7
          A785A986569C5C33A7442DC94C3DCA5A8F908BAFA9ABD7D6D5D7D6D5D9D8D7DC
          DBDBDFDDDDE1DFDFE5E5E4D9D6D37E7C7A717171B3B3B3C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8BFC3BF93A893688267A89EA3B6B5B3D1D0CFCECDCCD2D1D0D7
          D6D5D9D8D7DBDBDADCDBDBE5E5E5D2D0CF6967668E8E8EC2C2C2C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C89E969CADABA9B6B4B2CCCACAC8C7C6D3D3D2B4
          B3B1AAA8A6C1C0BED8D7D6D8D8D7DFDEDDA9A7A66D6D6DB4B4B4C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8A6A5A4B9B8B6B0AEACC9C8C5C9C7C6BAB8B79C
          9997A19E9C969392B6B5B3D4D3D2D4D4D3D1D1D06E6D6DABABABC8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8ABA9A8C5C3C2B3B2B0C1C0BECFCECC98979681
          807FA6A4A2AAA8A79C9A98C8C7C5CECDCCD8D7D57A7978A8A8A8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8BDBCBCBAB9B8D0CFCEB4B2B1E1E1E09A99989B
          9B9BA09F9EAFACABA9A6A4BDBCBAC9C8C7D4D3D1838181A9A9A9C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8AAA8A8E1E0E0CAC9C9D2D0D0A09F9E94
          9494C5C5C5ACAAA9B5B3B3C2C1C1C0BEBDD5D2D2838282AFAFAFC8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8BFBEBEB9B7B6F3F2F2DBD9D98B8A88AC
          ACACC8C8C8ABAAA8C2C1C0C7C5C4C5C4C2DEDDDC817F7FC0C0C0C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8B7B6B6C7C5C4B3B0AFA0A09FC7
          C7C7C8C8C8B0AEADCFCECDD2D1D0ECECEB9E9D9CAAA9A9C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8BDBDBCB8B8B8C8C8C8C8
          C8C8C8C8C8B0AEAEEFEDEDBCBAB990908EA8A8A8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8ADABAABAB9B79F9E9DBBBBBBC8C8C8C8C8C8C8C8C8}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object ComboEtiquetas: TDBLookupComboBox
        Left = 15
        Top = 32
        Width = 393
        Height = 21
        Cursor = crHandPoint
        DropDownRows = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'DESCRICAO'
        ListField = 'DESCRICAO'
        ListSource = ds_EtiquetasLayout
        NullValueKey = 46
        ParentFont = False
        TabOrder = 0
      end
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 34
      Width = 505
      Height = 16
      Align = alTop
      TabOrder = 2
    end
  end
  object ds_EtiquetasLayout: TDataSource
    DataSet = db_EtiquetasLayout
    Left = 192
    Top = 32
  end
  object db_EtiquetasLayout: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  * FROM CONFIG_ETIQUETAS_LAYOUTS'
      '')
    Left = 288
    Top = 32
  end
  object db_lista: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select * from CONFIG_ETIQUETAS01_TEMP')
    Left = 351
    Top = 135
  end
  object DB_Produtos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM COMPRAS_ITENS ')
    Left = 263
    Top = 135
  end
  object DS_Produtos: TDataSource
    DataSet = DB_Produtos
    Left = 199
    Top = 135
  end
  object frxDBListaProdutos: TfrxDBDataset
    UserName = 'frxDBListaProdutos'
    CloseDataSource = False
    DataSet = db_lista
    BCDToCurrency = False
    Left = 464
    Top = 136
  end
  object frxDBEtiquetas: TfrxDBDataset
    UserName = 'frxDBEtiquetas'
    CloseDataSource = False
    DataSet = db_EtiquetasLayout
    BCDToCurrency = False
    Left = 392
    Top = 136
  end
  object frxReport1: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40369.606125034700000000
    ReportOptions.LastChange = 40370.630028020800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '  '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      '  MasterData1.Height               :=<col_comprimento>;'
      ' // MasterData1.ColumnGap            :=<col_distancia>;'
      ''
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  CODIGO DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_CodigoProduto.left        :=<prd_coluna>;'
      '   campo_CodigoProduto.top         :=<prd_linha>;'
      '   campo_CodigoProduto.Width       :=<prd_largura>;'
      '   campo_CodigoProduto.Height      :=<prd_comprimento>;'
      '   campo_CodigoProduto.Visible     :=<prd_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  CODIGO DE BARRAS DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_CodigoBarras.left         :=<cb_coluna>;'
      '   campo_CodigoBarras.top          :=<cb_linha>;'
      '   campo_CodigoBarras.Width        :=<cb_largura>;'
      '   campo_CodigoBarras.Height       :=<cb_comprimento>;'
      '   campo_CodigoBarras.Visible      :=<cb_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  DESCRICA'#199#195'O DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_DescricaoProduto.left     :=<dsc_coluna>;'
      '   campo_DescricaoProduto.top      :=<dsc_linha>;'
      '   campo_DescricaoProduto.Width    :=<dsc_largura>;'
      '   campo_DescricaoProduto.Height   :=<dsc_comprimento>;'
      '   campo_DescricaoProduto.Visible  :=<dsc_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  UNIDADE DE MEDIDA DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_UnidadeMedida.left        :=<und_coluna>;'
      '   campo_UnidadeMedida.top         :=<und_linha>;'
      '   campo_UnidadeMedida.Width       :=<und_largura>;'
      '   campo_UnidadeMedida.Height      :=<und_comprimento>;'
      '   campo_UnidadeMedida.Visible     :=<und_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  TAMANHO DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_Tamanho.left              :=<tam_coluna>;'
      '   campo_Tamanho.top               :=<tam_linha>;'
      '   campo_Tamanho.Width             :=<tam_largura>;'
      '   campo_Tamanho.Height            :=<tam_comprimento>;'
      '   campo_Tamanho.Visible           :=<tam_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  VALOR (PRE'#199'O DE VENDA) DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_ValorProduto.left         :=<vlr_coluna>;'
      '   campo_ValorProduto.top          :=<vlr_linha>;'
      '   campo_ValorProduto.Width        :=<vlr_largura>;'
      '   campo_ValorProduto.Height       :=<vlr_comprimento>;'
      '   campo_ValorProduto.Visible      :=<vlr_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  FORNECEDOR DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_Fornecedor.left           :=<frn_coluna>;'
      '   campo_Fornecedor.top            :=<frn_linha>;'
      '   campo_Fornecedor.Width          :=<frn_largura>;'
      '   campo_Fornecedor.Height         :=<frn_comprimento>;'
      '   campo_Fornecedor.Visible        :=<frn_visivel>;'
      ''
      '        '
      ''
      '    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 32
    Top = 136
    Datasets = <
      item
        DataSet = frxDBEtiquetas
        DataSetName = 'frxDBEtiquetas'
      end
      item
        DataSet = frxDBListaProdutos
        DataSetName = 'frxDBListaProdutos'
      end>
    Variables = <
      item
        Name = ' pagina'
        Value = Null
      end
      item
        Name = 'pg_largura'
        Value = Null
      end
      item
        Name = 'pg_comprimento'
        Value = Null
      end
      item
        Name = ' margens'
        Value = Null
      end
      item
        Name = 'mg_topo'
        Value = Null
      end
      item
        Name = 'mg_rodape'
        Value = Null
      end
      item
        Name = 'mg_esquerda'
        Value = Null
      end
      item
        Name = 'mg_direita'
        Value = Null
      end
      item
        Name = ' fontes'
        Value = Null
      end
      item
        Name = 'fnt_nome'
        Value = Null
      end
      item
        Name = 'fnt_tamanho'
        Value = Null
      end
      item
        Name = ' colunas'
        Value = Null
      end
      item
        Name = 'col_quantidades'
        Value = Null
      end
      item
        Name = 'col_largura'
        Value = Null
      end
      item
        Name = 'col_comprimento'
        Value = Null
      end
      item
        Name = 'col_distancia'
        Value = Null
      end
      item
        Name = ' campo_codigobarras'
        Value = Null
      end
      item
        Name = 'cb_largura'
        Value = Null
      end
      item
        Name = 'cb_comprimento'
        Value = Null
      end
      item
        Name = 'cb_coluna'
        Value = Null
      end
      item
        Name = 'cb_linha'
        Value = Null
      end
      item
        Name = 'cb_visivel'
        Value = Null
      end
      item
        Name = ' campo_descricao'
        Value = Null
      end
      item
        Name = 'dsc_largura'
        Value = Null
      end
      item
        Name = 'dsc_comprimento'
        Value = Null
      end
      item
        Name = 'dsc_coluna'
        Value = Null
      end
      item
        Name = 'dsc_linha'
        Value = Null
      end
      item
        Name = 'dsc_visivel'
        Value = Null
      end
      item
        Name = ' campo_fornecedor'
        Value = Null
      end
      item
        Name = 'frn_largura'
        Value = Null
      end
      item
        Name = 'frn_comprimento'
        Value = Null
      end
      item
        Name = 'frn_coluna'
        Value = Null
      end
      item
        Name = 'frn_linha'
        Value = Null
      end
      item
        Name = 'frn_visivel'
        Value = Null
      end
      item
        Name = ' campo_codigoproduto'
        Value = Null
      end
      item
        Name = 'prd_largura'
        Value = Null
      end
      item
        Name = 'prd_comprimento'
        Value = Null
      end
      item
        Name = 'prd_coluna'
        Value = Null
      end
      item
        Name = 'prd_linha'
        Value = Null
      end
      item
        Name = 'prd_visivel'
        Value = Null
      end
      item
        Name = ' campo_tamanho'
        Value = Null
      end
      item
        Name = 'tam_largura'
        Value = Null
      end
      item
        Name = 'tam_comprimento'
        Value = Null
      end
      item
        Name = 'tam_coluna'
        Value = Null
      end
      item
        Name = 'tam_linha'
        Value = Null
      end
      item
        Name = 'tam_visivel'
        Value = Null
      end
      item
        Name = ' campo_valor'
        Value = Null
      end
      item
        Name = 'vlr_largura'
        Value = Null
      end
      item
        Name = 'vlr_comprimento'
        Value = Null
      end
      item
        Name = 'vlr_coluna'
        Value = Null
      end
      item
        Name = 'vlr_linha'
        Value = Null
      end
      item
        Name = 'vlr_visivel'
        Value = Null
      end
      item
        Name = ' campo_unidade'
        Value = Null
      end
      item
        Name = 'und_largura'
        Value = ''
      end
      item
        Name = 'und_comprimento'
        Value = ''
      end
      item
        Name = 'und_coluna'
        Value = ''
      end
      item
        Name = 'und_linha'
        Value = ''
      end
      item
        Name = 'und_visivel'
        Value = ''
      end>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 1.000000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 3.400000000000000000
      BottomMargin = 3.400000000000000000
      ColumnWidth = 213.900000000000000000
      ColumnPositions.Strings = (
        '0')
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 192.000000000000000000
        Top = 18.897650000000000000
        Width = 808.441467000000000000
        DataSet = frxDBListaProdutos
        DataSetName = 'frxDBListaProdutos'
        RowCount = 0
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 808.441467000000000000
          Height = 192.000000000000000000
        end
        object campo_CodigoBarras: TfrxBarCodeView
          Left = 7.559055120000000000
          Top = 26.118120000000000000
          Width = 194.000000000000000000
          Height = 22.677180000000000000
          Visible = False
          BarType = bcCode39
          DataField = 'CODIGOBARRA'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Expression = '<ListaProdutos."CODIGOBARRA">'
          Rotation = 0
          ShowText = False
          Text = '7896041915044'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
        end
        object campo_CodigoProduto: TfrxMemoView
          Left = 7.559055120000000000
          Top = 3.779527560000000000
          Width = 188.976377950000000000
          Height = 15.117973540000000000
          DataField = 'CODIGOPRODUTO'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBListaProdutos."CODIGOPRODUTO"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_Tamanho: TfrxMemoView
          Left = 137.559055120000000000
          Top = 75.827180000000000000
          Width = 58.960266220000000000
          Height = 15.117973540000000000
          Visible = False
          DataField = 'TAMANHO'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBListaProdutos."TAMANHO"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_UnidadeMedida: TfrxMemoView
          Left = 7.559055120000000000
          Top = 76.929530000000000000
          Width = 58.960266220000000000
          Height = 15.117973540000000000
          Visible = False
          DataField = 'UNIDADE'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBListaProdutos."UNIDADE"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_ValorProduto: TfrxMemoView
          Left = 5.826674020000000000
          Top = 101.150000000000000000
          Width = 58.960266220000000000
          Height = 15.117973540000000000
          Visible = False
          DataField = 'PRECO'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBListaProdutos."PRECO"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_DescricaoProduto: TfrxMemoView
          Left = 7.559055120000000000
          Top = 54.370130000000000000
          Width = 188.976377950000000000
          Height = 15.117973540000000000
          DataField = 'DESCRICAO'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBListaProdutos."DESCRICAO"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_Fornecedor: TfrxMemoView
          Left = 7.559055120000000000
          Top = 124.315090000000000000
          Width = 188.976377950000000000
          Height = 15.117973540000000000
          Visible = False
          DataField = 'FORNECEDOR'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBListaProdutos."FORNECEDOR"]')
          ParentFont = False
          Style = 'Data'
        end
      end
    end
  end
  object frxReport2: TfrxReport
    Version = '5.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40369.606125034700000000
    ReportOptions.LastChange = 40370.580805844900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '  '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      '  MasterData1.Height               :=<col_comprimento>;'
      ' // MasterData1.ColumnGap            :=<col_distancia>;'
      ''
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  CODIGO DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   // campo_CodigoProduto.left        :=<prd_coluna>;'
      '    '
      '   campo_CodigoProduto.top         :=<prd_linha>;'
      '   campo_CodigoProduto.Width       :=<prd_largura>;'
      '   campo_CodigoProduto.Height      :=<prd_comprimento>;'
      '   campo_CodigoProduto.Visible     :=<prd_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  CODIGO DE BARRAS DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_CodigoBarras.left         :=<cb_coluna>;'
      '   campo_CodigoBarras.top          :=<cb_linha>;'
      '   campo_CodigoBarras.Width        :=<cb_largura>;'
      '   campo_CodigoBarras.Height       :=<cb_comprimento>;'
      '   campo_CodigoBarras.Visible      :=<cb_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  DESCRICA'#199#195'O DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_DescricaoProduto.left     :=<dsc_coluna>;'
      '   campo_DescricaoProduto.top      :=<dsc_linha>;'
      '   campo_DescricaoProduto.Width    :=<dsc_largura>;'
      '   campo_DescricaoProduto.Height   :=<dsc_comprimento>;'
      '   campo_DescricaoProduto.Visible  :=<dsc_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  UNIDADE DE MEDIDA DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_UnidadeMedida.left        :=<und_coluna>;'
      '   campo_UnidadeMedida.top         :=<und_linha>;'
      '   campo_UnidadeMedida.Width       :=<und_largura>;'
      '   campo_UnidadeMedida.Height      :=<und_comprimento>;'
      '   campo_UnidadeMedida.Visible     :=<und_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  TAMANHO DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_Tamanho.left              :=<tam_coluna>;'
      '   campo_Tamanho.top               :=<tam_linha>;'
      '   campo_Tamanho.Width             :=<tam_largura>;'
      '   campo_Tamanho.Height            :=<tam_comprimento>;'
      '   campo_Tamanho.Visible           :=<tam_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  VALOR (PRE'#199'O DE VENDA) DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_ValorProduto.left         :=<vlr_coluna>;'
      '   campo_ValorProduto.top          :=<vlr_linha>;'
      '   campo_ValorProduto.Width        :=<vlr_largura>;'
      '   campo_ValorProduto.Height       :=<vlr_comprimento>;'
      '   campo_ValorProduto.Visible      :=<vlr_visivel>;'
      ''
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   ///  FORNECEDOR DO PRODUTO'
      
        '   /// ---------------------------------------------------------' +
        '---------------'
      '   campo_Fornecedor.left           :=<frn_coluna>;'
      '   campo_Fornecedor.top            :=<frn_linha>;'
      '   campo_Fornecedor.Width          :=<frn_largura>;'
      '   campo_Fornecedor.Height         :=<frn_comprimento>;'
      '   campo_Fornecedor.Visible        :=<frn_visivel>;'
      ''
      '        '
      ''
      '    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 104
    Top = 136
    Datasets = <
      item
        DataSet = frxDBListaProdutos
        DataSetName = 'frxDBListaProdutos'
      end>
    Variables = <
      item
        Name = ' pagina'
        Value = Null
      end
      item
        Name = 'pg_largura'
        Value = Null
      end
      item
        Name = 'pg_comprimento'
        Value = Null
      end
      item
        Name = ' margens'
        Value = Null
      end
      item
        Name = 'mg_topo'
        Value = Null
      end
      item
        Name = 'mg_rodape'
        Value = Null
      end
      item
        Name = 'mg_esquerda'
        Value = Null
      end
      item
        Name = 'mg_direita'
        Value = Null
      end
      item
        Name = ' fontes'
        Value = Null
      end
      item
        Name = 'fnt_nome'
        Value = Null
      end
      item
        Name = 'fnt_tamanho'
        Value = Null
      end
      item
        Name = ' colunas'
        Value = Null
      end
      item
        Name = 'col_quantidades'
        Value = Null
      end
      item
        Name = 'col_largura'
        Value = Null
      end
      item
        Name = 'col_comprimento'
        Value = Null
      end
      item
        Name = 'col_distancia'
        Value = Null
      end
      item
        Name = ' campo_codigobarras'
        Value = Null
      end
      item
        Name = 'cb_largura'
        Value = Null
      end
      item
        Name = 'cb_comprimento'
        Value = Null
      end
      item
        Name = 'cb_coluna'
        Value = Null
      end
      item
        Name = 'cb_linha'
        Value = Null
      end
      item
        Name = 'cb_visivel'
        Value = Null
      end
      item
        Name = ' campo_descricao'
        Value = Null
      end
      item
        Name = 'dsc_largura'
        Value = Null
      end
      item
        Name = 'dsc_comprimento'
        Value = Null
      end
      item
        Name = 'dsc_coluna'
        Value = Null
      end
      item
        Name = 'dsc_linha'
        Value = Null
      end
      item
        Name = 'dsc_visivel'
        Value = Null
      end
      item
        Name = ' campo_fornecedor'
        Value = Null
      end
      item
        Name = 'frn_largura'
        Value = Null
      end
      item
        Name = 'frn_comprimento'
        Value = Null
      end
      item
        Name = 'frn_coluna'
        Value = Null
      end
      item
        Name = 'frn_linha'
        Value = Null
      end
      item
        Name = 'frn_visivel'
        Value = Null
      end
      item
        Name = ' campo_codigoproduto'
        Value = Null
      end
      item
        Name = 'prd_largura'
        Value = Null
      end
      item
        Name = 'prd_comprimento'
        Value = Null
      end
      item
        Name = 'prd_coluna'
        Value = Null
      end
      item
        Name = 'prd_linha'
        Value = Null
      end
      item
        Name = 'prd_visivel'
        Value = Null
      end
      item
        Name = ' campo_tamanho'
        Value = Null
      end
      item
        Name = 'tam_largura'
        Value = Null
      end
      item
        Name = 'tam_comprimento'
        Value = Null
      end
      item
        Name = 'tam_coluna'
        Value = Null
      end
      item
        Name = 'tam_linha'
        Value = Null
      end
      item
        Name = 'tam_visivel'
        Value = Null
      end
      item
        Name = ' campo_valor'
        Value = Null
      end
      item
        Name = 'vlr_largura'
        Value = Null
      end
      item
        Name = 'vlr_comprimento'
        Value = Null
      end
      item
        Name = 'vlr_coluna'
        Value = Null
      end
      item
        Name = 'vlr_linha'
        Value = Null
      end
      item
        Name = 'vlr_visivel'
        Value = Null
      end
      item
        Name = ' campo_unidade'
        Value = Null
      end
      item
        Name = 'und_largura'
        Value = ''
      end
      item
        Name = 'und_comprimento'
        Value = ''
      end
      item
        Name = 'und_coluna'
        Value = ''
      end
      item
        Name = 'und_linha'
        Value = ''
      end
      item
        Name = 'und_visivel'
        Value = ''
      end>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 1.000000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 3.400000000000000000
      BottomMargin = 3.400000000000000000
      ColumnWidth = 213.900000000000000000
      ColumnPositions.Strings = (
        '0')
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 192.000000000000000000
        Top = 94.897650000000000000
        Width = 808.441467000000000000
        DataSet = frxDBListaProdutos
        DataSetName = 'frxDBListaProdutos'
        RowCount = 0
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 808.441467000000000000
          Height = 192.000000000000000000
        end
        object campo_CodigoBarras: TfrxBarCodeView
          Left = 7.559055120000000000
          Top = 26.118120000000000000
          Width = 194.000000000000000000
          Height = 22.677180000000000000
          Visible = False
          BarType = bcCode39
          DataField = 'CODIGOBARRA'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Expression = '<ListaProdutos."CODIGOBARRA">'
          Rotation = 0
          ShowText = False
          Text = '7896041915044'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object campo_CodigoProduto: TfrxMemoView
          Left = 7.559055120000000000
          Top = 3.779527560000000000
          Width = 188.976377950000000000
          Height = 15.117973540000000000
          AutoWidth = True
          DataField = 'CODIGOPRODUTO'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ListaProdutos."CODIGOPRODUTO"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_Tamanho: TfrxMemoView
          Left = 137.559055120000000000
          Top = 75.827180000000000000
          Width = 58.960266220000000000
          Height = 15.117973540000000000
          Visible = False
          DataField = 'TAMANHO'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ListaProdutos."TAMANHO"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_UnidadeMedida: TfrxMemoView
          Left = 7.559055120000000000
          Top = 76.929530000000000000
          Width = 58.960266220000000000
          Height = 15.117973540000000000
          Visible = False
          DataField = 'UNIDADE'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ListaProdutos."UNIDADE"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_ValorProduto: TfrxMemoView
          Left = 5.826674020000000000
          Top = 101.150000000000000000
          Width = 58.960266220000000000
          Height = 15.117973540000000000
          Visible = False
          DataField = 'PRECO'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ListaProdutos."PRECO"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_DescricaoProduto: TfrxMemoView
          Left = 7.559055120000000000
          Top = 54.370130000000000000
          Width = 188.976377950000000000
          Height = 15.117973540000000000
          DataField = 'DESCRICAO'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ListaProdutos."DESCRICAO"]')
          ParentFont = False
          Style = 'Data'
        end
        object campo_Fornecedor: TfrxMemoView
          Left = 7.559055120000000000
          Top = 124.315090000000000000
          Width = 188.976377950000000000
          Height = 15.117973540000000000
          Visible = False
          DataField = 'FORNECEDOR'
          DataSet = frxDBListaProdutos
          DataSetName = 'frxDBListaProdutos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ListaProdutos."FORNECEDOR"]')
          ParentFont = False
          Style = 'Data'
        end
      end
    end
  end
  object db_estoque: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS'
      'WHERE'
      'REFERENCIA=:PRODUTO')
    Left = 447
    Top = 55
    ParamData = <
      item
        Name = 'PRODUTO'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object ds_lista: TDataSource
    DataSet = db_lista
    Left = 344
    Top = 56
  end
end
