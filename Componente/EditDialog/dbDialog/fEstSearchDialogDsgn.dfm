inherited FrmEstSearchDialogDsgn: TFrmEstSearchDialogDsgn
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    inherited pnlGrid: TPanel
      inherited grdResult: TDBGrid
        Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = pumStore
      end
    end
  end
  inherited aclSearch: TActionList
    Left = 247
  end
  object pumStore: TPopupMenu
    Left = 154
    Top = 205
    object mniStoreTotalCurrentAppearance: TMenuItem
      Caption = 'Store total current appearance'
      OnClick = mniStoreTotalCurrentAppearanceClick
    end
    object mniSeparator: TMenuItem
      Caption = '-'
    end
    object mniStoreCurrentSize: TMenuItem
      Caption = 'Store current size'
      OnClick = mniStoreCurrentSizeClick
    end
    object mniStoreCurrentColumnOrder: TMenuItem
      Caption = 'Store current column order'
      OnClick = mniStoreCurrentColumnOrderClick
    end
    object mniStoreCurrentDisplayWidths: TMenuItem
      Caption = 'Store current display widths'
      OnClick = mniStoreCurrentDisplayWidthsClick
    end
    object mniStoreCurrentColumnDisplayWidth: TMenuItem
      Caption = 'Store current column display width'
      OnClick = mniStoreCurrentColumnDisplayWidthClick
    end
  end
end
