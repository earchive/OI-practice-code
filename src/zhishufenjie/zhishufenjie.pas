var
  i,j,c,x,y,n:longint;
  p:boolean;
  a:array[1..200000]of longint;
begin
  readln(n);
  c:=0;
  for i:=2 to trunc(sqrt(2000000000))do
    begin
      p:=true;
      for j:=2 to trunc(sqrt(i)) do
        if i mod j =0 then p:=false;
      if p=true then begin inc(c); a[c]:=i; end;
    end;
  //for i:=1 to c do
    //write(a[i],' ');
  for i:=1 to c do
    if n mod a[i]=0 then  for j:=1 to c do
                               if (n div a[i])mod a[j]=0 then begin x:=a[i]; y:=a[j];end;
  if x>y then writeln(x) else writeln(y);
end.