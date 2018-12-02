type
  shuju=record
    x,y:longint;
  end;
var
  a:array[1..20000000]of shuju;
  n,i:longint;
procedure jisuan(q,p:longint);
  var
    i,z:longint;
  begin
    z:=1;
    for i:=1 to p do
      z:=z*q;
    writeln(z);
  end;
begin
  readln(n);
  for i:=1 to n do
    readln(a[i].x,a[i].y);
  for i:=1 to n do
    jisuan(a[i].x,a[i].y);
end.
