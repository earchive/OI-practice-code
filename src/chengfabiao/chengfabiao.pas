var
  a:array['1'..'9','1'..'9']of string;
  i,j,s1:char;
  s:string;
  x,y,z:longint;
begin
  readln(s1);
  for i:='1' to '9' do
    for j:='1' to '9' do
      begin
        a[i,j]:=a[i,j]+j;
        a[i,j]:=a[i,j]+'X';
        a[i,j]:=a[i,j]+i;
        a[i,j]:=a[i,j]+'=';
        x:=ord(i)-ord('0');
        y:=ord(j)-ord('0');
        z:=x*y;
        str(z,s);
        a[i,j]:=a[i,j]+s;
      end;
  for i:='1' to s1 do
    begin
      for j:='1'to '9' do
        if a[i,j][1]<=a[i,j][3] then write(a[i,j],' ');
      writeln;
    end;
end.
