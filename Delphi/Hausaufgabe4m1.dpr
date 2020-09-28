program Hausaufgabe4m1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var wort:string;

function umdrehen(nw:string; stelle:integer):string;
begin
  if stelle > 0 then
  begin
    nw:= nw + wort[stelle];
    umdrehen:= umdrehen(nw,stelle-1);
  end
  else
  begin
    umdrehen:=nw;
  end;
end;

begin
  writeln('Bitte gebe dein Wort ein:');
  readln(wort);
  writeln('');
  writeln('');
  writeln('Das Ergebnis lautet: ' + umdrehen('',length(wort)));

  readln;
end.
