unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Label4: TLabel;
    ListBox1: TListBox;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
ListBox1.ItemIndex:=0;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
kod:real;
vrem:real;
cm:real;
pc:real;
begin
case ListBox1.ItemIndex of
0: begin
 cm:=2.2;
 Label4.Caption:='Город: Владивосток'+#13+
                 'Код: 423'+#13+
                 'Цена за минуту: 2р 20к';
 end;
1: begin
 cm:=1;
 Label4.Caption:='Город: Москва'+#13+
                 'Код: 495'+#13+
                 'Цена за минуту: 1р';
 end;
2: begin
 cm:=1.2;
 Label4.Caption:='Город: Мурманск'+#13+
                 'Код: 815'+#13+
                 'Цена за минуту: 1р 20к';
 end;
3: begin
 cm:=1.4;
 Label4.Caption:='Город: Самара'+#13+
                 'Код: 846'+#13+
                 'Цена за минуту: 1р 40к';
 end;
end;
vrem:=StrToFloat(Edit1.Text);
pc:=cm*vrem;
Label5.Caption:='Полная стоимость: '+FloatToStrF(pc,ffFixed,4,2);
end;

end.
