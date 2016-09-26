object Form1: TForm1
  Left = 192
  Top = 114
  Width = 569
  Height = 235
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 548
    Height = 20
    Caption = 
      #1042#1074#1077#1076#1080#1090#1077' '#1080#1085#1090#1077#1088#1074#1072#1083' '#1074#1088#1077#1084#1077#1085#1080' ('#1089#1077#1082'.), '#1095#1077#1088#1077#1079' '#1082#1086#1090#1086#1088#1099#1081' '#1074#1082#1083#1102#1095#1080#1090#1089#1103' '#1073#1091#1076#1080#1083#1100#1085 +
      #1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 120
    Top = 80
    Width = 218
    Height = 20
    Caption = #1041#1091#1076#1080#1083#1100#1085#1080#1082' '#1074#1082#1083#1102#1095#1080#1090#1089#1103' '#1095#1077#1088#1077#1079
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 352
    Top = 80
    Width = 4
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 376
    Top = 80
    Width = 52
    Height = 20
    Caption = #1089#1077#1082#1091#1085#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 232
    Top = 112
    Width = 109
    Height = 20
    Caption = #1042#1088#1077#1084#1103' '#1074#1099#1096#1083#1086'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
    OnClick = Label5Click
  end
  object Label6: TLabel
    Left = 288
    Top = 144
    Width = 41
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 288
    Top = 168
    Width = 48
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 152
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 296
    Top = 40
    Width = 121
    Height = 25
    Caption = #1053#1072#1095#1072#1090#1100' '#1086#1090#1089#1095#1105#1090
    TabOrder = 1
    OnClick = Button1Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 40
    Top = 48
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 40
    Top = 88
  end
end
