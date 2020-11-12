{Faça um programa que primeiro crie um vetor a de 10 posições e o preencha automaticamente
 com os números 1 a 10. Imprima o vetor criado. Depois eleve todos os números ao quadrado,
 alterando o conteúdo do vetor, imprimindo-o em seguida. A saída do programa deve ser exibida
 em uma única linha, exatamente igual a que é apresentada a seguir:
 a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] ? [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]}
Program Exercicio4;
var a: array[1..10] of integer;
	i: integer;
Begin
	for i:=1 to 10 do a[i] := i;
	write('a = [');
	for i:=1 to 10 do 
		if i<>10 then write(a[i], ', ')
		else write(a[i]);
	write('] -> [');
	for i:=1 to 10 do a[i] := a[i] * a[i];
	for i:=1 to 10 do
	if i<>10 then write(a[i], ', ')
		else write(a[i]);
	writeln(']');	  
End.