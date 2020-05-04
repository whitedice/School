program Hausaufgabe4m3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var wort:string;
var len:integer;

function umdrehen(word:string; step:integer):string;
begin
  if step > 0 then
  begin
    word:= word + word[step];
    umdrehen:= umdrehen(word,step-1);
  end
  else
  begin
    delete(word,1,len);
    umdrehen:=word;
  end;
end;

begin
  writeln('Bitte gebe dein Wort ein:');
  readln(wort);
  writeln('');
  writeln('');

  len:= length(wort);
  writeln('Das Ergebnis lautet: ' + umdrehen(wort, len));

  readln;
end.
