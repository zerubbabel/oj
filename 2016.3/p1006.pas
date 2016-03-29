{
作者:playoffs2005@163.com
题目:p1006 等差数列
http://codevs.cn/problem/1006/
思路：枚举
}

var n,i,j,ans,max,k,t,d:longint; 
a:array[1..100] of longint;
begin
  readln(n);  
  ans:=1;//n=1 is special
  for i:=1 to n do read(a[i]);
  for i:=1 to n-1 do
	for j:=i+1 to n do
		if a[i]>a[j] then 
		begin
			t:=a[i];
			a[i]:=a[j];
			a[j]:=t;
		end;
  for i:=1 to n-1 do
	for j:=i+1 to n do
	begin
		d:=a[j]-a[i];
		k:=j+1;
		max:=2;
		while k<=n do
		begin
			if a[k]-a[i]=max*d then inc(max);
			inc(k);
		end;
		if max>ans then ans:=max;
	end;
	writeln(ans);
end.