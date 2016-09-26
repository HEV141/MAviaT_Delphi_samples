unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, XPMan;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Timer1: TTimer;
    Label3: TLabel;
    Button2: TButton;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    XPManifest1: TXPManifest;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  m,s:integer;
  m1,s1:string;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Label3.Visible:=True;
if s<10 then s1:='0'+IntToStr(s)
 else s1:=IntToStr(s);
if m<10 then m1:='0'+IntToStr(m)
 else m1:=IntToStr(m);
 Label3.Caption:=m1+':'+s1;
s:=s-1;
if s<0 then
 begin
 s:=59;
 m:=m-1;
 end;
Label1.Visible:=False;
Label2.Visible:=False;
UpDown1.Visible:=False;
UpDown2.Visible:=False;
Edit1.Visible:=False;
Edit2.Visible:=False;
Button1.Visible:=False;
Button2.Visible:=True;
if (m=-1) and (s=59) then
begin
Timer1.Enabled:=False;
ShowMessage('Время вышло.');
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
m:=StrToInt(Edit1.Text);
s:=StrToInt(Edit2.Text);
Timer1.Enabled:=True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Timer1.Enabled:=False;
end;

end.
