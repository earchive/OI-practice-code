var
  a:array[1..100,1..100]of longint;
  b:array[1..100,1..100]of real;
  i,j,n,m,s,x:longint;
  p,x1,x2:real;
begin
  read(n,m);
  for i:=1 to n do
    begin
      for j:=1 to m do
        begin
          read(a[i,j]);
          b[i,j]:=a[i,j];
        end;
      readln;
    end;
  for i:=2 to n-1 do
    for j:=2 to m-1 do
      begin
        s:=a[i,j]+a[i-1,j]+a[i+1,j]+a[i,j-1]+a[i,j+1];
        p:=s / 5;
        b[i,j]:=p;
      end;
  for i:=1 to n do
    begin
      for j:=1 to m do
        write(b[i,j]:0:0,' ');
    writeln;
    end;

end.
