program WebDezign_Formulaire;

uses
  Forms,
  main in 'main.pas' {win};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'WebDezign Formulaire';
  Application.CreateForm(Twin, win);
  Application.Run;
end.
