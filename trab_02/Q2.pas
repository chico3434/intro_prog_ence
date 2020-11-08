{Programa que conta votos em linguagens de programação
Após ler os dados escreve o número de votos que cada linguagem recebeu
e ainda informa a(s) vencedora(s)}
Program Q2;
var ling, r, python, julia, java, maior, tot_maior: integer;
	vencedores:string;
Begin

	// inicializar variáveis
	r := 0;
	python := 0;
	julia := 0;
	java := 0;
	
	// laço de repetição do questionário	
	repeat 
		writeln('Qual a sua linguagem favorita?');
		writeln('1-R');
		writeln('2-Python');
		writeln('3-Julia');
		writeln('4-Java');
		readln(ling);
		if ling = 1 then r := r + 1
		else if ling = 2 then python := python + 1
		else if ling = 3 then julia := julia + 1
		else if ling = 4 then java := java + 1	
	until ling=-1;
	
	// Escrever o total de cada linguagem
	writeln('Total de votos em R: ', r);
	writeln('Total de votos em Python: ', python);
	writeln('Total de votos em Julia: ', julia);
	writeln('Total de votos em Java: ', java);
	
	// calcular o maior número de votos
	maior := r;
	if python > maior then maior := python;
	if julia > maior then maior := julia;
	if java > maior then maior := java;
	
	// verificar quantos vencedores	
	tot_maior:=0;
	if r = maior then tot_maior := tot_maior + 1;
	if python = maior then tot_maior := tot_maior + 1;
	if julia = maior then tot_maior := tot_maior + 1;
	if java = maior then tot_maior := tot_maior + 1;
	
	// Escrever o(s) vencedor(es)
	vencedores := '';	
	if r = maior then vencedores := vencedores + 'R ';
	if python = maior then vencedores := vencedores + 'Python ';
	if julia = maior then vencedores := vencedores + 'Julia ';
	if java = maior then vencedores := vencedores + 'Java ';
	
	if tot_maior > 1 then writeln('Linguagens mais queridas: ', vencedores) 
	else writeln('Linguagem mais querida: ', vencedores);

End.