unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    btn1: TButton;
    lbl1: TLabel;
    lbl3: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    StringGrid1: TStringGrid;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var f,f2,g:TextFile;
    name,qua: Array[0 .. 100] of Integer;
    i,a,tmp:Integer;
    L : TStringList;
begin
  try
     AssignFile(f,'f1.txt');
     Reset(f);
     AssignFile(f2,'f2.txt');
     Reset(f2);
     AssignFile(g,'g.txt');
     Rewrite(g);
     i:=0;
     while not(Eof(f)) do
     begin
        Readln(f,name[i]);
        Readln(f,qua[i]);
        i:=i+1;
      end;
      i:=0;
     while not(Eof(f2)) do
     begin
        Readln(f2,tmp);
        Readln(f2,tmp);
        qua[i]:=qua[i]+tmp;
        i:=i+1;
      end;
      for a:=0 to i-1 do
      begin
        Writeln(g,name[a]);
        Writeln(g,qua[a]);
      end;
     CloseFile(f);
     CloseFile(f2);
     CloseFile(g);
     lbl3.Caption := '������!';
except
       MessageDlg('�� ������� ������� ����!',mtError,[mbCancel],0);
end;
Memo1.Lines.LoadFromFile('f1.txt');
Memo2.Lines.LoadFromFile('f2.txt');
Memo3.Lines.LoadFromFile('g.txt');

StringGrid1.FixedCols:=0;
StringGrid1.FixedRows:=1;
StringGrid1.ColCount:=3;
StringGrid1.RowCount:=8;
StringGrid1.Cells[0,0]:='���. ����.';
StringGrid1.Cells[1,0]:='�������';
StringGrid1.Cells[2,0]:='�����';


L := TStringList.Create;
L.LoadFromFile('f1.txt');
 For I := 0 To L.Count-1 Do
    Begin
       StringGrid1.Cells[0,i+1] := Copy(L[i],1,Pos(',',L[i])-1);
       StringGrid1.Cells[0,i+1] := Copy(L[i],Pos(',',L[i])+1,Length(L[i]));
    End;
  L.Free;

L := TStringList.Create;
L.LoadFromFile('f2.txt');
 For I := 0 To L.Count-1 Do
    Begin
       StringGrid1.Cells[1,i+1] := Copy(L[i],1,Pos(',',L[i])-1);
       StringGrid1.Cells[1,i+1] := Copy(L[i],Pos(',',L[i])+1,Length(L[i]));
    End;
  L.Free;

L := TStringList.Create;
L.LoadFromFile('g.txt');
 For I := 0 To L.Count-1 Do
    Begin
       StringGrid1.Cells[2,i+1] := Copy(L[i],1,Pos(',',L[i])-1);
       StringGrid1.Cells[2,i+1] := Copy(L[i],Pos(',',L[i])+1,Length(L[i]));
    End;
  L.Free;
end;
end.
