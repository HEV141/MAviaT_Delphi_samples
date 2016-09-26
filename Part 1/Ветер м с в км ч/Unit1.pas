unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Edit1: TEdit;
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
var
v1:integer;
v2:real;
begin
v1:=StrToInt(Edit1.Text);
v2:=v1*3.6;
Label2.Caption:=Edit1.Text+' μ/ρ='+FloatToStrF(v2,ffFixed,4,2)+' κμ/χ';
end;

end.
