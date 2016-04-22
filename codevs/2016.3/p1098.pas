{
作者:playoffs2005@163.com
题目:p1098 均分纸牌
}

var
	n,i,avg,ans,s:longint;
	a:array[1..100] of longint;
begin
	readln(n);
	for i:=1 to n do
	begin
		read(a[i]);
		s:=s+a[i];
	end;
	avg:=s div n;
	for i:=1 to n-1 do
	begin
		if avg<>a[i] then inc(ans);
		if avg>=a[i] then
			a[i+1]:=a[i+1]-abs(avg-a[i])
		else 
			a[i+1]:=a[i+1]+abs(avg-a[i])
	end;
	writeln(ans);	
end.