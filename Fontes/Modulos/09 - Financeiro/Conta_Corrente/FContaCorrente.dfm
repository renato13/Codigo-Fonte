object FrmContaCorrente: TFrmContaCorrente
  Left = 0
  Top = 0
  Caption = 'Controle de Conta Corrente'
  ClientHeight = 462
  ClientWidth = 714
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
  object PaginaPadrao: TPageControl
    Left = 0
    Top = 26
    Width = 714
    Height = 378
    ActivePage = Tab_Editar
    Align = alClient
    HotTrack = True
    MultiLine = True
    TabOrder = 1
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
        Width = 706
        Height = 350
        Align = alClient
        Color = 14811135
        DataSource = DS_ContaCorrente
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BANCO'
            Title.Caption = 'Banco'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENCIA'
            Title.Caption = 'Ag'#234'ncia'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTA_CORRENTE'
            Title.Caption = 'Conta Corrente'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CORRENTISTA'
            Title.Caption = 'Correntista:'
            Width = 177
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_AGENCIA'
            Title.Caption = 'Nome da Ag'#234'ncia'
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDOINICIAL'
            Title.Caption = 'Saldo Inicial:'
            Width = 113
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
      object Label3: TLabel
        Left = 297
        Top = 16
        Width = 39
        Height = 13
        Caption = 'Ag'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 407
        Top = 16
        Width = 71
        Height = 13
        Caption = 'Conta Corrente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 4
        Top = 57
        Width = 85
        Height = 13
        Caption = 'Nome da Ag'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 6
        Top = 94
        Width = 255
        Height = 13
        Caption = 'Correntista da Conta (Seu nome ou nome da empresa)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 6
        Top = 131
        Width = 84
        Height = 13
        Caption = 'Gerente da Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 238
        Top = 133
        Width = 81
        Height = 13
        Caption = 'Fone da Ag'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 356
        Top = 16
        Width = 27
        Height = 13
        Caption = 'Digito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 488
        Top = 17
        Width = 27
        Height = 13
        Caption = 'Digito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 385
        Top = 133
        Width = 60
        Height = 13
        Caption = 'Saldo Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit_nomeag: TDBEdit
        Left = 5
        Top = 71
        Width = 512
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME_AGENCIA'
        DataSource = DS_ContaCorrente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit_nomecorr: TDBEdit
        Left = 7
        Top = 109
        Width = 510
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME_CORRENTISTA'
        DataSource = DS_ContaCorrente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit_contato: TDBEdit
        Left = 7
        Top = 147
        Width = 229
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CONTATO'
        DataSource = DS_ContaCorrente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit_fone: TDBEdit
        Left = 238
        Top = 147
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FONE'
        DataSource = DS_ContaCorrente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit_agencia: TDBEdit
        Left = 295
        Top = 32
        Width = 57
        Height = 21
        CharCase = ecUpperCase
        DataField = 'AGENCIA'
        DataSource = DS_ContaCorrente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit_conta: TDBEdit
        Left = 407
        Top = 32
        Width = 79
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTA_CORRENTE'
        DataSource = DS_ContaCorrente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 358
        Top = 32
        Width = 31
        Height = 21
        CharCase = ecUpperCase
        DataField = 'AGENCIA_DIG'
        DataSource = DS_ContaCorrente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 487
        Top = 32
        Width = 31
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTA_CORRENTE_DIG'
        DataSource = DS_ContaCorrente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 126
        Width = 706
        Height = 224
        Align = alBottom
        Caption = 'Configurar Boleto Banc'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnEnter = GroupBox1Enter
        object Label11: TLabel
          Left = 8
          Top = 16
          Width = 31
          Height = 13
          Caption = 'Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 299
          Top = 15
          Width = 39
          Height = 13
          Caption = 'Ag'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 407
          Top = 15
          Width = 104
          Height = 13
          Caption = 'C'#243'digo Cedente (C/C)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 356
          Top = 15
          Width = 29
          Height = 13
          Caption = 'D'#237'gito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 297
          Top = 56
          Width = 36
          Height = 13
          Caption = 'Carteira'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 407
          Top = 56
          Width = 68
          Height = 13
          Caption = 'Nosso n'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 10
          Top = 56
          Width = 86
          Height = 13
          Caption = 'Nome do Cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 344
          Top = 56
          Width = 45
          Height = 13
          Caption = 'Conv'#234'nio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit4: TDBEdit
          Left = 297
          Top = 31
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'AGENCIA'
          DataSource = ds_BoletoConfigurar
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 407
          Top = 31
          Width = 79
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'CEDENTECODIGO'
          DataSource = ds_BoletoConfigurar
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 8
          Top = 31
          Width = 35
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'BANCO'
          DataSource = ds_BoletoConfigurar
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 47
          Top = 31
          Width = 247
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'BANCONOME'
          DataSource = ds_BoletoConfigurar
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 358
          Top = 31
          Width = 31
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'AGENCIADIGITO'
          DataSource = ds_BoletoConfigurar
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit9: TDBEdit
          Left = 489
          Top = 31
          Width = 31
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'DIGITO'
          DataSource = ds_BoletoConfigurar
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object GroupBox2: TGroupBox
          Left = 3
          Top = 99
          Width = 518
          Height = 122
          Caption = 'Instru'#231#245'es do Boleto'
          TabOrder = 10
          object DBMemo1: TDBMemo
            Left = 2
            Top = 15
            Width = 514
            Height = 105
            Hint = 'Instru'#231#245'es que sair'#225' no corpo do Boleto'
            Align = alClient
            DataField = 'INSTRUCOES'
            DataSource = ds_BoletoConfigurar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object DBEdit10: TDBEdit
          Left = 295
          Top = 72
          Width = 46
          Height = 21
          Hint = 'Carteira de conv'#234'ncio com o banco para emiss'#227'o de boletos'
          CharCase = ecUpperCase
          DataField = 'CARTEIRA'
          DataSource = ds_BoletoConfigurar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object DBEdit11: TDBEdit
          Left = 407
          Top = 72
          Width = 113
          Height = 21
          Hint = 
            'Nosso n'#250'mero (seq'#252#234'ncia) - Campo modificado automaticamente pelo' +
            ' sistema. Informe um numero inicial ou atual'
          CharCase = ecUpperCase
          DataField = 'PROXIMONOSSONUMERO'
          DataSource = ds_BoletoConfigurar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object DBEdit12: TDBEdit
          Left = 8
          Top = 72
          Width = 284
          Height = 21
          Hint = 'Nome de sua empresa (sair'#225' no topo do boleto)'
          CharCase = ecUpperCase
          DataField = 'NOME_CEDENTE'
          DataSource = ds_BoletoConfigurar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 525
          Top = 15
          Width = 185
          Height = 103
          Hint = 
            'Tipo de Inscri'#231#227'o de sua empresa ou neg'#243'cio. Informe se '#233' CNPJ o' +
            'u CPF'
          Caption = 'Sua Inscri'#231#227'o:'
          DataField = 'TIPOINSCRICAO'
          DataSource = ds_BoletoConfigurar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Jur'#237'dica'
            'F'#237'sica')
          ParentFont = False
          TabOrder = 11
          Values.Strings = (
            'J'
            'F')
        end
        object DBEdit13: TDBEdit
          Left = 344
          Top = 72
          Width = 52
          Height = 21
          Hint = 'Carteira de conv'#234'ncio com o banco para emiss'#227'o de boletos'
          CharCase = ecUpperCase
          DataField = 'CONVENIO'
          DataSource = ds_BoletoConfigurar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 525
          Top = 118
          Width = 185
          Height = 103
          Hint = 'Escolha o tipo (extens'#227'o) de arquivo ao exportar os boletos'
          Caption = 'Ao exportar boletos gerar arquivo:'
          DataField = 'EXPORTAR'
          DataSource = ds_BoletoConfigurar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            '&PDF - Adobe Reader'
            '&RTF - Microsoft Word'
            '&HTML - Formato internet')
          ParentFont = False
          TabOrder = 12
          Values.Strings = (
            'pdf'
            'rtf'
            'htm')
        end
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 523
        Top = 18
        Width = 185
        Height = 151
        Hint = 'se estiver "inativa" nao conseguir'#225' emitir boletos'
        Caption = 'Status da Conta'
        DataField = 'STATUS'
        DataSource = DS_ContaCorrente
        Items.Strings = (
          'Ativa'
          'Inativa')
        TabOrder = 11
        Values.Strings = (
          'S'
          'N')
      end
      object EditBancoNome: TEdit
        Left = 74
        Top = 32
        Width = 215
        Height = 21
        Enabled = False
        TabOrder = 1
        Text = '***'
      end
      object EditBanco: TIDBEditDialog
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
        LabelCaption = 'Banco'
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
        DataField = 'BANCO'
        DataSource = DS_ContaCorrente
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditBancoNome
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_BANCOS'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_BANCOS'
          'WHERE'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT count(*) FROM CAD_BANCOS'
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
      object DBEdit1: TDBEdit
        Left = 385
        Top = 147
        Width = 132
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SALDOINICIAL'
        DataSource = DS_ContaCorrente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 714
    Height = 26
    Align = alTop
    TabOrder = 0
    object Navegador: TDBNavigator
      Left = 442
      Top = 1
      Width = 271
      Height = 24
      DataSource = DS_ContaCorrente
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
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 404
    Width = 714
    Height = 58
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 404
    ExplicitWidth = 714
    inherited W7Panel1: TPanel
      Width = 714
      ExplicitWidth = 714
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
      end
      inherited SpbImprimir: TSpeedButton
        Visible = False
      end
      inherited SpbProcurar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbProcurarClick
      end
      inherited SpbExcluir: TSpeedButton
        OnClick = FrmFrameBotoes1SpbExcluirClick
      end
      inherited SpbCancelar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbCancelarClick
      end
      inherited SpbSalvar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSalvarClick
      end
      inherited SpbEditar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbEditarClick
      end
      inherited SpbAdicionar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbAdicionarClick
      end
    end
  end
  object dbEditPesquisar: TIDBEditDialog
    Left = 557
    Top = 410
    Width = 100
    Height = 21
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '0'
    Visible = False
    EditType = etNumeric
    FocusColor = clBtnFace
    LabelCaption = 'Conta Corrente'
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
    SQLdbFazBusca = True
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
  object DS_ContaCorrente: TDataSource
    DataSet = DB_DadosBanco
    Left = 448
    Top = 120
  end
  object db_BoletoConfigurar: TFDQuery
    BeforePost = db_BoletoConfigurarBeforePost
    OnNewRecord = db_BoletoConfigurarNewRecord
    MasterSource = DS_ContaCorrente
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CONTA_CORRENTE_BOLETO'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 304
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object db_BoletoConfigurarCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_BoletoConfigurarBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object db_BoletoConfigurarBANCONOME: TStringField
      FieldName = 'BANCONOME'
      Size = 30
    end
    object db_BoletoConfigurarAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 30
    end
    object db_BoletoConfigurarAGENCIADIGITO: TStringField
      FieldName = 'AGENCIADIGITO'
      Size = 30
    end
    object db_BoletoConfigurarAGENCIANOME: TStringField
      FieldName = 'AGENCIANOME'
      Size = 30
    end
    object db_BoletoConfigurarCEDENTECODIGO: TStringField
      FieldName = 'CEDENTECODIGO'
      Size = 30
    end
    object db_BoletoConfigurarDIGITO: TStringField
      FieldName = 'DIGITO'
      Size = 30
    end
    object db_BoletoConfigurarCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Size = 30
    end
    object db_BoletoConfigurarPROXIMONOSSONUMERO: TStringField
      FieldName = 'PROXIMONOSSONUMERO'
      Size = 30
    end
    object db_BoletoConfigurarINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 5000
    end
    object db_BoletoConfigurarTIPOINSCRICAO: TStringField
      FieldName = 'TIPOINSCRICAO'
      Size = 30
    end
    object db_BoletoConfigurarNOME_CEDENTE: TStringField
      FieldName = 'NOME_CEDENTE'
      Size = 200
    end
    object db_BoletoConfigurarCNPJ_CEDENTE: TStringField
      FieldName = 'CNPJ_CEDENTE'
      Size = 30
    end
    object db_BoletoConfigurarCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 30
    end
    object db_BoletoConfigurarEXPORTAR: TStringField
      FieldName = 'EXPORTAR'
      Size = 30
    end
  end
  object ds_BoletoConfigurar: TDataSource
    DataSet = db_BoletoConfigurar
    Left = 448
    Top = 176
  end
  object DB_DadosBanco: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CONTA_CORRENTE'
      'ORDER BY CODIGO, BANCO, AGENCIA, CTA_CORRENTE')
    Left = 312
    Top = 128
    object DB_DadosBancoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object DB_DadosBancoDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object DB_DadosBancoBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object DB_DadosBancoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 30
    end
    object DB_DadosBancoAGENCIA_DIG: TStringField
      FieldName = 'AGENCIA_DIG'
      Size = 30
    end
    object DB_DadosBancoCTA_CORRENTE: TStringField
      FieldName = 'CTA_CORRENTE'
      Size = 30
    end
    object DB_DadosBancoCTA_CORRENTE_DIG: TStringField
      FieldName = 'CTA_CORRENTE_DIG'
      Size = 30
    end
    object DB_DadosBancoNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 200
    end
    object DB_DadosBancoNOME_CORRENTISTA: TStringField
      FieldName = 'NOME_CORRENTISTA'
      Size = 200
    end
    object DB_DadosBancoCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 200
    end
    object DB_DadosBancoFONE: TStringField
      FieldName = 'FONE'
      Size = 30
    end
    object DB_DadosBancoSALDO: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object DB_DadosBancoSALDOINICIAL: TBCDField
      FieldName = 'SALDOINICIAL'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object DB_DadosBancoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
  end
end
