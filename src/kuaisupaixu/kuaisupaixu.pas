const
  max=10000;
var
  n,i:longint;
  a:array[1..max]of longint;
procedure quicksort(s,t:longint);
  var
    i,j,x,te:longint;
  begin
    i:=s;
    j:=t;
    x:=a[(i+j)div 2];
    while i<j do
      begin
        while a[i]<x do inc(i);
        while a[j]>x do dec(j);
        if i<=j then begin te:=a[i]; a[i]:=a[j]; a[j]:=te; inc(i); dec(j); end;
      end;
    if s<j then quicksort(s,j);
    if t>i then quicksort(i,t);
  end;
begin
  readln(n);
  for i:=1 to n do
    read(a[i]);
  quicksort(1,n);
  for i:=1 to n do
    write(a[i],' ');
end.