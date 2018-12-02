var
  n,m,z,i,s:longint;
function pd(a:longint):boolean;
  var
    g,s,b,q:longint;
  begin
   pd:=false;
   g:=a mod 10;
   s:=(a div 10) mod 10;
   b:=(a div 100) mod 10;
   q:=a div 1000;
   a:=g-q-b-s;
   if a>0 then pd:=true;
  end;
begin
  readln(n);
  for i:=1 to n do
    begin
      read(m);
      if pd(m)=true then z:=z+1;
    end;
  writeln(z);



end.
