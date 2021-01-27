Program trab_04;

const TAM = 48842;
const in_path = 'C:\dev\intro_prog_ence\bases\census.csv';
const out_path = 'C:\dev\intro_prog_ence\bases\RESULTADOS.TXT';

{INICIO -- C�digo do split para vetor de 10 campos -- INICIO}

const CAMPOS = 10;
type vet = array[1..CAMPOS] of string;

function split(s: string; sep: char): vet;
var i, ini, posi, len: integer;
	vetor: vet;
begin
	ini:=1;
	posi:=1;
	len := LENGTH(s);
	for i:=1 to len do
		if s[i] = sep then
		begin
			vetor[posi] := copy(s,ini,i - ini);
			posi := posi + 1;
			ini := i+1;		
		end;
		vetor[posi] := copy(s,ini,len+1-ini);
		split := vetor; 
end;

{FIM -- C�digo do split para vetor de 10 campos -- FIM}

type tPessoaCenso = record
  age: integer;
  education: string;
  education_num: integer;
  marital_status: string;
  occupation: string;
  race: string;
  sex: string;
  hours_per_week: integer;
  native_country: string;
  income_class: string;
end;

var vetCenso: array[1..TAM] of tPessoaCenso;
	arq: text;
	linha: string;
	campo: vet;
	i, temp, code:integer; 
	por_mais50, por_fem_mais50, por_male_mais50, por_alemao_mais50, por_mexicano_mais50: real;
	total, qtd_mais50: integer; // An�lise 1
	qtd_fem, qtd_fem_mais50, qtd_male, qtd_male_mais50: integer; // An�lise 2
	qtd_alemao, qtd_alemao_mais50, qtd_mexicano, qtd_mexicano_mais50: integer; // An�lise 3
Begin
  
  {PARTE 1: LEITURA DA BASE DE DADOS}
  writeln('Lendo os dados...');
  assign(arq, in_path);
  reset(arq);
  
  // pular o header
  readln(arq, linha);
  
  i := 0;
  while not eof(arq) do
  //for i:=1 to 10 do
  begin
  	i := i + 1;
    readln(arq, linha);
    campo := split(linha, ',');
    
		// age
    val(campo[1], temp, code);
    vetCenso[i].age := temp;
    
    // education
    vetCenso[i].education := campo[2];
    
    // education_num
    val(campo[3], temp, code);
    vetCenso[i].education_num := temp;
    
    // marital_status
    vetCenso[i].marital_status := campo[4];
    
    // occupation
    vetCenso[i].occupation := campo[5];
		
		// race
		vetCenso[i].race := campo[6];
		
		// sex 
		vetCenso[i].sex := campo[7];
		
		// hours_per_week
		val(campo[8], temp, code);
		vetCenso[i].hours_per_week := temp;
		
		// native_country
		vetCenso[i].native_country := campo[9];
		
		// income_class
		vetCenso[i].income_class := campo[10]; 
  end;
  close(arq);
	writeln('Leitura feita.');
	writeln('Processando an�lise...');	
  
  {PARTE 2: AN�LISE DA BASE DE DADOS}
  
	total := TAM;
	for i:=1 to TAM do
	begin
		// An�lise 1
		if(vetCenso[i].income_class = '>50K') then qtd_mais50 := qtd_mais50 + 1;
		// An�lise 2
		if(vetCenso[i].sex = 'Female') then qtd_fem := qtd_fem + 1;
		if(vetCenso[i].sex = 'Male') then qtd_male := qtd_male + 1;
		if(vetCenso[i].sex = 'Female') and (vetCenso[i].income_class = '>50K') then qtd_fem_mais50 := qtd_fem_mais50 + 1;	
		if(vetCenso[i].sex = 'Male') and (vetCenso[i].income_class = '>50K') then qtd_male_mais50 := qtd_male_mais50 + 1;
		// An�lise 3
		if(vetCenso[i].native_country = 'Germany') then qtd_alemao := qtd_alemao + 1;
		if(vetCenso[i].native_country = 'Mexico') then qtd_mexicano := qtd_mexicano + 1;
		if(vetCenso[i].native_country = 'Germany') and (vetCenso[i].income_class = '>50K') then qtd_alemao_mais50 := qtd_alemao_mais50 + 1;
		if(vetCenso[i].native_country = 'Mexico') and (vetCenso[i].income_class = '>50K') then qtd_mexicano_mais50 := qtd_mexicano_mais50 + 1;
	end;
	por_mais50 := qtd_mais50/total;
	if (qtd_fem <> 0) then
		por_fem_mais50 := qtd_fem_mais50/qtd_fem
	else
		por_fem_mais50 := 0;
	if (qtd_male <> 0) then
		por_male_mais50 := qtd_male_mais50/qtd_male
	else
		por_male_mais50 := 0;
	if (qtd_alemao <> 0) then
		por_alemao_mais50 := qtd_alemao_mais50/qtd_alemao
	else 
		por_alemao_mais50 := 0;
	if(qtd_mexicano <> 0) then
		por_mexicano_mais50 := qtd_mexicano_mais50/qtd_mexicano
	else
		por_mexicano_mais50 := 0;	
 	writeln('An�lise feita.'); 
  // printar resultados na tela
  writeln('================');
  writeln('Quantidade de pessoas que ganham mais de 50.000,00 d�lares por ano: ', qtd_mais50);
  writeln('Porcentagem de pessoas que ganham mais de 50.000,00 d�lares por ano: ', por_mais50);
  writeln('Probabilidade de uma pessoa ganhar mais de 50.000,00 d�lares por ano dado que � do sexo feminino: ', por_fem_mais50);
  writeln('Probabilidade de uma pessoa ganhar mais de 50.000,00 d�lares por ano dado que � do sexo masculino: ', por_male_mais50);
  writeln('Probabilidade de uma pessoa ganhar mais de 50.000,00 d�lares por ano dado que � um imigrante alem�o: ', por_alemao_mais50);
  writeln('Probabilidade de uma pessoa ganhar mais de 50.000,00 d�lares por ano dado que � um imigrante mexicano: ', por_mexicano_mais50);
  writeln('================');
  
  {PARTE 3: GERA��O DO ARQUIVO DE RESULTADOS}
  writeln('Gravando resultados...');
  assign(arq, out_path);
  rewrite(arq);
  writeln(arq, '================');
  writeln(arq, '    RESULTADOS    ');
  writeln(arq, '================');
  writeln(arq, 'Quantidade de pessoas que ganham mais de 50.000,00 d�lares por ano: ', qtd_mais50);
  writeln(arq, 'Porcentagem de pessoas que ganham mais de 50.000,00 d�lares por ano: ', por_mais50);
  writeln(arq, 'Probabilidade de uma pessoa ganhar mais de 50.000,00 d�lares por ano dado que � do sexo feminino: ', por_fem_mais50);
  writeln(arq, 'Probabilidade de uma pessoa ganhar mais de 50.000,00 d�lares por ano dado que � do sexo masculino: ', por_male_mais50);
  writeln(arq, 'Probabilidade de uma pessoa ganhar mais de 50.000,00 d�lares por ano dado que � um imigrante alem�o: ', por_alemao_mais50);
  writeln(arq, 'Probabilidade de uma pessoa ganhar mais de 50.000,00 d�lares por ano dado que � um imigrante mexicano: ', por_mexicano_mais50);
  writeln(arq, '================');
  
  close(arq);
  writeln('Resultados gravados.');
End.