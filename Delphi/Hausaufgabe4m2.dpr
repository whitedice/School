program Hausaufgabe4m2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var wort:string;

function umdrehen(ow,nw:string):string;
begin
  if length(ow) > 0 then
  begin
    nw:= nw + ow[length(ow)];
    delete(ow,length(ow),1);
    umdrehen:= umdrehen(ow,nw);
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

  writeln('Das Ergebnis lautet: ' + umdrehen(wort,''));
  readln;
end.
