object Form1: TForm1
  Left = 195
  Top = 116
  Width = 473
  Height = 343
  Caption = #1043#1080#1089#1090#1086#1075#1088#1072#1084#1084#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Image1: TImage
    Left = 184
    Top = 24
    Width = 265
    Height = 273
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 24
    Width = 153
    Height = 129
    ColCount = 2
    FixedColor = clWindow
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    OnKeyPress = StringGrid1KeyPress
    ColWidths = (
      90
      54)
  end
  object Button1: TButton
    Left = 8
    Top = 184
    Width = 97
    Height = 25
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
end
