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
 Label4.Caption:='�����: �����������'+#13+
                 '���: 423'+#13+
                 '���� �� ������: 2� 20�';
 end;
1: begin
 cm:=1;
 Label4.Caption:='�����: ������'+#13+
                 '���: 495'+#13+
                 '���� �� ������: 1�';
 end;
2: begin
 cm:=1.2;
 Label4.Caption:='�����: ��������'+#13+
                 '���: 815'+#13+
                 '���� �� ������: 1� 20�';
 end;
3: begin
 cm:=1.4;
 Label4.Caption:='�����: ������'+#13+
                 '���: 846'+#13+
                 '���� �� ������: 1� 40�';
 end;
end;
vrem:=StrToFloat(Edit1.Text);
pc:=cm*vrem;
Label5.Caption:='������ ���������: '+FloatToStrF(pc,ffFixed,4,2);
end;

end.
