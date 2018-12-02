var
  s1,s2,s3,s4:string;
  x:array['A'..'Z']of integer;
  i,k:integer;
  j:char;
begin
  readln(s1);
  readln(s2);
  readln(s3);
  readln(s4);
  for i:=1 to length(s1) do
    if (s1[i]>='A')and(s1[i]<='Z')
      then x[s1[i]]:=x[s1[i]]+1;

   for i:=1 to length(s2) do
    if (s2[i]>='A')and(s2[i]<='Z')
      then x[s2[i]]:=x[s2[i]]+1;

    for i:=1 to length(s3) do
      if (s3[i]>='A')and(s3[i]<='Z')
      then x[s3[i]]:=x[s3[i]]+1;

    for i:=1 to length(s4) do
      if (s4[i]>='A')and(s4[i]<='Z')
      then x[s4[i]]:=x[s4[i]]+1;


     k:=x['A'];
   for j:='A' to 'Z' do
    if x[j]>k then k:=x[j];
  for i:=k downto 1 do
  begin
     for j:='A' to 'Z' do
      if x[j]=i then begin x[j]:=x[j]-1;write('* ')end
              else write('  ');
     writeln;
   end;

   for j:='A' to 'Z' do
     write(j,' ');
end.



