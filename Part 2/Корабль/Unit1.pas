unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
x,y:integer;

procedure Parohod(x,y:integer;mode:boolean);

const
dx=5;
dy=5;
var
p1:array[1..7] of TPoint;
p2:array[1..8] of TPoint;
pc,bc:TColor;
begin
if not mode then
begin
Form1.Canvas.Brush.Color:=clNavy;
Form1.Canvas.Pen.Color:=clNavy;
Form1.Canvas.Rectangle(x,y+1,x+17*dx,y-10*dy);
Form1.Canvas.Brush.Color:=clNavy;
if y-10*dy<80 then
 begin
 Form1.Canvas.Pen.Color:=clSkyBlue;
 Form1.Canvas.Brush.Color:=clSkyBlue;
 Form1.Canvas.Rectangle(x,y-10*dy,x+17*dx,80);
 end;
 exit;
end;

with Form1.Canvas do
begin
pc:=Pen.Color;
bc:=Brush.Color;

Pen.Color:=clBlack;
Brush.Color:=clWhite;
p1[1].x:=x;        p1[1].y:=y;
p1[2].x:=x;        p1[2].y:=y-2*dy;
p1[3].x:=x+10*dx;  p1[3].y:=y-2*dy;
p1[4].x:=x+11*dx;  p1[4].y:=y-3*dy;
p1[5].x:=x+17*dx;  p1[5].y:=y-3*dy;
p1[6].x:=x+14*dx;  p1[6].y:=y;
p1[7].x:=x;        p1[7].y:=y;
Polygon(p1);

p2[1].x:=x+3*dx;   p2[1].y:=y-2*dy;
p2[2].x:=x+4*dx;   p2[2].y:=y-3*dy;
p2[3].x:=x+4*dx;   p2[3].y:=y-4*dy;
p2[4].x:=x+13*dx;  p2[4].y:=y-4*dy;
p2[5].x:=x+13*dx;  p2[5].y:=y-3*dy;
p2[6].x:=x+11*dx;  p2[6].y:=y-3*dy;
p2[7].x:=x+10*dx;  p2[7].y:=y-2*dy;
p2[8].x:=x+3*dx;   p2[8].y:=y-2*dy;
Polygon(p2);
MoveTo(x+5*dx,y-3*dy);
LineTo(x+9*dx,y-3*dy);

Rectangle(x+8*dx,y-4*dy,x+11*dx,y-5*dy);

Rectangle(x+7*dx,y-4*dy,x+8*dx,y-7*dy);

Ellipse(x+11*dx,y-2*dy,x+12*dx,y-1*dy);
Ellipse(x+13*dx,y-2*dy,x+14*dx,y-1*dy);

MoveTo(x+10*dx,y-5*dx);
LineTo(x+10*dx,y-10*dx);

Pen.Color:=clWhite;
MoveTo(x+17*dx,y-3*dx);
LineTo(x+10*dx,y-10*dx);
LineTo(x,y-2*dx);
Pen.Color:=pc;
end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Parohod(x,y, False);
 if x<Form1.ClientWidth
  then x:=x+2
  else
   begin
   x:=0;
   y:=Random(50)+100;
   end;
Parohod(x,y, True);
end;


procedure TForm1.FormPaint(Sender: TObject);
begin
Canvas.Brush.Color:=clSkyBlue;
Canvas.Pen.Color:=clSkyBlue;
Canvas.Rectangle(0,0,ClientWidth,80);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
x:=0; y:=80;
Form1.Color:=clNavy;
Timer1.Interval:=50;
end;

end.
