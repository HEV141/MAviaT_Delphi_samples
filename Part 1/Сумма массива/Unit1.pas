unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Buttons;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
N=5;
var
  Form1: TForm1;
  i,sum:integer;
  ar:array[1..N] of integer;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
sum:=0;
for i:=1 to N do
ar[i]:=StrToInt(StringGrid1.Cells[i-1,0]);
for i:=1 to N do
sum:=sum+ar[i];
label1.Caption:='Сумма массива: '+IntToStr(sum);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
for i:=0 to N-1 do StringGrid1.Cells[i,0]:='0';
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
for i:=0 to N-1 do StringGrid1.Cells[i,0]:='0';
label1.Caption:='Сумма массива: '+IntToStr(sum);
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.StringGrid1Click(Sender: TObject);
begin
sum:=0;
if CheckBox1.Checked then BitBtn1Click(Sender);
end;

end.
