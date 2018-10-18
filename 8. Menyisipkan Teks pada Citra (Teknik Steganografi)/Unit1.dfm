object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Steganograpi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 24
    Top = 72
    Width = 329
    Height = 281
  end
  object Image1: TImage
    Left = 24
    Top = 80
    Width = 329
    Height = 273
  end
  object Memo1: TMemo
    Left = 440
    Top = 88
    Width = 185
    Height = 89
    Lines.Strings = (
      'Masukan teks rahasia kita disini')
    TabOrder = 0
  end
  object ButtonTampilkanPesan: TButton
    Left = 640
    Top = 40
    Width = 105
    Height = 25
    Caption = 'Tampilkan Pesan'
    TabOrder = 1
    OnClick = ButtonTampilkanPesanClick
  end
  object Button2: TButton
    Left = 640
    Top = 72
    Width = 105
    Height = 25
    Caption = 'Sembunyikan Pesan'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ButtonBukaFile: TButton
    Left = 792
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Buka File'
    TabOrder = 3
    OnClick = ButtonBukaFileClick
  end
  object ButtonAbout: TButton
    Left = 792
    Top = 72
    Width = 75
    Height = 25
    Caption = 'About'
    TabOrder = 4
  end
  object Opd: TOpenPictureDialog
    Left = 368
    Top = 56
  end
  object Spd: TSavePictureDialog
    Left = 368
    Top = 88
  end
end
