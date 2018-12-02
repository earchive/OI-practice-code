type
  xinxi=record
    k:1000..9999;
    s:1..100;
  end;
var
  a:array[1..5000]of xinxi;
  fen,c,i,n,m:longint;
  m1:real;
procedure quicksort(s,t:longint);
  var
    i,j,x,y:longint;
    te:xinxi;
  begin
    i:=s;
    j:=t;
    x:=a[(i+j)div 2].s;
    y:=a[(i+j)div 2].k;
    while i<j do
      begin
        while (a[i].s>x)or((a[i].s=x)and(a[i].k<y)) do inc(i);
        while (a[j].s<x)or((a[j].s=x)and(a[j].k>y)) do dec(j);
        if i<=j then begin te:=a[i]; a[i]:=a[j]; a[j]:=te; inc(i); dec(j); end;
      end;
    if s<j then quicksort(s,j);
    if t>i then quicksort(i,t);
  end;
begin
  readln(n,m);
  for i:=1 to n do
    readln(a[i].k,a[i].s);
  quicksort(1,n);
  m1:=1.5*m;
  m:=trunc(m1);
  fen:=a[m].s;
  for i:=1 to n do
    if a[i].s>=fen then inc(c);
  writeln(fen,' ',c);
  for i:=1 to n do
    if a[i].s>=fen then writeln(a[i].k,' ',a[i].s);
end.