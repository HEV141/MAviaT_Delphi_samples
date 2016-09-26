object Form1: TForm1
  Left = 192
  Top = 114
  Width = 569
  Height = 107
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 344
    Top = 8
    Width = 120
    Height = 20
    Caption = #1057#1091#1084#1084#1072' '#1084#1072#1089#1089#1080#1074#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 329
    Height = 25
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    OnClick = StringGrid1Click
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 40
    Width = 129
    Height = 17
    Caption = #1040#1074#1090#1086#1087#1086#1076#1089#1095#1105#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 144
    Top = 40
    Width = 89
    Height = 25
    Caption = #1055#1086#1076#1089#1095#1080#1090#1072#1090#1100
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkYes
  end
  object BitBtn2: TBitBtn
    Left = 240
    Top = 40
    Width = 89
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkAbort
  end
  object BitBtn3: TBitBtn
    Left = 336
    Top = 40
    Width = 89
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 4
    OnClick = BitBtn3Click
    Kind = bkNo
  end
end
