{Crie um programa que leia os dados da pesquisa via teclado e os armazene em um vetor de registros
com 1500 posi��es. Ap�s todos os dados serem carregados, calcule e exiba na tela o resultado dos
seguintes c�lculos:
� A quantidade de homens que n�o bebem e n�o fumam.
� A quantidade de homens que bebem ou fumam.
� A porcentagem de homens que fumam mais de um ma�o de cigarro por dia, bebem mais de um
litro de cerveja por semana e tomam rem�dio para controlar a press�o.}
Program Q2;
const TAM = 5; // 1500
type resposta = record
	q1: char; // A(n�o bebo), B(bebo at� 1 litro por semana), C(bebo mais de 1 litro por semana)
	q2: char; // A(n�o fumo), B(fumo at� um ma�o por dia), C(fumo mais de um ma�o por dia)
	q3: char; // A(n�o), B(sim)
end;
var respostas: array[1..TAM] of resposta;
	i, calc1, calc2, calc3: integer;
	porcentagem: real;
Begin
	{Leitura dos dados}
	for i := 1 to TAM do
	begin
		writeln('Entrevistado ', i);
		{Quest�o 1}
	  writeln('1. Qual � o seu consumo semanal de cerveja?');
		writeln('(A)-n�o bebo');
		writeln('(B)-bebo at� 1 litro por semana');
		writeln('(C)-bebo mais de 1 litro por semana');
		readln(respostas[i].q1);
		
		{Quest�o 2}
		writeln('2. Qual � o seu consumo di�rio de cigarros?');
		writeln('(A)-n�o fumo');
		writeln('(B)-fumo at� um ma�o por dia');
		writeln('(C)-fumo mais de um ma�o por dia');
		readln(respostas[i].q2);
		
		{Quest�o 3}
		writeln('3. Voc� toma rem�dio para controlar a press�o arterial?');
		writeln('(A)-n�o');
		writeln('(B)-sim');
		readln(respostas[i].q3);
	end; 
	
	{Processamento dos dados}
	{Calc 1 - A quantidade de homens que n�o bebem e n�o fumam}
	{Calc 2 - A quantidade de homens que bebem ou fumam}
	{Calc 3 - A quantidade de homens que fumam mais de um ma�o de cigarro por dia, bebem mais de um
litro de cerveja por semana e tomam rem�dio para controlar a press�o.}
	for i := 1 to TAM do
	begin 
		if(respostas[i].q1 = 'a') and (respostas[i].q2 = 'a') then calc1 := calc1 + 1
		else calc2 := calc2 + 1;
		if(respostas[i].q1 = 'c') and (respostas[i].q2 = 'c') and (respostas[i].q3 = 'b') then calc3 := calc3 + 1;
	end;
	// porcentagem pedida
	porcentagem := (calc3 / TAM) * 100;
	
	{Sa�da dos dados}
	writeln('Quantidade de homens que n�o bebem e n�o fumam: ', calc1);
	writeln('Quantidade de homens que bebem ou fumam: ', calc2);
	writeln('Porcentagem de homens que fumam mais de um ma�o de cigarro por dia, bebem mais de um litro de cerveja por semana e tomam rem�dio para controlar a press�o: ', porcentagem:0:0, '%');
End.