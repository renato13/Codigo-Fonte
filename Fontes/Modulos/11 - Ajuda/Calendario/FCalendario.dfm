object FrmCalendario: TFrmCalendario
  Left = 256
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Calend'#225'rio'
  ClientHeight = 572
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 794
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 850
    ExplicitHeight = 33
    inherited W7Panel1: TPanel
      Width = 794
      Height = 33
      ExplicitWidth = 850
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 83
        Caption = 'Calend'#225'rio'
        ExplicitWidth = 83
      end
    end
  end
end
