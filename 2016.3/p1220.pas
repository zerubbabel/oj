{
作者:playoffs2005@163.com
题目:p1220 数字三角形
}

var n,i,j,ans:longint; 
a,f:array[1..100,0..100] of longint;
function max(a,b:longint):longint;
begin
	if a>b then exit(a)
	else exit(b);
end;
begin
	readln(n);
	for i:=1 to n do
		for j:=1 to i do
			read(a[i,j]);
	f[1,1]:=a[1,1];		
	
	for i:=2 to n do
		for j:=1 to i do		
			f[i,j]:=max(f[i-1,j-1],f[i-1,j])+a[i,j];
	ans:=-maxlongint;		
	for i:=1 to n do ans:=max(ans,f[n,i]);
	writeln(ans);
end.