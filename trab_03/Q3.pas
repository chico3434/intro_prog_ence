{Uma progressão aritmética (PA) consiste em uma sucessão de números em que a
diferença entre cada um deles, a partir do segundo, e o seu antecessor é sempre a mesma. Essa
diferença é chamada de razão (r) da PA. Exemplos:
• (1, 3, 5, 7, 9, 11) ? PA onde a1 = 1 (primeiro termo); r = 2; 6 termos.
• (0.0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0) ? a1 = 0; r = ½; 9 termos.
• (10, 10, 10, 10, 10) ? a1 = 10; r = 0; 5 termos.
• (9, 5, 1, -3, -7) ? a1 = 9; r = -4; 5 termos.
Crie uma procedure que imprima os n primeiros termos de uma PA cujo 1o termo é a1 e a razão é r.
Teste a sua procedure em um programa que use os 4 exemplos apresentados acima.}
Program Q3;
procedure pa(n: integer; a1: real; r: real);
var i: integer;
	a: real;
begin
	a := a1;
	write('(', a:0:2);
	for i:=2 to n do
	begin
		a := a + r;
		write(', ', a:0:2);		
	end;
	writeln(') -> a1 = ', a1:0:2, '; r = ', r:0:2, '; ', n, ' termos.'); 
end;

Begin
	pa(6,1,2);
	pa(9,0,0.5);
	pa(5,10,0);
	pa(5,9,-4);  
End.