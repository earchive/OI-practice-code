var
  a:array[1..10000]of char;
  i,k,w,l:longint;
begin
  repeat
    inc(i);
    read(a[i]);
    if i mod 20 =0 then readln;
  until a[i]='E';
  k:=i-1;
  i:=0;
  while i<=k do
    begin
      while not(w=11)or(l=11) do
        begin
          inc(i);
          if a[i]=' ' then break;
          if a[i]='W' then inc(w) else inc(l);
        end;
      writeln(w,':',l);
    end;
  i:=0;
  w:=0;
  l:=0;
  while i<=k do
    begin
      while not(w=21)or(l=21) do
        begin
          inc(i);
          if a[i]=' ' then break;
          if a[i]='W' then inc(w) else inc(l);
        end;
      writeln(w,':',l);
    end;
end.