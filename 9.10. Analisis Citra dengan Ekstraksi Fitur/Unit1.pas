unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, StdCtrls, Buttons, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Image1: TImage;
    BitBtn1: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    BitBtn2: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure OpenImage1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  gambar:Tbitmap; mampat:Tbitmap; akhir:Tbitmap; memo1:Tbitmap;

implementation

{$R *.dfm}






procedure TForm1.SpeedButton1Click(Sender: TObject);
{begin
Form2.show;}
var temp  : PByteArray;    i,j   : integer;    x     : byte;    digit : byte;
begin
   gambar := TBitmap.Create;
   gambar.LoadFromFile(OpenPictureDialog1.filename);
   Form1.Caption:='Image Processing - '+ExtractFileName(OpenPictureDialog1.Filename);
   if gambar.PixelFormat <> pf24bit then  gambar.PixelFormat := Pf24bit;
   Image1.Picture.Bitmap := gambar;
   gambar.SaveToFile('Gray_Scale.bmp');
   for j:=0 to gambar.Height-1 do
     begin
        temp := gambar.ScanLine[j];
        i:=0;
        repeat
          x :=round((0.11*temp[i])+(0.59*temp[i+1])+(0.3*temp[i+2]));
          for digit:=0 to 2 do
             temp[i+digit]:=x;
          inc(i,3);
        until i >= 3*gambar.Width-1;
     end;
    Image1.Picture.Bitmap := gambar;

end;

procedure TForm1.SpeedButton2Click(Sender: TObject);

const sobel : array[0..1,0..2,0..2] of smallint =
      (((-1,0,1),(-2,0,2),(-1,0,1)),
       ((-1,-2,-1),(0,0,0),(1,2,1)));
      prewitt : array[0..1,0..2,0..2] of smallint =
      (((-1,0,1),(-1,0,1),(-1,0,1)),
       ((-1,-1,-1),(0,0,0),(1,1,1)));

var row        : array[0..8] of pbytearray;
    col        : pbytearray;
    x,y        : smallint;
    i,j,k,p    : smallint;
    image      : tbitmap;
    sum,jum    : longint;

begin
 P:=-120;
 SpeedButton1.Click;
 image := tbitmap.Create;
 Image.Assign(gambar);
 for y:=1 to gambar.Height-2 do
  begin
   for i:=-1 to 1 do
      row[i+1]:= Image.ScanLine[y+i];
      col := gambar.ScanLine[y];
      x:=3;
   repeat
              sum := 0;
              for i:=-1 to 1 do
                for j:=-1 to 1 do
                  sum:=sum+(sobel[0,i+1,j+1]*row[i+1,x+j*3]);
              jum:=0;
              for i:=-1 to 1 do
                for j:=-1 to 1 do
                  jum:=jum+(sobel[1,i+1,j+1]*row[i+1,x+j*3]);
             sum := (sum + jum)+p;
             if sum>255 then sum:=255;
             if sum<0 then sum:=0;
            for k:=0 to 2 do col[x+k]:=sum;
         inc(x,3);
   until x>=3*(gambar.Width-4);
  end;
 Image1.Picture.bitmap := gambar;
 gambar.SaveToFile('Sobel1.bmp');
 Image.free;
end;


procedure TForm1.SpeedButton3Click(Sender: TObject);
{begin
Form3.Show;}
const konvolusi : array[0..1,0..2,0..2] of smallint =
      (((1,0,-1),(2,8,2),(1,0,-1)),
       ((0,0,0),(0,0,0),(0,0,0)));

var row        : array[0..8] of pbytearray;
    col        : pbytearray;
    x,y        : smallint;
    i,j,k,p    : smallint;
    image      : tbitmap;
    sum,jum    : longint;

begin
 P:=-120;
 image := tbitmap.Create;
 Image.Assign(gambar);
 for y:=1 to gambar.Height-2 do
  begin
   for i:=-1 to 1 do
      row[i+1]:= Image.ScanLine[y+i];
      col := gambar.ScanLine[y];
      x:=3;
   repeat
              sum := 0;
              for i:=-1 to 1 do
                for j:=-1 to 1 do
                  sum:=sum+(konvolusi[0,i+1,j+1]*row[i+1,x+j*3]);
              jum:=0;
              for i:=-1 to 1 do
                for j:=-1 to 1 do
                  jum:=jum+(konvolusi[1,i+1,j+1]*row[i+1,x+j*3]);
             sum := (sum + jum)+p;
             if sum>255 then sum:=255;
             if sum<0 then sum:=0;
            for k:=0 to 2 do col[x+k]:=sum;
         inc(x,3);
   until x>=3*(gambar.Width-4);
  end;
 Image1.Picture.bitmap := gambar;
 gambar.SaveToFile('Konvolusi1.bmp');
 Image.free;
