program gist;

uses
  Forms,
  gist_ in 'gist_.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Ãטסעמדנאללא';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
