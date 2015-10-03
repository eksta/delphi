program factorial;

{$APPTYPE CONSOLE}
{Вычисление факторила n!}
uses
  SysUtils;

var
  i,n, result: integer;
begin
  Writeln('Input n');
  Readln(n);


  Writeln('Cycle for');
  result:=1;
  for i:=1 to n do
  begin
    result:= result*i;
  end;
  Writeln(result);

  Writeln('Cycle repeat');
  result:= 1;
  i:=1;
  repeat
    result:= result*i;
    i:=i+1;
  until i>n;
  Writeln(result);

  Writeln('Cycle while');
  i:=1;
  result:=1;
  while i<=n do
  begin
    result:=result*i;
    i:=i+1;
  end;
  Writeln(result);
  Readln;
end.
