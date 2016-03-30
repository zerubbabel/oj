{
作者:playoffs2005@163.com
题目:p1044 拦截导弹
//std:DP+Dilworth定理
//hcy:DP+贪心模拟
}

const maxH=30001;
var n,i,j,s,max:longint; 
a,f:array[1..20] of longint;
procedure find(i:longint);
var k:longint;
begin
	k:=1;
	while a[i]>f[k] do inc(k);
	if f[k]=maxH then inc(s);
	f[k]:=a[i];
end;

begin
	while not eoln do
	begin
		inc(n);
		read(a[n]);
	end;	
	max:=1;
	for i:=1 to n do f[i]:=1;
	for i:=2 to n do
		for j:=1 to i-1 do		
			if (a[i]<=a[j]) and (f[i]<f[j]+1) then 
			begin
				f[i]:=f[j]+1;
				if max<f[i] then max:=f[i];
			end;		
	writeln(max);
	for i:=1 to n do f[i]:=maxH;
	f[1]:=a[1];s:=1;
	for i:=2 to n do find(i);
	writeln(s);
end.