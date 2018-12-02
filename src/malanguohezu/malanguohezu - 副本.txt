var
  f:array[-3..18,-3..18]of boolean;
  ans,m,n,x,y:longint;
procedure zoulu(a,b:longint);
  begin
    if (a=n)and(b=m) then begin ans:=ans+1; exit; end
      else begin if (f[a+1,b]=false)and(a+1<=n) then zoulu(a+1,b);
                 if (f[a,b+1]=false)and(b+1<=m) then zoulu(a,b+1);
           end;
  end;
begin
  fillchar(f,sizeof(f),false);
  readln(n,m,x,y);
  f[x,y]:=true;
  f[x-1,y-2]:=true;
  f[x-2,y-1]:=true;
  f[x-1,y+2]:=true;
  f[x-2,y+1]:=true;
  f[x+1,y+2]:=true;
  f[x+2,y+1]:=true;
  f[x+1,y-2]:=true;
  f[x+2,y-1]:=true;
  zoulu(0,0);
  writeln(ans);
end.