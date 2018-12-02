var
  s:string;
  i,k:longint;
  a:array[1..10000]of string;
begin
  readln(S);
  while s[1]<>' ' do
     begin
       inc(i);
       a[i]:=copy(s,1,pos(' ',s)-1);
       delete(s,1,pos(' ',s));
     end;
  k:=i;
  for i:=k downto 1 do
    write(a[i],' ');
end.