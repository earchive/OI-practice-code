var
  dx:array[1..12]of longint=(-2,-1,0,0,1,2,0,0,-1,-1,1,1);
  dy:array[1..12]of longint=(0,0,-1,-2,0,0,1,2,-1,1,-1,1);
  a:array[-5..1000,-5..1000]of char;
  i,j,m,n,z:longint;
procedure find1(x,y:longint);
  var
    i:longint;
  begin
    for i:=1 to 12 do
      if a[x+dx[i],y+dy[i]]='#' then begin a[x+dx[i],y+dy[i]]:='-';
                                           find1(x+dx[i],y+dy[i]);
                                     end;
    end;
begin
  fillchar(a,sizeof(a),'-');
  readln(n,m);
  for i:=1 to n do
    begin
      for j:=1 to m do
        read(a[i,j]);
      readln;
    end;
  for i:=1 to n do
    for j:=1 to m do
      if a[i,j]='#' then begin inc(z); a[i,j]:='-'; find1(i,j); end;
  writeln(z);
end.
