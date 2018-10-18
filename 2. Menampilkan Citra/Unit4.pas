unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, ExtCtrls, Menus;

type
  TForm4 = class(TForm)
    MainMenu1: TMainMenu;
    FILE1: TMenuItem;
    PROSES1: TMenuItem;
    MUATCITRACTRLO1: TMenuItem;
    EXITCTRLE1: TMenuItem;
    CENTER1: TMenuItem;
    STRETCH1: TMenuItem;
    PROPORTIONAL1: TMenuItem;
    AUTOSIZE1: TMenuItem;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure MUATCITRACTRLO1Click(Sender: TObject);
    procedure CENTER1Click(Sender: TObject);
    procedure PROPORTIONAL1Click(Sender: TObject);
    procedure STRETCH1Click(Sender: TObject);
    procedure AUTOSIZE1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EXITCTRLE1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  LebarAwal:integer;
  TinggiAwal:integer;
  TinggiSemula:integer;

implementation

{$R *.dfm}

procedure TForm4.MUATCITRACTRLO1Click(Sender: TObject);
begin
if(OpenPictureDialog1.Execute)then
begin
Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end
end;

procedure TForm4.CENTER1Click(Sender: TObject);
begin
Image1.Center:=TRUE;
end;

procedure TForm4.PROPORTIONAL1Click(Sender: TObject);
begin
Image1.Proportional:=TRUE;
end;

procedure TForm4.STRETCH1Click(Sender: TObject);
begin
Image1.Stretch:=TRUE;
end;

procedure TForm4.AUTOSIZE1Click(Sender: TObject);
begin
Image1.AutoSize:=TRUE;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
LebarAwal:=Image1.Width;
TinggiAwal:=Image1.Height;
end;

procedure TForm4.EXITCTRLE1Click(Sender: TObject);
begin
close;
end;

end.
