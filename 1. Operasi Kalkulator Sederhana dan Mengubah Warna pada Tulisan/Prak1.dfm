object Form1: TForm1
  Left = 189
  Top = 246
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clMenuText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 480
    Top = 104
    Width = 161
    Height = 13
    Caption = 'Welcome To Universitas Kuningan'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 496
    Top = 160
    Width = 161
    Height = 13
    Caption = 'Welcome To Universitas Kuningan'
  end
  object Button1: TButton
    Left = 528
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Modifikasi'
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 160
    Top = 144
    Width = 185
    Height = 153
    Caption = 'GroupBox1'
    TabOrder = 1
    object RadioButton1: TRadioButton
      Left = 8
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Default'
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 48
      Width = 113
      Height = 17
      Caption = 'Kuning'
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 8
      Top = 72
      Width = 113
      Height = 17
      Caption = 'Hijau'
      TabOrder = 2
    end
    object RadioButton4: TRadioButton
      Left = 8
      Top = 96
      Width = 113
      Height = 17
      Caption = 'Biru'
      TabOrder = 3
    end
    object RadioButton5: TRadioButton
      Left = 8
      Top = 120
      Width = 113
      Height = 17
      Caption = 'Merah'
      TabOrder = 4
    end
  end
end
