unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
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

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
Label1.Caption:='Ток (А)';
Label2.Caption:='Сопротивление (Ом)';
Label3.Caption:='Результат';
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit1.Visible:=True;
Edit2.Visible:=True;
Edit3.Visible:=True;
Button1.Visible:=True;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
Label1.Caption:='Напряжение (В)';
Label2.Caption:='Сопротивление (Ом)';
Label3.Caption:='Результат';
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit1.Visible:=True;
Edit2.Visible:=True;
Edit3.Visible:=True;
Button1.Visible:=True;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
Label1.Caption:='Напряжение (В)';
Label2.Caption:='Ток (А)';
Label3.Caption:='Результат';
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit1.Visible:=True;
Edit2.Visible:=True;
Edit3.Visible:=True;
Button1.Visible:=True;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
u:real;
i:real;
r:real;
begin
if length(Edit1.Text)=0
 then
 begin
 ShowMessage('Введите значения');
 exit;
 end;
if length(Edit2.Text)=0
 then
 begin
 ShowMessage('Введите значения');
 exit;
 end;
if RadioButton1.Checked
 then
 begin
 i:=StrToFloat(Edit1.Text);
 r:=StrToFloat(Edit2.Text);
 u:=i*r;
 Edit3.Text:=FloatToStrF(u,ffFixed,4,2);
 end;
if RadioButton2.Checked
 then
 begin
 u:=StrToFloat(Edit1.Text);
 r:=StrToFloat(Edit2.Text);
 i:=u/r;
 Edit3.Text:=FloatToStrF(i,ffFixed,4,2);
 end;
if RadioButton3.Checked
 then
 begin
 u:=StrToFloat(Edit1.Text);
 i:=StrToFloat(Edit2.Text);
 r:=u/i;
 Edit3.Text:=FloatToStrF(r,ffFixed,4,2);
 end;

end;

end.
