Program Q4;
const TAM = 50;
type TipoMatriz = record 
	m: array[1..TAM,1..TAM] of integer; // a matriz em si
	l: integer; // n�mero de linhas
	c: integer; // n�mero de colunas
end;

var i, j, k, l: integer;
	A, B, P: TipoMatriz;
	
procedure p_ler_matriz(var matriz: TipoMatriz);
begin
	writeln('Digite o n�mero de linhas que a matriz ter�: ');
	readln(matriz.l);
	writeln('Digite o n�mero de colunas que a matriz ter�: ');
	readln(matriz.c);
	for i := 1 to matriz.l do
		for j:= 1 to matriz.c do
		begin
			writeln('Digite a posi��o [', i, ',', j, ']: ');
			readln(matriz.m[i,j]);
		end;
end;

procedure p_imprimir_matriz(matriz: TipoMatriz);
begin
	for i := 1 to matriz.l do
	begin
		for j:= 1 to matriz.c do
			write(matriz.m[i,j]:6:0);
		writeln;
	end;

end;

Begin
	p_ler_matriz(A);
	p_ler_matriz(B);
	if(A.c <> B.l) then writeln('N�o poderei multiplicar A por B, pois o n�mero de colunas de A � diferente do n�mero de linhas de B.')
	else 
	begin
		P.l := A.l;
		p.c := B.c;		
		for i := 1 to P.l do
	  	for j := 1 to P.c do
	  		for k := 1 to A.c do
	  			P.m[i,j] := P.m[i,j] + A.m[i,k]*B.m[k,j]; 	  				  			
	  		
		
		writeln('Matriz A:');
		p_imprimir_matriz(A);
		writeln('Matriz B:');
		p_imprimir_matriz(B);
		writeln('Matriz P:');
		p_imprimir_matriz(P);
	end;
	 
End.