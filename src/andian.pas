type
  r=record
    x,y:longint;
  end;
var
  i,j,k:longint;
  a:array[1..5,1..5]of longint;
  b,c:array[1..5]of r;
begin
  for i:=1 to 5 do
    begin
      k:=0;
     for j:=1 to 5 do
       begin
         read(a[i,j]);
         if a[i,j]>k then begin b[i].x:=i; b[i].y:=j; end;
       end;
    end;
    for i:=1 to 5 do
    begin
      k:=0;
     for j:=1 to 5 do

         if a[j,i]<k then begin c[i].x:=i; c[i].y:=j; end;

    end;
    for i:=1 to 5 do
      for j:=1 to 5 do
        if (b[i].x=c[j].x)and(b[j].y=c[i].y) then writeln(a[i,j],' ',c[j].y,' ',c[j].x);
end.


