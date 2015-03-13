object FrmParametrosSistema: TFrmParametrosSistema
  Left = 209
  Top = 22
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = ']'
  ClientHeight = 552
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Panel4: TPanel
    Left = 0
    Top = 516
    Width = 894
    Height = 36
    Align = alBottom
    BevelInner = bvRaised
    BorderStyle = bsSingle
    TabOrder = 1
    object BtnCancelar: TBitBtn
      Left = 79
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
    object BtnSalvar: TBitBtn
      Left = 4
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Gravar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Btn_SalvarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 894
    Height = 483
    Align = alClient
    BorderWidth = 5
    TabOrder = 0
    object PgParametros: TPageControl
      Left = 6
      Top = 6
      Width = 882
      Height = 471
      ActivePage = Tab_Configurar
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      Style = tsFlatButtons
      TabOrder = 0
      object Tab_DadosEmpresa: TTabSheet
        Caption = 'Dados da Empresa'
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 874
          Height = 439
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object GroupBox7: TGroupBox
            Left = 2
            Top = 15
            Width = 870
            Height = 422
            Align = alClient
            TabOrder = 0
            object Label5: TLabel
              Left = 84
              Top = 129
              Width = 46
              Height = 13
              Caption = '&Endere'#231'o'
              FocusControl = EditRUA
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 14
              Top = 169
              Width = 27
              Height = 13
              Caption = '&Bairro'
              FocusControl = EditBAIRRO
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 14
              Top = 129
              Width = 21
              Height = 13
              Caption = 'CE&P'
              FocusControl = EditCEP
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 377
              Top = 169
              Width = 33
              Height = 13
              Caption = 'Ci&dade'
              FocusControl = EditCIDADE
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 654
              Top = 169
              Width = 14
              Height = 13
              Caption = '&UF'
              FocusControl = EditUF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 14
              Top = 90
              Width = 24
              Height = 13
              Caption = 'F&one'
              FocusControl = EditNUM_FONE
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 109
              Top = 90
              Width = 17
              Height = 13
              Caption = 'Fa&x'
              FocusControl = EditFax
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 207
              Top = 90
              Width = 27
              Height = 13
              Caption = 'CNPJ'
              FocusControl = EditULT_VISITA
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 375
              Top = 91
              Width = 16
              Height = 13
              Caption = 'I.E.'
              FocusControl = DBEdit1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 445
              Top = 129
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 494
              Top = 90
              Width = 37
              Height = 13
              Caption = 'Contato'
              FocusControl = DBEdit22
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label48: TLabel
              Left = 14
              Top = 52
              Width = 71
              Height = 13
              Caption = 'Nome fantasia:'
              FocusControl = DBEdit27
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 504
              Top = 129
              Width = 64
              Height = 13
              Caption = 'Complemento'
              FocusControl = DBEdit12
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label44: TLabel
              Left = 14
              Top = 211
              Width = 77
              Height = 13
              Caption = 'Site da Empresa'
              FocusControl = DBEdit20
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label45: TLabel
              Left = 217
              Top = 212
              Width = 93
              Height = 13
              Caption = 'E - mail da Empresa'
              FocusControl = DBEdit23
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object BtnLogoRelatorios: TSpeedButton
              Left = 179
              Top = 251
              Width = 140
              Height = 35
              Cursor = crHandPoint
              Caption = 'Logotipo na NF-e'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = BtnLogoRelatoriosClick
            end
            object BtnLogomarca: TSpeedButton
              Left = 15
              Top = 251
              Width = 140
              Height = 35
              Cursor = crHandPoint
              Caption = 'Imagem para tela principal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = BtnLogomarcaClick
            end
            object Label6: TLabel
              Left = 276
              Top = 169
              Width = 69
              Height = 13
              Caption = 'C'#243'digo Cidade'
              FocusControl = EditCIDADE
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label63: TLabel
              Left = 423
              Top = 212
              Width = 61
              Height = 13
              Caption = 'C'#243'digo Pa'#237's:'
              FocusControl = DBEdit39
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label64: TLabel
              Left = 537
              Top = 212
              Width = 56
              Height = 13
              Caption = 'Nome Pa'#237's:'
              FocusControl = DBEdit40
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 175
              Top = 12
              Width = 63
              Height = 13
              Caption = 'Raz'#227'o Social'
              FocusControl = EditNOME
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 14
              Top = 12
              Width = 55
              Height = 13
              Caption = 'ID Empresa'
              FocusControl = EditNOME
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 84
              Top = 12
              Width = 50
              Height = 13
              Caption = 'Data Base'
              FocusControl = DBEdit33
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object EditRUA: TDBEdit
              Left = 84
              Top = 144
              Width = 356
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_ENDERECO'
              DataSource = DS_Parametros
              TabOrder = 10
            end
            object EditBAIRRO: TDBEdit
              Left = 14
              Top = 185
              Width = 259
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_BAIRRO'
              DataSource = DS_Parametros
              TabOrder = 13
            end
            object EditCEP: TDBEdit
              Left = 14
              Top = 144
              Width = 64
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_CEP'
              DataSource = DS_Parametros
              TabOrder = 9
            end
            object EditCIDADE: TDBEdit
              Left = 375
              Top = 185
              Width = 273
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_CIDADE'
              DataSource = DS_Parametros
              TabOrder = 15
            end
            object EditUF: TDBEdit
              Left = 654
              Top = 185
              Width = 25
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_UF'
              DataSource = DS_Parametros
              MaxLength = 2
              TabOrder = 16
            end
            object EditNUM_FONE: TDBEdit
              Left = 14
              Top = 105
              Width = 90
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_FONE'
              DataSource = DS_Parametros
              TabOrder = 4
            end
            object EditFax: TDBEdit
              Left = 109
              Top = 105
              Width = 90
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_FAX'
              DataSource = DS_Parametros
              TabOrder = 5
            end
            object EditULT_VISITA: TDBEdit
              Left = 207
              Top = 105
              Width = 154
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_CNPJ'
              DataSource = DS_Parametros
              TabOrder = 6
            end
            object DBEdit1: TDBEdit
              Left = 375
              Top = 105
              Width = 113
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_IE'
              DataSource = DS_Parametros
              TabOrder = 7
            end
            object DBEdit21: TDBEdit
              Left = 445
              Top = 144
              Width = 41
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_NUMERO'
              DataSource = DS_Parametros
              TabOrder = 11
            end
            object DBEdit22: TDBEdit
              Left = 494
              Top = 105
              Width = 185
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_CONTATO'
              DataSource = DS_Parametros
              TabOrder = 8
            end
            object DBEdit27: TDBEdit
              Left = 14
              Top = 66
              Width = 665
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_NOME_FANTASIA'
              DataSource = DS_Parametros
              TabOrder = 3
            end
            object DBEdit12: TDBEdit
              Left = 504
              Top = 144
              Width = 175
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_COMPLEMENTO'
              DataSource = DS_Parametros
              TabOrder = 12
            end
            object DBEdit20: TDBEdit
              Left = 14
              Top = 226
              Width = 200
              Height = 21
              CharCase = ecLowerCase
              DataField = 'EMPRESA_SITE'
              DataSource = DS_Parametros
              TabOrder = 17
            end
            object DBEdit23: TDBEdit
              Left = 217
              Top = 226
              Width = 200
              Height = 21
              CharCase = ecLowerCase
              DataField = 'EMPRESA_EMAIL'
              DataSource = DS_Parametros
              TabOrder = 18
            end
            object Panel1: TPanel
              Left = 15
              Top = 285
              Width = 140
              Height = 125
              Color = clWhite
              ParentBackground = False
              TabOrder = 21
              object IMGLogomarca: TImage
                Left = 2
                Top = 2
                Width = 135
                Height = 120
                Hint = '2 cliques limpar'
                Center = True
                ParentShowHint = False
                Proportional = True
                ShowHint = True
                Transparent = True
                OnDblClick = IMGLogomarcaDblClick
              end
            end
            object Panel3: TPanel
              Left = 179
              Top = 286
              Width = 140
              Height = 125
              Color = clWhite
              ParentBackground = False
              TabOrder = 22
              object IMGLogoRelatorios: TImage
                Left = 2
                Top = 2
                Width = 135
                Height = 120
                Hint = '2 cliques limpar'
                Center = True
                ParentShowHint = False
                Proportional = True
                ShowHint = True
                Transparent = True
                OnDblClick = IMGLogoRelatoriosDblClick
              end
            end
            object DBEdit4: TDBEdit
              Left = 276
              Top = 185
              Width = 96
              Height = 21
              Hint = 'obrigat'#243'rio caso sua empresa emita Nota Fiscal Eletr'#244'nica'
              CharCase = ecUpperCase
              DataField = 'EMPRESA_CODIGOCIDADE'
              DataSource = DS_Parametros
              ParentShowHint = False
              ShowHint = True
              TabOrder = 14
              OnKeyDown = DBEdit4KeyDown
            end
            object DBEdit39: TDBEdit
              Left = 423
              Top = 226
              Width = 108
              Height = 21
              CharCase = ecLowerCase
              DataField = 'EMPRESA_CODIGOPAIS'
              DataSource = DS_Parametros
              Enabled = False
              TabOrder = 19
            end
            object DBEdit40: TDBEdit
              Left = 537
              Top = 226
              Width = 142
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_NOMEPAIS'
              DataSource = DS_Parametros
              Enabled = False
              TabOrder = 20
            end
            object DBEdit5: TDBEdit
              Left = 14
              Top = 27
              Width = 64
              Height = 21
              Hint = 
                'C'#243'digo da empresa ou filial (c'#243'digo 1 sempre ser'#225' empresa matriz' +
                ')'
              CharCase = ecUpperCase
              Color = clBtnFace
              DataField = 'EMPRESA'
              DataSource = DS_Parametros
              Enabled = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object EditNOME: TDBEdit
              Left = 175
              Top = 27
              Width = 504
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EMPRESA_NOME'
              DataSource = DS_Parametros
              TabOrder = 2
            end
            object DBEdit33: TDBEdit
              Left = 84
              Top = 27
              Width = 85
              Height = 21
              Hint = 
                'significa que nenhum lan'#231'amento poder'#225' ser feito com data ou ven' +
                'cimento antes dessa Data Base.'
              CharCase = ecUpperCase
              DataField = 'SISTEMA_DATABASE'
              DataSource = DS_Parametros
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
          end
        end
      end
      object Tab_Financeiro: TTabSheet
        Caption = 'Financeiro'
        ImageIndex = 4
        object GroupBox18: TGroupBox
          Left = 0
          Top = 0
          Width = 874
          Height = 152
          Align = alClient
          Color = clBtnFace
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          TabStop = True
          object Label28: TLabel
            Left = 504
            Top = 33
            Width = 190
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Toler'#226'ncia de atraso dos clientes:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 779
            Top = 33
            Width = 69
            Height = 14
            Caption = 'dias de atraso'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 2
            Top = 58
            Width = 260
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Juros a cobrar nos atrasos %:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 10
            Top = 37
            Width = 249
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Prazo m'#233'dio de entrega da carta de cobran'#231'a:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 347
            Top = 33
            Width = 141
            Height = 14
            Caption = 'dias para chega at'#233' o cliente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label36: TLabel
            Left = 504
            Top = 59
            Width = 190
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bloquear cr'#233'dito ap'#243's:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label37: TLabel
            Left = 779
            Top = 59
            Width = 69
            Height = 14
            Caption = 'dias de atraso'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 2
            Top = 85
            Width = 260
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Taxa de Cart'#243'rio %:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 504
            Top = 85
            Width = 190
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Clientes dever'#227'o ficar inativo ap'#243's:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 779
            Top = 85
            Width = 88
            Height = 14
            Caption = 'dias sem comprar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit13: TDBEdit
            Left = 697
            Top = 30
            Width = 80
            Height = 20
            Hint = 'Tolerancia antes do envio de cobran'#231'a'
            Ctl3D = False
            DataField = 'CLIENTE_ATRASOPERMITIDO'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 1
          end
          object DBEdit14: TDBEdit
            Left = 265
            Top = 56
            Width = 80
            Height = 20
            Ctl3D = False
            DataField = 'FINANCEIRO_JUROS'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 2
          end
          object DBEdit15: TDBEdit
            Left = 265
            Top = 30
            Width = 80
            Height = 20
            Ctl3D = False
            DataField = 'FINANCEIRO_COBRANCADIAS'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit16: TDBEdit
            Left = 697
            Top = 56
            Width = 80
            Height = 20
            Ctl3D = False
            DataField = 'FINANCEIRO_DIASBLOQUEIO'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 3
          end
          object DBEdit19: TDBEdit
            Left = 265
            Top = 82
            Width = 80
            Height = 20
            Ctl3D = False
            DataField = 'FINANCEIRO_CARTORIO'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 4
          end
          object DBEdit3: TDBEdit
            Left = 697
            Top = 82
            Width = 80
            Height = 20
            Ctl3D = False
            DataField = 'CLIENTE_INATIVIDADE'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 5
          end
        end
        object GroupBox20: TGroupBox
          Left = 0
          Top = 266
          Width = 874
          Height = 104
          Align = alBottom
          Caption = 'Compras e Contas'
          TabOrder = 2
          object DBCheckBox8: TDBCheckBox
            Left = 10
            Top = 48
            Width = 345
            Height = 17
            Cursor = crHandPoint
            Hint = 'Controle Bancario (d'#233'bido)'
            Caption = 'ao dar baixar manual lan'#231'ar no banco  automaticamente'
            DataField = 'FINANCEIRO_PAGAR_LANCARBANCO'
            DataSource = DS_Parametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 10
            Top = 25
            Width = 345
            Height = 17
            Cursor = crHandPoint
            Hint = 'Controle de Caixa (d'#233'bito)'
            Caption = 'ao dar baixar manual lan'#231'ar no caixa automaticamente'
            DataField = 'FINANCEIRO_PAGAR_LANCARCAIXA'
            DataSource = DS_Parametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object IDBEditDialog3: TIDBEditDialog
            Left = 441
            Top = 28
            Width = 137
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clBtnFace
            LabelCaption = 'Plano de Contas ao gerar T'#237'tulos a Pagar'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Plano de Contas'
            Etched = False
            ButtonCaption = '...'
            DataField = 'FINANCEIRO_PAGAR_PLANOCONTAS'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit1
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO_PLANO'
            SQLdbSQL.Strings = (
              'SELECT * FROM VIEW_PLANOCONTAS'
              'WHERE'
              'CODIGO_PLANO=:CODIGO_PLANO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM VIEW_PLANOCONTAS'
              'WHERE'
              'TIPO='#39'DEBITO'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO_PLANO'
                WhereSyntax = 'CODIGO_PLANO'
                DisplayLabel = 'C'#211'DIGO'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'PLANO DE CONTA'
                DisplayWidth = 74
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'TIPO'
                WhereSyntax = 'TIPO'
                DisplayLabel = 'TIPO'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
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
          object Edit1: TEdit
            Left = 584
            Top = 28
            Width = 273
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object Edit2: TEdit
            Left = 519
            Top = 74
            Width = 338
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            Text = '***'
          end
          object IDBEditDialog4: TIDBEditDialog
            Left = 441
            Top = 74
            Width = 75
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = ''
            Visible = True
            EditType = etAlphaNumeric
            FocusColor = clBtnFace
            LabelCaption = 'Conta Caixa para gerar T'#237'tulos a Pagar'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'FINANCEIRO_PAGAR_CONTACAIXA'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit2
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CONTAS'
              'WHERE'
              'CODIGO=:CODIGO'
              'AND'
              'EMPRESA=1')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CONTAS'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#211'DIGO:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scUpper
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'NOME DA CONTA:'
                DisplayWidth = 60
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'SALDOINICIAL'
                WhereSyntax = 'SALDOINICIAL'
                DisplayLabel = 'SALDO INICIAL:'
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
                FieldName = 'SALDOATUAL'
                WhereSyntax = 'SALDOATUAL'
                DisplayLabel = 'SALDO ATUAL:'
                DisplayFormat = '###,##0.00'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftFloat
                Search = False
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
        end
        object GroupBox19: TGroupBox
          Left = 0
          Top = 152
          Width = 874
          Height = 114
          Align = alBottom
          Caption = 'Contas a Receber'
          TabOrder = 1
          object DBCheckBox7: TDBCheckBox
            Left = 10
            Top = 14
            Width = 345
            Height = 17
            Cursor = crHandPoint
            Hint = 
              'Se estiver marcado, todas as vezes que gerar faturas em que o ve' +
              'ncimento seja igual a data de emiss'#227'o, o sistema entender'#225' como ' +
              'sendo uma venda '#224' vista e automaticamente dar'#225' baixa na parcela ' +
              'fazendo tambem lan'#231'amento no caixa.'
            Caption = 'Venda '#224' vista baixar automaticamente'
            DataField = 'FINANCEIRO_VENDAVISTABAIXAR'
            DataSource = DS_Parametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 10
            Top = 32
            Width = 345
            Height = 17
            Cursor = crHandPoint
            Hint = 
              'Se estiver marcado, todas as vezes que fizer uma venda e houver ' +
              'entrada em dinheiro, automaticamente ser'#225' lan'#231'ado no caixa. E se' +
              'mpre que gerar faturas em que o vencimento seja igual a data de ' +
              'emiss'#227'o, o sistema entender'#225' como sendo uma venda '#224' vista e tamb' +
              'em lan'#231'ar'#225' automaticamente no caixa.'
            Caption = 'Venda '#224' vista lan'#231'ar no caixa automaticamente'
            DataField = 'FINANCEIRO_BALCAO_LANCARCAIXA'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 10
            Top = 51
            Width = 345
            Height = 17
            Cursor = crHandPoint
            Hint = 
              'Se estiver marcado, todas as vezes que der baixa no contas a rec' +
              'eber, o valor recebido ser'#225' lan'#231'ado automaticamente no controle ' +
              'de caixa como Receita (cr'#233'dito).'
            Caption = 'Ao dar baixar manual lan'#231'ar no caixa automaticamente'
            DataField = 'FINANCEIRO_RECEBER_LANCARCAIXA'
            DataSource = DS_Parametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox1: TDBCheckBox
            Left = 10
            Top = 70
            Width = 345
            Height = 17
            Cursor = crHandPoint
            Hint = 
              'Se estiver marcado, todas as vezes que der baixa no contas a rec' +
              'eber, o valor recebido ser'#225' lan'#231'ado automaticamente no controle ' +
              'banc'#225'rio (cr'#233'dito).'
            Caption = 'Ao dar baixar manual lan'#231'ar no banco automaticamente'
            DataField = 'FINANCEIRO_RECEBER_LANCARBANCO'
            DataSource = DS_Parametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 10
            Top = 89
            Width = 345
            Height = 17
            Caption = 'Imprimir dados das faturas do cliente no Venda Expressa'
            DataField = 'VENDA_IMPRIMEFATURA'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object IDBEditDialog2: TIDBEditDialog
            Left = 441
            Top = 28
            Width = 137
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clBtnFace
            LabelCaption = 'Plano de Contas ao gerar T'#237'tulos a Receber'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Plano de Contas'
            Etched = False
            ButtonCaption = '...'
            DataField = 'FINANCEIRO_RECEBER_PLANOCONTAS'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomePlanoContasReceber
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO_PLANO'
            SQLdbSQL.Strings = (
              'SELECT * FROM VIEW_PLANOCONTAS'
              'WHERE'
              'CODIGO_PLANO=:CODIGO_PLANO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM VIEW_PLANOCONTAS'
              'WHERE'
              'TIPO='#39'CREDITO'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO_PLANO'
                WhereSyntax = 'CODIGO_PLANO'
                DisplayLabel = 'C'#211'DIGO'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'PLANO DE CONTA'
                DisplayWidth = 74
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'TIPO'
                WhereSyntax = 'TIPO'
                DisplayLabel = 'TIPO'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
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
          object ContaProcurar: TIDBEditDialog
            Left = 441
            Top = 74
            Width = 75
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Text = ''
            Visible = True
            EditType = etAlphaNumeric
            FocusColor = clBtnFace
            LabelCaption = 'Conta Caixa para gerar T'#237'tulos a Receber'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'FINANCEIRO_RECEBER_CONTACAIXA'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomeContaCaixa
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CONTAS'
              'WHERE'
              'CODIGO=:CODIGO'
              'AND'
              'EMPRESA=1')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CONTAS'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#211'DIGO:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scUpper
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'NOME DA CONTA:'
                DisplayWidth = 60
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'SALDOINICIAL'
                WhereSyntax = 'SALDOINICIAL'
                DisplayLabel = 'SALDO INICIAL:'
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
                FieldName = 'SALDOATUAL'
                WhereSyntax = 'SALDOATUAL'
                DisplayLabel = 'SALDO ATUAL:'
                DisplayFormat = '###,##0.00'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftFloat
                Search = False
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
          object EditNomeContaCaixa: TEdit
            Left = 519
            Top = 74
            Width = 338
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
            Text = '***'
          end
          object EditNomePlanoContasReceber: TEdit
            Left = 584
            Top = 28
            Width = 273
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
        end
        object GroupBox21: TGroupBox
          Left = 0
          Top = 370
          Width = 874
          Height = 69
          Align = alBottom
          Caption = 'Notas Fiscais de Entrada | M'#243'dulo Compras'
          TabOrder = 3
          object Edit4: TEdit
            Left = 519
            Top = 32
            Width = 338
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DbEditCFOP: TIDBEditDialog
            Left = 441
            Top = 32
            Width = 75
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clWindow
            LabelCaption = 'CFOP'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Plano de Contas'
            Etched = False
            ButtonCaption = '...'
            DataField = 'COMPRAS_CFOP'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit4
            SQLdbCampoRetorno = 'DESCRICAO'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CFOP'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CFOP'
              'WHERE'
              'OPERACAO='#39'E'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'CFOP'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
                DisplayLabel = 'Nome:'
                DisplayWidth = 75
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'OPERACAO'
                WhereSyntax = 'OPERACAO'
                DisplayLabel = 'Sa'#237'da/Entrada'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scBeginsWith
                SearchCase = scUpper
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
          object IDBEditDialog5: TIDBEditDialog
            Left = 10
            Top = 32
            Width = 137
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clBtnFace
            LabelCaption = 'Plano de Contas'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Plano de Contas'
            Etched = False
            ButtonCaption = '...'
            DataField = 'COMPRAS_PLANOCONTAS'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit3
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO_PLANO'
            SQLdbSQL.Strings = (
              'SELECT * FROM VIEW_PLANOCONTAS'
              'WHERE'
              'CODIGO_PLANO=:CODIGO_PLANO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM VIEW_PLANOCONTAS'
              'WHERE'
              'TIPO='#39'DEBITO'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO_PLANO'
                WhereSyntax = 'CODIGO_PLANO'
                DisplayLabel = 'C'#211'DIGO'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'PLANO DE CONTA'
                DisplayWidth = 74
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'TIPO'
                WhereSyntax = 'TIPO'
                DisplayLabel = 'TIPO'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
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
          object Edit3: TEdit
            Left = 153
            Top = 32
            Width = 273
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Vendas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        object GroupBox6: TGroupBox
          Left = 0
          Top = 0
          Width = 874
          Height = 161
          Align = alTop
          Caption = 'Pedido de Venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 2
            Top = 70
            Width = 870
            Height = 89
            Align = alBottom
            Caption = 'Mensagem nos pedidos de vendas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object DBMemo1: TDBMemo
              Left = 2
              Top = 20
              Width = 866
              Height = 67
              Align = alClient
              DataField = 'PEDIDO_MENSAGEM'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 560
            Top = 20
            Width = 312
            Height = 50
            Hint = 
              'Se a resposta for SIM, as notas fiscais n'#227'o dar'#227'o baixas no esto' +
              'que. Somente os pedidos de vendas.'
            Align = alRight
            Caption = 'Ao aprovar Pedido de Venda, baixar estoque?'
            Columns = 2
            DataField = 'PEDIDO_BAIXAESTOQUE'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Values.Strings = (
              'S'
              'N')
          end
          object GroupBox8: TGroupBox
            Left = 2
            Top = 20
            Width = 558
            Height = 50
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label17: TLabel
              Left = 239
              Top = 18
              Width = 25
              Height = 18
              Caption = 'dias'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 13
              Top = 18
              Width = 186
              Height = 18
              Caption = 'Prazo de entrega dos pedidos:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 203
              Top = 15
              Width = 32
              Height = 24
              BiDiMode = bdRightToLeft
              Ctl3D = False
              DataField = 'PEDIDO_ENTREGA'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object GroupBox16: TGroupBox
          Left = 0
          Top = 161
          Width = 874
          Height = 278
          Align = alClient
          Caption = 'Centraliza'#231#227'o das Vendas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object GroupBox17: TGroupBox
            Left = 2
            Top = 20
            Width = 870
            Height = 107
            Align = alTop
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object editComissaoNomeContaCaixa: TEdit
              Left = 87
              Top = 30
              Width = 339
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '***'
            end
            object editComissaoNomeCentroCusto: TEdit
              Left = 574
              Top = 30
              Width = 287
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
              Text = '***'
            end
            object DCodPlano: TIDBEditDialog
              Left = 10
              Top = 73
              Width = 137
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Text = ''
              Visible = True
              EditType = etUppercase
              FocusColor = clBtnFace
              LabelCaption = 'Plano de Contas'
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
              ButtonHint = 'Plano de Contas'
              Etched = False
              ButtonCaption = '...'
              DataField = 'FINANCEIRO_PAGAR_COMISSAOPLANOCONTA'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = EditNomePlanoContas
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO_PLANO'
              SQLdbSQL.Strings = (
                'SELECT * FROM VIEW_PLANOCONTAS'
                'WHERE'
                'CODIGO_PLANO=:CODIGO_PLANO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM VIEW_PLANOCONTAS'
                'WHERE'
                'TIPO='#39'DEBITO'#39
                'AND'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(*) FROM VIEW_PLANOCONTAS'
                'WHERE'
                'TIPO='#39'DEBITO'#39
                'AND'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO_PLANO'
                  WhereSyntax = 'CODIGO_PLANO'
                  DisplayLabel = 'C'#211'DIGO'
                  DisplayWidth = 15
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'PLANO DE CONTA'
                  DisplayWidth = 74
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'TIPO'
                  WhereSyntax = 'TIPO'
                  DisplayLabel = 'TIPO'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
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
            object EditNomePlanoContas: TEdit
              Left = 153
              Top = 73
              Width = 273
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object EstSearchDialogZeos1: TIDBEditDialog
              Left = 478
              Top = 30
              Width = 93
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = ''
              Visible = True
              EditType = etUppercase
              FocusColor = clWindow
              LabelCaption = 'Centro de Custo'
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
              ButtonHint = 'Departamento'
              Etched = False
              ButtonCaption = '...'
              DataField = 'FINANCEIRO_PAGAR_COMISSAOCENTROCUSTO'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = editComissaoNomeCentroCusto
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_DEPARTAMENTOS'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_DEPARTAMENTOS'
                'WHERE'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(CODIGO) FROM CAD_DEPARTAMENTOS'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#243'digo:'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = False
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end
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
            object IDBEditDialog1: TIDBEditDialog
              Left = 10
              Top = 30
              Width = 71
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = ''
              Visible = True
              EditType = etAlphaNumeric
              FocusColor = clBtnFace
              LabelCaption = 'Conta Caixa:'
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
              DataField = 'FINANCEIRO_PAGAR_COMISSAOCONTACAIXA'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = editComissaoNomeContaCaixa
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_CONTAS'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_CONTAS'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#211'DIGO:'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scUpper
                end
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'NOME DA CONTA:'
                  DisplayWidth = 60
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'SALDOINICIAL'
                  WhereSyntax = 'SALDOINICIAL'
                  DisplayLabel = 'SALDO INICIAL:'
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
                  FieldName = 'SALDOATUAL'
                  WhereSyntax = 'SALDOATUAL'
                  DisplayLabel = 'SALDO ATUAL:'
                  DisplayFormat = '###,##0.00'
                  DisplayWidth = 15
                  DisplayColumnWidth = 0
                  FieldType = ftFloat
                  Search = False
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
          end
          object GroupBox24: TGroupBox
            Left = 2
            Top = 127
            Width = 870
            Height = 84
            Align = alTop
            TabOrder = 1
            object EditCliente: TIDBEditDialog
              Left = 6
              Top = 36
              Width = 80
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = ''
              Visible = True
              LabelCaption = 'Cliente padr'#227'o do sistema:'
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
              DataField = 'VENDA_CLIENTE'
              DataSource = DS_Parametros
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
                end
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
              Left = 83
              Top = 36
              Width = 339
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '***'
            end
            object EditVendedor1: TEdit
              Left = 483
              Top = 36
              Width = 298
              Height = 23
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = '***'
            end
            object EditCodevendedor: TIDBEditDialog
              Left = 476
              Top = 36
              Width = 80
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              Text = ''
              Visible = True
              LabelCaption = 'Vendedor padr'#227'o do sistema:'
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
              DataField = 'VENDA_VENDEDOR'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = EditVendedor1
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = ' *** '
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_CLIENTES'
                'WHERE'
                'CODIGO=:CODIGO')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_CLIENTES'
                'WHERE'
                'TIPO='#39'VENDEDOR'#39' OR TIPO='#39'V'#39' '
                'AND'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(*) FROM CAD_CLIENTES'
                'WHERE'
                'TIPO='#39'VENDEDOR'#39' OR TIPO='#39'V'#39' '
                'AND'
                '%WHERE%')
              SearchDialogFieldList = <
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
                  SearchCase = scUpper
                end
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
          end
        end
      end
      object Tab_NFE: TTabSheet
        Caption = 'Nota Fiscal Eletr'#244'nica'
        ImageIndex = 6
        object GroupBox14: TGroupBox
          Left = 0
          Top = 182
          Width = 874
          Height = 82
          Align = alTop
          Caption = 
            'Configura'#231#227'o Documento/N'#250'mero Fiscal/Optante do Simples Nacional' +
            ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label7: TLabel
            Left = 10
            Top = 27
            Width = 45
            Height = 15
            Caption = 'Modelo:'
            FocusControl = DBEdit35
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 92
            Top = 27
            Width = 30
            Height = 15
            Caption = 'S'#233'rie:'
            FocusControl = DBEdit36
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label58: TLabel
            Left = 182
            Top = 27
            Width = 112
            Height = 15
            Hint = 'informe o ultimo numero de Nota Fiscal Eletronica emitida'
            Caption = 'Ultimo N'#250'mero NF-e:'
            FocusControl = DBEdit37
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel
            Left = 309
            Top = 27
            Width = 74
            Height = 15
            Caption = 'Lote de Envio:'
            FocusControl = DBEdit38
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 725
            Top = 46
            Width = 58
            Height = 15
            Caption = 'Al'#237'quota %'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit35: TDBEdit
            Left = 10
            Top = 43
            Width = 74
            Height = 23
            Hint = 'Informe o n'#250'mero: 55'
            CharCase = ecUpperCase
            DataField = 'NFE_MODELO'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object DBEdit36: TDBEdit
            Left = 93
            Top = 43
            Width = 74
            Height = 23
            Hint = 'Informe a s'#233'rie da sua NFe (padr'#227'o '#233' numero  1)'
            CharCase = ecUpperCase
            DataField = 'NFE_SERIE'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object DBEdit37: TDBEdit
            Left = 183
            Top = 43
            Width = 118
            Height = 23
            Hint = 
              'Pela legisla'#231#227'o brasileira este campo deve ser sequencial e n'#227'o ' +
              'pode ser alterado manualmente.'
            CharCase = ecUpperCase
            DataField = 'NFE_SEQUENCIA'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object DBEdit38: TDBEdit
            Left = 310
            Top = 43
            Width = 83
            Height = 23
            Hint = 
              'Pela legisla'#231#227'o brasileira este campo deve ser sequencial e n'#227'o ' +
              'pode ser alterado manualmente.'
            CharCase = ecUpperCase
            DataField = 'NFE_LOTE'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object EditAliquota: TDBEdit
            Left = 792
            Top = 43
            Width = 63
            Height = 23
            Hint = 'Al'#237'quota do Simples Nacional %'
            DataField = 'EMPRESA_REGIMETRIBUTARIOALIQUOTA'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
          end
          object DBRadioGroup14: TDBRadioGroup
            Left = 408
            Top = 11
            Width = 311
            Height = 65
            Caption = 'Regime Tribut'#225'rio'
            DataField = 'EMPRESA_REGIMETRIBUTARIO'
            DataSource = DS_Parametros
            Items.Strings = (
              'Simples Nacional'
              'Simples Nacional '#8211' excesso de receita bruta'
              'Regime Normal')
            TabOrder = 4
            Values.Strings = (
              '1'
              '2'
              '3')
          end
        end
        object GroupBox13: TGroupBox
          Left = 0
          Top = 264
          Width = 874
          Height = 175
          Align = alClient
          Caption = 'Tabela de Impostos por Estados (UF)'
          TabOrder = 3
          object DBGrid1: TDBGrid
            Left = 2
            Top = 16
            Width = 870
            Height = 157
            Align = alClient
            DataSource = ds_Estados
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -12
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
            OnKeyPress = DBGrid1KeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'SIGLA'
                Title.Caption = 'UF (Sigla)'
                Width = 93
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'Nome do Estado'
                Width = 241
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ICMS'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ICMS_PFISICA'
                Title.Caption = 'ICMS Pessoa F'#237'sica'
                Width = 122
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IPI'
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ISS'
                Width = 72
                Visible = True
              end>
          end
        end
        object GroupBox22: TGroupBox
          Left = 0
          Top = 109
          Width = 874
          Height = 73
          Align = alTop
          Caption = 'CFOP em Notas Fiscais'
          TabOrder = 1
          object IDBEditDialog6: TIDBEditDialog
            Left = 10
            Top = 40
            Width = 75
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clWindow
            LabelCaption = 'CFOP para Vendas DENTRO do Estado'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'CFOP_VENDA_UF_INTERNO'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit5
            SQLdbCampoRetorno = 'DESCRICAO'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CFOP'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CFOP'
              'WHERE'
              'OPERACAO='#39'S'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'CFOP'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
                DisplayLabel = 'Nome:'
                DisplayWidth = 75
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'OPERACAO'
                WhereSyntax = 'OPERACAO'
                DisplayLabel = 'Sa'#237'da/Entrada'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scBeginsWith
                SearchCase = scUpper
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
          object Edit5: TEdit
            Left = 88
            Top = 40
            Width = 338
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object IDBEditDialog7: TIDBEditDialog
            Left = 441
            Top = 40
            Width = 75
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clWindow
            LabelCaption = 'CFOP para Vendas FORA do Estado'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'CFOP_VENDA_UF_EXTERNO'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit6
            SQLdbCampoRetorno = 'DESCRICAO'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CFOP'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CFOP'
              'WHERE'
              'OPERACAO='#39'S'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'CFOP'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
                DisplayLabel = 'Nome:'
                DisplayWidth = 75
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'OPERACAO'
                WhereSyntax = 'OPERACAO'
                DisplayLabel = 'Sa'#237'da/Entrada'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scBeginsWith
                SearchCase = scUpper
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
          object Edit6: TEdit
            Left = 517
            Top = 40
            Width = 338
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 874
          Height = 109
          Align = alTop
          BevelWidth = 2
          TabOrder = 0
          object DBRadioGroup12: TDBRadioGroup
            Left = 478
            Top = 1
            Width = 225
            Height = 104
            Caption = 'TIPO DE AMBIETE:'
            DataField = 'NFE_AMBIENTE'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              'Produ'#231#227'o (Real)'
              'Homologa'#231#227'o (Teste)')
            ParentFont = False
            TabOrder = 2
            Values.Strings = (
              '1'
              '2')
          end
          object DBRadioGroup6: TDBRadioGroup
            Left = 255
            Top = 1
            Width = 217
            Height = 104
            Caption = 'DANFE - MODO DE IMPRESS'#195'O:'
            DataField = 'NFE_TIPODANFE'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              'Retrato'
              'Paisagem')
            ParentFont = False
            TabOrder = 1
            Values.Strings = (
              '1'
              '2')
          end
          object DBRadioGroup11: TDBRadioGroup
            Left = 0
            Top = 1
            Width = 249
            Height = 104
            Caption = 'FORMA DE EMISS'#195'O:'
            DataField = 'NFE_FORMAEMISSAO'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              'Normal'
              'Conting'#234'ncia'
              'SCAN'
              'DPEC'
              'FSDA')
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5')
          end
          object DBRadioGroup15: TDBRadioGroup
            Left = 709
            Top = 2
            Width = 163
            Height = 105
            Align = alRight
            Caption = 'Frete por conta do:'
            DataField = 'FRETEPADRAO'
            DataSource = DS_Parametros
            Items.Strings = (
              'Emitente'
              'Destinat'#225'rio'
              'Terceiros'
              'Sem Frete')
            TabOrder = 3
            Values.Strings = (
              '0'
              '1'
              '2'
              '9')
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Representante/Vendedor'
        ImageIndex = 7
        object GroupBox23: TGroupBox
          Left = 0
          Top = 0
          Width = 874
          Height = 225
          Align = alTop
          Caption = 'PAGAMENTO DE COMISS'#213'ES:'
          TabOrder = 0
          object DBRadioGroup13: TDBRadioGroup
            Left = 2
            Top = 16
            Width = 503
            Height = 207
            Align = alLeft
            Caption = 
              'Em qual momento deve lan'#231'ar automaticamente as comiss'#245'es em Cont' +
              'as as Pagar?'
            DataField = 'FINANCEIRO_PAGAR_COMISSAO'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              'No momento que o cliente pagar cada titulo (Contas a Receber)'
              
                'Na aprova'#231#227'o de Pedido de Venda/emiss'#227'o de Nota Fiscal Eletr'#244'nic' +
                'a'
              'N'#227'o lan'#231'ar automaticamente (ter'#225' que fazer manualmente)')
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              'RECEBIMENTO'
              'NOTAFISCAL'
              'NAO')
          end
          object GroupBox25: TGroupBox
            Left = 505
            Top = 16
            Width = 367
            Height = 207
            Align = alClient
            Caption = 'Centralizacao de Comiss'#245'es'
            TabOrder = 1
            object Label70: TLabel
              Left = 6
              Top = 161
              Width = 216
              Height = 18
              Caption = 'Vencimento para despesas geradas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object Label69: TLabel
              Left = 266
              Top = 161
              Width = 25
              Height = 18
              Caption = 'dias'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object DBEdit42: TDBEdit
              Left = 228
              Top = 155
              Width = 32
              Height = 24
              BiDiMode = bdRightToLeft
              Ctl3D = False
              DataField = 'FINANCEIRO_PAGAR_COMISSAOVENCIMENTO'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              Visible = False
            end
            object Edit8: TEdit
              Left = 82
              Top = 35
              Width = 273
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '***'
            end
            object IDBEditDialog9: TIDBEditDialog
              Left = 5
              Top = 35
              Width = 71
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = ''
              Visible = True
              EditType = etAlphaNumeric
              FocusColor = clBtnFace
              LabelCaption = 'Conta Caixa:'
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
              DataField = 'FINANCEIRO_PAGAR_COMISSAOCONTACAIXA'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = Edit8
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_CONTAS'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_CONTAS'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#211'DIGO:'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scUpper
                end
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'NOME DA CONTA:'
                  DisplayWidth = 60
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'SALDOINICIAL'
                  WhereSyntax = 'SALDOINICIAL'
                  DisplayLabel = 'SALDO INICIAL:'
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
                  FieldName = 'SALDOATUAL'
                  WhereSyntax = 'SALDOATUAL'
                  DisplayLabel = 'SALDO ATUAL:'
                  DisplayFormat = '###,##0.00'
                  DisplayWidth = 15
                  DisplayColumnWidth = 0
                  FieldType = ftFloat
                  Search = False
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
            object Edit9: TEdit
              Left = 104
              Top = 75
              Width = 251
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
              Text = '***'
            end
            object IDBEditDialog10: TIDBEditDialog
              Left = 5
              Top = 75
              Width = 95
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = ''
              Visible = True
              EditType = etUppercase
              FocusColor = clWindow
              LabelCaption = 'Centro de Custo'
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
              ButtonHint = 'Departamento'
              Etched = False
              ButtonCaption = '...'
              DataField = 'FINANCEIRO_PAGAR_COMISSAOCENTROCUSTO'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = Edit9
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_DEPARTAMENTOS'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_DEPARTAMENTOS'
                'WHERE'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(CODIGO) FROM CAD_DEPARTAMENTOS'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#243'digo:'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = False
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end
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
            object Edit10: TEdit
              Left = 104
              Top = 126
              Width = 251
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object IDBEditDialog11: TIDBEditDialog
              Left = 5
              Top = 126
              Width = 95
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Text = ''
              Visible = True
              EditType = etUppercase
              FocusColor = clBtnFace
              LabelCaption = 'Plano de Contas'
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
              ButtonHint = 'Plano de Contas'
              Etched = False
              ButtonCaption = '...'
              DataField = 'FINANCEIRO_PAGAR_COMISSAOPLANOCONTA'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = Edit10
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO_PLANO'
              SQLdbSQL.Strings = (
                'SELECT * FROM VIEW_PLANOCONTAS'
                'WHERE'
                'CODIGO_PLANO=:CODIGO_PLANO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM VIEW_PLANOCONTAS'
                'WHERE'
                'TIPO='#39'DEBITO'#39
                'AND'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(*) FROM VIEW_PLANOCONTAS'
                'WHERE'
                'TIPO='#39'DEBITO'#39
                'AND'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO_PLANO'
                  WhereSyntax = 'CODIGO_PLANO'
                  DisplayLabel = 'C'#211'DIGO'
                  DisplayWidth = 15
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'PLANO DE CONTA'
                  DisplayWidth = 74
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'TIPO'
                  WhereSyntax = 'TIPO'
                  DisplayLabel = 'TIPO'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
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
          end
        end
      end
      object Tab_Alertas: TTabSheet
        Caption = 'Alertas do Sistema'
        ImageIndex = 2
        object DBRadioGroup4: TDBRadioGroup
          Left = 2
          Top = 120
          Width = 160
          Height = 115
          Caption = 'Estoque Minimo:'
          DataField = 'ALERTA_ESTOQUE'
          DataSource = DS_Parametros
          Items.Strings = (
            'Avisar'
            'N'#227'o avisar')
          TabOrder = 3
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup7: TDBRadioGroup
          Left = 177
          Top = 121
          Width = 160
          Height = 115
          Caption = 'Pedidos'
          DataField = 'ALERTA_PEDIDOS'
          DataSource = DS_Parametros
          Items.Strings = (
            'Avisar'
            'N'#227'o avisar')
          TabOrder = 4
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup8: TDBRadioGroup
          Left = 343
          Top = 121
          Width = 180
          Height = 115
          Caption = 'Cobran'#231'as do dia'
          DataField = 'ALERTA_COBRANCA'
          DataSource = DS_Parametros
          Items.Strings = (
            'Avisar'
            'N'#227'o avisar')
          TabOrder = 5
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 529
          Top = 121
          Width = 208
          Height = 115
          Caption = 'Pedido de compras'
          DataField = 'ALERTA_PEDIDOSCOMPRAS'
          DataSource = DS_Parametros
          Items.Strings = (
            'Avisar'
            'N'#227'o avisar')
          TabOrder = 6
          Values.Strings = (
            'S'
            'N')
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 0
          Width = 240
          Height = 115
          Caption = 'Contas a Receber:'
          TabOrder = 0
          object Label46: TLabel
            Left = 10
            Top = 80
            Width = 212
            Height = 14
            Caption = 'avisar com            dias de anteced'#234'ncia'
          end
          object DBRadioGroup3: TDBRadioGroup
            Left = 2
            Top = 16
            Width = 236
            Height = 56
            Align = alTop
            Columns = 2
            DataField = 'ALERTA_CTARECEBER'
            DataSource = DS_Parametros
            Items.Strings = (
              'Avisar'
              'N'#227'o avisar')
            TabOrder = 0
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit24: TDBEdit
            Left = 72
            Top = 77
            Width = 28
            Height = 22
            Hint = 'dias'
            DataField = 'ALERTA_CTARECEBER_DIAS'
            DataSource = DS_Parametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
        end
        object GroupBox9: TGroupBox
          Left = 253
          Top = 0
          Width = 240
          Height = 115
          Caption = 'Contas a Pagar:'
          TabOrder = 1
          object Label47: TLabel
            Left = 10
            Top = 80
            Width = 212
            Height = 14
            Caption = 'avisar com            dias de anteced'#234'ncia'
          end
          object DBRadioGroup10: TDBRadioGroup
            Left = 2
            Top = 16
            Width = 236
            Height = 56
            Align = alTop
            Columns = 2
            DataField = 'ALERTA_CTAPAGAR'
            DataSource = DS_Parametros
            Items.Strings = (
              'Avisar'
              'N'#227'o avisar')
            TabOrder = 0
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit25: TDBEdit
            Left = 72
            Top = 77
            Width = 28
            Height = 22
            Hint = 'dias'
            DataField = 'ALERTA_CTAPAGAR_DIAS'
            DataSource = DS_Parametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
        end
        object GroupBox11: TGroupBox
          Left = 497
          Top = 0
          Width = 240
          Height = 115
          Caption = 'Validade de Produtos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label49: TLabel
            Left = 10
            Top = 80
            Width = 212
            Height = 14
            Caption = 'avisar com            dias de anteced'#234'ncia'
          end
          object DBRadioGroup5: TDBRadioGroup
            Left = 2
            Top = 16
            Width = 236
            Height = 56
            Align = alTop
            Columns = 2
            DataField = 'ALERTA_PEDIDOSCOMPRAS'
            DataSource = DS_Parametros
            Items.Strings = (
              'Avisar'
              'N'#227'o avisar')
            TabOrder = 0
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit26: TDBEdit
            Left = 72
            Top = 77
            Width = 28
            Height = 22
            Hint = 'dias'
            DataField = 'ALERTA_VALIDADE_DIAS'
            DataSource = DS_Parametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
        end
      end
      object Tab_Producao: TTabSheet
        Caption = 'PPCP (produ'#231#227'o)'
        ImageIndex = 5
        object GroupBox12: TGroupBox
          Left = 0
          Top = 0
          Width = 874
          Height = 116
          Align = alTop
          Caption = 'Situa'#231#227'o Tribut'#225'ria | Classifica'#231#227'o Fiscal | C'#243'digo NCM '
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          object Label24: TLabel
            Left = 10
            Top = 25
            Width = 200
            Height = 13
            Caption = 'Situa'#231#227'o Tribut'#225'ria (Refer'#234'ncias/Modelos)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 324
            Top = 25
            Width = 206
            Height = 13
            Caption = 'Classifica'#231#227'o Fiscal  (Refer'#234'ncias/Modelos)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label65: TLabel
            Left = 634
            Top = 25
            Width = 160
            Height = 13
            Caption = 'C'#243'digo NCM (produtos acabados)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 10
            Top = 40
            Width = 300
            Height = 21
            DataField = 'PRODUTO_SITUACAO_TRIBUTARIA'
            DataSource = DS_Parametros
            DropDownRows = 12
            DropDownWidth = 700
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'CODIGO'
            ListField = 'DESCRICAO;CODIGO'
            ListSource = BaseDados_PCP.ds_SituacaoTributaria
            NullValueKey = 46
            ParentFont = False
            TabOrder = 0
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 324
            Top = 40
            Width = 300
            Height = 21
            DataField = 'PRODUTO_CLASSIFICACAO_FISCAL'
            DataSource = DS_Parametros
            DropDownRows = 12
            DropDownWidth = 700
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'CODIGO'
            ListField = 'DESCRICAO;CODIGO'
            ListSource = BaseDados_PCP.ds_ClassificacaoFiscal
            NullValueKey = 46
            ParentFont = False
            TabOrder = 1
          end
          object EditNCM: TDBEdit
            Left = 634
            Top = 40
            Width = 175
            Height = 21
            Hint = 'Necess'#225'rio para emiss'#227'o da Nota Fiscal Eletr'#244'nica'
            CharCase = ecUpperCase
            DataField = 'PRODUTO_NCM'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object Edit7: TEdit
            Left = 102
            Top = 81
            Width = 227
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = '***'
          end
          object IDBEditDialog8: TIDBEditDialog
            Left = 10
            Top = 81
            Width = 90
            Height = 23
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ShowHint = True
            TabOrder = 3
            Text = '0'
            Visible = True
            LabelCaption = 'Controle de Qualidade:'
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
            DataField = 'PRODUTO_QUALIDADEPADRAO'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit7
            SQLdbCampoRetorno = 'DESCRICAO'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_QUALIDADES'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_QUALIDADES'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#211'DIGO:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
                DisplayLabel = 'NOME:'
                DisplayWidth = 90
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
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
        end
        object GroupBox15: TGroupBox
          Left = 0
          Top = 116
          Width = 874
          Height = 60
          Align = alTop
          Caption = 'Terceirizado - Dia de vencimento no m'#234's (para pagamento)'
          TabOrder = 1
          object Label67: TLabel
            Left = 11
            Top = 28
            Width = 105
            Height = 14
            Caption = 'Dia de vencimento:'
          end
          object DBEdit41: TDBEdit
            Left = 120
            Top = 26
            Width = 32
            Height = 20
            Ctl3D = False
            DataField = 'TERCEIRIZADO_DIAVENCIMENTO'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 0
          end
        end
        object DBRadioGroup16: TDBRadioGroup
          Left = 0
          Top = 176
          Width = 874
          Height = 60
          Align = alTop
          Caption = 'Atualizar estoque na finaliza'#231#227'o do andamento fase'
          Columns = 2
          DataField = 'PRODUCAOFINALIZAR'
          DataSource = DS_Parametros
          Items.Strings = (
            'Autom'#225'tico'
            'C'#243'digo de Barras')
          TabOrder = 2
          Values.Strings = (
            'AUTOMATICO'
            'CODIGOBARRAS')
        end
      end
      object Tab_Configurar: TTabSheet
        Caption = 'Estoque'
        ImageIndex = 5
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 868
          Height = 278
          Align = alTop
          Caption = 'Estoque:'
          TabOrder = 0
          object DBCheckBox11: TDBCheckBox
            Left = 2
            Top = 16
            Width = 864
            Height = 17
            Align = alTop
            Caption = 'Impedir venda sem estoque'
            DataField = 'PRODUTO_ESTOQUENEGATIVO'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object GroupBox5: TGroupBox
            Left = 2
            Top = 33
            Width = 864
            Height = 143
            Align = alTop
            Caption = 'Codifica'#231#227'o dos produtos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object Label21: TLabel
              Left = 217
              Top = 30
              Width = 68
              Height = 13
              Caption = 'D'#237'gitos Grupo:'
            end
            object Label22: TLabel
              Left = 349
              Top = 30
              Width = 85
              Height = 13
              Caption = 'D'#237'gitos Subgrupo:'
            end
            object Label23: TLabel
              Left = 492
              Top = 30
              Width = 77
              Height = 13
              Caption = 'D'#237'gitos Produto:'
            end
            object Label27: TLabel
              Left = 5
              Top = 30
              Width = 54
              Height = 13
              Caption = 'Separador:'
            end
            object GrpPreV: TGroupBox
              Left = 2
              Top = 68
              Width = 860
              Height = 73
              Align = alBottom
              Caption = 'Codigo do produto ficar'#225' assim:'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              object GrpPreview: TLabel
                Left = 2
                Top = 15
                Width = 856
                Height = 56
                Align = alClient
                Alignment = taCenter
                Caption = '000'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -29
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
                ExplicitWidth = 54
                ExplicitHeight = 35
              end
            end
            object SpnDigitosGrupo: TSpinEdit
              Left = 291
              Top = 27
              Width = 45
              Height = 22
              MaxValue = 4
              MinValue = 1
              TabOrder = 1
              Value = 1
              OnChange = SpnDigitosGrupoChange
            end
            object SpnDigitosSubGrupo: TSpinEdit
              Left = 437
              Top = 27
              Width = 45
              Height = 22
              MaxValue = 4
              MinValue = 1
              TabOrder = 2
              Value = 1
              OnChange = SpnDigitosGrupoChange
            end
            object SpnDigitosProduto: TSpinEdit
              Left = 572
              Top = 27
              Width = 45
              Height = 22
              MaxValue = 12
              MinValue = 1
              TabOrder = 3
              Value = 1
              OnChange = SpnDigitosGrupoChange
            end
            object DBComboBox1: TDBComboBox
              Left = 65
              Top = 27
              Width = 137
              Height = 21
              Style = csDropDownList
              DataField = 'PRODUTO_SEPARADOR'
              DataSource = DS_Parametros
              Items.Strings = (
                '.'
                '-'
                '/'
                '|')
              TabOrder = 0
              OnChange = SpnDigitosGrupoChange
              OnContextPopup = DBComboBox1ContextPopup
            end
          end
          object DBRadioGroup9: TDBRadioGroup
            Left = 2
            Top = 176
            Width = 864
            Height = 73
            Align = alTop
            Caption = 'Codifica'#231#227'o dos Produtos'
            Columns = 2
            DataField = 'PRODUTO_CODIFICACAO'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Autom'#225'tico (grupo + subgrupo + codigo)'
              'Manual (at'#233' 30 d'#237'gitos)')
            ParentFont = False
            TabOrder = 1
            Values.Strings = (
              'AUTO'
              'MANUAL')
          end
        end
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 894
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 894
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 894
      Height = 33
      ExplicitWidth = 894
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 892
        Height = 31
        Caption = 'Configura'#231#227'o e padroniza'#231#227'o do sistema'
        ExplicitWidth = 310
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.j' +
      'peg;*.bmp;*.ico;*.emf;*.wmf|GIF Image (*.gif)|*.gif|JPEG Image F' +
      'ile (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp' +
      ')|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Met' +
      'afiles (*.wmf)|*.wmf'
    Left = 461
    Top = 201
  end
  object db_Parametros: TFDQuery
    AfterPost = db_ParametrosAfterPost
    AfterScroll = db_ParametrosAfterScroll
    OnNewRecord = db_ParametrosNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CONFIG_PARAMETROS'
      'WHERE '
      'EMPRESA=:EMPRESA')
    Left = 240
    Top = 72
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_ParametrosEMPRESA: TIntegerField
      Tag = 99
      AutoGenerateValue = arAutoInc
      FieldName = 'EMPRESA'
      ReadOnly = True
      Required = True
    end
    object db_ParametrosEMPRESA_NOME: TStringField
      FieldName = 'EMPRESA_NOME'
      Required = True
      Size = 200
    end
    object db_ParametrosEMPRESA_NOME_FANTASIA: TStringField
      FieldName = 'EMPRESA_NOME_FANTASIA'
      Size = 200
    end
    object db_ParametrosEMPRESA_CNPJ: TStringField
      FieldName = 'EMPRESA_CNPJ'
      Size = 30
    end
    object db_ParametrosEMPRESA_IE: TStringField
      FieldName = 'EMPRESA_IE'
      Size = 30
    end
    object db_ParametrosEMPRESA_IEMUNICIPAL: TStringField
      FieldName = 'EMPRESA_IEMUNICIPAL'
      Size = 30
    end
    object db_ParametrosEMPRESA_ENDERECO: TStringField
      FieldName = 'EMPRESA_ENDERECO'
      Size = 200
    end
    object db_ParametrosEMPRESA_NUMERO: TStringField
      FieldName = 'EMPRESA_NUMERO'
      Size = 30
    end
    object db_ParametrosEMPRESA_BAIRRO: TStringField
      FieldName = 'EMPRESA_BAIRRO'
      Size = 200
    end
    object db_ParametrosEMPRESA_COMPLEMENTO: TStringField
      FieldName = 'EMPRESA_COMPLEMENTO'
      Size = 200
    end
    object db_ParametrosEMPRESA_CEP: TStringField
      FieldName = 'EMPRESA_CEP'
      Size = 30
    end
    object db_ParametrosEMPRESA_FONE: TStringField
      FieldName = 'EMPRESA_FONE'
      EditMask = '(99) 9999-9999'
      Size = 30
    end
    object db_ParametrosEMPRESA_FAX: TStringField
      FieldName = 'EMPRESA_FAX'
      Size = 30
    end
    object db_ParametrosEMPRESA_EMAIL: TStringField
      FieldName = 'EMPRESA_EMAIL'
      Size = 200
    end
    object db_ParametrosEMPRESA_SITE: TStringField
      FieldName = 'EMPRESA_SITE'
      Size = 200
    end
    object db_ParametrosEMPRESA_CONTATO: TStringField
      FieldName = 'EMPRESA_CONTATO'
      Size = 200
    end
    object db_ParametrosEMPRESA_CODIGOCIDADE: TIntegerField
      FieldName = 'EMPRESA_CODIGOCIDADE'
    end
    object db_ParametrosEMPRESA_CIDADE: TStringField
      FieldName = 'EMPRESA_CIDADE'
      Size = 200
    end
    object db_ParametrosEMPRESA_UF: TStringField
      FieldName = 'EMPRESA_UF'
      Size = 30
    end
    object db_ParametrosEMPRESA_CODIGOPAIS: TIntegerField
      FieldName = 'EMPRESA_CODIGOPAIS'
    end
    object db_ParametrosEMPRESA_NOMEPAIS: TStringField
      FieldName = 'EMPRESA_NOMEPAIS'
      Size = 200
    end
    object db_ParametrosEMPRESA_REGIMETRIBUTARIO: TIntegerField
      FieldName = 'EMPRESA_REGIMETRIBUTARIO'
    end
    object db_ParametrosEMPRESA_REGIMETRIBUTARIOALIQUOTA: TBCDField
      FieldName = 'EMPRESA_REGIMETRIBUTARIOALIQUOTA'
      DisplayFormat = '###,##0.00%'
    end
    object db_ParametrosPRODUTO_CODIFICACAO: TStringField
      FieldName = 'PRODUTO_CODIFICACAO'
      Size = 30
    end
    object db_ParametrosPRODUTO_SEPARADOR: TStringField
      FieldName = 'PRODUTO_SEPARADOR'
      Size = 30
    end
    object db_ParametrosPRODUTO_GRUPO: TIntegerField
      FieldName = 'PRODUTO_GRUPO'
    end
    object db_ParametrosPRODUTO_SUBGRUPO: TIntegerField
      FieldName = 'PRODUTO_SUBGRUPO'
    end
    object db_ParametrosPRODUTO_PRODUTO: TIntegerField
      FieldName = 'PRODUTO_PRODUTO'
    end
    object db_ParametrosPRODUTO_ESTOQUENEGATIVO: TStringField
      FieldName = 'PRODUTO_ESTOQUENEGATIVO'
      Size = 10
    end
    object db_ParametrosPRODUTO_SITUACAO_TRIBUTARIA: TStringField
      FieldName = 'PRODUTO_SITUACAO_TRIBUTARIA'
      Size = 30
    end
    object db_ParametrosPRODUTO_CLASSIFICACAO_FISCAL: TStringField
      FieldName = 'PRODUTO_CLASSIFICACAO_FISCAL'
      Size = 30
    end
    object db_ParametrosPRODUTO_NCM: TStringField
      FieldName = 'PRODUTO_NCM'
      Size = 30
    end
    object db_ParametrosFINANCEIRO_JUROS: TBCDField
      FieldName = 'FINANCEIRO_JUROS'
    end
    object db_ParametrosFINANCEIRO_CARTORIO: TBCDField
      FieldName = 'FINANCEIRO_CARTORIO'
    end
    object db_ParametrosFINANCEIRO_COBRANCADIAS: TIntegerField
      FieldName = 'FINANCEIRO_COBRANCADIAS'
    end
    object db_ParametrosFINANCEIRO_VENDAVISTABAIXAR: TStringField
      FieldName = 'FINANCEIRO_VENDAVISTABAIXAR'
      Size = 10
    end
    object db_ParametrosFINANCEIRO_DIASBLOQUEIO: TIntegerField
      FieldName = 'FINANCEIRO_DIASBLOQUEIO'
    end
    object db_ParametrosFINANCEIRO_PAGAR_LANCARCAIXA: TStringField
      FieldName = 'FINANCEIRO_PAGAR_LANCARCAIXA'
      Size = 10
    end
    object db_ParametrosFINANCEIRO_PAGAR_LANCARBANCO: TStringField
      FieldName = 'FINANCEIRO_PAGAR_LANCARBANCO'
      Size = 10
    end
    object db_ParametrosFINANCEIRO_PAGAR_COMISSAO: TStringField
      FieldName = 'FINANCEIRO_PAGAR_COMISSAO'
      Size = 30
    end
    object db_ParametrosFINANCEIRO_PAGAR_COMISSAOVENCIMENTO: TIntegerField
      FieldName = 'FINANCEIRO_PAGAR_COMISSAOVENCIMENTO'
    end
    object db_ParametrosFINANCEIRO_PAGAR_COMISSAOCONTACAIXA: TIntegerField
      FieldName = 'FINANCEIRO_PAGAR_COMISSAOCONTACAIXA'
    end
    object db_ParametrosFINANCEIRO_PAGAR_COMISSAOCENTROCUSTO: TIntegerField
      FieldName = 'FINANCEIRO_PAGAR_COMISSAOCENTROCUSTO'
    end
    object db_ParametrosFINANCEIRO_PAGAR_COMISSAOPLANOCONTA: TStringField
      FieldName = 'FINANCEIRO_PAGAR_COMISSAOPLANOCONTA'
      Size = 30
    end
    object db_ParametrosFINANCEIRO_PAGAR_CONTACAIXA: TIntegerField
      FieldName = 'FINANCEIRO_PAGAR_CONTACAIXA'
    end
    object db_ParametrosFINANCEIRO_PAGAR_PLANOCONTAS: TStringField
      FieldName = 'FINANCEIRO_PAGAR_PLANOCONTAS'
      Size = 30
    end
    object db_ParametrosFINANCEIRO_RECEBER_LANCARCAIXA: TStringField
      FieldName = 'FINANCEIRO_RECEBER_LANCARCAIXA'
      Size = 10
    end
    object db_ParametrosFINANCEIRO_RECEBER_LANCARBANCO: TStringField
      FieldName = 'FINANCEIRO_RECEBER_LANCARBANCO'
      Size = 10
    end
    object db_ParametrosFINANCEIRO_RECEBER_CONTACAIXA: TIntegerField
      FieldName = 'FINANCEIRO_RECEBER_CONTACAIXA'
    end
    object db_ParametrosFINANCEIRO_BALCAO_LANCARCAIXA: TStringField
      FieldName = 'FINANCEIRO_BALCAO_LANCARCAIXA'
      Size = 10
    end
    object db_ParametrosFINANCEIRO_RECEBER_PLANOCONTAS: TStringField
      FieldName = 'FINANCEIRO_RECEBER_PLANOCONTAS'
      Size = 30
    end
    object db_ParametrosCOMPRAS_PLANOCONTAS: TStringField
      FieldName = 'COMPRAS_PLANOCONTAS'
      Size = 30
    end
    object db_ParametrosCOMPRAS_CFOP: TIntegerField
      FieldName = 'COMPRAS_CFOP'
    end
    object db_ParametrosCOMPRAS_FORNECEDOR: TIntegerField
      FieldName = 'COMPRAS_FORNECEDOR'
    end
    object db_ParametrosALERTA_ESTOQUE: TStringField
      FieldName = 'ALERTA_ESTOQUE'
      Size = 10
    end
    object db_ParametrosALERTA_CTARECEBER: TStringField
      FieldName = 'ALERTA_CTARECEBER'
      Size = 10
    end
    object db_ParametrosALERTA_CTARECEBER_DIAS: TIntegerField
      FieldName = 'ALERTA_CTARECEBER_DIAS'
    end
    object db_ParametrosALERTA_CTAPAGAR: TStringField
      FieldName = 'ALERTA_CTAPAGAR'
      Size = 10
    end
    object db_ParametrosALERTA_CTAPAGAR_DIAS: TIntegerField
      FieldName = 'ALERTA_CTAPAGAR_DIAS'
    end
    object db_ParametrosALERTA_PEDIDOS: TStringField
      FieldName = 'ALERTA_PEDIDOS'
      Size = 10
    end
    object db_ParametrosALERTA_COBRANCA: TStringField
      FieldName = 'ALERTA_COBRANCA'
      Size = 10
    end
    object db_ParametrosALERTA_VALIDADE: TStringField
      FieldName = 'ALERTA_VALIDADE'
      Size = 10
    end
    object db_ParametrosALERTA_VALIDADE_DIAS: TIntegerField
      FieldName = 'ALERTA_VALIDADE_DIAS'
    end
    object db_ParametrosALERTA_PEDIDOSCOMPRAS: TStringField
      FieldName = 'ALERTA_PEDIDOSCOMPRAS'
      Size = 10
    end
    object db_ParametrosCFOP_VENDA_UF_INTERNO: TIntegerField
      FieldName = 'CFOP_VENDA_UF_INTERNO'
    end
    object db_ParametrosCFOP_VENDA_UF_EXTERNO: TIntegerField
      FieldName = 'CFOP_VENDA_UF_EXTERNO'
    end
    object db_ParametrosCFOP_DEVOLUCAO_UF_INTERNO: TIntegerField
      FieldName = 'CFOP_DEVOLUCAO_UF_INTERNO'
    end
    object db_ParametrosCFOP_DEVOLUCAO_UF_EXTERNO: TIntegerField
      FieldName = 'CFOP_DEVOLUCAO_UF_EXTERNO'
    end
    object db_ParametrosCFOP_COMPRA_UF_INTERNO: TIntegerField
      FieldName = 'CFOP_COMPRA_UF_INTERNO'
    end
    object db_ParametrosCFOP_COMPRA_UF_EXTERNO: TIntegerField
      FieldName = 'CFOP_COMPRA_UF_EXTERNO'
    end
    object db_ParametrosNFE_AMBIENTE: TStringField
      FieldName = 'NFE_AMBIENTE'
      Size = 30
    end
    object db_ParametrosNFE_TIPODANFE: TStringField
      FieldName = 'NFE_TIPODANFE'
      Size = 30
    end
    object db_ParametrosNFE_FORMAEMISSAO: TStringField
      FieldName = 'NFE_FORMAEMISSAO'
      Size = 30
    end
    object db_ParametrosNFE_MODELO: TIntegerField
      FieldName = 'NFE_MODELO'
    end
    object db_ParametrosNFE_SERIE: TIntegerField
      FieldName = 'NFE_SERIE'
    end
    object db_ParametrosNFE_SEQUENCIA: TIntegerField
      FieldName = 'NFE_SEQUENCIA'
    end
    object db_ParametrosNFE_LOTE: TIntegerField
      FieldName = 'NFE_LOTE'
    end
    object db_ParametrosSISTEMA_DATABASE: TSQLTimeStampField
      FieldName = 'SISTEMA_DATABASE'
      EditMask = '99/99/9999'
    end
    object db_ParametrosSISTEMA_LOGO_PRINCIPAL: TStringField
      FieldName = 'SISTEMA_LOGO_PRINCIPAL'
      Size = 200
    end
    object db_ParametrosSISTEMA_LOGO_RELATORIOS: TStringField
      FieldName = 'SISTEMA_LOGO_RELATORIOS'
      Size = 200
    end
    object db_ParametrosCLIENTE_INATIVIDADE: TIntegerField
      FieldName = 'CLIENTE_INATIVIDADE'
    end
    object db_ParametrosCLIENTE_ATRASOPERMITIDO: TIntegerField
      FieldName = 'CLIENTE_ATRASOPERMITIDO'
    end
    object db_ParametrosVENDA_VENDEDOR: TIntegerField
      FieldName = 'VENDA_VENDEDOR'
    end
    object db_ParametrosVENDA_CLIENTE: TIntegerField
      FieldName = 'VENDA_CLIENTE'
    end
    object db_ParametrosVENDA_IMPRIMEFATURA: TStringField
      FieldName = 'VENDA_IMPRIMEFATURA'
      Size = 10
    end
    object db_ParametrosPEDIDO_ENTREGA: TIntegerField
      FieldName = 'PEDIDO_ENTREGA'
    end
    object db_ParametrosPEDIDO_BAIXAESTOQUE: TStringField
      FieldName = 'PEDIDO_BAIXAESTOQUE'
      Size = 10
    end
    object db_ParametrosPEDIDO_MENSAGEM: TStringField
      FieldName = 'PEDIDO_MENSAGEM'
      Size = 5000
    end
    object db_ParametrosFRETEPADRAO: TIntegerField
      FieldName = 'FRETEPADRAO'
    end
    object db_ParametrosPRODUTO_QUALIDADEPADRAO: TIntegerField
      FieldName = 'PRODUTO_QUALIDADEPADRAO'
    end
    object db_ParametrosTERCEIRIZADO_DIAVENCIMENTO: TIntegerField
      FieldName = 'TERCEIRIZADO_DIAVENCIMENTO'
    end
    object db_ParametrosPRODUCAOFINALIZAR: TStringField
      FieldName = 'PRODUCAOFINALIZAR'
      Size = 30
    end
  end
  object DS_Parametros: TDataSource
    DataSet = db_Parametros
    Left = 336
    Top = 72
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 384
    Top = 200
  end
  object db_Estados: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_UF_IMPOSTOS'
      'ORDER BY SIGLA, NOME')
    Left = 432
    Top = 303
    object db_EstadosSIGLA: TStringField
      FieldName = 'SIGLA'
      Required = True
      Size = 2
    end
    object db_EstadosNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_EstadosICMS: TBCDField
      FieldName = 'ICMS'
      DisplayFormat = '###,##0.00%'
    end
    object db_EstadosICMS_PFISICA: TBCDField
      FieldName = 'ICMS_PFISICA'
      DisplayFormat = '###,##0.00%'
    end
    object db_EstadosISS: TBCDField
      FieldName = 'ISS'
      DisplayFormat = '###,##0.00%'
    end
    object db_EstadosIPI: TBCDField
      FieldName = 'IPI'
      DisplayFormat = '###,##0.00%'
    end
    object db_EstadosIR: TBCDField
      FieldName = 'IR'
      DisplayFormat = '###,##0.00%'
    end
    object db_EstadosRETER_PIS: TStringField
      FieldName = 'RETER_PIS'
      Size = 10
    end
    object db_EstadosRETER_COFINS: TStringField
      FieldName = 'RETER_COFINS'
      Size = 10
    end
    object db_EstadosRETER_CSLL: TStringField
      FieldName = 'RETER_CSLL'
      Size = 10
    end
    object db_EstadosRETER_INSS: TStringField
      FieldName = 'RETER_INSS'
      Size = 10
    end
  end
  object ds_Estados: TDataSource
    DataSet = db_Estados
    Left = 508
    Top = 304
  end
end
