object Form1: TForm1
  Left = 118
  Top = 118
  Width = 690
  Height = 545
  Caption = 'Image Processing'
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 665
    Height = 465
    Caption = 'Analisis Citra Dengan Feature Extraction'
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 40
      Top = 88
      Width = 129
      Height = 22
      Caption = 'Analisis Gray Scale'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 40
      Top = 120
      Width = 129
      Height = 22
      Caption = 'Analisis Dengan Sobel'
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 40
      Top = 152
      Width = 129
      Height = 22
      Caption = 'Analisis Konvolusi Step 1'
      OnClick = SpeedButton3Click
    end
    object SpeedButton5: TSpeedButton
      Left = 40
      Top = 216
      Width = 129
      Height = 22
      Caption = 'Analisis Kompresi Step 1'
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 40
      Top = 248
      Width = 129
      Height = 22
      Caption = 'Analisis Kompresi Step 2'
      OnClick = SpeedButton6Click
    end
    object SpeedButton7: TSpeedButton
      Left = 40
      Top = 280
      Width = 129
      Height = 22
      Caption = 'Analisis Dengan Treatmen'
      OnClick = SpeedButton7Click
    end
    object SpeedButton8: TSpeedButton
      Left = 40
      Top = 312
      Width = 129
      Height = 22
      Caption = 'Analisis Dengan Invert'
      OnClick = SpeedButton8Click
    end
    object Image1: TImage
      Left = 216
      Top = 48
      Width = 409
      Height = 337
    end
    object SpeedButton4: TSpeedButton
      Left = 40
      Top = 184
      Width = 129
      Height = 22
      Caption = 'Analisis Konvolusi Step 2'
      OnClick = SpeedButton4Click
    end
    object BitBtn1: TBitBtn
      Left = 296
      Top = 392
      Width = 75
      Height = 25
      Caption = 'Open Picture'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 456
      Top = 392
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 224
    Top = 56
  end
end
