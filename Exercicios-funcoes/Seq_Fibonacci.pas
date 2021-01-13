Program Seq_Fibonacci;
procedure Fibonacci(n: integer);
var a, a1, aux, i: integer;
begin
	if(n >= 1) then write('0');
	if (n >= 2) then write(', 1'); 
	a := 0;
	a1 := 1;
	for i := 3 to n do
	begin
		aux := a + a1;
		write(', ',aux);
		a := a1;
		a1 := aux;		
	end;
	writeln;
end;

var n: integer; 
Begin
	repeat
		writeln('Digite o n(n menor que 1 para parar): ');
		readln(n);
		Fibonacci(n);
	until(n < 1); 
End.