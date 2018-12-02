var
  s:string;
  c,i,j:longint;
function try1(s:char):longint;
  begin
    exit(ord(s)-ord('0'));
  end;
begin
  readln(s);
 // c:=1*try1(s[1])+2*try1(s[3])+3*try1(s[4])+4*try1(s[5])+5*try1(s[7])+6*try1(s[8])+7*try1(s[9])+8*try1(s[10])+9*try1(s[11]);
  while j<10 do
    begin
      inc(i);
      if (ord(s[i])>=48)and(ord(s[i])<=57)then  begin inc(j); inc(c,j*try1(s[i])); end;
    end;
  if (c mod 11 )=try1(s[13]) then writeln('Right')
                             else begin for i:=1 to 12 do
                                          write(s[i]);
                                        write(c mod 11);
                                  end;
end.