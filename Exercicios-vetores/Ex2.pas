{Verificar matr�culas iguais em cursos diferentes}
Program Exercicio2;
const TAM = 5;
var vet_julia, vet_python: array[1..TAM] of string[12];
	i, j: integer;
Begin

	// leitura dos dados
	for i:=1 to TAM do
	begin 
		write('Digite a matr�cula ', i, ' de Julia: '); readln(vet_julia[i]);
	end;
	for i:=1 to TAM do
	begin 
		write('Digite a matr�cula ', i, ' de Python: '); readln(vet_python[i]);
	end;
	
	// exibir as matriculas de quem est� nos dois
	for i:=1 to TAM do 
		for j:=1 to TAM do
			if vet_julia[i] = vet_python[j] then writeln('A matr�cula ', vet_julia[i], ' est� nos dois cursos!');
End.