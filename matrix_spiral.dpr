program matrix_spiral;

{$APPTYPE CONSOLE}
{Заполение матрицы по спирали
1..n*n}
uses
  SysUtils;

const
  NN=5;
var
 Indexi,Indexj, i,j, count,n: integer;
  ar: array [1..NN,1..NN] of integer;
begin
  Indexi:=1;
  Indexj:=0;
  count:=0;
  n:=NN;

  while n >= 0 do
  begin

    for i:=1 to n do
    begin
      Inc(count);
      Indexj:= Indexj+1;
      ar[Indexi,Indexj]:=count;
    end;
    Dec(n);

    for i:=1 to n do
    begin
      Inc(count);
      Inc(Indexi);
      ar[Indexi,Indexj]:=count;
    end;
    for i:=1 to n do
    begin
      Inc(count);
      Dec(Indexj);
      ar[Indexi,Indexj]:=count;
    end;
   Dec(n);
   for i:=1 to n do
    begin
      Inc(count);
      Dec(Indexi);
      ar[Indexi,Indexj]:=count;

    end;
  end;




  for i:=1 to NN do
  begin
    for j:=1 to NN do
      //Write('ar[', i, ',', j,']= ', ar[i,j], ' ');
      Write(ar[i,j]:4);
    WriteLn;
  end;
  ReadLn;

end.
 