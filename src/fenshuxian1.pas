type
  data=record
    k,s:longint;
  end;
var
  a:array[1..5000]of data;
  i,m,n,c:longint;
procedure sort(l,r: longint);
      var
         i,j,x,x1: longint;
         y:data;
      begin
         i:=l;
         j:=r;
         x:=a[(l+r) div 2].s;
         x1:=a[(l+r) div 2].k;
         repeat
           while (a[i].s>x)or((a[i].s=x)and(a[i].k<x1)) do
            inc(i);
           while (x>a[j].s)or((a[i].s=x)and(a[i].k>x1)) do
            dec(j);
           if not(i>j) then
             begin
                y:=a[i];
                a[i]:=a[j];
                a[j]:=y;
                inc(i);
                dec(j);
             end;
         until i>j;
         if l<j then
           sort(l,j);
         if i<r then
           sort(i,r);
      end;
begin
  readln(n,m);
  for i:=1 to n do
    readln(a[i].k,a[i].s);
  m:=trunc(m*1.5);
  sort(1,n);
  for i:=1 to n do
    if a[i].s<m then begin c:=i-1; break; end;
  writeln(m,' ',c);
  for i:=1 to c do
    writeln(a[i].k,' ',a[i].s);
end.