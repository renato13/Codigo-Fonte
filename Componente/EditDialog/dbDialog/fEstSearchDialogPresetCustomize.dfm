object FrmEstSearchDialogPresetCustomize: TFrmEstSearchDialogPresetCustomize
  Left = 530
  Top = 364
  BorderStyle = bsDialog
  Caption = 'Customize'
  ClientHeight = 267
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 267
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = ' '
    TabOrder = 0
    object pnlControls: TPanel
      Left = 2
      Top = 2
      Width = 245
      Height = 234
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 2
      Caption = ' '
      TabOrder = 0
      object lblDescription: TLabel
        Left = 22
        Top = 30
        Width = 56
        Height = 13
        Caption = 'Description:'
        FocusControl = edtDescription
      end
      object lblShortcutKey: TLabel
        Left = 22
        Top = 55
        Width = 63
        Height = 13
        Caption = 'Shortcut key:'
        FocusControl = edtShortcutKey
      end
      object lblCustomized: TLabel
        Left = 22
        Top = 102
        Width = 57
        Height = 13
        Caption = 'Customized:'
        FocusControl = lbxRemove
      end
      object radStore: TRadioButton
        Left = 4
        Top = 6
        Width = 237
        Height = 17
        Caption = 'Store current search criteria'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object radRemove: TRadioButton
        Left = 4
        Top = 78
        Width = 237
        Height = 17
        Caption = 'Remove selected predefined search'
        Enabled = False
        TabOrder = 1
      end
      object edtDescription: TEdit
        Left = 89
        Top = 26
        Width = 152
        Height = 21
        TabOrder = 2
      end
      object edtShortcutKey: THotKey
        Left = 89
        Top = 51
        Width = 152
        Height = 19
        HotKey = 0
        Modifiers = []
        TabOrder = 3
      end
      object lbxRemove: TListBox
        Left = 89
        Top = 98
        Width = 152
        Height = 133
        ItemHeight = 13
        Sorted = True
        TabOrder = 4
      end
    end
    object pnlButtons: TPanel
      Left = 2
      Top = 236
      Width = 245
      Height = 29
      Align = alBottom
      BevelOuter = bvNone
      BorderWidth = 2
      Caption = ' '
      TabOrder = 1
      DesignSize = (
        245
        29)
      object btnOK: TButton
        Left = 88
        Top = 2
        Width = 75
        Height = 25
        Action = actOK
        Anchors = [akTop, akRight]
        Default = True
        TabOrder = 0
      end
      object btnCancel: TButton
        Left = 168
        Top = 2
        Width = 75
        Height = 25
        Action = actCancel
        Anchors = [akTop, akRight]
        Cancel = True
        TabOrder = 1
      end
    end
  end
  object aclCustomize: TActionList
    Left = 34
    Top = 134
    object actOK: TAction
      Caption = 'OK'
      OnExecute = actOKExecute
    end
    object actCancel: TAction
      Caption = 'Cancel'
      OnExecute = actCancelExecute
    end
  end
end
