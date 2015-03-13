object FrmFaseProducaoPerdaEstornar: TFrmFaseProducaoPerdaEstornar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estornar Perda | Andamento de fase'
  ClientHeight = 480
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 439
    Width = 596
    Height = 41
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BtnOk: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Estornar...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnOkClick
    end
    object BtnCancelar: TBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 596
    Height = 36
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 596
    ExplicitHeight = 36
    inherited W7Panel1: TPanel
      Width = 596
      ExplicitWidth = 596
      inherited LblBarraTitulo: TLabel
        Width = 272
        Caption = 'Estornar Perda | Andamento de fase'
        ExplicitWidth = 272
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 105
    Width = 596
    Height = 334
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 17
      Width = 592
      Height = 255
      Align = alClient
      DataSource = ds_Perda
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -13
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DATAREGISTRO'
          Title.Caption = 'DATA REGISTRO:'
          Width = 135
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Caption = 'REFER'#202'NCIA:'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COR'
          Title.Caption = 'COR:'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAMANHO'
          Title.Caption = 'TAMANHO:'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDEPERDAS'
          Title.Caption = 'QTDE PERDAS:'
          Width = 90
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 2
      Top = 272
      Width = 592
      Height = 60
      Align = alBottom
      TabOrder = 1
      object editQuantidade: TLabeledEdit
        Left = 264
        Top = 24
        Width = 137
        Height = 26
        Alignment = taCenter
        Color = clRed
        EditLabel.Width = 127
        EditLabel.Height = 15
        EditLabel.Caption = 'Quantidade a estornar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        Text = '0'
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 36
    Width = 596
    Height = 17
    Align = alTop
    TabOrder = 3
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 53
    Width = 596
    Height = 52
    Align = alTop
    Caption = 'Detalhes:'
    Enabled = False
    TabOrder = 4
    object Image1: TImage
      Left = 2
      Top = 17
      Width = 592
      Height = 33
      Align = alClient
      Picture.Data = {
        0A544A504547496D61676564060000FFD8FFE000104A46494600010101006000
        600000FFDB004300020101020101020202020202020203050303030303060404
        0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
        0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108003700B703012200021101031101
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
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FCC7
        8546338AB312F3802A28A2C77E0D5B863C0F635F85D491FEACE1680E87D31562
        18B23269B0A8E78AB30A71D07158391EDE1E8DF71624CF18E054D1C78E3B1A74
        2A3F1A9618FD8D72BA8CF6E8D000808E722A61103D462848F71E0608A99541EC
        45734A47AD4A88CF2FD8D38422A5C7FB229E231DF8CD64E6CED861D3DD15B07D
        0D49E57B54BE50F6FCA9D81E8293996A832AF923DA93C91563CBF614797EC29D
        D93EC0A662031C66A2F2BD8D5DF2BDAA2F2FD8D68A47155A05274DB504917BF5
        ABD377E2A192320F4CD6F19B3CCAD40A12A679C5579A3F6ABD2C400CE6A09947
        A574C26D9E2E26858A13423D6AB4D0819E7A55F953AF3552653CF15D34E6CF13
        154114A68FDFA5152CB1F7CE68AE852678D3A5AEC5B897271E9566219E3A66A1
        863E739AB30C7C7D2B92A33E8F0B4992411E39CE6ADC3F76A18D327DEAD449C0
        06B967368F7B0B489228C6EC03D2AC43FEED4714633C1C55A85473C572B933DC
        A344589077A9523DC3818CD2C508EE6A68D71DB35CEE6CF668D0EE33CA1EDF95
        4822F5028442FED56760F7ACDCD9DF4A82EC43E57B51E57B54FE57B1A3CAF635
        3766FEC0AC60C0CF069981E82AE18C0E0E6A2F2FDE9A9B339E1D22A11E801A89
        FE4FE106AD32E3B0A8E6507B56AA6CF3AAD128CCA3D2A399066AD4B063249CFE
        1504D1F3D6B64CF2AAD228CD1F0467A5569A3E3AD5F9A3E719CD559A3E3AD755
        391E262A914A64C77EB55E6419AB9347C75E45569A3E7AD74D391E062A9B29CA
        9D47AD14E90124E3B515D37678F2A7A96A3F978EB56A25E319C5568D7710738A
        B50F4AE5AAD9EFE1516204C9CE6AD42BCE3D2ABDB76AB30FDEAE5AA7BF848AD0
        9E24156218F8CE6A087AD5A87EED7249B3DFC3C53268E3F7E9532479039C034C
        8FBD4F1264819E95CED9ED5182D054409EF52797EF4226FEF8A984183C9CFE15
        95D9E8D2A43768F414BB47A549B07A51B07A565ED19D7EC481909E3078A4D83D
        2AC6C1E9513A6CEF9AD6ECC2AD12ACB16D3D79AAF247C8E7AD5C914B37A62ABC
        B191D0E715A2679B5A96855950E0F3D2ABCA98EF9CD5A9BBFBD579FB57441DF7
        3C6C44122ACC9C9E7AD559E2C82738C55B9BAD5797EEB574D26CF131305A94E5
        4E3AD5493BD5C9BA55595319E7AD76523E77148A922E093E9452CBDE8AEA3C49
        A572787AD5987A514572D53D7C297208F18E6ACC31F39CD145725467D1E1628B
        30C7EFD2ACC29C6334515C950F7F0B14588D73F8D5841B0E7AD14573B3DBA291
        3431F4E6A7A28AE67267B1490E299E73D69703D05145637676A8A1B29C738A8A
        53D78EB4515B464CE2AAC8A518F7C540E719A28AE8479B58A928CFE355A6E714
        515D148F07148AD375AAF272187AD14575533C2C4EECAB30E2AB4FDA8A2BAE9B
        3E7F151455963EBCD14515D37678D28AB9FFD9}
      Stretch = True
      ExplicitTop = 13
      ExplicitWidth = 741
      ExplicitHeight = 59
    end
  end
  object db_Perda: TFDQuery
    BeforeOpen = db_PerdaBeforeOpen
    AfterOpen = db_PerdaAfterOpen
    BeforePost = db_PerdaBeforePost
    AfterScroll = db_PerdaAfterScroll
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PCP_ORDEMPRODUCAO_PERDAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 56
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
  end
  object ds_Perda: TDataSource
    DataSet = db_Perda
    Left = 144
    Top = 8
  end
end
