program Hausaufgabe4m2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var wort:string;
var len:integer;

function umdrehen(ow,nw:string):string;
begin
  len:= length(ow);

  if len > 0 then
  begin
    nw:= nw + ow[len];
    delete(ow,len,1);
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
