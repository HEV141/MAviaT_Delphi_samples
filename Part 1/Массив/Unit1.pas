unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
StringGrid1.RowCount:=StringGrid1.RowCount+1;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
StringGrid1.RowCount:=StringGrid1.RowCount-1;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
StringGrid1.ColCount:=StringGrid1.ColCount+1;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
StringGrid1.ColCount:=StringGrid1.ColCount-1;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
StringGrid1.FixedRows:=StringGrid1.FixedRows+1;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
StringGrid1.FixedRows:=StringGrid1.FixedRows-1;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
StringGrid1.FixedCols:=StringGrid1.FixedCols+1;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
StringGrid1.FixedCols:=StringGrid1.FixedCols-1;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Form1.Close
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
r,c:integer;
begin
Randomize;
for c:=0 to StringGrid1.ColCount-1 do
 for r:=0 to StringGrid1.RowCount-1 do
  begin
  StringGrid1.Cells[c,r]:=IntToStr(C)+' ; '+IntToStr(r);
  end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
r,c:integer;
begin
for c:=0 to StringGrid1.ColCount-1 do
 for r:=0 to StringGrid1.RowCount-1 do
  begin
  StringGrid1.Cells[c,r]:='';
  end;
end;

end.
