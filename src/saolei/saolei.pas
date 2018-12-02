var
  a:array[1..100,1..100]of char;
  b:array[0..101,0..101]of longint;
  dx:array[1..8]of longint=(-1,-1,-1,0,0,1,1,1);
  dy:array[1..8]of longint=(-1,0,1,-1,1,-1,0,1);
  i,j,k,n,m:longint;
begin
  readln(n,m);
  fillchar(b,sizeof(b),0);
  for i:=1 to n do
    begin
      for j:=1 to m do
        begin
          read(a[i,j]);
          if a[i,j]='*' then for k:=1 to 8 do
                               inc(b[i+dx[k],j+dy[k]]);
        end;
      readln;
    end;
  for i:=1 to n do
    begin
      for j:=1 to m do
       if a[i,j]='*' then write('*') else write(b[i,j]);
      writeln;
    end;
end.
