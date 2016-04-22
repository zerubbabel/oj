{
作者:playoffs2005@163.com
题目:p1040 统计单词个数
}

var
p,k,s,n,i,j,ii,s2,kk:longint;
f:array[0..40,0..200]of longint;
sum:array[0..200,0..200]of longint;
d:array[1..6] of string;
ch:char;
sub,t:string;
flag:boolean;
function max(a,b:longint):longint;
begin
	if a>b then exit(a)
	else exit(b);
end;
procedure getsum;
var t:string;
x,y,z,L,ii,jj:longint;
begin
	for x:=1 to p*20 do
		for y:=1 to 20*p do sum[x,y]:=0;
	for x:=1 to s do
	begin
		L:=length(d[x]);
		for y:=1 to p*20-L+1 do
		begin
			t:=copy(sub,y,L);
			if t=d[x] then
			begin
				for ii:=1 to y do 
					for jj:=y+L-1 to 20*p do inc(sum[ii,jj]);
			end;		
		end;	
	end;	
end;
procedure doit;
var x,y,z	:longint;
begin
	for x:=0 to k do
		for y:=0 to 20*p do
			f[x,y]:=0;
	for x:=1 to k do
		for y:=x to 20*p do
		begin
			for z:=x-1 to y-1 do
				f[x,y]:=max(f[x,y],f[x-1,z]+sum[z+1,y]);
		end;	
	writeln(f[k,20*p]);
end;
begin
	readln(n);
	for i:=1 to n do
	begin
		readln(p,k);
		sub:='';
		for j:=1 to p do
		begin			
			for ii:=1 to 20 do 
			begin
				read(ch);
				sub:=sub+ch;
			end;	
			readln;
		end;
		readln(s2);s:=0;
		for j:=1 to s2 do //防止重复单词
		begin
			readln(t);
			flag:=true;
			for kk:=1 to j-1 do
				if d[kk]=t then flag:=false;
			if flag then 
			begin
				inc(s);
				d[s]:=t;
			end;	
		end;	
		getsum;
		doit;
	end;
end.