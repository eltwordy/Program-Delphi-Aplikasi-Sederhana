object Form2: TForm2
  Left = 205
  Top = 188
  Width = 928
  Height = 480
  Caption = 'Konversi True Color ke Scala Keabuan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 56
    Top = 112
    Width = 385
    Height = 265
    Stretch = True
  end
  object Image2: TImage
    Left = 464
    Top = 112
    Width = 385
    Height = 265
    Stretch = True
  end
  object ButtonMuatCitra: TButton
    Left = 56
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Muat Citra'
    TabOrder = 0
    OnClick = ButtonMuatCitraClick
  end
  object ButtonRerata: TButton
    Left = 144
    Top = 56
    Width = 89
    Height = 25
    Caption = 'Keabuan Rerata'
    TabOrder = 1
    OnClick = ButtonRerataClick
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 64
    Top = 128
  end
end
