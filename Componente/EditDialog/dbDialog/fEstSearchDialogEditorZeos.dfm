inherited FrmEstSearchDialogEditorZeos: TFrmEstSearchDialogEditorZeos
  Left = 261
  Top = 256
  Caption = 'Di'#225'logo de pesquisa (Zeos)'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    inherited pnlButtons: TPanel
      inherited btnCancel: TButton
        Caption = 'Cancelar'
      end
    end
    inherited pnlControls: TPanel
      inherited pnlProperties: TPanel
        inherited pnlPropertiesHeader: TPanel
          inherited Label2: TLabel
            Top = 1
            Width = 65
            Caption = 'Propriedades:'
            ExplicitTop = 1
            ExplicitWidth = 65
          end
        end
      end
      inherited pnlFields: TPanel
        inherited pnlFieldsHeader: TPanel
          inherited lblFields: TLabel
            Top = 1
            Width = 41
            Caption = 'Campos:'
            ExplicitTop = 1
            ExplicitWidth = 41
          end
          inherited btnAddField: TSpeedButton
            Hint = 'Adicionar Campo'
          end
          inherited btnDeleteField: TSpeedButton
            Hint = 'Deletar campo'
          end
          inherited btnMoveFieldUp: TSpeedButton
            Hint = 'Mover para cima'
          end
          inherited btnMoveFieldDown: TSpeedButton
            Hint = 'Mover para baixo'
          end
        end
      end
      inherited pnlData: TPanel
        inherited pnlDataHeader: TPanel
          inherited Label1: TLabel
            Top = 1
            Width = 24
            Caption = 'SQL:'
            ExplicitTop = 1
            ExplicitWidth = 24
          end
        end
        inherited pnlDataQueries: TPanel
          inherited splQuery: TSplitter
            Top = 218
            ExplicitTop = 218
          end
          inherited pnlDataSearchQuery: TPanel
            Height = 216
            ExplicitHeight = 216
            inherited mmoSearchQuery: TMemo
              Height = 216
              Font.Height = -13
              ExplicitHeight = 216
            end
          end
          inherited pnlDataCountQuery: TPanel
            Top = 222
            Height = 149
            ExplicitTop = 222
            ExplicitHeight = 149
            inherited mmoCountQuery: TMemo
              Height = 149
              Font.Height = -13
              ExplicitHeight = 149
            end
          end
        end
      end
    end
  end
  inherited aclMain: TActionList
    inherited actTest: TAction
      Caption = '&Testar'
    end
    inherited actPriorField: TAction
      Caption = 'Campo anterior'
    end
    inherited actNextField: TAction
      Caption = 'Pr'#243'ximo campo'
    end
    inherited actSelectAll: TAction
      Caption = 'Selecionar tudo'
    end
  end
  object qrySearch: TFDQuery
    Left = 48
    Top = 132
  end
  object qryCount: TFDQuery
    Left = 164
    Top = 140
  end
end
