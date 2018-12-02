var
  a:array[1..1000]of boolean;
  b:array[1..100]of longint;
  i,n,k,c:longint;
procedure quicksort(s,t:longint);
  var
    i,j,x,te:longint;
  begin
    i:=s;
    j:=t;
    x:=b[(i+j)div 2];
    while i<j do
      begin
        while b[i]<x do inc(i);
        while b[j]>x do dec(j);
        if i<=j then begin te:=b[i]; b[i]:=b[j]; b[j]:=te; inc(i); dec(j); end;
      end;
    if s<j then quicksort(s,j);
    if t>i then quicksort(i,t);
  end;
begin
  readln(n);
  fillchar(a,sizeof(a),false);
  for i:=1 to n do
    begin
      read(k);
      if a[k]=false then begin inc(C); b[c]:=k; a[k]:=true; end
    end;
  quicksort(1,c);
  writeln(c);
  for i:=1 to c do
    write(b[i],' ');
end.
