Program Q6;

// função para calcular as potências de 10
function pow(n, p: integer): integer;
var i, tot: integer;
begin
	if (p = 0) then tot := 1;
	if (p >= 1) then tot := n;
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

function f_subnumero(p,q: integer): boolean;
var i, tent: integer;
begin
	tent := abs(f_digitos(p) - f_digitos(q)); 
	// verifica se p está em cada parte de q
	{Exemplo: Se p = 12 e q = 3123
	Verifica se 12 = 23 => false
	Verifica se 120 = 120 => true então f_subnumero := true e break encerra o laço}
	for i:=0 to tent do
		if ((p * pow(10,i)) = (q - ((q DIV pow(10, f_digitos(p) + i)) * pow(10, f_digitos(p) + i)) - (q - ((q div pow(10,i)) * pow(10,i))))) then 
		begin
			f_subnumero := true;
			break;
		end;		
end;

var p,q, tent, i:integer;
Begin
  writeln('p = 23 e q = 57238 é? ', f_subnumero(23, 57238));
	writeln('p = 23 e q = 258347 é? ', f_subnumero(23, 258347));
	writeln('p = 23 e q = 238347 é? ', f_subnumero(23, 238347));
	writeln('p = 58 e q = 258347 é? ', f_subnumero(58, 258347));
	writeln('p = 5834 e q = 258347 é? ', f_subnumero(5834, 258347));
	writeln('p = 258347 e q = 258347 é? ', f_subnumero(258347, 258347));
	writeln('p = 57238 e q = 23 é? ', f_subnumero(57238,23));
	
End.