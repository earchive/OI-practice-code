var
  n,i,p:longint;
  s1,s2,s3,s4:ansistring;
procedure find(x,y:string);
  var
    a:char;
    k:longint;
  begin
    a:=x[1];
    k:=pos(a,y);
    if k>1 then  find(copy(x,2,k-1),copy(y,1,k-1));
    if k<length(x) then  find(copy(x,k+1,length(x)-k),copy(y,k+1,length(x)-k));
    write(x[1]);
  end;
begin
    readln(n);
    for i:=1 to n do
      begin
        readln(s1);
        p:=pos(' ',s1);
        s2:=copy(s1,1,p-1);
        s3:=copy(s1,p+1,length(s1)-p);
        find(s2,s3);
        WRITELN;
      end;
end.