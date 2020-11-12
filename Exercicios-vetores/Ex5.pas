{Altere o programa anterior de modo que o vetor gerado tenha 30 números em vez de apenas 10.}
Program Exercicio5;
const TAM = 30;
var a: array[1..TAM] of integer;
	i: integer;
Begin
	for i:=1 to TAM do a[i] := i;
	write('a = [');
	for i:=1 to TAM do 
		if i<>TAM then write(a[i], ', ')
		else write(a[i]);
	write('] -> [');
	for i:=1 to TAM do a[i] := a[i] * a[i];
	for i:=1 to TAM do
	if i<>TAM then write(a[i], ', ')
		else write(a[i]);
	writeln(']');  
End.