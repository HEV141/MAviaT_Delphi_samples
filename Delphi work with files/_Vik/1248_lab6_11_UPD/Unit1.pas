unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Button1: TButton;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  N: integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
begin
// ������ ��������� ��������
Edit1.Text := '6';
Memo1.Clear;
for i:= 1 to 6 do
  Memo1.Lines.Add(IntToStr(i));
end;

procedure TForm1.Button1Click(Sender: TObject);
var Sr, SrQ, m, Mn:extended;
i: integer;
begin
N:= StrToInt(Edit1.Text);             // ��������� N
if (N < 5) or (N > 15) then begin                   // �������� �� ������������ N
ShowMessage('N ������ ���� �� 5 �� 15');
Edit6.Text:='��������� N';
end
else begin
Edit6.Text:='';
Sr:=0;
SrQ:=0;
for i:= 0 to N - 1 do                 // ��������� ������� ��������
Sr:= Sr + StrToFloat(Memo1.Lines[i]);
Sr:= Sr / N;
Edit2.Text:= FloatToStr(Sr);         // ������� �� ����� ������� ��������

for i:= 0 to N - 1 do                // ��������� ������� ������������ ��������
  SrQ:= SrQ + StrToFloat(Memo1.Lines[i]) * StrToFloat(Memo1.Lines[i]);
SrQ:= SrQ  /N;
m := Power(N * (SrQ - Sr * Sr) / (N - 1), 0.5);
Edit3.Text:= FloatToStr(m);          // ������� �� ����� ��� ���������� ��������� ��������

Mn:= m / Power(N, 0.5);              // ��������� ��� ��������
Edit4.Text:= FloatToStr(Mn);         // ������� �� �����  ��� ��������
Edit5.Text:= FloatToStr(3  * Mn);    // ������� �� ����� ���������� ���������� �����������
end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
var i:integer;
begin
Memo1.Clear;
for i:= 1 to StrToInt(Edit1.Text) do
  Memo1.Lines.Add(IntToStr(i));
end;

procedure TForm1.Memo1Change(Sender: TObject);
var flag:integer;
begin
// ((Memo1.Lines[Memo1.Lines.Count]) <> (''))

if (Memo1.Lines.Count) > StrToInt(Edit1.Text)
then
begin
Edit6.Text:='��������� L';
ShowMessage('���������� L �� ������ ��������� ��������� - N');
Memo1.Lines[Memo1.Lines.Count-1]:='';
end;
end;

end.
