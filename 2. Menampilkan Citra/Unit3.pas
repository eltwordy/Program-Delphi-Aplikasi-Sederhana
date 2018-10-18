unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, ExtCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Button2: TButton;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  LebarAwal:integer;
  TinggiAwal:integer;
  TinggiSemula:integer;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
LebarAwal:=Image1.Width;
TinggiAwal:=Image1.Height;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
if(OpenPictureDialog1.Execute)then
begin
Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
Image1.Center:=CheckBox1.Checked;
end;

procedure TForm3.CheckBox2Click(Sender: TObject);
begin
Image1.Stretch:=CheckBox2.Checked;
end;

procedure TForm3.CheckBox3Click(Sender: TObject);
begin
Image1.Proportional:=CheckBox3.Checked;
end;

procedure TForm3.CheckBox4Click(Sender: TObject);
begin
Image1.AutoSize:=CheckBox4.Checked;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Image1.AutoSize:=false;
CheckBox4.Checked:=false;
Image1.Width:=LebarAwal;
Image1.Height:=TinggiAwal;
end;

end.
