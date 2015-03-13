object dmBaseComponentes: TdmBaseComponentes
  OldCreateOrder = False
  Height = 406
  Width = 764
  object frxRTFExport1: TfrxRTFExport
    FileName = 'anexo'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'Sist'#233'ria Softwares'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 464
    Top = 40
  end
  object frxMailExport1: TfrxMailExport
    FileName = 'anexo'
    UseFileCache = True
    DefaultPath = 'C:\Sisteria\Dados\'
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    Subject = 'Relat'#243'rio'
    Lines.Strings = (
      'Prezado(a) Cliente,'
      'segue em anexo XXXXX.'
      ''
      'Aguardamos seu contato.')
    ShowExportDialog = False
    Signature.Strings = (
      'Atenciosamente,'
      ''
      '______________________________'
      'seu nome'
      'seu email'
      'nome da sua empresa'
      'email dua empresa'
      'site da sua empresa'
      'seu telefone para contato'
      'sua cidade - seu estado (UF) '
      '')
    SmtpPort = 465
    UseIniFile = True
    LogFile = 'C:\Sisteria\Dados\log_mail.log'
    TimeOut = 60
    ConfurmReading = True
    UseMAPI = SMTP
    Left = 320
    Top = 40
  end
  object frxXLSExport1: TfrxXLSExport
    FileName = 'anexo'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 544
    Top = 56
  end
  object frxHTMLExport1: TfrxHTMLExport
    FileName = 'anexo'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Navigator = True
    Background = False
    Centered = True
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 48
    Top = 32
  end
  object frxJPEGExport1: TfrxJPEGExport
    FileName = 'anexo'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    Left = 176
    Top = 200
  end
  object frxBMPExport1: TfrxBMPExport
    FileName = 'anexo'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    Left = 176
    Top = 104
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    FileName = 'anexo'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 176
    Top = 40
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 40
    Top = 104
  end
  object frxRichObject1: TfrxRichObject
    Left = 640
    Top = 40
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 320
    Top = 112
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = ANSI_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 454
    Top = 119
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 640
    Top = 112
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    EscModel = 1
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 536
    Top = 120
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'anexo'
    ExportNotPrintable = True
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    EmbeddedFonts = True
    OpenAfterExport = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = True
    PrintScaling = False
    PdfA = False
    Left = 40
    Top = 200
  end
end
