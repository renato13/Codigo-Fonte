object FrmCob_Agendar: TFrmCob_Agendar
  Left = 201
  Top = 110
  BorderStyle = bsDialog
  Caption = 'Agendamento de cobran'#231'as'
  ClientHeight = 491
  ClientWidth = 695
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label16: TLabel
    Left = 15
    Top = 184
    Width = 20
    Height = 13
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 444
    Width = 695
    Height = 47
    Align = alBottom
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 693
      Height = 41
      Align = alTop
      BevelInner = bvRaised
      BorderStyle = bsSingle
      TabOrder = 0
      object BtnSair: TBitBtn
        Left = 397
        Top = 4
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Hint = 'Sair'
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnSairClick
      end
      object BtnCancelar: TBitBtn
        Left = 157
        Top = 4
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Hint = 'cancelar mundan'#231'as'
        Caption = '&Cancelar'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000CE0E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777177777777779777191777777777777799917777777977777991777777
          1777777799177771977777777991771977777777779911977777777777719977
          7777777777199917777777777199779177777771199777791777771999777777
          9177779997777777779777777777777777777777777777777777}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BtnCancelarClick
      end
      object BtnSalvar: TBitBtn
        Left = 77
        Top = 4
        Width = 74
        Height = 28
        Cursor = crHandPoint
        Hint = 'salvar registro atual'
        Caption = '&Salvar'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          AD5A59AA5454A24D4EAA9595C1C8C7CCCBCACECBCACAC8C7C6CAC9B79E9E9840
          41994444A65151FF00FFFF00FFBC7871CF6666D26868B95A5B9B8080BEA1A0E2
          D0CEFEF9F5FFFDFAF2F6F4D2B3B3962D2C993232C25B5BB05859FF00FFBB7871
          CB6565CE6767B85D5D9E7B7C9D4343B77675E7DFDDFDFBF9FEFFFDD9BAB9962E
          2E993333C05A5AAF5859FF00FFBB7871CB6565CE6667B85D5DA884839939399B
          3636CDBCBBF2F0EEFFFFFFE2C3C1962D2D983333C05A5AAF5859FF00FFBB7871
          CB6565CE6666B75C5CB28F8E9F4848943232A69A9AD5DBD8FAFFFEE6C9C8932B
          2B963030BF5959AF5859FF00FFBB7871CB6565CF6666BB5C5CC3908FC29695B3
          8686AA8D8EBAA2A1E1CAC8DCA9A9A33A3AA43E3EC35D5DAE5758FF00FFBB7871
          CC6566CB6464CB6464CB6364CC6767CD6767CC6464C85B5BC95E5ECA6161CC65
          65CD6666CF6868AC5657FF00FFBC7972B75351B25B57C68684D2A4A2D5ABAAD5
          AAA9D5ABAAD5A5A4D5A8A7D5AAA9D6AEACD39C9CCD6666AC5556FF00FFBC7871
          B14F4CE4CDCBFAF7F7F8F4F3F9F5F4F9F5F4F9F5F4F9F6F5F9F5F4F9F5F4FBFB
          FADEBEBDC45C5DAD5657FF00FFBC7871B3514EEBD7D6FCFBFAF7F0EFF7F1F0F7
          F1F0F7F1F0F7F1F0F7F1F0F6F1F0FBF9F8DEBCBBC35B5BAD5657FF00FFBC7871
          B3514EEBD7D4F0EFEFD8D5D4DAD7D7DAD7D7DAD7D7DAD7D7DAD7D7D8D5D5ECEC
          EBE0BDBCC25B5BAD5657FF00FFBC7871B3514EEBD7D5F3F1F1DEDAD9DFDBDBDF
          DBDBDFDBDBDFDBDBDFDBDBDDDAD9EEEEEEE0BDBCC35B5BAD5657FF00FFBC7871
          B3514EEAD7D5F5F4F3E4DFDEE5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E4DFDFF2F1
          F0DFBDBBC35B5BAD5657FF00FFBC7871B3514EEBD7D6F1F0EFD9D5D5DAD8D7DA
          D8D7DAD8D7DAD8D7DAD8D7D8D5D5EDECEBE1BEBDC35B5BAD5657FF00FFBC7870
          B3514EE9D6D4FEFBFBFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FDFA
          F9DEBCBBC35C5CAD5657FF00FFFF00FFA8504CC9B6B5D3D5D4D1CECED1CECED1
          CECED1CECED1CECED1CECED1CECED3D4D4CBAEADA34D4EFF00FF}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnSalvarClick
      end
      object BtnExcluir: TBitBtn
        Left = 237
        Top = 4
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Hint = 'excluir registro atual...'
        Caption = '&Excluir...'
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BtnExcluirClick
      end
      object BtnNovo: TBitBtn
        Left = 7
        Top = 4
        Width = 70
        Height = 28
        Cursor = crHandPoint
        Hint = 'incluir novo registro'
        Caption = '&Incluir'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
          69A46769A46769FF00FFFF00FFFF00FFB79184FEE9C7F4DAB5F3D5AAF2D0A0EF
          CB96EFC68BEDC182EBC17FEBC180EBC180F2C782A46769FF00FFFF00FFFF00FF
          B79187FCEACEF3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
          7FEFC481A46769FF00FFFF00FFFF00FFB7938AFEEFDAF6E0C6F2DABCF2D5B2EF
          D0A9EECB9EEDC796EBC28CE9BD82E9BD7FEFC481A46769FF00FFFF00FFFF00FF
          BA978FFFF4E5F7E5CFF4E0C5F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
          81EFC480A46769FF00FFFF00FFFF00FFC09E95FFFBF0F8EADCF6E3CFF4E0C6F2
          D9BCF2D5B1F0D0A9EDCB9EEDC695EBC28AEFC583A46769FF00FFFF00FFFF00FF
          C6A49AFFFFFCFAF0E6F8EADAF7E5CFF4E0C5F2DABAF2D5B1F0D0A7EECB9DEBC7
          93F2C98CA46769FF00FFFF00FFFF00FFCBA99EFFFFFFFEF7F2FAEFE6F8EAD9F7
          E3CFF6E0C5F2DABBF2D4B1F0D0A7EECC9EF3CE97A46769FF00FFFF00FFFF00FF
          CFAC9FFFFFFFFFFEFCFCF6F0FAEFE6F7EADAF6E3CFF4E0C5F3D9BBF3D4B0F0D0
          A6F6D3A0A46769FF00FFFF00FFFF00FFD4B0A1FFFFFFFFFFFFFFFEFCFEF7F0FA
          EFE5F8EAD9F7E5CEF6DEC4F3D9B8F4D8B1EBCFA4A46769FF00FFFF00FFFF00FF
          D9B5A1FFFFFFFFFFFFFFFFFFFFFEFCFCF7F0FAEFE5F8E9D9F8E7D1FBEACEDECE
          B4B6AA93A46769FF00FFFF00FFFF00FFDDB7A4FFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFCFCF6EFFCF3E6EDD8C9B68A7BA17B6F9C7667A46769FF00FFFF00FFFF00FF
          E2BCA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAAD735BE19E
          55E68F31B56D4DFF00FFFF00FFFF00FFE6BFA7FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFDCC7C5B88265F8B55CBF7A5CFF00FFFF00FFFF00FFFF00FF
          E4BCA4FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0B77F62C183
          6CFF00FFFF00FFFF00FFFF00FFFF00FFE8C4ADEBCBB7EBCBB7EACBB7EACAB6EA
          CAB6EACAB6EACAB6E3C2B1A56B5FFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnNovoClick
      end
      object BtnProcurar: TBitBtn
        Left = 317
        Top = 4
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Hint = 'procurar registros cadastrados...'
        Caption = '&Procurar...'
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F003000000000000000000000000000000000000C1CDD7BBB0B4
          8C9298BCC6CCB9BFC5B8BEC4B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BF
          C5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC50000A5A9A689797F9C727F9A959CBCC6
          CCB9BDC3B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9
          BFC5B9BFC5B9BFC50000657F954A6CAE927FA2AB7B8496939BBDC6CCB9BEC4B9
          BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5
          000052B4FC3EA0F8446BB89081A1AB7B8595939BBDC6CCBABEC4B9BFC5B9BFC5
          B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC5B9BFC500009EBDD35FBAF7
          3AA1F94371C1917F9EAB7B8596939BBBC4CAB8BDC3B8BDC3B8BDC3B8BDC3B8BD
          C3B8BDC3B9BFC5B9BFC5B9BFC5B9BFC50000C4BFBFA8BBCC5CBCF83B9FF74270
          C191809EAA7A84A29DA4C0C8CEBDC5CBBFC7CDBFC8CDBFC8CDBEC7CCBAC0C6B8
          BEC4B9BFC5B9BFC50000B5BFC7BEBFC2AABDCC5CBCF83DA0F74272C2867596B3
          95A4A5AFB48B858C8A848D8A838D89818C938E98B7BFC6BCC2C8B8BDC4B9BFC5
          0000B9BFC5B7BFC6BFC0C2AABCCC5ABCF83D9EFC6E75A0837D8A92717ABF9283
          C9AB8FD1B79ED2B1A5AB7B7D86656EA8B0B6BFC5CBB8BDC30000B9BFC5B9BFC5
          B7BFC6C1BFC1A0BED087B8E9B8A8BDA78983E7B99DFCEFC0FFFFD1FFFFDAFFFF
          DBFFFCDED1B0A6876573AAB1B7BCC2C8FFFFB9BFC5B9BFC5B9BFC5B8BFC5BCBD
          C2BFC4C5B8A9A7EDBF9AFFF5C3FCF4C2FBFBCEFBFADCFBFBE5FCFCF9FFFFFFCD
          AAA3795F6BB3BDC20000B9BFC5B9BFC5B9BFC5B9BFC5B8C1C5B6B8C7DCAEA4FF
          EDBBFCE7B5FCF1BEFDFED4FDFDE2FDFDF2FBFBFBFCFDF6FBF8D69A717294919A
          0000B9BFC5B9BFC5B9BFC5B9BFC5B8C2C8BFABADECC6A8FDF2BEFCDBA9FDF3C0
          FDFED3FDFDE1FDFDEEFCFCF0FBFBE3FEFEDABB978C867B860000B9BFC5B9BFC5
          B9BFC5BABFC4B7C0C8CEACA0F2DDB7FEE8B4FCD5A3FDEDBAFDFCCCFDFDD9FDFD
          E0FDFCE1FBFADAFDFDD8C8AD8F857B840000B9BFC5B9BFC5B9BFC5B9BFC4B8C2
          C8C4ACA8EDD1AFFDF2C1FCDEB1FDE4B2FDF4C1FDFBCBFDFED1FCFDD3FBFBCCFE
          FCCDC09686928A94FFFFB9BFC5B9BFC5B9BFC5B9BFC5B8C0C6B8B8BFE2C5A4FF
          FCDBFCEDD4FCE0B9FDE0ADFDF0BDFDF0BCFBEDB9FCF4C2FCEBBAAB7D80B3B3BE
          0000B9BFC5B9BFC5B9BFC5B9BFC5B9BEC4B8C3CAC2A5A7F4DDCAFFFFFFFBF5E7
          FBDDB1FCD9A9FCD8A6FCE9B8FFF7C2D29F85A18996BCC7CC9C01B9BFC5B9BFC5
          B9BFC5B9BFC5B9BFC5B9C0C5B8BAC4C6A6A9EFDAD1FEFEE4FFFFD4FFF0BDFFF4
          C0FDE8B8DEAE8EB1918FB8BDC5B9BFC56600B9BFC5B9BFC5B9BFC5B9BFC5B9BF
          C5B9BEC5B9C2C7B7B9C1BCA1A6D0AC9FD6B799E2C4A5E8C1ACCCA9A4B4AAB1B9
          C0C6BAC1C6B9BEC50000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
    end
  end
  object PaginaPadrao: TPageControl
    Left = 0
    Top = 26
    Width = 695
    Height = 418
    ActivePage = Tab_Editar
    Align = alClient
    HotTrack = True
    MultiLine = True
    TabOrder = 0
    object Tab_Principal: TTabSheet
      Caption = 'Principal'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 687
        Height = 390
        Align = alClient
        Color = 14811135
        DataSource = DS_CobAgendar
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DOCUMENTO'
            Title.Caption = 'Documento'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTCONTATO'
            Title.Caption = 'Data Retorno'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORAS'
            Title.Caption = 'Horas:'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Caption = 'Cliente'
            Width = 194
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTATO'
            Title.Caption = 'Contato'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'Valor'
            Width = 73
            Visible = True
          end>
      end
    end
    object Tab_Editar: TTabSheet
      Caption = 'Editar'
      ImageIndex = -1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 687
        Height = 390
        Cursor = crHandPoint
        ActivePage = Tab_Dados
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MultiLine = True
        ParentFont = False
        Style = tsFlatButtons
        TabOrder = 0
        object Tab_Dados: TTabSheet
          Caption = 'Dados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label6: TLabel
            Left = 7
            Top = 10
            Width = 32
            Height = 13
            Caption = 'Cliente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 68
            Top = 50
            Width = 23
            Height = 13
            Caption = 'Data'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 211
            Top = 50
            Width = 28
            Height = 13
            Caption = 'Horas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 7
            Top = 50
            Width = 55
            Height = 13
            Caption = 'Documento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 264
            Top = 50
            Width = 83
            Height = 13
            Caption = 'Nome do Contato'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 7
            Top = 94
            Width = 24
            Height = 13
            Caption = 'Valor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 74
            Top = 94
            Width = 52
            Height = 13
            Caption = 'Mensagem'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 139
            Top = 50
            Width = 64
            Height = 13
            Caption = 'Data Retorno'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object EditCliente: TDBEdit
            Left = 7
            Top = 24
            Width = 58
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLIENTE'
            DataSource = DS_CobAgendar
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit11: TDBEdit
            Left = 72
            Top = 24
            Width = 605
            Height = 21
            Color = 14811135
            DataField = 'NomeCliente'
            DataSource = DS_CobAgendar
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit1: TDBEdit
            Left = 68
            Top = 66
            Width = 67
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DATA'
            DataSource = DS_CobAgendar
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit2: TDBEdit
            Left = 211
            Top = 66
            Width = 50
            Height = 21
            CharCase = ecUpperCase
            DataField = 'HORAS'
            DataSource = DS_CobAgendar
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object DBEdit3: TDBEdit
            Left = 7
            Top = 66
            Width = 58
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DOCUMENTO'
            DataSource = DS_CobAgendar
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 264
            Top = 66
            Width = 411
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CONTATO'
            DataSource = DS_CobAgendar
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit5: TDBEdit
            Left = 7
            Top = 110
            Width = 58
            Height = 21
            CharCase = ecUpperCase
            DataField = 'VALOR'
            DataSource = DS_CobAgendar
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 257
            Width = 679
            Height = 102
            Align = alBottom
            Caption = 'Conte'#250'do da Conversa'
            TabOrder = 10
            object DBMemo1: TDBMemo
              Left = 2
              Top = 15
              Width = 675
              Height = 85
              Align = alClient
              DataField = 'RESPOSTA'
              DataSource = DS_CobAgendar
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object DBEdit8: TDBEdit
            Left = 74
            Top = 110
            Width = 58
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COD_MSG'
            DataSource = DS_CobAgendar
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object DBEdit9: TDBEdit
            Left = 139
            Top = 110
            Width = 536
            Height = 21
            Color = 14811135
            DataField = 'NomeMsg'
            DataSource = DS_CobAgendar
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object DBEdit10: TDBEdit
            Left = 139
            Top = 66
            Width = 67
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DTCONTATO'
            DataSource = DS_CobAgendar
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 3
            Top = 152
            Width = 185
            Height = 61
            Cursor = crHandPoint
            Caption = 'Status da negocia'#231#227'o'
            Columns = 2
            DataField = 'SITUACAO'
            DataSource = DS_CobAgendar
            Items.Strings = (
              'Aberto'
              'Fechado')
            TabOrder = 11
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 26
    Align = alTop
    TabOrder = 1
    object Navegador: TDBNavigator
      Left = 423
      Top = 1
      Width = 271
      Height = 24
      Hint = 'Navegador'
      DataSource = DS_CobAgendar
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alRight
      Flat = True
      Hints.Strings = (
        'In'#237'cio do Arquivo'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        'Final do Arquivo')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object DS_CobAgendar: TDataSource
    DataSet = db_CobAgendar
    Left = 369
    Top = 248
  end
  object db_CobAgendar: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM COB_AGENDAR')
    Left = 369
    Top = 192
    object db_CobAgendarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_CobAgendarDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_CobAgendarCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_CobAgendarNomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCliente'
      LookupDataSet = db_clientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CLIENTE'
      Size = 50
      Lookup = True
    end
    object db_CobAgendarDATA: TDateField
      FieldName = 'DATA'
    end
    object db_CobAgendarDTCONTATO: TDateField
      FieldName = 'DTCONTATO'
    end
    object db_CobAgendarHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object db_CobAgendarCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 200
    end
    object db_CobAgendarCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object db_CobAgendarVALOR: TBCDField
      FieldName = 'VALOR'
    end
    object db_CobAgendarCOD_MSG: TIntegerField
      FieldName = 'COD_MSG'
    end
    object db_CobAgendarNomeMsg: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeMsg'
      LookupDataSet = db_Mensagens
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'MENSAGEM'
      KeyFields = 'COD_MSG'
      Size = 500
      Lookup = True
    end
    object db_CobAgendarRESPOSTA: TStringField
      FieldName = 'RESPOSTA'
      Size = 5000
    end
    object db_CobAgendarSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
  end
  object db_clientes: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM  CAD_CLIENTES'
      'WHERE'
      'TIPO='#39'CLIENTE'#39)
    Left = 248
    Top = 208
  end
  object db_DadosContaCorrente: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_CONTA_CORRENTE_DADOS')
    Left = 320
    Top = 40
  end
  object db_Mensagens: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM MENSAGENS')
    Left = 176
    Top = 40
  end
end
