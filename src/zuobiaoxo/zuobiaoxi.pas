var
  zbx:array[-5..5,-5..5]of longint;
  a,b,i,j:longint;
  w:boolean;
begin
  readln(a,b);
  fillchar(zbx,sizeof(zbx),0);
  for i:=5 downto -5 do
    for j:=-5 to 5 do
      if i=a*j+b then zbx[i,j]:=1;
  w:=true;
  for i:=-5 to 5 do
    for j:=-5 to 5 do
      if zbx[i,j]<>0 then w:=false;
  zbx[0,0]:=2;
  if w then write('Overflow')
            else begin
                   for i:=5 downto -5 do
                     begin
                       for j:=-5 to 5 do
                         write(zbx[i,j]);
                         writeln;
                     end;
                   end;
end.

