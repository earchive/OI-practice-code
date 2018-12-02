type
  tree=record
    num,left,right:longint;
  end;
var
  a:array[1..100]of tree;
  n,k,i,j:longint;
  b:array[1..100]of longint;
procedure find(k:longint);
  begin

    if a[k].left>0 then find(a[k].left);
    j:=j+1; b[j]:=a[k].num;
    //writeln(a[k].num);
    if a[k].right>0 then find(a[k].right);

  end;
begin
  readln(n);
  readln(k);
  for i:=1 to n do
    readln(a[i].num,a[i].left,a[i].right);
  j:=0;
  find(1);
  for i:=1 to n do   //write(b[i],' ');
    if k=b[i] then writeln(i);
  //n:=1;
  //while b[i]<>k do
    //n:=n+1;

end.
