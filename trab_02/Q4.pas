{Fa�a um programa que leia um n�mero real e imprima os resultados das divis�es
sucessivas desse n�mero por 2 enquanto o valor resultante da divis�o for maior do que 0,01.}
Program Q4;
var num, resultado: real;
Begin
	write('Digite um n�mero real: '); readln(num); 
	resultado := num/2;
	while resultado > 0.01 do
	begin
		writeln(resultado:0:3);              
		resultado := resultado/2;
	end; 
End.