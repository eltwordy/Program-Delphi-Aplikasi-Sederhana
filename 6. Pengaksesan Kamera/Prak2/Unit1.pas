unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtDlgs, Videocap;

type
  TForm1 = class(TForm)
    ButtonNamaFile: TButton;
    ButtonSimpan: TButton;
    LabelNamaFile: TLabel;
    SavePictureDialog1: TSavePictureDialog;
    VideoCap1: TVideoCap;
    procedure ButtonNamaFileClick(Sender: TObject);
    procedure ButtonSimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonNamaFileClick(Sender: TObject);
begin
if (SavePictureDialog1.Execute) then
    LabelNamaFile.Caption := SavePictureDialog1.FileName;
end;

procedure TForm1.ButtonSimpanClick(Sender: TObject);
begin
  VideoCap1.SingleImageFile := LabelNamaFile.Caption;
  VideoCap1.GrabFrameNoStop;
if VideoCap1.SaveAsDIB then
    ShowMessage('Frame tersimpan')
else
    ShowMessage('Gagal menyimpan')
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  VideoCap1.DriverIndex := 0;
  VideoCap1.DriverOpen := true;
  VideoCap1.VideoPreview := true;
end;


end.
