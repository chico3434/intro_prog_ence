Program Questao4;
const TAM = 105;
var mat: array[1..TAM] of string;
	notas: array[1..TAM] of real;
	valido: boolean;
	nota, maxima, minima, amplitude, media, dp: real;
	i: integer;
Begin
	// leitura dos dados
	for i := 1 to TAM do 
	begin
		write('Digite a matrícula do aluno ', i, ': '); readln(mat[i]);
		valido := false;
		repeat
			write('Digite a nota do aluno ', i, ': '); readln(nota);
			if (nota < 0) or (nota > 10) then	writeln('Entrada inválida!')
			else
			begin 
				notas[i] := nota;
				valido := true;
			end;
		until valido; 	    	
	end;
	
	// processamento
	// maximo e minimo
	maxima := notas[1];
	minima := notas[1];
	for i:=2 to TAM do
	begin
		if notas[i] > maxima then maxima := notas[i];
		if notas[i] < minima then minima := notas[i];
	end;
	
	// amplitude
	amplitude := maxima - minima;
	
	// média
	media := 0;
	for i:=1 to TAM do
		media := media + notas[i];
	media := media/TAM;
	
	// desvio padrao
	dp:=0;	
	for i:=1 to TAM do dp := dp + sqr(notas[i] - media);
	dp := sqrt(dp/TAM);
	
	// exibir as estatísticas
	writeln('Nota máxima: ', maxima:0:2);
	writeln('Nota mínima: ', minima:0:2);
	writeln('Amplitude: ', amplitude:0:2);
	writeln('Média das notas: ', media:0:2);
	writeln('Desvio padrão: ', dp);
	
	// exibir matrículas das notas acima da média
	writeln('Matrículas dos alunos acima da média: ');
	for i:=1 to TAM do
		if notas[i] > media then writeln(mat[i]);	
		 
End.