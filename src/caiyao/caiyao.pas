const
  xmax=10000;
  ymax=10000;
type
  lei=array[0..xmax,0..ymax]of char;
var
  a:lei;
  b:array[1..10000]of longint;
  dx:array[1..4]of longint=(-1,0,1,0);
  dy:array[1..4]of longint=(0,-1,0,1);
  i,j,c,n,m,x,y,x2,y2,t:longint;
  w:boolean;
procedure quicksort(s,t:longint);
  var
    i,j,x,te:longint;
  begin
    i:=s;
    j:=t;
    x:=b[(i+j)div 2];
    while i<j do
      begin
        while b[i]<x do inc(i);
        while b[j]>x do dec(j);
        if i<=j then begin te:=b[i]; b[i]:=b[j]; b[j]:=te; inc(i); dec(j); end;
      end;
    if s<j then quicksort(s,j);
    if t>i then quicksort(i,t);
  end;
procedure zuo;
  var
    i:longint;
  begin

    for i:=1 to 4 do
      if (a[x+dx[i],y+dy[i]]<>'#')and(x+dx[i]<=n)and(x+dx[i]>=1)and(y+dy[i]<=m)and(y+dy[i]>=1)
        then begin
               a[x,y]:='#';
               inc(x,dx[i]);
               inc(y,dy[i]);
               write(x,' ',y,' ');
               if (x=x2)and(y=y2)
                 then begin w:=true; inc(t); writeln(c); end //writeln(x,y);b[t]:=c; end
                 else  begin inc(c); zuo;  end;
               dec(x,dx[i]);
               dec(y,dy[i]);
               a[x,y]:='.';
             end;

  end;
begin
  readln(n,m);

  while (n<>0)and(m<>0) do
    begin
      for i:=1 to n do
        begin
          for j:=1 to m do
            begin
              read(a[i,j]);
              if a[i,j]='@' then begin x:=i; y:=j; end
                        else if a[i,j]='*' then begin x2:=i; y2:=j; end;
            end;
          readln;
        end;
      //for i:=1 to n do
        //begin
          //for j:=1 to m do
            //write(a[i,j]);
          //writeln;
        //end;
        c:=0;
    t:=0;
    fillchar(b,sizeof(b),0);
    w:=false;
      zuo;   if w=false then writeln('-1') else begin quicksort(1,t); writeln(b[1]); end;
      readln(n,m);
    end;
end.
