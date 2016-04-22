var n,i,k:longint;
a:array[1..10000] of longint;
begin
	while not EOF do
	begin		
		readln(n);
		k:=0;
		for i:=n+1 to 2*n do
		if n*i mod (i-n) =0 then
		begin
			inc(k);
			a[k]:=i;
		end;
		writeln(k);
		for i:=1 to k do
			writeln(1,'/',n,' = 1/',n*a[i] div (a[i]-n),' + 1/',a[i]);
	end;
end.