var
  s,s1:ansistring;
  c,i:longint;
  k:char;
begin
  readln(s);
  s:=s+'='+'(';
  c:=0;
  k:=s[1];
  i:=1;
  repeat
    begin
      if s[i]=k then inc(c)
                else begin
                       s1:=s1+chr(c+ord('0'));
                       s1:=s1+k;
                       k:=s[i];
                       c:=1;
                     end;
      inc(i);
    end;
  until s[i]='(';
  writeln(s1);

end.
