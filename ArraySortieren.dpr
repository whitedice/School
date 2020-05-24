program ArraySortieren;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var liste:array[1..20] of integer;
var zahl,neueStelle,alteStelle,n:integer;


procedure verschieben(os,ns:integer);
begin
  zahl:=liste[os];

  {Löscht die alte Stelle}
  for n:=os to 9 do
    liste[n]:=liste[n+1];

  {Fügt die Vatiable in der neuen stelle ein}
  for n:=10 downto (ns+1) do
    liste[n]:=liste[n-1];
  liste[ns]:=zahl;
end;

procedure writeArray();
begin
  for n:= 1 to 10 do
    writeln(n, '. Stelle: ',liste[n]);
end;

procedure sort(step:integer);
begin
  if step = 10 then
    writeArray()
  else if liste[step] < liste[step+1] then
  begin
    verschieben(step+1,step);
    sort(1)
  end
  else if (liste[step] = liste[step+1]) OR (liste[step] > liste[step+1]) then
  begin
    sort(step+1)
  end;

end;

begin
  writeln('Bitte gebe deine 10 Zahlen ein:');
  for n:= 1 to 10 do
  begin
    write(n, ': ');
    readln(liste[n]);
  end;

  writeln('');
  writeln('');

  writeln('Davor:');
  writeArray();

  writeln('');
  writeln('');

  writeln('Danach:');
  sort(1);
  readln;
end.
