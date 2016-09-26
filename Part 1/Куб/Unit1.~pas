unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label2: TLabel;
    procedure Memo1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Memo1.Text:=''
end;

procedure TForm1.Memo1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Memo1.Text:='Эта программа вычисляет объем или сумму сторон куба.'
end;

procedure TForm1.BitBtn1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Memo1.Text:='Вычисление заданной категории.'
end;

procedure TForm1.BitBtn2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Memo1.Text:='Очистить поля программы.'
end;

procedure TForm1.BitBtn3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Memo1.Text:='Выход из программы.'
end;

procedure TForm1.Edit1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Memo1.Text:='Форма ввода.'
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
s:real;
a:integer;
begin
if (RadioGroup1.ItemIndex=0) then
 begin
 a:=StrToInt(Edit1.Text);
 s:=a*a*a;
 Label2.Caption:='Объём куба равен '+FloatToStr(s);
 end;
if (RadioGroup1.ItemIndex=1) then
 begin
 a:=StrToInt(Edit1.Text);
 s:=12*a;
 Label2.Caption:='Сумма всех сторон '+FloatToStr(s);
 end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
v:integer;
begin
v:=MessageDlg('Вы точно хотите очистить поля программы?',mtWarning,[mbOK,mbCancel],0);
if v=mrOk then
 Edit1.Text:='';
 Label2.Caption:='';
 Memo1.Text:='';
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
v:integer;
begin
v:=MessageDlg('Вы точно хотите выйти из программы?',mtWarning,[mbOK,mbCancel],0);
if v=mrOk then
Form1.Close
end;

end.



