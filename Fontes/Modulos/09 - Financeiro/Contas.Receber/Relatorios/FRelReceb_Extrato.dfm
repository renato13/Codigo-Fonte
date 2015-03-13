object FrmRelReceb_Extrato: TFrmRelReceb_Extrato
  Left = 194
  Top = 107
  ClientHeight = 501
  ClientWidth = 1152
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -9
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 11
  object QuickRep: TQuickRep
    Left = 32
    Top = 8
    Width = 1111
    Height = 1572
    BeforePrint = QuickRepBeforePrint
    DataSet = ADO_CtaReceber
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Calibri'
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
    ReportTitle = 'Extrato do Contas a Receber'
    SnapToGrid = True
    Units = MM
    Zoom = 140
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 53
      Top = 53
      Width = 1005
      Height = 85
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
        160.639880952381000000
        1899.330357142857000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel2: TQRLabel
        Left = 5
        Top = 57
        Width = 46
        Height = 23
        Size.Values = (
          43.467261904761900000
          9.449404761904762000
          107.723214285714300000
          86.934523809523810000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Emiss'#227'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRSysData2: TQRSysData
        Left = 85
        Top = 57
        Width = 62
        Height = 23
        Size.Values = (
          43.467261904761900000
          160.639880952381000000
          107.723214285714300000
          117.172619047619000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 7
      end
      object QRLabel31: TQRLabel
        Left = 771
        Top = 61
        Width = 38
        Height = 23
        Size.Values = (
          43.467261904761900000
          1457.098214285714000000
          115.282738095238100000
          71.815476190476190000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pagina:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRSysData1: TQRSysData
        Left = 839
        Top = 61
        Width = 39
        Height = 23
        Size.Values = (
          43.467261904761900000
          1585.610119047619000000
          115.282738095238100000
          73.705357142857140000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 7
      end
      object QRLabel10: TQRLabel
        Left = 8
        Top = 14
        Width = 865
        Height = 33
        Size.Values = (
          61.736111111111120000
          14.699074074074080000
          26.458333333333330000
          1634.537037037037000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Extrato do Contas a Receber'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRSysData3: TQRSysData
        Left = 649
        Top = 56
        Width = 34
        Height = 23
        Size.Values = (
          43.467261904761900000
          1226.532738095238000000
          105.833333333333300000
          64.255952380952380000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 7
      end
    end
    object Datalhes: TQRBand
      Left = 53
      Top = 212
      Width = 1005
      Height = 20
      AlignToBottom = False
      BeforePrint = DatalhesBeforePrint
      Color = clWhite
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Calibri'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        37.797619047619050000
        1899.330357142857000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText3: TQRDBText
        Left = 60
        Top = 0
        Width = 55
        Height = 19
        Size.Values = (
          35.907738095238100000
          113.392857142857100000
          0.000000000000000000
          103.943452380952400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText4: TQRDBText
        Left = 212
        Top = 0
        Width = 120
        Height = 19
        Size.Values = (
          35.907738095238100000
          400.654761904761900000
          0.000000000000000000
          226.785714285714300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'nome_cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 5
      end
      object QRDBText6: TQRDBText
        Left = 3
        Top = 0
        Width = 53
        Height = 19
        Size.Values = (
          35.907738095238100000
          5.669642857142857000
          0.000000000000000000
          100.163690476190500000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object lblValor: TQRDBText
        Left = 780
        Top = 0
        Width = 60
        Height = 19
        Size.Values = (
          35.907738095238100000
          1474.107142857143000000
          0.000000000000000000
          113.392857142857100000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object lbl_situacao: TQRLabel
        Left = 955
        Top = 0
        Width = 45
        Height = 19
        Size.Values = (
          35.907738095238100000
          1804.836309523810000000
          0.000000000000000000
          85.044642857142860000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'RECEBER'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object lblValorPago: TQRDBText
        Left = 845
        Top = 0
        Width = 55
        Height = 20
        Size.Values = (
          37.797619047619050000
          1596.949404761905000000
          0.000000000000000000
          103.943452380952400000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'VALOR_PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText2: TQRDBText
        Left = 340
        Top = 0
        Width = 84
        Height = 19
        Size.Values = (
          35.907738095238100000
          642.559523809523800000
          0.000000000000000000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'FORMAPAGAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 5
      end
      object QRDBText1: TQRDBText
        Left = 425
        Top = 0
        Width = 70
        Height = 19
        Size.Values = (
          35.907738095238100000
          803.199404761904800000
          0.000000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'DATA_PAGTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText7: TQRDBText
        Left = 496
        Top = 0
        Width = 40
        Height = 19
        Size.Values = (
          35.907738095238100000
          937.380952380952400000
          0.000000000000000000
          75.595238095238110000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'DESPESAS_JUROSVALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText8: TQRDBText
        Left = 540
        Top = 0
        Width = 40
        Height = 19
        Size.Values = (
          35.907738095238100000
          1020.535714285714000000
          0.000000000000000000
          75.595238095238110000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'DESPESAS_CARTORIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText11: TQRDBText
        Left = 585
        Top = 0
        Width = 48
        Height = 19
        Size.Values = (
          35.907738095238100000
          1105.580357142857000000
          0.000000000000000000
          90.714285714285710000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'DESPESAS_MULTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText12: TQRDBText
        Left = 640
        Top = 0
        Width = 74
        Height = 19
        Size.Values = (
          35.907738095238100000
          1209.523809523810000000
          0.000000000000000000
          139.851190476190500000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'DESPESAS_OUTRAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText13: TQRDBText
        Left = 715
        Top = 0
        Width = 60
        Height = 19
        Size.Values = (
          35.907738095238100000
          1351.264880952381000000
          0.000000000000000000
          113.392857142857100000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'DESPESAS_TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText9: TQRDBText
        Left = 905
        Top = -1
        Width = 48
        Height = 20
        Size.Values = (
          37.797619047619050000
          1710.342261904762000000
          -1.889880952380952000
          90.714285714285710000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'VALOR_DIFERENCA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText10: TQRDBText
        Left = 119
        Top = 1
        Width = 85
        Height = 19
        Size.Values = (
          35.907738095238100000
          224.895833333333300000
          1.889880952380952000
          160.639880952381000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'NOSSONUMERO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
    end
    object QuebraBanco: TQRGroup
      Left = 53
      Top = 185
      Width = 1005
      Height = 27
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = TotalOperacao
      ParentFont = False
      Size.Values = (
        51.026785714285710000
        1899.330357142857000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADO_CtaReceber.VENCIMENTO'
      FooterBand = TotalOperacao
      Master = QuickRep
      ReprintOnNewPage = False
      object LblAgrupar: TQRLabel
        Left = 5
        Top = 3
        Width = 66
        Height = 19
        Size.Values = (
          35.907738095238100000
          9.449404761904762000
          5.669642857142857000
          124.732142857142900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vencimento'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 99
        Top = 3
        Width = 71
        Height = 19
        Size.Values = (
          35.907738095238100000
          187.098214285714300000
          5.669642857142857000
          134.181547619047600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'VENCIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Calibri'
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
      Left = 53
      Top = 138
      Width = 1005
      Height = 47
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        88.824404761904760000
        1899.330357142857000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel9: TQRLabel
        Left = 60
        Top = 28
        Width = 25
        Height = 19
        Size.Values = (
          35.907738095238100000
          113.392857142857100000
          52.916666666666670000
          47.247023809523810000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DOC:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel1: TQRLabel
        Left = 212
        Top = 28
        Width = 43
        Height = 19
        Size.Values = (
          35.907738095238100000
          400.654761904761900000
          52.916666666666670000
          81.264880952380950000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CLIENTE:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel6: TQRLabel
        Left = 3
        Top = 28
        Width = 31
        Height = 19
        Size.Values = (
          35.907738095238100000
          5.669642857142857000
          52.916666666666670000
          58.586309523809520000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel12: TQRLabel
        Left = 780
        Top = 28
        Width = 60
        Height = 19
        Size.Values = (
          35.907738095238100000
          1474.107142857143000000
          52.916666666666670000
          113.392857142857100000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Receber'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel13: TQRLabel
        Left = 955
        Top = 28
        Width = 41
        Height = 19
        Size.Values = (
          35.907738095238100000
          1804.836309523810000000
          52.916666666666670000
          77.485119047619050000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Situa'#231#227'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel11: TQRLabel
        Left = 845
        Top = 28
        Width = 55
        Height = 19
        Size.Values = (
          35.907738095238100000
          1596.949404761905000000
          52.916666666666670000
          103.943452380952400000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Valor Pago'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object Lblvendedor: TQRLabel
        Left = 15
        Top = 0
        Width = 76
        Height = 19
        Enabled = False
        Size.Values = (
          35.907738095238100000
          28.348214285714290000
          0.000000000000000000
          143.630952380952400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Representante'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel7: TQRLabel
        Left = 340
        Top = 28
        Width = 84
        Height = 19
        Size.Values = (
          35.907738095238100000
          642.559523809523800000
          52.916666666666670000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Forma Pagamento'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel3: TQRLabel
        Left = 425
        Top = 28
        Width = 53
        Height = 19
        Size.Values = (
          35.907738095238100000
          803.199404761904800000
          52.916666666666670000
          100.163690476190500000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Pagto:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel8: TQRLabel
        Left = 496
        Top = 28
        Width = 40
        Height = 19
        Size.Values = (
          35.907738095238100000
          937.380952380952400000
          52.916666666666670000
          75.595238095238110000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Juros'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel15: TQRLabel
        Left = 540
        Top = 28
        Width = 40
        Height = 19
        Size.Values = (
          35.907738095238100000
          1020.535714285714000000
          52.916666666666670000
          75.595238095238110000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Cart'#243'rio'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel17: TQRLabel
        Left = 585
        Top = 28
        Width = 48
        Height = 19
        Size.Values = (
          35.907738095238100000
          1105.580357142857000000
          52.916666666666670000
          90.714285714285710000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Multa'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel18: TQRLabel
        Left = 640
        Top = 28
        Width = 74
        Height = 19
        Size.Values = (
          35.907738095238100000
          1209.523809523810000000
          52.916666666666670000
          139.851190476190500000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Outras Desp.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel19: TQRLabel
        Left = 715
        Top = 28
        Width = 60
        Height = 19
        Size.Values = (
          35.907738095238100000
          1351.264880952381000000
          52.916666666666670000
          113.392857142857100000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Total Desp.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel20: TQRLabel
        Left = 905
        Top = 28
        Width = 48
        Height = 19
        Size.Values = (
          35.907738095238100000
          1710.342261904762000000
          52.916666666666670000
          90.714285714285710000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Diferen'#231'a'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel21: TQRLabel
        Left = 120
        Top = 28
        Width = 80
        Height = 19
        Size.Values = (
          35.907738095238100000
          226.785714285714300000
          52.916666666666670000
          151.190476190476200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOSSO N'#218'MERO:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
    end
    object TotalOperacao: TQRBand
      Left = 53
      Top = 232
      Width = 1005
      Height = 41
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        77.485119047619050000
        1899.330357142857000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel4: TQRLabel
        Left = 443
        Top = 9
        Width = 46
        Height = 23
        Size.Values = (
          43.467261904761900000
          837.217261904761900000
          17.008928571428570000
          86.934523809523810000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Totais =>'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr4: TQRExpr
        Left = 780
        Top = 4
        Width = 60
        Height = 25
        Frame.DrawTop = True
        Size.Values = (
          47.247023809523810000
          1474.107142857143000000
          7.559523809523811000
          113.392857142857100000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(ADO_CtaReceber.VALOR)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr1: TQRExpr
        Left = 845
        Top = 5
        Width = 55
        Height = 25
        Frame.DrawTop = True
        Size.Values = (
          47.247023809523810000
          1596.949404761905000000
          9.449404761904762000
          103.943452380952400000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(ADO_CtaReceber.VALOR_PAGO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
    object SummaryBand1: TQRBand
      Left = 53
      Top = 273
      Width = 1005
      Height = 167
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = SummaryBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        315.610119047619000000
        1899.330357142857000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape1: TQRShape
        Left = 697
        Top = 53
        Width = 286
        Height = 106
        Size.Values = (
          199.907407407407400000
          1317.037037037037000000
          99.953703703703710000
          540.925925925926000000)
        XLColumn = 0
        Brush.Color = 15263976
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 757
        Top = 65
        Width = 73
        Height = 23
        Size.Values = (
          43.467261904761900000
          1430.639880952381000000
          122.842261904761900000
          137.961309523809500000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'A Receber:'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr6: TQRExpr
        Left = 780
        Top = 5
        Width = 60
        Height = 25
        Size.Values = (
          47.247023809523810000
          1474.107142857143000000
          9.449404761904762000
          113.392857142857100000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(ADO_CtaReceber.VALOR)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr2: TQRExpr
        Left = 845
        Top = 6
        Width = 55
        Height = 25
        Size.Values = (
          47.247023809523810000
          1596.949404761905000000
          11.339285714285710000
          103.943452380952400000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(ADO_CtaReceber.VALOR_PAGO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qReceber: TQRLabel
        Left = 835
        Top = 64
        Width = 138
        Height = 22
        Size.Values = (
          41.157407407407410000
          1578.680555555556000000
          120.532407407407400000
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
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 759
        Top = 93
        Width = 74
        Height = 23
        Size.Values = (
          43.467261904761900000
          1434.419642857143000000
          175.758928571428600000
          139.851190476190500000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Valor Pago:'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 722
        Top = 121
        Width = 108
        Height = 23
        Size.Values = (
          43.467261904761900000
          1364.494047619048000000
          228.675595238095200000
          204.107142857142900000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Saldo a Receber:'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qVlrPago: TQRLabel
        Left = 835
        Top = 92
        Width = 138
        Height = 22
        Size.Values = (
          41.157407407407410000
          1578.680555555556000000
          173.449074074074100000
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
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qSaldo: TQRLabel
        Left = 835
        Top = 120
        Width = 138
        Height = 22
        Frame.DrawTop = True
        Size.Values = (
          41.157407407407410000
          1578.680555555556000000
          226.365740740740800000
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
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 496
        Top = 5
        Width = 40
        Height = 25
        Size.Values = (
          47.247023809523810000
          937.380952380952400000
          9.449404761904762000
          75.595238095238110000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(ADO_CtaReceber.DESPESAS_JUROSVALOR)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr5: TQRExpr
        Left = 540
        Top = 5
        Width = 40
        Height = 25
        Size.Values = (
          47.247023809523810000
          1020.535714285714000000
          9.449404761904762000
          75.595238095238110000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(ADO_CtaReceber.DESPESAS_CARTORIO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr7: TQRExpr
        Left = 585
        Top = 5
        Width = 48
        Height = 25
        Size.Values = (
          47.247023809523810000
          1105.580357142857000000
          9.449404761904762000
          90.714285714285710000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(ADO_CtaReceber.DESPESAS_MULTA)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr8: TQRExpr
        Left = 640
        Top = 5
        Width = 74
        Height = 25
        Size.Values = (
          47.247023809523810000
          1209.523809523810000000
          9.449404761904762000
          139.851190476190500000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(ADO_CtaReceber.DESPESAS_OUTRAS)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr9: TQRExpr
        Left = 715
        Top = 4
        Width = 60
        Height = 25
        Size.Values = (
          47.247023809523810000
          1351.264880952381000000
          7.559523809523811000
          113.392857142857100000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(ADO_CtaReceber.DESPESAS_TOTAL)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
    end
  end
  object ADO_CtaReceber: TFDQuery
    BeforeOpen = ADO_CtaReceberBeforeOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select * from view_fin_ctareceber'
      'ORDER BY NOME_CLIENTE')
    Left = 140
    Top = 273
  end
end
