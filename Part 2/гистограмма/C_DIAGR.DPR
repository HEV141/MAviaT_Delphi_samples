program c_diagr;

uses
  Forms,
  c_diagr_ in 'c_diagr_.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Ãטסעמדנאללא';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
