object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Teste'
  ClientHeight = 432
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object IDBEditDialog1: TIDBEditDialog
    Left = 40
    Top = 40
    Width = 65
    Height = 21
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    TabOrder = 0
    Text = ''
    Visible = True
    LabelCaption = 'Label'
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
    SQLdbRetornoVazio = ' *** '
    SQLdbMaxLenght = 10
    SearchDialogFieldList = <>
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
  end
  object StringGrid1: TStringGrid
    Left = 144
    Top = 40
    Width = 320
    Height = 120
    TabOrder = 1
  end
  object DBConexao: TFDConnection
    Left = 88
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 272
    Top = 240
  end
  object ZQuery1: TFDQuery
    Connection = DBConexao
    SQL.Strings = (
      'select * from VENDAS_ITENS')
    Left = 184
    Top = 232
  end
  object DBAccess1: TFDConnection
    Left = 360
    Top = 264
  end
  object EstSearchDialogDefaults1: TEstSearchDialogDefaults
    DialogCaption = 'Pesquisa'
    DialogWidth = 0
    DialogHeight = 0
    Store = dsFields
    CompareFormatDate = 'DDMMYYYY'
    CompareFormatTime = 'HHMMSS'
    CompareFormatDateTime = 'DDMMYYYY'
    TrueExpression = '1=1'
    ShowPresetsCustomization = False
    Left = 176
    Top = 152
  end
  object EstSearchDialogInternational1: TEstSearchDialogInternational
    Active = False
    CaptionDialog = 'Pesquisa'
    LabelField = 'Pesquisar no campo:'
    LabelComparison = 'O&p'#231#227'o:'
    LabelValue = 'Procurar por:'
    LabelOperator = 'Ope&rador:'
    ButtonMore = 'Mais'
    ButtonLess = 'Menos'
    ButtonSearch = 'Pesquisa'
    ButtonOK = '&Ok'
    ButtonCancel = 'Cancelar'
    ButtonSelect = 'Selecione'
    ButtonClose = 'Fechar'
    ButtonCustomize = 'Personalizar...'
    HintField = 'Selecionar campo para pesquisar por'
    HintComparison = 'Selecione a forma de comparar contendo valor'
    HintValue = 'Digite o que desejea pesquisar'
    HintOperator = 'Selecione a forma de combinar com outros crit'#233'rios'
    HintMore = 'Adicione os crit'#233'rios de pesquisa'
    HintLess = 'Remova os crit'#233'rios de pesquisa'
    HintSearch = 'Pesquisa (pressione ENTER ap'#243's digitar)'
    HintCustomize = 'Personalizar pesquisa pr'#233'-definida na lista de crit'#233'rios'
    HintPreset = 'Selecione uma lista pr'#233'-definida'
    ErrorInvalidDateTimeFormula = 'Forma de data/hora '#233' inv'#225'lida'
    ErrorInvalidDate = 'Data inv'#225'lida'
    ErrorInvalidTime = 'Hora inv'#225'lida'
    ErrorInvalidDateTime = 'data/hora inv'#225'lida'
    ErrorInvalidNumber = 'N'#250'mero inv'#225'lido'
    MessageTooManyRecords = 
      'O n'#250'mero de registros %0:d excedeu o limite maximo de %1:d. Use ' +
      'mais crit'#233'rios espec'#237'fico de pesquisa.'
    DateTimeValueNow = 'NOW'
    DateTimeValueSecond = 'SECOND'
    DateTimeValueMinute = 'MINUTE'
    DateTimeValueHour = 'HOUR'
    DateTimeValueDay = 'DAY'
    DateTimeValueWeek = 'WEEK'
    DateTimeValueMonth = 'MONTH'
    DateTimeValueQuarter = 'QUARTER'
    DateTimeValueHalfYear = 'HALFYEAR'
    DateTimeValueYear = 'YEAR'
    DateTimeValueRSecond = 'RSECOND'
    DateTimeValueRMinute = 'RMINUTE'
    DateTimeValueRHour = 'RHOUR'
    DateTimeValueRDay = 'RDAY'
    DateTimeValueRWeek = 'RWEEK'
    DateTimeValueRMonth = 'RMONTH'
    DateTimeValueRQuarter = 'RQUARTER'
    DateTimeValueRYear = 'RYEAR'
    ComparisonContains = 'contenha'
    ComparisonBeginsWith = 'in'#237'cie com'
    ComparisonNotBeginsWith = 'n'#227'o inicia com'
    ComparisonNotContains = 'n'#227'o deve conter'
    ComparisonEndsWith = 'termina com'
    ComparisonNotEndsWith = 'n'#227'o termina com'
    ComparisonEmpty = 'est'#225' vazio'
    ComparisonNotEmpty = 'n'#227'o est'#225' vazio'
    OperatorAnd = 'and'
    OperatorOr = 'or'
    OperatorAndAll = 'and all'
    OperatorOrAll = 'or all'
    CustomPresetAdd = 'Store current search criteria'
    CustomPresetRemove = 'Remove selected predefined search'
    CustomPresetDescription = 'Description:'
    CustomPresetShortcut = 'Shortcut key:'
    CustomPresetCustomized = 'Customized:'
    CustomPresetCaption = 'Customize'
    CustomPresetErrorDescriptionEmpty = 'Description must have a value'
    CustomPresetErrorDescriptionInUse = 'Description is already in use'
    CustomPresetErrorShortcutInUse = 'Shortcut is already in use'
    Left = 344
    Top = 128
  end
end
