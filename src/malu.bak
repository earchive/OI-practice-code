var
  s:array[1..10001]of boolean;
  l,m,a,b,i,j,c:longint;
begin
  readln(l,m);
  fillchar(s,sizeof(s),true);
  for i:=1 to m do
    begin
      readln(a,b);
      for j:=a to b do
        s[j]:=false;
    end;
  for i:=1 to l+1 do
    if s[i]=true then inc(c);
  writeln(c);
end.