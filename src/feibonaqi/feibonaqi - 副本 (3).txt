var
 n,i,m:longint;
 a:array[1..10000]of longint;
function js(n:longint):longint;
  begin
    if (n=1)or(n=2) then js:=1
       else js:=js(n-1)+js(n-2);
  end;
begin
  readln(n);
  for i:=1 to n do
   begin
     readln(m);
     a[i]:=js(m);
   end;
  for i:=1 to n do
    writeln(a[i]);
end.
