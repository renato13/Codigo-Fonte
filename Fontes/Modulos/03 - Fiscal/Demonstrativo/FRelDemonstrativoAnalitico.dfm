object FrmRelDemonstrativoAnalitico: TFrmRelDemonstrativoAnalitico
  Left = 217
  Top = 114
  Caption = 'Demonstrativo de Resultados'
  ClientHeight = 596
  ClientWidth = 849
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
  object QuickRep: TQuickRep
    Left = 24
    Top = 32
    Width = 794
    Height = 1123
    BeforePrint = QuickRepBeforePrint
    DataSet = db_demonstrativo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
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
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
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
    ReportTitle = 'Totais por Conta'
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand2: TQRBand
      Left = 38
      Top = 87
      Width = 718
      Height = 26
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = 15724527
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
    end
    object Detalhes: TQRBand
      Left = 38
      Top = 145
      Width = 718
      Height = 12
      AlignToBottom = False
      BeforePrint = DetalhesBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText4: TQRDBText
        Left = 56
        Top = 0
        Width = 468
        Height = 13
        Size.Values = (
          34.395833333333330000
          148.166666666666700000
          0.000000000000000000
          1238.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = db_demonstrativo
        DataField = 'PLN_CONTA_NOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 666
        Top = 0
        Width = 39
        Height = 13
        Size.Values = (
          34.395833333333330000
          1762.125000000000000000
          0.000000000000000000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = db_demonstrativo
        DataField = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
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
    object QRGroup1: TQRGroup
      Left = 38
      Top = 113
      Width = 718
      Height = 20
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRGroup1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'db_demonstrativo.NATUREZA'
      FooterBand = QuebraTotal
      Master = QuickRep
      ReprintOnNewPage = False
      object LBL_movimentacao: TQRDBText
        Left = 6
        Top = 0
        Width = 69
        Height = 14
        Size.Values = (
          37.041666666666670000
          15.875000000000000000
          0.000000000000000000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = 15647129
        DataSet = db_demonstrativo
        DataField = 'NATUREZA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object QuebraTotal: TQRBand
      Left = 38
      Top = 169
      Width = 718
      Height = 26
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape2: TQRShape
        Left = 564
        Top = 0
        Width = 139
        Height = 21
        Size.Values = (
          55.856481481481480000
          1493.425925925926000000
          0.000000000000000000
          367.476851851851900000)
        XLColumn = 0
        Brush.Color = 15647129
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRExpr3: TQRExpr
        Left = 596
        Top = 3
        Width = 96
        Height = 13
        Size.Values = (
          35.277777777777780000
          1575.740740740741000000
          8.819444444444444000
          252.824074074074100000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Color = 15647129
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'sum(db_demonstrativo.VALOR)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object Lbl_SubTotalMovto: TQRLabel
        Left = 512
        Top = 3
        Width = 47
        Height = 14
        Size.Values = (
          37.041666666666670000
          1354.666666666667000000
          7.937500000000000000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TOTAIS: '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
    object QRGroup2: TQRGroup
      Left = 38
      Top = 133
      Width = 718
      Height = 12
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'db_demonstrativo.PLANO_CODIGO'
      FooterBand = TotalData
      Master = QuickRep
      ReprintOnNewPage = False
      object QRDBText9: TQRDBText
        Left = 3
        Top = 0
        Width = 72
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          0.000000000000000000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = db_demonstrativo
        DataField = 'PLANO_NOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
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
    object TotalData: TQRBand
      Left = 38
      Top = 157
      Width = 718
      Height = 12
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRExpr1: TQRExpr
        Left = 616
        Top = 11
        Width = 89
        Height = 14
        Enabled = False
        Frame.DrawBottom = True
        Size.Values = (
          37.041666666666670000
          1629.833333333333000000
          29.104166666666670000
          235.479166666666700000)
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
        Expression = 'sum(db_demonstrativo.VALOR)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 426
        Top = 11
        Width = 40
        Height = 14
        Enabled = False
        Frame.DrawBottom = True
        Size.Values = (
          37.041666666666670000
          1127.125000000000000000
          29.104166666666670000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL:'
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
      object QRDBText6: TQRDBText
        Left = 469
        Top = 11
        Width = 146
        Height = 14
        Enabled = False
        Frame.DrawBottom = True
        Size.Values = (
          37.041666666666670000
          1240.895833333333000000
          29.104166666666670000
          386.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = db_demonstrativo
        DataField = 'PLANO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 195
      Width = 718
      Height = 28
      Frame.DrawTop = True
      AlignToBottom = False
      Color = 15724527
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object Lbl_QrTotal: TQRLabel
        Left = 643
        Top = 7
        Width = 60
        Height = 18
        Size.Values = (
          47.625000000000000000
          1701.270833333333000000
          18.520833333333330000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Lbl_QrTotal'
        Color = 15724527
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
    object Band_Cabecalho: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 49
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
        129.645833333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object LblTitulo: TQRLabel
        Left = 1
        Top = 1
        Width = 267
        Height = 45
        Frame.DrawRight = True
        Size.Values = (
          119.062500000000000000
          2.645833333333333000
          2.645833333333333000
          706.437500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Demonstrativo de Resultados'
        Color = 15724527
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel1: TQRLabel
        Left = 577
        Top = 1
        Width = 57
        Height = 16
        Size.Values = (
          42.333333333333330000
          1526.645833333333000000
          2.645833333333333000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Emiss'#227'o:'
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
        Left = 577
        Top = 14
        Width = 36
        Height = 16
        Size.Values = (
          42.333333333333330000
          1526.645833333333000000
          37.041666666666670000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Hora:'
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
        Left = 577
        Top = 30
        Width = 50
        Height = 16
        Size.Values = (
          42.333333333333330000
          1526.645833333333000000
          79.375000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'P'#225'gina:'
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
      object QRSysData1: TQRSysData
        Left = 639
        Top = 1
        Width = 43
        Height = 18
        Size.Values = (
          47.625000000000000000
          1690.687500000000000000
          2.645833333333333000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDate
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRSysData2: TQRSysData
        Left = 639
        Top = 14
        Width = 43
        Height = 18
        Size.Values = (
          47.625000000000000000
          1690.687500000000000000
          37.041666666666670000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRSysData5: TQRSysData
        Left = 639
        Top = 30
        Width = 50
        Height = 16
        Size.Values = (
          42.333333333333330000
          1690.687500000000000000
          79.375000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object LblPeriodo: TQRLabel
        Left = 272
        Top = 2
        Width = 49
        Height = 14
        Size.Values = (
          37.041666666666670000
          719.666666666666700000
          5.291666666666667000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PER'#205'ODO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape1: TQRShape
        Left = 564
        Top = 1
        Width = 9
        Height = 44
        Size.Values = (
          117.592592592592600000
          1493.425925925926000000
          2.939814814814815000
          23.518518518518520000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object LblPlanoContas: TQRLabel
        Left = 272
        Top = 17
        Width = 290
        Height = 26
        Size.Values = (
          67.615740740740740000
          720.254629629629600000
          44.097222222222220000
          767.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'PLANO DE CONTAS: TODOS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
  end
  object db_demonstrativo: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select'
      '    NATUREZA ,'
      '    PLN_CONTA ,    '
      '    PLN_CONTA_NOME ,    '
      '    PLANO_CODIGO ,    '
      '    PLANO_NOME ,    '
      '    HISTORICO ,    '
      '    sum(VALOR) AS VALOR    '
      ''
      'from SP_DEMONSTRATIVO (:DATA1, :DATA2 )    '
      ''
      'GROUP BY'
      '    NATUREZA ,'
      '    PLN_CONTA ,    '
      '    PLN_CONTA_NOME ,    '
      '    PLANO_CODIGO ,    '
      '    PLANO_NOME ,    '
      '    HISTORICO ,    '
      '    SALDO_FINAL    '
      ''
      'order by    '
      '    NATUREZA DESC')
    Left = 104
    Top = 16
    ParamData = <
      item
        Name = 'DATA1'
      end
      item
        Name = 'DATA2'
      end>
    object db_demonstrativoNATUREZA: TStringField
      FieldName = 'NATUREZA'
      ReadOnly = True
      Size = 30
    end
    object db_demonstrativoPLN_CONTA: TStringField
      FieldName = 'PLN_CONTA'
      ReadOnly = True
      Size = 30
    end
    object db_demonstrativoPLN_CONTA_NOME: TStringField
      FieldName = 'PLN_CONTA_NOME'
      ReadOnly = True
      Size = 50
    end
    object db_demonstrativoPLANO_CODIGO: TIntegerField
      FieldName = 'PLANO_CODIGO'
      ReadOnly = True
    end
    object db_demonstrativoPLANO_NOME: TStringField
      FieldName = 'PLANO_NOME'
      ReadOnly = True
      Size = 50
    end
    object db_demonstrativoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ReadOnly = True
      Size = 50
    end
    object db_demonstrativoVALOR: TBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
  end
end
