var
  s,s1:string;
  a:array[1..100000]of string;
  p,c,i,x,y,z,q,w,code:longint;
begin
   readln(s);
   s:=s+'+';
   p:=pos('+',s);
   while p<>0 do
     begin
       inc(c);
       a[c]:=copy(s,1,p-1);
       delete(s,1,p);
       p:=pos('+',s);
     end;
   //for i:=1 to c do
     //write(a[i],' ');
   for i:=1 to c do
     begin
       p:=pos('*',a[i]);

       while p<>0 do
         begin
           if p<>0 then a[i]:=a[i]+'*';
           s:=copy(a[i],1,p-1);
           delete(a[i],1,p);
           p:=pos('*',a[i]);
           if p=0 then break;
           s1:=copy(a[i],1,p-1);
           delete(a[i],1,p);
           val(s,x,code);
           val(s1,y,code);
           z:=x*y;
           str(z,s);
           a[i]:=a[i]+s;
           p:=pos('*',a[i]);
         end;
       end;
   //for i:=1 to c do
     //write(a[i],' ');
  for i:=1 to c do
    begin
      val(a[i],q,code);
      inc(w,q);
    end;
  writeln(w mod 10000);
end.
