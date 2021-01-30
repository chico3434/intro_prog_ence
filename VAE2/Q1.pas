Program Q1;

const N = 9999;

type vetor = array[1..N] of integer;

function testa_vetor(v: vetor; n: integer): boolean;
var i: integer;
begin
	testa_vetor := true;
	for i := 1 to n-1 do
		if((2*v[i]) <> (v[i+1])) then
			testa_vetor := false;					
end;

var v: vetor;

Begin
	// Exemplos:
	v[1] := 1; v[2] := 2; v[3] := 4; v[4] := 8; v[5] := 16;
	writeln('[1,2,4,8,16] é? ', testa_vetor(v,5)); 
	v[1] := 1; v[2] := 2; v[3] := 3; v[4] := 4; v[5] := 5;
	writeln('[1,2,3,4,5] é? ', testa_vetor(v,5)); 
	v[1] := 4; v[2] := 8; v[3] := 16; v[4] := 32; v[5] := 64;
	writeln('[4,8,16,32,64] é? ', testa_vetor(v,5));
	v[1] := 1; v[2] := 2; v[3] := 4; v[4] := 8; v[5] := 15;
	writeln('[1,2,4,8,15] é? ', testa_vetor(v,5)); 
End.