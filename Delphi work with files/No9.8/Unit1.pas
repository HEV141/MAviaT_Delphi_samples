unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  tColor = (Red, Green, Yellow, Blue);
  tStr = (Wood, Metall, Cardboard);
  tCube = record
    ec: real;
    color: tColor;
    material: tStr
  end;

const
  aColor: array[Red..Blue] of string = ('Красный', 'Зелёный', 'Жёлтый', 'Синий');
  aStr: array[Wood..Cardboard] of string = ('Деревянный', 'Металлический', 'Картонный');

var
  x: tCube;
  f: file of tCube;
  bColor: array[Red..Blue] of integer;
  s:real;
  i:tColor;


implementation
{$R *.dfm}

procedure PutCube(var p:tCube);
var
  s1, s2: string;
begin
  Write(p.ec,', ');
    case p.color of
      Red: s1:=aColor[Red];
      Green: s1:=aColor[Green];
      Yellow: s1:=aColor[Yellow];
      Blue: s1:=aColor[Blue];
      else s1:='Error'
    end;
    case p.material of
      Wood: s2:=aStr[Wood];
      Metall: s2:=aStr[Metall];
      Cardboard: s2:=aStr[cardboard];
    else s2:='Error'
    end;
  Writeln(s1,', ',s2)
end;

begin
  Assign(f, 'fCube.bin');
  Reset(f);
  for i:=Red to Blue do bColor[i]:=0;
  s:=0;
  while (not Eof(f)) do
  begin
    Read(f,x);
    s:=s+x.ec*sqr(x.ec);
    case x.color of
    Red: Inc(bColor[Red]);
    Green: Inc(bColor[Green]);
    Yellow: Inc(bColor[Yellow]);
    Blue: Inc(bColor[Blue]);
    end
  end;
  Close(f);
  Writeln('Колличекство по цветам');
  for i:=Red to Blue do Writeln(aColor[i],' ',bColor[i]);
  Writeln('Суммарный объём',s:0:3);
end.

end.
