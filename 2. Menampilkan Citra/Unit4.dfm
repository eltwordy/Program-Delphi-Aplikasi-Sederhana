object Form4: TForm4
  Left = 306
  Top = 313
  Width = 1305
  Height = 675
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 152
    Top = 56
    Width = 745
    Height = 433
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 32
    object FILE1: TMenuItem
      Caption = 'FILE'
      object MUATCITRACTRLO1: TMenuItem
        Caption = 'MUAT CITRA'
        ShortCut = 16463
        OnClick = MUATCITRACTRLO1Click
      end
      object EXITCTRLE1: TMenuItem
        Caption = 'EXIT '
        ShortCut = 16453
        OnClick = EXITCTRLE1Click
      end
    end
    object PROSES1: TMenuItem
      Caption = 'PROSES'
      object CENTER1: TMenuItem
        Caption = 'CENTER'
        OnClick = CENTER1Click
      end
      object STRETCH1: TMenuItem
        Caption = 'STRETCH'
        OnClick = STRETCH1Click
      end
      object PROPORTIONAL1: TMenuItem
        Caption = 'PROPORTIONAL'
        OnClick = PROPORTIONAL1Click
      end
      object AUTOSIZE1: TMenuItem
        Caption = 'AUTOSIZE'
        OnClick = AUTOSIZE1Click
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 184
    Top = 80
  end
end
