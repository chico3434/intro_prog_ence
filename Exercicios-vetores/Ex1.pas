{l� 10 reais em um vetor.
Depois imprime o total de negativos e a soma dos positivos}
Program Exercicio1;
var numeros: array[1..10] of real;
var i, negativos: integer;
var soma: real;
Begin

	// inicializa��o das vari�veis
	negativos := 0;
	soma := 0;
	
	// leitura do array
	for i:=1 to 10 do
	begin 
		write('Digite um n�mero real: '); readln(numeros[i]);
	end;
	
	// processamento
	for i:=1 to 10 do
	begin
		if numeros[i] >= 0 then
			soma := soma + numeros[i]
		else
			negativos := negativos + 1;
	end;
	
	// exibindo resultados
	writeln('A soma dos positivos � ', soma:0:2);
	writeln('O total de n�mero negativos � ', negativos);
		  
End.