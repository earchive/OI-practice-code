type
  tree=record
    zi:char;
    left,right:longint;
  end;
var
  s:string;
  a:array[1..10000]of tree;
  b:array[1..10000]of char;
  w,i,j:longint;
procedure build(k:longint);
  var
    x:longint;
  begin
    inc(w);
    a[w].zi:=s[w];
    if a[K].left=0 then a[k].left:=w
       else a[k].right:=w;
    x:=w;
    if s[w]<>'.' then begin build(x); build(x); end;
  end;
procedure print(k:longint);
  begin
    if a[k].left>0 then print(a[k].left);
    //write(a[k].zi);
    inc(j);
    b[j]:=a[k].zi;
    if a[k].right>0 then print(a[k].right);
  end;
begin
  readln(s);
  S:=S+'..';
  w:=1;
  a[1].zi:=s[1];
  build(1);
  build(1);
  print(1);
  for i:=1 to j do
    if b[i]<>'.' then write(b[i]);
  //for i:=1 to 20 do
    //writeln(a[i].zi,' ',a[i].left,' ',a[i].right);
end.