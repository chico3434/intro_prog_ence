Program Q7;
const TAM = 1000;
type vetor = array[1..TAM] of char;

function f_pos_ultima(v: vetor; N: integer): integer;
var i: integer;
begin
	f_pos_ultima := 1;
	for i := 1 to N do
	if (v[i] = ' ') then f_pos_ultima := i+1; // pelos exemplos vou considerar que nenhuma frase termina com espaço
end;

var frase: vetor;
	i: integer;
	c: char;
Begin
	writeln('Digite uma ou mais palavras (entre * para encerrar a digitação)');
	writeln('Tamanho máximo: ', TAM);
	for i := 1 to TAM do
	begin
		write('Letra ', i, ': ');
		readln(c);
		if(c <> '*') then frase[i] := c
		else break;    
	end;
	writeln('A última palavra começa no índice: ', f_pos_ultima(frase, i-1));
End.