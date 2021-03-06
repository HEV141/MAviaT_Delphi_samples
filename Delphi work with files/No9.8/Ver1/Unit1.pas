unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, XPMan;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    XPManifest1: TXPManifest;
    Edit5: TEdit;
    Label10: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
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
  aColor: array[Red..Blue] of string = ('red','green','yellow','blue');
  aStr: array[Wood..Cardboard] of string = ('wood','metall','cardboard');

var
  Form1: TForm1;
  x: tCube;
  f: file of tCube;
  bColor: array[Red..Blue] of integer;
  bMaterial: array[Wood..Cardboard] of integer;
  s:real;
  i:tColor;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  AssignFile(f, 'f.ini');
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
    end;

    case x.material of
    Wood: if x.ec = 3 then Inc(bMaterial[Wood]);
    Metall: if x.ec > 5 then Inc(bMaterial[Metall]);
    end

  end;
  CloseFile(f);
Edit1.Text:=IntToStr(bColor[Red]);
Edit2.Text:=IntToStr(bColor[Green]);
Edit3.Text:=IntToStr(bColor[Yellow]);
Edit4.Text:=IntToStr(bColor[Blue]);
Edit5.Text:=FloatToStrF(s,ffFixed,2,2);

Edit6.Text:=IntToStr(bMaterial[Wood]);
Edit7.Text:=IntToStr(bMaterial[Metall]);
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
end;

end.
