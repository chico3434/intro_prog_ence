Program Questao2;
var x, y: integer;
Begin
	for x:=0 to 100 do
		for y:=0 to 5 do
			if (x = 0) and (y = 0) then writeln('g(0,0) = 0')
			else writeln('g(' , x , ',' , y ,') = ', (sqr(x) - sqr(y))/(sqr(x) + sqr(y))); 
End.