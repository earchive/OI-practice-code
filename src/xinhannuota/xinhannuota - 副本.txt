        const
          max=1000;
          s='ABC';
        var
          n,i,j,x,m,count:longint;
          a,b:array[1..max]of longint;
        procedure move(k:longint;w:longint);
          var
            i,j:longint;
          begin
            if a[k]=w then exit;
            j:=6-a[k]-w;
            for i:=k-1 downto 1 do
              begin
                move(i,j);
                a[i]:=j;
              end;
            writeln('move ',k,' from ',s[a[k]],' to ',s[w]);
            inc(count);
          end;
        begin
          readln(n);
          for i:=1 to 3 do
            begin
              read(m);
              for j:=1 to m do
                begin
                  read(x);
                  a[x]:=i;
                end;
            end;
          for i:=1 to 3 do
            begin
              read(m);
              for j:=1 to m do
                begin
                  read(x);
                  b[x]:=i;
                end;
            end;
          for i:=n downto 1 do
            move(i,b[i]);
          writeln(count);
        end.