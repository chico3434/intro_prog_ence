Program MatrizSoDeUm;
const LINHAS = 3;
const COLUNAS = 4;
var matriz: array[1..LINHAS,1..COLUNAS] of integer;
	i, j: integer;
Begin
	// preenche a matriz
	for i:=1 to LINHAS do
		for j:=1 to COLUNAS do
	 		matriz[i][j] := 1;
	
	// imprime a matriz
	for i:=1 to LINHAS do
	begin
		for j:=1 to COLUNAS do
	 		write(matriz[i][j]:5);
	 	writeln;
	end;
End.