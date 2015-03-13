object FrmRelReceb_ExtratoProdutos: TFrmRelReceb_ExtratoProdutos
  Left = 194
  Top = 107
  Caption = 'Extrato do Contas a Receber (Produtos)'
  ClientHeight = 474
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep: TQuickRep
    Left = 16
    Top = 8
    Width = 1123
    Height = 794
    BeforePrint = QuickRepBeforePrint
    DataSet = ADO_CtaReceber
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
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
    ReportTitle = 'Extrato do Contas a Receber (Produtos)'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 61
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        161.395833333333300000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel2: TQRLabel
        Left = 1
        Top = 41
        Width = 47
        Height = 17
        Size.Values = (
          44.979166666666670000
          2.645833333333333000
          108.479166666666700000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Emiss'#227'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRSysData2: TQRSysData
        Left = 63
        Top = 41
        Width = 69
        Height = 17
        Size.Values = (
          44.979166666666670000
          166.687500000000000000
          108.479166666666700000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel31: TQRLabel
        Left = 941
        Top = 41
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          2489.729166666667000000
          108.479166666666700000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pagina:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRSysData1: TQRSysData
        Left = 990
        Top = 41
        Width = 47
        Height = 17
        Size.Values = (
          44.979166666666670000
          2619.375000000000000000
          108.479166666666700000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 4
        Top = 11
        Width = 1042
        Height = 23
        Size.Values = (
          61.736111111111100000
          11.759259259259260000
          29.398148148148150000
          2757.546296296296000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Extrato do Contas a Receber (Produtos)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRSysData3: TQRSysData
        Left = 857
        Top = 37
        Width = 38
        Height = 17
        Size.Values = (
          44.979166666666670000
          2267.479166666667000000
          97.895833333333340000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 9
      end
    end
    object Datalhes: TQRBand
      Left = 38
      Top = 149
      Width = 1047
      Height = 17
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = DatalhesBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.979166666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRDBText3: TQRDBText
        Left = 70
        Top = 0
        Width = 65
        Height = 14
        Size.Values = (
          37.041666666666670000
          185.208333333333300000
          0.000000000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'DOCUMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 200
        Top = 0
        Width = 229
        Height = 16
        Size.Values = (
          42.333333333333340000
          529.166666666666800000
          0.000000000000000000
          605.895833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'NOME_CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 4
        Top = 0
        Width = 61
        Height = 14
        Size.Values = (
          37.041666666666670000
          10.583333333333330000
          0.000000000000000000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 767
        Top = 0
        Width = 84
        Height = 14
        Size.Values = (
          37.041666666666670000
          2029.354166666667000000
          0.000000000000000000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object lbl_situacao: TQRLabel
        Left = 950
        Top = 0
        Width = 25
        Height = 14
        Size.Values = (
          37.041666666666670000
          2513.541666666667000000
          0.000000000000000000
          66.145833333333340000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '****'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 856
        Top = 0
        Width = 84
        Height = 14
        Size.Values = (
          37.041666666666670000
          2264.833333333333000000
          0.000000000000000000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'VALOR_PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 480
        Top = 0
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          1270.000000000000000000
          0.000000000000000000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'HISTORICO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object QuebraBanco: TQRGroup
      Left = 38
      Top = 132
      Width = 1047
      Height = 17
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = 14342874
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = TotalOperacao
      Size.Values = (
        44.979166666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADO_CtaReceber.VENCIMENTO'
      FooterBand = TotalOperacao
      Master = QuickRep
      ReprintOnNewPage = False
      object QRLabel15: TQRLabel
        Left = 4
        Top = 2
        Width = 59
        Height = 13
        Size.Values = (
          34.395833333333340000
          10.583333333333330000
          5.291666666666667000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vencimento'
        Color = 14342874
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 69
        Top = 2
        Width = 70
        Height = 13
        Size.Values = (
          34.395833333333340000
          182.562500000000000000
          5.291666666666667000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = 14342874
        DataSet = ADO_CtaReceber
        DataField = 'VENCIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
    end
    object Cabecalho: TQRBand
      Left = 38
      Top = 99
      Width = 1047
      Height = 33
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        87.312500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel9: TQRLabel
        Left = 70
        Top = 17
        Width = 70
        Height = 14
        Size.Values = (
          37.041666666666670000
          185.208333333333300000
          44.979166666666670000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DOCUMENTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 200
        Top = 17
        Width = 40
        Height = 14
        Size.Values = (
          37.041666666666670000
          529.166666666666800000
          44.979166666666670000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cliente'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 4
        Top = 17
        Width = 28
        Height = 14
        Size.Values = (
          37.041666666666670000
          10.583333333333330000
          44.979166666666670000
          74.083333333333340000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 767
        Top = 17
        Width = 84
        Height = 14
        Size.Values = (
          37.041666666666670000
          2029.354166666667000000
          44.979166666666670000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Receber'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 950
        Top = 17
        Width = 50
        Height = 14
        Size.Values = (
          37.041666666666670000
          2513.541666666667000000
          44.979166666666670000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Situa'#231#227'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 856
        Top = 17
        Width = 84
        Height = 14
        Size.Values = (
          37.041666666666670000
          2264.833333333333000000
          44.979166666666670000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Valor Pago'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 480
        Top = 17
        Width = 54
        Height = 14
        Size.Values = (
          37.041666666666670000
          1270.000000000000000000
          44.979166666666670000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Hist'#243'rico:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object TotalOperacao: TQRBand
      Left = 38
      Top = 238
      Width = 1047
      Height = 27
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.437500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel4: TQRLabel
        Left = 693
        Top = 3
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          1833.562500000000000000
          7.937500000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Totais =>'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 767
        Top = 3
        Width = 84
        Height = 17
        Frame.DrawTop = True
        Size.Values = (
          45.357142857142850000
          2029.732142857143000000
          7.559523809523811000
          223.005952380952400000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(ADO_CtaReceber.VALOR)'
        Mask = '###,##0.00'
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 856
        Top = 3
        Width = 84
        Height = 17
        Frame.DrawTop = True
        Size.Values = (
          45.357142857142850000
          2264.077380952381000000
          7.559523809523811000
          223.005952380952400000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(ADO_CtaReceber.VALOR_PAGO)'
        Mask = '###,##0.00'
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 265
      Width = 1047
      Height = 119
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = SummaryBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        314.854166666666700000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape1: TQRShape
        Left = 782
        Top = 36
        Width = 204
        Height = 76
        Size.Values = (
          199.907407407407400000
          2069.629629629629000000
          94.074074074074070000
          540.925925925926000000)
        XLColumn = 0
        Brush.Color = 15263976
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 816
        Top = 43
        Width = 62
        Height = 17
        Size.Values = (
          44.979166666666670000
          2159.000000000000000000
          113.770833333333300000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'A Receber:'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr6: TQRExpr
        Left = 767
        Top = 7
        Width = 84
        Height = 18
        Size.Values = (
          47.037037037037040000
          2028.472222222222000000
          17.638888888888890000
          223.425925925925900000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(ADO_CtaReceber.VALOR)'
        Mask = '###,###,##0.00'
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 856
        Top = 7
        Width = 84
        Height = 18
        Size.Values = (
          47.037037037037040000
          2263.657407407408000000
          17.638888888888890000
          223.425925925925900000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(ADO_CtaReceber.VALOR_PAGO)'
        Mask = '###,###,##0.00'
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qReceber: TQRLabel
        Left = 881
        Top = 43
        Width = 99
        Height = 16
        Size.Values = (
          41.157407407407410000
          2331.273148148148000000
          114.652777777777800000
          261.643518518518500000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 816
        Top = 63
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          2159.000000000000000000
          166.687500000000000000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Valor Pago:'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 785
        Top = 81
        Width = 95
        Height = 17
        Size.Values = (
          44.979166666666670000
          2076.979166666667000000
          214.312500000000000000
          251.354166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Saldo a Receber:'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qVlrPago: TQRLabel
        Left = 881
        Top = 63
        Width = 99
        Height = 16
        Size.Values = (
          41.157407407407410000
          2331.273148148148000000
          167.569444444444400000
          261.643518518518500000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qSaldo: TQRLabel
        Left = 881
        Top = 83
        Width = 99
        Height = 16
        Frame.DrawTop = True
        Size.Values = (
          41.157407407407410000
          2331.273148148148000000
          220.486111111111100000
          261.643518518518500000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object SubDetail_Cliente: TQRSubDetail
      Left = 38
      Top = 191
      Width = 1047
      Height = 13
      AlignToBottom = False
      BeforePrint = SubDetail_ClienteBeforePrint
      Color = clWhite
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        34.395833333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep
      DataSet = db_VendasItens
      FooterBand = GroupFooterBand1
      HeaderBand = Datalhes
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText2: TQRDBText
        Left = 15
        Top = 0
        Width = 50
        Height = 15
        Size.Values = (
          39.687500000000000000
          39.687500000000000000
          0.000000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = db_VendasItens
        DataField = 'PRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 115
        Top = 0
        Width = 60
        Height = 14
        Size.Values = (
          37.041666666666670000
          304.270833333333400000
          0.000000000000000000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = db_VendasItens
        DataField = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 325
        Top = 0
        Width = 62
        Height = 14
        Size.Values = (
          37.041666666666670000
          859.895833333333400000
          0.000000000000000000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = db_VendasItens
        DataField = 'QUANTIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 400
        Top = 0
        Width = 73
        Height = 14
        Size.Values = (
          37.041666666666670000
          1058.333333333333000000
          0.000000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = db_VendasItens
        DataField = 'VLR_UNIT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 490
        Top = 0
        Width = 90
        Height = 14
        Size.Values = (
          37.041666666666670000
          1296.458333333333000000
          0.000000000000000000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = db_VendasItens
        DataField = 'VLR_TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object ChildBand1: TQRChildBand
      Left = 38
      Top = 166
      Width = 1047
      Height = 25
      AlignToBottom = False
      Color = 15000804
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = Datalhes
      PrintOrder = cboAfterParent
      object QRLabel3: TQRLabel
        Left = 15
        Top = 11
        Width = 55
        Height = 13
        Size.Values = (
          34.395833333333340000
          39.687500000000000000
          29.104166666666670000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PRODUTO:'
        Color = 15000804
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel8: TQRLabel
        Left = 115
        Top = 11
        Width = 65
        Height = 13
        Size.Values = (
          34.395833333333340000
          304.270833333333400000
          29.104166666666670000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DESCRI'#199#195'O:'
        Color = 15000804
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel18: TQRLabel
        Left = 325
        Top = 11
        Width = 62
        Height = 13
        Size.Values = (
          34.395833333333340000
          859.895833333333400000
          29.104166666666670000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QTDE:'
        Color = 15000804
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel19: TQRLabel
        Left = 400
        Top = 11
        Width = 73
        Height = 13
        Size.Values = (
          34.395833333333340000
          1058.333333333333000000
          29.104166666666670000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'V. UNIT:'
        Color = 15000804
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel20: TQRLabel
        Left = 490
        Top = 11
        Width = 90
        Height = 13
        Size.Values = (
          34.395833333333340000
          1296.458333333333000000
          29.104166666666670000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'SUBTOTAL:'
        Color = 15000804
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
    object GroupFooterBand1: TQRBand
      Left = 38
      Top = 204
      Width = 1047
      Height = 34
      AfterPrint = GroupFooterBand1AfterPrint
      AlignToBottom = False
      BeforePrint = GroupFooterBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        89.958333333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel17: TQRLabel
        Left = 14
        Top = 1
        Width = 85
        Height = 15
        Size.Values = (
          39.687500000000000000
          37.041666666666670000
          2.645833333333333000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Qtde.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 14
        Top = 18
        Width = 85
        Height = 15
        Size.Values = (
          39.687500000000000000
          37.041666666666670000
          47.625000000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total......:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_VendaQtde: TQRLabel
        Left = 104
        Top = 1
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          275.166666666666700000
          2.645833333333333000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'xxxxxxxxxx'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_VendaValores: TQRLabel
        Left = 104
        Top = 18
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          275.166666666666700000
          47.625000000000000000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'xxxxxxxxxx'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
  end
  object ADO_CtaReceber: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_FIN_CTARECEBER_PRODUTOS'
      'WHERE'
      'VENCIMENTO>'#39'10/10/2009'#39)
    Left = 116
    Top = 9
  end
  object db_VendasItens: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT'
      ''
      'produto,'
      'DESCRICAO,'
      'quantidade,'
      'vlr_unit,'
      'vlr_total'
      ''
      'FROM VENDAS_ITENS'
      'where'
      'numero_nf=:notafiscal')
    Left = 332
    Top = 9
    ParamData = <
      item
        Name = 'notafiscal'
      end>
    object db_VendasItensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object db_VendasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object db_VendasItensQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object db_VendasItensVLR_UNIT: TBCDField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.00'
    end
    object db_VendasItensVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
  end
  object DS_CtaReceber: TDataSource
    DataSet = ADO_CtaReceber
    Left = 232
    Top = 8
  end
end
