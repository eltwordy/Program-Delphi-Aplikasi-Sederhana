object Form3: TForm3
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 288
    Top = 184
    Width = 513
    Height = 297
  end
  object Button1: TButton
    Left = 72
    Top = 160
    Width = 75
    Height = 25
    Caption = 'MuatCitra'
    TabOrder = 0
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 80
    Top = 208
    Width = 97
    Height = 17
    Caption = 'Center'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 80
    Top = 232
    Width = 97
    Height = 17
    Caption = 'Stretch'
    TabOrder = 2
    OnClick = CheckBox2Click
  end
  object CheckBox3: TCheckBox
    Left = 80
    Top = 256
    Width = 97
    Height = 17
    Caption = 'Proportional'
    TabOrder = 3
    OnClick = CheckBox3Click
  end
  object CheckBox4: TCheckBox
    Left = 80
    Top = 280
    Width = 97
    Height = 17
    Caption = 'AutoSize'
    TabOrder = 4
    OnClick = CheckBox4Click
  end
  object Button2: TButton
    Left = 80
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Ukuran Semula'
    TabOrder = 5
    OnClick = Button2Click
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 312
    Top = 200
  end
end
