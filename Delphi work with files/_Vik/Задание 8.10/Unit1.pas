unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
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


procedure TForm1.Button1Click(Sender: TObject);
  var n1,n2,a,b,c,xy1,xy2: real;
begin
if (edit1.text='') or (edit2.text='') or (edit3.text='') or (edit4.text='') or (edit5.text='') or (edit6.text='') then
showmessage('Введите исходные данные.')
else
begin
  a:=StrToFloat(edit1.text);
    b:=StrToFloat(edit5.text);
       c:=StrToFloat(edit6.text);
  xy1:=StrToFloat(edit2.text);
  xy2:=StrToFloat(edit3.text);
   n1:= StrToFloat(edit1.text)+StrToFloat(edit5.text)+StrToFloat(edit6.text)+StrToFloat(edit2.text);
n2:=StrToFloat(edit1.text)+StrToFloat(edit3.text);
  if(n1>0)and(n2>0) then edit4.text:='По одну сторону'
  else if((n1>0) and (n2<0))or((n2>0) and (n1<0)) then edit4.text:='По разные стороны'
  else if(n1=0)and(n2=0) then edit4.text:='Обе точки лежат на прямой'
  else if(n1=0) then edit4.text:='Точка 1 лежит на прямой'
  else if(n2=0) then edit4.text:='Точка 2 лежит на прямой';
end;
end;

end.
