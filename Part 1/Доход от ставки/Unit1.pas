unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
sum:real;
sum2:real;
proc:real;
srok:integer;
doh:real;
i:integer;
begin
if Length(Edit1.Text)=0 then
 begin
 ShowMessage('������� ����� ������');
 exit;
 end;
if Length(Edit2.Text)=0 then
 begin
 ShowMessage('������� ���������� ������');
 exit;
 end;
if Length(Edit3.Text)=0 then
 begin
 ShowMessage('������� ���� ������');
 exit;
 end;
 begin
 sum:=StrToFloat(Edit1.Text);
 proc:=StrToFloat(Edit2.Text);
 srok:=StrToInt(Edit3.Text);
if RadioButton1.Checked then
 doh:=sum*proc/12/100*srok
else
 begin
 sum2:=sum;
 for i:=1 to srok do
 sum2:=sum2+sum2*(proc/100/12);
 doh:=sum2-sum;
 end;
end;
Label4.Caption:='����� ����������: '+FloatToStrF(doh,ffFixed,4,2)+#13+
                '����� �����: '+FloatToStrF(sum+doh,ffFixed,4,2);
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then Edit2.SetFocus;
case Key of
'0'..'9',#8,#13: ;
'.',',':
 begin
 Key:=DecimalSeparator;
 if pos(DecimalSeparator,Edit1.Text)<>0
 then key:=#0;
 end;
 else key:=chr(0);
 end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then Edit3.SetFocus;
case Key of
'0'..'9',#8,#13: ;
'.',',':
 begin
 Key:=DecimalSeparator;
 if pos(DecimalSeparator,Edit2.Text)<>0
 then key:=#0;
 end;
 else key:=chr(0);
 end;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then Button1.SetFocus;
case Key of
'0'..'9',#8,#13: ;
'.',',':
 begin
 Key:=DecimalSeparator;
 if pos(DecimalSeparator,Edit3.Text)<>0
 then key:=#0;
 end;
 else key:=chr(0);
 end;
end;

end.
