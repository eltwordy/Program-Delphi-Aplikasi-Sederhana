object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
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
    Left = 432
    Top = 48
    Width = 117
    Height = 13
    Caption = 'Lama Perekaman (Detik)'
  end
  object Label2: TLabel
    Left = 432
    Top = 72
    Width = 85
    Height = 13
    Caption = 'Indeks Maksimum'
  end
  object LabelNamaFile: TLabel
    Left = 48
    Top = 88
    Width = 44
    Height = 13
    Caption = 'Video.avi'
  end
  object ButtonNamaFile: TButton
    Left = 48
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Nama File'
    TabOrder = 0
  end
  object ButtonSimpan: TButton
    Left = 136
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
  end
  object ButtonFormat: TButton
    Left = 224
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Format'
    TabOrder = 2
  end
  object ButtonKompresi: TButton
    Left = 312
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Kompresi'
    TabOrder = 3
  end
  object EditLama: TEdit
    Left = 560
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object EditIndeks: TEdit
    Left = 560
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object VideoCap1: TVideoCap
    Left = 48
    Top = 128
    Width = 345
    Height = 281
    color = clWhite
    DriverOpen = False
    DriverIndex = -1
    VideoOverlay = False
    VideoPreview = False
    PreviewScaleToWindow = False
    PreviewScaleProportional = False
    PreviewRate = 30
    MicroSecPerFrame = 33333
    FrameRate = 30
    CapAudio = False
    VideoFileName = 'Video.avi'
    SingleImageFile = 'Capture.bmp'
    CapTimeLimit = 0
    CapIndexSize = 0
    CapToFile = True
    BufferFileSize = 0
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 344
    Top = 96
  end
end
