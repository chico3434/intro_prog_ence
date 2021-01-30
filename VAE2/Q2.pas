Program Q2;

var arq: text;
	linha: string;
	qtd_sofreu, total, qtd_masc_menos30_sofreu: integer;
	por_sofreu: real;
	
Begin
	{ Leitura e processamento de dados }
	assign(arq, 'C:\dev\intro_prog_ence\bases\PESQ_ACIDENTES.txt');
	reset(arq);

	while not eof(arq) do
	begin
		readln(arq, linha);
		// Quantidade de acidades
		if(copy(linha,5,1) = 'S') then qtd_sofreu := qtd_sofreu + 1;
		// Quantidade de acidentes de homens com menos de 30 anos
		if(linha = 'M<30S') then qtd_masc_menos30_sofreu := qtd_masc_menos30_sofreu + 1;
		total := total + 1;		
	end;
	close(arq);
	por_sofreu := qtd_sofreu/total*100;
	
	{ Exibição dos resultados }
	writeln('Quantidade de pessoas que sofreram acidente de trânsito: ', qtd_sofreu);
	writeln('Porcentagem de pessoas que sofreram acidente de trânsito: ', por_sofreu:0:2, '%');
	writeln('Quantidade de pessoas do sexo masculino com menos de 30 anos que sofreram acidente de trânsito: ', qtd_masc_menos30_sofreu);  
End.