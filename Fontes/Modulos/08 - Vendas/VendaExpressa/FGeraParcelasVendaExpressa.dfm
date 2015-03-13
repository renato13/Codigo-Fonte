object FrmGeraParcelasVendaExpressa: TFrmGeraParcelasVendaExpressa
  Left = 195
  Top = 120
  BorderStyle = bsDialog
  Caption = 'Gerar Faturas - Venda Expressa'
  ClientHeight = 365
  ClientWidth = 472
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
    Top = 41
    Width = 360
    Height = 324
    Align = alClient
    Caption = 'Parcelas/Faturas'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 356
      Height = 307
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
          FieldName = 'DOCUMENTO'
          Title.Caption = 'Documento'
          Width = 77
          Visible = True
        end
        item
          Color = 14811135
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Emiss'#227'o'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENC'
          Title.Caption = 'Vencimento'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 69
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 360
    Top = 41
    Width = 112
    Height = 324
    Align = alRight
    TabOrder = 0
    object BtnSair: TBitBtn
      Left = 10
      Top = 103
      Width = 95
      Height = 48
      Cursor = crHandPoint
      Hint = 'sair da gera'#231#227'o de parcelas'
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
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnSairClick
    end
    object BtnExcluir: TBitBtn
      Left = 10
      Top = 55
      Width = 95
      Height = 48
      Cursor = crHandPoint
      Hint = 'Excluir Registro'
      Caption = 'E&xcluir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000D1D1B7D1D1B7
        D0D0B6D0D0B6DDDDC0E1E1C3E0E0C2E0DFC2DCDCBFD1D1B7CFCFB5D0D0B6D1D1
        B7D1D1B7D1D1B7D1D1B7D1D1B7D0D0B7D3D3B8D4D4B9B4B5A2AAAB9BADAE9EAD
        AF9EB6B8A5D1D1B7D7D7BCD3D3B9D0D0B6D1D1B7D1D1B7D1D1B7D0D0B6D3D3B8
        C8CAB2A1A193BDBAA4D0C7A8D3C3A5C5B6A0AAA590A0A090A4A695C8C9B1D7D7
        BCD0D0B6D1D1B7D1D1B7D1D0B6D2D3B9D0C4A4EFE0BBFFF4C7FDDDBBE9C2B3EE
        C6C1FFD8C6FFF2D3E1D4BCA1A191ADAD9BD9D9BDD0D0B6D1D1B7D2D1B6CED1BA
        EBCA97FFE8B9F2DBC2D8B8B9E0B6BDA1C89499CD9389CB81D2EBBEFFFEE5B7B8
        A5AEAE9DD6D6BBD0D0B6D1D0B7D2D2B9E8B97BF1C492E9DADEE1CECCF5CFD678
        BD6D0093000C9C0D06970BABDD9EFFF1D1938F80D2D2B9D1D1B7CDD3BDDACDAB
        F7BF81F5E4D7F4EBEEE6D9D6F2C0CA7DBF74008A006DC26BCDE6C052B953E6CF
        99AF9F8ACFD2BAD1D1B6CCD3BDDBCCAAFEDAB4FCFEFFFBFAF8DCB8B9D6B7ADCF
        DBBA9DD19462BE64EBF2DCCCE8C0DAD495A28C80B5BAA7D6D6BACBD1BCE9CC9F
        FEEFD8FEFEFDEBDAD8CD989BD6BCB287C477FFFEFCA3DAA21A9A1B5EBE5BFFE8
        C1AF9C82ADB0A0D8D8BCD1CEB4F5DFB8FDFBE5FDFDF1E6CFC9DEC7C3F0CCD77D
        BB732FAE3262BD6000890031AA2CFEF2CECABA9BB2B4A2D8D8BCE2CDAEFAEDCB
        FDFEE3FDFBE2FDFDE6FFFFEFE5F3F5F4E3E974C06F20A22136AC3658B74EFEFD
        E2D3CBAFA4A495D7D7BCE0CDAFF9F3D2FCFDDDFCFBDAFAFDE1F0FCEFEFFEFCED
        F6F6FFF8FEFDFEF8FFFFFEE6F4E0FEFEEFE2E1C4878780D3D3BAE2CDAFFCF0CC
        FFFFE1FFFEDBF2FADBCAF7F1E1F9EFF1FAF1E4CFC9F4EAE7F6F8EFFCEDD3FEFF
        E7EAEBCF939388D2D2B8D3D0B5E0D5B6EEDDBCEEDFC0D9E4E0F2FCF5FAFDFAFB
        FEFDEBD8D7F0F3F6DDDDD1F3B977FBD5A2F2EBC99C9E91D0CFB5D0D1B7CFD0B7
        CECEB6CFCDB2BAD9DCBDE2EBC2EFF9C1FAFFCEFBFCC4FEFFDBCDAAFCBF80F9C3
        8AF6C5959C978ACFD0B6D1D1B7D1D1B7D1D1B7D2D2B8D2D0B5D0CEB3C7D0C1BA
        D7D0B2E3E5A2EAF7CCCBB8F4C793FDC993E1C09AB8B8A4D3D3B8}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnExcluirClick
    end
    object BtnGerar: TBitBtn
      Left = 10
      Top = 8
      Width = 95
      Height = 47
      Cursor = crHandPoint
      Hint = 'gerar parcelas '#224' partir da forma de pagamento selecionada'
      Caption = '&Criar Parcelas'
      Default = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000DBBDAFDABCAE
        E1C3B5AF8F8296685B846259766762837A77B6A69EDAC1B4EBCCBDEDCBBADFBF
        B1D9BCAEDBBDAFDBBDAFDABDAFDBBEB0D6BAADC99687F3B8A1E9A98DC68C77B6
        84729E796C9278709A867EAE9B93D1B7ABDFC0B2DABCAFDBBDAFDABDAFDCBEB0
        D3B6A9D19B8AFFCBB2E4AA90DF9A81F5B093D9957DDA957DC78E78A77667947B
        72CAB2A6DEBFB1DABDAFDABCAFDDBFB0D3B6A9D39D8BFDC8AFE8B69DF9D7BDD6
        A28AE3B199E8AE94D89C84F2A68AC89783AD9B94E4C3B4D9BCAEDABCAFDDBFB1
        D3B6A8D49E8DFECFB7EFB699CD9A84F3B99CE8C4ABE2B89DE7BCA5F3C7ACC899
        85B3A097E3C3B4D9BCAEDABCAFDDBFB1D3B5A8D7A08FFED0B9DDAA92E7A991E4
        AB90CC8E76E5A58AE0AA91E0A98FD5A891B29D95E3C3B4D9BCAEDABCAEDDBFB1
        D3B5A7D8A293FED2BBEEBFA4F3D8BFDCAD93F3CBB1E5B99FD6A28CEFB298CBA1
        8CB4A097E2C3B4D9BCAEDABCAEDDBFB1D3B4A6DAA595FED8C3E9B496C78B75F7
        C2A4D9B198E4B79CF4C7A8F5CEACCFA690B39E95E2C3B4D9BCAEDABCAEDDBFB1
        D3B4A6DBA899FED8C2DFAF98F4C1A7DBAA91D89D86ECAF90999BB1939AB8D6B0
        99B19C93E3C3B4D9BCAEDABCAEDDBFB1D3B4A5DDAC9CFEDBC6F0C4A8ECD2BBE5
        BA9FEFCFB8E9C3A57998D16CA0F3B8A195B79E93E1C3B5D9BCAEDABCAEDDBFB1
        D3B3A4E0AD9EFEDDCAFACDACEBBDA1F6CBADE8C0A6F4CAAAD5C6BCB5C0CAD2B1
        9CB19B92E2C4B5D9BCAEDABCAEDDBFB2D3B2A4E1B1A4FEE1D0E7AF8EEFB28FEB
        B391ECB596EAB89AEAB799FACBAAD5B6A2AF9990E3C4B5D9BCAEDABCAEDDBFB2
        D3B2A3E2B4A7FDE4D5E69B71FF955CFFA068FFA16DFFA573FDAB7DF7A97FC6A1
        8DB39E95E2C3B4D9BCAEDBBCAEDDBFB2D4B2A3E3B5AAFDE5D4EDBA98E68D61EB
        8755EA8654EE8652F4834AF58C56C9A592B6A299E2C2B3D9BCAEDBBDAFDCBFB1
        D5B3A4EBCCBFFFF7E9FFEDCBFCEACCF8E1C3F7DDBEF3D2B3EDC2A3F3CEB0DCC3
        AFB59F95E2C3B4DABCAEDBBDAFDBBEAFD9BBADDBBEACE3CEB9E8D0B6EED9BDEE
        DCBEEFDCBEF4E1C1F7E5C4F9EDCAD4BEA7C1A89EE0C1B2DABCAE}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnGerarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 472
    Height = 41
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object EditParcelas: TEdit
      Left = 64
      Top = 13
      Width = 49
      Height = 21
      TabOrder = 0
      Text = '0'
    end
  end
  object DS_CtaReceber: TDataSource
    DataSet = db_CtaReceber
    Left = 192
    Top = 128
  end
  object db_CtaReceber: TFDQuery
    AfterPost = db_CtaReceberAfterPost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CTARECEBER'
      'WHERE'
      'FILIAL=:FILIAL'
      'AND'
      'NOTAFISCAL=:CODIGO')
    Left = 104
    Top = 120
    ParamData = <
      item
        Name = 'FILIAL'
      end
      item
        Name = 'CODIGO'
      end>
    object db_CtaReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object db_CtaReceberDATA: TDateField
      FieldName = 'DATA'
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
    object db_CtaReceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_CtaReceberTIPO: TStringField
      FieldName = 'TIPO'
    end
    object db_CtaReceberCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_CtaReceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object db_CtaReceberNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_CtaReceberSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_CtaReceberPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_CtaReceberCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_CtaReceberESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_CtaReceberVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object db_CtaReceberDATA_PAGTO: TDateField
      FieldName = 'DATA_PAGTO'
    end
    object db_CtaReceberVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
    end
    object db_CtaReceberCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 30
    end
    object db_CtaReceberCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 30
    end
    object db_CtaReceberCHQ_CONTA_CORRENTE: TStringField
      FieldName = 'CHQ_CONTA_CORRENTE'
      Size = 30
    end
    object db_CtaReceberCHQ_CODCIDADE: TStringField
      FieldName = 'CHQ_CODCIDADE'
      Size = 200
    end
    object db_CtaReceberCHQ_NOMECIDADE_UF: TStringField
      FieldName = 'CHQ_NOMECIDADE_UF'
      Size = 200
    end
    object db_CtaReceberFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_CtaReceberDESCONTO: TBCDField
      FieldName = 'DESCONTO'
    end
    object db_CtaReceberDESCONTO_DATA: TDateField
      FieldName = 'DESCONTO_DATA'
    end
    object db_CtaReceberDESCONTO_UserName: TIntegerField
      FieldName = 'DESCONTO_UserName'
    end
    object db_CtaReceberENTRADA: TBCDField
      FieldName = 'ENTRADA'
    end
    object db_CtaReceberPLN_CONTA: TStringField
      FieldName = 'PLN_CONTA'
      Size = 30
    end
    object db_CtaReceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_CtaReceberOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_CtaReceberDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_CtaReceberGERARRECIBO: TStringField
      FieldName = 'GERARRECIBO'
      Size = 30
    end
    object db_CtaReceberGERARDUPLICATA: TStringField
      FieldName = 'GERARDUPLICATA'
      Size = 1
    end
    object db_CtaReceberGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      Size = 1
    end
    object db_CtaReceberDESPESAS_BOLETO: TBCDField
      FieldName = 'DESPESAS_BOLETO'
    end
    object db_CtaReceberDESPESAS_JUROS: TBCDField
      FieldName = 'DESPESAS_JUROS'
    end
    object db_CtaReceberDESPESAS_MULTA: TBCDField
      FieldName = 'DESPESAS_MULTA'
    end
    object db_CtaReceberDESPESAS_CARTORIO: TBCDField
      FieldName = 'DESPESAS_CARTORIO'
    end
    object db_CtaReceberATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 1
    end
    object db_CtaReceberMOTIVO_BAIXA: TIntegerField
      FieldName = 'MOTIVO_BAIXA'
    end
    object db_CtaReceberUserName_NOME: TStringField
      FieldName = 'UserName_NOME'
      Size = 200
    end
    object db_CtaReceberUserName_DATA: TDateField
      FieldName = 'UserName_DATA'
    end
    object db_CtaReceberUserName_HORA: TTimeField
      FieldName = 'UserName_HORA'
    end
  end
  object db_FormaPagto: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT'
      'A.*,'
      'B.*'
      ' FROM FORMAPAGTO A, FPRAZOSPAGTO B'
      'WHERE'
      'B.FPAGTO=A.CODIGO'
      'AND'
      'A.CODIGO=:CODIGO'
      'ORDER BY A.CODIGO, B.DIAS')
    Left = 112
    Top = 241
    ParamData = <
      item
        Name = 'CODIGO'
      end>
  end
end
