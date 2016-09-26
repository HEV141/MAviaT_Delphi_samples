unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormPaint(Sender: TObject);
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

procedure Truck(x,y:integer;mode:boolean);
const
dx=10;
dy=10;

var
p1:array[1..9] of TPoint;
p2:array[1..4] of TPoint;
p3:array[1..4] of TPoint;

begin
if not mode then
begin
Form1.Canvas.Brush.Color:=clYellow;
Form1.Canvas.Pen.Color:=clYellow;
Form1.Canvas.Rectangle(x,y,x*dx,y*dy);
Form1.Canvas.Brush.Color:=clYellow;
if y-18*dy<200 then
 begin
 Form1.Canvas.Pen.Color:=clSkyBlue;
 Form1.Canvas.Brush.Color:=clSkyBlue;
 Form1.Canvas.Rectangle(x,y-18*dy,x+20*dx,200);
 end;
 exit;
end;

with Form1.Canvas do
begin
y:=y-1*dy;

Pen.Color:=clBlack;
Brush.Color:=clGray;

p1[1].x:=x;          p1[1].y:=y;
p1[2].x:=x+20*dx;    p1[2].y:=y;
p1[3].x:=x+20*dx;    p1[3].y:=y-3*dy;
p1[4].x:=x+17*dx;    p1[4].y:=y-4*dy;
p1[5].x:=x+15*dx;    p1[5].y:=y-4*dy;
p1[6].x:=x+13*dx;    p1[6].y:=y-6*dy;
p1[7].x:=x+9*dx;     p1[7].y:=y-6*dy;
p1[8].x:=x+9*dx;     p1[8].y:=y-3*dy;
p1[9].x:=x;          p1[9].y:=y-3*dy;
Polygon(p1);

Pen.Color:=clBlack;
Brush.Color:=clTeal;
p2[1].x:=x+15*dx;    p2[1].y:=y-4*dy;
p2[2].x:=x+13*dx;    p2[2].y:=y-6*dy;
p2[3].x:=x+12*dx;    p2[3].y:=y-6*dy;
p2[4].x:=x+12*dx;    p2[4].y:=y-4*dy;
Polygon(p2);

Pen.Color:=clBlack;
Brush.Color:=clSilver;
p3[1].x:=x+11*dx;    p3[1].y:=y-1*dy;
p3[2].x:=x+11*dx;    p3[2].y:=y-7*dy;
p3[3].x:=x+12*dx;    p3[3].y:=y-8*dy;
p3[4].x:=x+12*dx;    p3[4].y:=y-1*dy;
Polygon(p3);

Rectangle(x+6*dx,y,x+11*dx,y-2*dy);
Rectangle(x+11*dx,y,x+20*dx,y-1*dy);

Pen.Color:=clBlack;
Brush.Color:=clBlack;

MoveTo(x+15*dx,y-4*dy);
LineTo(x+15*dx,y-2*dy);
LineTo(x+14*dx,y-1*dy);
MoveTo(x+12*dx,y-3*dy);
LineTo(x+13*dx,y-3*dy);

MoveTo(x,y);
Ellipse(x,y+1*dy,x+3*dx,y-2*dy);
Ellipse(x+3*dx,y+1*dy,x+6*dx,y-2*dy);
Ellipse(x+16*dx,y+1*dy,x+19*dx,y-2*dy);

Pen.Color:=clBlack;
Brush.Color:=clSilver;
MoveTo(x,y);
Ellipse(x+1*dx,y,x+2*dx,y-1*dy);
Ellipse(x+4*dx,y,x+5*dx,y-1*dy);
Ellipse(x+17*dx,y,x+18*dx,y-1*dy);

Pen.Color:=clBlack;
Brush.Color:=clRed;
Rectangle(x,y-2*dy,x+1*dx,y-3*dy);

Pen.Color:=clBlack;
Brush.Color:=clYellow;
Rectangle(x+19*dx,y-1*dy,x+20*dx,y-2*dy);

end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
x:=0;
y:=200;
Form1.Color:=clYellow;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Truck(x,y, False);
 if x<Form1.ClientWidth
  then x:=x+2
  else
   begin
   x:=0;
   end;
Truck(x,y, True);
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
Canvas.Brush.Color:=clSkyBlue;
Canvas.Pen.Color:=clSkyBlue;
Canvas.Rectangle(0,0,ClientWidth,200);
end;

end.
