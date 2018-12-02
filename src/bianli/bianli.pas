type
  biao=record
    n:char;
    left,right:longint;
  end;
const
  max=10000;
var
  a:array[1..max]of biao;
  n,i:longint;
procedure print2(k:longint);
  begin
    if a[k].left>0 then print2(a[k].left);
    write(a[k].n,' ');
    if a[k].right>0 then print2(a[k].right);
  end;
procedure print3(k:longint);
  begin
  if a[k].left>0 then print3(a[k].left);
     if a[k].right>0 then print3(a[k].right);
     write(a[k].n,' ');



  end;
begin
  readln(n);
  for i:=1 to n do
    readln(a[i].n,a[i].left,a[i].right);
  print2(1);
  writeln;
  PRINT3(1);
end.
