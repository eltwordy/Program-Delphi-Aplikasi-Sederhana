object Form2: TForm2
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Penghalusan Seragam'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 144
    Top = 40
    Width = 8
    Height = 13
    Caption = 'N'
  end
  object Image1: TImage
    Left = 40
    Top = 96
    Width = 297
    Height = 241
    Stretch = True
  end
  object Image2: TImage
    Left = 352
    Top = 96
    Width = 313
    Height = 241
    Stretch = True
  end
  object ButtonMuatCitra: TButton
    Left = 40
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Muat Citra'
    TabOrder = 0
    OnClick = ButtonMuatCitraClick
  end
  object UpDownN: TUpDown
    Left = 193
    Top = 32
    Width = 16
    Height = 21
    Associate = EditN
    Min = 1
    Max = 9
    Position = 1
    TabOrder = 1
    OnChanging = UpDownNChanging
  end
  object EditN: TEdit
    Left = 160
    Top = 32
    Width = 33
    Height = 21
    ReadOnly = True
    TabOrder = 2
    Text = '1'
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 40
    Top = 64
  end
end
