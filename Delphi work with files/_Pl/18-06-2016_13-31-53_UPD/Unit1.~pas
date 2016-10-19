unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    Label10: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  all:integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var f:textfile;
    ec,i,j:integer;
    r,g,y,b,v,var1,var2:integer;
    cl,mt:string;
    L : TStringList;
begin
all:=0;
assignfile(f,'f.txt');
reset(f);
while not eof(f) do
  begin
    readln(f,ec);
    readln(f,cl);
    readln(f,mt);
    if cl='Красный' then inc(r);
    if cl='Зелёный' then inc(g);
    if cl='Жёлтый' then inc(y);
    if cl='Синий' then inc(b);
    v:=v+ec*ec*ec;
    if (ec=3) and (mt='Дерево') then inc(var1);
    if (ec>5) and (mt='Металл') then inc(var2);
    all:=all+3;
  end;
closefile(f);
StringGrid1.RowCount:=all+1;

L := TStringList.Create;
L.LoadFromFile('f.txt');
i:=0;
j:=1;
 while i < L.Count-1 do
    begin
       StringGrid1.Cells[0,j] := Copy(L[i],1,Pos(',',L[i])-1);
       StringGrid1.Cells[0,j] := Copy(L[i],Pos(',',L[i])+1,Length(L[i]));
       i:=i+1;

       StringGrid1.Cells[1,j] := Copy(L[i],1,Pos(',',L[i])-1);
       StringGrid1.Cells[1,j] := Copy(L[i],Pos(',',L[i])+1,Length(L[i]));
       i:=i+1;

       StringGrid1.Cells[2,j] := Copy(L[i],1,Pos(',',L[i])-1);
       StringGrid1.Cells[2,j] := Copy(L[i],Pos(',',L[i])+1,Length(L[i]));
       i:=i+1;
       j:=j+1;
    end;
  L.Free;

Edit1.Text:=IntTostr(r);
Edit2.Text:=IntTostr(g);
Edit3.Text:=IntTostr(y);
Edit4.Text:=IntTostr(b);
Edit5.Text:=IntTostr(v);
Edit6.Text:=IntTostr(var1);
Edit7.Text:=IntTostr(var2);
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
StringGrid1.FixedCols:=0;
StringGrid1.ColCount:=3;
StringGrid1.Cells[0,0]:='Ребро';
StringGrid1.Cells[1,0]:='Цвет';
StringGrid1.Cells[2,0]:='Материал';
end;


end.
