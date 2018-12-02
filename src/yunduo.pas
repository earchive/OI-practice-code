var
  a:array[0..11,0..11]of longint;
  b:array[1..10000]of longint;
  dx:array[1..4]of longint=(-1,1,0,0);
  dy:array[1..4]of longint=(0,0,-1,1);
  n,i,j,k,x,z,c,m:longint;
  s:string;
procedure try1(x,y:longint);
  var
    i:longint;
  begin
    for i:=1 to 4 do
      begin
        if  (x+dx[i]=11)or(x+dx[i]=0)or(z+dy[i]=11)or(z+dy[i]=0)   then begin c:=0; exit; end;
        if a[x+dx[i],y+dy[i]]=0 then begin inc(c); try1(x+dx[i],y+dy[i]); end
         else inc(c);
      end;
  end;
begin
  readln(n);
  for i:=1 to n do
    begin
      for j:=1 to 10 do
        for k:=1 to 10 do
          read(a[j,k]);
      readln;
      readln(s);
      x:=ord(s[1])-ord('0');
      z:=ord(s[3])-ord('0');
      c:=1;
      if a[x,z]=1 then for m:=1 to 4 do
                         if (x+dx[i]<=10)and(x+dx[i]>=1)and(z+dy[i]<=10)and(z+dy[i]>=1)and(a[x+dx[i],z+dy[i]]=0)
                           then try1(x+dx[i],z+dy[i])
                  else try1(x,z);
      if c>0 then b[i]:=c;
    end;
  write(b[1]);
  for i:=2 to n do
    write(',',b[i]);
  write('.');
  //for i:=1 to 10 do begin for j:=1 to 10 do write(a[i,j]); writeln; end;
end.
