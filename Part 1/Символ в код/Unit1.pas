unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
sym:string;
code:integer;
begin
sym:=Edit1.Text;
code:=ord(sym[1]);
Label3.Caption:='Код: '+IntToStr(code);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Edit1.Text:='';
Label3.Caption:='Код: ';
end;

end.
