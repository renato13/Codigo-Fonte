object FrmRelFechamentoCaixaAnalitico: TFrmRelFechamentoCaixaAnalitico
  Left = 217
  Top = 114
  Caption = 'Fechamento do Caixa'
  ClientHeight = 521
  ClientWidth = 968
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
    Top = 8
    Width = 873
    Height = 1235
    BeforePrint = QuickRepBeforePrint
    DataSet = db_demonstrativo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial Narrow'
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
    ReportTitle = 'Fechamento do Caixa'
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 110
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand2: TQRBand
      Left = 42
      Top = 117
      Width = 790
      Height = 29
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = 15724527
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        69.753787878787880000
        1900.189393939394000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
    end
    object Detalhes: TQRBand
      Left = 42
      Top = 181
      Width = 790
      Height = 13
      AlignToBottom = False
      BeforePrint = DetalhesBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.268939393939390000
        1900.189393939394000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText4: TQRDBText
        Left = 3
        Top = -1
        Width = 291
        Height = 14
        Size.Values = (
          33.674242424242420000
          7.215909090909091000
          -2.405303030303030000
          699.943181818181800000)
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
        Left = 733
        Top = 0
        Width = 43
        Height = 14
        Size.Values = (
          33.674242424242420000
          1763.087121212121000000
          0.000000000000000000
          103.428030303030300000)
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
      object QRDBText1: TQRDBText
        Left = 341
        Top = -1
        Width = 291
        Height = 14
        Size.Values = (
          33.674242424242420000
          820.208333333333300000
          -2.405303030303030000
          699.943181818181800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = db_demonstrativo
        DataField = 'HISTORICO'
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
    end
    object QRGroup1: TQRGroup
      Left = 42
      Top = 146
      Width = 790
      Height = 22
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRGroup1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1900.189393939394000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'db_demonstrativo.NATUREZA'
      FooterBand = QuebraTotal
      Master = QuickRep
      ReprintOnNewPage = False
      object LBL_movimentacao: TQRDBText
        Left = 7
        Top = 1
        Width = 76
        Height = 15
        Size.Values = (
          36.079545454545450000
          16.837121212121210000
          2.405303030303030000
          182.803030303030300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = 15724527
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
      object QRLabel4: TQRLabel
        Left = 341
        Top = 1
        Width = 84
        Height = 15
        Size.Values = (
          36.079545454545450000
          820.208333333333300000
          2.405303030303030000
          202.045454545454500000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'HIST'#211'RICO:'
        Color = 15724527
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QuebraTotal: TQRBand
      Left = 42
      Top = 207
      Width = 790
      Height = 29
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        69.753787878787880000
        1900.189393939394000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape2: TQRShape
        Left = 621
        Top = 0
        Width = 153
        Height = 23
        Size.Values = (
          55.856481481481480000
          1493.425925925926000000
          0.000000000000000000
          367.476851851851900000)
        XLColumn = 0
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRExpr3: TQRExpr
        Left = 655
        Top = 4
        Width = 105
        Height = 15
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
        Color = 15724527
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
        Left = 563
        Top = 3
        Width = 52
        Height = 15
        Size.Values = (
          36.079545454545450000
          1354.185606060606000000
          7.215909090909091000
          125.075757575757600000)
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
      Left = 42
      Top = 168
      Width = 790
      Height = 13
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.268939393939390000
        1900.189393939394000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'db_demonstrativo.PLANO_CODIGO'
      FooterBand = TotalData
      Master = QuickRep
      ReprintOnNewPage = False
      object QRDBText9: TQRDBText
        Left = 3
        Top = 0
        Width = 79
        Height = 14
        Size.Values = (
          33.674242424242420000
          7.215909090909091000
          0.000000000000000000
          190.018939393939400000)
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
      Left = 42
      Top = 194
      Width = 790
      Height = 13
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.268939393939390000
        1900.189393939394000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRExpr1: TQRExpr
        Left = 678
        Top = 12
        Width = 98
        Height = 15
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
        Left = 469
        Top = 12
        Width = 44
        Height = 15
        Enabled = False
        Frame.DrawBottom = True
        Size.Values = (
          36.079545454545450000
          1128.087121212121000000
          28.863636363636360000
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
        Left = 516
        Top = 12
        Width = 161
        Height = 15
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
      Left = 42
      Top = 236
      Width = 790
      Height = 31
      Frame.DrawTop = True
      AlignToBottom = False
      Color = 15724527
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.564393939393940000
        1900.189393939394000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object Lbl_QrTotal: TQRLabel
        Left = 749
        Top = 8
        Width = 24
        Height = 20
        Size.Values = (
          48.106060606060610000
          1801.571969696970000000
          19.242424242424240000
          57.727272727272730000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = '0,00'
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
      Left = 42
      Top = 42
      Width = 790
      Height = 75
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
        180.397727272727300000
        1900.189393939394000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object LblTitulo: TQRLabel
        Left = 1
        Top = 1
        Width = 293
        Height = 69
        Frame.DrawRight = True
        Size.Values = (
          165.965909090909100000
          2.405303030303030000
          2.405303030303030000
          704.753787878787900000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Fechamento do Caixa'
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
        Left = 635
        Top = 1
        Width = 63
        Height = 18
        Size.Values = (
          43.295454545454550000
          1527.367424242424000000
          2.405303030303030000
          151.534090909090900000)
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
        Left = 635
        Top = 15
        Width = 40
        Height = 18
        Size.Values = (
          43.295454545454550000
          1527.367424242424000000
          36.079545454545450000
          96.212121212121210000)
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
        Left = 635
        Top = 33
        Width = 55
        Height = 18
        Size.Values = (
          43.295454545454550000
          1527.367424242424000000
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
        Left = 703
        Top = 1
        Width = 47
        Height = 20
        Size.Values = (
          48.106060606060610000
          1690.928030303030000000
          2.405303030303030000
          113.049242424242400000)
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
        Left = 703
        Top = 15
        Width = 47
        Height = 20
        Size.Values = (
          48.106060606060610000
          1690.928030303030000000
          36.079545454545450000
          113.049242424242400000)
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
        Left = 703
        Top = 33
        Width = 55
        Height = 18
        Size.Values = (
          43.295454545454550000
          1690.928030303030000000
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
        Left = 299
        Top = 2
        Width = 54
        Height = 15
        Size.Values = (
          36.079545454545450000
          719.185606060606100000
          4.810606060606061000
          129.886363636363600000)
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
        Left = 620
        Top = 1
        Width = 10
        Height = 74
        Size.Values = (
          177.270833333333300000
          1492.250000000000000000
          2.645833333333333000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object LblPlanoContas: TQRLabel
        Left = 299
        Top = 18
        Width = 319
        Height = 15
        Size.Values = (
          37.041666666666670000
          719.666666666666700000
          42.333333333333330000
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
      object LblDepartamento: TQRLabel
        Left = 299
        Top = 36
        Width = 319
        Height = 15
        Size.Values = (
          36.079545454545450000
          719.185606060606100000
          86.590909090909090000
          767.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'DEPARTAMENTO/LOJA: TODOS'
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
    Left = 220
    Top = 284
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
