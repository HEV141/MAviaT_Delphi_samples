unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
var f:textfile;
    god:integer;
    name,naz,name1:string;
begin
name1:=edit1.Text;
memo1.Lines.Add('названия книг автора '+name1+' выпушенных до 2002 года');
assignfile(f,'Spisok.txt');
reset(f);
while not eof(f) do begin
readln(f,name);
readln(f,naz);
readln(f,god);
if(name1=name)and(god<2002)then memo1.Lines.Add(naz);
end;
closefile(f);
memo1.Lines.Add('книги с назвонием informatika');
reset(f);
while not eof(f) do begin
readln(f,name);
readln(f,naz);
readln(f,god);
if naz='informatika' then memo1.Lines.Add(name);
end;
closefile(f);
end;

procedure TForm1.Button2Click(Sender: TObject);
var f:textfile;
i:integer;
begin
assignfile(f,'Результат.txt');
rewrite(f);
for i:=1 to memo1.Lines.Count do
writeln(f,memo1.lines[i]);
closefile(f);
end;

end.
