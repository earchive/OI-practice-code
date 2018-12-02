var
  s:string;
  i:longint;
begin
  readln(s);
  if s[1]='-' then begin
                     write('-');
                     for i:=length(s) downto 1 do
                       if s[i]='0' then s[i]:='l'
                                   else break;
                     for i:=length(s) downto 2 do
                       if s[i]<>'l' then write(s[i]);
                   end
              else begin
                     for i:=length(s) downto 1 do
                       if s[i]='0' then s[i]:='l'
                                   else break;
                     for i:=length(s) downto 1 do
                       if s[i]<>'l' then write(s[i]);
                   end;
end.