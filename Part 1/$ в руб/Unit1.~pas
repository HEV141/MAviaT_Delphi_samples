unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Label5: TLabel;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
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
dol:real;
kurs:real;
rub:real;
begin
dol:=StrToFloat(Edit1.Text);
kurs:=StrToFloat(Edit2.Text);
rub:=dol*kurs;
Label4.Caption:=FloatToStrF(rub,ffFixed,10,2);

end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
'0'..'9',#8: ;
'.',',':
 begin
 Key:=DecimalSeparator;
 if pos(DecimalSeparator,Edit1.Text)<>0
 then Key:=Char(0);
 end;
 else Key:=Char(0);
 end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
'0'..'9',#8: ;
'.',',':
 begin
 Key:=DecimalSeparator;
 if pos(DecimalSeparator,Edit1.Text)<>0
 then Key:=Char(0);
 end;
 else Key:=Char(0);
 end;
end;

end.
