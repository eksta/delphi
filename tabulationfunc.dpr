program tabulationfunc;

{$APPTYPE CONSOLE}
{Табуляция фукции y=x^2+1 разными операторами  цикла на отрезке
[a,b] с шагом deltax}
uses
  SysUtils;

var
i,x,y,a,b, n, deltax: integer;

begin

  y:=0;
  Writeln('Input a,b,deltax');
  Readln(a,b,deltax);
  x:=a;
  n:=(b-a) div deltax;
  Writeln(n);
  Writeln('Cycle for');
  for i:=a to a+n do
  begin
    y:=x*x+1;

    Writeln('x= ', x,' y= ',y);
    x:=x+1;
  end;

  x:=a;
  Writeln('Cycle while');
  while x<=b do
  begin
    y:=x*x+1;
    Writeln('x= ', x,' y= ',y);
    x:=x+1;
  end;

  x:=a;
  Writeln('Cycle repeat');
  repeat
    y:=x*x+1;
    Writeln('x= ', x,' y= ',y);
    x:=x+1;
  until x>b;

  readln;
end.