end;


procedure TForm1.SpeedButton4Click(Sender: TObject);
{begin
Form4.show;}
const konvolusi : array[0..1,0..2,0..2] of real =
      (((0.25,0,0.25),(0.75,1.25,0.75),(0.25,0,0.25)),
       ((0.5,0,-0.5),(0.75,1.25,-0.75),(0.5,0,-0.5)));

var row        : array[0..8] of pbytearray;
    col        : pbytearray;
    x,y        : smallint;
    i,j,k,p    : smallint;
    image      : tbitmap;
    sum,jum    : longint;

begin
 P:=-120;
 image := tbitmap.Create;
 Image.Assign(gambar);
 for y:=1 to gambar.Height-2 do
  begin
   for i:=-1 to 1 do
      row[i+1]:= Image.ScanLine[y+i];
      col := gambar.ScanLine[y];
      x:=3;
   repeat
              sum := 0;
              for i:=-1 to 1 do
                for j:=-1 to 1 do
                  sum:=sum+round(konvolusi[0,i+1,j+1]*row[i+1,x+j*3]);
              jum:=0;
              for i:=-1 to 1 do
                for j:=-1 to 1 do
                  jum:=jum+round(konvolusi[1,i+1,j+1]*row[i+1,x+j*3]);
             sum := (sum + jum)+p;
             if sum>255 then sum:=255;
             if sum<0 then sum:=0;
            for k:=0 to 2 do col[x+k]:=sum;
         inc(x,3);
   until x>=3*(gambar.Width-4);
  end;
 Image1.Picture.bitmap := gambar;
 gambar.SaveToFile('Konvolusi2.bmp');
 Image.free;
end;


procedure TForm1.SpeedButton5Click(Sender: TObject);
{begin
Form5.Show;}
var temp,temp2  : PByteArray;
    i,j      : integer;
    x           : byte;
    digit       : byte;
begin
   gambar := TBitmap.Create;
   mampat := TBitmap.Create;
   gambar.LoadFromFile(OpenPictureDialog1.filename);
   mampat.assign(gambar);
   Form1.Caption:='Image Processing - '+ExtractFileName(OpenPictureDialog1.Filename);
   gambar.PixelFormat := Pf24bit;
   mampat.pixelformat:=pf8bit;
   gambar.SaveToFile('Kompresi_1.bmp');
   for j:=0 to gambar.Height-1 do
     begin
        temp := gambar.ScanLine[j];
        temp2 := mampat.Scanline[j];
        i:=0;x:=i;
        repeat
           for digit:=0 to 2 do
           temp2[x]:=round(temp[i+digit]*0.11);
          inc(i,3);x:=x+1;
        until i >= 3*gambar.Width-1;
     end;
      Image1.Picture.Bitmap := mampat;
     akhir := TBitmap.Create;
     akhir.assign(mampat);
   for j:=0 to akhir.Height-1 do
     begin
        temp2 := mampat.Scanline[j];
        temp := akhir.ScanLine[j];
        i:=0;x:=i;
        repeat
              if x< mampat.Width-1 then
               temp[i]:=round(temp2[x]);
             inc(i,1);x:=x+1;
        until i >= akhir.Width-1;
     end;
   Image1.Picture.Bitmap := akhir;
    akhir.SaveToFile('Ndra5Akhir.bmp');
end;


procedure TForm1.SpeedButton6Click(Sender: TObject);
{begin
form6.show;}
var temp,temp2  : PByteArray;
    i,j,a       : integer;
    x           : byte;
    digit       : byte;

