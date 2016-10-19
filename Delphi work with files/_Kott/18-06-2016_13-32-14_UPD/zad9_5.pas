unit zad9_5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;
  f: TextFile;
  posled : array [0..100] of integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  memo2.Clear;
  Edit1.Clear;
  AssignFile(f, 'chisla.txt');
{$I-}
  Reset(f);
{$I+}
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseFile(f);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  max, min : integer;
  max_i, min_i : Integer;
  i, j : integer;
  sum : integer;
  num : string;
  N:integer;
begin
Memo2.Lines.LoadFromFile('chisla.txt');
edit1.Text:=IntToStr(Memo2.Lines.Count);
N:=strtoint(edit1.Text);

  i := 0;
  j := 0;

  sum := 0;

  reset(f);

  readln(f, num);
  posled[i] := StrToInt(num);

  max := posled[i];
  min := posled[i];

  max_i := i;
  min_i := i;

  Inc(i);

  while not EOF(f) do
  begin
    readln(f, num);
    posled[i] := StrToInt(num);

    if posled[i] > max then
    begin
      max := posled[i];
      max_i := i
    end;

    if posled[i] < min then
    begin
      min := posled[i];
      min_i := i;
    end;

    Inc(i);
  end;
  
  Memo1.Lines.Add('Минимальный элемент = ' + IntToStr(min));
  Memo1.Lines.Add('Максимальный элемент = ' + IntToStr(max));

  if max_i > min_i then
    for j := min_i to max_i do
    begin
      sum := sum + posled[j];
      Memo1.Lines.Add(IntToStr(j + 1) + ': ' + IntToStr(posled[j]));
    end else
    for j := min_i downto max_i do
    begin
      sum := sum + posled[j];
      Memo1.Lines.Add(IntToStr(j + 1) + ': ' + IntToStr(posled[j]));
    end;
Memo1.Lines.Add('Сумма последовательности = ' + IntToStr(sum));
end;
end.
