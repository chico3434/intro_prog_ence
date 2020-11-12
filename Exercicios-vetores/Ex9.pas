{O valor de PI pode ser obtido com o uso da série:
PI = 4 – (4/3) + (4/5) – (4/7) + (4/9) – (4/11) + ...
Crie um programa que armazene o valor dos 5000 primeiros termos da série em um vetor. O primeiro índice deve conter o primeiro termo (4), o segundo índice o segundo termo (4/3), e assim por diante.
Em seguida, o programa deve calcular e exibir na tela o valor de PI (mostre na tela com 20 casas decimais).}
Program Exercicio9;
const TAM = 5000;
var v: array[1..TAM] of real;
	i, denominador, sinal: integer;
	pi: real;
Begin
	// preencher vetor
	denominador := 1;
	sinal := 1;
	for i:=1 to TAM do
	begin
		v[i] := sinal * (4/denominador);
		sinal := sinal * -1;
		denominador := denominador + 2;
	end;
	
	//processamento
	pi:=0;
	for i:=1 to TAM do pi := pi + v[i];
	writeln('Valor de PI: ', pi:0:20);	  
End.