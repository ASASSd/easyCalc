unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, ComCtrls, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ProgressBar1: TProgressBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  ans1, ans2:string;
  a, b, c, d, sqrtD, x1, x2:real;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
a:=strtofloat(edit1.text);
b:=strtofloat(edit2.text);
c:=strtofloat(edit3.text);
d:=b*b-4*a*c;
ProgressBar1.Position:=30;
sysutils.sleep(500);
label8.Visible:=true;
if d < 0 then
begin
button2.visible:=true;
label8.caption:='Error - discriminant is lower than 0. Press [RESET]';
exit;
end;
label9.caption:=floattostr(d);
sqrtD:=sqrt(d);
progressbar1.Position:=66;
sysutils.sleep(500);
x1:=(-b+sqrtd)/2*a;
x2:=(-b-sqrtd)/2*a;
progressbar1.Position:=100;
ans1:=floattostr(x1);
ans2:=floattostr(x2);
label4.visible:=true;
Label5.Caption:=ans1;
Label6.visible:=true;
Label7.Caption:=ans2;
button2.visible:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
label8.caption:='D = ';
label8.visible:=false;
edit1.clear;
edit2.clear;
edit3.clear;
button2.visible:=false;
a:=0;
b:=0;
c:=0;
d:=0;
sqrtD:=0;
x1:=0;
x2:=0;
progressbar1.position:=0;
label5.caption:='    ';
label7.caption:='    ';
label9.caption:='    ';
label4.visible:=false;
label6.visible:=false;
end;


end.

