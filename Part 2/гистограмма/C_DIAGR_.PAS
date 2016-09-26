unit c_diagr_;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
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

const
    NR = 4; // кол-во строк в таблице
var
    n: array[1..NR] of real;    // значени€ категорий
    p: array[1..NR] of real;    // процент категории в общей сумме
    h: array[1..NR] of integer; // высота столбиков диаграммы

    // цвет столбиков диаграммы
    BarColor: array[1..4] of TColor = (clRed,clGreen,clBlue,clYellow);

// ввод и обработка
// если исх. данные введены, то Obr = TRUE
function Obr : boolean;
var
    sum: real;  // сумма категорий
    m: integer; // номер категории, имеющей максимальное значение
    i: integer;
begin
    obr := FALSE; // пусть исх. данные не введены
    // скопируем содержимое второго столбца
    // в массив исходных данных
    for i:=1 to NR do
        // здесь возможно исключение (ошибка) преобразовани€
        // если пользователь не ввел данные
    begin
        try
            n[i] := StrToFloat(Form1.StringGrid1.Cells[1,i]);
         except
            on EConvertError do
            begin
                ShowMessage('Ќадо ввести данные во все' + #13 +
                '€чейки второй колонки.');
                exit;
            end;
        end;
    end;
    // вычислим сумму категорий (эл-тов второго столбца)
    sum := 0;
    for i:=1 to NR do
        sum := sum + n[i];

    // вычислим процент каждой категории
    for i:=1 to NR do
        p[i] := n[i] / sum;

     // определим категорию с максимальным значением
     m := 1;
     for i := 2 to NR do
        if n[i] > n[m] then m:=i;

    // пусть максимальному значению соответствует
    // столбик высотой в Image1.Height-20 пикселей
    // вычислим высоту остальных столбиков
    for i :=1 to NR do
        h[i] := Round((Form1.Image1.Height - 20) *
                n[i]/n[m]);

    // все готово
    // можно строить диаграмму
    obr := TRUE;
end;

// кругова€ диаграмма
procedure сdiagr;
var
    a1,a2: integer; // угол начала и конца сектора
    x,y: integer;   // координаты области вывода
                    // легенды (левый верхний угол)
    i: integer;

begin
    with Form1.Image1 do
    begin
      Canvas.Brush.Color := clWindow;
      Canvas.Rectangle(0,0,Width,Height);

      a1 := 0; // строим от оси OX
      x:= 100; y :=20; // левый верхний угол
                       // области легенды
      for i:=1 to 4 do
      begin
        // сектор
        a2 := a1 + 3.6 * P[i]; // 1% - это 3,6 градуса
        Canvas.Pie();

      end;
    end; // with Form1.Image1
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    // определим заголовки колонок
    StringGrid1.Cells[0,0] := ' атегори€';
    StringGrid1.Cells[1,0] := ' ол-во';
    StringGrid1.Width :=
           StringGrid1.ColWidths[0] + StringGrid1.ColWidths[1]+5;

end;

// нажатие клавиши в €чейке таблицы (компонента StringGrid)
// в ре-те нажати€ клавиши <Enter> курсор переходит
// в следующую €чейку
procedure TForm1.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   // Col, Row - номер колонки и строки
   // в которой находитс€ курсор (нумераци€ с нул€).
   // ColCount и RowCount - колво колонок и строк

   if Key = #13 then
   begin
    // нажата клавиша <Enter>
    if StringGrid1.Col < StringGrid1.ColCount - 1
       then
          // €чейка не в последнем столбце
          StringGrid1.Col := StringGrid1.Col + 1 // к след столбцу
       else
          // €чейка в последнем столбце
          if ( StringGrid1.Row < StringGrid1.RowCount - 1 ) then
            begin
              // в первый столбец следующей строки
              StringGrid1.Col :=0;
              StringGrid1.Row := StringGrid1.Row +1;
            end
          else Button1.SetFocus;
      exit;
    end;

    // во вторую колонку разрешаетс€ вводить
    // только числа
    if StringGrid1.Col = 1 then
        // клавиша нажата в €чейке
        // второй колонки
        case Key of
        '0'..'9',#8: ;
        '.',',':
           begin
                Key := DecimalSeparator;
                if Pos(DecimalSeparator,
                   StringGrid1.Cells[StringGrid1.Row,
                   StringGrid1.Col]) <> 0
                then Key := Char(0);
           end;
        else Key := Char(0);
        end;

end;

// щелчок на кнопке ѕостроить
procedure TForm1.Button1Click(Sender: TObject);
begin
    if Obr  // исх. данные введены
        then diagr; // строим диаграмму
end;

end.
