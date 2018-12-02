var
  a:array[1..10]of longint;
  c:char;
  y:longint;
begin
  read(a[1]); read(c); read(a[2]); read(a[3]);read(a[4]); read(c); read(a[5]);
  read(a[6]); read(a[7]); read(a[8]); read(a[9]); read(c);read(a[10]);
  for i:=1 to 9 do
    s:=s+a[i]*i;
  y:=s mod 11;
  if y=10 then y1:='X';
  if (a[10]=y)or( then write('Right')
             else write(a[1],'-',a[2],a[3],a[4],'-',a[5],a[6],a[7],a[8],a[9],'-',y);
end.