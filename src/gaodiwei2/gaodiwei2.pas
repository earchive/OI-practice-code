var
  b,c,i,code:longint;
  a,q,z:int64;
  s,s1,s2,s3:string;
  x:array[1..32]of string;
  y:array[1..32]of longint;
begin
  readln(a);
  for i:=1 to 32 do
    begin
      c:=a mod 2;
      a:=a div 2;
      if c=1 then s:='1'+s
             else s:='0'+s;
    end;
  s1:=copy(s,1,16);
  s2:=copy(s,17,16);
  s3:=concat(s2,s1);
  for i:=1 to 32 do
    begin
   x[i]:=copy(s3,i,1);
   val(x[i],y[i],code);
   end;
   q:=1;
  for i:=32 downto 1 do
  begin
    z:=z+q*y[i];
    q:=q*2;
  end;
  writeln(z);
    end.
