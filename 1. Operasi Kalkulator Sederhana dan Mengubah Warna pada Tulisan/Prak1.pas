unit Prak1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

if RadioButton1.checked then label2.Font.Color:=clblack else
if RadioButton2.checked then label2.Font.Color:=clyellow else
if RadioButton3.checked then label2.Font.Color:=clgreen else
if RadioButton4.checked then label2.Font.Color:=clblue   else
{if RadioButton6.checked then label2.Font.Color:=clyellow   else}
if RadioButton5.checked then label2.Font.Color:=clred;



end;

end.
