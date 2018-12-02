var
  dx:array[1..4]of longint=(-1,0,0,1);
  dy:array[1..4]of longint=(0,-1,1,0);
  q:array[1..225]of longint;
  f:array[0..15,0..15]of longint;
  n,m,x,y,a,b,c,d,i,j:longint;
  w:boolean;
procedure print(k:longint);
  var
    i,x,y:longint;
  begin
    write('(',a,',',b,') ');
    x:=a;
    y:=b;
    for i:=1 to k do
      begin
        write('-> ');
        x:=x+dx[q[i]];
        y:=y+dy[q[i]];
        write('(',x,',',y,')');
      end;
  end;
procedure try1(k:longint);
  var
    i:longint;
  begin
    for i:=1 to 4 do
      begin
        if f[x+dx[i],y+dy[i]]=1 then begin
                                        f[x,y]:=0;
                                        x:=x+dx[i];
                                        y:=y+dy[i];
                                        q[k]:=i;
                                        if (x=c)and(y=d) then begin print(k); writeln; w:=true; end
                                           else try1(k+1);

                                        x:=x-dx[i];
                                        y:=y-dy[i];
                                         f[x,y]:=1;
                                      end;
  end;
  end;
begin
  fillchar(f,sizeof(f),0);
  w:=false;
  readln(n,m);
  for i:=1 to n do
    begin
      for j:=1 to m do
        read(f[i,j]);
      readln;
    end;
  readln(x,y);
  readln(c,d);
  a:=x;
  b:=y;
  try1(1);
  if w=false then writeln('-1');
end.

