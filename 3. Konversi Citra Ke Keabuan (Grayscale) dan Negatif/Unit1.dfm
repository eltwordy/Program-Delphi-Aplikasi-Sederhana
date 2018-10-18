object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Elemen Warna'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelPosisi: TLabel
    Left = 144
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Posisi'
  end
  object Label1: TLabel
    Left = 272
    Top = 40
    Width = 47
    Height = 13
    Caption = 'Merah (R)'
  end
  object Label2: TLabel
    Left = 480
    Top = 40
    Width = 41
    Height = 13
    Caption = 'Hijau (G)'
  end
  object Label3: TLabel
    Left = 672
    Top = 40
    Width = 34
    Height = 13
    Caption = 'Biru (B)'
  end
  object Image1: TImage
    Left = 48
    Top = 112
    Width = 385
    Height = 297
    OnMouseDown = Image1MouseDown
  end
  object ButtonMuatCitra: TButton
    Left = 48
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Muat Citra'
    TabOrder = 0
    OnClick = ButtonMuatCitraClick
  end
  object EditR: TEdit
    Left = 336
    Top = 40
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object EditG: TEdit
    Left = 528
    Top = 40
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object EditB: TEdit
    Left = 712
    Top = 40
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = 'EditB'
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 56
    Top = 120
  end
end
