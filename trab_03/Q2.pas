{Crie um programa que leia os dados da pesquisa via teclado e os armazene em um vetor de registros
com 1500 posições. Após todos os dados serem carregados, calcule e exiba na tela o resultado dos
seguintes cálculos:
• A quantidade de homens que não bebem e não fumam.
• A quantidade de homens que bebem ou fumam.
• A porcentagem de homens que fumam mais de um maço de cigarro por dia, bebem mais de um
litro de cerveja por semana e tomam remédio para controlar a pressão.}
Program Q2;
const TAM = 5; // 1500
type resposta = record
	q1: char; // A(não bebo), B(bebo até 1 litro por semana), C(bebo mais de 1 litro por semana)
	q2: char; // A(não fumo), B(fumo até um maço por dia), C(fumo mais de um maço por dia)
	q3: char; // A(não), B(sim)
end;
var respostas: array[1..TAM] of resposta;
	i, calc1, calc2, calc3: integer;
	porcentagem: real;
Begin
	{Leitura dos dados}
	for i := 1 to TAM do
	begin
		writeln('Entrevistado ', i);
		{Questão 1}
	  writeln('1. Qual é o seu consumo semanal de cerveja?');
		writeln('(A)-não bebo');
		writeln('(B)-bebo até 1 litro por semana');
		writeln('(C)-bebo mais de 1 litro por semana');
		readln(respostas[i].q1);
		
		{Questão 2}
		writeln('2. Qual é o seu consumo diário de cigarros?');
		writeln('(A)-não fumo');
		writeln('(B)-fumo até um maço por dia');
		writeln('(C)-fumo mais de um maço por dia');
		readln(respostas[i].q2);
		
		{Questão 3}
		writeln('3. Você toma remédio para controlar a pressão arterial?');
		writeln('(A)-não');
		writeln('(B)-sim');
		readln(respostas[i].q3);
	end; 
	
	{Processamento dos dados}
	{Calc 1 - A quantidade de homens que não bebem e não fumam}
	{Calc 2 - A quantidade de homens que bebem ou fumam}
	{Calc 3 - A quantidade de homens que fumam mais de um maço de cigarro por dia, bebem mais de um
litro de cerveja por semana e tomam remédio para controlar a pressão.}
	for i := 1 to TAM do
	begin 
		if(respostas[i].q1 = 'a') and (respostas[i].q2 = 'a') then calc1 := calc1 + 1
		else calc2 := calc2 + 1;
		if(respostas[i].q1 = 'c') and (respostas[i].q2 = 'c') and (respostas[i].q3 = 'b') then calc3 := calc3 + 1;
	end;
	// porcentagem pedida
	porcentagem := (calc3 / TAM) * 100;
	
	{Saída dos dados}
	writeln('Quantidade de homens que não bebem e não fumam: ', calc1);
	writeln('Quantidade de homens que bebem ou fumam: ', calc2);
	writeln('Porcentagem de homens que fumam mais de um maço de cigarro por dia, bebem mais de um litro de cerveja por semana e tomam remédio para controlar a pressão: ', porcentagem:0:0, '%');
End.