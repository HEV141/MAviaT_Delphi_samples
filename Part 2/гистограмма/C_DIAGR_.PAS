unit c_diagr_;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

const
    NR = 4; // ���-�� ����� � �������
var
    n: array[1..NR] of real;    // �������� ���������
    p: array[1..NR] of real;    // ������� ��������� � ����� �����
    h: array[1..NR] of integer; // ������ ��������� ���������

    // ���� ��������� ���������
    BarColor: array[1..4] of TColor = (clRed,clGreen,clBlue,clYellow);

// ���� � ���������
// ���� ���. ������ �������, �� Obr = TRUE
function Obr : boolean;
var
    sum: real;  // ����� ���������
    m: integer; // ����� ���������, ������� ������������ ��������
    i: integer;
begin
    obr := FALSE; // ����� ���. ������ �� �������
    // ��������� ���������� ������� �������
    // � ������ �������� ������
    for i:=1 to NR do
        // ����� �������� ���������� (������) ��������������
        // ���� ������������ �� ���� ������
    begin
        try
            n[i] := StrToFloat(Form1.StringGrid1.Cells[1,i]);
         except
            on EConvertError do
            begin
                ShowMessage('���� ������ ������ �� ���' + #13 +
                '������ ������ �������.');
                exit;
            end;
        end;
    end;
    // �������� ����� ��������� (��-��� ������� �������)
    sum := 0;
    for i:=1 to NR do
        sum := sum + n[i];

    // �������� ������� ������ ���������
    for i:=1 to NR do
        p[i] := n[i] / sum;

     // ��������� ��������� � ������������ ���������
     m := 1;
     for i := 2 to NR do
        if n[i] > n[m] then m:=i;

    // ����� ������������� �������� �������������
    // ������� ������� � Image1.Height-20 ��������
    // �������� ������ ��������� ���������
    for i :=1 to NR do
        h[i] := Round((Form1.Image1.Height - 20) *
                n[i]/n[m]);

    // ��� ������
    // ����� ������� ���������
    obr := TRUE;
end;

// �������� ���������
procedure �diagr;
var
    a1,a2: integer; // ���� ������ � ����� �������
    x,y: integer;   // ���������� ������� ������
                    // ������� (����� ������� ����)
    i: integer;

begin
    with Form1.Image1 do
    begin
      Canvas.Brush.Color := clWindow;
      Canvas.Rectangle(0,0,Width,Height);

      a1 := 0; // ������ �� ��� OX
      x:= 100; y :=20; // ����� ������� ����
                       // ������� �������
      for i:=1 to 4 do
      begin
        // ������
        a2 := a1 + 3.6 * P[i]; // 1% - ��� 3,6 �������
        Canvas.Pie();

      end;
    end; // with Form1.Image1
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    // ��������� ��������� �������
    StringGrid1.Cells[0,0] := '���������';
    StringGrid1.Cells[1,0] := '���-��';
    StringGrid1.Width :=
           StringGrid1.ColWidths[0] + StringGrid1.ColWidths[1]+5;

end;

// ������� ������� � ������ ������� (���������� StringGrid)
// � ��-�� ������� ������� <Enter> ������ ���������
// � ��������� ������
procedure TForm1.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   // Col, Row - ����� ������� � ������
   // � ������� ��������� ������ (��������� � ����).
   // ColCount � RowCount - ����� ������� � �����

   if Key = #13 then
   begin
    // ������ ������� <Enter>
    if StringGrid1.Col < StringGrid1.ColCount - 1
       then
          // ������ �� � ��������� �������
          StringGrid1.Col := StringGrid1.Col + 1 // � ���� �������
       else
          // ������ � ��������� �������
          if ( StringGrid1.Row < StringGrid1.RowCount - 1 ) then
            begin
              // � ������ ������� ��������� ������
              StringGrid1.Col :=0;
              StringGrid1.Row := StringGrid1.Row +1;
            end
          else Button1.SetFocus;
      exit;
    end;

    // �� ������ ������� ����������� �������
    // ������ �����
    if StringGrid1.Col = 1 then
        // ������� ������ � ������
        // ������ �������
        case Key of
        '0'..'9',#8: ;
        '.',',':
           begin
                Key := DecimalSeparator;
                if Pos(DecimalSeparator,
                   StringGrid1.Cells[StringGrid1.Row,
                   StringGrid1.Col]) <> 0
                then Key := Char(0);
           end;
        else Key := Char(0);
        end;

end;

// ������ �� ������ ���������
procedure TForm1.Button1Click(Sender: TObject);
begin
    if Obr  // ���. ������ �������
        then diagr; // ������ ���������
end;

end.
