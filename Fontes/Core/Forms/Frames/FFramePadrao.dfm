object FrmFramePadrao: TFrmFramePadrao
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  AutoSize = True
  TabOrder = 0
  object PNPainelPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 304
    Align = alClient
    TabOrder = 0
    inline FrmFrameBarra1: TFrmFrameBarra
      Left = 1
      Top = 1
      Width = 449
      Height = 33
      Align = alTop
      AutoSize = True
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 449
      ExplicitHeight = 33
      inherited W7Panel1: TPanel
        Width = 449
        Height = 33
        ExplicitWidth = 449
        ExplicitHeight = 33
        inherited LblBarraTitulo: TLabel
          Width = 449
          Height = 33
          Font.Height = -16
          Font.Name = 'Segoe UI'
          ExplicitWidth = 188
          ExplicitHeight = 21
        end
      end
    end
  end
end
