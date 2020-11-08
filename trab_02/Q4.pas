{Faça um programa que leia um número real e imprima os resultados das divisões
sucessivas desse número por 2 enquanto o valor resultante da divisão for maior do que 0,01.}
Program Q4;
var num, resultado: real;
Begin
	write('Digite um número real: '); readln(num); 
	resultado := num/2;
	while resultado > 0.01 do
	begin
		writeln(resultado:0:3);              
		resultado := resultado/2;
	end; 
End.