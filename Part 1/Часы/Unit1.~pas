unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
uses DateUtils;
{$R *.dfm}

const
stDay: array[1..7] of string[11]=('Воскресенье','Понедельник','Вторник','Среда','Четверг','Пятница','Суббота');
stMonth: array[1..12] of string[8]=('Января','Февраля','Марта','Апреля','Мая','Июня','Июля','Августа','Сентября','Октября','Ноября','Декабря');
var
hh:integer;
mm:integer;

procedure TForm1.FormCreate(Sender: TObject);
var
Present: TDateTime;
Year, Month, Day, Dw: Word;
begin
Present:=Now();
hh:=HourOf(Time);
Label1.Caption:=IntToStr(hh);

mm:=MinuteOf(Time);
Label2.Caption:=IntToStr(mm);

DecodeDate(Present, Year, Month, Day);
Dw:= DayOfWeek(Present);

Label4.Caption:=IntToStr(Day)+' '+stMonth[Month]+' '+IntToStr(Year)+' года, '+stDay[Dw];
Timer1.Interval:=1000;
Timer1.Enabled:=True;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
var
Time: TDateTime;
begin
Time:=Now();

if hh<>HourOf(Time) then
 begin
 hh:=HourOf(Time);
 Label1.Caption:=IntToStr(hh);
 end;

if mm<>MinuteOf(Time) then
 begin
 mm:=MinuteOf(Time);
 Label2.Caption:=IntToStr(mm);
 end;

Label3.Visible:= not Label3.Visible;

end;

end.
