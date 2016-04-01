{
作者:playoffs2005@163.com
题目:p1017 乘积最大
}

var n,m,i,j,k,max:longint; 
t:int64;
ch:char;
a:array[1..40] of longint;
f:array[0..6,1..40] of int64;
function sum(i,j:longint):int64;
var k:longint;
s:int64;
begin
	s:=0;
	for k:=i to j do	
		s:=s*10+a[k];
	exit(s);	
end;
begin
	readln(n,m);
	for i:=1 to n do 
	begin
		read(ch);
		a[i]:=ord(ch)-ord('0');
	end;	
	for i:=1 to n do f[0,i]:=sum(1,i);	
	for k:=1 to m do
		for i:=1 to n do
		begin
			max:=-maxlongint;
			for j:=1 to i-1 do
			begin
				t:=f[k-1,j]*sum(j+1,i);
				if t>max then max:=t;
			end;	
			f[k,i]:=max;
		end;		
	writeln(f[m,n]);
end.