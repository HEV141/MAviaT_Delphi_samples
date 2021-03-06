unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    LabeledEdit1: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

// ���������
type
	TSchoolboy = record
    // ���
		FirstName : string;
    // �������
		LastName : string;
    // ���
		YearOfStudy : string;
    // ����� ������
		ClassLetter : string;
    // ������� ���
		Assessment : real;
end;

var
  // ������������ ������ ��������
  schoolboys : array of TSchoolboy;
  // ���������� �������
  count : integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  // ��� �������� ����� ������������� �����
  // ������������� ������� �������
  StringGrid1.ColCount:=7;
  StringGrid1.Cells[0,0] := '���';
  StringGrid1.Cells[1,0] := '�������';
  StringGrid1.Cells[2,0] := '��� ��������';
  StringGrid1.Cells[3,0] := '����� ������';
  StringGrid1.Cells[4,0] := '������� ���';
  StringGrid1.Cells[5,0] := '��. ��� >4';
  StringGrid1.Cells[6,0] := '��. ��� >4.5';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  // ��������� ����
  f: TextFile;
  // ��������
  i: integer;
begin
  // �������� ����� �� ������
  AssignFile(f, './input.txt');
  Reset(f);
  // �������� ���������� ������� � �����
  count := 0;
  // ������ ���� �� �����
  while not Eof(f) do
  begin
    // ����������� ������� ���������� �������
    Inc(count);
    // ������������� ����� ������ ��������
    SetLength(schoolboys, count + 1);
    // ��������� ��������� ��� ������� � �.�.
    ReadLn(f, schoolboys[count].FirstName);
    ReadLn(f, schoolboys[count].LastName);
    ReadLn(f, schoolboys[count].YearOfStudy);
    ReadLn(f, schoolboys[count].ClassLetter);
    ReadLn(f, schoolboys[count].Assessment);
  end;
  // ����� ��������� ��������� ��������� ����
  CloseFile(f);
// --------------------
  // ������� ���������� �� �����

  // ���������� ����� � �������
  StringGrid1.RowCount := count+1;

  // ��������� ������� ������� �� ���������
  for i := 1 to count do
  begin
    StringGrid1.Cells[0,i] := schoolboys[i].FirstName;
    StringGrid1.Cells[1,i] := schoolboys[i].LastName;
    StringGrid1.Cells[2,i] := schoolboys[i].YearOfStudy;
    StringGrid1.Cells[3,i] := schoolboys[i].ClassLetter;
    StringGrid1.Cells[4,i] := FormatFloat('0.00', schoolboys[i].Assessment);
  end;

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  // ��� ���������� ����� ������������ ������
  // ���������� ��� ������ ��������
  schoolboys := nil;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  // �������� � ������� ���-�� ����������
  i, c : Integer;
begin
  // �������� �������
  c := 0;
  // �������� ������ �� ���� ����������
  for i := 1 to count do
  begin
    // ���� ������� ��� �������� ��������
    // ���� ������ 4
    if schoolboys[i].Assessment >= 4.0 then
    begin
      // �� ����������� ���-�� ����������
      // �� �������
      Inc(c);
      StringGrid1.Cells[5,i] := '#####';
    if schoolboys[i].Assessment >= 4.5 then
      StringGrid1.Cells[6,i] := '#####';
    end;
  end;
  // ������� ���-�� ���������� � ������ �� �����
  LabeledEdit1.Text := IntToStr(c);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  // ��������� ����
  f: TextFile;
  // ��������
  i : Integer;
begin
  // ��������� ���� �� ������
  AssignFile(f, './output.txt');
  Rewrite(f);
  // �������� ������ �� ���� ����������
  for i := 1 to count do
  begin
    // ���� ������� ��� ���� 4,5
    // �� �������� ����� �������� � ���� g
    if schoolboys[i].Assessment >= 4.5 then
    begin
      // ���������� ��� � ���� ������ ����� ������
      Write(f, schoolboys[i].FirstName, ' ');
      Write(f, schoolboys[i].LastName, ' ');
      Write(f, schoolboys[i].YearOfStudy, ' ');
      Write(f, schoolboys[i].ClassLetter, ' ');
      // � ����� ���������� ������ � ��������� �� ����� ������ �����
      WriteLn(f, schoolboys[i].Assessment, ' ');
    end;
  end;
  // ��������� ����
  CloseFile(f);
end;

end.
 