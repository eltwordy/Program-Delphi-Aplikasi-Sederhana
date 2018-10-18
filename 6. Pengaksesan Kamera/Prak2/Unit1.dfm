object Form1: TForm1
  Left = 347
  Top = 124
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
  object LabelNamaFile: TLabel
    Left = 32
    Top = 72
    Width = 52
    Height = 13
    Caption = 'Frame.bmp'
  end
  object ButtonNamaFile: TButton
    Left = 32
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Nama File'
    TabOrder = 0
    OnClick = ButtonNamaFileClick
  end
  object ButtonSimpan: TButton
    Left = 120
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = ButtonSimpanClick
  end
  object VideoCap1: TVideoCap
    Left = 32
    Top = 96
    Width = 329
    Height = 241
    color = clBlack
    DriverOpen = False
    DriverIndex = -1
    VideoOverlay = False
    VideoPreview = False
    PreviewScaleToWindow = False
    PreviewScaleProportional = False
    PreviewRate = 30
    MicroSecPerFrame = 66667
    FrameRate = 15
    CapAudio = False
    VideoFileName = 'Video.avi'
    SingleImageFile = 'Capture.bmp'
    CapTimeLimit = 0
    CapIndexSize = 0
    CapToFile = True
    BufferFileSize = 0
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = 'bmp'
    Left = 248
    Top = 56
  end
end
