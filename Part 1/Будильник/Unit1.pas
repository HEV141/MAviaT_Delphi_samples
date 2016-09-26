unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Label5Click(Sender: TObject);
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
i:integer;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
Label3.Caption:=IntToStr(i);
dec (i);
if i<0 then
 begin
 Timer2.Enabled:=False;
 Label2.Visible:=False;
 Label3.Visible:=False;
 Label4.Visible:=False;
 Label5.Visible:=True;
 end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
i:=StrToInt(Edit1.Text);
Edit1.Text:='';
Timer2.Enabled:=True;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
Label6.Caption:='Текущая дата: '+DateToStr(Now);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Label7.Caption:='Текущее время: '+TimeToStr(Time);
end;

procedure TForm1.Label5Click(Sender: TObject);
begin
close;
end;

end.
