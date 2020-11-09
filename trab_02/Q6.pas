{Pesquisa social de tamanho de família
Resultados: 1, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 6, 6, 7, 7, 7, 7, 8, 8, 9
O programa deve calcular média, mediana e o desvio médio simples dos valores}
Program Q6;
var res:array[1..20] of integer;
var i:integer;
var media, mediana, des: real;
Begin
	// Atribuição dos resultados
	res[1] := 1;
	res[2] := 2;
	res[3] := 2;
	res[4] := 2;
	res[5] := 3;
	res[6] := 3;
	res[7] := 3;
	res[8] := 3;
	res[9] := 4;
	res[10] := 4;
	res[11] := 5;
	res[12] := 6;
	res[13] := 6;
	res[14] := 7;
	res[15] := 7;
	res[16] := 7;
	res[17] := 7;
	res[18] := 8;
	res[19] := 8;
	res[20] := 9;
	
	// calcular media
	media := 0;
	for i:=1 to 20 do media := media + res[i];
	media := media/20;
	
	// calcular mediana
	mediana := (res[20 DIV 2] + res[20 DIV 2 + 1])/2;
	
	// calcular desvio médio simples
	des := 0;
	for i:=1 to 20 do des := des + ABS(res[i] - media);
	des := des/20;
	
	// exibir resultados
	writeln('A média é: ', media:0:2);
	writeln('A mediana é: ', mediana:0:2);
	writeln('O desvio médio simples é: ', des:0:2);
	
End.