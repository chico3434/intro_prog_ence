{Rakesh tem 1,50m e cresce 2cm por ano e Zaki tem 1,10m e cresce 3cm por ano. Fa�a um
programa que calcule e imprima quantos anos ser�o necess�rios para que Zaki fique mais alto que
Rakesh.}
Program Q3;
var anos:integer;
var rackesh, zaki: real;
const RACKESH_CRES = 0.02;
const ZAKI_CRES = 0.03;
Begin
	
	// inicializar vari�veis
	rackesh := 1.5;
	zaki := 1.1;
	anos := 0;
	
	// la�o da passagem dos anos 
	repeat
		rackesh := rackesh + RACKESH_CRES;
		zaki := zaki + ZAKI_CRES;
		anos := anos + 1;
	until zaki > rackesh;
	
	// imprimir resultado
	writeln('S�o necess�rios ', anos, ' anos.');
End.