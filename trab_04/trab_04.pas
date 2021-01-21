Program trab_04;

const TAM = 48842;
const in_path = 'C:\dev\intro_prog_ence\bases\census.csv';
const out_path = 'C:\dev\intro_prog_ence\bases\RESULTADOS.TXT';

{INICIO -- Código do split para vetor de 10 campos -- INICIO}

const CAMPOS = 10;
type vet = array[1..CAMPOS] of string;

function first(s: string; c: char): integer;
var i: integer;
begin
	first := 0;
	for i:=1 to LENGTH(s) do
		if s[i] = c then
		begin
			first := i;
			break;
		end; 
end;

function split(s: string; sep: char): vet;
var len, p, i: integer;
	vetor: vet;
	temp: string;
begin
	temp := s;
  for i := 1 to CAMPOS-1 do
  begin
    len := length(temp);
    p := first(temp, sep);
    vetor[i] := copy(temp,1,p-1);
    temp := copy(temp,p+1,len-p);
  end;
  vetor[CAMPOS] := temp;
  split:=vetor;
end;

{FIM -- Código do split para vetor de 10 campos -- FIM}

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

var arq: text;
	linha: string;
	campo: vet;
	i, temp, code:integer;
Begin
  
  {PARTE 1: LEITURA DA BASE DE DADOS}
  assign(arq, in_path);
  reset(arq);
  
  // pular o header
  readln(arq, linha);
  
  i := 0;
  //while not eof(arq) do
  for i:=1 to 10 do
  begin
  	//i := i + 1;
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
  
  {PARTE 2: ANÁLISE DA BASE DE DADOS}
  
  // head
  for i:=1 to 5 do
  begin
  	writeln('Registro ', i);
		writeln(vetCenso[i].age);
		writeln(vetCenso[i].education);
		writeln(vetCenso[i].education_num);
		writeln(vetCenso[i].marital_status);
		writeln(vetCenso[i].occupation);
		writeln(vetCenso[i].race);
		writeln(vetCenso[i].sex);
		writeln(vetCenso[i].hours_per_week);
		writeln(vetCenso[i].native_country);	
		writeln(vetCenso[i].income_class);
  end;
  
  {PARTE 3: GERAÇÃO DO ARQUIVO DE RESULTADOS}
  assign(arq, out_path);
  rewrite(arq);
  writeln(arq, '================');
  writeln(arq, 'Aqui estarão os resultados');
  writeln(arq, '================');
  // por enquanto exibe os primeiros 5
  for i:=1 to 5 do
  begin
  	writeln(arq, '=== Registro ', i, ' ===');
		writeln(arq, 'Age: ', vetCenso[i].age);
		writeln(arq, 'Education: ', vetCenso[i].education);
		writeln(arq, 'Education num: ', vetCenso[i].education_num);
		writeln(arq, 'Marital status: ', vetCenso[i].marital_status);
		writeln(arq, 'Occupation: ', vetCenso[i].occupation);
		writeln(arq, 'Race: ', vetCenso[i].race);
		writeln(arq, 'Sex: ', vetCenso[i].sex);
		writeln(arq, 'Hours per week: ', vetCenso[i].hours_per_week);
		writeln(arq, 'Native country: ', vetCenso[i].native_country);	
		writeln(arq, 'Income class: ', vetCenso[i].income_class);
  end;
  close(arq);
End.