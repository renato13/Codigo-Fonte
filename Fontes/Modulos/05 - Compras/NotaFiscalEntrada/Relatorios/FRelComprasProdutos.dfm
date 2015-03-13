object FrmRelComprasProdutos: TFrmRelComprasProdutos
  Left = 239
  Top = 107
  Caption = 'Compras por Produto'
  ClientHeight = 426
  ClientWidth = 924
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
    Left = 16
    Top = 48
    Width = 1123
    Height = 794
    DataSet = Ado_ComprasItens
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
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
    ReportTitle = 'Compras por Produto'
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object EmpresaTitulo: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 69
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
        182.562500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 10
        Top = 10
        Width = 1031
        Height = 20
        Size.Values = (
          52.916666666666670000
          26.458333333333330000
          26.458333333333330000
          2728.515625000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Compras por Produto'
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
        Left = 5
        Top = 48
        Width = 27
        Height = 18
        Size.Values = (
          47.625000000000000000
          13.229166666666670000
          127.000000000000000000
          71.437500000000000000)
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
        Left = 42
        Top = 48
        Width = 58
        Height = 18
        Size.Values = (
          47.625000000000000000
          111.125000000000000000
          127.000000000000000000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDateTime
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 947
        Top = 46
        Width = 37
        Height = 18
        Size.Values = (
          47.625000000000000000
          2505.604166666667000000
          121.708333333333300000
          97.895833333333340000)
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
        Left = 1000
        Top = 46
        Width = 39
        Height = 19
        Size.Values = (
          49.609375000000000000
          2645.833333333333000000
          122.369791666666700000
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
        FontSize = 8
      end
    end
    object Cabecalho: TQRBand
      Left = 38
      Top = 107
      Width = 1047
      Height = 26
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel2: TQRLabel
        Left = 1
        Top = 10
        Width = 85
        Height = 15
        Size.Values = (
          39.687500000000000000
          2.645833333333333000
          26.458333333333330000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nota Fiscal:'
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
        Left = 100
        Top = 10
        Width = 29
        Height = 15
        Size.Values = (
          39.687500000000000000
          264.583333333333300000
          26.458333333333330000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data'
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
      object QRLabel6: TQRLabel
        Left = 206
        Top = 10
        Width = 71
        Height = 15
        Size.Values = (
          39.687500000000000000
          545.041666666666700000
          26.458333333333330000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fornecedor'
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
      object QRLabel8: TQRLabel
        Left = 608
        Top = 10
        Width = 29
        Height = 15
        Size.Values = (
          39.687500000000000000
          1608.666666666667000000
          26.458333333333330000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'QTDE'
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
      object QRLabel10: TQRLabel
        Left = 651
        Top = 10
        Width = 64
        Height = 15
        Size.Values = (
          39.687500000000000000
          1722.437500000000000000
          26.458333333333330000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Vlr.Unit.'
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
        Left = 841
        Top = 10
        Width = 29
        Height = 15
        Size.Values = (
          39.687500000000000000
          2225.145833333333000000
          26.458333333333330000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'ICMS'
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
      object QRLabel12: TQRLabel
        Left = 737
        Top = 10
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          1949.979166666667000000
          26.458333333333330000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Desconto'
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
      object QRLabel13: TQRLabel
        Left = 924
        Top = 10
        Width = 22
        Height = 15
        Size.Values = (
          39.687500000000000000
          2444.750000000000000000
          26.458333333333330000
          58.208333333333340000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'IPI'
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
      object QRLabel14: TQRLabel
        Left = 996
        Top = 10
        Width = 36
        Height = 15
        Size.Values = (
          39.687500000000000000
          2635.250000000000000000
          26.458333333333330000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Total'
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
    object Datalhes: TQRBand
      Left = 38
      Top = 154
      Width = 1047
      Height = 16
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 1
        Top = 1
        Width = 74
        Height = 15
        Size.Values = (
          39.687500000000000000
          3.307291666666667000
          3.307291666666667000
          195.130208333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Ado_ComprasItens
        DataField = 'NRO_NOTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
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
        Left = 100
        Top = 1
        Width = 65
        Height = 15
        Size.Values = (
          39.687500000000000000
          264.583333333333400000
          2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Ado_ComprasItens
        DataField = 'DT_NOTAF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 206
        Top = 1
        Width = 352
        Height = 15
        Size.Values = (
          39.687500000000000000
          545.703125000000000000
          3.307291666666667000
          932.656250000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Ado_ComprasItens
        DataField = 'NOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
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
        Left = 572
        Top = 1
        Width = 66
        Height = 14
        Size.Values = (
          36.380208333333330000
          1514.739583333333000000
          3.307291666666667000
          175.286458333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Ado_ComprasItens
        DataField = 'QUANTIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '###,##0'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText7: TQRDBText
        Left = 651
        Top = 1
        Width = 69
        Height = 14
        Size.Values = (
          36.380208333333330000
          1723.098958333333000000
          3.307291666666667000
          181.901041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Ado_ComprasItens
        DataField = 'VL_UNITARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '##,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText8: TQRDBText
        Left = 806
        Top = 1
        Width = 69
        Height = 14
        Size.Values = (
          36.380208333333330000
          2133.203125000000000000
          3.307291666666667000
          181.901041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Ado_ComprasItens
        DataField = 'VL_ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '##,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText9: TQRDBText
        Left = 731
        Top = 1
        Width = 69
        Height = 14
        Size.Values = (
          36.380208333333330000
          1934.765625000000000000
          3.307291666666667000
          181.901041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Ado_ComprasItens
        DataField = 'VL_DESC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '##,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 881
        Top = 1
        Width = 69
        Height = 14
        Size.Values = (
          36.380208333333330000
          2331.640625000000000000
          3.307291666666667000
          181.901041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Ado_ComprasItens
        DataField = 'VL_IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '##,##0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText11: TQRDBText
        Left = 955
        Top = 1
        Width = 85
        Height = 14
        Size.Values = (
          36.380208333333330000
          2526.770833333333000000
          3.307291666666667000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Ado_ComprasItens
        DataField = 'VL_TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
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
    end
    object QuebraProduto: TQRGroup
      Left = 38
      Top = 133
      Width = 1047
      Height = 21
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'Ado_ComprasItens.COD_PRODUTO'
      FooterBand = TotalProduto
      Master = QuickRep
      ReprintOnNewPage = False
      object QRLabel15: TQRLabel
        Left = 6
        Top = 4
        Width = 57
        Height = 18
        Size.Values = (
          47.625000000000000000
          15.875000000000000000
          10.583333333333330000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Produto:'
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
      object QRDBText12: TQRDBText
        Left = 69
        Top = 4
        Width = 73
        Height = 17
        Size.Values = (
          46.302083333333330000
          181.901041666666700000
          9.921875000000000000
          191.822916666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Ado_ComprasItens
        DataField = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 145
        Top = 4
        Width = 366
        Height = 17
        Size.Values = (
          46.302083333333330000
          383.645833333333300000
          9.921875000000000000
          969.036458333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Ado_ComprasItens
        DataField = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
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
    object TotalProduto: TQRBand
      Left = 38
      Top = 170
      Width = 1047
      Height = 25
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRExpr1: TQRExpr
        Left = 572
        Top = 9
        Width = 66
        Height = 14
        Size.Values = (
          36.380208333333330000
          1514.739583333333000000
          23.151041666666670000
          175.286458333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(Ado_ComprasItens.QUANTIDADE)'
        Mask = '###,##0'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr2: TQRExpr
        Left = 806
        Top = 9
        Width = 69
        Height = 14
        Size.Values = (
          36.380208333333330000
          2133.203125000000000000
          23.151041666666670000
          181.901041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(Ado_ComprasItens.VL_ICMS)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr3: TQRExpr
        Left = 731
        Top = 9
        Width = 69
        Height = 14
        Size.Values = (
          36.380208333333330000
          1934.765625000000000000
          23.151041666666670000
          181.901041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(Ado_ComprasItens.VL_DESC)'
        Mask = '##,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr4: TQRExpr
        Left = 881
        Top = 9
        Width = 69
        Height = 14
        Size.Values = (
          36.380208333333330000
          2331.640625000000000000
          23.151041666666670000
          181.901041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(Ado_ComprasItens.VL_IPI)'
        Mask = '##,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr5: TQRExpr
        Left = 955
        Top = 9
        Width = 85
        Height = 14
        Size.Values = (
          36.380208333333330000
          2526.770833333333000000
          23.151041666666670000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(Ado_ComprasItens.VL_TOTAL)'
        Mask = '##,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape5: TQRShape
        Left = 570
        Top = 3
        Width = 471
        Height = 4
        Size.Values = (
          9.921875000000000000
          1508.125000000000000000
          6.614583333333334000
          1246.848958333333000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRExpr11: TQRExpr
        Left = 651
        Top = 9
        Width = 69
        Height = 14
        Size.Values = (
          36.380208333333330000
          1723.098958333333000000
          23.151041666666670000
          181.901041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Color = clWhite
        Master = QuickRep
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(Ado_ComprasItens.VL_UNITARIO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 195
      Width = 1047
      Height = 28
      Frame.DrawTop = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRExpr6: TQRExpr
        Left = 572
        Top = 6
        Width = 66
        Height = 15
        Size.Values = (
          39.687500000000000000
          1514.739583333333000000
          16.536458333333330000
          175.286458333333300000)
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
        Expression = 'sum(Ado_ComprasItens.QUANTIDADE)'
        Mask = '###,##0'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr7: TQRExpr
        Left = 806
        Top = 6
        Width = 69
        Height = 15
        Size.Values = (
          39.687500000000000000
          2133.203125000000000000
          16.536458333333330000
          181.901041666666700000)
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
        Expression = 'sum(Ado_ComprasItens.VL_ICMS)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr8: TQRExpr
        Left = 731
        Top = 6
        Width = 69
        Height = 15
        Size.Values = (
          39.687500000000000000
          1934.765625000000000000
          16.536458333333330000
          181.901041666666700000)
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
        Expression = 'sum(Ado_ComprasItens.VL_DESC)'
        Mask = '##,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr9: TQRExpr
        Left = 881
        Top = 6
        Width = 69
        Height = 15
        Size.Values = (
          39.687500000000000000
          2331.640625000000000000
          16.536458333333330000
          181.901041666666700000)
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
        Expression = 'sum(Ado_ComprasItens.VL_IPI)'
        Mask = '##,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr10: TQRExpr
        Left = 955
        Top = 6
        Width = 85
        Height = 15
        Size.Values = (
          39.687500000000000000
          2526.770833333333000000
          16.536458333333330000
          224.895833333333300000)
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
        Expression = 'sum(Ado_ComprasItens.VL_TOTAL)'
        Mask = '##,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel16: TQRLabel
        Left = 8
        Top = 6
        Width = 63
        Height = 18
        Size.Values = (
          47.625000000000000000
          21.166666666666670000
          15.875000000000000000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL GERAL'
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
      object QRExpr12: TQRExpr
        Left = 651
        Top = 6
        Width = 69
        Height = 15
        Size.Values = (
          39.687500000000000000
          1723.098958333333000000
          16.536458333333330000
          181.901041666666700000)
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
        Expression = 'sum(Ado_ComprasItens.VL_UNITARIO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
  end
  object DS_ComprasItens: TDataSource
    Left = 84
    Top = 284
  end
  object Ado_ComprasItens: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT A.*, B.CODIGO, B.NOME FROM COMPRAS_ITENS A, FORNECEDORES ' +
        'B '
      'WHERE'
      'B.CODIGO=A.FORNECEDOR ')
    Left = 180
    Top = 280
    object Ado_ComprasItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object Ado_ComprasItensNRO_NOTA: TStringField
      FieldName = 'NRO_NOTA'
      Size = 6
    end
    object Ado_ComprasItensSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object Ado_ComprasItensFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 6
    end
    object Ado_ComprasItensDT_NOTAF: TSQLTimeStampField
      FieldName = 'DT_NOTAF'
    end
    object Ado_ComprasItensCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Size = 13
    end
    object Ado_ComprasItensCOD_SITTRIB: TStringField
      FieldName = 'COD_SITTRIB'
      Size = 2
    end
    object Ado_ComprasItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
    end
    object Ado_ComprasItensVL_UNITARIO: TBCDField
      FieldName = 'VL_UNITARIO'
    end
    object Ado_ComprasItensPERC_ICMS: TBCDField
      FieldName = 'PERC_ICMS'
    end
    object Ado_ComprasItensREDU_ICMS: TBCDField
      FieldName = 'REDU_ICMS'
    end
    object Ado_ComprasItensVL_ICMS: TBCDField
      FieldName = 'VL_ICMS'
    end
    object Ado_ComprasItensPERC_DESC: TBCDField
      FieldName = 'PERC_DESC'
    end
    object Ado_ComprasItensVL_DESC: TBCDField
      FieldName = 'VL_DESC'
    end
    object Ado_ComprasItensPERC_IPI: TBCDField
      FieldName = 'PERC_IPI'
    end
    object Ado_ComprasItensVL_IPI: TBCDField
      FieldName = 'VL_IPI'
    end
    object Ado_ComprasItensVL_TOTAL: TBCDField
      FieldName = 'VL_TOTAL'
    end
    object Ado_ComprasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Ado_ComprasItensCODIGO_1: TStringField
      FieldName = 'CODIGO_1'
      Size = 6
    end
    object Ado_ComprasItensNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object Ado_ComprasItensUND: TStringField
      FieldName = 'UND'
      Size = 6
    end
  end
  object ADO_PRODUTOS: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM ESTOQUE'
      'WHERE'
      'CODIGO=:COD_PRODUTO')
    Left = 174
    Top = 354
    ParamData = <
      item
        Name = 'COD_PRODUTO'
      end>
  end
end
