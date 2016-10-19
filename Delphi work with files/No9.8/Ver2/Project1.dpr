program Project1;

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
  aColor: array[Red..Blue] of string = ('red','green','yellow','blue');
  aStr: array[Wood..Cardboard] of string = ('wood','metall','cardboard');

procedure GetCube(var p: tCube; var t: boolean);
var
  a: real;
  s1, s2: string;
begin
  Write('Len: '); Readln(a);
  Write('Color (red,green,yellow,blue): '); Readln(s1);
  Write('Material (wood,metall,cardboard): '); Readln(s2);
  if a <> 0 then
  begin
    t := True;
    p.ec := a;
    if s1 = aColor[Red] then p.color := Red
    else if s1 = aColor[Green] then p.color := Green
    else if s1 = aColor[Yellow] then p.color := Yellow
    else if s1 = aColor[Blue] then p.color := Blue
    else begin p.color := Red; t := False end;
    if s2 = aStr[Wood] then p.material := Wood
    else if s2 = aStr[Metall] then p.material := Metall
    else if s2 = aStr[Cardboard] then p.material := Cardboard
    else begin p.material := Wood; t := False end
  end
  else t := False;
end;

var
  x: tCube;
  f: file of tCube;
  flag: boolean;

begin
  Assign(f, 'fCube.bin');
  Rewrite(f);
  repeat
    GetCube(x, flag);
    if flag then Write(f, x)
  until not flag;
  Close(f)
end.

