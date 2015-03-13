object FrmChequesRecebidos: TFrmChequesRecebidos
  Left = 217
  Top = 127
  Caption = 'Controle de Cheque Recebidos'
  ClientHeight = 398
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
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
    Top = 351
    Width = 725
    Height = 47
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 684
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 723
      Height = 41
      Align = alTop
      BevelInner = bvRaised
      BorderStyle = bsSingle
      TabOrder = 0
      ExplicitWidth = 682
      object BtnSair: TBitBtn
        Left = 473
        Top = 5
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
        TabOrder = 6
        OnClick = BtnSairClick
      end
      object BtnCancelar: TBitBtn
        Left = 157
        Top = 5
        Width = 76
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
        Top = 5
        Width = 80
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
        Left = 233
        Top = 5
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
      object Imprimir: TBitBtn
        Left = 393
        Top = 5
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Hint = 'imprimir cheque'
        Caption = '&Imprimir...'
        Enabled = False
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000C5C5C5C5C5C5
          C5C5C5C5C5C5C4C4C4C4C4C4CFCFCFC5C6C6CCCCCCD7D7D7CACCCCCBCBCBD7D7
          D7C7C7C7C1C1C1C4C4C4C5C5C5C5C5C5C5C5C5C4C4C4C8C8C8C8C8C8B1B2B19D
          9C9C727272969797B2AEAE7F7D7D909090C1C1C1CECECEC6C6C6C5C5C5C5C5C5
          C4C4C4C7C7C7BCBCBCA9A9A9BABBBBD4D3D39EA0A17567677A6B6AA1A1A18D8D
          8D7C7C7C999999C2C2C2C5C5C5C4C4C4C8C8C8B5B5B5AFAFAFDFDEDEFBFBFBD5
          D5D5B4B4B4908D8D5759596B6C6C999999B9B9B9949594898989C4C4C4C4C4C4
          C0C0C0C5C6C5FCFCFCF0F0F0D3D3D3AFB0B08D8C8CA4A4A4ACACACA2A1A19090
          908B8A8B9C999B9B9B9BC7C7C7CECDCCCBCACAC9C9C9D6D6D6BABABABCBCBDC1
          C0C0A4A4A49594949493949E9E9EAEACADADB5B1809388ACABABBBB9B8A3A5A7
          9DA0A1A9AAA9C9CACCD2D3D3D3D4D4DDDDDDD7D7D7CECECEC2C2C2B4B4B4A6A5
          A69DA4A0717E76A8A7A83B92B83E91B93089B3A4BBC6F0E5E0CED0D1D7D6D6DB
          DADAE4E3E3DDDDDDD5D6D6D2D2D2CCCDCDD3D2D2A6A2A4ABACAC40AAD56DD4FA
          6FDDFF80CAE7ADBFC7C6C9CACBCFCFCACDCDE4E5E5EAEAE9E8E6E7E6E6E6E2E2
          E2C1C0C0A8A9A9C3C3C350AACE73CBEB77DBF971DAFD68CFEFC4D4D9E9D7D3B3
          AAA8B7B6B6C2C3C5D4D6D9D1D2D2C0C0C0B2B2B2C1C2C2C7C7C74BB4D681D0EB
          83E7FC80E1F87AE7FEA3CCCFFDCBA5FBD2AFF3CDAFF0D3B6D9C2AF969496BBBB
          BAC6C6C6C5C5C5C4C4C45BC0E684D4EE8FF1FA85EDF97FEFFAB6CCC4FCDAB6F9
          DCBDFADAB9FFE5C0C8AB94898789CECFCEC3C3C3C5C5C5C5C5C56DCDEE81D1F4
          A8F5F89FFAFD96ECF1D6D0C4FDE6CFF8E2CEF8E2CEFEE9D2D5D0C7A0A2A3C5C4
          C3C5C5C5C5C5C5C5C5C587DBEF74D8F987DAF886E1FD9DD0E0F5E5D8FDF4E6FB
          EEE1FEF4E7F0E1D5B3A9A7B9BABBC5C5C6C4C5C5C5C5C5C5C5C59DE0F094F0FD
          83F0FF82EAF8B0CACEF3EAE3F1EBE8F0E9E6F7F1EFD3C9C8B0ADACC9C9CAC4C4
          C4C5C5C5C5C5C5C5C5C5ABC7D3ACD4DEAADAE1ABD7E0A3BFC8C4C1C0C7C3C4C7
          C3C3C8C4C4C6C4C4C7C8C8C4C4C4C5C5C5C5C5C5C5C5C5C5C5C5}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object BtnNovaNF: TBitBtn
        Left = 7
        Top = 5
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
        OnClick = BtnNovaNFClick
      end
      object BtnProcurar: TBitBtn
        Left = 313
        Top = 5
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
        OnClick = BtnProcurarClick
      end
    end
  end
  object PaginaPadrao: TPageControl
    Left = 0
    Top = 26
    Width = 725
    Height = 325
    ActivePage = Tab_Principal
    Align = alClient
    HotTrack = True
    MultiLine = True
    TabOrder = 2
    ExplicitWidth = 684
    object Tab_Principal: TTabSheet
      Caption = 'Principal'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 676
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 717
        Height = 297
        Align = alClient
        Color = 14811135
        DataSource = ds_CtaReceber
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Emiss'#227'o'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCUMENTO'
            Title.Caption = 'N'#186' Cheque'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHQ_BANCO'
            Title.Caption = 'Banco'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHQ_AGENCIA'
            Title.Caption = 'Ag'#234'ncia'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHQ_CONTA_CORRENTE'
            Title.Caption = 'Conta Corrente'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHQ_EMITENTE'
            Title.Caption = 'Emitente'
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENCIMENTO'
            Title.Caption = 'Bom Para:'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUITADO'
            Title.Caption = 'Quitado'
            Visible = True
          end>
      end
    end
    object Tab_Editar: TTabSheet
      Caption = 'Editar'
      ImageIndex = -1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 676
      ExplicitHeight = 0
      object Label3: TLabel
        Left = 174
        Top = 59
        Width = 39
        Height = 13
        Caption = 'Ag'#234'ncia'
      end
      object Label4: TLabel
        Left = 260
        Top = 59
        Width = 28
        Height = 13
        Caption = 'Conta'
      end
      object Label5: TLabel
        Left = 5
        Top = 59
        Width = 39
        Height = 13
        Caption = 'Emiss'#227'o'
      end
      object Label6: TLabel
        Left = 5
        Top = 102
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object Label8: TLabel
        Left = 211
        Top = 102
        Width = 176
        Height = 13
        Caption = 'Emitente (nome abaixo da assinatura)'
      end
      object Label9: TLabel
        Left = 108
        Top = 102
        Width = 56
        Height = 13
        Caption = 'Vencimento'
      end
      object Label13: TLabel
        Left = 5
        Top = 148
        Width = 52
        Height = 13
        Caption = 'Cidade/UF'
      end
      object Label10: TLabel
        Left = 362
        Top = 59
        Width = 52
        Height = 13
        Caption = 'N'#186' Cheque'
      end
      object Label11: TLabel
        Left = 100
        Top = 59
        Width = 31
        Height = 13
        Caption = 'Banco'
      end
      object Label2: TLabel
        Left = 5
        Top = 192
        Width = 323
        Height = 13
        Caption = 'Destino do cheque (Informe para quem voc'#234' forneceu esse cheque)'
      end
      object DBEdit2: TDBEdit
        Left = 174
        Top = 75
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CHQ_AGENCIA'
        DataSource = ds_CtaReceber
        TabOrder = 4
      end
      object DBEdit3: TDBEdit
        Left = 260
        Top = 75
        Width = 81
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CHQ_CONTA_CORRENTE'
        DataSource = ds_CtaReceber
        TabOrder = 5
      end
      object EditData: TDBEdit
        Left = 5
        Top = 75
        Width = 81
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DATA'
        DataSource = ds_CtaReceber
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 211
        Top = 118
        Width = 248
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CHQ_EMITENTE'
        DataSource = ds_CtaReceber
        TabOrder = 9
      end
      object DBEdit8: TDBEdit
        Left = 108
        Top = 118
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'VENCIMENTO'
        DataSource = ds_CtaReceber
        TabOrder = 8
      end
      object DBEdit5: TDBEdit
        Left = 5
        Top = 118
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'VALOR'
        DataSource = ds_CtaReceber
        TabOrder = 7
      end
      object DBEdit12: TDBEdit
        Left = 3
        Top = 165
        Width = 454
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CHQ_NOMECIDADE_UF'
        DataSource = ds_CtaReceber
        TabOrder = 10
      end
      object DBEdit9: TDBEdit
        Left = 362
        Top = 75
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DOCUMENTO'
        DataSource = ds_CtaReceber
        TabOrder = 6
      end
      object DBEdit1: TDBEdit
        Left = 100
        Top = 75
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CHQ_BANCO'
        DataSource = ds_CtaReceber
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 5
        Top = 208
        Width = 454
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CHQ_DESTINO'
        DataSource = ds_CtaReceber
        TabOrder = 11
      end
      object EditCliente: TIDBEditDialog
        Left = 5
        Top = 32
        Width = 65
        Height = 21
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        TabOrder = 0
        Text = ''
        Visible = True
        LabelCaption = 'Cliente'
        LabelAlwaysEnabled = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Version = '5.0.0.0'
        ButtonStyle = bsButton
        ButtonWidth = 16
        ButtonHint = 'Procurar...'
        Etched = False
        ButtonCaption = '...'
        DataField = 'CLIENTE'
        DataSource = ds_CtaReceber
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeCliente
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'TIPO='#39'CLIENTE'#39
          'AND'
          'CODIGO=:CODIGO')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'TIPO='#39'CLIENTE'#39
          'AND'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM CAD_CLIENTES'
          'WHERE'
          'TIPO='#39'CLIENTE'#39
          'AND'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'NOME'
            WhereSyntax = 'NOME'
            DisplayLabel = 'Nome:'
            DisplayWidth = 80
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'C'#243'digo:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end>
        SearchPresetList = <>
        DialogCaption = 'Pesquisa'
        DialogWidth = 0
        DialogHeight = 0
        Store = dsFields
        CompareFormatDate = 'DDMMYYYY'
        CompareFormatTime = 'HHMMSS'
        CompareFormatDateTime = 'DDMMYYYY'
        TrueExpression = '1=1'
        DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
        ConnectionDialog = FrmPrincipal.DBConexao
        Connection = FrmPrincipal.DBConexao
      end
      object EditNomeCliente: TEdit
        Left = 74
        Top = 32
        Width = 385
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 26
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 684
    object Navegador: TDBNavigator
      Left = 453
      Top = 1
      Width = 271
      Height = 24
      DataSource = ds_CtaReceber
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
      ExplicitLeft = 412
    end
  end
  object dbDlgProcurar: TIDBEditDialog
    Left = 331
    Top = 8
    Width = 65
    Height = 21
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = ''
    Visible = False
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = '.'
    LabelAlwaysEnabled = True
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Version = '5.0.0.0'
    ButtonStyle = bsButton
    ButtonWidth = 16
    ButtonHint = 'Procurar...'
    Etched = False
    ButtonCaption = '...'
    ButtonKeyClickBtn = 119
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO='#39'TRANSPORTADORA'#39
      'AND'
      'CODIGO=:CODIGO'
      ''
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT *  FROM VIEW_FIN_CTARECEBER '
      'WHERE'
      'ESPECIE IN ('#39'CHEQUE'#39')'
      'AND'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'DOCUMENTO'
        WhereSyntax = 'DOCUMENTO'
        DisplayLabel = 'N'#186' CHEQUE:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'NOTAFISCAL'
        WhereSyntax = 'NOTAFISCAL'
        DisplayLabel = 'NOTA FISCAL:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scUpper
      end
      item
        FieldName = 'NOSSONUMERO'
        WhereSyntax = 'NOSSONUMERO'
        DisplayLabel = 'NOSSO NUMERO:'
        DisplayWidth = 17
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'DATA'
        WhereSyntax = 'DATA'
        DisplayLabel = 'DATA:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VENCIMENTO'
        WhereSyntax = 'VENCIMENTO'
        DisplayLabel = 'VENCIMENTO:'
        DisplayWidth = 13
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VALOR'
        WhereSyntax = 'VALOR'
        DisplayLabel = 'VALOR:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NOME_CLIENTE'
        WhereSyntax = 'NOME_CLIENTE'
        DisplayLabel = 'CLIENTE:'
        DisplayWidth = 30
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'NOME_VENDEDOR'
        WhereSyntax = 'NOME_VENDEDOR'
        DisplayLabel = 'VENDEDOR:'
        DisplayWidth = 25
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'QUITADO'
        WhereSyntax = 'QUITADO'
        DisplayLabel = 'QUITADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scUpper
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 965
    DialogHeight = 0
    Store = dsFields
    CompareFormatDate = 'DDMMYYYY'
    CompareFormatTime = 'HHMMSS'
    CompareFormatDateTime = 'DDMMYYYY'
    TrueExpression = '1=1'
    DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
    ConnectionDialog = FrmPrincipal.DBConexao
    Connection = FrmPrincipal.DBConexao
  end
  object db_CtaReceber: TFDQuery
    BeforePost = db_CtaReceberBeforePost
    OnNewRecord = db_CtaReceberNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CTARECEBER'
      'WHERE '
      ''
      'ESPECIE='#39'CHEQUE'#39)
    Left = 488
    Top = 64
    object db_CtaReceberCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_CtaReceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_CtaReceberNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object db_CtaReceberSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_CtaReceberDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_CtaReceberVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_CtaReceberDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
      EditMask = '99/99/9999'
    end
    object db_CtaReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_CtaReceberPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_CtaReceberCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_CtaReceberVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_CtaReceberESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_CtaReceberTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_CtaReceberVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaReceberVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaReceberVALOR_SALDO: TBCDField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaReceberCONTA_CREDITO: TIntegerField
      FieldName = 'CONTA_CREDITO'
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
    object db_CtaReceberCHQ_NUMEROCHEQUE: TStringField
      FieldName = 'CHQ_NUMEROCHEQUE'
      Size = 30
    end
    object db_CtaReceberCHQ_CODCIDADE: TStringField
      FieldName = 'CHQ_CODCIDADE'
      Size = 200
    end
    object db_CtaReceberCHQ_EMITENTE: TStringField
      FieldName = 'CHQ_EMITENTE'
      Size = 200
    end
    object db_CtaReceberCHQ_NOMECIDADE_UF: TStringField
      FieldName = 'CHQ_NOMECIDADE_UF'
      Size = 200
    end
    object db_CtaReceberCHQ_DESTINO: TStringField
      FieldName = 'CHQ_DESTINO'
      Size = 200
    end
    object db_CtaReceberFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_CtaReceberDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_CtaReceberDESCONTO: TBCDField
      FieldName = 'DESCONTO'
    end
    object db_CtaReceberDESCONTO_DATA: TSQLTimeStampField
      FieldName = 'DESCONTO_DATA'
    end
    object db_CtaReceberDESCONTO_USER: TIntegerField
      FieldName = 'DESCONTO_USER'
    end
    object db_CtaReceberENTRADA: TBCDField
      FieldName = 'ENTRADA'
    end
    object db_CtaReceberPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
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
    object db_CtaReceberGERARRECIBO: TStringField
      FieldName = 'GERARRECIBO'
      Size = 30
    end
    object db_CtaReceberGERARDUPLICATA: TStringField
      FieldName = 'GERARDUPLICATA'
      Size = 10
    end
    object db_CtaReceberGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      Size = 10
    end
    object db_CtaReceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
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
    object db_CtaReceberDESPESAS_TOTAL: TBCDField
      FieldName = 'DESPESAS_TOTAL'
    end
    object db_CtaReceberATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 10
    end
    object db_CtaReceberQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_CtaReceberMOTIVO_BAIXA: TIntegerField
      FieldName = 'MOTIVO_BAIXA'
    end
    object db_CtaReceberUSER_NOME: TStringField
      FieldName = 'USER_NOME'
      Size = 200
    end
    object db_CtaReceberUSER_DATA: TSQLTimeStampField
      FieldName = 'USER_DATA'
    end
    object db_CtaReceberUSER_HORA: TTimeField
      FieldName = 'USER_HORA'
    end
    object db_CtaReceberCOMPLEMENTAR: TStringField
      FieldName = 'COMPLEMENTAR'
      Size = 10
    end
  end
  object ds_CtaReceber: TDataSource
    DataSet = db_CtaReceber
    Left = 556
    Top = 64
  end
end
