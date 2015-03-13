object FrmRelReceb_Historico: TFrmRelReceb_Historico
  Left = 250
  Top = 126
  ClientHeight = 459
  ClientWidth = 1152
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
    Left = 21
    Top = 26
    Width = 1235
    Height = 873
    BeforePrint = QuickRepBeforePrint
    DataSet = ADO_CtaReceber
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Courier New'
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
      150.000000000000000000
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
    ReportTitle = 'Hist'#243'rico de Cliente'
    SnapToGrid = True
    Units = MM
    Zoom = 110
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 42
      Top = 42
      Width = 1152
      Height = 67
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
        161.155303030303000000
        2770.909090909091000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel2: TQRLabel
        Left = 4
        Top = 45
        Width = 59
        Height = 20
        Size.Values = (
          48.106060606060610000
          9.621212121212121000
          108.238636363636400000
          141.912878787878800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Emiss'#227'o:'
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
      object QRSysData2: TQRSysData
        Left = 68
        Top = 45
        Width = 73
        Height = 20
        Size.Values = (
          48.106060606060610000
          163.560606060606100000
          108.238636363636400000
          175.587121212121200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel31: TQRLabel
        Left = 1033
        Top = 45
        Width = 47
        Height = 18
        Size.Values = (
          43.295454545454550000
          2484.678030303030000000
          108.238636363636400000
          113.049242424242400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pagina:'
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
      object QRSysData1: TQRSysData
        Left = 1087
        Top = 45
        Width = 50
        Height = 18
        Size.Values = (
          43.295454545454550000
          2614.564393939394000000
          108.238636363636400000
          120.265151515151500000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 6
        Top = 11
        Width = 1140
        Height = 26
        Size.Values = (
          63.500000000000000000
          13.229166666666670000
          26.458333333333330000
          2741.083333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Hist'#243'rico de Cliente'
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
    end
    object Datalhes: TQRBand
      Left = 42
      Top = 176
      Width = 1152
      Height = 18
      AlignToBottom = False
      BeforePrint = DatalhesBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        43.295454545454550000
        2770.909090909091000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText6: TQRDBText
        Left = 82
        Top = 0
        Width = 68
        Height = 15
        Size.Values = (
          36.079545454545450000
          197.234848484848500000
          0.000000000000000000
          163.560606060606100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText7: TQRDBText
        Left = 6
        Top = 0
        Width = 68
        Height = 15
        Size.Values = (
          36.079545454545450000
          14.431818181818180000
          0.000000000000000000
          163.560606060606100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText9: TQRDBText
        Left = 865
        Top = 0
        Width = 93
        Height = 15
        Size.Values = (
          36.079545454545450000
          2080.587121212121000000
          0.000000000000000000
          223.693181818181800000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object lbl_situacao: TQRLabel
        Left = 1074
        Top = 0
        Width = 14
        Height = 15
        Size.Values = (
          36.079545454545450000
          2583.295454545455000000
          0.000000000000000000
          33.674242424242420000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '****'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 968
        Top = 0
        Width = 93
        Height = 15
        Size.Values = (
          36.079545454545450000
          2328.333333333333000000
          0.000000000000000000
          223.693181818181800000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'VALOR_PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 170
        Top = 0
        Width = 64
        Height = 15
        Size.Values = (
          36.079545454545450000
          408.901515151515200000
          0.000000000000000000
          153.939393939393900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText11: TQRDBText
        Left = 260
        Top = 0
        Width = 68
        Height = 15
        Size.Values = (
          36.079545454545450000
          625.378787878787900000
          0.000000000000000000
          163.560606060606100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'DATA_PAGTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText13: TQRDBText
        Left = 511
        Top = 0
        Width = 338
        Height = 15
        Size.Values = (
          36.079545454545450000
          1229.109848484848000000
          0.000000000000000000
          812.992424242424200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'HISTORICO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 340
        Top = 0
        Width = 157
        Height = 15
        Size.Values = (
          36.079545454545450000
          817.803030303030300000
          0.000000000000000000
          377.632575757575800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'FORMAPAGAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
    end
    object QuebraBanco: TQRGroup
      Left = 42
      Top = 147
      Width = 1152
      Height = 29
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = TotalOperacao
      Size.Values = (
        69.753787878787880000
        2770.909090909091000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADO_CtaReceber.CLIENTE'
      FooterBand = TotalOperacao
      Master = QuickRep
      ReprintOnNewPage = False
      object QRLabel15: TQRLabel
        Left = 4
        Top = 0
        Width = 66
        Height = 14
        Size.Values = (
          34.395833333333340000
          10.583333333333330000
          0.000000000000000000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Cliente:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 119
        Top = 0
        Width = 303
        Height = 14
        Size.Values = (
          34.395833333333340000
          285.750000000000000000
          0.000000000000000000
          727.604166666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'nome_cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText1: TQRDBText
        Left = 72
        Top = 0
        Width = 39
        Height = 14
        Size.Values = (
          34.395833333333340000
          171.979166666666700000
          0.000000000000000000
          92.604166666666680000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRLabel1: TQRLabel
        Left = 110
        Top = 0
        Width = 7
        Height = 14
        Size.Values = (
          33.674242424242420000
          264.583333333333300000
          0.000000000000000000
          16.837121212121210000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 119
        Top = 15
        Width = 303
        Height = 14
        Size.Values = (
          34.395833333333340000
          285.750000000000000000
          37.041666666666670000
          727.604166666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'nome_vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRLabel3: TQRLabel
        Left = 110
        Top = 15
        Width = 7
        Height = 14
        Size.Values = (
          33.674242424242420000
          264.583333333333300000
          36.079545454545450000
          16.837121212121210000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRDBText12: TQRDBText
        Left = 72
        Top = 13
        Width = 39
        Height = 14
        Size.Values = (
          34.395833333333340000
          171.979166666666700000
          31.750000000000000000
          92.604166666666680000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADO_CtaReceber
        DataField = 'vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRLabel22: TQRLabel
        Left = 4
        Top = 14
        Width = 66
        Height = 14
        Size.Values = (
          34.395833333333340000
          10.583333333333330000
          34.395833333333340000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Vendedor:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
    object Cabecalho: TQRBand
      Left = 42
      Top = 109
      Width = 1152
      Height = 38
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        91.401515151515150000
        2770.909090909091000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel6: TQRLabel
        Left = 82
        Top = 22
        Width = 67
        Height = 14
        Size.Values = (
          33.674242424242420000
          197.234848484848500000
          52.916666666666670000
          161.155303030303000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Emiss'#227'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel7: TQRLabel
        Left = 6
        Top = 22
        Width = 56
        Height = 14
        Size.Values = (
          33.674242424242420000
          14.431818181818180000
          52.916666666666670000
          134.696969696969700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vencimento'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel12: TQRLabel
        Left = 865
        Top = 22
        Width = 93
        Height = 14
        Size.Values = (
          34.395833333333340000
          2079.625000000000000000
          52.916666666666660000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Valor'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel13: TQRLabel
        Left = 1074
        Top = 22
        Width = 45
        Height = 14
        Size.Values = (
          33.674242424242420000
          2583.295454545455000000
          52.916666666666670000
          108.238636363636400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Situa'#231#227'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel11: TQRLabel
        Left = 968
        Top = 22
        Width = 93
        Height = 14
        Size.Values = (
          34.395833333333340000
          2328.333333333333000000
          52.916666666666660000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Valor Pago'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel18: TQRLabel
        Left = 170
        Top = 22
        Width = 67
        Height = 14
        Size.Values = (
          33.674242424242420000
          408.901515151515200000
          52.916666666666670000
          161.155303030303000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Documento/NF'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel21: TQRLabel
        Left = 260
        Top = 22
        Width = 62
        Height = 14
        Size.Values = (
          33.674242424242420000
          625.378787878787900000
          52.916666666666670000
          149.128787878787900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Pagto.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object Lblvendedor: TQRLabel
        Left = 11
        Top = 0
        Width = 94
        Height = 15
        Enabled = False
        Size.Values = (
          36.079545454545450000
          26.458333333333330000
          0.000000000000000000
          226.098484848484800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Representante'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 511
        Top = 22
        Width = 56
        Height = 14
        Size.Values = (
          33.674242424242420000
          1229.109848484848000000
          52.916666666666670000
          134.696969696969700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Hist'#243'rico:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel9: TQRLabel
        Left = 340
        Top = 22
        Width = 95
        Height = 14
        Size.Values = (
          33.674242424242420000
          817.803030303030300000
          52.916666666666670000
          228.503787878787900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tipo de Pagamento'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
    object TotalOperacao: TQRBand
      Left = 42
      Top = 194
      Width = 1152
      Height = 97
      Frame.DrawBottom = True
      AfterPrint = TotalOperacaoAfterPrint
      AlignToBottom = False
      BeforePrint = TotalOperacaoBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        233.314393939393900000
        2770.909090909091000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape1: TQRShape
        Left = 920
        Top = 1
        Width = 216
        Height = 86
        Size.Values = (
          206.375000000000000000
          2211.916666666667000000
          2.645833333333333000
          518.583333333333400000)
        XLColumn = 0
        Brush.Color = clWindow
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object xSaldo: TQRLabel
        Left = 1021
        Top = 59
        Width = 109
        Height = 16
        Frame.DrawTop = True
        Size.Values = (
          39.687500000000000000
          2455.333333333333000000
          142.875000000000000000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
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
      object xVlrPago: TQRLabel
        Left = 1021
        Top = 37
        Width = 109
        Height = 16
        Size.Values = (
          39.687500000000000000
          2455.333333333333000000
          89.958333333333340000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
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
      object xReceber: TQRLabel
        Left = 1021
        Top = 15
        Width = 109
        Height = 16
        Size.Values = (
          39.687500000000000000
          2455.333333333333000000
          37.041666666666670000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
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
      object QRLabel5: TQRLabel
        Left = 964
        Top = 15
        Width = 54
        Height = 18
        Size.Values = (
          43.295454545454550000
          2318.712121212121000000
          36.079545454545450000
          129.886363636363600000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'A Receber:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel14: TQRLabel
        Left = 959
        Top = 37
        Width = 59
        Height = 18
        Size.Values = (
          43.295454545454550000
          2306.685606060606000000
          88.996212121212120000
          141.912878787878800000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Valor Pago:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel16: TQRLabel
        Left = 932
        Top = 59
        Width = 86
        Height = 18
        Size.Values = (
          43.295454545454550000
          2241.742424242424000000
          141.912878787878800000
          206.856060606060600000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Saldo a Receber:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel17: TQRLabel
        Left = 741
        Top = 40
        Width = 155
        Height = 18
        Size.Values = (
          43.295454545454550000
          1782.329545454545000000
          96.212121212121210000
          372.821969696969700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Totais do Cliente =>'
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
    end
    object SummaryBand1: TQRBand
      Left = 42
      Top = 291
      Width = 1152
      Height = 94
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = SummaryBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        226.098484848484800000
        2770.909090909091000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape2: TQRShape
        Left = 920
        Top = 6
        Width = 216
        Height = 82
        Size.Values = (
          198.437500000000000000
          2211.916666666667000000
          13.229166666666670000
          518.583333333333400000)
        XLColumn = 0
        Brush.Color = 15263976
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel20: TQRLabel
        Left = 959
        Top = 37
        Width = 59
        Height = 18
        Size.Values = (
          43.295454545454550000
          2306.685606060606000000
          88.996212121212120000
          141.912878787878800000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Valor Pago:'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel19: TQRLabel
        Left = 964
        Top = 15
        Width = 54
        Height = 18
        Size.Values = (
          43.295454545454550000
          2318.712121212121000000
          36.079545454545450000
          129.886363636363600000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'A Receber:'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qReceber: TQRLabel
        Left = 1021
        Top = 15
        Width = 109
        Height = 16
        Size.Values = (
          39.687500000000000000
          2455.333333333333000000
          37.041666666666670000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
        Color = 15263976
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
      object qVlrPago: TQRLabel
        Left = 1021
        Top = 37
        Width = 109
        Height = 16
        Size.Values = (
          39.687500000000000000
          2455.333333333333000000
          89.958333333333340000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
        Color = 15263976
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
      object qSaldo: TQRLabel
        Left = 1021
        Top = 59
        Width = 109
        Height = 16
        Frame.DrawTop = True
        Size.Values = (
          39.687500000000000000
          2455.333333333333000000
          142.875000000000000000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,00'
        Color = 15263976
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
      object QRLabel4: TQRLabel
        Left = 932
        Top = 59
        Width = 86
        Height = 18
        Size.Values = (
          43.295454545454550000
          2241.742424242424000000
          141.912878787878800000
          206.856060606060600000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Saldo a Receber:'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel8: TQRLabel
        Left = 708
        Top = 40
        Width = 101
        Height = 23
        Size.Values = (
          55.321969696969700000
          1702.954545454545000000
          96.212121212121210000
          242.935606060606100000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Total Global =>'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 873
        Top = 11
        Width = 43
        Height = 77
        Size.Values = (
          185.208333333333300000
          2099.829545454545000000
          26.458333333333330000
          103.428030303030300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '{'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -64
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 48
      end
    end
    object PageFooterBand1: TQRBand
      Left = 42
      Top = 385
      Width = 1152
      Height = 24
      Frame.DrawTop = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        57.727272727272730000
        2770.909090909091000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRDBText8: TQRDBText
        Left = 6
        Top = 1
        Width = 79
        Height = 16
        Size.Values = (
          38.484848484848480000
          14.431818181818180000
          2.405303030303030000
          190.018939393939400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataField = 'RZ_SOCIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
    end
  end
  object DSCtaReceber: TDataSource
    DataSet = ADO_CtaReceber
    Left = 296
    Top = 16
  end
  object ADO_CtaReceber: TFDQuery
    BeforeOpen = ADO_CtaReceberBeforeOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select * from view_fin_ctareceber')
    Left = 252
    Top = 17
  end
end
