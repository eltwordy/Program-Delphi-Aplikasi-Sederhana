object Form2: TForm2
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 112
    Width = 43
    Height = 13
    Caption = 'ANGKA 1'
  end
  object Label2: TLabel
    Left = 200
    Top = 176
    Width = 43
    Height = 13
    Caption = 'ANGKA 2'
  end
  object Label3: TLabel
    Left = 208
    Top = 248
    Width = 29
    Height = 13
    Caption = 'HASIL'
  end
  object Edit1: TEdit
    Left = 264
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 264
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 264
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 272
    Top = 208
    Width = 33
    Height = 25
    Caption = '+'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 320
    Top = 208
    Width = 33
    Height = 25
    Caption = '*'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 368
    Top = 208
    Width = 33
    Height = 25
    Caption = '-'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 416
    Top = 208
    Width = 33
    Height = 25
    Caption = '/'
    TabOrder = 6
    OnClick = Button4Click
  end
end
