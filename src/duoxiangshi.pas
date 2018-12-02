var
  n,i:longint;
  a:array[0..100]of longint;
  s:string;
procedure jisuan(xi,ci:longint);
  begin
    if xi=0 then exit;
    if ci=n then if abs(xi)=1 then
                                if xi=1 then
                                          begin write('x^',ci); exit; end
                                        else
                                          begin write('-','x^',ci); exit; end
                              else
                                begin write(xi,'x^',ci); exit; end;
    if ci=0 then if xi<0 then
                           begin write(xi); exit; end
                         else
                           begin write('+',xi); exit; end;
    if xi>0 then if xi=1 then
                           begin write('+','x^',ci); exit; end
                         else
                           begin write('+',xi,'x^',ci); exit; end;
    if xi<0 then if xi=-1 then
                            begin write('-','x^',ci); exit; end
                          else
                            begin write(xi,'x^',ci); exit; end;
  end;
begin
  readln(n);
  for i:=n downto 0 do
    begin
      read(a[i]);
      jisuan(a[i],i);
    end;
end.
