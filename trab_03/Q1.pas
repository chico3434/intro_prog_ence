{Faça um programa capaz de verificar se todos os elementos de um vetor v de strings de
tamanho N são iguais. A saída do seu programa, deve ser da seguinte forma:

• Imprimir todos os elementos do vetor, um ao lado do outro.
• Caso todos os elementos sejam iguais, imprimir a frase “Todos são iguais”.
• Caso contrário, imprimir a frase “Nem todos são iguais”.
}
Program Q1;
const TAM = 5;
var v: array[1..TAM] of string;
	i: integer;
	iguais: boolean;
Begin
	{Leitura dos dados}
	writeln('Digite as ', TAM, ' strings: ');
	for i := 1 to TAM do readln(v[i]);
	
	{Processamento dos dados}
	iguais := true;
	for i := 1 to TAM-1 do
		if(v[i] <> v[i+1]) then
			iguais := false;
	
	{Saída dos dados}
	write('v = [');
	for i := 1 to TAM-1 do 
		write(v[i], ',');
	writeln(v[TAM],']');
	if iguais then writeln('Todos são iguais')
	else writeln('Nem todos são iguais');
					
End.