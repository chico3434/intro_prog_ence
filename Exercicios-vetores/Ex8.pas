{Crie um programa que leia 10 números inteiros e armazene em um vetor. Em seguida imprima um relatório que exiba apenas os números que são quadrados perfeitos.
OBS: Um número é quadrado perfeito quando tem um número inteiro como raiz quadrada.
DICA: As funções TRUNC ou ROUND (Unidade 4) podem ser utilizadas na resolução deste problema.}
Program Exercicio8;
const TAM = 10;
var v: array[1..TAM] of integer;
	i: integer;
Begin
	// ler valores
	for i:=1 to TAM do
	begin
		write('Digite o valor na posição ', i, ':'); readln(v[i]);
  end;
  
  // exibir relatório
  writeln('Os números a seguir são quadrados perfeitos.');
  for i:=1 to TAM do 
  	if sqrt(v[i]) = TRUNC(sqrt(v[i])) then writeln(v[i]);
  
End.