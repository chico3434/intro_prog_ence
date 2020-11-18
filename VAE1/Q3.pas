Program Questao3;
var N, i: integer;
	r: real;
Begin
	repeat 
		write('Digite um número inteiro positivo: '); readln(N);
		if N < 0 then continue; // se for negativo pula pro until
		for i := 1 to (N DIV 2) do
			if i*(i+1)*(i+2)=N then writeln(i, ' * ' , i+1, ' * ' , i+2 , ' = ', N);	
	until N = -1; // flag de saída  
End.