program MainProject;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  uWuerfel in 'uWuerfel.pas',
  uKonto in 'uKonto.pas',
  uSpielbrett in 'uSpielbrett.pas',
  Game in 'Game.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
