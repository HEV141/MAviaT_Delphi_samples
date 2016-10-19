unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Memo1: TMemo;
    Label6: TLabel;
    Button1: TButton;
    Edit6: TEdit;
    Label7: TLabel;
    Memo2: TMemo;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  X0, Y0, R1, R2: extended;
  N: integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
// ��������� ��������� ������
Edit1.Text:= '0';             // X0
Edit2.Text:= '0';             // Y0
Edit3.Text:= '3';             // R1
Edit4.Text:= '5';             // R2
Edit5.Text:= '5';             // N
Edit6.Text:= '';              // ���������
Memo1.Clear;
Memo2.Clear;
// ������ ��������� �������� �����
Memo1.Lines.Add('1');
Memo2.Lines.Add('2');
Memo1.Lines.Add('4');
Memo2.Lines.Add('1');
Memo1.Lines.Add('0');
Memo2.Lines.Add('2,2');
Memo1.Lines.Add('-2,2');
Memo2.Lines.Add('4,5');
Memo1.Lines.Add('-1');
Memo2.Lines.Add('-2');
end;

procedure TForm1.Button1Click(Sender: TObject);
var
i, cnt: integer;
x, y:extended;
begin
  X0:= StrToFloat(Edit1.Text);                  //��������� x0
  Y0:= StrToFloat(Edit2.Text);                  // ��������� y0
  R1:= StrToFloat(Edit3.Text);                  // ��������� R1
  R2:= StrToFloat(Edit4.Text);                  // ��������� R2
  N:= StrToInt(Edit5.Text);                     // ��������� N
  cnt:=0;                                       // �������� �������
   for i:= 0 to N-1 do begin                    // ��� ������ ���������� ������ ��������
   x:= StrToFloat(Memo1.Lines[i]);              // ��������� x
   y:= StrToFloat(Memo2.Lines[i]);              // ��������� y
   if (x - X0 < R2) and (x - X0 > -R2) and (y - Y0 < R2) and (y - Y0 > -R2) then        // �������� �� ���������� �� ������� �����
      if (power(x * x + y * y, 0.5) > R1) then                                          // �������� �� ���������� ��� ����������� �����
        cnt:= cnt + 1;                // ����������� �������
   end;
   Edit6.Text:= IntToStr(cnt);        // ������� ���������
end;

end.
