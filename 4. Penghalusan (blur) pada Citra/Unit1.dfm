object Form1: TForm1
  Left = 178
  Top = 216
  Width = 928
  Height = 480
  Caption = 'Modifikasi Kecemerlangan'
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
    Left = 144
    Top = 24
    Width = 30
    Height = 13
    Caption = 'Merah'
  end
  object Label2: TLabel
    Left = 144
    Top = 48
    Width = 24
    Height = 13
    Caption = 'Hijau'
  end
  object Label3: TLabel
    Left = 400
    Top = 24
    Width = 18
    Height = 13
    Caption = 'Biru'
  end
  object Image1: TImage
    Left = 48
    Top = 120
    Width = 417
    Height = 265
    Stretch = True
  end
  object Image2: TImage
    Left = 480
    Top = 120
    Width = 369
    Height = 265
    Stretch = True
  end
  object ButtonMuatCitra: TButton
    Left = 48
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Muat Citra'
    TabOrder = 0
  end
  object TrackBarMerah: TTrackBar
    Left = 192
    Top = 24
    Width = 150
    Height = 45
    Max = 250
    Min = -250
    TabOrder = 1
    OnChange = TrackBarMerahChange
  end
  object TrackBarHijau: TTrackBar
    Left = 192
    Top = 56
    Width = 150
    Height = 45
    Max = 250
    Min = -250
    TabOrder = 2
    OnChange = TrackBarHijauChange
  end
  object TrackBarBiru: TTrackBar
    Left = 448
    Top = 24
    Width = 150
    Height = 45
    Max = 250
    Min = -250
    TabOrder = 3
    OnChange = TrackBarBiruChange
  end
  object CheckBoxSeragam: TCheckBox
    Left = 416
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Seragam'
    TabOrder = 4
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 48
    Top = 88
  end
end
