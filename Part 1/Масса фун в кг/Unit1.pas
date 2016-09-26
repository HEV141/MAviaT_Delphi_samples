unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
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
f:real;
kg:real;
begin
if Length(Edit1.Text)=0 then
 begin
 ShowMessage('Надо ввести массу');
 exit;
 end;
f:=StrToFloat(Edit1.Text);
kg:=f*0.4095;
Label2.Caption:=Edit1.Text+' фун.='+FloatToStrF(kg,ffFixed,6,4)+' кг.'
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

end.
