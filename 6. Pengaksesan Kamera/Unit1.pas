unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Videocap, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    ButtonPreview: TButton;
    ButtonFormat: TButton;
    ButtonDisplay: TButton;
    LabelDriverKamera: TLabel;
    LabelFormatVideo: TLabel;
    CheckBoxScale: TCheckBox;
    CheckBoxProportional: TCheckBox;
    EditFps: TEdit;
    UpDownFps: TUpDown;
    VideoCap1: TVideoCap;
    procedure ButtonPreviewClick(Sender: TObject);
    procedure ButtonFormatClick(Sender: TObject);
    procedure ButtonDisplayClick(Sender: TObject);
    procedure CheckBoxScaleClick(Sender: TObject);
    procedure CheckBoxProportionalClick(Sender: TObject);
    procedure UpDownFpsClick(Sender: TObject; Button: TUDBtnType);
    procedure VideoCap1Status(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure Info;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  LebarVideo, TinggiVideo, Bpp, UkuranVideo: integer;

implementation
{$R *.dfm}
  procedure TForm1.Info;
  begin
    LebarVideo := VideoCap1.BitMapInfoHeader.biWidth;
    TinggiVideo := VideoCap1.BitMapInfoHeader.biHeight;
    Bpp := VideoCap1.BitMapInfoHeader.biBitCount;

    UkuranVideo := VideoCap1.BitMapInfoHeader.biSizeImage;
    LabelFormatVideo.Caption := 'Format video:'+IntToStr(LebarVideo)+'x'+IntToStr(TinggiVideo)+
    ','+IntToStr(Bpp)+'bit('+IntToStr(UkuranVideo)+'byte/frame)';
    end;

   




procedure TForm1.ButtonPreviewClick(Sender: TObject);
begin
VideoCap1.VideoPreview :=not VideoCap1.VideoPreview;
end;

procedure TForm1.ButtonFormatClick(Sender: TObject);
begin
if (VideoCap1.HasDlgFormat)then
VideoCap1.DlgVFormat
else
ShowMessage('Driver tidak memiliki dialog Format');
end;

procedure TForm1.ButtonDisplayClick(Sender: TObject);
begin
if(VideoCap1.HasDlgDisplay)then
VideoCap1.DlgVDisplay
else
ShowMessage('Driver tidak memiliki dialog Display');
end;

procedure TForm1.CheckBoxScaleClick(Sender: TObject);
begin
VideoCap1.PreviewScaleToWindow :=CheckBoxScale.Checked;
end;

procedure TForm1.CheckBoxProportionalClick(Sender: TObject);
begin
VideoCap1.PreviewScaleProportional:=CheckBoxProportional.Checked;
end;

procedure TForm1.UpDownFpsClick(Sender: TObject; Button: TUDBtnType);
var AllowChange: Boolean;
begin
    VideoCap1.PreviewRate := StrToInt(EditFps.Text);
end;

procedure TForm1.VideoCap1Status(Sender: TObject);
begin
Info;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 VideoCap1.DriverIndex := 0;
      LabelDriverKamera.Caption :='Driver kamera:'+
      VideoCap1.DriverName;
      VideoCap1.DriverOpen :=true;
      Info;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
VideoCap1.Width:= Width-VideoCap1.Left-18;
VideoCap1.Height:= Height-VideoCap1.Top-42;
end;

end.
