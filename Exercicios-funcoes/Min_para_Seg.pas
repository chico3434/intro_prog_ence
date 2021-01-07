Program Min_para_Seg;

function min_to_sec(min: integer): integer;
begin
	min_to_sec := min * 60; 
end;

Begin
	writeln('1 minuto = ', min_to_sec(1), ' segundos.');
	writeln('30 minuto = ', min_to_sec(30), ' segundos.');
	writeln('60 minuto = ', min_to_sec(60), ' segundos.');
	writeln('120 minuto = ', min_to_sec(120), ' segundos.');
End.