begin
   gambar := TBitmap.Create;
   mampat := TBitmap.Create;
   gambar.LoadFromFile(OpenPictureDialog1.filename);
   mampat.assign(gambar);
   Form1.Caption:='Image Processing - '+ExtractFileName(OpenPictureDialog1.Filename);
   gambar.PixelFormat := Pf24bit;
   gambar.SaveToFile('Kompresi2.bmp');
   for j:=0 to gambar.Height-1 do
     begin
        temp := gambar.ScanLine[j];
        temp2 := mampat.Scanline[j];
        i:=0;x:=i;digit:=0;
        repeat
          temp2[x]:=round(0.25*(temp[i+digit]+temp[i-digit]+temp[i])/3);
          inc(i,3);x:=x+1;
        until i >= 3*gambar.Width-1;
     end;
     a:=round((gambar.Width-1)/3);
     mampat.pixelformat:=pf8bit;
     for j:=0 to gambar.Height-1 do
     begin
        temp := gambar.ScanLine[j];
        temp2 := mampat.Scanline[j];
        i:=0;x:=i;
        repeat
          temp[x]:=round(temp2[i]);
          inc(i,1);x:=x+1;
        until i >= a;
     end;
     gambar.PixelFormat := Pf8bit;
     Image1.Picture.Bitmap := gambar;
     gambar.SaveToFile('Kompresi2.Ndra');
end;


procedure TForm1.SpeedButton7Click(Sender: TObject);
{begin
Form7.show;}
var temp  : PByteArray;
    i,j   : integer;
    x     : byte;
begin
   gambar := TBitmap.Create;
   gambar.LoadFromFile(OpenPictureDialog1.filename);
   Form1.Caption:='Image Processing - '+ExtractFileName(OpenPictureDialog1.Filename);
   if gambar.PixelFormat <> pf24bit then  gambar.PixelFormat := Pf24bit;
   Image1.Picture.Bitmap := gambar;
   for j:=0 to gambar.Height-1 do
     begin
        temp := gambar.ScanLine[j];
        i:=0;
        repeat
          for x:=0 to 2 do
             temp[i+x]:=temp[i+x]-10;
          inc(i,3);
        until i >= 3*gambar.Width-1;
     end;
    Image1.Picture.Bitmap := gambar;
end;


procedure TForm1.SpeedButton8Click(Sender: TObject);
{begin
Form8.show;}
var temp  : PByteArray;
    i,j   : integer;
    x     : byte;
begin
   gambar := TBitmap.Create;
   gambar.LoadFromFile(OpenPictureDialog1.filename);
   Form1.Caption:='Image Processing - '+ExtractFileName(OpenPictureDialog1.Filename);
   if gambar.PixelFormat <> pf24bit then  gambar.PixelFormat := Pf24bit;
   Image1.Picture.Bitmap := gambar;
   gambar.SaveToFile('Invert1.bmp');
   for j:=0 to gambar.Height-1 do
     begin
        temp := gambar.ScanLine[j];
        i:=0;
        repeat
          for x:=0 to 2 do
             temp[i+x]:=not temp[i+x];
          inc(i,3);
        until i >= 3*gambar.Width-1;
     end;
    Image1.Picture.Bitmap := gambar;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
SpeedButton1.Enabled:=false;
SpeedButton2.Enabled:=false;
SpeedButton3.Enabled:=false;
SpeedButton4.Enabled:=false;
SpeedButton5.Enabled:=false;
SpeedButton6.Enabled:=false;
SpeedButton7.Enabled:=false;
SpeedButton8.Enabled:=false;
end;


procedure TForm1.Exit1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.OpenImage1Click(Sender: TObject);
begin
if not OpenPictureDialog1.Execute then exit else
    begin
        gambar := TBitmap.Create;
        gambar.LoadFromFile(OpenPictureDialog1.filename);
        Form1.Caption:='Image Processing - '+ExtractFileName(OpenPictureDialog1.Filename);
    end;
    Image1.Picture.Bitmap := gambar;
SpeedButton1.Enabled:=true;
SpeedButton2.Enabled:=true;
SpeedButton3.Enabled:=true;
SpeedButton4.Enabled:=true;
SpeedButton5.Enabled:=true;
SpeedButton6.Enabled:=true;
SpeedButton7.Enabled:=true;
SpeedButton8.Enabled:=true;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
if not OpenPictureDialog1.Execute then exit else
    begin
        gambar := TBitmap.Create;
        gambar.LoadFromFile(OpenPictureDialog1.filename);
        Form1.Caption:='Image Processing - '+ExtractFileName(OpenPictureDialog1.Filename);
    end;
    Image1.Picture.Bitmap := gambar;
SpeedButton1.Enabled:=true;
SpeedButton2.Enabled:=true;
SpeedButton3.Enabled:=true;
SpeedButton4.Enabled:=true;
SpeedButton5.Enabled:=true;
SpeedButton6.Enabled:=true;
SpeedButton7.Enabled:=true;
SpeedButton8.Enabled:=true;
end;

end.
