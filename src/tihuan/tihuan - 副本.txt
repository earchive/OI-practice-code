var
  s,source,abject,ans:string;
  l,l1,i,p:integer;

begin
  readln(s);
  readln(source);
  readln(abject);
  l:=length(source);
  l1:=length(s);
  p:=pos(source,s);
  if p=0 then writeln('Not Found')
     else
  begin
    while p<>0 do
     begin

       ans:=ans+copy(s,1,p-1);
       ans:=ans+abject;
       delete(s,1,p+l-1);
        p:=pos(source,s);

     end;
    ans:=ans+s;
    write(ans);
  end;



end.
