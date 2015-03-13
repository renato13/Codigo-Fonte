object FrmComprasImprimir: TFrmComprasImprimir
  Left = 185
  Top = 141
  Caption = 'Compras por Fornecedor'
  ClientHeight = 498
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object QuickRep: TQuickRep
    Left = 24
    Top = 8
    Width = 898
    Height = 635
    DataSet = FrmCompras.db_ComprasItens
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Page.PaperSize = A4Small
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
    ReportTitle = 'COMPRAS - ESPELHO DE NOTA'
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 80
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object EmpresaTitulo: TQRBand
      Left = 30
      Top = 30
      Width = 838
      Height = 39
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
        128.984375000000000000
        2771.510416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 10
        Top = 9
        Width = 287
        Height = 18
        Size.Values = (
          59.531250000000000000
          33.072916666666670000
          29.765625000000000000
          949.192708333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'COMPRAS - ESPELHO DE NOTA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel3: TQRLabel
        Left = 665
        Top = 26
        Width = 29
        Height = 14
        Size.Values = (
          46.302083333333330000
          2199.348958333333000000
          85.989583333333330000
          95.911458333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 700
        Top = 26
        Width = 62
        Height = 14
        Size.Values = (
          46.302083333333330000
          2315.104166666667000000
          85.989583333333330000
          205.052083333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDateTime
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 665
        Top = 6
        Width = 40
        Height = 14
        Size.Values = (
          46.302083333333330000
          2199.348958333333000000
          19.843750000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'P'#225'gina:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRSysData2: TQRSysData
        Left = 731
        Top = 6
        Width = 31
        Height = 15
        Size.Values = (
          49.609375000000000000
          2417.630208333333000000
          19.843750000000000000
          102.526041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
    end
    object Cabecalho: TQRBand
      Left = 30
      Top = 69
      Width = 838
      Height = 21
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        69.453125000000000000
        2771.510416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel2: TQRLabel
        Left = 17
        Top = 9
        Width = 42
        Height = 13
        Size.Values = (
          42.994791666666670000
          56.223958333333330000
          29.765625000000000000
          138.906250000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Nota Fiscal'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 90
        Top = 9
        Width = 19
        Height = 13
        Size.Values = (
          42.994791666666670000
          297.656250000000000000
          29.765625000000000000
          62.838541666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 537
        Top = 9
        Width = 21
        Height = 13
        Size.Values = (
          42.994791666666670000
          1776.015625000000000000
          29.765625000000000000
          69.453125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'QTDE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 605
        Top = 9
        Width = 34
        Height = 13
        Size.Values = (
          42.994791666666670000
          2000.911458333333000000
          29.765625000000000000
          112.447916666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Vlr. Unit.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 671
        Top = 9
        Width = 35
        Height = 13
        Size.Values = (
          42.994791666666670000
          2219.192708333333000000
          29.765625000000000000
          115.755208333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Desconto'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 783
        Top = 9
        Width = 18
        Height = 13
        Size.Values = (
          42.994791666666670000
          2589.609375000000000000
          29.765625000000000000
          59.531250000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Total'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 232
        Top = 9
        Width = 39
        Height = 13
        Size.Values = (
          42.994791666666670000
          767.291666666666700000
          29.765625000000000000
          128.984375000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descri'#231#227'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 160
        Top = 9
        Width = 30
        Height = 13
        Size.Values = (
          42.994791666666670000
          529.166666666666700000
          29.765625000000000000
          99.218750000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'digo:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
      Top = 103
      Width = 838
      Height = 13
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.994791666666670000
        2771.510416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 1
        Top = 1
        Width = 58
        Height = 13
        Size.Values = (
          42.994791666666670000
          3.307291666666667000
          3.307291666666667000
          191.822916666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FrmCompras.db_ComprasItens
        DataField = 'NOTAFISCAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
        Left = 90
        Top = 1
        Width = 63
        Height = 13
        Size.Values = (
          42.994791666666670000
          297.656250000000000000
          3.307291666666667000
          208.359375000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FrmCompras.db_ComprasItens
        DataField = 'DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
        Left = 511
        Top = 1
        Width = 53
        Height = 13
        Size.Values = (
          42.994791666666670000
          1690.026041666667000000
          3.307291666666667000
          175.286458333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FrmCompras.db_ComprasItens
        DataField = 'QUANTIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '###,##0'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 579
        Top = 1
        Width = 60
        Height = 13
        Size.Values = (
          42.994791666666670000
          1914.921875000000000000
          3.307291666666667000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FrmCompras.db_ComprasItens
        DataField = 'VL_UNITARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 650
        Top = 1
        Width = 55
        Height = 13
        Size.Values = (
          42.994791666666670000
          2149.739583333333000000
          3.307291666666667000
          181.901041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FrmCompras.db_ComprasItens
        DataField = 'DESCONTO_VLR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '##,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 760
        Top = 1
        Width = 45
        Height = 13
        Size.Values = (
          42.994791666666670000
          2513.541666666667000000
          3.307291666666667000
          148.828125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FrmCompras.db_ComprasItens
        DataField = 'VL_TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Mask = '###,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 232
        Top = 1
        Width = 246
        Height = 13
        Size.Values = (
          42.994791666666670000
          767.291666666666700000
          3.307291666666667000
          813.593750000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FrmCompras.db_ComprasItens
        DataField = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 160
        Top = 1
        Width = 38
        Height = 13
        Size.Values = (
          42.994791666666670000
          529.166666666666700000
          3.307291666666667000
          125.677083333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = FrmCompras.db_ComprasItens
        DataField = 'PRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
    object QuebraProduto: TQRGroup
      Left = 30
      Top = 90
      Width = 838
      Height = 13
      Frame.DrawTop = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.994791666666670000
        2771.510416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'FrmCompras.db_Compras.FORNECEDOR'
      FooterBand = TotalProduto
      Master = QuickRep
      ReprintOnNewPage = False
      object QRLabel15: TQRLabel
        Left = -2
        Top = 1
        Width = 54
        Height = 12
        Size.Values = (
          39.687500000000000000
          -6.614583333333333000
          3.307291666666667000
          178.593750000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fornecedor:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object NomeFornecedor: TQRLabel
        Left = 66
        Top = 1
        Width = 78
        Height = 12
        Size.Values = (
          39.687500000000000000
          218.281250000000000000
          3.307291666666667000
          257.968750000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NomeFornecedor'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
    object TotalProduto: TQRBand
      Left = 30
      Top = 116
      Width = 838
      Height = 51
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        168.671875000000000000
        2771.510416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRExpr1: TQRExpr
        Left = 511
        Top = 7
        Width = 53
        Height = 13
        Size.Values = (
          42.994791666666670000
          1690.026041666667000000
          23.151041666666670000
          175.286458333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(FrmCompras.db_ComprasItens.QUANTIDADE)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 760
        Top = 34
        Width = 45
        Height = 14
        Size.Values = (
          46.302083333333330000
          2513.541666666667000000
          112.447916666666700000
          148.828125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(VL_ICMS)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 650
        Top = 7
        Width = 55
        Height = 13
        Size.Values = (
          42.994791666666670000
          2149.739583333333000000
          23.151041666666670000
          181.901041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(DESCONTO_VLR)'
        Mask = '##,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 760
        Top = 22
        Width = 45
        Height = 14
        Size.Values = (
          46.302083333333330000
          2513.541666666667000000
          72.760416666666680000
          148.828125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(VL_IPI)'
        Mask = '##,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 760
        Top = 7
        Width = 45
        Height = 13
        Size.Values = (
          42.994791666666670000
          2513.541666666667000000
          23.151041666666670000
          148.828125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(VL_TOTAL)'
        Mask = '##,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape5: TQRShape
        Left = 496
        Top = 2
        Width = 308
        Height = 3
        Size.Values = (
          9.921875000000000000
          1640.416666666667000000
          6.614583333333332000
          1018.645833333333000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 725
        Top = 22
        Width = 30
        Height = 14
        Size.Values = (
          46.302083333333330000
          2397.786458333333000000
          72.760416666666680000
          99.218750000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'IPI:'
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
      object QRLabel11: TQRLabel
        Left = 725
        Top = 35
        Width = 30
        Height = 14
        Size.Values = (
          46.302083333333330000
          2397.786458333333000000
          115.755208333333300000
          99.218750000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ICMS:'
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
      object QRExpr11: TQRExpr
        Left = 579
        Top = 7
        Width = 60
        Height = 13
        Size.Values = (
          42.994791666666670000
          1914.921875000000000000
          23.151041666666670000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(VL_UNITARIO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr13: TQRExpr
        Left = 422
        Top = 6
        Width = 46
        Height = 12
        Size.Values = (
          39.687500000000000000
          1397.000000000000000000
          21.166666666666670000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        Expression = 'sum(FrmCompras.FrmCompras.db_ComprasItens.QUANTIDADE)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object SummaryBand1: TQRBand
      Left = 30
      Top = 167
      Width = 838
      Height = 51
      Frame.DrawTop = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        168.671875000000000000
        2771.510416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRExpr6: TQRExpr
        Left = 511
        Top = 1
        Width = 53
        Height = 14
        Size.Values = (
          46.302083333333330000
          1690.026041666667000000
          3.307291666666667000
          175.286458333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(QUANTIDADE)'
        Mask = '###,##0'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr7: TQRExpr
        Left = 760
        Top = 35
        Width = 45
        Height = 14
        Size.Values = (
          46.302083333333330000
          2513.541666666667000000
          115.755208333333300000
          148.828125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(FrmCompras.FrmCompras.db_ComprasItens.VL_ICMS)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr8: TQRExpr
        Left = 650
        Top = 1
        Width = 55
        Height = 14
        Size.Values = (
          46.302083333333330000
          2149.739583333333000000
          3.307291666666667000
          181.901041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(VL_DESC)'
        Mask = '##,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr9: TQRExpr
        Left = 760
        Top = 22
        Width = 45
        Height = 14
        Size.Values = (
          46.302083333333330000
          2513.541666666667000000
          72.760416666666680000
          148.828125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(FrmCompras.FrmCompras.db_ComprasItens.VL_IPI)'
        Mask = '##,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr10: TQRExpr
        Left = 760
        Top = 1
        Width = 45
        Height = 14
        Size.Values = (
          46.302083333333330000
          2513.541666666667000000
          3.307291666666667000
          148.828125000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(FrmCompras.FrmCompras.db_ComprasItens.VL_TOTAL)'
        Mask = '##,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel16: TQRLabel
        Left = 6
        Top = 1
        Width = 54
        Height = 14
        Size.Values = (
          46.302083333333330000
          19.843750000000000000
          3.307291666666667000
          178.593750000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL GERAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 725
        Top = 21
        Width = 30
        Height = 14
        Size.Values = (
          46.302083333333330000
          2397.786458333333000000
          69.453125000000000000
          99.218750000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'IPI:'
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
      object QRLabel17: TQRLabel
        Left = 725
        Top = 34
        Width = 30
        Height = 14
        Size.Values = (
          46.302083333333330000
          2397.786458333333000000
          112.447916666666700000
          99.218750000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ICMS:'
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
      object QRExpr12: TQRExpr
        Left = 579
        Top = 1
        Width = 60
        Height = 14
        Size.Values = (
          46.302083333333330000
          1914.921875000000000000
          3.307291666666667000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(VL_UNITARIO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
  end
end
