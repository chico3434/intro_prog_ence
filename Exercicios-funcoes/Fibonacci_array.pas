Program Fibonacci_array;
const TAM = 10;
type Vetor = array[1..TAM] of integer;
function Fibonacci(n: integer): Vetor;
var a, a1, aux, i: integer;
	fibo: Vetor;
begin
	if(n >= 1) then fibo[1] := 0;
	if (n >= 2) then fibo[2] := 1;
	a := 0;
	a1 := 1;
	for i := 3 to n do
	begin
		aux := a + a1;
		fibo[i] := aux;
		a := a1;
		a1 := aux;		
	end;
	Fibonacci := fibo;
end;

var seq: Vetor;
	n, i: integer; 
Begin
	n := 10;
	seq := Fibonacci(n);
	
	for i := 1 to n do write(seq[i], ', ');  
End.