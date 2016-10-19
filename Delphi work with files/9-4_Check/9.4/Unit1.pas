unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, XPMan;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    lbl3: TLabel;
    btn3: TButton;
    mmo1: TMemo;
    XPManifest1: TXPManifest;
    Edit1: TEdit;
    Label1: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  A: array [1..100]of Extended;
  N : Integer; // ���������� ����� � �������
  I : Integer;// ������ �������� �������
  F : TextFile;

implementation

{$R *.dfm}
 procedure TForm1.btn3Click(Sender: TObject);
 begin
   try
     AssignFile(F,edt1.Text);
     Reset (F);
     N:=0;I:=1;
     repeat
       Readln(F,A[I]);
       mmo1.Lines.Add(FloatToStrF(A[I],ffFixed,8,2));
       N:=N+1;
       I:=I+1;
       until Eof(F);
       CloseFile(F);
       except
         MessageDlg('���� �����������!',mtError,[mbCancel],0);
         end;
         end;





procedure TForm1.btn1Click(Sender: TObject);
Var

R: Extended;// ���������� ������ 1 ���1
S : Extended;// ����������  ������ 1
H : Extended; // ����� �������
begin

N:=StrToInt(Edit1.Text);

R:=0; S:=0;
for I := 1 to N do
begin
if A[I]<=1 then R:=R+A[I]
else if A[I]>1 then S:=S+A[I]
end;
mmo1.Lines.Add('');
mmo1.Lines.Add('R='+FloatToStrF(R,ffFixed,6,2)+'  S='+FloatToStrF(S,ffFixed,6,2));
H:=(1+R)/(1+S);
lbl3.Caption:='�������  = ' + FloatToStr(H);

end;


procedure TForm1.btn2Click(Sender: TObject);
begin
Form1.Close
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
Edt1.Text:='file.txt';
mmo1.Clear;
end;

end.
