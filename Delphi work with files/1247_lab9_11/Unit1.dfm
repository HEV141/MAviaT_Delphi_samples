object Form1: TForm1
  Left = 217
  Top = 163
  Width = 479
  Height = 270
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
    Left = 40
    Top = 16
    Width = 13
    Height = 13
    Caption = 'X0'
  end
  object Label2: TLabel
    Left = 40
    Top = 48
    Width = 13
    Height = 13
    Caption = 'Y0'
  end
  object Label3: TLabel
    Left = 40
    Top = 80
    Width = 14
    Height = 13
    Caption = 'R1'
  end
  object Label4: TLabel
    Left = 40
    Top = 112
    Width = 14
    Height = 13
    Caption = 'R2'
  end
  object Label5: TLabel
    Left = 256
    Top = 16
    Width = 8
    Height = 13
    Caption = 'N'
  end
  object Label6: TLabel
    Left = 256
    Top = 56
    Width = 11
    Height = 13
    Caption = '(x)'
  end
  object Label7: TLabel
    Left = 120
    Top = 200
    Width = 30
    Height = 13
    Caption = 'Result'
  end
  object Label8: TLabel
    Left = 360
    Top = 56
    Width = 11
    Height = 13
    Caption = '(y)'
  end
  object Edit1: TEdit
    Left = 72
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 72
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 72
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 72
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 280
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Memo1: TMemo
    Left = 280
    Top = 56
    Width = 49
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
  object Button1: TButton
    Left = 192
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Calculate'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Edit6: TEdit
    Left = 168
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Memo2: TMemo
    Left = 376
    Top = 56
    Width = 49
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
end
