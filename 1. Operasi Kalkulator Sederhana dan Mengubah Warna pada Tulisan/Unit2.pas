unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
VAR A,B,C:INTEGER;
begin
A:=StrtoInt(Edit1.Text);
B:=StrtoInt(Edit2.Text);
C:=A+B;

Edit3.Text:=InttoStr(C);

end;

procedure TForm2.Button2Click(Sender: TObject);

VAR A,B,C:INTEGER;
begin
A:=StrtoInt(Edit1.Text);
B:=StrtoInt(Edit2.Text);
C:=A*B;

Edit3.Text:=InttoStr(C);

end;

procedure TForm2.Button3Click(Sender: TObject);

VAR A,B,C:INTEGER;
begin
A:=StrtoInt(Edit1.Text);
B:=StrtoInt(Edit2.Text);
C:=A-B;

Edit3.Text:=InttoStr(C);

end;


procedure TForm2.Button4Click(Sender: TObject);
VAR A,B,C:double;
begin
A:=Strtofloat(Edit1.Text);
B:=Strtofloat(Edit2.Text);
C:=A/B;
Edit3.Text:=floattoStr(C);
end;

end.
