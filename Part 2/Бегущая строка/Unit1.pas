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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{$R hbaner.res}

const
wb=350;
tp=500;
var
pic:TBitMap;
t:integer;
sRect,dRect:TRect;

procedure TForm1.FormCreate(Sender: TObject);
begin
pic:=TBitMap.Create;
pic.LoadFromResourceName(HInstance,'O');

dRect:=Bounds(0,0,wb,pic.height);
sRect:=Rect(0,0,tp,pic.height);

t:=0;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Canvas.CopyRect(dRect,pic.Canvas,sRect);
inc(t);
if t = tp
 then t:=0;
sRect:=Bounds(t,0,wb,pic.Height);
end;

end.
