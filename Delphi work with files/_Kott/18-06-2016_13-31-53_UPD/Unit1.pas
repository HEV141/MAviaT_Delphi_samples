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
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
memo1.Lines.Add('----Список книг-----');
assignfile(f,'Spisok.txt');
reset(f);
while not eof(f) do
  begin
    readln(f,name);
    readln(f,naz);
    readln(f,god);
    memo1.Lines.Add(name+' '+naz+' '+IntToStr(god));
  end;
closefile(f);
end;

procedure TForm1.Button2Click(Sender: TObject);
var f:textfile;
i:integer;
begin
assignfile(f,'Результат.txt');
rewrite(f);
for i:=0 to memo1.Lines.Count do
writeln(f,memo1.lines[i]);
closefile(f);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Memo1.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
var f:textfile;
    god:integer;
    name,naz,name1:string;
begin
name1:=edit1.Text;
assignfile(f,'Spisok.txt');
reset(f);
while not eof(f) do
  begin
    readln(f,name);
    readln(f,naz);
    readln(f,god);
    if name1=name then
      begin
      memo1.Clear;
      memo1.Lines.Add('Результаты поиска по автору: '+name+#13#10+' '+naz+' '+IntToStr(god));
      end;
  end;
closefile(f);
end;

end.
