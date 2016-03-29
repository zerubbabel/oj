{
作者:playoffs2005@163.com
题目:p1039 数的划分
思路：DP
f[i,j,k]:j分i份，且第i份分得k的方案数
f[i,j,k]:=sum(i-1,j-k,kk);kk为[0,k]
}

var n,i,j,m,k,ans:longint; 
f:array[0..6,0..200,0..200] of longint;
function sum(i,j,k:longint):longint;
var ii,ans:longint;
begin
	ans:=0;
	for ii:=0 to k do
		ans:=ans+f[i-1,j-k,ii];
	exit(ans);	
end;
begin
  readln(n,m);  
  f[0,0,0]:=1;
  f[1,1,1]:=1;
  for i:=1 to m do
	for j:=i to n do 
		for k:=1 to j do 
			f[i,j,k]:=sum(i,j,k);
  for i:=0 to n do
	ans:=ans+f[m,n,i];
  writeln(ans);			
end.