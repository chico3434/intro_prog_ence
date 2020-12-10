Program Ex2;
const LINHAS = 3;
const COLUNAS = 4;
var matriz: array[1..LINHAS,1..COLUNAS] of integer;
	i, j, count: integer;
Begin
  // preenche a matriz
	count := 1;
	for i:=1 to LINHAS do
		for j:=1 to COLUNAS do
		begin
	 		matriz[i][j] := count;
	 		count := count + 1;
	 	end;
	
	// imprime a matriz
	for i:=1 to LINHAS do
	begin
		for j:=1 to COLUNAS do
	 		write(matriz[i][j]:5);
	 	writeln;
	end;
End.