var n,sum,i,m:longint;
b,c:array[0..9] of boolean;
flag:boolean;
procedure find(k,s:longint);
var i,t,r,t2:longint;
begin
	if k>5 then
	begin
		t:=n*s;t2:=t;
		c:=b;
		flag:=true;
		if t<10000 then 
		begin
			if c[0] then flag:=false;
			c[0]:=true;
		end;	
		while t>0 do
		begin
			r:=t mod 10;
			if c[r] then 
			begin
				flag:=false;
				break;
			end;	
			c[r]:=true;
			t:=t div 10;			
		end;
		if flag then 
		begin
			if t2<10000 then write(0);
			write(t2,' / ');
			if s<10000 then write(0);
			writeln(s,' = ',n);
			inc(sum);
		end;	
		exit;
	end;
	for i:=0 to 9 do
		if not b[i] then
		begin
			b[i]:=true;
			find(k+1,10*s+i);
			b[i]:=false;
		end;
end;
begin
	while true do
	begin		
		readln(n);
		if n=0 then break;
		if m<>0 then writeln;
		inc(m);
		for i:=0 to 9 do b[i]:=false;
		
		sum:=0;
		find(1,0);
		if sum=0 then writeln('There are no solutions for ',n,'.');
	end;
end.