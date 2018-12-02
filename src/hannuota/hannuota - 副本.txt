var
 n:longint;
procedure move(n:longint;a,b,c:char);
begin
  if n>1 then move(n-1,a,c,b);
  writeln('move ',n,' from ',a,' to ',b);
  if n>1 then move(n-1,c,b,a);
end;

begin
  readln(n);
  move(n,'A','B','C');
end.
