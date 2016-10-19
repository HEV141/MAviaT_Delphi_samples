program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  tColor = (Red, Green, Yellow, Blue);
  tStr = (Wood, Metall, Cardboard);
  tCube = record
    ec: real;
    color: tColor;
    material: tStr
  end;

const
  aColor: array[Red..Blue] of string = ('red', 'green', 'yellow', 'blue');
  aStr: array[Wood..Cardboard] of string = ('wood', 'metall', 'cardboard');

procedure PutCube(var p: tCube);
var
  s1, s2: string;
begin
    Write(p.ec,', ');
    case p.color of
    Red: s1:=aColor[Red];
    Green: s1:=aColor[Green];
    Yellow: s1:=aColor[Yellow];
    Blue: s1:=aColor[Blue];
    else s1:='Err'
    end;
    case p.material of
    Wood: s2:=aStr[Wood];
    Metall: s2:=aStr[Metall];
    Cardboard: s2:=aStr[cardboard];
    else s2:='Err'
    end;
    Writeln(s1,', ',s2)
end;

var
  x: tCube;
  f: file of tCube;
  bColor: array[Red..Blue] of integer;
  s:real;
  i:tColor;

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
  Writeln('Numbers by colors');
  for i:=Red to Blue do Writeln(aColor[i],' ',bColor[i]);
  Writeln('Volume ',s:0:2,' sq.m.');

readln;
end.
