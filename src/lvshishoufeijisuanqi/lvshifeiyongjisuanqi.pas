program lvshifeiyongjisuanqi;
var
  n,g,d:double;
procedure openfile;
  begin
    assign(input,'lvshifeiyongjisuanqi.in');
    reset(input);
    assign(output,'lvshifeiyongjisuanqi.out');
    rewrite(output);
  end;
procedure closefile;
  begin
    close(input);
    close(output);
  end;
procedure process1;
  begin
    g:=3000;
    d:=1000;
  end;
procedure process2;
  var
    k:double;
  begin
    g:=3000;
    d:=1000;
    k:=n-50000;
    g:=g+k*0.06;
    d:=d+k*0.05;
  end;
procedure process3;
  var
    k:double;
    begin
      g:=3000;
      d:=1000;
      g:=g+(500000-50000)*0.06;
      d:=d+(500000-50000)*0.05;
      k:=n-500000;
      g:=g+k*0.05;
      d:=d+k*0.04;
    end;
procedure process4;
  var
    k:double;
  begin
    g:=3000;
    d:=1000;
    g:=g+(500000-50000)*0.06;
    d:=d+(500000-50000)*0.05;
    g:=g+(1000000-500000)*0.05;
    d:=d+(1000000-500000)*0.04;
    k:=n-1000000;
    g:=g+k*0.04;
    d:=d+k*0.03;
  end;
procedure process5;
  var
    k:double;
  begin
    g:=3000;
    d:=1000;
    g:=g+(500000-50000)*0.06;
    d:=d+(500000-50000)*0.05;
    g:=g+(1000000-500000)*0.05;
    d:=d+(1000000-500000)*0.04;
    g:=g+(5000000-1000000)*0.04;
    d:=d+(5000000-1000000)*0.03;
    k:=n-5000000;
    g:=g+k*0.03;
    d:=d+k*0.02;
  end;
procedure process6;
  var
    k:double;
  begin
    g:=3000;
    d:=1000;
    g:=g+(500000-50000)*0.06;
    d:=d+(500000-50000)*0.05;
    g:=g+(1000000-500000)*0.05;
    d:=d+(1000000-500000)*0.04;
    g:=g+(5000000-1000000)*0.04;
    d:=d+(5000000-1000000)*0.03;
    g:=g+(10000000-5000000)*0.03;
    d:=d+(10000000-5000000)*0.02;
    k:=n-10000000;
    g:=g+k*0.02;
    d:=d+k*0.01;
  end;
begin
  openfile;
  readln(n);
  if n<=50000 then process1;
  if (n>50000)and(n<=500000) then process2;
  if (n>500000)and(n<=1000000) then process3;
  if (n>1000000)and(n<=5000000) then process4;
  if (n>5000000)and(n<=10000000) then process5;
  if n>10000000 then process6;
  writeln(g:0:2);
  writeln(d:0:2);
  closefile;
end.