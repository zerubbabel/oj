{
作者:playoffs2005@163.com
题目:p1576 最长严格上升子序列
DP
使用记忆化搜索写，比较好些
}

var n,i,j,max:longint; 
a,sum:array[0..100] of longint;
f:array[1..100,1..100] of longint;
function find(i,j:longint):longint;
var k,min,t:longint;
begin
	if i>j then exit(0);
	if f[i,j]<>maxlongint div 3 then exit(f[i,j])
	else
	begin
		min:=maxlongint div 3;
		for k:=i to j-1 do
		begin
			t:=find(i,k)+find(k+1,j)+sum[j]-sum[i-1] ;
			if min>t then min:=t;
		end;	
		if min<f[i,j] then f[i,j]:=min;
		exit(f[i,j]);	
	end;	
end;
begin
	readln(n);
	for i:=1 to n do
	begin
		read(a[i]);
		sum[i]:=sum[i-1]+a[i];
	end;	
	for i:=1 to n do
		for j:=i to n do f[i,j]:=maxlongint div 3;
	for i:=1 to n do f[i,i]:=0;	
	writeln(find(1,n));
end.