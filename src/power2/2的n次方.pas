type
	data=record
		num:array[1..500000]of integer;
		len:longint;//定义1个高精度数 的数据类型
	end;
var
	p,i,n:longint;
	ans,temp:data;
function pingf(a,b:data):data;//a  * b
var
	i,j:longint;
	c:data;
begin
	fillchar(c,sizeof(c),0);
	for i:=1 to a.len do
		for j:=1 to b.len do	
			c.num[i+j-1]:=c.num[i+j-1]+a.num[i]*b.num[j];
	c.len:=a.len+b.len-1;
	
	for i:=1 to c.len do
		begin
			c.num[i+1]:=c.num[i+1]+c.num[i]div 10;
			c.num[i]:=c.num[i] mod 10;
		end;
	while c.num[c.len+1]>0 do
	begin
		c.len:=c.len+1;
		c.num[c.len+1]:=c.num[c.len]div 10;
		c.num[c.len]:=c.num[c.len]mod 10;
	end;
	pingf:=c;	
		
end;
begin
	temp.num[1]:=2;temp.len:=1;//倍增数起始位置为2
	ans.num[1]:=1;ans.len:=1;//答案开始为1
	readln(n);
	p:=n;
	while p >0 do
	begin
		if p mod 2=1 then//当余数为1则，累乘答案
			ans:=pingf(ans,temp);
		p:=p div 2;
		temp:=pingf(temp,temp);//倍增数增加 
		
	end;
	for i:= ans.len downto 1 do
		write(ans.num[i]);
end.