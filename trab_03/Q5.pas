Program Q5;

// função para calcular as potências de 10
function pow(n, p: integer): integer;
var i, tot: integer;
begin
	if (p = 0) then pow := 1;
	tot := n;
	for i := 2 to p do tot := tot * n;
	pow := tot; 
end;

// função para calcular o número de dígitos de um inteiro
function f_digitos(x: integer): integer;
var i: integer;
begin
	for i := 1 to 10 do // 10 é o limite do integer de 4 bytes
	if (abs(x/pow(10,i)) < 1) then break;
	f_digitos := i;			
end;

Begin
	writeln('5 = ', f_digitos(5));
	writeln('1000 = ', f_digitos(1000));
	writeln('9999 = ', f_digitos(9999));
	writeln('10000 = ', f_digitos(10000));
	writeln('1048576 = ', f_digitos(1048576)); 
	// negativos (sem contar o sinal de menos(-)) 
	writeln('-5 = ', f_digitos(-5));
	writeln('-1000 = ', f_digitos(-1000));
	writeln('-9999 = ', f_digitos(-9999));
	writeln('-10000 = ', f_digitos(-10000));
	writeln('-1048576 = ', f_digitos(-1048576));
End.