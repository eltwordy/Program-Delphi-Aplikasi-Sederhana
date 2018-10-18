unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, StdCtrls, ExtCtrls;
const
MARK_STRING_LENGTH=5;
MARK_STRING ='harum';
MAX_CHAR_COUNT=100;
MAX_BITS_COUNT=
(MAX_CHAR_COUNT+MARK_STRING_LENGTH)*8;

type
    Bits= array [1..MAX_BITS_COUNT] of byte;
    TForm1 = class(TForm)
    Bevel1: TBevel;
    Image1: TImage;
    Opd: TOpenPictureDialog;
    Memo1: TMemo;
    ButtonTampilkanPesan: TButton;
    Button2: TButton;
    ButtonBukaFile: TButton;
    ButtonAbout: TButton;
    Spd: TSavePictureDialog;
    procedure ButtonTampilkanPesanClick(Sender: TObject);
    procedure ButtonBukaFileClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);



  private
    { Private declarations }
    function ReverseBits(const bits:String):String;
    function BytesToBits(const data:String):AnsiString;
    function BitsToBytes(const bits:AnsiString):String;

    procedure EmbedToBMP(const Data:String; Bitmap, SaveTo:TBitmap);
    function ReadFromBMP(const Bitmap:TBitmap; const internal:Boolean=False):String;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function TForm1.BytesToBits(const data:String):AnsiString;
var
bit,b:Byte;
i,j:integer;
tmp:String;
count:Integer;
ans:AnsiString;

begin
if Data=''then
begin
ShowMessage('Data masih kosong.');
exit;
end;
tmp:=MARK_STRING+Data;
SetLength(ans, MAX_BITS_COUNT);
for i:=1 to MAX_BITS_COUNT do
ans[i]:='0';
count:=0;
for i:=1 to length(tmp) do
begin
b:=ord(tmp[i]);
  for j:=0 to 7 do
  begin
    bit:=(b shr j) and 1;
    ans[count+1]:= IntToStr(bit)[1];
    inc(count);
    end;
    end;
    Result:=Ans;
    end;

    procedure TForm1.EmbedToBmp(const Data:String; Bitmap, SaveTo:TBitmap);
    var
    bs:AnsiString;
    pix:TColor;
    i,j:integer;
    count:Word;
    bmp:TBitmap;
begin
  bs:=BytesToBits(data);
  SaveTo.Assign(bitmap);

  SaveTo.Canvas.Lock;
  count:=1;
  for i:=0 to SaveTo.Height-1 do
  begin
    if count>MAX_BITS_COUNT then
    break;
    for j:=0 to SaveTo.Width-1 do
    begin
    pix:=SaveTo.Canvas.Pixels[j,i];
    if count>MAX_BITS_COUNT then
    break;

  if bs[count]='l' then
  pix:=pix or $00000001
  else
  pix:=pix and $FFFFFFFE;
  inc(count);
  SaveTo.Canvas.Pixels[j,i]:=pix
  end;
  end;
  SaveTo.Canvas.Unlock;
  end;

  function TForm1.ReadFromBMP(const Bitmap:TBitmap; const internal:Boolean=False):String;
  var
  bs:AnsiString;
  pix:Byte;
  i,j:integer;
  count:Word;
  mark:String;
begin
  SetLength(bs,MAX_BITS_COUNT);
  bitmap.Canvas.Lock;
  count:=1;
  for i:=0 to bitmap.Height-1 do
  begin
  if count>MAX_BITS_COUNT then
  break;
  for j:=0 to bitmap.Width-1 do
  begin
  if count>MAX_BITS_COUNT then
  break;
  pix:=Bitmap.Canvas.Pixels[j,i];
  pix:=pix and $00000001;
  bs[count]:=IntToStr(pix)[1];
  inc(count);
  end;
  end;
  bitmap.Canvas.Unlock;
  Result:=BitsToBytes(bs);
  if InterNal then
  exit; //internal use. jangan cek lagi valid atau tidak
  mark:=copy (Result,1,length(MARK_STRING));
  if mark=MARK_STRING then
  Delete(Result, 1, length(MARK_STRING))
  else
  begin

  Result:='Warning.'+#13#10+'Tidak ada Data ey.';
  end
  end;
  function TForm1.BitsToBytes(const bits:AnsiString):String;
  var
  tmp:String;j:integer;
  bit, b:byte;
  str8:String;
