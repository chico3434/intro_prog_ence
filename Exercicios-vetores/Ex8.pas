{Crie um programa que leia 10 n�meros inteiros e armazene em um vetor. Em seguida imprima um relat�rio que exiba apenas os n�meros que s�o quadrados perfeitos.
OBS: Um n�mero � quadrado perfeito quando tem um n�mero inteiro como raiz quadrada.
DICA: As fun��es TRUNC ou ROUND (Unidade 4) podem ser utilizadas na resolu��o deste problema.}
Program Exercicio8;
const TAM = 10;
var v: array[1..TAM] of integer;
	i: integer;
Begin
	// ler valores
	for i:=1 to TAM do
	begin
		write('Digite o valor na posi��o ', i, ':'); readln(v[i]);
  end;
  
  // exibir relat�rio
  writeln('Os n�meros a seguir s�o quadrados perfeitos.');
  for i:=1 to TAM do 
  	if sqrt(v[i]) = TRUNC(sqrt(v[i])) then writeln(v[i]);
  
End.