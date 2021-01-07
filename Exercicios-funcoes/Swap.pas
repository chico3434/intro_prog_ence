Program Swap;
var x, y: integer;

procedure swap(var a: integer; var b: integer);
var temp: integer;
begin
	temp := a;
	a := b;
	b := temp;
end;

Begin
	x := 10;
	y := 5;
	
	writeln('Antes do swap x = ', x, ', y = ', y);
	swap(x,y);
	writeln('Depois do swap x = ', x, ', y = ', y);
End.