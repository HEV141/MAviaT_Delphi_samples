unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   Y:real;
   N1,N2,K,Z:integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  N1:=strtoint(Edit1.Text);
  N2:=strtoint(Edit2.Text);
  K:=strtoint(Edit3.Text);
  Z:=N1;
  Label4.Caption:=' ';
  if K > N2 then ShowMessage('K не может быть больше N2')
  else
  begin
  while z<=N2 do
  begin
  Z:=Z+K;
    Y:=Z*Z;
  Label4.Caption:=Label4.Caption+#13+inttostr(Z)+'^2= '+floattostr(y);
  end;
end;
end;

end.
