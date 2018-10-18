object Form3: TForm3
  Left = 174
  Top = 150
  Width = 928
  Height = 480
  Caption = 'Form3'
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
    Left = 24
    Top = 88
    Width = 409
    Height = 265
    Stretch = True
  end
  object Image2: TImage
    Left = 448
    Top = 88
    Width = 385
    Height = 265
    Stretch = True
  end
  object ButtonMuatCitra: TButton
    Left = 24
    Top = 40
    Width = 97
    Height = 25
    Caption = 'Muat Citra'
    TabOrder = 0
    OnClick = ButtonMuatCitraClick
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 32
    Top = 96
  end
end
