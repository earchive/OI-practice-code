var
  l,r,i,j,c:longint;
  a:string;
begin
  readln(l,r);
  for i:=l to r do
    begin
      str(i,a);
      for j:=1 to length(a) do
        if a[j]='2' then inc(c);
    end;
  writeln(c);
end.