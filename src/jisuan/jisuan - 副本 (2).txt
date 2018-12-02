var
 s,s1,s2,s3:ansistring;
 i,j,temp,code,t1,ans,p,p1,l,l1,t:longint;
begin
  read(s);
  s:=s+'+';
  t1:=1;     i:=1;
  while i<length(s) do
    begin
      j:=i+1;
      while (s[j]>='0')and(s[j]<='9')and(j<length(s)) do
        inc(j);
      s1:=copy(s,i,j-i);
      val(s1,temp,code);

      temp:=temp mod 10000;
      //writeln(temp);
      if s[j]='*'
        then t1:=t1*temp mod 10000;
      if s[j]='+'
        then begin
               ans:=(ans+temp*t1) mod 10000;
               t1:=1;
             end;
      i:=j+1;
    end;


  write(ans);
end.
