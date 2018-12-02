var
  m,n:string;
  len,len1,k,i:longint;
  a,b,c:array[1..200]of longint;
begin
  readln(m);
  readln(n);
  len:=length(m);
  len1:=length(n);
  for i:=len downto 1 do
    a[len-i+1]:=ord(m[i])-ord('0');
  for i:=len1 downto 1 do
    b[len1-i+1]:=ord(n[i])-ord('0');
  for i:=1 to len do
  if a[i]-b[i]<0 then begin c[i]:=a[i]+10-b[i]; a[i+1]:=a[i+1]-1; end
    else c[i]:=a[i]-b[i];
  k:=200;
  while (c[k]=0)and(k>1) do k:=k-1;
  for i:=k downto 1 do
     write(c[i]);



end.
