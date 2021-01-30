Program Q3;
const N = 9999; // nos exemplos foi rodado com N valendo 3 por questão de facilidade de teste  
const TAM = 10; // nos exemplos foi rodado com TAM valendo 3 por questão de facilidade de teste

var mat: array[1..N,1..TAM] of char;
	g: array[1..TAM] of char;
	nota, i, j: integer;
	media: real;
Begin
	g[1] := 'A'; g[2] := 'B'; g[3] := 'C'; // exemplo feito com TAM
	{ Exemplos feitos com TAM = 3 e N = 3 }
	mat[1,1] := 'A'; mat[1,2] := 'B'; mat[1,3] := 'C'; 
	mat[2,1] := 'A'; mat[2,2] := 'A'; mat[2,3] := 'C';
	mat[3,1] := 'A'; mat[3,2] := 'B'; mat[3,3] := 'C'; 
	
	{ Processamento }
	for i := 1 to N do
	begin 
		nota := 0;
		for j:= 1 to TAM do
			if(mat[i,j] = g[j]) then nota := nota + 1;
		media := media + nota;	
	end;
	media := media/N;
	
	{ Exibição do resultado }
	writeln('A média da turma foi: ', media:0:2);
End.