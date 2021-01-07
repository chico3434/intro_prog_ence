Program Eleva;

function eleva(a: integer; b: integer): real;
var resultado: real;
	i: integer;
begin
	resultado := 1;
	for i:=1 to abs(b) do resultado := resultado * a;
	if b < 0 then resultado := 1/resultado;
	eleva := resultado;
end;

Begin
	writeln('2^3 = ', eleva(2,3):0:0);
	writeln('3^4 = ', eleva(3,4):0:0);
	writeln('10^3 = ', eleva(10,3):0:0);
	writeln('10^-3 = ', eleva(10,-3));
	
End.