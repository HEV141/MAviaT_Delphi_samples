unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    Label2: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:array[1..10] of char;
  j,k,b,i:integer;

implementation

{$R *.dfm}

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
Label2.Visible:= not Label2.Visible;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Randomize;
for i:=1 to 10 do
begin
a[i]:=chr(random(31)+192);
StringGrid1.Cells[i-1,0]:=a[i];
end;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
for i:=1 to 10 do
begin
StringGrid1.Cells[i-1,0]:='0';
StringGrid2.Cells[i-1,0]:='0';
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
for i:=1 to 10 do
begin
StringGrid1.Cells[i-1,0]:='0';
StringGrid2.Cells[i-1,0]:='0';
end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
k,m,t:integer;
begin
t:=0;
for k:=9 downto 0 do
for m:=0 to 9 do
 begin
 if a[m]>a[m+1] then
  begin
  t:=ord(a[m]);
  a[m]:=a[m+1];
  a[m+1]:=chr(t);
  end;
 end;
for k:=0 to 9 do
begin
StringGrid2.Cells[k,0]:=a[k];
end;
end;

end.
