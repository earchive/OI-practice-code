type
  duilie=record
    d:array[1..10000]of longint;
    l,r:longint;
  end;
var
  a:duilie;
  n,i:longint;
begin
  readln(n);
  for i:=1 to n do
    a.d[i]:=i;
  a.l:=1;
  a.r:=n;
  while a.r-a.l>=2 do
    begin
      writeln(a.d[a.l]);
      inc(a.l);
      inc(a.r);
      a.d[a.r]:=a.d[a.l];
      inc(a.l);
    end;
  writeln(a.d[a.l]);
  writeln(a.d[a.r]);
end.