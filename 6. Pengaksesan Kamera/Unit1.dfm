object Form1: TForm1
  Left = 73
  Top = 179
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object LabelDriverKamera: TLabel
    Left = 56
    Top = 112
    Width = 75
    Height = 13
    Caption = 'Driver Kamera :'
  end
  object LabelFormatVideo: TLabel
    Left = 56
    Top = 136
    Width = 70
    Height = 13
    Caption = 'Format Video :'
  end
  object ButtonPreview: TButton
    Left = 48
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Preview'
    TabOrder = 0
    OnClick = ButtonPreviewClick
  end
  object ButtonFormat: TButton
    Left = 136
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Format'
    TabOrder = 1
    OnClick = ButtonFormatClick
  end
  object ButtonDisplay: TButton
    Left = 224
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Display'
    TabOrder = 2
    OnClick = ButtonDisplayClick
  end
  object CheckBoxScale: TCheckBox
    Left = 56
    Top = 176
    Width = 137
    Height = 17
    Caption = 'PreviewScale to Window'
    TabOrder = 3
    OnClick = CheckBoxScaleClick
  end
  object CheckBoxProportional: TCheckBox
    Left = 56
    Top = 200
    Width = 145
    Height = 17
    Caption = 'PreviewScale Proportional'
    TabOrder = 4
    OnClick = CheckBoxProportionalClick
  end
  object EditFps: TEdit
    Left = 224
    Top = 176
    Width = 25
    Height = 21
    TabOrder = 5
    Text = '15'
  end
  object UpDownFps: TUpDown
    Left = 249
    Top = 176
    Width = 16
    Height = 21
    Associate = EditFps
    Min = 1
    Max = 30
    Position = 15
    TabOrder = 6
    OnClick = UpDownFpsClick
  end
  object VideoCap1: TVideoCap
    Left = 56
    Top = 224
    Width = 320
    Height = 240
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
    CapAudio = True
    VideoFileName = 'Video.avi'
    SingleImageFile = 'Capture.bmp'
    CapTimeLimit = 0
    CapIndexSize = 0
    CapToFile = True
    BufferFileSize = 0
    OnStatus = VideoCap1Status
  end
end
