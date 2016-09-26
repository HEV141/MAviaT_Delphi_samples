object Form1: TForm1
  Left = 192
  Top = 114
  Width = 449
  Height = 220
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 121
    Height = 41
    AutoSize = False
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1083#1080#1085#1091' '#1089#1090#1086#1088#1086#1085#1099' '#1082#1091#1073#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 8
    Top = 152
    Width = 4
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 16
    Width = 65
    Height = 21
    TabOrder = 0
    OnMouseMove = Edit1MouseMove
  end
  object Memo1: TMemo
    Left = 216
    Top = 16
    Width = 217
    Height = 89
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnMouseMove = Memo1MouseMove
  end
  object RadioGroup1: TRadioGroup
    Left = 216
    Top = 112
    Width = 217
    Height = 57
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1102
    Items.Strings = (
      #1054#1073#1098#1105#1084' '#1082#1091#1073#1072
      #1057#1091#1084#1084#1072' '#1089#1090#1086#1088#1086#1085' '#1082#1091#1073#1072)
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 56
    Width = 193
    Height = 25
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
    OnMouseMove = BitBtn1MouseMove
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 88
    Width = 193
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
    OnMouseMove = BitBtn2MouseMove
    Kind = bkNo
  end
  object BitBtn3: TBitBtn
    Left = 8
    Top = 120
    Width = 193
    Height = 25
    Caption = #1042#1099#1081#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn3Click
    OnMouseMove = BitBtn3MouseMove
    Kind = bkCancel
  end
end
