 var
  a:array[0..16,0..16]of longint;
  i,j,n,z,c,d:longint;
  q:array[1..15]of longint;

begin
  readln(n);
  for i:=1 to n do
    a[i,1]:=i;
  for i:=1 to n do
    a[n,i]:=n+i-1;
    //for i:=1 to n-1 do
      //a[2,2]:=3;
  for i:=1 to n-1 do
    a[n-i+1,n-i+1]:=2*n+i-2;
    //for i:=1 to n-2 do

  for i:=1 to n-2 do
    a[i+1,2]:=3*n+i-4;
  for i:=1 to n-3 do
    a[n-1,i+1]:=4*n-7+i;
  for i:=1 to n-4 do
    a[n-i,n-i-1]:=5*n+i-11;
  for i:=1 to n-5 do
     a[i+3,3]:=6*n+i-16;
  for i:=1 to n-6 do
     a[n-2,i+2]:=7*n+i-22;
  for i:=1 to n-7 do
    a[n-i-1,n-i-3]:=8*n+i-29;
  for i:=1 to n-8 do
    a[i+5,4]:=9*n+i-37;
  for i:=1 to n-9 do
    a[n-3,i+3]:=10*n+i-46;
  for i:=1 to n-10 do
    a[n-i-2,n-i-5]:=11*n+i-56;
  for i:=1 to n-11 do
    a[i+7,5]:=12*n+i-67;
  for i:=1 to n-12 do
    a[n-4,i+4]:=13*n+i-79;
      //for i:=1 to n-13 do
    //a[10,6]:=105;
  for i:=1 to n-13 do begin
    a[i+10,i+6]:=14*n+i-92;  a[11,7]:=98;    end;
      for i:=1 to n-14 do begin
    a[10,6]:=15*n+i-106;    a[11,7]:=119;a[12,8]:=109; end;

    c:=1; d:=1;z:=1;
  for i:=1 to n do
    begin
      q[i]:=a[c,d];
      if a[c+1,d+1]>a[c+1,d] then begin z:=z+a[c+1,d+1]; c:=c+1; d:=d+1;  end
      else begin z:=z+a[c+1,d]; c:=c+1;   end;
    end;

  //c:=(1+n)*n/2;
  //c1:=trunc(c);
  //for i:=1 to c1 do
    //a
  for i:=1 to n do
    begin
    for j:=1 to n do
    if a[i,j]<>0 then
      write(a[i,j]:3);
      writeln;
    end;
  writeln(z); write(1);
  for i:=2 to n do
    write('=>',q[i]);
end.


