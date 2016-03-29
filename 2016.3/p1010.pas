{
作者:playoffs2005@163.com
题目:p1010 过河卒
}

const d:array[1..8,1..2] of longint=((-2,-1),(-1,-2),(-2,1),(-1,2),(1,2),(2,1),(1,-2),(2,-1));
var n,m,x,y,i,j:longint; 
f:array[-2..22,-2..22] of longint;
b:array[-2..22,-2..22] of boolean;
procedure horse(x,y:longint);
var i,u,v:longint;
begin
	for i:=1 to 8 do
	begin
		u:=d[i,1]+x;
		v:=d[i,2]+y;
		b[u,v]:=true;
	end;	
end;
begin
	readln(n,m,x,y);
	f[0,-1]:=1;	
	b[x,y]:=true;//control spot	
	horse(x,y);	
	for i:=0 to n do
		for j:=0 to m do
			if not b[i,j] then
				f[i,j]:=f[i-1,j]+f[i,j-1];
	writeln(f[n,m]);		
end.