begin
  tmp:=Bits;
  Result:='';
  while Length(tmp)>0 do
  begin
  str8:=copy(tmp,1,8);
  Delete(tmp,1,8);
  str8:=ReverseBits(str8);
  b:=0;
  for j:=1 to 8 do
  begin
  if str8[j]='l' then
  bit:=1
  else
  bit:=0;
  b:=(b shl 1) or bit;
  end;
  Result:=Result+chr(b);
  end;
  end;

  function TForm1.ReverseBits(const bits:String):String;
  var
  i:integer;
  begin
    if length(bits)<>8 then
    exit;
    Result:=Bits;
    for i:=1 to 8 do
    Result[8-(i-1)]:=Bits[i];
    end;


procedure TForm1.ButtonTampilkanPesanClick(Sender: TObject);
begin
Memo1.Text:=ReadFromBmp(Image1.Picture.Bitmap);
end;

procedure TForm1.ButtonBukaFileClick(Sender: TObject);
var
ok:Boolean;
begin
OK:=False;
if opd.Execute then
begin
  With TBitmap.Create do
  begin
  try
  LoadFromFile(opd.FileName);
  if(width*height)<=MAX_BITS_COUNT then
  begin
    MessageBox(handle,'Gambar harus Bitmap berdimensi minimal 100*100 pixel.','Error',MB_ICONHAND);
    exit;
    end;
    ok:=True;
    except
    Free;
    end;
    end;
    end;
    if OK then
    Image1.Picture.LoadFromFile(opd.FileName);
    end;




procedure TForm1.Button2Click(Sender: TObject);
var
fn:String;
bmp:TBitmap;
begin
//cek dulu dengan pemanggilan internal
if MARK_STRING=copy(ReadFromBMP(Image1.Picture.Bitmap,true),1, length(MARK_STRING))then
begin
//sudah menyimpan data, tampil pesan.
MessageBox(handle,'Pesan Sudah Ada! Silahkan Masukan Gambar lain.','ERROR',MB_ICONHAND);
exit;
end;
if spd.Execute then
  fn:=spd.FileName
  else
  fn:='c:\SecretPicture.bmp';
  bmp:=TBitmap.Create;
  EmbedToBMP(memo1.text, image1.Picture.Bitmap,Bmp);
  bmp.SaveToFile(fn);
  bmp.Free;
  end;

  {
function TForm1.ReadFromBMP(const Bitmap:TBitmap; const internal:Boolean=False):String;
begin
  SetLength(bs,MAX_BITS_COUNT);
  bitmap.Canvas.Lock;
  count:=1;
  for i:=0 to bitmap.Height-1 do
  begin
  if count>MAX_BITS_COUNT then
  break;
  for j:=0 to bitmap.Height-1 do
  begin
    if count>MAX_BITS_COUNT then
    break;
    for j:=0 to bitmap.Width-1 do
    begin
    if count>MAX_BITS_COUNT then
    break;
    pix:=Bitmap.Canvas.Pixels[j,i];
    pix:=pix and $00000001;
    bs[count]:=IntToStr(pix)[1];
    inc(count);
  end;
  end;

  bitmap.Canvas.Unlock;
  Result:=BitsToBytes(bs);
  if InterNal then
  exit; //internal use. jangan cek lagi valid atau tidak
  mark=copy(Result,l,length(MARK_STRING));
  if mark= MARK_STRING then
  Delete(Result,l,length(MARK_STRING))
  else
  begin
  Result:='Warning.'+#13#10+'Tidak ada Data euy.';
  end
  end;
  }




end.
