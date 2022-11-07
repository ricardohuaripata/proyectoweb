<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Calculadora</title>

</head>

<body>

	<h2>Calcular</h2>

	<form name="calculadora" method="get" action="calculadora-resultado">
	
		<p>Valor 1</p>
		<input type="number" value="" name="valor1" > <br>
		
		<p>Valor 2</p>
		<input type="number" value="" name="valor2" > <br>
		
		<select name="tipoOperacion">
			<option value="sumar">Sumar</option>
			<option value="restar">Restar</option>
			<option value="multiplicar">Multiplicar</option>
			<option value="dividir">Dividir</option>
		</select> 
		
		<input type="submit" value="Calcular" />		
		
	</form>
	
</body>

</html>