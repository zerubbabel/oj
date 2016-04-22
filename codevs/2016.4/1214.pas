{
作者:playoffs2005@163.com
题目:p1214 线段覆盖
}

var i,j,k,n,ans:longint;
a:array[1..100,1..2] of longint;
procedure swap(var a,b:longint);
var t:longint;
begin
	t:=a;
	a:=b;b:=t;
end;
procedure sort;
var i,j:longint;
begin
	for i:=1 to n-1 do
		for j:=i+1 to n do
			if a[i,2]>a[j,2] then
			begin
				swap(a[i,1],a[j,1]);
				swap(a[i,2],a[j,2]);
			end;
end;
begin
	readln(n);
	for i:=1 to n do
	begin
		readln(a[i,1],a[i,2]);
		if a[i,2]<a[i,1] then swap(a[i,1],a[i,2]);
	end;
	sort;
	ans:=1;k:=1;
	for i:=2 to n do
	if a[k,2]<=a[i,1] then 
	begin
		inc(ans);
		k:=i;
	end;
	writeln(ans);
end.