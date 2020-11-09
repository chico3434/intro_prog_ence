{Faça um programa que calcule e imprima a soma dos 50 primeiros termos da série S,
cujos 4 primeiros termos são dados abaixo:
S = (1/2) - (3/4) + (5/8) - (7/16) + ...}
Program Q1;
var i,numerador:integer;
	soma,denominador:real;
Begin
	soma:= 1/2;
	numerador := 1;
	denominador := 2;
	for i:=2 to 50 do
	begin
		denominador:=denominador*2;
		numerador := numerador + 2;
		if (i MOD 2 = 0) then soma := soma - (numerador/denominador)
		else soma := soma + (numerador/denominador);
	end;
	writeln('A soma da série é ', soma);	
End.