var n,i,j,m:longint;
ans:int64;
a:array[1..18] of longint;
function max(a,b:int64):int64;
begin
	if a>b then exit(a)
	else exit(b);
end;
function mul(i,j:longint):int64;
var s:int64;
k:longint;
begin
	s:=1;
	for k:=i to j do
		s:=s*a[k];
	exit(s);	
end;
begin
	while not EOF do
	begin		
		readln(n);
		if(n>0) then begin
			inc(m);			
			for i:=1 to n do read(a[i]);
			ans:=0;
			for i:=1 to n do
				for j:=i to n do
					ans:=max(ans,mul(i,j));
			writeln('Case #',m,': The maximum product is ',ans,'.');
			writeln;	
		end;	
	end;
end.