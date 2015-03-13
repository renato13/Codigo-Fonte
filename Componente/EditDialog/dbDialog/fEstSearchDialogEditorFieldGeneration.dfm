object FrmEstSearchDialogEditorFieldGeneration: TFrmEstSearchDialogEditorFieldGeneration
  Left = 435
  Top = 286
  BorderStyle = bsDialog
  Caption = 'Select field generation style'
  ClientHeight = 138
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    294
    138)
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TButton
    Left = 133
    Top = 108
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object btnCancel: TButton
    Left = 213
    Top = 108
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object rgpWhereSyntaxStyle: TRadioGroup
    Left = 4
    Top = 4
    Width = 285
    Height = 99
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = ' Where syntax style '
    ItemIndex = 0
    Items.Strings = (
      'Standard - Field'
      'Single quoted - '#39'Field'#39
      'Double quoted - "Field"'
      'Brackets - [Field]')
    TabOrder = 2
  end
end
