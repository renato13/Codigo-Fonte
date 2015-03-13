object FrmRelBanco_FluxoBancario: TFrmRelBanco_FluxoBancario
  Left = 257
  Top = 104
  Caption = 'FrmRelBanco_FluxoBancario'
  ClientHeight = 388
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 35
    Top = 10
    Width = 635
    Height = 898
    AfterPrint = QuickRep1AfterPrint
    BeforePrint = QuickRep1BeforePrint
    DataSet = db_MovtoBancario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = First
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ReportTitle = 'Cadastro de Clientes (Sint'#233'tico)'
    SnapToGrid = True
    Units = MM
    Zoom = 80
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object EmpresaTitulo: TQRBand
      Left = 30
      Top = 30
      Width = 575
      Height = 67
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        221.588541666666700000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 2
        Top = 1
        Width = 591
        Height = 64
        Size.Values = (
          211.666666666666700000
          6.614583333333332000
          3.307291666666667000
          1954.609375000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 11
        Top = 6
        Width = 561
        Height = 20
        Size.Values = (
          66.145833333333340000
          36.380208333333340000
          19.843750000000000000
          1855.390625000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'RAZAO_SOCIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 14
      end
      object QRLabel1: TQRLabel
        Left = 11
        Top = 24
        Width = 561
        Height = 16
        Size.Values = (
          52.916666666666660000
          36.380208333333340000
          79.375000000000000000
          1855.390625000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Movimento Banc'#225'rio (anal'#237'tico)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel3: TQRLabel
        Left = 12
        Top = 46
        Width = 19
        Height = 14
        Size.Values = (
          46.302083333333330000
          39.687500000000000000
          152.135416666666700000
          62.838541666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRSysData1: TQRSysData
        Left = 42
        Top = 46
        Width = 22
        Height = 14
        Size.Values = (
          46.302083333333330000
          138.906250000000000000
          152.135416666666700000
          72.760416666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDate
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 7
      end
      object QRLabel4: TQRLabel
        Left = 489
        Top = 45
        Width = 26
        Height = 14
        Size.Values = (
          46.302083333333330000
          1617.265625000000000000
          148.828125000000000000
          85.989583333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'P'#225'gina:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRSysData2: TQRSysData
        Left = 531
        Top = 45
        Width = 31
        Height = 15
        Size.Values = (
          49.609375000000000000
          1756.171875000000000000
          148.828125000000000000
          102.526041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 7
      end
    end
    object Cabecalho: TQRBand
      Left = 30
      Top = 97
      Width = 575
      Height = 21
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        69.453125000000000000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel2: TQRLabel
        Left = 12
        Top = 3
        Width = 19
        Height = 14
        Size.Values = (
          46.302083333333330000
          39.687500000000000000
          9.921875000000000000
          62.838541666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape4: TQRShape
        Left = 1
        Top = 16
        Width = 590
        Height = 7
        Size.Values = (
          23.151041666666670000
          3.307291666666667000
          52.916666666666670000
          1951.302083333333000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 48
        Top = 3
        Width = 28
        Height = 14
        Size.Values = (
          46.302083333333330000
          158.750000000000000000
          9.921875000000000000
          92.604166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Docto.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 91
        Top = 3
        Width = 58
        Height = 14
        Size.Values = (
          46.302083333333330000
          300.963541666666700000
          9.921875000000000000
          191.822916666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Opera'#231#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 286
        Top = 3
        Width = 70
        Height = 14
        Size.Values = (
          46.302083333333340000
          945.885416666666600000
          9.921875000000000000
          231.510416666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Hist'#243'rico'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 496
        Top = 3
        Width = 69
        Height = 14
        Size.Values = (
          46.302083333333340000
          1640.416666666667000000
          9.921875000000000000
          228.203125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'D'#233'bito'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 418
        Top = 3
        Width = 69
        Height = 14
        Size.Values = (
          46.302083333333340000
          1382.447916666667000000
          9.921875000000000000
          228.203125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Cr'#233'dito'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object Datalhes: TQRBand
      Left = 30
      Top = 188
      Width = 575
      Height = 14
      AlignToBottom = False
      BeforePrint = DatalhesBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        46.302083333333330000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 3
        Top = 0
        Width = 20
        Height = 14
        Size.Values = (
          46.302083333333330000
          9.921875000000000000
          0.000000000000000000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = db_MovtoBancario
        DataField = 'DATA'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 57
        Top = 0
        Width = 39
        Height = 14
        Size.Values = (
          46.302083333333330000
          188.515625000000000000
          0.000000000000000000
          128.984375000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = db_MovtoBancario
        DataField = 'DOCUMENTO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 101
        Top = 0
        Width = 40
        Height = 14
        Size.Values = (
          46.302083333333330000
          334.036458333333300000
          0.000000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = db_MovtoBancario
        DataField = 'ORIGEM'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText6: TQRDBText
        Left = 143
        Top = 0
        Width = 141
        Height = 14
        Size.Values = (
          46.302083333333330000
          472.942708333333300000
          0.000000000000000000
          466.328125000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = db_MovtoBancario
        DataField = 'HISTORICO_CAIXA'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object Vlr_Credito: TQRDBText
        Left = 418
        Top = 0
        Width = 69
        Height = 14
        Size.Values = (
          46.302083333333340000
          1382.447916666667000000
          0.000000000000000000
          228.203125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = db_MovtoBancario
        DataField = 'VALOR'
        Mask = '######0.00'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText7: TQRDBText
        Left = 286
        Top = 0
        Width = 159
        Height = 14
        Size.Values = (
          46.302083333333340000
          945.885416666666600000
          0.000000000000000000
          525.859375000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = db_MovtoBancario
        DataField = 'HISTORICO_MOVBANC'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object Vlr_Debito: TQRDBText
        Left = 496
        Top = 0
        Width = 69
        Height = 14
        Size.Values = (
          46.302083333333340000
          1640.416666666667000000
          0.000000000000000000
          228.203125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = db_MovtoBancario
        DataField = 'VALOR'
        Mask = '######0.00'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
    end
    object QuebraBanco: TQRGroup
      Left = 30
      Top = 118
      Width = 575
      Height = 52
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QuebraBancoBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        171.979166666666700000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'db_MovtoBancario.CTA_CORRENTE'
      FooterBand = TotalConta
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRLabel15: TQRLabel
        Left = 4
        Top = 2
        Width = 27
        Height = 14
        Size.Values = (
          46.302083333333330000
          13.229166666666670000
          6.614583333333333000
          89.296875000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Banco'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 78
        Top = 2
        Width = 27
        Height = 14
        Size.Values = (
          46.302083333333330000
          257.968750000000000000
          6.614583333333333000
          89.296875000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = db_MovtoBancario
        DataField = 'BANCO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRLabel6: TQRLabel
        Left = 4
        Top = 18
        Width = 38
        Height = 14
        Size.Values = (
          46.302083333333330000
          13.229166666666670000
          59.531250000000000000
          125.677083333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ag'#234'ncia '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 4
        Top = 34
        Width = 69
        Height = 14
        Size.Values = (
          46.302083333333330000
          13.229166666666670000
          112.447916666666700000
          228.203125000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Conta Corrente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape7: TQRShape
        Left = 3
        Top = 48
        Width = 590
        Height = 7
        Size.Values = (
          23.151041666666670000
          9.921875000000000000
          158.750000000000000000
          1951.302083333333000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 348
        Top = 34
        Width = 52
        Height = 14
        Enabled = False
        Size.Values = (
          46.302083333333330000
          1150.937500000000000000
          112.447916666666700000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Saldo Inicial'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 78
        Top = 18
        Width = 34
        Height = 14
        Size.Values = (
          46.302083333333330000
          257.968750000000000000
          59.531250000000000000
          112.447916666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = db_MovtoBancario
        DataField = 'AGENCIA'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText8: TQRDBText
        Left = 78
        Top = 34
        Width = 61
        Height = 14
        Size.Values = (
          46.302083333333330000
          257.968750000000000000
          112.447916666666700000
          201.744791666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = db_MovtoBancario
        DataField = 'CTA_CORRENTE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 145
        Top = 2
        Width = 22
        Height = 14
        Size.Values = (
          46.302083333333330000
          479.557291666666700000
          6.614583333333333000
          72.760416666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = db_bancos
        DataField = 'NOME'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText13: TQRDBText
        Left = 145
        Top = 34
        Width = 69
        Height = 14
        Size.Values = (
          46.302083333333330000
          479.557291666666700000
          112.447916666666700000
          228.203125000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = db_CtaCorrente
        DataField = 'NOME_CORRENTISTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object LBL_SALDOIC: TQRLabel
        Left = 418
        Top = 34
        Width = 69
        Height = 14
        Enabled = False
        Size.Values = (
          46.302083333333340000
          1382.447916666667000000
          112.447916666666700000
          228.203125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object LBL_SALDOID: TQRLabel
        Left = 496
        Top = 34
        Width = 69
        Height = 14
        Enabled = False
        Size.Values = (
          46.302083333333340000
          1640.416666666667000000
          112.447916666666700000
          228.203125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
    object TotalConta: TQRBand
      Left = 30
      Top = 224
      Width = 575
      Height = 56
      AlignToBottom = False
      BeforePrint = TotalContaBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        185.208333333333300000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape5: TQRShape
        Left = 384
        Top = 7
        Width = 207
        Height = 3
        Size.Values = (
          9.921875000000000000
          1270.000000000000000000
          23.151041666666670000
          684.609375000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object LBL_SALDOFD: TQRLabel
        Left = 496
        Top = 14
        Width = 69
        Height = 14
        Size.Values = (
          46.302083333333340000
          1640.416666666667000000
          46.302083333333340000
          228.203125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object LBL_SALDOFC: TQRLabel
        Left = 418
        Top = 14
        Width = 69
        Height = 14
        Size.Values = (
          46.302083333333340000
          1382.447916666667000000
          46.302083333333340000
          228.203125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel13: TQRLabel
        Left = 344
        Top = 14
        Width = 47
        Height = 14
        Size.Values = (
          46.302083333333330000
          1137.708333333333000000
          46.302083333333330000
          155.442708333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Saldo Final'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object LBL_SALDOFIM: TQRLabel
        Left = 430
        Top = 30
        Width = 136
        Height = 18
        Frame.DrawTop = True
        Size.Values = (
          59.531250000000000000
          1422.135416666667000000
          99.218750000000000000
          449.791666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
    end
    object QRGroup1: TQRGroup
      Left = 30
      Top = 170
      Width = 575
      Height = 18
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        59.531250000000000000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'wwQ_MovmBanc.DATA'
      FooterBand = TotalData
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRLabel16: TQRLabel
        Left = 56
        Top = 3
        Width = 19
        Height = 14
        Size.Values = (
          46.302083333333330000
          185.208333333333300000
          9.921875000000000000
          62.838541666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 87
        Top = 3
        Width = 20
        Height = 14
        Size.Values = (
          46.302083333333330000
          287.734375000000000000
          9.921875000000000000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = db_MovtoBancario
        DataField = 'DATA'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
    end
    object TotalData: TQRBand
      Left = 30
      Top = 202
      Width = 575
      Height = 22
      AlignToBottom = False
      BeforePrint = TotalDataBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        72.760416666666670000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel17: TQRLabel
        Left = 372
        Top = 2
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333330000
          1230.312500000000000000
          6.614583333333333000
          82.682291666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Saldo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object LBL_SALDODD: TQRLabel
        Left = 496
        Top = 4
        Width = 69
        Height = 14
        Size.Values = (
          46.302083333333340000
          1640.416666666667000000
          13.229166666666670000
          228.203125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object LBL_SALDODC: TQRLabel
        Left = 418
        Top = 4
        Width = 69
        Height = 14
        Size.Values = (
          46.302083333333340000
          1382.447916666667000000
          13.229166666666670000
          228.203125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
  end
  object db_MovtoBancario: TFDQuery
    SQL.Strings = (
      'SELECT * FROM MOVTO_BANCARIO')
    Left = 28
    Top = 4
  end
  object ds_MovtoBancario: TDataSource
    DataSet = db_MovtoBancario
    Left = 28
    Top = 32
  end
  object db_bancos: TFDQuery
    SQL.Strings = (
      'SELECT * FROM BANCOS'
      'WHERE'
      'CODIGO=:BANCO')
    Left = 27
    Top = 106
    ParamData = <
      item
        Name = 'BANCO'
      end>
  end
  object db_CtaCorrente: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CONTA_CORRENTE'
      'WHERE'
      'BANCO=:BANCO'
      'AND'
      'AGENCIA=:AGENCIA'
      'AND'
      'CTA_CORRENTE=:CTA_CORRENTE')
    Left = 27
    Top = 170
    ParamData = <
      item
        Name = 'BANCO'
      end
      item
        Name = 'AGENCIA'
      end
      item
        Name = 'CTA_CORRENTE'
      end>
  end
  object DB_SaldoCta: TFDQuery
    SQL.Strings = (
      'SELECT * FROM SALDO_CONTA_CORRENTE')
    Left = 27
    Top = 242
    object DB_SaldoCtaDATA: TDateField
      FieldName = 'DATA'
    end
    object DB_SaldoCtaBANCO: TStringField
      FieldName = 'BANCO'
      Size = 3
    end
    object DB_SaldoCtaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 6
    end
    object DB_SaldoCtaCTA_CORRENTE: TStringField
      FieldName = 'CTA_CORRENTE'
      Size = 16
    end
    object DB_SaldoCtaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object DB_SaldoCtaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 1000
    end
    object DB_SaldoCtaCREDITO: TBCDField
      FieldName = 'CREDITO'
    end
    object DB_SaldoCtaDEBITO: TBCDField
      FieldName = 'DEBITO'
    end
    object DB_SaldoCtaSALDO: TBCDField
      FieldName = 'SALDO'
    end
    object DB_SaldoCtaORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 10
    end
  end
end
