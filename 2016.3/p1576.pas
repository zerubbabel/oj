{
作者:playoffs2005@163.com
题目:p1576 最长严格上升子序列
}

var n,i,j,max:longint; 
a,f:array[1..5000] of longint;

begin
	readln(n);
	for i:=1 to n do
		read(a[i]);
	for i:=2 to n do
		for j:=1 to i-1 do		
			if (a[i]>a[j]) and (f[i]<f[j]+1) then 
			begin
				f[i]:=f[j]+1;
				if max<f[i] then max:=f[i];
			end;		
	writeln(max+1);
end.