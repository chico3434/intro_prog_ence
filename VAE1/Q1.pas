Program Questao1;
var idade, residencia: integer;
Begin
	write('Digite sua idade: '); readln(idade);
	write('Digite seu tempo de resid�ncia no pa�s (em anos): '); readln(residencia);
	if (idade < 0) or (residencia < 0) or (residencia > idade) then writeln('Dados incorretos!')
	else if(idade >= 30) and (residencia >= 9) then writeln('Voc� pode concorrer a deputado ou senador')
		else if (idade >= 25) and (residencia >= 7) then writeln('Voc� pode concorrer a deputado')
			else writeln('Voc� n�o pode concorrer a nenhum cargo');
End.                  