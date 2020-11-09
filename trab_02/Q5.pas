{Crie um programa que leia um vetor “w” (real) de 12 valores e construa outro vetor “u” de
acordo com o exemplo do quadro abaixo:
Vetor w 	2.5 	8 	4 	1 		... 	10
Vetor u 	7.5 	4 	12	0.5 	... 	5}
Program Q5;
var w:array[1..12] of real;
var u:array[1..12] of real;
var i:integer;
Begin
	// Ler w
	for i:=1 to 12 do
	begin
		write('Digite um número real: '); readln(w[i]);
	end;
	// criar u
	for i:=1 to 12 do
	begin
		if(i MOD 2 = 0) then u[i] := w[i]/2
		else u[i] := w[i]*3; 
	end;
	// printar u
	for i:=1 to 12 do writeln(u[i]:0:2);	  
End.