unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

    procedure Vector(x0,y0,a,l:integer);
    procedure DrawClock;

  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;

implementation
{$R *.dfm}

uses
DateUtils;

const
R=75 ;
var
x0,y0:integer;
ahr,amin,asec:integer;

procedure TForm1.FormCreate(Sender: TObject);
var
t:TDateTime;
begin
ClientHeight:=(R+30)*2;
ClientWidth:=(R+30)*2;
x0:=R+30;
y0:=R+30;

t:=Now();

ahr:=90-HourOf(t)*30-(MinuteOf(Today)div 12)*6;
amin:=90-MinuteOf(t)*6;
asec:=90-SecondOf(Today)*6;

Timer1.Interval:=1000;
Timer1.Enabled:=True;
end;

procedure TForm1.Vector(x0,y0: integer; a, l: integer);
const
GRAD=0.0174532;
var
x,y:integer;
begin
Canvas.MoveTo(x0,y0);
x:=Round(x0+l*cos(a*GRAD));
y:=Round(y0-l*sin(a*GRAD));
Canvas.LineTo(x,y);
end;

procedure TForm1.DrawClock;
var
t:TDateTime;
begin
Canvas.Pen.Color:=clBtnFace;
Canvas.Pen.Width:=3;
Vector(x0,y0,ahr,R-20);
Vector(x0,y0,amin,R-15);
Vector(x0,y0,asec,R-7);

t:=Now();

ahr:=90-HourOf(t)*30-(MinuteOf(t)div 12)*6;
amin:=90-MinuteOf(t)*6;
asec:=90-SecondOf(t)*6;

Canvas.Pen.Width:=3;
Canvas.Pen.Color:=clBlack;
Vector(x0,y0,ahr,R-20);

Canvas.Pen.Width:=2;
Canvas.Pen.Color:=clBlack;
Vector(x0,y0,amin,R-15);

Canvas.Pen.Width:=1;
Canvas.Pen.Color:=clRed;
Vector(x0,y0,asec,R-7);
end;

procedure TForm1.FormPaint(Sender: TObject);
var
x,y:integer;
a:integer;
h:integer;

bs:TBrushStyle;
pc:TColor;
pw:integer;

begin
bs:=Canvas.Brush.Style;
pc:=Canvas.Pen.Color;
pw:=Canvas.Pen.Width;

Canvas.Brush.Style:=bsClear;
Canvas.Pen.Width:=1;
Canvas.Pen.Color:=clBlack;

a:=0;
h:=3;

while a<360 do
begin
x:=x0+Round(R*cos(a*2*pi/360));
y:=x0-Round(R*sin(a*2*pi/360));
Form1.Canvas.MoveTo(x,y);
if (a mod 30)=0 then
 begin
 Canvas.Ellipse(x-2,y-2,x+3,y+3);
 x:=x0+Round((R+15)*cos(a*2*pi/360));
 y:=x0-Round((R+15)*sin(a*2*pi/360));
 Canvas.TextOut(x-5,y-7,IntToStr(h));
 dec(h);
 if h=0 then h:=12;
 end
  else Canvas.Ellipse(x-1,y-1,x+1,y+1);
  a:=a+6;
 end;
Canvas.Brush.Style:=bs;
Canvas.Pen.Width:=pw;
Canvas.Pen.Color:=pc;

DrawClock;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
DrawClock;
end;

end.

