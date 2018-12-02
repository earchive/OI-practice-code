var
  n,i,m:longint;
  a:array[1..10000]of longint;
function js(m:longint):longint;
  begin
    if m=1 then js:=1
      else if m=2 then js:=2
        else js:=2*js(m-1)mod 32767+js(m-2) mod 32767;
    //js:=js(m) div 32767;
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